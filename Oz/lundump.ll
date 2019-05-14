; ModuleID = 'lundump.c'
source_filename = "lundump.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon.3 }
%union.anon.3 = type { i64 }
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.UpVal*, %struct.UpVal** }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32 (%struct.lua_State*)*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.TValue*, %union.Node*, %union.Node*, %struct.Table*, %struct.GCObject* }
%union.Node = type { %struct.NodeKey }
%struct.NodeKey = type { %union.Value, i8, i8, i32, %union.Value }
%union.StackValue = type { %struct.TValue }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon, %union.anon.1, i16, i16 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.1 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.LoadState = type { %struct.lua_State*, %struct.Zio*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"binary string\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"not a binary chunk\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"version mismatch\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"format mismatch\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\19\93\0D\0A\1A\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"corrupted chunk\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Instruction\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"lua_Integer\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"lua_Number\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"integer format mismatch\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"float format mismatch\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"truncated chunk\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"%s: bad binary format (%s)\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"%s size mismatch\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"bad format for constant string\00", align 1

; Function Attrs: minsize nounwind optsize uwtable
define hidden %struct.LClosure* @luaU_undump(%struct.lua_State*, %struct.Zio*, i8*) local_unnamed_addr #0 {
  %4 = alloca %struct.LoadState, align 8
  %5 = bitcast %struct.LoadState* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7
  %6 = load i8, i8* %2, align 1, !tbaa !2
  switch i8 %6, label %9 [
    i8 64, label %7
    i8 61, label %7
    i8 27, label %10
  ]

; <label>:7:                                      ; preds = %3, %3
  %8 = getelementptr inbounds i8, i8* %2, i64 1
  br label %10

; <label>:9:                                      ; preds = %3
  br label %10

; <label>:10:                                     ; preds = %3, %9, %7
  %11 = phi i8* [ %2, %9 ], [ %8, %7 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %3 ]
  %12 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %4, i64 0, i32 2
  store i8* %11, i8** %12, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %4, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %13, align 8, !tbaa !8
  %14 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %4, i64 0, i32 1
  store %struct.Zio* %1, %struct.Zio** %14, align 8, !tbaa !9
  call fastcc void @checkliteral(%struct.LoadState* nonnull %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 1), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0)) #8
  %15 = call fastcc i32 @LoadInt(%struct.LoadState* nonnull %4) #8
  %16 = icmp eq i32 %15, 504
  br i1 %16, label %18, label %17

; <label>:17:                                     ; preds = %10
  call fastcc void @error(%struct.LoadState* nonnull %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #9
  unreachable

; <label>:18:                                     ; preds = %10
  %19 = call fastcc zeroext i8 @LoadByte(%struct.LoadState* nonnull %4) #8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %18
  call fastcc void @error(%struct.LoadState* nonnull %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #9
  unreachable

; <label>:22:                                     ; preds = %18
  call fastcc void @checkliteral(%struct.LoadState* nonnull %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #8
  call fastcc void @fchecksize(%struct.LoadState* nonnull %4, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)) #8
  call fastcc void @fchecksize(%struct.LoadState* nonnull %4, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #8
  call fastcc void @fchecksize(%struct.LoadState* nonnull %4, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #8
  %23 = call fastcc i64 @LoadInteger(%struct.LoadState* nonnull %4) #8
  %24 = icmp eq i64 %23, 22136
  br i1 %24, label %26, label %25

; <label>:25:                                     ; preds = %22
  call fastcc void @error(%struct.LoadState* nonnull %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #9
  unreachable

; <label>:26:                                     ; preds = %22
  %27 = call fastcc double @LoadNumber(%struct.LoadState* nonnull %4) #8
  %28 = fcmp une double %27, 3.705000e+02
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %26
  call fastcc void @error(%struct.LoadState* nonnull %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0)) #9
  unreachable

; <label>:30:                                     ; preds = %26
  %31 = call fastcc zeroext i8 @LoadByte(%struct.LoadState* nonnull %4) #10
  %32 = zext i8 %31 to i32
  %33 = tail call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %0, i32 %32) #8
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %35 = bitcast %union.StackValue** %34 to %struct.TValue**
  %36 = load %struct.TValue*, %struct.TValue** %35, align 8, !tbaa !10
  %37 = bitcast %struct.TValue* %36 to %struct.LClosure**
  store %struct.LClosure* %33, %struct.LClosure** %37, align 8, !tbaa !2
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %36, i64 0, i32 1
  store i8 86, i8* %38, align 8, !tbaa !16
  tail call void @luaD_inctop(%struct.lua_State* %0) #8
  %39 = tail call %struct.Proto* @luaF_newproto(%struct.lua_State* %0) #8
  %40 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %33, i64 0, i32 5
  store %struct.Proto* %39, %struct.Proto** %40, align 8, !tbaa !18
  call fastcc void @LoadFunction(%struct.LoadState* nonnull %4, %struct.Proto* %39, %struct.TString* null) #10
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7
  ret %struct.LClosure* %33
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: minsize optsize
declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc zeroext i8 @LoadByte(%struct.LoadState* nocapture readonly) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 1
  %3 = load %struct.Zio*, %struct.Zio** %2, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.Zio, %struct.Zio* %3, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !20
  %6 = add i64 %5, -1
  store i64 %6, i64* %4, align 8, !tbaa !20
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %14, label %8

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.Zio, %struct.Zio* %3, i64 0, i32 1
  %10 = load i8*, i8** %9, align 8, !tbaa !22
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  store i8* %11, i8** %9, align 8, !tbaa !22
  %12 = load i8, i8* %10, align 1, !tbaa !2
  %13 = zext i8 %12 to i32
  br label %18

; <label>:14:                                     ; preds = %1
  %15 = tail call i32 @luaZ_fill(%struct.Zio* %3) #8
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %14
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #11
  unreachable

; <label>:18:                                     ; preds = %8, %14
  %19 = phi i32 [ %13, %8 ], [ %15, %14 ]
  %20 = trunc i32 %19 to i8
  ret i8 %20
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: minsize optsize
declare hidden void @luaD_inctop(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @LoadFunction(%struct.LoadState* readonly, %struct.Proto*, %struct.TString*) unnamed_addr #0 {
  %4 = tail call fastcc %struct.TString* @LoadStringN(%struct.LoadState* %0) #10
  %5 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 22
  %6 = icmp eq %struct.TString* %4, null
  %7 = select i1 %6, %struct.TString* %2, %struct.TString* %4
  store %struct.TString* %7, %struct.TString** %5, align 8, !tbaa !23
  %8 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0) #10
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 13
  store i32 %8, i32* %9, align 4, !tbaa !25
  %10 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0) #10
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 14
  store i32 %10, i32* %11, align 8, !tbaa !26
  %12 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0) #10
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 3
  store i8 %12, i8* %13, align 2, !tbaa !27
  %14 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0) #10
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 4
  store i8 %14, i8* %15, align 1, !tbaa !28
  %16 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0) #10
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 5
  store i8 %16, i8* %17, align 4, !tbaa !29
  %18 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0) #8
  %19 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %20 = load %struct.lua_State*, %struct.lua_State** %19, align 8, !tbaa !8
  %21 = sext i32 %18 to i64
  %22 = shl nsw i64 %21, 2
  %23 = tail call i8* @luaM_malloc_(%struct.lua_State* %20, i64 %22, i32 0) #8
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 16
  %25 = bitcast i32** %24 to i8**
  store i8* %23, i8** %25, align 8, !tbaa !30
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 8
  store i32 %18, i32* %26, align 8, !tbaa !31
  tail call fastcc void @LoadBlock(%struct.LoadState* %0, i8* %23, i64 %22) #8
  %27 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0) #8
  %28 = load %struct.lua_State*, %struct.lua_State** %19, align 8, !tbaa !8
  %29 = sext i32 %27 to i64
  %30 = shl nsw i64 %29, 4
  %31 = tail call i8* @luaM_malloc_(%struct.lua_State* %28, i64 %30, i32 0) #8
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 15
  %33 = bitcast %struct.TValue** %32 to i8**
  store i8* %31, i8** %33, align 8, !tbaa !32
  %34 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 7
  store i32 %27, i32* %34, align 4, !tbaa !33
  %35 = bitcast i8* %31 to %struct.TValue*
  br label %36

; <label>:36:                                     ; preds = %40, %3
  %37 = phi i64 [ %42, %40 ], [ 0, %3 ]
  %38 = icmp slt i64 %37, %29
  br i1 %38, label %40, label %39

; <label>:39:                                     ; preds = %36
  br label %43

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %35, i64 %37, i32 1
  store i8 0, i8* %41, align 8, !tbaa !16
  %42 = add nuw nsw i64 %37, 1
  br label %36

; <label>:43:                                     ; preds = %39, %72
  %44 = phi i64 [ %73, %72 ], [ 0, %39 ]
  %45 = icmp slt i64 %44, %29
  br i1 %45, label %46, label %74

; <label>:46:                                     ; preds = %43
  %47 = load %struct.TValue*, %struct.TValue** %32, align 8, !tbaa !32
  %48 = getelementptr inbounds %struct.TValue, %struct.TValue* %47, i64 %44
  %49 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0) #8
  switch i8 %49, label %72 [
    i8 0, label %69
    i8 1, label %50
    i8 19, label %54
    i8 35, label %57
    i8 20, label %60
    i8 36, label %60
  ]

; <label>:50:                                     ; preds = %46
  %51 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0) #8
  %52 = zext i8 %51 to i32
  %53 = bitcast %struct.TValue* %48 to i32*
  store i32 %52, i32* %53, align 8, !tbaa !2
  br label %69

; <label>:54:                                     ; preds = %46
  %55 = tail call fastcc double @LoadNumber(%struct.LoadState* %0) #8
  %56 = bitcast %struct.TValue* %48 to double*
  store double %55, double* %56, align 8, !tbaa !2
  br label %69

; <label>:57:                                     ; preds = %46
  %58 = tail call fastcc i64 @LoadInteger(%struct.LoadState* %0) #8
  %59 = bitcast %struct.TValue* %48 to i64*
  store i64 %58, i64* %59, align 8, !tbaa !2
  br label %69

; <label>:60:                                     ; preds = %46, %46
  %61 = tail call fastcc %struct.TString* @LoadStringN(%struct.LoadState* %0) #8
  %62 = icmp eq %struct.TString* %61, null
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %60
  tail call fastcc void @error(%struct.LoadState* %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0)) #9
  unreachable

; <label>:64:                                     ; preds = %60
  %65 = bitcast %struct.TValue* %48 to %struct.TString**
  store %struct.TString* %61, %struct.TString** %65, align 8, !tbaa !2
  %66 = getelementptr inbounds %struct.TString, %struct.TString* %61, i64 0, i32 1
  %67 = load i8, i8* %66, align 8, !tbaa !34
  %68 = or i8 %67, 64
  br label %69

; <label>:69:                                     ; preds = %46, %50, %54, %57, %64
  %70 = phi i8 [ %68, %64 ], [ 35, %57 ], [ 19, %54 ], [ 1, %50 ], [ %49, %46 ]
  %71 = getelementptr inbounds %struct.TValue, %struct.TValue* %47, i64 %44, i32 1
  store i8 %70, i8* %71, align 8, !tbaa !16
  br label %72

; <label>:72:                                     ; preds = %69, %46
  %73 = add nuw nsw i64 %44, 1
  br label %43

; <label>:74:                                     ; preds = %43
  %75 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0) #8
  %76 = load %struct.lua_State*, %struct.lua_State** %19, align 8, !tbaa !8
  %77 = sext i32 %75 to i64
  %78 = shl nsw i64 %77, 4
  %79 = tail call i8* @luaM_malloc_(%struct.lua_State* %76, i64 %78, i32 0) #8
  %80 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 18
  %81 = bitcast %struct.Upvaldesc** %80 to i8**
  store i8* %79, i8** %81, align 8, !tbaa !36
  %82 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 6
  store i32 %75, i32* %82, align 8, !tbaa !37
  %83 = bitcast i8* %79 to %struct.Upvaldesc*
  br label %84

; <label>:84:                                     ; preds = %88, %74
  %85 = phi i64 [ %90, %88 ], [ 0, %74 ]
  %86 = icmp slt i64 %85, %77
  br i1 %86, label %88, label %87

; <label>:87:                                     ; preds = %84
  br label %91

; <label>:88:                                     ; preds = %84
  %89 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %83, i64 %85, i32 0
  store %struct.TString* null, %struct.TString** %89, align 8, !tbaa !38
  %90 = add nuw nsw i64 %85, 1
  br label %84

; <label>:91:                                     ; preds = %87, %94
  %92 = phi i64 [ %101, %94 ], [ 0, %87 ]
  %93 = icmp slt i64 %92, %77
  br i1 %93, label %94, label %102

; <label>:94:                                     ; preds = %91
  %95 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0) #8
  %96 = load %struct.Upvaldesc*, %struct.Upvaldesc** %80, align 8, !tbaa !36
  %97 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %96, i64 %92, i32 1
  store i8 %95, i8* %97, align 8, !tbaa !40
  %98 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0) #8
  %99 = load %struct.Upvaldesc*, %struct.Upvaldesc** %80, align 8, !tbaa !36
  %100 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %99, i64 %92, i32 2
  store i8 %98, i8* %100, align 1, !tbaa !41
  %101 = add nuw nsw i64 %92, 1
  br label %91

; <label>:102:                                    ; preds = %91
  %103 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0) #8
  %104 = load %struct.lua_State*, %struct.lua_State** %19, align 8, !tbaa !8
  %105 = sext i32 %103 to i64
  %106 = shl nsw i64 %105, 3
  %107 = tail call i8* @luaM_malloc_(%struct.lua_State* %104, i64 %106, i32 0) #8
  %108 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 17
  %109 = bitcast %struct.Proto*** %108 to i8**
  store i8* %107, i8** %109, align 8, !tbaa !42
  %110 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 10
  store i32 %103, i32* %110, align 8, !tbaa !43
  br label %111

; <label>:111:                                    ; preds = %115, %102
  %112 = phi i64 [ %118, %115 ], [ 0, %102 ]
  %113 = icmp slt i64 %112, %105
  br i1 %113, label %115, label %114

; <label>:114:                                    ; preds = %111
  br label %119

; <label>:115:                                    ; preds = %111
  %116 = load %struct.Proto**, %struct.Proto*** %108, align 8, !tbaa !42
  %117 = getelementptr inbounds %struct.Proto*, %struct.Proto** %116, i64 %112
  store %struct.Proto* null, %struct.Proto** %117, align 8, !tbaa !44
  %118 = add nuw nsw i64 %112, 1
  br label %111

; <label>:119:                                    ; preds = %114, %122
  %120 = phi i64 [ %131, %122 ], [ 0, %114 ]
  %121 = icmp slt i64 %120, %105
  br i1 %121, label %122, label %132

; <label>:122:                                    ; preds = %119
  %123 = load %struct.lua_State*, %struct.lua_State** %19, align 8, !tbaa !8
  %124 = tail call %struct.Proto* @luaF_newproto(%struct.lua_State* %123) #8
  %125 = load %struct.Proto**, %struct.Proto*** %108, align 8, !tbaa !42
  %126 = getelementptr inbounds %struct.Proto*, %struct.Proto** %125, i64 %120
  store %struct.Proto* %124, %struct.Proto** %126, align 8, !tbaa !44
  %127 = load %struct.Proto**, %struct.Proto*** %108, align 8, !tbaa !42
  %128 = getelementptr inbounds %struct.Proto*, %struct.Proto** %127, i64 %120
  %129 = load %struct.Proto*, %struct.Proto** %128, align 8, !tbaa !44
  %130 = load %struct.TString*, %struct.TString** %5, align 8, !tbaa !23
  tail call fastcc void @LoadFunction(%struct.LoadState* %0, %struct.Proto* %129, %struct.TString* %130) #8
  %131 = add nuw nsw i64 %120, 1
  br label %119

; <label>:132:                                    ; preds = %119
  %133 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0) #8
  %134 = load %struct.lua_State*, %struct.lua_State** %19, align 8, !tbaa !8
  %135 = sext i32 %133 to i64
  %136 = tail call i8* @luaM_malloc_(%struct.lua_State* %134, i64 %135, i32 0) #8
  %137 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 19
  store i8* %136, i8** %137, align 8, !tbaa !45
  %138 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 9
  store i32 %133, i32* %138, align 4, !tbaa !46
  tail call fastcc void @LoadBlock(%struct.LoadState* %0, i8* %136, i64 %135) #8
  %139 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0) #8
  %140 = load %struct.lua_State*, %struct.lua_State** %19, align 8, !tbaa !8
  %141 = sext i32 %139 to i64
  %142 = shl nsw i64 %141, 3
  %143 = tail call i8* @luaM_malloc_(%struct.lua_State* %140, i64 %142, i32 0) #8
  %144 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 20
  %145 = bitcast %struct.AbsLineInfo** %144 to i8**
  store i8* %143, i8** %145, align 8, !tbaa !47
  %146 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 12
  store i32 %139, i32* %146, align 8, !tbaa !48
  br label %147

; <label>:147:                                    ; preds = %151, %132
  %148 = phi i64 [ %157, %151 ], [ 0, %132 ]
  %149 = icmp slt i64 %148, %141
  %150 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0) #8
  br i1 %149, label %151, label %158

; <label>:151:                                    ; preds = %147
  %152 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %144, align 8, !tbaa !47
  %153 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %152, i64 %148, i32 0
  store i32 %150, i32* %153, align 4, !tbaa !49
  %154 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0) #8
  %155 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %144, align 8, !tbaa !47
  %156 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %155, i64 %148, i32 1
  store i32 %154, i32* %156, align 4, !tbaa !51
  %157 = add nuw nsw i64 %148, 1
  br label %147

; <label>:158:                                    ; preds = %147
  %159 = load %struct.lua_State*, %struct.lua_State** %19, align 8, !tbaa !8
  %160 = sext i32 %150 to i64
  %161 = shl nsw i64 %160, 4
  %162 = tail call i8* @luaM_malloc_(%struct.lua_State* %159, i64 %161, i32 0) #8
  %163 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 21
  %164 = bitcast %struct.LocVar** %163 to i8**
  store i8* %162, i8** %164, align 8, !tbaa !52
  %165 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 11
  store i32 %150, i32* %165, align 4, !tbaa !53
  %166 = bitcast i8* %162 to %struct.LocVar*
  br label %167

; <label>:167:                                    ; preds = %171, %158
  %168 = phi i64 [ %173, %171 ], [ 0, %158 ]
  %169 = icmp slt i64 %168, %160
  br i1 %169, label %171, label %170

; <label>:170:                                    ; preds = %167
  br label %174

; <label>:171:                                    ; preds = %167
  %172 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %166, i64 %168, i32 0
  store %struct.TString* null, %struct.TString** %172, align 8, !tbaa !54
  %173 = add nuw nsw i64 %168, 1
  br label %167

; <label>:174:                                    ; preds = %170, %177
  %175 = phi i64 [ %187, %177 ], [ 0, %170 ]
  %176 = icmp slt i64 %175, %160
  br i1 %176, label %177, label %188

; <label>:177:                                    ; preds = %174
  %178 = tail call fastcc %struct.TString* @LoadStringN(%struct.LoadState* %0) #8
  %179 = load %struct.LocVar*, %struct.LocVar** %163, align 8, !tbaa !52
  %180 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %179, i64 %175, i32 0
  store %struct.TString* %178, %struct.TString** %180, align 8, !tbaa !54
  %181 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0) #8
  %182 = load %struct.LocVar*, %struct.LocVar** %163, align 8, !tbaa !52
  %183 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %182, i64 %175, i32 1
  store i32 %181, i32* %183, align 8, !tbaa !56
  %184 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0) #8
  %185 = load %struct.LocVar*, %struct.LocVar** %163, align 8, !tbaa !52
  %186 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %185, i64 %175, i32 2
  store i32 %184, i32* %186, align 4, !tbaa !57
  %187 = add nuw nsw i64 %175, 1
  br label %174

; <label>:188:                                    ; preds = %174
  %189 = tail call fastcc i32 @LoadInt(%struct.LoadState* %0) #8
  %190 = sext i32 %189 to i64
  br label %191

; <label>:191:                                    ; preds = %194, %188
  %192 = phi i64 [ %198, %194 ], [ 0, %188 ]
  %193 = icmp slt i64 %192, %190
  br i1 %193, label %194, label %199

; <label>:194:                                    ; preds = %191
  %195 = tail call fastcc %struct.TString* @LoadStringN(%struct.LoadState* %0) #8
  %196 = load %struct.Upvaldesc*, %struct.Upvaldesc** %80, align 8, !tbaa !36
  %197 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %196, i64 %192, i32 0
  store %struct.TString* %195, %struct.TString** %197, align 8, !tbaa !38
  %198 = add nuw nsw i64 %192, 1
  br label %191

; <label>:199:                                    ; preds = %191
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @checkliteral(%struct.LoadState* nocapture readonly, i8* nocapture readonly, i8*) unnamed_addr #0 {
  %4 = alloca [12 x i8], align 1
  %5 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %5) #7
  %6 = tail call i64 @strlen(i8* %1) #12
  call fastcc void @LoadBlock(%struct.LoadState* %0, i8* nonnull %5, i64 %6) #10
  %7 = call i32 @memcmp(i8* %1, i8* nonnull %5, i64 %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %3
  call fastcc void @error(%struct.LoadState* %0, i8* %2) #11
  unreachable

; <label>:10:                                     ; preds = %3
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %5) #7
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @LoadInt(%struct.LoadState* nocapture readonly) unnamed_addr #0 {
  %2 = tail call fastcc i64 @LoadUnsigned(%struct.LoadState* %0, i64 2147483647) #10
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: minsize noreturn nounwind optsize uwtable
define internal fastcc void @error(%struct.LoadState* nocapture readonly, i8*) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !tbaa !8
  %5 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 2
  %6 = load i8*, i8** %5, align 8, !tbaa !5
  %7 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8* %6, i8* %1) #8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !tbaa !8
  tail call void @luaD_throw(%struct.lua_State* %8, i32 3) #9
  unreachable
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @fchecksize(%struct.LoadState* nocapture readonly, i64, i8*) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0) #10
  %5 = zext i8 %4 to i64
  %6 = icmp eq i64 %5, %1
  br i1 %6, label %11, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %9 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !tbaa !8
  %10 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %2) #8
  tail call fastcc void @error(%struct.LoadState* %0, i8* %10) #11
  unreachable

; <label>:11:                                     ; preds = %3
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i64 @LoadInteger(%struct.LoadState* nocapture readonly) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  call fastcc void @LoadBlock(%struct.LoadState* %0, i8* nonnull %3, i64 8) #10
  %4 = load i64, i64* %2, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  ret i64 %4
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc double @LoadNumber(%struct.LoadState* nocapture readonly) unnamed_addr #0 {
  %2 = alloca double, align 8
  %3 = bitcast double* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  call fastcc void @LoadBlock(%struct.LoadState* %0, i8* nonnull %3, i64 8) #10
  %4 = load double, double* %2, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  ret double %4
}

; Function Attrs: argmemonly minsize nounwind optsize readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @LoadBlock(%struct.LoadState* nocapture readonly, i8*, i64) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 1
  %5 = load %struct.Zio*, %struct.Zio** %4, align 8, !tbaa !9
  %6 = tail call i64 @luaZ_read(%struct.Zio* %5, i8* %1, i64 %2) #8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %3
  tail call fastcc void @error(%struct.LoadState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #11
  unreachable

; <label>:9:                                      ; preds = %3
  ret void
}

; Function Attrs: minsize nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: minsize optsize
declare hidden i64 @luaZ_read(%struct.Zio*, i8*, i64) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i64 @LoadUnsigned(%struct.LoadState* nocapture readonly, i64) unnamed_addr #0 {
  %3 = lshr i64 %1, 7
  br label %4

; <label>:4:                                      ; preds = %9, %2
  %5 = phi i64 [ 0, %2 ], [ %13, %9 ]
  %6 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0) #10
  %7 = icmp ult i64 %5, %3
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %4
  tail call fastcc void @error(%struct.LoadState* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)) #11
  unreachable

; <label>:9:                                      ; preds = %4
  %10 = shl i64 %5, 7
  %11 = and i8 %6, 127
  %12 = zext i8 %11 to i64
  %13 = or i64 %10, %12
  %14 = icmp sgt i8 %6, -1
  br i1 %14, label %4, label %15

; <label>:15:                                     ; preds = %9
  ret i64 %13
}

; Function Attrs: minsize optsize
declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: minsize noreturn optsize
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #6

; Function Attrs: minsize optsize
declare hidden i32 @luaZ_fill(%struct.Zio*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc %struct.TString* @LoadStringN(%struct.LoadState* nocapture readonly) unnamed_addr #0 {
  %2 = alloca [40 x i8], align 16
  %3 = tail call fastcc i64 @LoadUnsigned(%struct.LoadState* %0, i64 -1) #8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %19, label %5

; <label>:5:                                      ; preds = %1
  %6 = add i64 %3, -1
  %7 = icmp ult i64 %6, 41
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #7
  call fastcc void @LoadBlock(%struct.LoadState* %0, i8* nonnull %9, i64 %6) #10
  %10 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !tbaa !8
  %12 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %11, i8* nonnull %9, i64 %6) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #7
  br label %19

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8, !tbaa !8
  %16 = tail call %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %15, i64 %6) #8
  %17 = getelementptr inbounds %struct.TString, %struct.TString* %16, i64 1
  %18 = bitcast %struct.TString* %17 to i8*
  tail call fastcc void @LoadBlock(%struct.LoadState* %0, i8* nonnull %18, i64 %6) #10
  br label %19

; <label>:19:                                     ; preds = %1, %13, %8
  %20 = phi %struct.TString* [ %12, %8 ], [ %16, %13 ], [ null, %1 ]
  ret %struct.TString* %20
}

; Function Attrs: minsize optsize
declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden %struct.TString* @luaS_createlngstrobj(%struct.lua_State*, i64) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) local_unnamed_addr #2

attributes #0 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { minsize noreturn nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { minsize noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { minsize nounwind optsize }
attributes #9 = { minsize noreturn nounwind optsize }
attributes #10 = { minsize optsize }
attributes #11 = { minsize noreturn optsize }
attributes #12 = { minsize nounwind optsize readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 16}
!6 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"any pointer", !3, i64 0}
!8 = !{!6, !7, i64 0}
!9 = !{!6, !7, i64 8}
!10 = !{!11, !7, i64 16}
!11 = !{!"lua_State", !7, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !3, i64 11, !12, i64 12, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !13, i64 96, !7, i64 160, !14, i64 168, !15, i64 176, !15, i64 180, !15, i64 184, !15, i64 188, !15, i64 192}
!12 = !{!"short", !3, i64 0}
!13 = !{!"CallInfo", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !3, i64 32, !3, i64 56, !12, i64 60, !12, i64 62}
!14 = !{!"long", !3, i64 0}
!15 = !{!"int", !3, i64 0}
!16 = !{!17, !3, i64 8}
!17 = !{!"TValue", !3, i64 0, !3, i64 8}
!18 = !{!19, !7, i64 24}
!19 = !{!"LClosure", !7, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !7, i64 16, !7, i64 24, !3, i64 32}
!20 = !{!21, !14, i64 0}
!21 = !{!"Zio", !14, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!22 = !{!21, !7, i64 8}
!23 = !{!24, !7, i64 112}
!24 = !{!"Proto", !7, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !3, i64 11, !3, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120}
!25 = !{!24, !15, i64 44}
!26 = !{!24, !15, i64 48}
!27 = !{!24, !3, i64 10}
!28 = !{!24, !3, i64 11}
!29 = !{!24, !3, i64 12}
!30 = !{!24, !7, i64 64}
!31 = !{!24, !15, i64 24}
!32 = !{!24, !7, i64 56}
!33 = !{!24, !15, i64 20}
!34 = !{!35, !3, i64 8}
!35 = !{!"TString", !7, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !3, i64 11, !15, i64 12, !3, i64 16}
!36 = !{!24, !7, i64 80}
!37 = !{!24, !15, i64 16}
!38 = !{!39, !7, i64 0}
!39 = !{!"Upvaldesc", !7, i64 0, !3, i64 8, !3, i64 9}
!40 = !{!39, !3, i64 8}
!41 = !{!39, !3, i64 9}
!42 = !{!24, !7, i64 72}
!43 = !{!24, !15, i64 32}
!44 = !{!7, !7, i64 0}
!45 = !{!24, !7, i64 88}
!46 = !{!24, !15, i64 28}
!47 = !{!24, !7, i64 96}
!48 = !{!24, !15, i64 40}
!49 = !{!50, !15, i64 0}
!50 = !{!"AbsLineInfo", !15, i64 0, !15, i64 4}
!51 = !{!50, !15, i64 4}
!52 = !{!24, !7, i64 104}
!53 = !{!24, !15, i64 36}
!54 = !{!55, !7, i64 0}
!55 = !{!"LocVar", !7, i64 0, !15, i64 8, !15, i64 12}
!56 = !{!55, !15, i64 8}
!57 = !{!55, !15, i64 12}
!58 = !{!59, !59, i64 0}
!59 = !{!"long long", !3, i64 0}
!60 = !{!61, !61, i64 0}
!61 = !{!"double", !3, i64 0}
