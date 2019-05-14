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

; Function Attrs: nounwind optsize uwtable
define hidden %struct.LClosure* @luaU_undump(%struct.lua_State*, %struct.Zio*, i8*) local_unnamed_addr #0 {
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.LoadState, align 8
  %7 = bitcast %struct.LoadState* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #7
  %8 = load i8, i8* %2, align 1, !tbaa !2
  switch i8 %8, label %11 [
    i8 64, label %9
    i8 61, label %9
    i8 27, label %12
  ]

; <label>:9:                                      ; preds = %3, %3
  %10 = getelementptr inbounds i8, i8* %2, i64 1
  br label %12

; <label>:11:                                     ; preds = %3
  br label %12

; <label>:12:                                     ; preds = %3, %11, %9
  %13 = phi i8* [ %2, %11 ], [ %10, %9 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %3 ]
  %14 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %6, i64 0, i32 2
  store i8* %13, i8** %14, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %6, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %15, align 8, !tbaa !8
  %16 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %6, i64 0, i32 1
  store %struct.Zio* %1, %struct.Zio** %16, align 8, !tbaa !9
  call fastcc void @checkliteral(%struct.LoadState* nonnull %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 1), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0)) #8
  %17 = call fastcc i64 @LoadUnsigned(%struct.LoadState* nonnull %6, i64 2147483647) #8
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %18, 504
  br i1 %19, label %21, label %20

; <label>:20:                                     ; preds = %12
  call fastcc void @error(%struct.LoadState* nonnull %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #9
  unreachable

; <label>:21:                                     ; preds = %12
  %22 = call fastcc zeroext i8 @LoadByte(%struct.LoadState* nonnull %6) #8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

; <label>:24:                                     ; preds = %21
  call fastcc void @error(%struct.LoadState* nonnull %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #9
  unreachable

; <label>:25:                                     ; preds = %21
  call fastcc void @checkliteral(%struct.LoadState* nonnull %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #8
  call fastcc void @fchecksize(%struct.LoadState* nonnull %6, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)) #8
  call fastcc void @fchecksize(%struct.LoadState* nonnull %6, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #8
  call fastcc void @fchecksize(%struct.LoadState* nonnull %6, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #8
  %26 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #7
  call fastcc void @LoadBlock(%struct.LoadState* nonnull %6, i8* nonnull %26, i64 8) #8
  %27 = load i64, i64* %5, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #7
  %28 = icmp eq i64 %27, 22136
  br i1 %28, label %30, label %29

; <label>:29:                                     ; preds = %25
  call fastcc void @error(%struct.LoadState* nonnull %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #9
  unreachable

; <label>:30:                                     ; preds = %25
  %31 = bitcast double* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #7
  call fastcc void @LoadBlock(%struct.LoadState* nonnull %6, i8* nonnull %31, i64 8) #8
  %32 = load double, double* %4, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #7
  %33 = fcmp une double %32, 3.705000e+02
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %30
  call fastcc void @error(%struct.LoadState* nonnull %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0)) #9
  unreachable

; <label>:35:                                     ; preds = %30
  %36 = call fastcc zeroext i8 @LoadByte(%struct.LoadState* nonnull %6) #10
  %37 = zext i8 %36 to i32
  %38 = call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %0, i32 %37) #8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %40 = bitcast %union.StackValue** %39 to %struct.TValue**
  %41 = load %struct.TValue*, %struct.TValue** %40, align 8, !tbaa !14
  %42 = bitcast %struct.TValue* %41 to %struct.LClosure**
  store %struct.LClosure* %38, %struct.LClosure** %42, align 8, !tbaa !2
  %43 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 0, i32 1
  store i8 86, i8* %43, align 8, !tbaa !20
  call void @luaD_inctop(%struct.lua_State* %0) #8
  %44 = call %struct.Proto* @luaF_newproto(%struct.lua_State* %0) #8
  %45 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %38, i64 0, i32 5
  store %struct.Proto* %44, %struct.Proto** %45, align 8, !tbaa !22
  call fastcc void @LoadFunction(%struct.LoadState* nonnull %6, %struct.Proto* %44, %struct.TString* null) #10
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #7
  ret %struct.LClosure* %38
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: optsize
declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc zeroext i8 @LoadByte(%struct.LoadState* nocapture readonly) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 1
  %3 = load %struct.Zio*, %struct.Zio** %2, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.Zio, %struct.Zio* %3, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !24
  %6 = add i64 %5, -1
  store i64 %6, i64* %4, align 8, !tbaa !24
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %14, label %8

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.Zio, %struct.Zio* %3, i64 0, i32 1
  %10 = load i8*, i8** %9, align 8, !tbaa !26
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  store i8* %11, i8** %9, align 8, !tbaa !26
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

; Function Attrs: optsize
declare hidden void @luaD_inctop(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @LoadFunction(%struct.LoadState* readonly, %struct.Proto*, %struct.TString*) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = tail call fastcc %struct.TString* @LoadStringN(%struct.LoadState* %0) #10
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 22
  %8 = icmp eq %struct.TString* %6, null
  %9 = select i1 %8, %struct.TString* %2, %struct.TString* %6
  store %struct.TString* %9, %struct.TString** %7, align 8, !tbaa !27
  %10 = tail call fastcc i64 @LoadUnsigned(%struct.LoadState* %0, i64 2147483647) #8
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 13
  store i32 %11, i32* %12, align 4, !tbaa !29
  %13 = tail call fastcc i64 @LoadUnsigned(%struct.LoadState* %0, i64 2147483647) #8
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 14
  store i32 %14, i32* %15, align 8, !tbaa !30
  %16 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0) #10
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 3
  store i8 %16, i8* %17, align 2, !tbaa !31
  %18 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0) #10
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 4
  store i8 %18, i8* %19, align 1, !tbaa !32
  %20 = tail call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0) #10
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 5
  store i8 %20, i8* %21, align 4, !tbaa !33
  %22 = tail call fastcc i64 @LoadUnsigned(%struct.LoadState* %0, i64 2147483647) #8
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !tbaa !8
  %26 = shl i64 %22, 32
  %27 = ashr exact i64 %26, 30
  %28 = tail call i8* @luaM_malloc_(%struct.lua_State* %25, i64 %27, i32 0) #8
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 16
  %30 = bitcast i32** %29 to i8**
  store i8* %28, i8** %30, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 8
  store i32 %23, i32* %31, align 8, !tbaa !35
  tail call fastcc void @LoadBlock(%struct.LoadState* %0, i8* %28, i64 %27) #8
  %32 = tail call fastcc i64 @LoadUnsigned(%struct.LoadState* %0, i64 2147483647) #8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !tbaa !8
  %35 = shl i64 %32, 32
  %36 = ashr exact i64 %35, 28
  %37 = tail call i8* @luaM_malloc_(%struct.lua_State* %34, i64 %36, i32 0) #8
  %38 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 15
  %39 = bitcast %struct.TValue** %38 to i8**
  store i8* %37, i8** %39, align 8, !tbaa !36
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 7
  store i32 %33, i32* %40, align 4, !tbaa !37
  %41 = icmp sgt i32 %33, 0
  %42 = bitcast i8* %37 to %struct.TValue*
  br i1 %41, label %43, label %87

; <label>:43:                                     ; preds = %3
  %44 = and i64 %32, 4294967295
  br label %45

; <label>:45:                                     ; preds = %45, %43
  %46 = phi i64 [ 0, %43 ], [ %48, %45 ]
  %47 = getelementptr inbounds %struct.TValue, %struct.TValue* %42, i64 %46, i32 1
  store i8 0, i8* %47, align 8, !tbaa !20
  %48 = add nuw nsw i64 %46, 1
  %49 = icmp eq i64 %48, %44
  br i1 %49, label %50, label %45

; <label>:50:                                     ; preds = %45
  %51 = bitcast double* %5 to i8*
  %52 = bitcast double* %5 to i64*
  %53 = bitcast i64* %4 to i8*
  %54 = ashr exact i64 %35, 32
  br label %55

; <label>:55:                                     ; preds = %85, %50
  %56 = phi %struct.TValue* [ %42, %50 ], [ %86, %85 ]
  %57 = phi i64 [ 0, %50 ], [ %83, %85 ]
  %58 = getelementptr inbounds %struct.TValue, %struct.TValue* %56, i64 %57
  %59 = call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0) #8
  switch i8 %59, label %82 [
    i8 0, label %79
    i8 1, label %60
    i8 19, label %64
    i8 35, label %67
    i8 20, label %70
    i8 36, label %70
  ]

; <label>:60:                                     ; preds = %55
  %61 = call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0) #8
  %62 = zext i8 %61 to i32
  %63 = bitcast %struct.TValue* %58 to i32*
  store i32 %62, i32* %63, align 8, !tbaa !2
  br label %79

; <label>:64:                                     ; preds = %55
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #7
  call fastcc void @LoadBlock(%struct.LoadState* %0, i8* nonnull %51, i64 8) #8
  %65 = load i64, i64* %52, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #7
  %66 = bitcast %struct.TValue* %58 to i64*
  store i64 %65, i64* %66, align 8, !tbaa !2
  br label %79

; <label>:67:                                     ; preds = %55
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #7
  call fastcc void @LoadBlock(%struct.LoadState* %0, i8* nonnull %53, i64 8) #8
  %68 = load i64, i64* %4, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #7
  %69 = bitcast %struct.TValue* %58 to i64*
  store i64 %68, i64* %69, align 8, !tbaa !2
  br label %79

; <label>:70:                                     ; preds = %55, %55
  %71 = call fastcc %struct.TString* @LoadStringN(%struct.LoadState* %0) #8
  %72 = icmp eq %struct.TString* %71, null
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %70
  call fastcc void @error(%struct.LoadState* %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0)) #9
  unreachable

; <label>:74:                                     ; preds = %70
  %75 = bitcast %struct.TValue* %58 to %struct.TString**
  store %struct.TString* %71, %struct.TString** %75, align 8, !tbaa !2
  %76 = getelementptr inbounds %struct.TString, %struct.TString* %71, i64 0, i32 1
  %77 = load i8, i8* %76, align 8, !tbaa !38
  %78 = or i8 %77, 64
  br label %79

; <label>:79:                                     ; preds = %55, %60, %64, %67, %74
  %80 = phi i8 [ %78, %74 ], [ 35, %67 ], [ 19, %64 ], [ 1, %60 ], [ %59, %55 ]
  %81 = getelementptr inbounds %struct.TValue, %struct.TValue* %56, i64 %57, i32 1
  store i8 %80, i8* %81, align 8, !tbaa !20
  br label %82

; <label>:82:                                     ; preds = %79, %55
  %83 = add nuw nsw i64 %57, 1
  %84 = icmp slt i64 %83, %54
  br i1 %84, label %85, label %87

; <label>:85:                                     ; preds = %82
  %86 = load %struct.TValue*, %struct.TValue** %38, align 8, !tbaa !36
  br label %55

; <label>:87:                                     ; preds = %82, %3
  %88 = call fastcc i64 @LoadUnsigned(%struct.LoadState* %0, i64 2147483647) #8
  %89 = trunc i64 %88 to i32
  %90 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !tbaa !8
  %91 = shl i64 %88, 32
  %92 = ashr exact i64 %91, 28
  %93 = call i8* @luaM_malloc_(%struct.lua_State* %90, i64 %92, i32 0) #8
  %94 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 18
  %95 = bitcast %struct.Upvaldesc** %94 to i8**
  store i8* %93, i8** %95, align 8, !tbaa !40
  %96 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 6
  store i32 %89, i32* %96, align 8, !tbaa !41
  %97 = icmp sgt i32 %89, 0
  %98 = bitcast i8* %93 to %struct.Upvaldesc*
  br i1 %97, label %99, label %117

; <label>:99:                                     ; preds = %87
  %100 = and i64 %88, 4294967295
  br label %101

; <label>:101:                                    ; preds = %101, %99
  %102 = phi i64 [ 0, %99 ], [ %104, %101 ]
  %103 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %98, i64 %102, i32 0
  store %struct.TString* null, %struct.TString** %103, align 8, !tbaa !42
  %104 = add nuw nsw i64 %102, 1
  %105 = icmp eq i64 %104, %100
  br i1 %105, label %106, label %101

; <label>:106:                                    ; preds = %101
  br label %107

; <label>:107:                                    ; preds = %106, %107
  %108 = phi i64 [ %115, %107 ], [ 0, %106 ]
  %109 = call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0) #8
  %110 = load %struct.Upvaldesc*, %struct.Upvaldesc** %94, align 8, !tbaa !40
  %111 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %110, i64 %108, i32 1
  store i8 %109, i8* %111, align 8, !tbaa !44
  %112 = call fastcc zeroext i8 @LoadByte(%struct.LoadState* %0) #8
  %113 = load %struct.Upvaldesc*, %struct.Upvaldesc** %94, align 8, !tbaa !40
  %114 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %113, i64 %108, i32 2
  store i8 %112, i8* %114, align 1, !tbaa !45
  %115 = add nuw nsw i64 %108, 1
  %116 = icmp eq i64 %115, %100
  br i1 %116, label %117, label %107

; <label>:117:                                    ; preds = %107, %87
  %118 = call fastcc i64 @LoadUnsigned(%struct.LoadState* %0, i64 2147483647) #8
  %119 = trunc i64 %118 to i32
  %120 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !tbaa !8
  %121 = shl i64 %118, 32
  %122 = ashr exact i64 %121, 29
  %123 = call i8* @luaM_malloc_(%struct.lua_State* %120, i64 %122, i32 0) #8
  %124 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 17
  %125 = bitcast %struct.Proto*** %124 to i8**
  store i8* %123, i8** %125, align 8, !tbaa !46
  %126 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 10
  store i32 %119, i32* %126, align 8, !tbaa !47
  %127 = icmp sgt i32 %119, 0
  br i1 %127, label %128, label %154

; <label>:128:                                    ; preds = %117
  %129 = bitcast i8* %123 to %struct.Proto**
  %130 = and i64 %118, 4294967295
  store %struct.Proto* null, %struct.Proto** %129, align 8, !tbaa !48
  %131 = icmp eq i64 %130, 1
  br i1 %131, label %139, label %132

; <label>:132:                                    ; preds = %128
  br label %133

; <label>:133:                                    ; preds = %132, %133
  %134 = phi i64 [ %137, %133 ], [ 1, %132 ]
  %135 = load %struct.Proto**, %struct.Proto*** %124, align 8, !tbaa !46
  %136 = getelementptr inbounds %struct.Proto*, %struct.Proto** %135, i64 %134
  store %struct.Proto* null, %struct.Proto** %136, align 8, !tbaa !48
  %137 = add nuw nsw i64 %134, 1
  %138 = icmp eq i64 %137, %130
  br i1 %138, label %139, label %133

; <label>:139:                                    ; preds = %133, %128
  br i1 %127, label %140, label %154

; <label>:140:                                    ; preds = %139
  %141 = and i64 %118, 4294967295
  br label %142

; <label>:142:                                    ; preds = %142, %140
  %143 = phi i64 [ 0, %140 ], [ %152, %142 ]
  %144 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !tbaa !8
  %145 = call %struct.Proto* @luaF_newproto(%struct.lua_State* %144) #8
  %146 = load %struct.Proto**, %struct.Proto*** %124, align 8, !tbaa !46
  %147 = getelementptr inbounds %struct.Proto*, %struct.Proto** %146, i64 %143
  store %struct.Proto* %145, %struct.Proto** %147, align 8, !tbaa !48
  %148 = load %struct.Proto**, %struct.Proto*** %124, align 8, !tbaa !46
  %149 = getelementptr inbounds %struct.Proto*, %struct.Proto** %148, i64 %143
  %150 = load %struct.Proto*, %struct.Proto** %149, align 8, !tbaa !48
  %151 = load %struct.TString*, %struct.TString** %7, align 8, !tbaa !27
  call fastcc void @LoadFunction(%struct.LoadState* %0, %struct.Proto* %150, %struct.TString* %151) #8
  %152 = add nuw nsw i64 %143, 1
  %153 = icmp eq i64 %152, %141
  br i1 %153, label %154, label %142

; <label>:154:                                    ; preds = %142, %117, %139
  %155 = call fastcc i64 @LoadUnsigned(%struct.LoadState* %0, i64 2147483647) #8
  %156 = trunc i64 %155 to i32
  %157 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !tbaa !8
  %158 = shl i64 %155, 32
  %159 = ashr exact i64 %158, 32
  %160 = call i8* @luaM_malloc_(%struct.lua_State* %157, i64 %159, i32 0) #8
  %161 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 19
  store i8* %160, i8** %161, align 8, !tbaa !49
  %162 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 9
  store i32 %156, i32* %162, align 4, !tbaa !50
  call fastcc void @LoadBlock(%struct.LoadState* %0, i8* %160, i64 %159) #8
  %163 = call fastcc i64 @LoadUnsigned(%struct.LoadState* %0, i64 2147483647) #8
  %164 = trunc i64 %163 to i32
  %165 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !tbaa !8
  %166 = shl i64 %163, 32
  %167 = ashr exact i64 %166, 29
  %168 = call i8* @luaM_malloc_(%struct.lua_State* %165, i64 %167, i32 0) #8
  %169 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 20
  %170 = bitcast %struct.AbsLineInfo** %169 to i8**
  store i8* %168, i8** %170, align 8, !tbaa !51
  %171 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 12
  store i32 %164, i32* %171, align 8, !tbaa !52
  %172 = icmp sgt i32 %164, 0
  %173 = call fastcc i64 @LoadUnsigned(%struct.LoadState* %0, i64 2147483647) #8
  %174 = trunc i64 %173 to i32
  br i1 %172, label %175, label %192

; <label>:175:                                    ; preds = %154
  %176 = and i64 %163, 4294967295
  br label %177

; <label>:177:                                    ; preds = %177, %175
  %178 = phi i64 [ 0, %175 ], [ %186, %177 ]
  %179 = phi i32 [ %174, %175 ], [ %188, %177 ]
  %180 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %169, align 8, !tbaa !51
  %181 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %180, i64 %178, i32 0
  store i32 %179, i32* %181, align 4, !tbaa !53
  %182 = call fastcc i64 @LoadUnsigned(%struct.LoadState* %0, i64 2147483647) #8
  %183 = trunc i64 %182 to i32
  %184 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %169, align 8, !tbaa !51
  %185 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %184, i64 %178, i32 1
  store i32 %183, i32* %185, align 4, !tbaa !55
  %186 = add nuw nsw i64 %178, 1
  %187 = call fastcc i64 @LoadUnsigned(%struct.LoadState* %0, i64 2147483647) #8
  %188 = trunc i64 %187 to i32
  %189 = icmp eq i64 %186, %176
  br i1 %189, label %190, label %177

; <label>:190:                                    ; preds = %177
  %191 = trunc i64 %187 to i32
  br label %192

; <label>:192:                                    ; preds = %190, %154
  %193 = phi i64 [ %173, %154 ], [ %187, %190 ]
  %194 = phi i32 [ %174, %154 ], [ %191, %190 ]
  %195 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !tbaa !8
  %196 = shl i64 %193, 32
  %197 = ashr exact i64 %196, 28
  %198 = call i8* @luaM_malloc_(%struct.lua_State* %195, i64 %197, i32 0) #8
  %199 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 21
  %200 = bitcast %struct.LocVar** %199 to i8**
  store i8* %198, i8** %200, align 8, !tbaa !56
  %201 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 11
  store i32 %194, i32* %201, align 4, !tbaa !57
  %202 = icmp sgt i32 %194, 0
  %203 = bitcast i8* %198 to %struct.LocVar*
  br i1 %202, label %204, label %227

; <label>:204:                                    ; preds = %192
  %205 = zext i32 %194 to i64
  br label %206

; <label>:206:                                    ; preds = %206, %204
  %207 = phi i64 [ 0, %204 ], [ %209, %206 ]
  %208 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %203, i64 %207, i32 0
  store %struct.TString* null, %struct.TString** %208, align 8, !tbaa !58
  %209 = add nuw nsw i64 %207, 1
  %210 = icmp eq i64 %209, %205
  br i1 %210, label %211, label %206

; <label>:211:                                    ; preds = %206
  br label %212

; <label>:212:                                    ; preds = %211, %212
  %213 = phi i64 [ %225, %212 ], [ 0, %211 ]
  %214 = call fastcc %struct.TString* @LoadStringN(%struct.LoadState* %0) #8
  %215 = load %struct.LocVar*, %struct.LocVar** %199, align 8, !tbaa !56
  %216 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %215, i64 %213, i32 0
  store %struct.TString* %214, %struct.TString** %216, align 8, !tbaa !58
  %217 = call fastcc i64 @LoadUnsigned(%struct.LoadState* %0, i64 2147483647) #8
  %218 = trunc i64 %217 to i32
  %219 = load %struct.LocVar*, %struct.LocVar** %199, align 8, !tbaa !56
  %220 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %219, i64 %213, i32 1
  store i32 %218, i32* %220, align 8, !tbaa !60
  %221 = call fastcc i64 @LoadUnsigned(%struct.LoadState* %0, i64 2147483647) #8
  %222 = trunc i64 %221 to i32
  %223 = load %struct.LocVar*, %struct.LocVar** %199, align 8, !tbaa !56
  %224 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %223, i64 %213, i32 2
  store i32 %222, i32* %224, align 4, !tbaa !61
  %225 = add nuw nsw i64 %213, 1
  %226 = icmp eq i64 %225, %205
  br i1 %226, label %227, label %212

; <label>:227:                                    ; preds = %212, %192
  %228 = call fastcc i64 @LoadUnsigned(%struct.LoadState* %0, i64 2147483647) #8
  %229 = trunc i64 %228 to i32
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %240

; <label>:231:                                    ; preds = %227
  %232 = and i64 %228, 4294967295
  br label %233

; <label>:233:                                    ; preds = %233, %231
  %234 = phi i64 [ 0, %231 ], [ %238, %233 ]
  %235 = call fastcc %struct.TString* @LoadStringN(%struct.LoadState* %0) #8
  %236 = load %struct.Upvaldesc*, %struct.Upvaldesc** %94, align 8, !tbaa !40
  %237 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %236, i64 %234, i32 0
  store %struct.TString* %235, %struct.TString** %237, align 8, !tbaa !42
  %238 = add nuw nsw i64 %234, 1
  %239 = icmp eq i64 %238, %232
  br i1 %239, label %240, label %233

; <label>:240:                                    ; preds = %233, %227
  ret void
}

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: noreturn nounwind optsize uwtable
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

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: argmemonly nounwind optsize readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: optsize
declare hidden i64 @luaZ_read(%struct.Zio*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: optsize
declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #6

; Function Attrs: optsize
declare hidden i32 @luaZ_fill(%struct.Zio*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: optsize
declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden %struct.TString* @luaS_createlngstrobj(%struct.lua_State*, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) local_unnamed_addr #2

attributes #0 = { nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { noreturn optsize }
attributes #12 = { nounwind optsize readonly }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"long long", !3, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !3, i64 0}
!14 = !{!15, !7, i64 16}
!15 = !{!"lua_State", !7, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !3, i64 11, !16, i64 12, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !17, i64 96, !7, i64 160, !18, i64 168, !19, i64 176, !19, i64 180, !19, i64 184, !19, i64 188, !19, i64 192}
!16 = !{!"short", !3, i64 0}
!17 = !{!"CallInfo", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !3, i64 32, !3, i64 56, !16, i64 60, !16, i64 62}
!18 = !{!"long", !3, i64 0}
!19 = !{!"int", !3, i64 0}
!20 = !{!21, !3, i64 8}
!21 = !{!"TValue", !3, i64 0, !3, i64 8}
!22 = !{!23, !7, i64 24}
!23 = !{!"LClosure", !7, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !7, i64 16, !7, i64 24, !3, i64 32}
!24 = !{!25, !18, i64 0}
!25 = !{!"Zio", !18, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!26 = !{!25, !7, i64 8}
!27 = !{!28, !7, i64 112}
!28 = !{!"Proto", !7, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !3, i64 11, !3, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !19, i64 40, !19, i64 44, !19, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120}
!29 = !{!28, !19, i64 44}
!30 = !{!28, !19, i64 48}
!31 = !{!28, !3, i64 10}
!32 = !{!28, !3, i64 11}
!33 = !{!28, !3, i64 12}
!34 = !{!28, !7, i64 64}
!35 = !{!28, !19, i64 24}
!36 = !{!28, !7, i64 56}
!37 = !{!28, !19, i64 20}
!38 = !{!39, !3, i64 8}
!39 = !{!"TString", !7, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !3, i64 11, !19, i64 12, !3, i64 16}
!40 = !{!28, !7, i64 80}
!41 = !{!28, !19, i64 16}
!42 = !{!43, !7, i64 0}
!43 = !{!"Upvaldesc", !7, i64 0, !3, i64 8, !3, i64 9}
!44 = !{!43, !3, i64 8}
!45 = !{!43, !3, i64 9}
!46 = !{!28, !7, i64 72}
!47 = !{!28, !19, i64 32}
!48 = !{!7, !7, i64 0}
!49 = !{!28, !7, i64 88}
!50 = !{!28, !19, i64 28}
!51 = !{!28, !7, i64 96}
!52 = !{!28, !19, i64 40}
!53 = !{!54, !19, i64 0}
!54 = !{!"AbsLineInfo", !19, i64 0, !19, i64 4}
!55 = !{!54, !19, i64 4}
!56 = !{!28, !7, i64 104}
!57 = !{!28, !19, i64 36}
!58 = !{!59, !7, i64 0}
!59 = !{!"LocVar", !7, i64 0, !19, i64 8, !19, i64 12}
!60 = !{!59, !19, i64 8}
!61 = !{!59, !19, i64 12}
