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

; Function Attrs: nounwind optsize uwtable
define hidden i32 @luaU_dump(%struct.lua_State*, %struct.Proto* readonly, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca %struct.DumpState, align 8
  %14 = bitcast %struct.DumpState* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #2
  %15 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %13, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %15, align 8, !tbaa !2
  %16 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %13, i64 0, i32 1
  store i32 (%struct.lua_State*, i8*, i64, i8*)* %2, i32 (%struct.lua_State*, i8*, i64, i8*)** %16, align 8, !tbaa !8
  %17 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %13, i64 0, i32 2
  store i8* %3, i8** %17, align 8, !tbaa !9
  %18 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %13, i64 0, i32 3
  store i32 %4, i32* %18, align 8, !tbaa !10
  %19 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %13, i64 0, i32 4
  %20 = tail call i32 %2(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4, i8* %3) #3
  store i32 %20, i32* %19, align 4, !tbaa !11
  call fastcc void @DumpSize(i64 504, %struct.DumpState* nonnull %13) #3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %12) #2
  store i8 0, i8* %12, align 1, !tbaa !12
  %21 = load i32, i32* %19, align 4, !tbaa !11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

; <label>:23:                                     ; preds = %5
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #2
  br label %30

; <label>:24:                                     ; preds = %5
  %25 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %16, align 8, !tbaa !8
  %26 = load %struct.lua_State*, %struct.lua_State** %15, align 8, !tbaa !2
  %27 = load i8*, i8** %17, align 8, !tbaa !9
  %28 = call i32 %25(%struct.lua_State* %26, i8* nonnull %12, i64 1, i8* %27) #3
  store i32 %28, i32* %19, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

; <label>:30:                                     ; preds = %24, %23
  %31 = phi i32 [ %28, %24 ], [ %21, %23 ]
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #2
  store i8 8, i8* %10, align 1, !tbaa !12
  br label %45

; <label>:32:                                     ; preds = %24
  %33 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %16, align 8, !tbaa !8
  %34 = load %struct.lua_State*, %struct.lua_State** %15, align 8, !tbaa !2
  %35 = load i8*, i8** %17, align 8, !tbaa !9
  %36 = call i32 %33(%struct.lua_State* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 6, i8* %35) #3
  store i32 %36, i32* %19, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %11) #2
  store i8 4, i8* %11, align 1, !tbaa !12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

; <label>:38:                                     ; preds = %32
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %11) #2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #2
  store i8 8, i8* %10, align 1, !tbaa !12
  br label %45

; <label>:39:                                     ; preds = %32
  %40 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %16, align 8, !tbaa !8
  %41 = load %struct.lua_State*, %struct.lua_State** %15, align 8, !tbaa !2
  %42 = load i8*, i8** %17, align 8, !tbaa !9
  %43 = call i32 %40(%struct.lua_State* %41, i8* nonnull %11, i64 1, i8* %42) #3
  store i32 %43, i32* %19, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %11) #2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #2
  store i8 8, i8* %10, align 1, !tbaa !12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

; <label>:45:                                     ; preds = %39, %38, %30
  %46 = phi i32 [ %43, %39 ], [ %36, %38 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %9) #2
  store i8 8, i8* %9, align 1, !tbaa !12
  br label %53

; <label>:47:                                     ; preds = %39
  %48 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %16, align 8, !tbaa !8
  %49 = load %struct.lua_State*, %struct.lua_State** %15, align 8, !tbaa !2
  %50 = load i8*, i8** %17, align 8, !tbaa !9
  %51 = call i32 %48(%struct.lua_State* %49, i8* nonnull %10, i64 1, i8* %50) #3
  store i32 %51, i32* %19, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %9) #2
  store i8 8, i8* %9, align 1, !tbaa !12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

; <label>:53:                                     ; preds = %47, %45
  %54 = phi i32 [ %51, %47 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %9) #2
  %55 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %55) #2
  store i64 22136, i64* %8, align 8, !tbaa !13
  br label %63

; <label>:56:                                     ; preds = %47
  %57 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %16, align 8, !tbaa !8
  %58 = load %struct.lua_State*, %struct.lua_State** %15, align 8, !tbaa !2
  %59 = load i8*, i8** %17, align 8, !tbaa !9
  %60 = call i32 %57(%struct.lua_State* %58, i8* nonnull %9, i64 1, i8* %59) #3
  store i32 %60, i32* %19, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %9) #2
  %61 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %61) #2
  store i64 22136, i64* %8, align 8, !tbaa !13
  %62 = icmp eq i32 %60, 0
  br i1 %62, label %67, label %63

; <label>:63:                                     ; preds = %56, %53
  %64 = phi i32 [ %60, %56 ], [ %54, %53 ]
  %65 = phi i8* [ %61, %56 ], [ %55, %53 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %65) #2
  %66 = bitcast double* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66) #2
  store double 3.705000e+02, double* %7, align 8, !tbaa !15
  br label %79

; <label>:67:                                     ; preds = %56
  %68 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %16, align 8, !tbaa !8
  %69 = load %struct.lua_State*, %struct.lua_State** %15, align 8, !tbaa !2
  %70 = load i8*, i8** %17, align 8, !tbaa !9
  %71 = call i32 %68(%struct.lua_State* %69, i8* nonnull %61, i64 8, i8* %70) #3
  store i32 %71, i32* %19, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %61) #2
  %72 = bitcast double* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #2
  store double 3.705000e+02, double* %7, align 8, !tbaa !15
  %73 = icmp eq i32 %71, 0
  br i1 %73, label %74, label %79

; <label>:74:                                     ; preds = %67
  %75 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %16, align 8, !tbaa !8
  %76 = load %struct.lua_State*, %struct.lua_State** %15, align 8, !tbaa !2
  %77 = load i8*, i8** %17, align 8, !tbaa !9
  %78 = call i32 %75(%struct.lua_State* %76, i8* nonnull %72, i64 8, i8* %77) #3
  store i32 %78, i32* %19, align 4, !tbaa !11
  br label %79

; <label>:79:                                     ; preds = %63, %67, %74
  %80 = phi i32 [ %64, %63 ], [ %71, %67 ], [ %78, %74 ]
  %81 = phi i8* [ %66, %63 ], [ %72, %67 ], [ %72, %74 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %81) #2
  %82 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 6
  %83 = load i32, i32* %82, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #2
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %6, align 1, !tbaa !12
  %85 = icmp eq i32 %80, 0
  br i1 %85, label %86, label %91

; <label>:86:                                     ; preds = %79
  %87 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %16, align 8, !tbaa !8
  %88 = load %struct.lua_State*, %struct.lua_State** %15, align 8, !tbaa !2
  %89 = load i8*, i8** %17, align 8, !tbaa !9
  %90 = call i32 %87(%struct.lua_State* %88, i8* nonnull %6, i64 1, i8* %89) #3
  store i32 %90, i32* %19, align 4, !tbaa !11
  br label %91

; <label>:91:                                     ; preds = %79, %86
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #2
  call fastcc void @DumpFunction(%struct.Proto* nonnull %1, %struct.TString* null, %struct.DumpState* nonnull %13) #4
  %92 = load i32, i32* %19, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #2
  ret i32 %92
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
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
  %13 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 3
  %14 = load i32, i32* %13, align 8, !tbaa !10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %3
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 22
  %18 = load %struct.TString*, %struct.TString** %17, align 8, !tbaa !19
  %19 = icmp eq %struct.TString* %18, %1
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %3, %16
  tail call fastcc void @DumpSize(i64 0, %struct.DumpState* nonnull %2) #3
  br label %22

; <label>:21:                                     ; preds = %16
  tail call fastcc void @DumpString(%struct.TString* %18, %struct.DumpState* nonnull %2) #4
  br label %22

; <label>:22:                                     ; preds = %21, %20
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 13
  %24 = load i32, i32* %23, align 4, !tbaa !20
  %25 = sext i32 %24 to i64
  tail call fastcc void @DumpSize(i64 %25, %struct.DumpState* nonnull %2) #3
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 14
  %27 = load i32, i32* %26, align 8, !tbaa !21
  %28 = sext i32 %27 to i64
  tail call fastcc void @DumpSize(i64 %28, %struct.DumpState* nonnull %2) #3
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 3
  %30 = load i8, i8* %29, align 2, !tbaa !22
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %12) #2
  store i8 %30, i8* %12, align 1, !tbaa !12
  %31 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 4
  %32 = load i32, i32* %31, align 4, !tbaa !11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

; <label>:34:                                     ; preds = %22
  %35 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %36 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %35, align 8, !tbaa !8
  %37 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %38 = load %struct.lua_State*, %struct.lua_State** %37, align 8, !tbaa !2
  %39 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %40 = load i8*, i8** %39, align 8, !tbaa !9
  %41 = call i32 %36(%struct.lua_State* %38, i8* nonnull %12, i64 1, i8* %40) #3
  store i32 %41, i32* %31, align 4, !tbaa !11
  br label %42

; <label>:42:                                     ; preds = %22, %34
  %43 = phi i32 [ %32, %22 ], [ %41, %34 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #2
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 4
  %45 = load i8, i8* %44, align 1, !tbaa !23
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %11) #2
  store i8 %45, i8* %11, align 1, !tbaa !12
  %46 = icmp eq i32 %43, 0
  br i1 %46, label %47, label %55

; <label>:47:                                     ; preds = %42
  %48 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %49 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %48, align 8, !tbaa !8
  %50 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %51 = load %struct.lua_State*, %struct.lua_State** %50, align 8, !tbaa !2
  %52 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %53 = load i8*, i8** %52, align 8, !tbaa !9
  %54 = call i32 %49(%struct.lua_State* %51, i8* nonnull %11, i64 1, i8* %53) #3
  store i32 %54, i32* %31, align 4, !tbaa !11
  br label %55

; <label>:55:                                     ; preds = %42, %47
  %56 = phi i32 [ %54, %47 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %11) #2
  %57 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 5
  %58 = load i8, i8* %57, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #2
  store i8 %58, i8* %10, align 1, !tbaa !12
  %59 = icmp eq i32 %56, 0
  br i1 %59, label %60, label %68

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %62 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %61, align 8, !tbaa !8
  %63 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %64 = load %struct.lua_State*, %struct.lua_State** %63, align 8, !tbaa !2
  %65 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %66 = load i8*, i8** %65, align 8, !tbaa !9
  %67 = call i32 %62(%struct.lua_State* %64, i8* nonnull %10, i64 1, i8* %66) #3
  store i32 %67, i32* %31, align 4, !tbaa !11
  br label %68

; <label>:68:                                     ; preds = %55, %60
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #2
  %69 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 8
  %70 = load i32, i32* %69, align 8, !tbaa !25
  %71 = sext i32 %70 to i64
  call fastcc void @DumpSize(i64 %71, %struct.DumpState* nonnull %2) #3
  %72 = load i32, i32* %69, align 8, !tbaa !25
  %73 = load i32, i32* %31, align 4, !tbaa !11
  %74 = icmp eq i32 %73, 0
  %75 = icmp ne i32 %72, 0
  %76 = and i1 %75, %74
  br i1 %76, label %77, label %90

; <label>:77:                                     ; preds = %68
  %78 = sext i32 %72 to i64
  %79 = shl nsw i64 %78, 2
  %80 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 16
  %81 = bitcast i32** %80 to i8**
  %82 = load i8*, i8** %81, align 8, !tbaa !26
  %83 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %84 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %83, align 8, !tbaa !8
  %85 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %86 = load %struct.lua_State*, %struct.lua_State** %85, align 8, !tbaa !2
  %87 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %88 = load i8*, i8** %87, align 8, !tbaa !9
  %89 = call i32 %84(%struct.lua_State* %86, i8* %82, i64 %79, i8* %88) #3
  store i32 %89, i32* %31, align 4, !tbaa !11
  br label %90

; <label>:90:                                     ; preds = %68, %77
  %91 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 7
  %92 = load i32, i32* %91, align 4, !tbaa !27
  %93 = sext i32 %92 to i64
  call fastcc void @DumpSize(i64 %93, %struct.DumpState* nonnull %2) #3
  %94 = icmp sgt i32 %92, 0
  br i1 %94, label %95, label %160

; <label>:95:                                     ; preds = %90
  %96 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 15
  %97 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %98 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %99 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %100 = bitcast double* %7 to i8*
  %101 = bitcast double* %7 to i64*
  %102 = bitcast i64* %6 to i8*
  %103 = zext i32 %92 to i64
  br label %104

; <label>:104:                                    ; preds = %157, %95
  %105 = phi i64 [ 0, %95 ], [ %158, %157 ]
  %106 = load %struct.TValue*, %struct.TValue** %96, align 8, !tbaa !28
  %107 = getelementptr inbounds %struct.TValue, %struct.TValue* %106, i64 %105
  %108 = getelementptr inbounds %struct.TValue, %struct.TValue* %106, i64 %105, i32 1
  %109 = load i8, i8* %108, align 8, !tbaa !29
  %110 = and i8 %109, 63
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %9) #2
  store i8 %110, i8* %9, align 1, !tbaa !12
  %111 = load i32, i32* %31, align 4, !tbaa !11
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

; <label>:113:                                    ; preds = %104
  %114 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %97, align 8, !tbaa !8
  %115 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !2
  %116 = load i8*, i8** %99, align 8, !tbaa !9
  %117 = call i32 %114(%struct.lua_State* %115, i8* nonnull %9, i64 1, i8* %116) #3
  store i32 %117, i32* %31, align 4, !tbaa !11
  %118 = load i8, i8* %108, align 8, !tbaa !29
  br label %119

; <label>:119:                                    ; preds = %113, %104
  %120 = phi i32 [ %111, %104 ], [ %117, %113 ]
  %121 = phi i8 [ %109, %104 ], [ %118, %113 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %9) #2
  %122 = trunc i8 %121 to i6
  switch i6 %122, label %157 [
    i6 -28, label %154
    i6 1, label %123
    i6 19, label %134
    i6 -29, label %144
    i6 20, label %154
  ]

; <label>:123:                                    ; preds = %119
  %124 = bitcast %struct.TValue* %107 to i32*
  %125 = load i32, i32* %124, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %8) #2
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %8, align 1, !tbaa !12
  %127 = icmp eq i32 %120, 0
  br i1 %127, label %128, label %133

; <label>:128:                                    ; preds = %123
  %129 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %97, align 8, !tbaa !8
  %130 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !2
  %131 = load i8*, i8** %99, align 8, !tbaa !9
  %132 = call i32 %129(%struct.lua_State* %130, i8* nonnull %8, i64 1, i8* %131) #3
  store i32 %132, i32* %31, align 4, !tbaa !11
  br label %133

; <label>:133:                                    ; preds = %128, %123
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %8) #2
  br label %157

; <label>:134:                                    ; preds = %119
  %135 = bitcast %struct.TValue* %107 to i64*
  %136 = load i64, i64* %135, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %100) #2
  store i64 %136, i64* %101, align 8, !tbaa !15
  %137 = icmp eq i32 %120, 0
  br i1 %137, label %138, label %143

; <label>:138:                                    ; preds = %134
  %139 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %97, align 8, !tbaa !8
  %140 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !2
  %141 = load i8*, i8** %99, align 8, !tbaa !9
  %142 = call i32 %139(%struct.lua_State* %140, i8* nonnull %100, i64 8, i8* %141) #3
  store i32 %142, i32* %31, align 4, !tbaa !11
  br label %143

; <label>:143:                                    ; preds = %138, %134
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %100) #2
  br label %157

; <label>:144:                                    ; preds = %119
  %145 = bitcast %struct.TValue* %107 to i64*
  %146 = load i64, i64* %145, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %102) #2
  store i64 %146, i64* %6, align 8, !tbaa !13
  %147 = icmp eq i32 %120, 0
  br i1 %147, label %148, label %153

; <label>:148:                                    ; preds = %144
  %149 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %97, align 8, !tbaa !8
  %150 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !tbaa !2
  %151 = load i8*, i8** %99, align 8, !tbaa !9
  %152 = call i32 %149(%struct.lua_State* %150, i8* nonnull %102, i64 8, i8* %151) #3
  store i32 %152, i32* %31, align 4, !tbaa !11
  br label %153

; <label>:153:                                    ; preds = %148, %144
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %102) #2
  br label %157

; <label>:154:                                    ; preds = %119, %119
  %155 = bitcast %struct.TValue* %107 to %struct.TString**
  %156 = load %struct.TString*, %struct.TString** %155, align 8, !tbaa !12
  call fastcc void @DumpString(%struct.TString* %156, %struct.DumpState* nonnull %2) #3
  br label %157

; <label>:157:                                    ; preds = %154, %153, %143, %133, %119
  %158 = add nuw nsw i64 %105, 1
  %159 = icmp eq i64 %158, %103
  br i1 %159, label %160, label %104

; <label>:160:                                    ; preds = %157, %90
  %161 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 6
  %162 = load i32, i32* %161, align 8, !tbaa !17
  %163 = sext i32 %162 to i64
  call fastcc void @DumpSize(i64 %163, %struct.DumpState* nonnull %2) #3
  %164 = icmp sgt i32 %162, 0
  br i1 %164, label %165, label %200

; <label>:165:                                    ; preds = %160
  %166 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 18
  %167 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %168 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %169 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %170 = load i32, i32* %31, align 4, !tbaa !11
  %171 = zext i32 %162 to i64
  br label %172

; <label>:172:                                    ; preds = %196, %165
  %173 = phi i32 [ %170, %165 ], [ %197, %196 ]
  %174 = phi i64 [ 0, %165 ], [ %198, %196 ]
  %175 = load %struct.Upvaldesc*, %struct.Upvaldesc** %166, align 8, !tbaa !31
  %176 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %175, i64 %174, i32 1
  %177 = load i8, i8* %176, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #2
  store i8 %177, i8* %5, align 1, !tbaa !12
  %178 = icmp eq i32 %173, 0
  br i1 %178, label %179, label %185

; <label>:179:                                    ; preds = %172
  %180 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %167, align 8, !tbaa !8
  %181 = load %struct.lua_State*, %struct.lua_State** %168, align 8, !tbaa !2
  %182 = load i8*, i8** %169, align 8, !tbaa !9
  %183 = call i32 %180(%struct.lua_State* %181, i8* nonnull %5, i64 1, i8* %182) #3
  store i32 %183, i32* %31, align 4, !tbaa !11
  %184 = load %struct.Upvaldesc*, %struct.Upvaldesc** %166, align 8, !tbaa !31
  br label %185

; <label>:185:                                    ; preds = %179, %172
  %186 = phi %struct.Upvaldesc* [ %175, %172 ], [ %184, %179 ]
  %187 = phi i32 [ %173, %172 ], [ %183, %179 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #2
  %188 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %186, i64 %174, i32 2
  %189 = load i8, i8* %188, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #2
  store i8 %189, i8* %4, align 1, !tbaa !12
  %190 = icmp eq i32 %187, 0
  br i1 %190, label %191, label %196

; <label>:191:                                    ; preds = %185
  %192 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %167, align 8, !tbaa !8
  %193 = load %struct.lua_State*, %struct.lua_State** %168, align 8, !tbaa !2
  %194 = load i8*, i8** %169, align 8, !tbaa !9
  %195 = call i32 %192(%struct.lua_State* %193, i8* nonnull %4, i64 1, i8* %194) #3
  store i32 %195, i32* %31, align 4, !tbaa !11
  br label %196

; <label>:196:                                    ; preds = %191, %185
  %197 = phi i32 [ %187, %185 ], [ %195, %191 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #2
  %198 = add nuw nsw i64 %174, 1
  %199 = icmp eq i64 %198, %171
  br i1 %199, label %200, label %172

; <label>:200:                                    ; preds = %196, %160
  %201 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 10
  %202 = load i32, i32* %201, align 8, !tbaa !35
  %203 = sext i32 %202 to i64
  call fastcc void @DumpSize(i64 %203, %struct.DumpState* %2) #3
  %204 = icmp sgt i32 %202, 0
  br i1 %204, label %205, label %217

; <label>:205:                                    ; preds = %200
  %206 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 17
  %207 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 22
  %208 = zext i32 %202 to i64
  br label %209

; <label>:209:                                    ; preds = %209, %205
  %210 = phi i64 [ 0, %205 ], [ %215, %209 ]
  %211 = load %struct.Proto**, %struct.Proto*** %206, align 8, !tbaa !36
  %212 = getelementptr inbounds %struct.Proto*, %struct.Proto** %211, i64 %210
  %213 = load %struct.Proto*, %struct.Proto** %212, align 8, !tbaa !37
  %214 = load %struct.TString*, %struct.TString** %207, align 8, !tbaa !19
  call fastcc void @DumpFunction(%struct.Proto* %213, %struct.TString* %214, %struct.DumpState* %2) #3
  %215 = add nuw nsw i64 %210, 1
  %216 = icmp eq i64 %215, %208
  br i1 %216, label %217, label %209

; <label>:217:                                    ; preds = %209, %200
  %218 = load i32, i32* %13, align 8, !tbaa !10
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %224

; <label>:220:                                    ; preds = %217
  %221 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 9
  %222 = load i32, i32* %221, align 4, !tbaa !38
  %223 = sext i32 %222 to i64
  br label %224

; <label>:224:                                    ; preds = %220, %217
  %225 = phi i64 [ %223, %220 ], [ 0, %217 ]
  call fastcc void @DumpSize(i64 %225, %struct.DumpState* nonnull %2) #3
  %226 = load i32, i32* %31, align 4, !tbaa !11
  %227 = icmp eq i32 %226, 0
  %228 = icmp ne i64 %225, 0
  %229 = and i1 %228, %227
  br i1 %229, label %230, label %240

; <label>:230:                                    ; preds = %224
  %231 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 19
  %232 = load i8*, i8** %231, align 8, !tbaa !39
  %233 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %234 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %233, align 8, !tbaa !8
  %235 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %236 = load %struct.lua_State*, %struct.lua_State** %235, align 8, !tbaa !2
  %237 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %238 = load i8*, i8** %237, align 8, !tbaa !9
  %239 = call i32 %234(%struct.lua_State* %236, i8* %232, i64 %225, i8* %238) #3
  store i32 %239, i32* %31, align 4, !tbaa !11
  br label %240

; <label>:240:                                    ; preds = %230, %224
  %241 = load i32, i32* %13, align 8, !tbaa !10
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %244, label %243

; <label>:243:                                    ; preds = %240
  call fastcc void @DumpSize(i64 0, %struct.DumpState* nonnull %2) #3
  br label %264

; <label>:244:                                    ; preds = %240
  %245 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 12
  %246 = load i32, i32* %245, align 8, !tbaa !40
  %247 = sext i32 %246 to i64
  call fastcc void @DumpSize(i64 %247, %struct.DumpState* nonnull %2) #3
  %248 = icmp sgt i32 %246, 0
  br i1 %248, label %249, label %264

; <label>:249:                                    ; preds = %244
  %250 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 20
  %251 = zext i32 %246 to i64
  br label %252

; <label>:252:                                    ; preds = %252, %249
  %253 = phi i64 [ 0, %249 ], [ %262, %252 ]
  %254 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %250, align 8, !tbaa !41
  %255 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %254, i64 %253, i32 0
  %256 = load i32, i32* %255, align 4, !tbaa !42
  %257 = sext i32 %256 to i64
  call fastcc void @DumpSize(i64 %257, %struct.DumpState* %2) #3
  %258 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %250, align 8, !tbaa !41
  %259 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %258, i64 %253, i32 1
  %260 = load i32, i32* %259, align 4, !tbaa !44
  %261 = sext i32 %260 to i64
  call fastcc void @DumpSize(i64 %261, %struct.DumpState* %2) #3
  %262 = add nuw nsw i64 %253, 1
  %263 = icmp eq i64 %262, %251
  br i1 %263, label %264, label %252

; <label>:264:                                    ; preds = %252, %244, %243
  %265 = load i32, i32* %13, align 8, !tbaa !10
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %268, label %267

; <label>:267:                                    ; preds = %264
  call fastcc void @DumpSize(i64 0, %struct.DumpState* nonnull %2) #3
  br label %291

; <label>:268:                                    ; preds = %264
  %269 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 11
  %270 = load i32, i32* %269, align 4, !tbaa !45
  %271 = sext i32 %270 to i64
  call fastcc void @DumpSize(i64 %271, %struct.DumpState* nonnull %2) #3
  %272 = icmp sgt i32 %270, 0
  br i1 %272, label %273, label %291

; <label>:273:                                    ; preds = %268
  %274 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 21
  %275 = zext i32 %270 to i64
  br label %276

; <label>:276:                                    ; preds = %276, %273
  %277 = phi i64 [ 0, %273 ], [ %289, %276 ]
  %278 = load %struct.LocVar*, %struct.LocVar** %274, align 8, !tbaa !46
  %279 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %278, i64 %277, i32 0
  %280 = load %struct.TString*, %struct.TString** %279, align 8, !tbaa !47
  call fastcc void @DumpString(%struct.TString* %280, %struct.DumpState* %2) #3
  %281 = load %struct.LocVar*, %struct.LocVar** %274, align 8, !tbaa !46
  %282 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %281, i64 %277, i32 1
  %283 = load i32, i32* %282, align 8, !tbaa !49
  %284 = sext i32 %283 to i64
  call fastcc void @DumpSize(i64 %284, %struct.DumpState* %2) #3
  %285 = load %struct.LocVar*, %struct.LocVar** %274, align 8, !tbaa !46
  %286 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %285, i64 %277, i32 2
  %287 = load i32, i32* %286, align 4, !tbaa !50
  %288 = sext i32 %287 to i64
  call fastcc void @DumpSize(i64 %288, %struct.DumpState* %2) #3
  %289 = add nuw nsw i64 %277, 1
  %290 = icmp eq i64 %289, %275
  br i1 %290, label %291, label %276

; <label>:291:                                    ; preds = %276, %268, %267
  %292 = load i32, i32* %13, align 8, !tbaa !10
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %295, label %294

; <label>:294:                                    ; preds = %291
  call fastcc void @DumpSize(i64 0, %struct.DumpState* nonnull %2) #3
  br label %309

; <label>:295:                                    ; preds = %291
  %296 = load i32, i32* %161, align 8, !tbaa !17
  %297 = sext i32 %296 to i64
  call fastcc void @DumpSize(i64 %297, %struct.DumpState* nonnull %2) #3
  %298 = icmp sgt i32 %296, 0
  br i1 %298, label %299, label %309

; <label>:299:                                    ; preds = %295
  %300 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 18
  %301 = zext i32 %296 to i64
  br label %302

; <label>:302:                                    ; preds = %302, %299
  %303 = phi i64 [ 0, %299 ], [ %307, %302 ]
  %304 = load %struct.Upvaldesc*, %struct.Upvaldesc** %300, align 8, !tbaa !31
  %305 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %304, i64 %303, i32 0
  %306 = load %struct.TString*, %struct.TString** %305, align 8, !tbaa !51
  call fastcc void @DumpString(%struct.TString* %306, %struct.DumpState* %2) #3
  %307 = add nuw nsw i64 %303, 1
  %308 = icmp eq i64 %307, %301
  br i1 %308, label %309, label %302

; <label>:309:                                    ; preds = %302, %294, %295
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @DumpSize(i64, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = alloca [10 x i8], align 1
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %4) #2
  br label %5

; <label>:5:                                      ; preds = %5, %2
  %6 = phi i64 [ %10, %5 ], [ 0, %2 ]
  %7 = phi i64 [ %13, %5 ], [ %0, %2 ]
  %8 = trunc i64 %7 to i8
  %9 = and i8 %8, 127
  %10 = add nuw nsw i64 %6, 1
  %11 = sub nsw i64 9, %6
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 %11
  store i8 %9, i8* %12, align 1, !tbaa !12
  %13 = lshr i64 %7, 7
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %5

; <label>:15:                                     ; preds = %5
  %16 = and i64 %10, 4294967295
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 9
  %18 = load i8, i8* %17, align 1, !tbaa !12
  %19 = or i8 %18, -128
  store i8 %19, i8* %17, align 1, !tbaa !12
  %20 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 4
  %21 = load i32, i32* %20, align 4, !tbaa !11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

; <label>:23:                                     ; preds = %15
  %24 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 10
  %25 = sub nsw i64 0, %16
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 1
  %28 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %27, align 8, !tbaa !8
  %29 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 0
  %30 = load %struct.lua_State*, %struct.lua_State** %29, align 8, !tbaa !2
  %31 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 2
  %32 = load i8*, i8** %31, align 8, !tbaa !9
  %33 = call i32 %28(%struct.lua_State* %30, i8* nonnull %26, i64 %16, i8* %32) #3
  store i32 %33, i32* %20, align 4, !tbaa !11
  br label %34

; <label>:34:                                     ; preds = %15, %23
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %4) #2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @DumpString(%struct.TString*, %struct.DumpState* nocapture) unnamed_addr #0 {
  %3 = icmp eq %struct.TString* %0, null
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %2
  tail call fastcc void @DumpSize(i64 0, %struct.DumpState* %1) #4
  br label %34

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !52
  %8 = icmp eq i8 %7, 20
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 4
  %11 = load i8, i8* %10, align 1, !tbaa !54
  %12 = zext i8 %11 to i64
  br label %16

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 6, i32 0
  %15 = load i64, i64* %14, align 8, !tbaa !12
  br label %16

; <label>:16:                                     ; preds = %13, %9
  %17 = phi i64 [ %12, %9 ], [ %15, %13 ]
  %18 = add i64 %17, 1
  tail call fastcc void @DumpSize(i64 %18, %struct.DumpState* %1) #4
  %19 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 4
  %20 = load i32, i32* %19, align 4, !tbaa !11
  %21 = icmp eq i32 %20, 0
  %22 = icmp ne i64 %17, 0
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %34

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 1
  %26 = bitcast %struct.TString* %25 to i8*
  %27 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 1
  %28 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %27, align 8, !tbaa !8
  %29 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 0
  %30 = load %struct.lua_State*, %struct.lua_State** %29, align 8, !tbaa !2
  %31 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 2
  %32 = load i8*, i8** %31, align 8, !tbaa !9
  %33 = tail call i32 %28(%struct.lua_State* %30, i8* nonnull %26, i64 %17, i8* %32) #3
  store i32 %33, i32* %19, align 4, !tbaa !11
  br label %34

; <label>:34:                                     ; preds = %24, %16, %4
  ret void
}

attributes #0 = { nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

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
