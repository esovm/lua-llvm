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
  switch i8 %11, label %85 [
    i8 20, label %12
    i8 36, label %12
    i8 9, label %14
    i8 25, label %14
    i8 7, label %35
    i8 22, label %60
    i8 54, label %60
    i8 5, label %60
    i8 8, label %60
    i8 10, label %60
  ]

; <label>:12:                                     ; preds = %5, %5
  %13 = or i8 %9, 32
  store i8 %13, i8* %8, align 1, !tbaa !15
  br label %85

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
  br i1 %27, label %85, label %28

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %17, i64 0, i32 0, i32 0
  %30 = load %struct.GCObject*, %struct.GCObject** %29, align 8, !tbaa !22
  %31 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %30, i64 0, i32 2
  %32 = load i8, i8* %31, align 1, !tbaa !15
  %33 = and i8 %32, 24
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %85, label %5

; <label>:35:                                     ; preds = %5
  %36 = bitcast %struct.GCObject* %7 to %struct.Udata*
  %37 = getelementptr inbounds %struct.Udata, %struct.Udata* %36, i64 0, i32 3
  %38 = load i16, i16* %37, align 2, !tbaa !23
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %44, label %40

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23
  %42 = bitcast %struct.GCObject** %41 to i64*
  %43 = load i64, i64* %42, align 8, !tbaa !25
  br label %76

; <label>:44:                                     ; preds = %35
  %45 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 1, i32 1
  %46 = bitcast i8* %45 to %struct.Table**
  %47 = load %struct.Table*, %struct.Table** %46, align 8, !tbaa !26
  %48 = icmp eq %struct.Table* %47, null
  br i1 %48, label %57, label %49

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.Table, %struct.Table* %47, i64 0, i32 2
  %51 = load i8, i8* %50, align 1, !tbaa !27
  %52 = and i8 %51, 24
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54

; <label>:54:                                     ; preds = %49
  %55 = bitcast %struct.Table* %47 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %55)
  %56 = load i8, i8* %8, align 1, !tbaa !15
  br label %57

; <label>:57:                                     ; preds = %49, %44, %54
  %58 = phi i8 [ %9, %49 ], [ %9, %44 ], [ %56, %54 ]
  %59 = or i8 %58, 32
  store i8 %59, i8* %8, align 1, !tbaa !15
  br label %85

; <label>:60:                                     ; preds = %5, %5, %5, %5, %5
  %61 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23
  %62 = bitcast %struct.GCObject** %61 to i64*
  %63 = load i64, i64* %62, align 8, !tbaa !25
  switch i8 %11, label %80 [
    i8 5, label %64
    i8 22, label %66
    i8 54, label %68
    i8 8, label %70
    i8 10, label %73
    i8 7, label %76
  ]

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 3, i32 0
  br label %80

; <label>:66:                                     ; preds = %60
  %67 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 1, i32 0
  br label %80

; <label>:68:                                     ; preds = %60
  %69 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 1, i32 0
  br label %80

; <label>:70:                                     ; preds = %60
  %71 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 4, i32 1
  %72 = bitcast i8* %71 to %struct.GCObject**
  br label %80

; <label>:73:                                     ; preds = %60
  %74 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 7, i32 1
  %75 = bitcast i8* %74 to %struct.GCObject**
  br label %80

; <label>:76:                                     ; preds = %40, %60
  %77 = phi i64 [ %43, %40 ], [ %63, %60 ]
  %78 = phi %struct.GCObject** [ %41, %40 ], [ %61, %60 ]
  %79 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 2, i32 0
  br label %80

; <label>:80:                                     ; preds = %60, %64, %66, %68, %70, %73, %76
  %81 = phi i64 [ %77, %76 ], [ %63, %73 ], [ %63, %70 ], [ %63, %68 ], [ %63, %66 ], [ %63, %64 ], [ %63, %60 ]
  %82 = phi %struct.GCObject** [ %78, %76 ], [ %61, %73 ], [ %61, %70 ], [ %61, %68 ], [ %61, %66 ], [ %61, %64 ], [ %61, %60 ]
  %83 = phi %struct.GCObject** [ %79, %76 ], [ %75, %73 ], [ %72, %70 ], [ %69, %68 ], [ %67, %66 ], [ %65, %64 ], [ null, %60 ]
  %84 = bitcast %struct.GCObject** %83 to i64*
  store i64 %81, i64* %84, align 8, !tbaa !29
  store %struct.GCObject* %7, %struct.GCObject** %82, align 8, !tbaa !25
  br label %85

; <label>:85:                                     ; preds = %23, %28, %5, %57, %80, %12
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
  br i1 %6, label %32, label %7

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %9 = load %struct.global_State*, %struct.global_State** %8, align 8, !tbaa !2
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i64 0, i32 24
  %11 = bitcast %struct.GCObject** %10 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !30
  %13 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 0, i32 1
  %14 = load i8, i8* %13, align 8, !tbaa !18
  switch i8 %14, label %29 [
    i8 5, label %15
    i8 22, label %17
    i8 54, label %19
    i8 8, label %21
    i8 10, label %24
    i8 7, label %27
  ]

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 3, i32 0
  br label %29

; <label>:17:                                     ; preds = %7
  %18 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 1, i32 0
  br label %29

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 1, i32 0
  br label %29

; <label>:21:                                     ; preds = %7
  %22 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 4, i32 1
  %23 = bitcast i8* %22 to %struct.GCObject**
  br label %29

; <label>:24:                                     ; preds = %7
  %25 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 7, i32 1
  %26 = bitcast i8* %25 to %struct.GCObject**
  br label %29

; <label>:27:                                     ; preds = %7
  %28 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 2, i32 0
  br label %29

; <label>:29:                                     ; preds = %7, %15, %17, %19, %21, %24, %27
  %30 = phi %struct.GCObject** [ %28, %27 ], [ %26, %24 ], [ %23, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ null, %7 ]
  %31 = bitcast %struct.GCObject** %30 to i64*
  store i64 %12, i64* %31, align 8, !tbaa !29
  store %struct.GCObject* %1, %struct.GCObject** %10, align 8, !tbaa !30
  br label %32

; <label>:32:                                     ; preds = %2, %29
  %33 = and i8 %4, -40
  %34 = or i8 %33, 5
  store i8 %34, i8* %3, align 1, !tbaa !15
  ret void
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

declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) local_unnamed_addr #3

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

declare hidden %struct.TValue* @luaT_gettm(%struct.Table*, i32, %struct.TString*) local_unnamed_addr #3

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
  %36 = getelementptr %struct.global_State, %struct.global_State* %4, i64 0, i32 10
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
  %13 = getelementptr %struct.global_State, %struct.global_State* %3, i64 0, i32 10
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
  %81 = phi %struct.GCObject* [ %72, %76 ], [ %92, %88 ]
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
  %92 = load %struct.GCObject*, %struct.GCObject** %71, align 8, !tbaa !29
  %93 = load %struct.GCObject*, %struct.GCObject** %73, align 8, !tbaa !43
  %94 = icmp eq %struct.GCObject* %92, %93
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
  %49 = load %struct.GCObject*, %struct.GCObject** %48, align 8, !tbaa !25
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
  %19 = getelementptr %struct.global_State, %struct.global_State* %3, i64 0, i32 10
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
  %256 = getelementptr %struct.global_State, %struct.global_State* %3, i64 0, i32 10
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
  %5 = getelementptr %struct.global_State, %struct.global_State* %1, i64 0, i32 10
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

declare hidden void @luaF_freeproto(%struct.lua_State*, %struct.Proto*) local_unnamed_addr #3

declare hidden void @luaM_free_(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

declare hidden void @luaH_free(%struct.lua_State*, %struct.Table*) local_unnamed_addr #3

declare hidden void @luaE_freethread(%struct.lua_State*, %struct.lua_State*) local_unnamed_addr #3

declare hidden void @luaS_remove(%struct.lua_State*, %struct.TString*) local_unnamed_addr #3

declare hidden void @luaF_unlinkupval(%struct.UpVal*) local_unnamed_addr #3

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
  %29 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !25
  %30 = icmp eq %struct.GCObject* %29, null
  br i1 %30, label %38, label %31

; <label>:31:                                     ; preds = %27
  br label %32

; <label>:32:                                     ; preds = %31, %32
  %33 = phi i64 [ %35, %32 ], [ 0, %31 ]
  %34 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #6
  %35 = add i64 %34, %33
  %36 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !25
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
  %100 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !25
  %101 = sext i32 %96 to i64
  %102 = add i64 %39, %101
  %103 = icmp eq %struct.GCObject* %100, null
  br i1 %103, label %111, label %104

; <label>:104:                                    ; preds = %99
  br label %105

; <label>:105:                                    ; preds = %104, %105
  %106 = phi i64 [ %108, %105 ], [ 0, %104 ]
  %107 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #6
  %108 = add i64 %107, %106
  %109 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !25
  %110 = icmp eq %struct.GCObject* %109, null
  br i1 %110, label %111, label %105

; <label>:111:                                    ; preds = %105, %38, %99
  %112 = phi i64 [ %102, %99 ], [ %39, %38 ], [ %102, %105 ]
  %113 = phi i64 [ 0, %99 ], [ 0, %38 ], [ %108, %105 ]
  %114 = add i64 %112, %113
  %115 = bitcast %struct.GCObject** %28 to i64*
  store i64 %6, i64* %115, align 8, !tbaa !25
  %116 = icmp eq i64 %6, 0
  br i1 %116, label %124, label %117

; <label>:117:                                    ; preds = %111
  br label %118

; <label>:118:                                    ; preds = %117, %118
  %119 = phi i64 [ %121, %118 ], [ 0, %117 ]
  %120 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #6
  %121 = add i64 %120, %119
  %122 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !25
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
  %141 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !25
  %142 = icmp eq %struct.GCObject* %141, null
  br i1 %142, label %148, label %143

; <label>:143:                                    ; preds = %140
  br label %144

; <label>:144:                                    ; preds = %143, %144
  %145 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #6
  %146 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !25
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
  %224 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !25
  %225 = icmp eq %struct.GCObject* %224, null
  br i1 %225, label %233, label %226

; <label>:226:                                    ; preds = %221
  br label %227

; <label>:227:                                    ; preds = %226, %227
  %228 = phi i64 [ %230, %227 ], [ 0, %226 ]
  %229 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #6
  %230 = add i64 %229, %228
  %231 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !25
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
  br i1 %238, label %327, label %239

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
  %249 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !25
  %250 = icmp eq %struct.GCObject* %249, null
  br i1 %250, label %256, label %251

; <label>:251:                                    ; preds = %248
  br label %252

; <label>:252:                                    ; preds = %251, %252
  %253 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #6
  %254 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !25
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
  %263 = icmp eq %struct.GCObject* %262, null
  br i1 %263, label %327, label %264

; <label>:264:                                    ; preds = %261
  br label %265

; <label>:265:                                    ; preds = %264, %323
  %266 = phi %struct.GCObject* [ %325, %323 ], [ %262, %264 ]
  %267 = bitcast %struct.GCObject* %266 to %struct.Table*
  %268 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %266, i64 1, i32 1
  %269 = bitcast i8* %268 to %union.Node**
  %270 = load %union.Node*, %union.Node** %269, align 8, !tbaa !68
  %271 = getelementptr inbounds %struct.Table, %struct.Table* %267, i64 0, i32 4
  %272 = load i8, i8* %271, align 1, !tbaa !69
  %273 = zext i8 %272 to i32
  %274 = shl i32 1, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %union.Node, %union.Node* %270, i64 %275
  %277 = icmp eq i8 %272, 31
  br i1 %277, label %323, label %278

; <label>:278:                                    ; preds = %265
  br label %279

; <label>:279:                                    ; preds = %278, %320
  %280 = phi %union.Node* [ %321, %320 ], [ %270, %278 ]
  %281 = getelementptr inbounds %union.Node, %union.Node* %280, i64 0, i32 0, i32 2
  %282 = load i8, i8* %281, align 1, !tbaa !22
  %283 = and i8 %282, 64
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %303, label %285

; <label>:285:                                    ; preds = %279
  %286 = getelementptr inbounds %union.Node, %union.Node* %280, i64 0, i32 0, i32 4, i32 0
  %287 = load %struct.GCObject*, %struct.GCObject** %286, align 8, !tbaa !22
  %288 = icmp eq %struct.GCObject* %287, null
  br i1 %288, label %303, label %289

; <label>:289:                                    ; preds = %285
  %290 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %287, i64 0, i32 1
  %291 = load i8, i8* %290, align 8, !tbaa !18
  %292 = and i8 %291, 15
  %293 = icmp eq i8 %292, 4
  %294 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %287, i64 0, i32 2
  %295 = load i8, i8* %294, align 1, !tbaa !15
  %296 = and i8 %295, 24
  %297 = icmp eq i8 %296, 0
  br i1 %293, label %298, label %300

; <label>:298:                                    ; preds = %289
  br i1 %297, label %303, label %299

; <label>:299:                                    ; preds = %298
  tail call fastcc void @reallymarkobject(%struct.global_State* %3, %struct.GCObject* nonnull %287) #6
  br label %303

; <label>:300:                                    ; preds = %289
  br i1 %297, label %303, label %301

; <label>:301:                                    ; preds = %300
  %302 = getelementptr inbounds %union.Node, %union.Node* %280, i64 0, i32 0, i32 1
  store i8 16, i8* %302, align 8, !tbaa !22
  br label %303

; <label>:303:                                    ; preds = %301, %300, %299, %298, %285, %279
  %304 = getelementptr inbounds %union.Node, %union.Node* %280, i64 0, i32 0, i32 1
  %305 = load i8, i8* %304, align 8, !tbaa !22
  %306 = and i8 %305, 15
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %308, label %320

; <label>:308:                                    ; preds = %303
  %309 = load i8, i8* %281, align 1, !tbaa !22
  %310 = and i8 %309, 64
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %320, label %312

; <label>:312:                                    ; preds = %308
  %313 = getelementptr inbounds %union.Node, %union.Node* %280, i64 0, i32 0, i32 4, i32 0
  %314 = load %struct.GCObject*, %struct.GCObject** %313, align 8, !tbaa !22
  %315 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %314, i64 0, i32 2
  %316 = load i8, i8* %315, align 1, !tbaa !15
  %317 = and i8 %316, 24
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %320, label %319

; <label>:319:                                    ; preds = %312
  store i8 5, i8* %281, align 1, !tbaa !22
  store %struct.GCObject* null, %struct.GCObject** %313, align 8, !tbaa !22
  br label %320

; <label>:320:                                    ; preds = %319, %312, %308, %303
  %321 = getelementptr inbounds %union.Node, %union.Node* %280, i64 1
  %322 = icmp ult %union.Node* %321, %276
  br i1 %322, label %279, label %323

; <label>:323:                                    ; preds = %320, %265
  %324 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %266, i64 3, i32 0
  %325 = load %struct.GCObject*, %struct.GCObject** %324, align 8, !tbaa !22
  %326 = icmp eq %struct.GCObject* %325, null
  br i1 %326, label %327, label %265

; <label>:327:                                    ; preds = %236, %323, %261
  %328 = load %struct.GCObject*, %struct.GCObject** %156, align 8, !tbaa !67
  %329 = icmp eq %struct.GCObject* %328, null
  br i1 %329, label %393, label %330

; <label>:330:                                    ; preds = %327
  br label %331

; <label>:331:                                    ; preds = %330, %389
  %332 = phi %struct.GCObject* [ %391, %389 ], [ %328, %330 ]
  %333 = bitcast %struct.GCObject* %332 to %struct.Table*
  %334 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %332, i64 1, i32 1
  %335 = bitcast i8* %334 to %union.Node**
  %336 = load %union.Node*, %union.Node** %335, align 8, !tbaa !68
  %337 = getelementptr inbounds %struct.Table, %struct.Table* %333, i64 0, i32 4
  %338 = load i8, i8* %337, align 1, !tbaa !69
  %339 = zext i8 %338 to i32
  %340 = shl i32 1, %339
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %union.Node, %union.Node* %336, i64 %341
  %343 = icmp eq i8 %338, 31
  br i1 %343, label %389, label %344

; <label>:344:                                    ; preds = %331
  br label %345

; <label>:345:                                    ; preds = %344, %386
  %346 = phi %union.Node* [ %387, %386 ], [ %336, %344 ]
  %347 = getelementptr inbounds %union.Node, %union.Node* %346, i64 0, i32 0, i32 2
  %348 = load i8, i8* %347, align 1, !tbaa !22
  %349 = and i8 %348, 64
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %369, label %351

; <label>:351:                                    ; preds = %345
  %352 = getelementptr inbounds %union.Node, %union.Node* %346, i64 0, i32 0, i32 4, i32 0
  %353 = load %struct.GCObject*, %struct.GCObject** %352, align 8, !tbaa !22
  %354 = icmp eq %struct.GCObject* %353, null
  br i1 %354, label %369, label %355

; <label>:355:                                    ; preds = %351
  %356 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %353, i64 0, i32 1
  %357 = load i8, i8* %356, align 8, !tbaa !18
  %358 = and i8 %357, 15
  %359 = icmp eq i8 %358, 4
  %360 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %353, i64 0, i32 2
  %361 = load i8, i8* %360, align 1, !tbaa !15
  %362 = and i8 %361, 24
  %363 = icmp eq i8 %362, 0
  br i1 %359, label %364, label %366

; <label>:364:                                    ; preds = %355
  br i1 %363, label %369, label %365

; <label>:365:                                    ; preds = %364
  tail call fastcc void @reallymarkobject(%struct.global_State* %3, %struct.GCObject* nonnull %353) #6
  br label %369

; <label>:366:                                    ; preds = %355
  br i1 %363, label %369, label %367

; <label>:367:                                    ; preds = %366
  %368 = getelementptr inbounds %union.Node, %union.Node* %346, i64 0, i32 0, i32 1
  store i8 16, i8* %368, align 8, !tbaa !22
  br label %369

; <label>:369:                                    ; preds = %367, %366, %365, %364, %351, %345
  %370 = getelementptr inbounds %union.Node, %union.Node* %346, i64 0, i32 0, i32 1
  %371 = load i8, i8* %370, align 8, !tbaa !22
  %372 = and i8 %371, 15
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %374, label %386

; <label>:374:                                    ; preds = %369
  %375 = load i8, i8* %347, align 1, !tbaa !22
  %376 = and i8 %375, 64
  %377 = icmp eq i8 %376, 0
  br i1 %377, label %386, label %378

; <label>:378:                                    ; preds = %374
  %379 = getelementptr inbounds %union.Node, %union.Node* %346, i64 0, i32 0, i32 4, i32 0
  %380 = load %struct.GCObject*, %struct.GCObject** %379, align 8, !tbaa !22
  %381 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %380, i64 0, i32 2
  %382 = load i8, i8* %381, align 1, !tbaa !15
  %383 = and i8 %382, 24
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %386, label %385

; <label>:385:                                    ; preds = %378
  store i8 5, i8* %347, align 1, !tbaa !22
  store %struct.GCObject* null, %struct.GCObject** %379, align 8, !tbaa !22
  br label %386

; <label>:386:                                    ; preds = %385, %378, %374, %369
  %387 = getelementptr inbounds %union.Node, %union.Node* %346, i64 1
  %388 = icmp ult %union.Node* %387, %342
  br i1 %388, label %345, label %389

; <label>:389:                                    ; preds = %386, %331
  %390 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %332, i64 3, i32 0
  %391 = load %struct.GCObject*, %struct.GCObject** %390, align 8, !tbaa !22
  %392 = icmp eq %struct.GCObject* %391, null
  br i1 %392, label %393, label %331

; <label>:393:                                    ; preds = %389, %327
  %394 = load %struct.GCObject*, %struct.GCObject** %154, align 8, !tbaa !66
  tail call fastcc void @clearbyvalues(%struct.global_State* %3, %struct.GCObject* %394, %struct.GCObject* %158)
  %395 = load %struct.GCObject*, %struct.GCObject** %156, align 8, !tbaa !67
  tail call fastcc void @clearbyvalues(%struct.global_State* %3, %struct.GCObject* %395, %struct.GCObject* %159)
  tail call void @luaS_clearcache(%struct.global_State* %3) #6
  %396 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10
  %397 = load i8, i8* %396, align 4, !tbaa !17
  %398 = xor i8 %397, 24
  store i8 %398, i8* %396, align 4, !tbaa !17
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
  %7 = load i8, i8* %6, align 1, !tbaa !27
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
  %18 = load i8, i8* %17, align 1, !tbaa !27
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
  %29 = load i8, i8* %28, align 1, !tbaa !27
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
  %40 = load i8, i8* %39, align 1, !tbaa !27
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
  %51 = load i8, i8* %50, align 1, !tbaa !27
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
  %62 = load i8, i8* %61, align 1, !tbaa !27
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
  %73 = load i8, i8* %72, align 1, !tbaa !27
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
  %84 = load i8, i8* %83, align 1, !tbaa !27
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
  %95 = load i8, i8* %94, align 1, !tbaa !27
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

declare hidden void @luaS_clearcache(%struct.global_State*) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i64 @propagatemark(%struct.global_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23
  %3 = load %struct.GCObject*, %struct.GCObject** %2, align 8, !tbaa !25
  %4 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 0, i32 2
  %5 = load i8, i8* %4, align 1, !tbaa !15
  %6 = or i8 %5, 32
  store i8 %6, i8* %4, align 1, !tbaa !15
  %7 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 0, i32 1
  %8 = load i8, i8* %7, align 8, !tbaa !18
  switch i8 %8, label %73 [
    i8 5, label %9
    i8 22, label %19
    i8 54, label %29
    i8 8, label %39
    i8 10, label %53
    i8 7, label %63
  ]

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 0
  %11 = bitcast %struct.GCObject** %10 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !29
  %13 = bitcast %struct.GCObject** %2 to i64*
  store i64 %12, i64* %13, align 8, !tbaa !25
  %14 = bitcast %struct.GCObject* %3 to %struct.Table*
  %15 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 2, i32 1
  %16 = bitcast i8* %15 to %struct.Table**
  %17 = load %struct.Table*, %struct.Table** %16, align 8, !tbaa !71
  %18 = icmp eq %struct.Table* %17, null
  br i1 %18, label %208, label %74

; <label>:19:                                     ; preds = %1
  %20 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1, i32 0
  %21 = bitcast %struct.GCObject** %20 to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !29
  %23 = bitcast %struct.GCObject** %2 to i64*
  store i64 %22, i64* %23, align 8, !tbaa !25
  %24 = bitcast %struct.GCObject* %3 to %struct.LClosure*
  %25 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1, i32 1
  %26 = bitcast i8* %25 to %struct.Proto**
  %27 = load %struct.Proto*, %struct.Proto** %26, align 8, !tbaa !72
  %28 = icmp eq %struct.Proto* %27, null
  br i1 %28, label %371, label %364

; <label>:29:                                     ; preds = %1
  %30 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1, i32 0
  %31 = bitcast %struct.GCObject** %30 to i64*
  %32 = load i64, i64* %31, align 8, !tbaa !29
  %33 = bitcast %struct.GCObject** %2 to i64*
  store i64 %32, i64* %33, align 8, !tbaa !25
  %34 = bitcast %struct.GCObject* %3 to %struct.CClosure*
  %35 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %34, i64 0, i32 3
  %36 = load i8, i8* %35, align 2, !tbaa !74
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %420, label %38

; <label>:38:                                     ; preds = %29
  br label %399

; <label>:39:                                     ; preds = %1
  %40 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 4, i32 1
  %41 = bitcast i8* %40 to i64*
  %42 = load i64, i64* %41, align 8, !tbaa !29
  %43 = bitcast %struct.GCObject** %2 to i64*
  store i64 %42, i64* %43, align 8, !tbaa !25
  %44 = bitcast %struct.GCObject* %3 to %struct.lua_State*
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %46 = bitcast %struct.GCObject** %45 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !30
  store i64 %47, i64* %41, align 8, !tbaa !76
  store %struct.GCObject* %3, %struct.GCObject** %45, align 8, !tbaa !30
  %48 = and i8 %5, -33
  store i8 %48, i8* %4, align 1, !tbaa !15
  %49 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 1
  %50 = bitcast i8* %49 to %union.StackValue**
  %51 = load %union.StackValue*, %union.StackValue** %50, align 8, !tbaa !77
  %52 = icmp eq %union.StackValue* %51, null
  br i1 %52, label %675, label %556

; <label>:53:                                     ; preds = %1
  %54 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 7, i32 1
  %55 = bitcast i8* %54 to i64*
  %56 = load i64, i64* %55, align 8, !tbaa !29
  %57 = bitcast %struct.GCObject** %2 to i64*
  store i64 %56, i64* %57, align 8, !tbaa !25
  %58 = bitcast %struct.GCObject* %3 to %struct.Proto*
  %59 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 7
  %60 = bitcast %struct.GCObject* %59 to %struct.TString**
  %61 = load %struct.TString*, %struct.TString** %60, align 8, !tbaa !78
  %62 = icmp eq %struct.TString* %61, null
  br i1 %62, label %431, label %424

; <label>:63:                                     ; preds = %1
  %64 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 2, i32 0
  %65 = bitcast %struct.GCObject** %64 to i64*
  %66 = load i64, i64* %65, align 8, !tbaa !29
  %67 = bitcast %struct.GCObject** %2 to i64*
  store i64 %66, i64* %67, align 8, !tbaa !25
  %68 = bitcast %struct.GCObject* %3 to %struct.Udata*
  %69 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1, i32 1
  %70 = bitcast i8* %69 to %struct.Table**
  %71 = load %struct.Table*, %struct.Table** %70, align 8, !tbaa !26
  %72 = icmp eq %struct.Table* %71, null
  br i1 %72, label %324, label %317

; <label>:73:                                     ; preds = %1
  call void @llvm.trap()
  unreachable

; <label>:74:                                     ; preds = %9
  %75 = getelementptr inbounds %struct.Table, %struct.Table* %17, i64 0, i32 3
  %76 = load i8, i8* %75, align 2, !tbaa !34
  %77 = and i8 %76, 8
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %85

; <label>:79:                                     ; preds = %74
  %80 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 40, i64 3
  %81 = load %struct.TString*, %struct.TString** %80, align 8, !tbaa !29
  %82 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %17, i32 3, %struct.TString* %81) #6
  %83 = load %struct.Table*, %struct.Table** %16, align 8, !tbaa !71
  %84 = icmp eq %struct.Table* %83, null
  br i1 %84, label %94, label %85

; <label>:85:                                     ; preds = %79, %74
  %86 = phi %struct.TValue* [ %82, %79 ], [ null, %74 ]
  %87 = phi %struct.Table* [ %83, %79 ], [ %17, %74 ]
  %88 = getelementptr inbounds %struct.Table, %struct.Table* %87, i64 0, i32 2
  %89 = load i8, i8* %88, align 1, !tbaa !27
  %90 = and i8 %89, 24
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %94, label %92

; <label>:92:                                     ; preds = %85
  %93 = bitcast %struct.Table* %87 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %93) #6
  br label %94

; <label>:94:                                     ; preds = %92, %85, %79
  %95 = phi %struct.TValue* [ %86, %85 ], [ %82, %79 ], [ %86, %92 ]
  %96 = icmp eq %struct.TValue* %95, null
  br i1 %96, label %208, label %97

; <label>:97:                                     ; preds = %94
  %98 = getelementptr inbounds %struct.TValue, %struct.TValue* %95, i64 0, i32 1
  %99 = load i8, i8* %98, align 8, !tbaa !21
  %100 = and i8 %99, 15
  %101 = icmp eq i8 %100, 4
  br i1 %101, label %102, label %208

; <label>:102:                                    ; preds = %97
  %103 = bitcast %struct.TValue* %95 to i8**
  %104 = load i8*, i8** %103, align 8, !tbaa !22
  %105 = getelementptr inbounds i8, i8* %104, i64 24
  %106 = tail call i8* @strchr(i8* nonnull %105, i32 107) #7
  %107 = tail call i8* @strchr(i8* nonnull %105, i32 118) #7
  %108 = icmp ne i8* %106, null
  %109 = icmp ne i8* %107, null
  %110 = or i1 %108, %109
  br i1 %110, label %111, label %208

; <label>:111:                                    ; preds = %102
  %112 = load i8, i8* %4, align 1, !tbaa !27
  %113 = and i8 %112, -33
  store i8 %113, i8* %4, align 1, !tbaa !27
  br i1 %108, label %201, label %114

; <label>:114:                                    ; preds = %111
  %115 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1, i32 1
  %116 = bitcast i8* %115 to %union.Node**
  %117 = load %union.Node*, %union.Node** %116, align 8, !tbaa !68
  %118 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 4
  %119 = load i8, i8* %118, align 1, !tbaa !69
  %120 = zext i8 %119 to i32
  %121 = shl i32 1, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %union.Node, %union.Node* %117, i64 %122
  %124 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 5
  %125 = load i32, i32* %124, align 4, !tbaa !80
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = icmp eq i8 %119, 31
  br i1 %128, label %186, label %129

; <label>:129:                                    ; preds = %114
  br label %130

; <label>:130:                                    ; preds = %129, %182
  %131 = phi i32 [ %183, %182 ], [ %127, %129 ]
  %132 = phi %union.Node* [ %184, %182 ], [ %117, %129 ]
  %133 = getelementptr inbounds %union.Node, %union.Node* %132, i64 0, i32 0, i32 1
  %134 = load i8, i8* %133, align 8, !tbaa !22
  %135 = and i8 %134, 15
  %136 = icmp eq i8 %135, 0
  %137 = getelementptr inbounds %union.Node, %union.Node* %132, i64 0, i32 0, i32 2
  %138 = load i8, i8* %137, align 1, !tbaa !22
  %139 = and i8 %138, 64
  %140 = icmp eq i8 %139, 0
  br i1 %136, label %141, label %150

; <label>:141:                                    ; preds = %130
  br i1 %140, label %182, label %142

; <label>:142:                                    ; preds = %141
  %143 = getelementptr inbounds %union.Node, %union.Node* %132, i64 0, i32 0, i32 4, i32 0
  %144 = load %struct.GCObject*, %struct.GCObject** %143, align 8, !tbaa !22
  %145 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %144, i64 0, i32 2
  %146 = load i8, i8* %145, align 1, !tbaa !15
  %147 = and i8 %146, 24
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %182, label %149

; <label>:149:                                    ; preds = %142
  store i8 5, i8* %137, align 1, !tbaa !22
  store %struct.GCObject* null, %struct.GCObject** %143, align 8, !tbaa !22
  br label %182

; <label>:150:                                    ; preds = %130
  br i1 %140, label %159, label %151

; <label>:151:                                    ; preds = %150
  %152 = getelementptr inbounds %union.Node, %union.Node* %132, i64 0, i32 0, i32 4, i32 0
  %153 = load %struct.GCObject*, %struct.GCObject** %152, align 8, !tbaa !22
  %154 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %153, i64 0, i32 2
  %155 = load i8, i8* %154, align 1, !tbaa !15
  %156 = and i8 %155, 24
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %159, label %158

; <label>:158:                                    ; preds = %151
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %153) #6
  br label %159

; <label>:159:                                    ; preds = %158, %151, %150
  %160 = icmp eq i32 %131, 0
  br i1 %160, label %161, label %182

; <label>:161:                                    ; preds = %159
  %162 = load i8, i8* %133, align 8, !tbaa !22
  %163 = and i8 %162, 64
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %181, label %165

; <label>:165:                                    ; preds = %161
  %166 = getelementptr inbounds %union.Node, %union.Node* %132, i64 0, i32 0, i32 0, i32 0
  %167 = load %struct.GCObject*, %struct.GCObject** %166, align 8, !tbaa !22
  %168 = icmp eq %struct.GCObject* %167, null
  br i1 %168, label %181, label %169

; <label>:169:                                    ; preds = %165
  %170 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %167, i64 0, i32 1
  %171 = load i8, i8* %170, align 8, !tbaa !18
  %172 = and i8 %171, 15
  %173 = icmp eq i8 %172, 4
  %174 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %167, i64 0, i32 2
  %175 = load i8, i8* %174, align 1, !tbaa !15
  %176 = and i8 %175, 24
  %177 = icmp eq i8 %176, 0
  br i1 %173, label %178, label %180

; <label>:178:                                    ; preds = %169
  br i1 %177, label %181, label %179

; <label>:179:                                    ; preds = %178
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* nonnull %167) #6
  br label %181

; <label>:180:                                    ; preds = %169
  br i1 %177, label %181, label %182

; <label>:181:                                    ; preds = %180, %179, %178, %165, %161
  br label %182

; <label>:182:                                    ; preds = %181, %180, %159, %149, %142, %141
  %183 = phi i32 [ %131, %159 ], [ %131, %141 ], [ %131, %142 ], [ %131, %149 ], [ 0, %181 ], [ 1, %180 ]
  %184 = getelementptr inbounds %union.Node, %union.Node* %132, i64 1
  %185 = icmp ult %union.Node* %184, %123
  br i1 %185, label %130, label %186

; <label>:186:                                    ; preds = %182, %114
  %187 = phi i32 [ %127, %114 ], [ %183, %182 ]
  %188 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 11
  %189 = load i8, i8* %188, align 1, !tbaa !11
  %190 = icmp eq i8 %189, 2
  %191 = icmp ne i32 %187, 0
  %192 = and i1 %191, %190
  br i1 %192, label %193, label %197

; <label>:193:                                    ; preds = %186
  %194 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 25
  %195 = bitcast %struct.GCObject** %194 to i64*
  %196 = load i64, i64* %195, align 8, !tbaa !66
  store i64 %196, i64* %11, align 8, !tbaa !81
  store %struct.GCObject* %3, %struct.GCObject** %194, align 8, !tbaa !66
  br label %300

; <label>:197:                                    ; preds = %186
  %198 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %199 = bitcast %struct.GCObject** %198 to i64*
  %200 = load i64, i64* %199, align 8, !tbaa !30
  store i64 %200, i64* %11, align 8, !tbaa !81
  store %struct.GCObject* %3, %struct.GCObject** %198, align 8, !tbaa !30
  br label %300

; <label>:201:                                    ; preds = %111
  br i1 %109, label %204, label %202

; <label>:202:                                    ; preds = %201
  %203 = tail call fastcc i32 @traverseephemeron(%struct.global_State* nonnull %0, %struct.Table* nonnull %14) #6
  br label %300

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 27
  %206 = bitcast %struct.GCObject** %205 to i64*
  %207 = load i64, i64* %206, align 8, !tbaa !67
  store i64 %207, i64* %11, align 8, !tbaa !81
  store %struct.GCObject* %3, %struct.GCObject** %205, align 8, !tbaa !67
  br label %300

; <label>:208:                                    ; preds = %102, %97, %94, %9
  %209 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1, i32 1
  %210 = bitcast i8* %209 to %union.Node**
  %211 = load %union.Node*, %union.Node** %210, align 8, !tbaa !68
  %212 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 4
  %213 = load i8, i8* %212, align 1, !tbaa !69
  %214 = zext i8 %213 to i32
  %215 = shl i32 1, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %union.Node, %union.Node* %211, i64 %216
  %218 = tail call i32 @luaH_realasize(%struct.Table* nonnull %14) #6
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %242, label %220

; <label>:220:                                    ; preds = %208
  %221 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1
  %222 = bitcast %struct.GCObject* %221 to %struct.TValue**
  %223 = zext i32 %218 to i64
  br label %224

; <label>:224:                                    ; preds = %239, %220
  %225 = phi i64 [ 0, %220 ], [ %240, %239 ]
  %226 = load %struct.TValue*, %struct.TValue** %222, align 8, !tbaa !70
  %227 = getelementptr inbounds %struct.TValue, %struct.TValue* %226, i64 %225, i32 1
  %228 = load i8, i8* %227, align 8, !tbaa !21
  %229 = and i8 %228, 64
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %239, label %231

; <label>:231:                                    ; preds = %224
  %232 = getelementptr inbounds %struct.TValue, %struct.TValue* %226, i64 %225, i32 0, i32 0
  %233 = load %struct.GCObject*, %struct.GCObject** %232, align 8, !tbaa !22
  %234 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %233, i64 0, i32 2
  %235 = load i8, i8* %234, align 1, !tbaa !15
  %236 = and i8 %235, 24
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %239, label %238

; <label>:238:                                    ; preds = %231
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %233) #6
  br label %239

; <label>:239:                                    ; preds = %238, %231, %224
  %240 = add nuw nsw i64 %225, 1
  %241 = icmp eq i64 %240, %223
  br i1 %241, label %242, label %224

; <label>:242:                                    ; preds = %239, %208
  %243 = load %union.Node*, %union.Node** %210, align 8, !tbaa !68
  %244 = icmp ult %union.Node* %243, %217
  br i1 %244, label %245, label %290

; <label>:245:                                    ; preds = %242
  br label %246

; <label>:246:                                    ; preds = %245, %287
  %247 = phi %union.Node* [ %288, %287 ], [ %243, %245 ]
  %248 = getelementptr inbounds %union.Node, %union.Node* %247, i64 0, i32 0, i32 1
  %249 = load i8, i8* %248, align 8, !tbaa !22
  %250 = and i8 %249, 15
  %251 = icmp eq i8 %250, 0
  %252 = getelementptr inbounds %union.Node, %union.Node* %247, i64 0, i32 0, i32 2
  %253 = load i8, i8* %252, align 1, !tbaa !22
  %254 = and i8 %253, 64
  %255 = icmp eq i8 %254, 0
  br i1 %251, label %256, label %265

; <label>:256:                                    ; preds = %246
  br i1 %255, label %287, label %257

; <label>:257:                                    ; preds = %256
  %258 = getelementptr inbounds %union.Node, %union.Node* %247, i64 0, i32 0, i32 4, i32 0
  %259 = load %struct.GCObject*, %struct.GCObject** %258, align 8, !tbaa !22
  %260 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %259, i64 0, i32 2
  %261 = load i8, i8* %260, align 1, !tbaa !15
  %262 = and i8 %261, 24
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %287, label %264

; <label>:264:                                    ; preds = %257
  store i8 5, i8* %252, align 1, !tbaa !22
  store %struct.GCObject* null, %struct.GCObject** %258, align 8, !tbaa !22
  br label %287

; <label>:265:                                    ; preds = %246
  br i1 %255, label %275, label %266

; <label>:266:                                    ; preds = %265
  %267 = getelementptr inbounds %union.Node, %union.Node* %247, i64 0, i32 0, i32 4, i32 0
  %268 = load %struct.GCObject*, %struct.GCObject** %267, align 8, !tbaa !22
  %269 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %268, i64 0, i32 2
  %270 = load i8, i8* %269, align 1, !tbaa !15
  %271 = and i8 %270, 24
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %275, label %273

; <label>:273:                                    ; preds = %266
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %268) #6
  %274 = load i8, i8* %248, align 8, !tbaa !22
  br label %275

; <label>:275:                                    ; preds = %273, %266, %265
  %276 = phi i8 [ %249, %266 ], [ %249, %265 ], [ %274, %273 ]
  %277 = and i8 %276, 64
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %287, label %279

; <label>:279:                                    ; preds = %275
  %280 = getelementptr inbounds %union.Node, %union.Node* %247, i64 0, i32 0, i32 0, i32 0
  %281 = load %struct.GCObject*, %struct.GCObject** %280, align 8, !tbaa !22
  %282 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %281, i64 0, i32 2
  %283 = load i8, i8* %282, align 1, !tbaa !15
  %284 = and i8 %283, 24
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %287, label %286

; <label>:286:                                    ; preds = %279
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %281) #6
  br label %287

; <label>:287:                                    ; preds = %286, %279, %275, %264, %257, %256
  %288 = getelementptr inbounds %union.Node, %union.Node* %247, i64 1
  %289 = icmp ult %union.Node* %288, %217
  br i1 %289, label %246, label %290

; <label>:290:                                    ; preds = %287, %242
  %291 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 12
  %292 = load i8, i8* %291, align 2, !tbaa !40
  %293 = icmp eq i8 %292, 1
  br i1 %293, label %294, label %300

; <label>:294:                                    ; preds = %290
  %295 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %296 = bitcast %struct.GCObject** %295 to i64*
  %297 = load i64, i64* %296, align 8, !tbaa !30
  store i64 %297, i64* %11, align 8, !tbaa !81
  store %struct.GCObject* %3, %struct.GCObject** %295, align 8, !tbaa !30
  %298 = load i8, i8* %4, align 1, !tbaa !27
  %299 = and i8 %298, -33
  store i8 %299, i8* %4, align 1, !tbaa !27
  br label %300

; <label>:300:                                    ; preds = %294, %290, %204, %202, %197, %193
  %301 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 5
  %302 = load i32, i32* %301, align 4, !tbaa !80
  %303 = add i32 %302, 1
  %304 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 2
  %305 = bitcast %struct.GCObject* %304 to %union.Node**
  %306 = load %union.Node*, %union.Node** %305, align 8, !tbaa !82
  %307 = icmp eq %union.Node* %306, null
  br i1 %307, label %313, label %308

; <label>:308:                                    ; preds = %300
  %309 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 4
  %310 = load i8, i8* %309, align 1, !tbaa !69
  %311 = zext i8 %310 to i32
  %312 = shl i32 2, %311
  br label %313

; <label>:313:                                    ; preds = %300, %308
  %314 = phi i32 [ %312, %308 ], [ 0, %300 ]
  %315 = add i32 %303, %314
  %316 = zext i32 %315 to i64
  br label %675

; <label>:317:                                    ; preds = %63
  %318 = getelementptr inbounds %struct.Table, %struct.Table* %71, i64 0, i32 2
  %319 = load i8, i8* %318, align 1, !tbaa !27
  %320 = and i8 %319, 24
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %324, label %322

; <label>:322:                                    ; preds = %317
  %323 = bitcast %struct.Table* %71 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %323) #6
  br label %324

; <label>:324:                                    ; preds = %322, %317, %63
  %325 = getelementptr inbounds %struct.Udata, %struct.Udata* %68, i64 0, i32 3
  %326 = load i16, i16* %325, align 2, !tbaa !23
  %327 = icmp eq i16 %326, 0
  br i1 %327, label %350, label %328

; <label>:328:                                    ; preds = %324
  br label %329

; <label>:329:                                    ; preds = %328, %345
  %330 = phi i16 [ %346, %345 ], [ %326, %328 ]
  %331 = phi i64 [ %347, %345 ], [ 0, %328 ]
  %332 = getelementptr inbounds %struct.Udata, %struct.Udata* %68, i64 0, i32 7, i64 %331, i32 0, i32 1
  %333 = load i8, i8* %332, align 8, !tbaa !22
  %334 = and i8 %333, 64
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %345, label %336

; <label>:336:                                    ; preds = %329
  %337 = getelementptr inbounds %struct.Udata, %struct.Udata* %68, i64 0, i32 7, i64 %331, i32 0, i32 0, i32 0
  %338 = load %struct.GCObject*, %struct.GCObject** %337, align 8, !tbaa !22
  %339 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %338, i64 0, i32 2
  %340 = load i8, i8* %339, align 1, !tbaa !15
  %341 = and i8 %340, 24
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %345, label %343

; <label>:343:                                    ; preds = %336
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %338) #6
  %344 = load i16, i16* %325, align 2, !tbaa !23
  br label %345

; <label>:345:                                    ; preds = %343, %336, %329
  %346 = phi i16 [ %330, %336 ], [ %330, %329 ], [ %344, %343 ]
  %347 = add nuw nsw i64 %331, 1
  %348 = zext i16 %346 to i64
  %349 = icmp ult i64 %347, %348
  br i1 %349, label %329, label %350

; <label>:350:                                    ; preds = %345, %324
  %351 = phi i16 [ 0, %324 ], [ %346, %345 ]
  %352 = zext i16 %351 to i64
  %353 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 12
  %354 = load i8, i8* %353, align 2, !tbaa !40
  %355 = icmp eq i8 %354, 1
  br i1 %355, label %356, label %362

; <label>:356:                                    ; preds = %350
  %357 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %358 = bitcast %struct.GCObject** %357 to i64*
  %359 = load i64, i64* %358, align 8, !tbaa !30
  store i64 %359, i64* %65, align 8, !tbaa !83
  store %struct.GCObject* %3, %struct.GCObject** %357, align 8, !tbaa !30
  %360 = load i8, i8* %4, align 1, !tbaa !84
  %361 = and i8 %360, -33
  store i8 %361, i8* %4, align 1, !tbaa !84
  br label %362

; <label>:362:                                    ; preds = %350, %356
  %363 = add nuw nsw i64 %352, 1
  br label %675

; <label>:364:                                    ; preds = %19
  %365 = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i64 0, i32 2
  %366 = load i8, i8* %365, align 1, !tbaa !85
  %367 = and i8 %366, 24
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %371, label %369

; <label>:369:                                    ; preds = %364
  %370 = bitcast %struct.Proto* %27 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %370) #6
  br label %371

; <label>:371:                                    ; preds = %369, %364, %19
  %372 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %24, i64 0, i32 3
  %373 = load i8, i8* %372, align 2, !tbaa !86
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %395, label %375

; <label>:375:                                    ; preds = %371
  br label %376

; <label>:376:                                    ; preds = %375, %390
  %377 = phi i8 [ %391, %390 ], [ %373, %375 ]
  %378 = phi i64 [ %392, %390 ], [ 0, %375 ]
  %379 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %24, i64 0, i32 6, i64 %378
  %380 = load %struct.UpVal*, %struct.UpVal** %379, align 8, !tbaa !29
  %381 = icmp eq %struct.UpVal* %380, null
  br i1 %381, label %390, label %382

; <label>:382:                                    ; preds = %376
  %383 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %380, i64 0, i32 2
  %384 = load i8, i8* %383, align 1, !tbaa !64
  %385 = and i8 %384, 24
  %386 = icmp eq i8 %385, 0
  br i1 %386, label %390, label %387

; <label>:387:                                    ; preds = %382
  %388 = bitcast %struct.UpVal* %380 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %388) #6
  %389 = load i8, i8* %372, align 2, !tbaa !86
  br label %390

; <label>:390:                                    ; preds = %387, %382, %376
  %391 = phi i8 [ %377, %382 ], [ %377, %376 ], [ %389, %387 ]
  %392 = add nuw nsw i64 %378, 1
  %393 = zext i8 %391 to i64
  %394 = icmp ult i64 %392, %393
  br i1 %394, label %376, label %395

; <label>:395:                                    ; preds = %390, %371
  %396 = phi i8 [ 0, %371 ], [ %391, %390 ]
  %397 = zext i8 %396 to i64
  %398 = add nuw nsw i64 %397, 1
  br label %675

; <label>:399:                                    ; preds = %38, %415
  %400 = phi i8 [ %416, %415 ], [ %36, %38 ]
  %401 = phi i64 [ %417, %415 ], [ 0, %38 ]
  %402 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %34, i64 0, i32 6, i64 %401, i32 1
  %403 = load i8, i8* %402, align 8, !tbaa !21
  %404 = and i8 %403, 64
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %415, label %406

; <label>:406:                                    ; preds = %399
  %407 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %34, i64 0, i32 6, i64 %401, i32 0, i32 0
  %408 = load %struct.GCObject*, %struct.GCObject** %407, align 8, !tbaa !22
  %409 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %408, i64 0, i32 2
  %410 = load i8, i8* %409, align 1, !tbaa !15
  %411 = and i8 %410, 24
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %415, label %413

; <label>:413:                                    ; preds = %406
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %408) #6
  %414 = load i8, i8* %35, align 2, !tbaa !74
  br label %415

; <label>:415:                                    ; preds = %413, %406, %399
  %416 = phi i8 [ %400, %406 ], [ %400, %399 ], [ %414, %413 ]
  %417 = add nuw nsw i64 %401, 1
  %418 = zext i8 %416 to i64
  %419 = icmp ult i64 %417, %418
  br i1 %419, label %399, label %420

; <label>:420:                                    ; preds = %415, %29
  %421 = phi i8 [ 0, %29 ], [ %416, %415 ]
  %422 = zext i8 %421 to i64
  %423 = add nuw nsw i64 %422, 1
  br label %675

; <label>:424:                                    ; preds = %53
  %425 = getelementptr inbounds %struct.TString, %struct.TString* %61, i64 0, i32 2
  %426 = load i8, i8* %425, align 1, !tbaa !87
  %427 = and i8 %426, 24
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %431, label %429

; <label>:429:                                    ; preds = %424
  %430 = bitcast %struct.TString* %61 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %430) #6
  br label %431

; <label>:431:                                    ; preds = %429, %424, %53
  %432 = getelementptr inbounds %struct.Proto, %struct.Proto* %58, i64 0, i32 7
  %433 = load i32, i32* %432, align 4, !tbaa !89
  %434 = icmp sgt i32 %433, 0
  br i1 %434, label %435, label %460

; <label>:435:                                    ; preds = %431
  %436 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 1
  %437 = bitcast i8* %436 to %struct.TValue**
  br label %438

; <label>:438:                                    ; preds = %455, %435
  %439 = phi i32 [ %433, %435 ], [ %456, %455 ]
  %440 = phi i64 [ 0, %435 ], [ %457, %455 ]
  %441 = load %struct.TValue*, %struct.TValue** %437, align 8, !tbaa !90
  %442 = getelementptr inbounds %struct.TValue, %struct.TValue* %441, i64 %440, i32 1
  %443 = load i8, i8* %442, align 8, !tbaa !21
  %444 = and i8 %443, 64
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %455, label %446

; <label>:446:                                    ; preds = %438
  %447 = getelementptr inbounds %struct.TValue, %struct.TValue* %441, i64 %440, i32 0, i32 0
  %448 = load %struct.GCObject*, %struct.GCObject** %447, align 8, !tbaa !22
  %449 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %448, i64 0, i32 2
  %450 = load i8, i8* %449, align 1, !tbaa !15
  %451 = and i8 %450, 24
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %455, label %453

; <label>:453:                                    ; preds = %446
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %448) #6
  %454 = load i32, i32* %432, align 4, !tbaa !89
  br label %455

; <label>:455:                                    ; preds = %453, %446, %438
  %456 = phi i32 [ %439, %446 ], [ %439, %438 ], [ %454, %453 ]
  %457 = add nuw nsw i64 %440, 1
  %458 = sext i32 %456 to i64
  %459 = icmp slt i64 %457, %458
  br i1 %459, label %438, label %460

; <label>:460:                                    ; preds = %455, %431
  %461 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1
  %462 = bitcast %struct.GCObject* %461 to i32*
  %463 = load i32, i32* %462, align 8, !tbaa !91
  %464 = icmp sgt i32 %463, 0
  br i1 %464, label %465, label %488

; <label>:465:                                    ; preds = %460
  %466 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 5
  %467 = bitcast %struct.GCObject* %466 to %struct.Upvaldesc**
  br label %468

; <label>:468:                                    ; preds = %483, %465
  %469 = phi i32 [ %463, %465 ], [ %484, %483 ]
  %470 = phi i64 [ 0, %465 ], [ %485, %483 ]
  %471 = load %struct.Upvaldesc*, %struct.Upvaldesc** %467, align 8, !tbaa !92
  %472 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %471, i64 %470, i32 0
  %473 = load %struct.TString*, %struct.TString** %472, align 8, !tbaa !93
  %474 = icmp eq %struct.TString* %473, null
  br i1 %474, label %483, label %475

; <label>:475:                                    ; preds = %468
  %476 = getelementptr inbounds %struct.TString, %struct.TString* %473, i64 0, i32 2
  %477 = load i8, i8* %476, align 1, !tbaa !87
  %478 = and i8 %477, 24
  %479 = icmp eq i8 %478, 0
  br i1 %479, label %483, label %480

; <label>:480:                                    ; preds = %475
  %481 = bitcast %struct.TString* %473 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %481) #6
  %482 = load i32, i32* %462, align 8, !tbaa !91
  br label %483

; <label>:483:                                    ; preds = %480, %475, %468
  %484 = phi i32 [ %469, %475 ], [ %469, %468 ], [ %482, %480 ]
  %485 = add nuw nsw i64 %470, 1
  %486 = sext i32 %484 to i64
  %487 = icmp slt i64 %485, %486
  br i1 %487, label %468, label %488

; <label>:488:                                    ; preds = %483, %460
  %489 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 2
  %490 = bitcast %struct.GCObject* %489 to i32*
  %491 = load i32, i32* %490, align 8, !tbaa !95
  %492 = icmp sgt i32 %491, 0
  br i1 %492, label %493, label %516

; <label>:493:                                    ; preds = %488
  %494 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 4, i32 1
  %495 = bitcast i8* %494 to %struct.Proto***
  br label %496

; <label>:496:                                    ; preds = %511, %493
  %497 = phi i32 [ %491, %493 ], [ %512, %511 ]
  %498 = phi i64 [ 0, %493 ], [ %513, %511 ]
  %499 = load %struct.Proto**, %struct.Proto*** %495, align 8, !tbaa !96
  %500 = getelementptr inbounds %struct.Proto*, %struct.Proto** %499, i64 %498
  %501 = load %struct.Proto*, %struct.Proto** %500, align 8, !tbaa !29
  %502 = icmp eq %struct.Proto* %501, null
  br i1 %502, label %511, label %503

; <label>:503:                                    ; preds = %496
  %504 = getelementptr inbounds %struct.Proto, %struct.Proto* %501, i64 0, i32 2
  %505 = load i8, i8* %504, align 1, !tbaa !85
  %506 = and i8 %505, 24
  %507 = icmp eq i8 %506, 0
  br i1 %507, label %511, label %508

; <label>:508:                                    ; preds = %503
  %509 = bitcast %struct.Proto* %501 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %509) #6
  %510 = load i32, i32* %490, align 8, !tbaa !95
  br label %511

; <label>:511:                                    ; preds = %508, %503, %496
  %512 = phi i32 [ %497, %503 ], [ %497, %496 ], [ %510, %508 ]
  %513 = add nuw nsw i64 %498, 1
  %514 = sext i32 %512 to i64
  %515 = icmp slt i64 %513, %514
  br i1 %515, label %496, label %516

; <label>:516:                                    ; preds = %511, %488
  %517 = phi i32 [ %491, %488 ], [ %512, %511 ]
  %518 = getelementptr inbounds %struct.Proto, %struct.Proto* %58, i64 0, i32 11
  %519 = load i32, i32* %518, align 4, !tbaa !97
  %520 = icmp sgt i32 %519, 0
  br i1 %520, label %521, label %546

; <label>:521:                                    ; preds = %516
  %522 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 6, i32 1
  %523 = bitcast i8* %522 to %struct.LocVar**
  br label %524

; <label>:524:                                    ; preds = %539, %521
  %525 = phi i32 [ %519, %521 ], [ %540, %539 ]
  %526 = phi i64 [ 0, %521 ], [ %541, %539 ]
  %527 = load %struct.LocVar*, %struct.LocVar** %523, align 8, !tbaa !98
  %528 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %527, i64 %526, i32 0
  %529 = load %struct.TString*, %struct.TString** %528, align 8, !tbaa !99
  %530 = icmp eq %struct.TString* %529, null
  br i1 %530, label %539, label %531

; <label>:531:                                    ; preds = %524
  %532 = getelementptr inbounds %struct.TString, %struct.TString* %529, i64 0, i32 2
  %533 = load i8, i8* %532, align 1, !tbaa !87
  %534 = and i8 %533, 24
  %535 = icmp eq i8 %534, 0
  br i1 %535, label %539, label %536

; <label>:536:                                    ; preds = %531
  %537 = bitcast %struct.TString* %529 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %537) #6
  %538 = load i32, i32* %518, align 4, !tbaa !97
  br label %539

; <label>:539:                                    ; preds = %536, %531, %524
  %540 = phi i32 [ %525, %531 ], [ %525, %524 ], [ %538, %536 ]
  %541 = add nuw nsw i64 %526, 1
  %542 = sext i32 %540 to i64
  %543 = icmp slt i64 %541, %542
  br i1 %543, label %524, label %544

; <label>:544:                                    ; preds = %539
  %545 = load i32, i32* %490, align 8, !tbaa !95
  br label %546

; <label>:546:                                    ; preds = %516, %544
  %547 = phi i32 [ %517, %516 ], [ %545, %544 ]
  %548 = phi i32 [ %519, %516 ], [ %540, %544 ]
  %549 = load i32, i32* %432, align 4, !tbaa !89
  %550 = load i32, i32* %462, align 8, !tbaa !91
  %551 = add i32 %547, 1
  %552 = add i32 %551, %548
  %553 = add i32 %552, %549
  %554 = add i32 %553, %550
  %555 = sext i32 %554 to i64
  br label %675

; <label>:556:                                    ; preds = %39
  %557 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1
  %558 = bitcast %struct.GCObject* %557 to %union.StackValue**
  %559 = load %union.StackValue*, %union.StackValue** %558, align 8, !tbaa !101
  %560 = icmp ult %union.StackValue* %51, %559
  br i1 %560, label %561, label %582

; <label>:561:                                    ; preds = %556
  br label %562

; <label>:562:                                    ; preds = %561, %578
  %563 = phi %union.StackValue* [ %579, %578 ], [ %559, %561 ]
  %564 = phi %union.StackValue* [ %580, %578 ], [ %51, %561 ]
  %565 = getelementptr inbounds %union.StackValue, %union.StackValue* %564, i64 0, i32 0, i32 1
  %566 = load i8, i8* %565, align 8, !tbaa !22
  %567 = and i8 %566, 64
  %568 = icmp eq i8 %567, 0
  br i1 %568, label %578, label %569

; <label>:569:                                    ; preds = %562
  %570 = getelementptr inbounds %union.StackValue, %union.StackValue* %564, i64 0, i32 0, i32 0, i32 0
  %571 = load %struct.GCObject*, %struct.GCObject** %570, align 8, !tbaa !22
  %572 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %571, i64 0, i32 2
  %573 = load i8, i8* %572, align 1, !tbaa !15
  %574 = and i8 %573, 24
  %575 = icmp eq i8 %574, 0
  br i1 %575, label %578, label %576

; <label>:576:                                    ; preds = %569
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %571) #6
  %577 = load %union.StackValue*, %union.StackValue** %558, align 8, !tbaa !101
  br label %578

; <label>:578:                                    ; preds = %576, %569, %562
  %579 = phi %union.StackValue* [ %563, %569 ], [ %563, %562 ], [ %577, %576 ]
  %580 = getelementptr inbounds %union.StackValue, %union.StackValue* %564, i64 1
  %581 = icmp ult %union.StackValue* %580, %579
  br i1 %581, label %562, label %582

; <label>:582:                                    ; preds = %578, %556
  %583 = phi %union.StackValue* [ %51, %556 ], [ %580, %578 ]
  %584 = ptrtoint %union.StackValue* %583 to i64
  %585 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 4
  %586 = bitcast %struct.GCObject* %585 to %struct.UpVal**
  %587 = load %struct.UpVal*, %struct.UpVal** %586, align 8, !tbaa !22
  %588 = icmp eq %struct.UpVal* %587, null
  br i1 %588, label %606, label %589

; <label>:589:                                    ; preds = %582
  br label %590

; <label>:590:                                    ; preds = %589, %602
  %591 = phi %struct.UpVal* [ %604, %602 ], [ %587, %589 ]
  %592 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %591, i64 0, i32 1
  %593 = load i8, i8* %592, align 8, !tbaa !102
  %594 = icmp eq i8 %593, 25
  br i1 %594, label %595, label %602

; <label>:595:                                    ; preds = %590
  %596 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %591, i64 0, i32 2
  %597 = load i8, i8* %596, align 1, !tbaa !64
  %598 = and i8 %597, 24
  %599 = icmp eq i8 %598, 0
  br i1 %599, label %602, label %600

; <label>:600:                                    ; preds = %595
  %601 = bitcast %struct.UpVal* %591 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %601) #6
  br label %602

; <label>:602:                                    ; preds = %600, %595, %590
  %603 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %591, i64 0, i32 4, i32 0, i32 0
  %604 = load %struct.UpVal*, %struct.UpVal** %603, align 8, !tbaa !22
  %605 = icmp eq %struct.UpVal* %604, null
  br i1 %605, label %606, label %590

; <label>:606:                                    ; preds = %602, %582
  %607 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 11
  %608 = load i8, i8* %607, align 1, !tbaa !11
  %609 = icmp eq i8 %608, 2
  br i1 %609, label %610, label %665

; <label>:610:                                    ; preds = %606
  %611 = load %union.StackValue*, %union.StackValue** %50, align 8, !tbaa !77
  %612 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i64 0, i32 20
  %613 = load i32, i32* %612, align 4, !tbaa !103
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds %union.StackValue, %union.StackValue* %611, i64 %614
  %616 = icmp ult %union.StackValue* %583, %615
  br i1 %616, label %617, label %651

; <label>:617:                                    ; preds = %610
  %618 = getelementptr %union.StackValue, %union.StackValue* %611, i64 %614, i32 0, i32 0, i32 0
  %619 = bitcast %struct.GCObject** %618 to i8*
  %620 = xor i64 %584, -1
  %621 = getelementptr i8, i8* %619, i64 %620
  %622 = ptrtoint i8* %621 to i64
  %623 = lshr i64 %622, 4
  %624 = add nuw nsw i64 %623, 1
  %625 = and i64 %624, 7
  %626 = icmp eq i64 %625, 0
  br i1 %626, label %635, label %627

; <label>:627:                                    ; preds = %617
  br label %628

; <label>:628:                                    ; preds = %628, %627
  %629 = phi %union.StackValue* [ %632, %628 ], [ %583, %627 ]
  %630 = phi i64 [ %633, %628 ], [ %625, %627 ]
  %631 = getelementptr inbounds %union.StackValue, %union.StackValue* %629, i64 0, i32 0, i32 1
  store i8 0, i8* %631, align 8, !tbaa !22
  %632 = getelementptr inbounds %union.StackValue, %union.StackValue* %629, i64 1
  %633 = add i64 %630, -1
  %634 = icmp eq i64 %633, 0
  br i1 %634, label %635, label %628, !llvm.loop !104

; <label>:635:                                    ; preds = %628, %617
  %636 = phi %union.StackValue* [ %583, %617 ], [ %632, %628 ]
  %637 = icmp ult i8* %621, inttoptr (i64 112 to i8*)
  br i1 %637, label %651, label %638

; <label>:638:                                    ; preds = %635
  br label %639

; <label>:639:                                    ; preds = %639, %638
  %640 = phi %union.StackValue* [ %636, %638 ], [ %649, %639 ]
  %641 = getelementptr inbounds %union.StackValue, %union.StackValue* %640, i64 0, i32 0, i32 1
  store i8 0, i8* %641, align 8, !tbaa !22
  %642 = getelementptr inbounds %union.StackValue, %union.StackValue* %640, i64 1, i32 0, i32 1
  store i8 0, i8* %642, align 8, !tbaa !22
  %643 = getelementptr inbounds %union.StackValue, %union.StackValue* %640, i64 2, i32 0, i32 1
  store i8 0, i8* %643, align 8, !tbaa !22
  %644 = getelementptr inbounds %union.StackValue, %union.StackValue* %640, i64 3, i32 0, i32 1
  store i8 0, i8* %644, align 8, !tbaa !22
  %645 = getelementptr inbounds %union.StackValue, %union.StackValue* %640, i64 4, i32 0, i32 1
  store i8 0, i8* %645, align 8, !tbaa !22
  %646 = getelementptr inbounds %union.StackValue, %union.StackValue* %640, i64 5, i32 0, i32 1
  store i8 0, i8* %646, align 8, !tbaa !22
  %647 = getelementptr inbounds %union.StackValue, %union.StackValue* %640, i64 6, i32 0, i32 1
  store i8 0, i8* %647, align 8, !tbaa !22
  %648 = getelementptr inbounds %union.StackValue, %union.StackValue* %640, i64 7, i32 0, i32 1
  store i8 0, i8* %648, align 8, !tbaa !22
  %649 = getelementptr inbounds %union.StackValue, %union.StackValue* %640, i64 8
  %650 = icmp ult %union.StackValue* %649, %615
  br i1 %650, label %639, label %651

; <label>:651:                                    ; preds = %635, %639, %610
  %652 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 5
  %653 = bitcast %struct.GCObject* %652 to %struct.lua_State**
  %654 = load %struct.lua_State*, %struct.lua_State** %653, align 8, !tbaa !63
  %655 = icmp eq %struct.lua_State* %654, %44
  br i1 %655, label %656, label %670

; <label>:656:                                    ; preds = %651
  %657 = load %struct.UpVal*, %struct.UpVal** %586, align 8, !tbaa !62
  %658 = icmp eq %struct.UpVal* %657, null
  br i1 %658, label %670, label %659

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 36
  %661 = bitcast %struct.lua_State** %660 to i64*
  %662 = load i64, i64* %661, align 8, !tbaa !106
  %663 = bitcast %struct.GCObject* %652 to i64*
  store i64 %662, i64* %663, align 8, !tbaa !63
  %664 = bitcast %struct.lua_State** %660 to %struct.GCObject**
  store %struct.GCObject* %3, %struct.GCObject** %664, align 8, !tbaa !106
  br label %670

; <label>:665:                                    ; preds = %606
  %666 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 16
  %667 = load i8, i8* %666, align 2, !tbaa !51
  %668 = icmp eq i8 %667, 0
  br i1 %668, label %669, label %670

; <label>:669:                                    ; preds = %665
  tail call void @luaD_shrinkstack(%struct.lua_State* %44) #6
  br label %670

; <label>:670:                                    ; preds = %669, %665, %659, %656, %651
  %671 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i64 0, i32 20
  %672 = load i32, i32* %671, align 4, !tbaa !103
  %673 = add nsw i32 %672, 1
  %674 = sext i32 %673 to i64
  br label %675

; <label>:675:                                    ; preds = %670, %39, %546, %420, %395, %362, %313
  %676 = phi i64 [ %555, %546 ], [ %423, %420 ], [ %398, %395 ], [ %363, %362 ], [ %316, %313 ], [ %674, %670 ], [ 1, %39 ]
  ret i64 %676
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

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
  store i64 %121, i64* %123, align 8, !tbaa !81
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
  store i64 %130, i64* %132, align 8, !tbaa !81
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
  store i64 %139, i64* %141, align 8, !tbaa !81
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
  store i64 %150, i64* %152, align 8, !tbaa !81
  %153 = bitcast %struct.GCObject** %148 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %153, align 8, !tbaa !30
  br label %158

; <label>:154:                                    ; preds = %143
  %155 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2
  %156 = load i8, i8* %155, align 1, !tbaa !27
  %157 = or i8 %156, 32
  store i8 %157, i8* %155, align 1, !tbaa !27
  br label %158

; <label>:158:                                    ; preds = %127, %147, %154, %136, %118
  ret i32 %114
}

declare hidden i32 @luaH_realasize(%struct.Table*) local_unnamed_addr #3

declare hidden void @luaD_shrinkstack(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @finishgencycle(%struct.lua_State*, %struct.global_State* nocapture) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 24
  %4 = load %struct.GCObject*, %struct.GCObject** %3, align 8, !tbaa !29
  %5 = icmp eq %struct.GCObject* %4, null
  br i1 %5, label %59, label %6

; <label>:6:                                      ; preds = %2
  br label %7

; <label>:7:                                      ; preds = %6, %55
  %8 = phi %struct.GCObject* [ %56, %55 ], [ %4, %6 ]
  %9 = phi %struct.GCObject** [ %57, %55 ], [ %3, %6 ]
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %8, i64 0, i32 1
  %11 = load i8, i8* %10, align 8, !tbaa !18
  switch i8 %11, label %52 [
    i8 8, label %39
    i8 5, label %13
    i8 7, label %12
  ]

; <label>:12:                                     ; preds = %7
  br label %13

; <label>:13:                                     ; preds = %7, %12
  %14 = phi i64 [ 2, %12 ], [ 3, %7 ]
  %15 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %8, i64 %14, i32 0
  %16 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %8, i64 0, i32 2
  %17 = load i8, i8* %16, align 1, !tbaa !15
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 7
  %20 = icmp eq i32 %19, 5
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %13
  %22 = or i8 %17, 32
  %23 = xor i8 %22, 3
  store i8 %23, i8* %16, align 1, !tbaa !15
  br label %52

; <label>:24:                                     ; preds = %13
  %25 = and i32 %18, 24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

; <label>:27:                                     ; preds = %24
  %28 = icmp eq i32 %19, 6
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %27
  %30 = xor i8 %17, 2
  store i8 %30, i8* %16, align 1, !tbaa !15
  br label %31

; <label>:31:                                     ; preds = %29, %27
  %32 = phi i8 [ %30, %29 ], [ %17, %27 ]
  %33 = or i8 %32, 32
  store i8 %33, i8* %16, align 1, !tbaa !15
  br label %34

; <label>:34:                                     ; preds = %31, %24
  %35 = bitcast %struct.GCObject** %15 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !29
  %37 = bitcast %struct.GCObject** %9 to i64*
  store i64 %36, i64* %37, align 8, !tbaa !29
  %38 = inttoptr i64 %36 to %struct.GCObject*
  br label %55

; <label>:39:                                     ; preds = %7
  %40 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %8, i64 0, i32 2
  %41 = load i8, i8* %40, align 1, !tbaa !46
  %42 = and i8 %41, 24
  %43 = icmp eq i8 %42, 0
  %44 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %8, i64 4, i32 1
  br i1 %43, label %50, label %45

; <label>:45:                                     ; preds = %39
  %46 = bitcast i8* %44 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !76
  %48 = bitcast %struct.GCObject** %9 to i64*
  store i64 %47, i64* %48, align 8, !tbaa !29
  %49 = inttoptr i64 %47 to %struct.GCObject*
  br label %55

; <label>:50:                                     ; preds = %39
  %51 = bitcast i8* %44 to %struct.GCObject**
  br label %52

; <label>:52:                                     ; preds = %50, %21, %7
  %53 = phi %struct.GCObject** [ %51, %50 ], [ %15, %21 ], [ %9, %7 ]
  %54 = load %struct.GCObject*, %struct.GCObject** %53, align 8, !tbaa !29
  br label %55

; <label>:55:                                     ; preds = %52, %45, %34
  %56 = phi %struct.GCObject* [ %54, %52 ], [ %49, %45 ], [ %38, %34 ]
  %57 = phi %struct.GCObject** [ %53, %52 ], [ %9, %45 ], [ %9, %34 ]
  %58 = icmp eq %struct.GCObject* %56, null
  br i1 %58, label %59, label %7

; <label>:59:                                     ; preds = %55, %2
  %60 = phi %struct.GCObject** [ %3, %2 ], [ %57, %55 ]
  %61 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 25
  %62 = bitcast %struct.GCObject** %61 to i64*
  %63 = load i64, i64* %62, align 8, !tbaa !66
  %64 = bitcast %struct.GCObject** %60 to i64*
  store i64 %63, i64* %64, align 8, !tbaa !29
  store %struct.GCObject* null, %struct.GCObject** %61, align 8, !tbaa !66
  %65 = load %struct.GCObject*, %struct.GCObject** %60, align 8, !tbaa !29
  %66 = icmp eq %struct.GCObject* %65, null
  br i1 %66, label %122, label %67

; <label>:67:                                     ; preds = %59
  br label %68

; <label>:68:                                     ; preds = %67, %116
  %69 = phi %struct.GCObject* [ %117, %116 ], [ %65, %67 ]
  %70 = phi %struct.GCObject** [ %118, %116 ], [ %60, %67 ]
  %71 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %69, i64 0, i32 1
  %72 = load i8, i8* %71, align 8, !tbaa !18
  switch i8 %72, label %113 [
    i8 8, label %100
    i8 5, label %74
    i8 7, label %73
  ]

; <label>:73:                                     ; preds = %68
  br label %74

; <label>:74:                                     ; preds = %68, %73
  %75 = phi i64 [ 2, %73 ], [ 3, %68 ]
  %76 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %69, i64 %75, i32 0
  %77 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %69, i64 0, i32 2
  %78 = load i8, i8* %77, align 1, !tbaa !15
  %79 = zext i8 %78 to i32
  %80 = and i32 %79, 7
  %81 = icmp eq i32 %80, 5
  br i1 %81, label %82, label %85

; <label>:82:                                     ; preds = %74
  %83 = or i8 %78, 32
  %84 = xor i8 %83, 3
  store i8 %84, i8* %77, align 1, !tbaa !15
  br label %113

; <label>:85:                                     ; preds = %74
  %86 = and i32 %79, 24
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

; <label>:88:                                     ; preds = %85
  %89 = icmp eq i32 %80, 6
  br i1 %89, label %90, label %92

; <label>:90:                                     ; preds = %88
  %91 = xor i8 %78, 2
  store i8 %91, i8* %77, align 1, !tbaa !15
  br label %92

; <label>:92:                                     ; preds = %90, %88
  %93 = phi i8 [ %91, %90 ], [ %78, %88 ]
  %94 = or i8 %93, 32
  store i8 %94, i8* %77, align 1, !tbaa !15
  br label %95

; <label>:95:                                     ; preds = %92, %85
  %96 = bitcast %struct.GCObject** %76 to i64*
  %97 = load i64, i64* %96, align 8, !tbaa !29
  %98 = bitcast %struct.GCObject** %70 to i64*
  store i64 %97, i64* %98, align 8, !tbaa !29
  %99 = inttoptr i64 %97 to %struct.GCObject*
  br label %116

; <label>:100:                                    ; preds = %68
  %101 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %69, i64 0, i32 2
  %102 = load i8, i8* %101, align 1, !tbaa !46
  %103 = and i8 %102, 24
  %104 = icmp eq i8 %103, 0
  %105 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %69, i64 4, i32 1
  br i1 %104, label %111, label %106

; <label>:106:                                    ; preds = %100
  %107 = bitcast i8* %105 to i64*
  %108 = load i64, i64* %107, align 8, !tbaa !76
  %109 = bitcast %struct.GCObject** %70 to i64*
  store i64 %108, i64* %109, align 8, !tbaa !29
  %110 = inttoptr i64 %108 to %struct.GCObject*
  br label %116

; <label>:111:                                    ; preds = %100
  %112 = bitcast i8* %105 to %struct.GCObject**
  br label %113

; <label>:113:                                    ; preds = %111, %82, %68
  %114 = phi %struct.GCObject** [ %112, %111 ], [ %76, %82 ], [ %70, %68 ]
  %115 = load %struct.GCObject*, %struct.GCObject** %114, align 8, !tbaa !29
  br label %116

; <label>:116:                                    ; preds = %113, %106, %95
  %117 = phi %struct.GCObject* [ %115, %113 ], [ %110, %106 ], [ %99, %95 ]
  %118 = phi %struct.GCObject** [ %114, %113 ], [ %70, %106 ], [ %70, %95 ]
  %119 = icmp eq %struct.GCObject* %117, null
  br i1 %119, label %120, label %68

; <label>:120:                                    ; preds = %116
  %121 = bitcast %struct.GCObject** %118 to i64*
  br label %122

; <label>:122:                                    ; preds = %120, %59
  %123 = phi i64* [ %121, %120 ], [ %64, %59 ]
  %124 = phi %struct.GCObject** [ %118, %120 ], [ %60, %59 ]
  %125 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 27
  %126 = bitcast %struct.GCObject** %125 to i64*
  %127 = load i64, i64* %126, align 8, !tbaa !67
  store i64 %127, i64* %123, align 8, !tbaa !29
  store %struct.GCObject* null, %struct.GCObject** %125, align 8, !tbaa !67
  %128 = load %struct.GCObject*, %struct.GCObject** %124, align 8, !tbaa !29
  %129 = icmp eq %struct.GCObject* %128, null
  br i1 %129, label %185, label %130

; <label>:130:                                    ; preds = %122
  br label %131

; <label>:131:                                    ; preds = %130, %179
  %132 = phi %struct.GCObject* [ %180, %179 ], [ %128, %130 ]
  %133 = phi %struct.GCObject** [ %181, %179 ], [ %124, %130 ]
  %134 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %132, i64 0, i32 1
  %135 = load i8, i8* %134, align 8, !tbaa !18
  switch i8 %135, label %176 [
    i8 8, label %163
    i8 5, label %137
    i8 7, label %136
  ]

; <label>:136:                                    ; preds = %131
  br label %137

; <label>:137:                                    ; preds = %131, %136
  %138 = phi i64 [ 2, %136 ], [ 3, %131 ]
  %139 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %132, i64 %138, i32 0
  %140 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %132, i64 0, i32 2
  %141 = load i8, i8* %140, align 1, !tbaa !15
  %142 = zext i8 %141 to i32
  %143 = and i32 %142, 7
  %144 = icmp eq i32 %143, 5
  br i1 %144, label %145, label %148

; <label>:145:                                    ; preds = %137
  %146 = or i8 %141, 32
  %147 = xor i8 %146, 3
  store i8 %147, i8* %140, align 1, !tbaa !15
  br label %176

; <label>:148:                                    ; preds = %137
  %149 = and i32 %142, 24
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %158

; <label>:151:                                    ; preds = %148
  %152 = icmp eq i32 %143, 6
  br i1 %152, label %153, label %155

; <label>:153:                                    ; preds = %151
  %154 = xor i8 %141, 2
  store i8 %154, i8* %140, align 1, !tbaa !15
  br label %155

; <label>:155:                                    ; preds = %153, %151
  %156 = phi i8 [ %154, %153 ], [ %141, %151 ]
  %157 = or i8 %156, 32
  store i8 %157, i8* %140, align 1, !tbaa !15
  br label %158

; <label>:158:                                    ; preds = %155, %148
  %159 = bitcast %struct.GCObject** %139 to i64*
  %160 = load i64, i64* %159, align 8, !tbaa !29
  %161 = bitcast %struct.GCObject** %133 to i64*
  store i64 %160, i64* %161, align 8, !tbaa !29
  %162 = inttoptr i64 %160 to %struct.GCObject*
  br label %179

; <label>:163:                                    ; preds = %131
  %164 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %132, i64 0, i32 2
  %165 = load i8, i8* %164, align 1, !tbaa !46
  %166 = and i8 %165, 24
  %167 = icmp eq i8 %166, 0
  %168 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %132, i64 4, i32 1
  br i1 %167, label %174, label %169

; <label>:169:                                    ; preds = %163
  %170 = bitcast i8* %168 to i64*
  %171 = load i64, i64* %170, align 8, !tbaa !76
  %172 = bitcast %struct.GCObject** %133 to i64*
  store i64 %171, i64* %172, align 8, !tbaa !29
  %173 = inttoptr i64 %171 to %struct.GCObject*
  br label %179

; <label>:174:                                    ; preds = %163
  %175 = bitcast i8* %168 to %struct.GCObject**
  br label %176

; <label>:176:                                    ; preds = %174, %145, %131
  %177 = phi %struct.GCObject** [ %175, %174 ], [ %139, %145 ], [ %133, %131 ]
  %178 = load %struct.GCObject*, %struct.GCObject** %177, align 8, !tbaa !29
  br label %179

; <label>:179:                                    ; preds = %176, %169, %158
  %180 = phi %struct.GCObject* [ %178, %176 ], [ %173, %169 ], [ %162, %158 ]
  %181 = phi %struct.GCObject** [ %177, %176 ], [ %133, %169 ], [ %133, %158 ]
  %182 = icmp eq %struct.GCObject* %180, null
  br i1 %182, label %183, label %131

; <label>:183:                                    ; preds = %179
  %184 = bitcast %struct.GCObject** %181 to i64*
  br label %185

; <label>:185:                                    ; preds = %183, %122
  %186 = phi i64* [ %184, %183 ], [ %123, %122 ]
  %187 = phi %struct.GCObject** [ %181, %183 ], [ %124, %122 ]
  %188 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 26
  %189 = bitcast %struct.GCObject** %188 to i64*
  %190 = load i64, i64* %189, align 8, !tbaa !65
  store i64 %190, i64* %186, align 8, !tbaa !29
  store %struct.GCObject* null, %struct.GCObject** %188, align 8, !tbaa !65
  %191 = load %struct.GCObject*, %struct.GCObject** %187, align 8, !tbaa !29
  %192 = icmp eq %struct.GCObject* %191, null
  br i1 %192, label %246, label %193

; <label>:193:                                    ; preds = %185
  br label %194

; <label>:194:                                    ; preds = %193, %242
  %195 = phi %struct.GCObject* [ %243, %242 ], [ %191, %193 ]
  %196 = phi %struct.GCObject** [ %244, %242 ], [ %187, %193 ]
  %197 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %195, i64 0, i32 1
  %198 = load i8, i8* %197, align 8, !tbaa !18
  switch i8 %198, label %239 [
    i8 8, label %226
    i8 5, label %200
    i8 7, label %199
  ]

; <label>:199:                                    ; preds = %194
  br label %200

; <label>:200:                                    ; preds = %194, %199
  %201 = phi i64 [ 2, %199 ], [ 3, %194 ]
  %202 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %195, i64 %201, i32 0
  %203 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %195, i64 0, i32 2
  %204 = load i8, i8* %203, align 1, !tbaa !15
  %205 = zext i8 %204 to i32
  %206 = and i32 %205, 7
  %207 = icmp eq i32 %206, 5
  br i1 %207, label %208, label %211

; <label>:208:                                    ; preds = %200
  %209 = or i8 %204, 32
  %210 = xor i8 %209, 3
  store i8 %210, i8* %203, align 1, !tbaa !15
  br label %239

; <label>:211:                                    ; preds = %200
  %212 = and i32 %205, 24
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %221

; <label>:214:                                    ; preds = %211
  %215 = icmp eq i32 %206, 6
  br i1 %215, label %216, label %218

; <label>:216:                                    ; preds = %214
  %217 = xor i8 %204, 2
  store i8 %217, i8* %203, align 1, !tbaa !15
  br label %218

; <label>:218:                                    ; preds = %216, %214
  %219 = phi i8 [ %217, %216 ], [ %204, %214 ]
  %220 = or i8 %219, 32
  store i8 %220, i8* %203, align 1, !tbaa !15
  br label %221

; <label>:221:                                    ; preds = %218, %211
  %222 = bitcast %struct.GCObject** %202 to i64*
  %223 = load i64, i64* %222, align 8, !tbaa !29
  %224 = bitcast %struct.GCObject** %196 to i64*
  store i64 %223, i64* %224, align 8, !tbaa !29
  %225 = inttoptr i64 %223 to %struct.GCObject*
  br label %242

; <label>:226:                                    ; preds = %194
  %227 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %195, i64 0, i32 2
  %228 = load i8, i8* %227, align 1, !tbaa !46
  %229 = and i8 %228, 24
  %230 = icmp eq i8 %229, 0
  %231 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %195, i64 4, i32 1
  br i1 %230, label %237, label %232

; <label>:232:                                    ; preds = %226
  %233 = bitcast i8* %231 to i64*
  %234 = load i64, i64* %233, align 8, !tbaa !76
  %235 = bitcast %struct.GCObject** %196 to i64*
  store i64 %234, i64* %235, align 8, !tbaa !29
  %236 = inttoptr i64 %234 to %struct.GCObject*
  br label %242

; <label>:237:                                    ; preds = %226
  %238 = bitcast i8* %231 to %struct.GCObject**
  br label %239

; <label>:239:                                    ; preds = %237, %208, %194
  %240 = phi %struct.GCObject** [ %238, %237 ], [ %202, %208 ], [ %196, %194 ]
  %241 = load %struct.GCObject*, %struct.GCObject** %240, align 8, !tbaa !29
  br label %242

; <label>:242:                                    ; preds = %239, %232, %221
  %243 = phi %struct.GCObject* [ %241, %239 ], [ %236, %232 ], [ %225, %221 ]
  %244 = phi %struct.GCObject** [ %240, %239 ], [ %196, %232 ], [ %196, %221 ]
  %245 = icmp eq %struct.GCObject* %243, null
  br i1 %245, label %246, label %194

; <label>:246:                                    ; preds = %242, %185
  %247 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 16
  %248 = load i8, i8* %247, align 2, !tbaa !51
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %252, label %250

; <label>:250:                                    ; preds = %246
  %251 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 11
  store i8 0, i8* %251, align 1, !tbaa !11
  br label %283

; <label>:252:                                    ; preds = %246
  %253 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 3
  %254 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 6, i32 1
  %255 = load i32, i32* %254, align 8, !tbaa !52
  %256 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 6, i32 2
  %257 = load i32, i32* %256, align 4, !tbaa !53
  %258 = sdiv i32 %257, 4
  %259 = icmp slt i32 %255, %258
  br i1 %259, label %260, label %271

; <label>:260:                                    ; preds = %252
  %261 = load i64, i64* %253, align 8, !tbaa !49
  %262 = sdiv i32 %257, 2
  tail call void @luaS_resize(%struct.lua_State* %0, i32 %262) #6
  %263 = load i64, i64* %253, align 8, !tbaa !49
  %264 = load i8, i8* %247, align 2, !tbaa !51
  %265 = icmp eq i8 %264, 0
  %266 = sub i64 %263, %261
  %267 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 4
  %268 = load i64, i64* %267, align 8, !tbaa !50
  %269 = add i64 %266, %268
  store i64 %269, i64* %267, align 8, !tbaa !50
  %270 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 11
  store i8 0, i8* %270, align 1, !tbaa !11
  br i1 %265, label %273, label %283

; <label>:271:                                    ; preds = %252
  %272 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 11
  store i8 0, i8* %272, align 1, !tbaa !11
  br label %273

; <label>:273:                                    ; preds = %271, %260
  %274 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %275 = load %struct.global_State*, %struct.global_State** %274, align 8, !tbaa !2
  %276 = getelementptr inbounds %struct.global_State, %struct.global_State* %275, i64 0, i32 28
  %277 = load %struct.GCObject*, %struct.GCObject** %276, align 8, !tbaa !41
  %278 = icmp eq %struct.GCObject* %277, null
  br i1 %278, label %283, label %279

; <label>:279:                                    ; preds = %273
  br label %280

; <label>:280:                                    ; preds = %279, %280
  tail call fastcc void @GCTM(%struct.lua_State* %0) #6
  %281 = load %struct.GCObject*, %struct.GCObject** %276, align 8, !tbaa !41
  %282 = icmp eq %struct.GCObject* %281, null
  br i1 %282, label %283, label %280

; <label>:283:                                    ; preds = %280, %273, %250, %260
  ret void
}

declare hidden void @luaS_resize(%struct.lua_State*, i32) local_unnamed_addr #3

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
  %67 = load i64, i64* %66, align 8, !tbaa !77
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

declare hidden %struct.TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.TValue*, i32) local_unnamed_addr #3

declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @dothecall(%struct.lua_State*, i8* nocapture readnone) #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !101
  %5 = getelementptr inbounds %union.StackValue, %union.StackValue* %4, i64 -2
  tail call void @luaD_callnoyield(%struct.lua_State* %0, %union.StackValue* nonnull %5, i32 0) #6
  ret void
}

declare hidden void @luaE_warning(%struct.lua_State*, i8*, i32) local_unnamed_addr #3

declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #3

declare hidden void @luaE_setdebt(%struct.global_State*, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #5

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
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
!25 = !{!12, !4, i64 136}
!26 = !{!24, !4, i64 24}
!27 = !{!28, !5, i64 9}
!28 = !{!"Table", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !10, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48}
!29 = !{!4, !4, i64 0}
!30 = !{!12, !4, i64 144}
!31 = !{!16, !4, i64 0}
!32 = !{!12, !4, i64 112}
!33 = !{!12, !4, i64 184}
!34 = !{!28, !5, i64 10}
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
!68 = !{!28, !4, i64 24}
!69 = !{!28, !5, i64 11}
!70 = !{!28, !4, i64 16}
!71 = !{!28, !4, i64 40}
!72 = !{!73, !4, i64 24}
!73 = !{!"LClosure", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !4, i64 16, !4, i64 24, !5, i64 32}
!74 = !{!75, !5, i64 10}
!75 = !{!"CClosure", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !4, i64 16, !4, i64 24, !5, i64 32}
!76 = !{!3, !4, i64 72}
!77 = !{!3, !4, i64 56}
!78 = !{!79, !4, i64 112}
!79 = !{!"Proto", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120}
!80 = !{!28, !10, i64 12}
!81 = !{!28, !4, i64 48}
!82 = !{!28, !4, i64 32}
!83 = !{!24, !4, i64 32}
!84 = !{!24, !5, i64 9}
!85 = !{!79, !5, i64 9}
!86 = !{!73, !5, i64 10}
!87 = !{!88, !5, i64 9}
!88 = !{!"TString", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !10, i64 12, !5, i64 16}
!89 = !{!79, !10, i64 20}
!90 = !{!79, !4, i64 56}
!91 = !{!79, !10, i64 16}
!92 = !{!79, !4, i64 80}
!93 = !{!94, !4, i64 0}
!94 = !{!"Upvaldesc", !4, i64 0, !5, i64 8, !5, i64 9}
!95 = !{!79, !10, i64 32}
!96 = !{!79, !4, i64 72}
!97 = !{!79, !10, i64 36}
!98 = !{!79, !4, i64 104}
!99 = !{!100, !4, i64 0}
!100 = !{!"LocVar", !4, i64 0, !10, i64 8, !10, i64 12}
!101 = !{!3, !4, i64 16}
!102 = !{!20, !5, i64 8}
!103 = !{!3, !10, i64 180}
!104 = distinct !{!104, !105}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = !{!12, !4, i64 240}
!107 = !{!3, !5, i64 11}
!108 = !{!3, !4, i64 32}
!109 = !{!8, !7, i64 62}
