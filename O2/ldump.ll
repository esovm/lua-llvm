; ModuleID = 'ldump.c'
source_filename = "ldump.c"
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
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.DumpState = type { %struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\19\93\0D\0A\1A\0A\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @luaU_dump(%struct.lua_State*, %struct.Proto* readonly, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca [10 x i8], align 1
  %14 = alloca %struct.DumpState, align 8
  %15 = bitcast %struct.DumpState* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #2
  %16 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %14, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %16, align 8, !tbaa !2
  %17 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %14, i64 0, i32 1
  store i32 (%struct.lua_State*, i8*, i64, i8*)* %2, i32 (%struct.lua_State*, i8*, i64, i8*)** %17, align 8, !tbaa !8
  %18 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %14, i64 0, i32 2
  store i8* %3, i8** %18, align 8, !tbaa !9
  %19 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %14, i64 0, i32 3
  store i32 %4, i32* %19, align 8, !tbaa !10
  %20 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %14, i64 0, i32 4
  %21 = tail call i32 %2(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4, i8* %3) #2
  store i32 %21, i32* %20, align 4, !tbaa !11
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %22) #2
  %23 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 9
  %24 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 8
  store i8 3, i8* %24, align 1, !tbaa !12
  store i8 -8, i8* %23, align 1, !tbaa !12
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %27, label %26

; <label>:26:                                     ; preds = %5
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %22) #2
  br label %37

; <label>:27:                                     ; preds = %5
  %28 = call i32 %2(%struct.lua_State* %0, i8* nonnull %24, i64 2, i8* %3) #2
  store i32 %28, i32* %20, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %22) #2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %12) #2
  store i8 0, i8* %12, align 1, !tbaa !12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

; <label>:30:                                     ; preds = %27
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #2
  br label %37

; <label>:31:                                     ; preds = %27
  %32 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %17, align 8, !tbaa !8
  %33 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !2
  %34 = load i8*, i8** %18, align 8, !tbaa !9
  %35 = call i32 %32(%struct.lua_State* %33, i8* nonnull %12, i64 1, i8* %34) #2
  store i32 %35, i32* %20, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

; <label>:37:                                     ; preds = %31, %30, %26
  %38 = phi i32 [ %35, %31 ], [ %28, %30 ], [ %21, %26 ]
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %11) #2
  store i8 4, i8* %11, align 1, !tbaa !12
  br label %45

; <label>:39:                                     ; preds = %31
  %40 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %17, align 8, !tbaa !8
  %41 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !2
  %42 = load i8*, i8** %18, align 8, !tbaa !9
  %43 = call i32 %40(%struct.lua_State* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 6, i8* %42) #2
  store i32 %43, i32* %20, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %11) #2
  store i8 4, i8* %11, align 1, !tbaa !12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

; <label>:45:                                     ; preds = %39, %37
  %46 = phi i32 [ %43, %39 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %11) #2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #2
  store i8 8, i8* %10, align 1, !tbaa !12
  br label %53

; <label>:47:                                     ; preds = %39
  %48 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %17, align 8, !tbaa !8
  %49 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !2
  %50 = load i8*, i8** %18, align 8, !tbaa !9
  %51 = call i32 %48(%struct.lua_State* %49, i8* nonnull %11, i64 1, i8* %50) #2
  store i32 %51, i32* %20, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %11) #2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #2
  store i8 8, i8* %10, align 1, !tbaa !12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

; <label>:53:                                     ; preds = %47, %45
  %54 = phi i32 [ %51, %47 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %9) #2
  store i8 8, i8* %9, align 1, !tbaa !12
  br label %61

; <label>:55:                                     ; preds = %47
  %56 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %17, align 8, !tbaa !8
  %57 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !2
  %58 = load i8*, i8** %18, align 8, !tbaa !9
  %59 = call i32 %56(%struct.lua_State* %57, i8* nonnull %10, i64 1, i8* %58) #2
  store i32 %59, i32* %20, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %9) #2
  store i8 8, i8* %9, align 1, !tbaa !12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

; <label>:61:                                     ; preds = %55, %53
  %62 = phi i32 [ %59, %55 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %9) #2
  %63 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %63) #2
  store i64 22136, i64* %8, align 8, !tbaa !13
  br label %71

; <label>:64:                                     ; preds = %55
  %65 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %17, align 8, !tbaa !8
  %66 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !2
  %67 = load i8*, i8** %18, align 8, !tbaa !9
  %68 = call i32 %65(%struct.lua_State* %66, i8* nonnull %9, i64 1, i8* %67) #2
  store i32 %68, i32* %20, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %9) #2
  %69 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %69) #2
  store i64 22136, i64* %8, align 8, !tbaa !13
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %75, label %71

; <label>:71:                                     ; preds = %64, %61
  %72 = phi i32 [ %68, %64 ], [ %62, %61 ]
  %73 = phi i8* [ %69, %64 ], [ %63, %61 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %73) #2
  %74 = bitcast double* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %74) #2
  store double 3.705000e+02, double* %7, align 8, !tbaa !15
  br label %87

; <label>:75:                                     ; preds = %64
  %76 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %17, align 8, !tbaa !8
  %77 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !2
  %78 = load i8*, i8** %18, align 8, !tbaa !9
  %79 = call i32 %76(%struct.lua_State* %77, i8* nonnull %69, i64 8, i8* %78) #2
  store i32 %79, i32* %20, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69) #2
  %80 = bitcast double* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %80) #2
  store double 3.705000e+02, double* %7, align 8, !tbaa !15
  %81 = icmp eq i32 %79, 0
  br i1 %81, label %82, label %87

; <label>:82:                                     ; preds = %75
  %83 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %17, align 8, !tbaa !8
  %84 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !2
  %85 = load i8*, i8** %18, align 8, !tbaa !9
  %86 = call i32 %83(%struct.lua_State* %84, i8* nonnull %80, i64 8, i8* %85) #2
  store i32 %86, i32* %20, align 4, !tbaa !11
  br label %87

; <label>:87:                                     ; preds = %71, %75, %82
  %88 = phi i32 [ %72, %71 ], [ %79, %75 ], [ %86, %82 ]
  %89 = phi i8* [ %74, %71 ], [ %80, %75 ], [ %80, %82 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %89) #2
  %90 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 6
  %91 = load i32, i32* %90, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #2
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %6, align 1, !tbaa !12
  %93 = icmp eq i32 %88, 0
  br i1 %93, label %94, label %99

; <label>:94:                                     ; preds = %87
  %95 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %17, align 8, !tbaa !8
  %96 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !2
  %97 = load i8*, i8** %18, align 8, !tbaa !9
  %98 = call i32 %95(%struct.lua_State* %96, i8* nonnull %6, i64 1, i8* %97) #2
  store i32 %98, i32* %20, align 4, !tbaa !11
  br label %99

; <label>:99:                                     ; preds = %87, %94
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #2
  call fastcc void @DumpFunction(%struct.Proto* nonnull %1, %struct.TString* null, %struct.DumpState* nonnull %14)
  %100 = load i32, i32* %20, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #2
  ret i32 %100
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @DumpFunction(%struct.Proto* readonly, %struct.TString* readnone, %struct.DumpState*) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca [10 x i8], align 1
  %14 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 3
  %15 = load i32, i32* %14, align 8, !tbaa !10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 22
  %19 = load %struct.TString*, %struct.TString** %18, align 8, !tbaa !19
  %20 = icmp eq %struct.TString* %19, %1
  br i1 %20, label %21, label %36

; <label>:21:                                     ; preds = %3, %17
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %22) #2
  %23 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 9
  store i8 -128, i8* %23, align 1, !tbaa !12
  %24 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 4
  %25 = load i32, i32* %24, align 4, !tbaa !11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %29 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %28, align 8, !tbaa !8
  %30 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %31 = load %struct.lua_State*, %struct.lua_State** %30, align 8, !tbaa !2
  %32 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %33 = load i8*, i8** %32, align 8, !tbaa !9
  %34 = call i32 %29(%struct.lua_State* %31, i8* nonnull %23, i64 1, i8* %33) #2
  store i32 %34, i32* %24, align 4, !tbaa !11
  br label %35

; <label>:35:                                     ; preds = %21, %27
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %22) #2
  br label %38

; <label>:36:                                     ; preds = %17
  tail call fastcc void @DumpString(%struct.TString* %19, %struct.DumpState* nonnull %2)
  %37 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  br label %38

; <label>:38:                                     ; preds = %36, %35
  %39 = phi i8* [ %37, %36 ], [ %22, %35 ]
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 13
  %41 = load i32, i32* %40, align 4, !tbaa !20
  %42 = sext i32 %41 to i64
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %39) #2
  br label %43

; <label>:43:                                     ; preds = %43, %38
  %44 = phi i64 [ %48, %43 ], [ 0, %38 ]
  %45 = phi i64 [ %51, %43 ], [ %42, %38 ]
  %46 = trunc i64 %45 to i8
  %47 = and i8 %46, 127
  %48 = add nuw nsw i64 %44, 1
  %49 = sub nsw i64 9, %44
  %50 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 %49
  store i8 %47, i8* %50, align 1, !tbaa !12
  %51 = lshr i64 %45, 7
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %43

; <label>:53:                                     ; preds = %43
  %54 = and i64 %48, 4294967295
  %55 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 9
  %56 = load i8, i8* %55, align 1, !tbaa !12
  %57 = or i8 %56, -128
  store i8 %57, i8* %55, align 1, !tbaa !12
  %58 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 4
  %59 = load i32, i32* %58, align 4, !tbaa !11
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %72

; <label>:61:                                     ; preds = %53
  %62 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 10
  %63 = sub nsw i64 0, %54
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %66 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %65, align 8, !tbaa !8
  %67 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %68 = load %struct.lua_State*, %struct.lua_State** %67, align 8, !tbaa !2
  %69 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %70 = load i8*, i8** %69, align 8, !tbaa !9
  %71 = call i32 %66(%struct.lua_State* %68, i8* nonnull %64, i64 %54, i8* %70) #2
  store i32 %71, i32* %58, align 4, !tbaa !11
  br label %72

; <label>:72:                                     ; preds = %53, %61
  %73 = phi i32 [ %59, %53 ], [ %71, %61 ]
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %39) #2
  %74 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 14
  %75 = load i32, i32* %74, align 8, !tbaa !21
  %76 = sext i32 %75 to i64
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %39) #2
  br label %77

; <label>:77:                                     ; preds = %77, %72
  %78 = phi i64 [ %82, %77 ], [ 0, %72 ]
  %79 = phi i64 [ %85, %77 ], [ %76, %72 ]
  %80 = trunc i64 %79 to i8
  %81 = and i8 %80, 127
  %82 = add nuw nsw i64 %78, 1
  %83 = sub nsw i64 9, %78
  %84 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 %83
  store i8 %81, i8* %84, align 1, !tbaa !12
  %85 = lshr i64 %79, 7
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %77

; <label>:87:                                     ; preds = %77
  %88 = and i64 %82, 4294967295
  %89 = load i8, i8* %55, align 1, !tbaa !12
  %90 = or i8 %89, -128
  store i8 %90, i8* %55, align 1, !tbaa !12
  %91 = icmp eq i32 %73, 0
  br i1 %91, label %92, label %103

; <label>:92:                                     ; preds = %87
  %93 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 10
  %94 = sub nsw i64 0, %88
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %97 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %96, align 8, !tbaa !8
  %98 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %99 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !2
  %100 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %101 = load i8*, i8** %100, align 8, !tbaa !9
  %102 = call i32 %97(%struct.lua_State* %99, i8* nonnull %95, i64 %88, i8* %101) #2
  store i32 %102, i32* %58, align 4, !tbaa !11
  br label %103

; <label>:103:                                    ; preds = %87, %92
  %104 = phi i32 [ %73, %87 ], [ %102, %92 ]
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %39) #2
  %105 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 3
  %106 = load i8, i8* %105, align 2, !tbaa !22
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %12) #2
  store i8 %106, i8* %12, align 1, !tbaa !12
  %107 = icmp eq i32 %104, 0
  br i1 %107, label %108, label %116

; <label>:108:                                    ; preds = %103
  %109 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %110 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %109, align 8, !tbaa !8
  %111 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %112 = load %struct.lua_State*, %struct.lua_State** %111, align 8, !tbaa !2
  %113 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %114 = load i8*, i8** %113, align 8, !tbaa !9
  %115 = call i32 %110(%struct.lua_State* %112, i8* nonnull %12, i64 1, i8* %114) #2
  store i32 %115, i32* %58, align 4, !tbaa !11
  br label %116

; <label>:116:                                    ; preds = %103, %108
  %117 = phi i32 [ %115, %108 ], [ %104, %103 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #2
  %118 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 4
  %119 = load i8, i8* %118, align 1, !tbaa !23
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %11) #2
  store i8 %119, i8* %11, align 1, !tbaa !12
  %120 = icmp eq i32 %117, 0
  br i1 %120, label %121, label %129

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %123 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %122, align 8, !tbaa !8
  %124 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %125 = load %struct.lua_State*, %struct.lua_State** %124, align 8, !tbaa !2
  %126 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %127 = load i8*, i8** %126, align 8, !tbaa !9
  %128 = call i32 %123(%struct.lua_State* %125, i8* nonnull %11, i64 1, i8* %127) #2
  store i32 %128, i32* %58, align 4, !tbaa !11
  br label %129

; <label>:129:                                    ; preds = %116, %121
  %130 = phi i32 [ %128, %121 ], [ %117, %116 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %11) #2
  %131 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 5
  %132 = load i8, i8* %131, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #2
  store i8 %132, i8* %10, align 1, !tbaa !12
  %133 = icmp eq i32 %130, 0
  br i1 %133, label %134, label %142

; <label>:134:                                    ; preds = %129
  %135 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %136 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %135, align 8, !tbaa !8
  %137 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %138 = load %struct.lua_State*, %struct.lua_State** %137, align 8, !tbaa !2
  %139 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %140 = load i8*, i8** %139, align 8, !tbaa !9
  %141 = call i32 %136(%struct.lua_State* %138, i8* nonnull %10, i64 1, i8* %140) #2
  store i32 %141, i32* %58, align 4, !tbaa !11
  br label %142

; <label>:142:                                    ; preds = %129, %134
  %143 = phi i32 [ %130, %129 ], [ %141, %134 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #2
  %144 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 8
  %145 = load i32, i32* %144, align 8, !tbaa !25
  %146 = sext i32 %145 to i64
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %39) #2
  br label %147

; <label>:147:                                    ; preds = %147, %142
  %148 = phi i64 [ %152, %147 ], [ 0, %142 ]
  %149 = phi i64 [ %155, %147 ], [ %146, %142 ]
  %150 = trunc i64 %149 to i8
  %151 = and i8 %150, 127
  %152 = add nuw nsw i64 %148, 1
  %153 = sub nsw i64 9, %148
  %154 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 %153
  store i8 %151, i8* %154, align 1, !tbaa !12
  %155 = lshr i64 %149, 7
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %147

; <label>:157:                                    ; preds = %147
  %158 = and i64 %152, 4294967295
  %159 = load i8, i8* %55, align 1, !tbaa !12
  %160 = or i8 %159, -128
  store i8 %160, i8* %55, align 1, !tbaa !12
  %161 = icmp eq i32 %143, 0
  br i1 %161, label %163, label %162

; <label>:162:                                    ; preds = %157
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %39) #2
  br label %188

; <label>:163:                                    ; preds = %157
  %164 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 10
  %165 = sub nsw i64 0, %158
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %168 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %167, align 8, !tbaa !8
  %169 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %170 = load %struct.lua_State*, %struct.lua_State** %169, align 8, !tbaa !2
  %171 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %172 = load i8*, i8** %171, align 8, !tbaa !9
  %173 = call i32 %168(%struct.lua_State* %170, i8* nonnull %166, i64 %158, i8* %172) #2
  store i32 %173, i32* %58, align 4, !tbaa !11
  %174 = load i32, i32* %144, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %39) #2
  %175 = icmp eq i32 %173, 0
  %176 = icmp ne i32 %174, 0
  %177 = and i1 %175, %176
  br i1 %177, label %178, label %188

; <label>:178:                                    ; preds = %163
  %179 = sext i32 %174 to i64
  %180 = shl nsw i64 %179, 2
  %181 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 16
  %182 = bitcast i32** %181 to i8**
  %183 = load i8*, i8** %182, align 8, !tbaa !26
  %184 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %167, align 8, !tbaa !8
  %185 = load %struct.lua_State*, %struct.lua_State** %169, align 8, !tbaa !2
  %186 = load i8*, i8** %171, align 8, !tbaa !9
  %187 = call i32 %184(%struct.lua_State* %185, i8* %183, i64 %180, i8* %186) #2
  store i32 %187, i32* %58, align 4, !tbaa !11
  br label %188

; <label>:188:                                    ; preds = %162, %163, %178
  %189 = phi i32 [ %143, %162 ], [ %173, %163 ], [ %187, %178 ]
  %190 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 7
  %191 = load i32, i32* %190, align 4, !tbaa !27
  %192 = sext i32 %191 to i64
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %39) #2
  br label %193

; <label>:193:                                    ; preds = %193, %188
  %194 = phi i64 [ %198, %193 ], [ 0, %188 ]
  %195 = phi i64 [ %201, %193 ], [ %192, %188 ]
  %196 = trunc i64 %195 to i8
  %197 = and i8 %196, 127
  %198 = add nuw nsw i64 %194, 1
  %199 = sub nsw i64 9, %194
  %200 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 %199
  store i8 %197, i8* %200, align 1, !tbaa !12
  %201 = lshr i64 %195, 7
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %193

; <label>:203:                                    ; preds = %193
  %204 = and i64 %198, 4294967295
  %205 = load i8, i8* %55, align 1, !tbaa !12
  %206 = or i8 %205, -128
  store i8 %206, i8* %55, align 1, !tbaa !12
  %207 = icmp eq i32 %189, 0
  br i1 %207, label %208, label %219

; <label>:208:                                    ; preds = %203
  %209 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 10
  %210 = sub nsw i64 0, %204
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  %212 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %213 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %212, align 8, !tbaa !8
  %214 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %215 = load %struct.lua_State*, %struct.lua_State** %214, align 8, !tbaa !2
  %216 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %217 = load i8*, i8** %216, align 8, !tbaa !9
  %218 = call i32 %213(%struct.lua_State* %215, i8* nonnull %211, i64 %204, i8* %217) #2
  store i32 %218, i32* %58, align 4, !tbaa !11
  br label %219

; <label>:219:                                    ; preds = %208, %203
  %220 = phi i32 [ %189, %203 ], [ %218, %208 ]
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %39) #2
  %221 = icmp sgt i32 %191, 0
  br i1 %221, label %222, label %289

; <label>:222:                                    ; preds = %219
  %223 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 15
  %224 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %225 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %226 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %227 = bitcast double* %7 to i8*
  %228 = bitcast double* %7 to i64*
  %229 = bitcast i64* %6 to i8*
  %230 = zext i32 %191 to i64
  br label %231

; <label>:231:                                    ; preds = %287, %222
  %232 = phi i32 [ %220, %222 ], [ %288, %287 ]
  %233 = phi i64 [ 0, %222 ], [ %285, %287 ]
  %234 = load %struct.TValue*, %struct.TValue** %223, align 8, !tbaa !28
  %235 = getelementptr inbounds %struct.TValue, %struct.TValue* %234, i64 %233
  %236 = getelementptr inbounds %struct.TValue, %struct.TValue* %234, i64 %233, i32 1
  %237 = load i8, i8* %236, align 8, !tbaa !29
  %238 = and i8 %237, 63
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %9) #2
  store i8 %238, i8* %9, align 1, !tbaa !12
  %239 = icmp eq i32 %232, 0
  br i1 %239, label %240, label %246

; <label>:240:                                    ; preds = %231
  %241 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %224, align 8, !tbaa !8
  %242 = load %struct.lua_State*, %struct.lua_State** %225, align 8, !tbaa !2
  %243 = load i8*, i8** %226, align 8, !tbaa !9
  %244 = call i32 %241(%struct.lua_State* %242, i8* nonnull %9, i64 1, i8* %243) #2
  store i32 %244, i32* %58, align 4, !tbaa !11
  %245 = load i8, i8* %236, align 8, !tbaa !29
  br label %246

; <label>:246:                                    ; preds = %240, %231
  %247 = phi i32 [ %232, %231 ], [ %244, %240 ]
  %248 = phi i8 [ %237, %231 ], [ %245, %240 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %9) #2
  %249 = trunc i8 %248 to i6
  switch i6 %249, label %284 [
    i6 -28, label %281
    i6 1, label %250
    i6 19, label %261
    i6 -29, label %271
    i6 20, label %281
  ]

; <label>:250:                                    ; preds = %246
  %251 = bitcast %struct.TValue* %235 to i32*
  %252 = load i32, i32* %251, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %8) #2
  %253 = trunc i32 %252 to i8
  store i8 %253, i8* %8, align 1, !tbaa !12
  %254 = icmp eq i32 %247, 0
  br i1 %254, label %255, label %260

; <label>:255:                                    ; preds = %250
  %256 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %224, align 8, !tbaa !8
  %257 = load %struct.lua_State*, %struct.lua_State** %225, align 8, !tbaa !2
  %258 = load i8*, i8** %226, align 8, !tbaa !9
  %259 = call i32 %256(%struct.lua_State* %257, i8* nonnull %8, i64 1, i8* %258) #2
  store i32 %259, i32* %58, align 4, !tbaa !11
  br label %260

; <label>:260:                                    ; preds = %255, %250
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %8) #2
  br label %284

; <label>:261:                                    ; preds = %246
  %262 = bitcast %struct.TValue* %235 to i64*
  %263 = load i64, i64* %262, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %227) #2
  store i64 %263, i64* %228, align 8, !tbaa !15
  %264 = icmp eq i32 %247, 0
  br i1 %264, label %265, label %270

; <label>:265:                                    ; preds = %261
  %266 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %224, align 8, !tbaa !8
  %267 = load %struct.lua_State*, %struct.lua_State** %225, align 8, !tbaa !2
  %268 = load i8*, i8** %226, align 8, !tbaa !9
  %269 = call i32 %266(%struct.lua_State* %267, i8* nonnull %227, i64 8, i8* %268) #2
  store i32 %269, i32* %58, align 4, !tbaa !11
  br label %270

; <label>:270:                                    ; preds = %265, %261
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %227) #2
  br label %284

; <label>:271:                                    ; preds = %246
  %272 = bitcast %struct.TValue* %235 to i64*
  %273 = load i64, i64* %272, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %229) #2
  store i64 %273, i64* %6, align 8, !tbaa !13
  %274 = icmp eq i32 %247, 0
  br i1 %274, label %275, label %280

; <label>:275:                                    ; preds = %271
  %276 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %224, align 8, !tbaa !8
  %277 = load %struct.lua_State*, %struct.lua_State** %225, align 8, !tbaa !2
  %278 = load i8*, i8** %226, align 8, !tbaa !9
  %279 = call i32 %276(%struct.lua_State* %277, i8* nonnull %229, i64 8, i8* %278) #2
  store i32 %279, i32* %58, align 4, !tbaa !11
  br label %280

; <label>:280:                                    ; preds = %275, %271
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %229) #2
  br label %284

; <label>:281:                                    ; preds = %246, %246
  %282 = bitcast %struct.TValue* %235 to %struct.TString**
  %283 = load %struct.TString*, %struct.TString** %282, align 8, !tbaa !12
  call fastcc void @DumpString(%struct.TString* %283, %struct.DumpState* nonnull %2) #2
  br label %284

; <label>:284:                                    ; preds = %281, %280, %270, %260, %246
  %285 = add nuw nsw i64 %233, 1
  %286 = icmp eq i64 %285, %230
  br i1 %286, label %289, label %287

; <label>:287:                                    ; preds = %284
  %288 = load i32, i32* %58, align 4, !tbaa !11
  br label %231

; <label>:289:                                    ; preds = %284, %219
  %290 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 6
  %291 = load i32, i32* %290, align 8, !tbaa !17
  %292 = sext i32 %291 to i64
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %39) #2
  br label %293

; <label>:293:                                    ; preds = %293, %289
  %294 = phi i64 [ %298, %293 ], [ 0, %289 ]
  %295 = phi i64 [ %301, %293 ], [ %292, %289 ]
  %296 = trunc i64 %295 to i8
  %297 = and i8 %296, 127
  %298 = add nuw nsw i64 %294, 1
  %299 = sub nsw i64 9, %294
  %300 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 %299
  store i8 %297, i8* %300, align 1, !tbaa !12
  %301 = lshr i64 %295, 7
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %303, label %293

; <label>:303:                                    ; preds = %293
  %304 = and i64 %298, 4294967295
  %305 = load i8, i8* %55, align 1, !tbaa !12
  %306 = or i8 %305, -128
  store i8 %306, i8* %55, align 1, !tbaa !12
  %307 = load i32, i32* %58, align 4, !tbaa !11
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %320

; <label>:309:                                    ; preds = %303
  %310 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 10
  %311 = sub nsw i64 0, %304
  %312 = getelementptr inbounds i8, i8* %310, i64 %311
  %313 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %314 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %313, align 8, !tbaa !8
  %315 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %316 = load %struct.lua_State*, %struct.lua_State** %315, align 8, !tbaa !2
  %317 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %318 = load i8*, i8** %317, align 8, !tbaa !9
  %319 = call i32 %314(%struct.lua_State* %316, i8* nonnull %312, i64 %304, i8* %318) #2
  store i32 %319, i32* %58, align 4, !tbaa !11
  br label %320

; <label>:320:                                    ; preds = %309, %303
  %321 = phi i32 [ %307, %303 ], [ %319, %309 ]
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %39) #2
  %322 = icmp sgt i32 %291, 0
  br i1 %322, label %323, label %357

; <label>:323:                                    ; preds = %320
  %324 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 18
  %325 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %326 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %327 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %328 = zext i32 %291 to i64
  br label %329

; <label>:329:                                    ; preds = %353, %323
  %330 = phi i32 [ %321, %323 ], [ %354, %353 ]
  %331 = phi i64 [ 0, %323 ], [ %355, %353 ]
  %332 = load %struct.Upvaldesc*, %struct.Upvaldesc** %324, align 8, !tbaa !31
  %333 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %332, i64 %331, i32 1
  %334 = load i8, i8* %333, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #2
  store i8 %334, i8* %5, align 1, !tbaa !12
  %335 = icmp eq i32 %330, 0
  br i1 %335, label %336, label %342

; <label>:336:                                    ; preds = %329
  %337 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %325, align 8, !tbaa !8
  %338 = load %struct.lua_State*, %struct.lua_State** %326, align 8, !tbaa !2
  %339 = load i8*, i8** %327, align 8, !tbaa !9
  %340 = call i32 %337(%struct.lua_State* %338, i8* nonnull %5, i64 1, i8* %339) #2
  store i32 %340, i32* %58, align 4, !tbaa !11
  %341 = load %struct.Upvaldesc*, %struct.Upvaldesc** %324, align 8, !tbaa !31
  br label %342

; <label>:342:                                    ; preds = %336, %329
  %343 = phi %struct.Upvaldesc* [ %332, %329 ], [ %341, %336 ]
  %344 = phi i32 [ %330, %329 ], [ %340, %336 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #2
  %345 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %343, i64 %331, i32 2
  %346 = load i8, i8* %345, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #2
  store i8 %346, i8* %4, align 1, !tbaa !12
  %347 = icmp eq i32 %344, 0
  br i1 %347, label %348, label %353

; <label>:348:                                    ; preds = %342
  %349 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %325, align 8, !tbaa !8
  %350 = load %struct.lua_State*, %struct.lua_State** %326, align 8, !tbaa !2
  %351 = load i8*, i8** %327, align 8, !tbaa !9
  %352 = call i32 %349(%struct.lua_State* %350, i8* nonnull %4, i64 1, i8* %351) #2
  store i32 %352, i32* %58, align 4, !tbaa !11
  br label %353

; <label>:353:                                    ; preds = %348, %342
  %354 = phi i32 [ %344, %342 ], [ %352, %348 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #2
  %355 = add nuw nsw i64 %331, 1
  %356 = icmp eq i64 %355, %328
  br i1 %356, label %357, label %329

; <label>:357:                                    ; preds = %353, %320
  %358 = phi i32 [ %321, %320 ], [ %354, %353 ]
  %359 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 10
  %360 = load i32, i32* %359, align 8, !tbaa !35
  %361 = sext i32 %360 to i64
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %39) #2
  br label %362

; <label>:362:                                    ; preds = %362, %357
  %363 = phi i64 [ %367, %362 ], [ 0, %357 ]
  %364 = phi i64 [ %370, %362 ], [ %361, %357 ]
  %365 = trunc i64 %364 to i8
  %366 = and i8 %365, 127
  %367 = add nuw nsw i64 %363, 1
  %368 = sub nsw i64 9, %363
  %369 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 %368
  store i8 %366, i8* %369, align 1, !tbaa !12
  %370 = lshr i64 %364, 7
  %371 = icmp eq i64 %370, 0
  br i1 %371, label %372, label %362

; <label>:372:                                    ; preds = %362
  %373 = and i64 %367, 4294967295
  %374 = load i8, i8* %55, align 1, !tbaa !12
  %375 = or i8 %374, -128
  store i8 %375, i8* %55, align 1, !tbaa !12
  %376 = icmp eq i32 %358, 0
  br i1 %376, label %377, label %388

; <label>:377:                                    ; preds = %372
  %378 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 10
  %379 = sub nsw i64 0, %373
  %380 = getelementptr inbounds i8, i8* %378, i64 %379
  %381 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %382 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %381, align 8, !tbaa !8
  %383 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %384 = load %struct.lua_State*, %struct.lua_State** %383, align 8, !tbaa !2
  %385 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %386 = load i8*, i8** %385, align 8, !tbaa !9
  %387 = call i32 %382(%struct.lua_State* %384, i8* nonnull %380, i64 %373, i8* %386) #2
  store i32 %387, i32* %58, align 4, !tbaa !11
  br label %388

; <label>:388:                                    ; preds = %377, %372
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %39) #2
  %389 = icmp sgt i32 %360, 0
  br i1 %389, label %390, label %402

; <label>:390:                                    ; preds = %388
  %391 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 17
  %392 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 22
  %393 = zext i32 %360 to i64
  br label %394

; <label>:394:                                    ; preds = %394, %390
  %395 = phi i64 [ 0, %390 ], [ %400, %394 ]
  %396 = load %struct.Proto**, %struct.Proto*** %391, align 8, !tbaa !36
  %397 = getelementptr inbounds %struct.Proto*, %struct.Proto** %396, i64 %395
  %398 = load %struct.Proto*, %struct.Proto** %397, align 8, !tbaa !37
  %399 = load %struct.TString*, %struct.TString** %392, align 8, !tbaa !19
  call fastcc void @DumpFunction(%struct.Proto* %398, %struct.TString* %399, %struct.DumpState* %2) #2
  %400 = add nuw nsw i64 %395, 1
  %401 = icmp eq i64 %400, %393
  br i1 %401, label %402, label %394

; <label>:402:                                    ; preds = %394, %388
  %403 = load i32, i32* %14, align 8, !tbaa !10
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %409

; <label>:405:                                    ; preds = %402
  %406 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 9
  %407 = load i32, i32* %406, align 4, !tbaa !38
  %408 = sext i32 %407 to i64
  br label %409

; <label>:409:                                    ; preds = %405, %402
  %410 = phi i64 [ %408, %405 ], [ 0, %402 ]
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %39) #2
  br label %411

; <label>:411:                                    ; preds = %411, %409
  %412 = phi i64 [ %416, %411 ], [ 0, %409 ]
  %413 = phi i64 [ %419, %411 ], [ %410, %409 ]
  %414 = trunc i64 %413 to i8
  %415 = and i8 %414, 127
  %416 = add nuw nsw i64 %412, 1
  %417 = sub nsw i64 9, %412
  %418 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 %417
  store i8 %415, i8* %418, align 1, !tbaa !12
  %419 = lshr i64 %413, 7
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %421, label %411

; <label>:421:                                    ; preds = %411
  %422 = and i64 %416, 4294967295
  %423 = load i8, i8* %55, align 1, !tbaa !12
  %424 = or i8 %423, -128
  store i8 %424, i8* %55, align 1, !tbaa !12
  %425 = load i32, i32* %58, align 4, !tbaa !11
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %428, label %427

; <label>:427:                                    ; preds = %421
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %39) #2
  br label %449

; <label>:428:                                    ; preds = %421
  %429 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 10
  %430 = sub nsw i64 0, %422
  %431 = getelementptr inbounds i8, i8* %429, i64 %430
  %432 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %433 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %432, align 8, !tbaa !8
  %434 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %435 = load %struct.lua_State*, %struct.lua_State** %434, align 8, !tbaa !2
  %436 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %437 = load i8*, i8** %436, align 8, !tbaa !9
  %438 = call i32 %433(%struct.lua_State* %435, i8* nonnull %431, i64 %422, i8* %437) #2
  store i32 %438, i32* %58, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %39) #2
  %439 = icmp eq i32 %438, 0
  %440 = icmp ne i64 %410, 0
  %441 = and i1 %440, %439
  br i1 %441, label %442, label %449

; <label>:442:                                    ; preds = %428
  %443 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 19
  %444 = load i8*, i8** %443, align 8, !tbaa !39
  %445 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %432, align 8, !tbaa !8
  %446 = load %struct.lua_State*, %struct.lua_State** %434, align 8, !tbaa !2
  %447 = load i8*, i8** %436, align 8, !tbaa !9
  %448 = call i32 %445(%struct.lua_State* %446, i8* %444, i64 %410, i8* %447) #2
  store i32 %448, i32* %58, align 4, !tbaa !11
  br label %449

; <label>:449:                                    ; preds = %442, %428, %427
  %450 = phi i32 [ %438, %428 ], [ %448, %442 ], [ %425, %427 ]
  %451 = load i32, i32* %14, align 8, !tbaa !10
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %456

; <label>:453:                                    ; preds = %449
  %454 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 12
  %455 = load i32, i32* %454, align 8, !tbaa !40
  br label %456

; <label>:456:                                    ; preds = %453, %449
  %457 = phi i32 [ %455, %453 ], [ 0, %449 ]
  %458 = sext i32 %457 to i64
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %39) #2
  br label %459

; <label>:459:                                    ; preds = %459, %456
  %460 = phi i64 [ %464, %459 ], [ 0, %456 ]
  %461 = phi i64 [ %467, %459 ], [ %458, %456 ]
  %462 = trunc i64 %461 to i8
  %463 = and i8 %462, 127
  %464 = add nuw nsw i64 %460, 1
  %465 = sub nsw i64 9, %460
  %466 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 %465
  store i8 %463, i8* %466, align 1, !tbaa !12
  %467 = lshr i64 %461, 7
  %468 = icmp eq i64 %467, 0
  br i1 %468, label %469, label %459

; <label>:469:                                    ; preds = %459
  %470 = and i64 %464, 4294967295
  %471 = load i8, i8* %55, align 1, !tbaa !12
  %472 = or i8 %471, -128
  store i8 %472, i8* %55, align 1, !tbaa !12
  %473 = icmp eq i32 %450, 0
  br i1 %473, label %474, label %485

; <label>:474:                                    ; preds = %469
  %475 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 10
  %476 = sub nsw i64 0, %470
  %477 = getelementptr inbounds i8, i8* %475, i64 %476
  %478 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %479 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %478, align 8, !tbaa !8
  %480 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %481 = load %struct.lua_State*, %struct.lua_State** %480, align 8, !tbaa !2
  %482 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %483 = load i8*, i8** %482, align 8, !tbaa !9
  %484 = call i32 %479(%struct.lua_State* %481, i8* nonnull %477, i64 %470, i8* %483) #2
  store i32 %484, i32* %58, align 4, !tbaa !11
  br label %485

; <label>:485:                                    ; preds = %474, %469
  %486 = phi i32 [ %450, %469 ], [ %484, %474 ]
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %39) #2
  %487 = icmp sgt i32 %457, 0
  br i1 %487, label %488, label %557

; <label>:488:                                    ; preds = %485
  %489 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 20
  %490 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 10
  %491 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %492 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %493 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %494 = zext i32 %457 to i64
  br label %495

; <label>:495:                                    ; preds = %553, %488
  %496 = phi i32 [ %486, %488 ], [ %554, %553 ]
  %497 = phi i64 [ 0, %488 ], [ %555, %553 ]
  %498 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %489, align 8, !tbaa !41
  %499 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %498, i64 %497, i32 0
  %500 = load i32, i32* %499, align 4, !tbaa !42
  %501 = sext i32 %500 to i64
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %39) #2
  br label %502

; <label>:502:                                    ; preds = %502, %495
  %503 = phi i64 [ %507, %502 ], [ 0, %495 ]
  %504 = phi i64 [ %510, %502 ], [ %501, %495 ]
  %505 = trunc i64 %504 to i8
  %506 = and i8 %505, 127
  %507 = add nuw nsw i64 %503, 1
  %508 = sub nsw i64 9, %503
  %509 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 %508
  store i8 %506, i8* %509, align 1, !tbaa !12
  %510 = lshr i64 %504, 7
  %511 = icmp eq i64 %510, 0
  br i1 %511, label %512, label %502

; <label>:512:                                    ; preds = %502
  %513 = and i64 %507, 4294967295
  %514 = load i8, i8* %55, align 1, !tbaa !12
  %515 = or i8 %514, -128
  store i8 %515, i8* %55, align 1, !tbaa !12
  %516 = icmp eq i32 %496, 0
  br i1 %516, label %517, label %525

; <label>:517:                                    ; preds = %512
  %518 = sub nsw i64 0, %513
  %519 = getelementptr inbounds i8, i8* %490, i64 %518
  %520 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %491, align 8, !tbaa !8
  %521 = load %struct.lua_State*, %struct.lua_State** %492, align 8, !tbaa !2
  %522 = load i8*, i8** %493, align 8, !tbaa !9
  %523 = call i32 %520(%struct.lua_State* %521, i8* nonnull %519, i64 %513, i8* %522) #2
  store i32 %523, i32* %58, align 4, !tbaa !11
  %524 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %489, align 8, !tbaa !41
  br label %525

; <label>:525:                                    ; preds = %517, %512
  %526 = phi i32 [ %496, %512 ], [ %523, %517 ]
  %527 = phi %struct.AbsLineInfo* [ %498, %512 ], [ %524, %517 ]
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %39) #2
  %528 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %527, i64 %497, i32 1
  %529 = load i32, i32* %528, align 4, !tbaa !44
  %530 = sext i32 %529 to i64
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %39) #2
  br label %531

; <label>:531:                                    ; preds = %531, %525
  %532 = phi i64 [ %536, %531 ], [ 0, %525 ]
  %533 = phi i64 [ %539, %531 ], [ %530, %525 ]
  %534 = trunc i64 %533 to i8
  %535 = and i8 %534, 127
  %536 = add nuw nsw i64 %532, 1
  %537 = sub nsw i64 9, %532
  %538 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 %537
  store i8 %535, i8* %538, align 1, !tbaa !12
  %539 = lshr i64 %533, 7
  %540 = icmp eq i64 %539, 0
  br i1 %540, label %541, label %531

; <label>:541:                                    ; preds = %531
  %542 = and i64 %536, 4294967295
  %543 = load i8, i8* %55, align 1, !tbaa !12
  %544 = or i8 %543, -128
  store i8 %544, i8* %55, align 1, !tbaa !12
  %545 = icmp eq i32 %526, 0
  br i1 %545, label %546, label %553

; <label>:546:                                    ; preds = %541
  %547 = sub nsw i64 0, %542
  %548 = getelementptr inbounds i8, i8* %490, i64 %547
  %549 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %491, align 8, !tbaa !8
  %550 = load %struct.lua_State*, %struct.lua_State** %492, align 8, !tbaa !2
  %551 = load i8*, i8** %493, align 8, !tbaa !9
  %552 = call i32 %549(%struct.lua_State* %550, i8* nonnull %548, i64 %542, i8* %551) #2
  store i32 %552, i32* %58, align 4, !tbaa !11
  br label %553

; <label>:553:                                    ; preds = %546, %541
  %554 = phi i32 [ %526, %541 ], [ %552, %546 ]
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %39) #2
  %555 = add nuw nsw i64 %497, 1
  %556 = icmp eq i64 %555, %494
  br i1 %556, label %557, label %495

; <label>:557:                                    ; preds = %553, %485
  %558 = phi i32 [ %486, %485 ], [ %554, %553 ]
  %559 = load i32, i32* %14, align 8, !tbaa !10
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %564

; <label>:561:                                    ; preds = %557
  %562 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 11
  %563 = load i32, i32* %562, align 4, !tbaa !45
  br label %564

; <label>:564:                                    ; preds = %561, %557
  %565 = phi i32 [ %563, %561 ], [ 0, %557 ]
  %566 = sext i32 %565 to i64
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %39) #2
  br label %567

; <label>:567:                                    ; preds = %567, %564
  %568 = phi i64 [ %572, %567 ], [ 0, %564 ]
  %569 = phi i64 [ %575, %567 ], [ %566, %564 ]
  %570 = trunc i64 %569 to i8
  %571 = and i8 %570, 127
  %572 = add nuw nsw i64 %568, 1
  %573 = sub nsw i64 9, %568
  %574 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 %573
  store i8 %571, i8* %574, align 1, !tbaa !12
  %575 = lshr i64 %569, 7
  %576 = icmp eq i64 %575, 0
  br i1 %576, label %577, label %567

; <label>:577:                                    ; preds = %567
  %578 = and i64 %572, 4294967295
  %579 = load i8, i8* %55, align 1, !tbaa !12
  %580 = or i8 %579, -128
  store i8 %580, i8* %55, align 1, !tbaa !12
  %581 = icmp eq i32 %558, 0
  br i1 %581, label %582, label %593

; <label>:582:                                    ; preds = %577
  %583 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 10
  %584 = sub nsw i64 0, %578
  %585 = getelementptr inbounds i8, i8* %583, i64 %584
  %586 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %587 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %586, align 8, !tbaa !8
  %588 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %589 = load %struct.lua_State*, %struct.lua_State** %588, align 8, !tbaa !2
  %590 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %591 = load i8*, i8** %590, align 8, !tbaa !9
  %592 = call i32 %587(%struct.lua_State* %589, i8* nonnull %585, i64 %578, i8* %591) #2
  store i32 %592, i32* %58, align 4, !tbaa !11
  br label %593

; <label>:593:                                    ; preds = %582, %577
  %594 = phi i32 [ %558, %577 ], [ %592, %582 ]
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %39) #2
  %595 = icmp sgt i32 %565, 0
  br i1 %595, label %596, label %668

; <label>:596:                                    ; preds = %593
  %597 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 21
  %598 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 10
  %599 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %600 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %601 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %602 = zext i32 %565 to i64
  br label %603

; <label>:603:                                    ; preds = %664, %596
  %604 = phi i64 [ 0, %596 ], [ %666, %664 ]
  %605 = load %struct.LocVar*, %struct.LocVar** %597, align 8, !tbaa !46
  %606 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %605, i64 %604, i32 0
  %607 = load %struct.TString*, %struct.TString** %606, align 8, !tbaa !47
  call fastcc void @DumpString(%struct.TString* %607, %struct.DumpState* nonnull %2) #2
  %608 = load %struct.LocVar*, %struct.LocVar** %597, align 8, !tbaa !46
  %609 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %608, i64 %604, i32 1
  %610 = load i32, i32* %609, align 8, !tbaa !49
  %611 = sext i32 %610 to i64
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %39) #2
  br label %612

; <label>:612:                                    ; preds = %612, %603
  %613 = phi i64 [ %617, %612 ], [ 0, %603 ]
  %614 = phi i64 [ %620, %612 ], [ %611, %603 ]
  %615 = trunc i64 %614 to i8
  %616 = and i8 %615, 127
  %617 = add nuw nsw i64 %613, 1
  %618 = sub nsw i64 9, %613
  %619 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 %618
  store i8 %616, i8* %619, align 1, !tbaa !12
  %620 = lshr i64 %614, 7
  %621 = icmp eq i64 %620, 0
  br i1 %621, label %622, label %612

; <label>:622:                                    ; preds = %612
  %623 = and i64 %617, 4294967295
  %624 = load i8, i8* %55, align 1, !tbaa !12
  %625 = or i8 %624, -128
  store i8 %625, i8* %55, align 1, !tbaa !12
  %626 = load i32, i32* %58, align 4, !tbaa !11
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %636

; <label>:628:                                    ; preds = %622
  %629 = sub nsw i64 0, %623
  %630 = getelementptr inbounds i8, i8* %598, i64 %629
  %631 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %599, align 8, !tbaa !8
  %632 = load %struct.lua_State*, %struct.lua_State** %600, align 8, !tbaa !2
  %633 = load i8*, i8** %601, align 8, !tbaa !9
  %634 = call i32 %631(%struct.lua_State* %632, i8* nonnull %630, i64 %623, i8* %633) #2
  store i32 %634, i32* %58, align 4, !tbaa !11
  %635 = load %struct.LocVar*, %struct.LocVar** %597, align 8, !tbaa !46
  br label %636

; <label>:636:                                    ; preds = %628, %622
  %637 = phi i32 [ %626, %622 ], [ %634, %628 ]
  %638 = phi %struct.LocVar* [ %608, %622 ], [ %635, %628 ]
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %39) #2
  %639 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %638, i64 %604, i32 2
  %640 = load i32, i32* %639, align 4, !tbaa !50
  %641 = sext i32 %640 to i64
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %39) #2
  br label %642

; <label>:642:                                    ; preds = %642, %636
  %643 = phi i64 [ %647, %642 ], [ 0, %636 ]
  %644 = phi i64 [ %650, %642 ], [ %641, %636 ]
  %645 = trunc i64 %644 to i8
  %646 = and i8 %645, 127
  %647 = add nuw nsw i64 %643, 1
  %648 = sub nsw i64 9, %643
  %649 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 %648
  store i8 %646, i8* %649, align 1, !tbaa !12
  %650 = lshr i64 %644, 7
  %651 = icmp eq i64 %650, 0
  br i1 %651, label %652, label %642

; <label>:652:                                    ; preds = %642
  %653 = and i64 %647, 4294967295
  %654 = load i8, i8* %55, align 1, !tbaa !12
  %655 = or i8 %654, -128
  store i8 %655, i8* %55, align 1, !tbaa !12
  %656 = icmp eq i32 %637, 0
  br i1 %656, label %657, label %664

; <label>:657:                                    ; preds = %652
  %658 = sub nsw i64 0, %653
  %659 = getelementptr inbounds i8, i8* %598, i64 %658
  %660 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %599, align 8, !tbaa !8
  %661 = load %struct.lua_State*, %struct.lua_State** %600, align 8, !tbaa !2
  %662 = load i8*, i8** %601, align 8, !tbaa !9
  %663 = call i32 %660(%struct.lua_State* %661, i8* nonnull %659, i64 %653, i8* %662) #2
  store i32 %663, i32* %58, align 4, !tbaa !11
  br label %664

; <label>:664:                                    ; preds = %657, %652
  %665 = phi i32 [ %637, %652 ], [ %663, %657 ]
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %39) #2
  %666 = add nuw nsw i64 %604, 1
  %667 = icmp eq i64 %666, %602
  br i1 %667, label %668, label %603

; <label>:668:                                    ; preds = %664, %593
  %669 = phi i32 [ %594, %593 ], [ %665, %664 ]
  %670 = load i32, i32* %14, align 8, !tbaa !10
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %672, label %674

; <label>:672:                                    ; preds = %668
  %673 = load i32, i32* %290, align 8, !tbaa !17
  br label %674

; <label>:674:                                    ; preds = %672, %668
  %675 = phi i32 [ %673, %672 ], [ 0, %668 ]
  %676 = sext i32 %675 to i64
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %39) #2
  br label %677

; <label>:677:                                    ; preds = %677, %674
  %678 = phi i64 [ %682, %677 ], [ 0, %674 ]
  %679 = phi i64 [ %685, %677 ], [ %676, %674 ]
  %680 = trunc i64 %679 to i8
  %681 = and i8 %680, 127
  %682 = add nuw nsw i64 %678, 1
  %683 = sub nsw i64 9, %678
  %684 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 %683
  store i8 %681, i8* %684, align 1, !tbaa !12
  %685 = lshr i64 %679, 7
  %686 = icmp eq i64 %685, 0
  br i1 %686, label %687, label %677

; <label>:687:                                    ; preds = %677
  %688 = and i64 %682, 4294967295
  %689 = load i8, i8* %55, align 1, !tbaa !12
  %690 = or i8 %689, -128
  store i8 %690, i8* %55, align 1, !tbaa !12
  %691 = icmp eq i32 %669, 0
  br i1 %691, label %692, label %703

; <label>:692:                                    ; preds = %687
  %693 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 10
  %694 = sub nsw i64 0, %688
  %695 = getelementptr inbounds i8, i8* %693, i64 %694
  %696 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %697 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %696, align 8, !tbaa !8
  %698 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %699 = load %struct.lua_State*, %struct.lua_State** %698, align 8, !tbaa !2
  %700 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %701 = load i8*, i8** %700, align 8, !tbaa !9
  %702 = call i32 %697(%struct.lua_State* %699, i8* nonnull %695, i64 %688, i8* %701) #2
  store i32 %702, i32* %58, align 4, !tbaa !11
  br label %703

; <label>:703:                                    ; preds = %692, %687
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %39) #2
  %704 = icmp sgt i32 %675, 0
  br i1 %704, label %705, label %715

; <label>:705:                                    ; preds = %703
  %706 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 18
  %707 = zext i32 %675 to i64
  br label %708

; <label>:708:                                    ; preds = %708, %705
  %709 = phi i64 [ 0, %705 ], [ %713, %708 ]
  %710 = load %struct.Upvaldesc*, %struct.Upvaldesc** %706, align 8, !tbaa !31
  %711 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %710, i64 %709, i32 0
  %712 = load %struct.TString*, %struct.TString** %711, align 8, !tbaa !51
  call fastcc void @DumpString(%struct.TString* %712, %struct.DumpState* %2) #2
  %713 = add nuw nsw i64 %709, 1
  %714 = icmp eq i64 %713, %707
  br i1 %714, label %715, label %708

; <label>:715:                                    ; preds = %708, %703
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @DumpString(%struct.TString*, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = alloca [10 x i8], align 1
  %4 = icmp eq %struct.TString* %0, null
  br i1 %4, label %5, label %21

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %6) #2
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 9
  store i8 -128, i8* %7, align 1, !tbaa !12
  %8 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 4
  %9 = load i32, i32* %8, align 4, !tbaa !11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 9
  %13 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 1
  %14 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %13, align 8, !tbaa !8
  %15 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 0
  %16 = load %struct.lua_State*, %struct.lua_State** %15, align 8, !tbaa !2
  %17 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8, !tbaa !9
  %19 = call i32 %14(%struct.lua_State* %16, i8* nonnull %12, i64 1, i8* %18) #2
  store i32 %19, i32* %8, align 4, !tbaa !11
  br label %20

; <label>:20:                                     ; preds = %5, %11
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %6) #2
  br label %79

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 1
  %23 = load i8, i8* %22, align 8, !tbaa !52
  %24 = icmp eq i8 %23, 20
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %21
  %26 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 4
  %27 = load i8, i8* %26, align 1, !tbaa !54
  %28 = zext i8 %27 to i64
  br label %32

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 6, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !12
  br label %32

; <label>:32:                                     ; preds = %29, %25
  %33 = phi i64 [ %28, %25 ], [ %31, %29 ]
  %34 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 1
  %35 = add i64 %33, 1
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %36) #2
  br label %37

; <label>:37:                                     ; preds = %37, %32
  %38 = phi i64 [ %42, %37 ], [ 0, %32 ]
  %39 = phi i64 [ %45, %37 ], [ %35, %32 ]
  %40 = trunc i64 %39 to i8
  %41 = and i8 %40, 127
  %42 = add nuw nsw i64 %38, 1
  %43 = sub nsw i64 9, %38
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 %43
  store i8 %41, i8* %44, align 1, !tbaa !12
  %45 = lshr i64 %39, 7
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %37

; <label>:47:                                     ; preds = %37
  %48 = bitcast %struct.TString* %34 to i8*
  %49 = and i64 %42, 4294967295
  %50 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 9
  %51 = load i8, i8* %50, align 1, !tbaa !12
  %52 = or i8 %51, -128
  store i8 %52, i8* %50, align 1, !tbaa !12
  %53 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 4
  %54 = load i32, i32* %53, align 4, !tbaa !11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

; <label>:56:                                     ; preds = %47
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %36) #2
  br label %79

; <label>:57:                                     ; preds = %47
  %58 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 10
  %59 = sub nsw i64 0, %49
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 1
  %62 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %61, align 8, !tbaa !8
  %63 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 0
  %64 = load %struct.lua_State*, %struct.lua_State** %63, align 8, !tbaa !2
  %65 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 2
  %66 = load i8*, i8** %65, align 8, !tbaa !9
  %67 = call i32 %62(%struct.lua_State* %64, i8* nonnull %60, i64 %49, i8* %66) #2
  store i32 %67, i32* %53, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %36) #2
  %68 = icmp eq i32 %67, 0
  %69 = icmp ne i64 %33, 0
  %70 = and i1 %69, %68
  br i1 %70, label %71, label %79

; <label>:71:                                     ; preds = %57
  %72 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 1
  %73 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %72, align 8, !tbaa !8
  %74 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 0
  %75 = load %struct.lua_State*, %struct.lua_State** %74, align 8, !tbaa !2
  %76 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 2
  %77 = load i8*, i8** %76, align 8, !tbaa !9
  %78 = call i32 %73(%struct.lua_State* %75, i8* nonnull %48, i64 %33, i8* %77) #2
  store i32 %78, i32* %53, align 4, !tbaa !11
  br label %79

; <label>:79:                                     ; preds = %56, %71, %57, %20
  ret void
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !7, i64 24, !7, i64 28}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!3, !4, i64 8}
!9 = !{!3, !4, i64 16}
!10 = !{!3, !7, i64 24}
!11 = !{!3, !7, i64 28}
!12 = !{!5, !5, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long long", !5, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !5, i64 0}
!17 = !{!18, !7, i64 16}
!18 = !{!"Proto", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120}
!19 = !{!18, !4, i64 112}
!20 = !{!18, !7, i64 44}
!21 = !{!18, !7, i64 48}
!22 = !{!18, !5, i64 10}
!23 = !{!18, !5, i64 11}
!24 = !{!18, !5, i64 12}
!25 = !{!18, !7, i64 24}
!26 = !{!18, !4, i64 64}
!27 = !{!18, !7, i64 20}
!28 = !{!18, !4, i64 56}
!29 = !{!30, !5, i64 8}
!30 = !{!"TValue", !5, i64 0, !5, i64 8}
!31 = !{!18, !4, i64 80}
!32 = !{!33, !5, i64 8}
!33 = !{!"Upvaldesc", !4, i64 0, !5, i64 8, !5, i64 9}
!34 = !{!33, !5, i64 9}
!35 = !{!18, !7, i64 32}
!36 = !{!18, !4, i64 72}
!37 = !{!4, !4, i64 0}
!38 = !{!18, !7, i64 28}
!39 = !{!18, !4, i64 88}
!40 = !{!18, !7, i64 40}
!41 = !{!18, !4, i64 96}
!42 = !{!43, !7, i64 0}
!43 = !{!"AbsLineInfo", !7, i64 0, !7, i64 4}
!44 = !{!43, !7, i64 4}
!45 = !{!18, !7, i64 36}
!46 = !{!18, !4, i64 104}
!47 = !{!48, !4, i64 0}
!48 = !{!"LocVar", !4, i64 0, !7, i64 8, !7, i64 12}
!49 = !{!48, !7, i64 8}
!50 = !{!48, !7, i64 12}
!51 = !{!33, !4, i64 0}
!52 = !{!53, !5, i64 8}
!53 = !{!"TString", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !7, i64 12, !5, i64 16}
!54 = !{!53, !5, i64 11}
