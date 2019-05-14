; ModuleID = 'lfunc.c'
source_filename = "lfunc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.TValue] }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, {}*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
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
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"attempt to close non-closable variable '%s'\00", align 1

; Function Attrs: nounwind uwtable
define hidden %struct.CClosure* @luaF_newCclosure(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = shl i32 %1, 4
  %4 = add nsw i32 %3, 32
  %5 = sext i32 %4 to i64
  %6 = tail call %struct.GCObject* @luaC_newobj(%struct.lua_State* %0, i32 54, i64 %5) #6
  %7 = bitcast %struct.GCObject* %6 to %struct.CClosure*
  %8 = trunc i32 %1 to i8
  %9 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %7, i64 0, i32 3
  store i8 %8, i8* %9, align 2, !tbaa !2
  ret %struct.CClosure* %7
}

declare hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = shl i32 %1, 3
  %4 = add nsw i32 %3, 32
  %5 = sext i32 %4 to i64
  %6 = tail call %struct.GCObject* @luaC_newobj(%struct.lua_State* %0, i32 22, i64 %5) #6
  %7 = bitcast %struct.GCObject* %6 to %struct.LClosure*
  %8 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i64 1, i32 1
  %9 = bitcast i8* %8 to %struct.Proto**
  store %struct.Proto* null, %struct.Proto** %9, align 8, !tbaa !7
  %10 = trunc i32 %1 to i8
  %11 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %7, i64 0, i32 3
  store i8 %10, i8* %11, align 2, !tbaa !9
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %23, label %13

; <label>:13:                                     ; preds = %2
  %14 = sext i32 %1 to i64
  %15 = getelementptr %struct.GCObject, %struct.GCObject* %6, i64 1, i32 1
  %16 = add i32 %1, -1
  %17 = zext i32 %16 to i64
  %18 = sub nsw i64 %14, %17
  %19 = shl nsw i64 %18, 3
  %20 = getelementptr i8, i8* %15, i64 %19
  %21 = zext i32 %1 to i64
  %22 = shl nuw nsw i64 %21, 3
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 %22, i32 8, i1 false)
  br label %23

; <label>:23:                                     ; preds = %13, %2
  ret %struct.LClosure* %7
}

; Function Attrs: nounwind uwtable
define hidden void @luaF_initupvals(%struct.lua_State*, %struct.LClosure*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %1, i64 0, i32 3
  %4 = load i8, i8* %3, align 2, !tbaa !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %32, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %1, i64 0, i32 2
  %8 = bitcast %struct.LClosure* %1 to %struct.GCObject*
  br label %9

; <label>:9:                                      ; preds = %6, %27
  %10 = phi i64 [ 0, %6 ], [ %28, %27 ]
  %11 = tail call %struct.GCObject* @luaC_newobj(%struct.lua_State* %0, i32 9, i64 40) #6
  %12 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %11, i64 1, i32 1
  %13 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %11, i64 1
  %14 = bitcast %struct.GCObject* %13 to i8**
  store i8* %12, i8** %14, align 8, !tbaa !10
  %15 = getelementptr inbounds i8, i8* %12, i64 8
  store i8 0, i8* %15, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %1, i64 0, i32 6, i64 %10
  %17 = bitcast %struct.UpVal** %16 to %struct.GCObject**
  store %struct.GCObject* %11, %struct.GCObject** %17, align 8, !tbaa !14
  %18 = load i8, i8* %7, align 1, !tbaa !15
  %19 = and i8 %18, 32
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

; <label>:21:                                     ; preds = %9
  %22 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %11, i64 0, i32 2
  %23 = load i8, i8* %22, align 1, !tbaa !16
  %24 = and i8 %23, 24
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

; <label>:26:                                     ; preds = %21
  tail call void @luaC_barrier_(%struct.lua_State* %0, %struct.GCObject* nonnull %8, %struct.GCObject* nonnull %11) #6
  br label %27

; <label>:27:                                     ; preds = %21, %9, %26
  %28 = add nuw nsw i64 %10, 1
  %29 = load i8, i8* %3, align 2, !tbaa !9
  %30 = zext i8 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %9, label %32

; <label>:32:                                     ; preds = %27, %2
  ret void
}

declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden %struct.UpVal* @luaF_findupval(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12
  %4 = load %struct.UpVal*, %struct.UpVal** %3, align 8, !tbaa !14
  %5 = icmp eq %struct.UpVal* %4, null
  br i1 %5, label %30, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  br label %8

; <label>:8:                                      ; preds = %6, %26
  %9 = phi %struct.UpVal* [ %4, %6 ], [ %28, %26 ]
  %10 = phi %struct.UpVal** [ %3, %6 ], [ %27, %26 ]
  %11 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %9, i64 0, i32 3
  %12 = bitcast %struct.TValue** %11 to %union.StackValue**
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !10
  %14 = icmp ult %union.StackValue* %13, %1
  br i1 %14, label %30, label %15

; <label>:15:                                     ; preds = %8
  %16 = icmp eq %union.StackValue* %13, %1
  br i1 %16, label %17, label %26

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %9, i64 0, i32 2
  %19 = load i8, i8* %18, align 1, !tbaa !18
  %20 = load %struct.global_State*, %struct.global_State** %7, align 8, !tbaa !19
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %20, i64 0, i32 10
  %22 = load i8, i8* %21, align 4, !tbaa !25
  %23 = xor i8 %22, 24
  %24 = and i8 %23, %19
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %33, label %26

; <label>:26:                                     ; preds = %17, %15
  %27 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %9, i64 0, i32 4, i32 0, i32 0
  %28 = load %struct.UpVal*, %struct.UpVal** %27, align 8, !tbaa !14
  %29 = icmp eq %struct.UpVal* %28, null
  br i1 %29, label %30, label %8

; <label>:30:                                     ; preds = %26, %8, %2
  %31 = phi %struct.UpVal** [ %3, %2 ], [ %10, %8 ], [ %27, %26 ]
  %32 = tail call fastcc %struct.UpVal* @newupval(%struct.lua_State* %0, i32 9, %union.StackValue* %1, %struct.UpVal** nonnull %31)
  br label %33

; <label>:33:                                     ; preds = %17, %30
  %34 = phi %struct.UpVal* [ %32, %30 ], [ %9, %17 ]
  ret %struct.UpVal* %34
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.UpVal* @newupval(%struct.lua_State*, i32, %union.StackValue*, %struct.UpVal**) unnamed_addr #0 {
  %5 = tail call %struct.GCObject* @luaC_newobj(%struct.lua_State* %0, i32 %1, i64 40) #6
  %6 = bitcast %struct.GCObject* %5 to %struct.UpVal*
  %7 = load %struct.UpVal*, %struct.UpVal** %3, align 8, !tbaa !14
  %8 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 0, i32 0
  %9 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %5, i64 1
  %10 = bitcast %struct.GCObject* %9 to %struct.TValue**
  store %struct.TValue* %8, %struct.TValue** %10, align 8, !tbaa !10
  %11 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %5, i64 1, i32 1
  %12 = bitcast i8* %11 to %struct.UpVal**
  store %struct.UpVal* %7, %struct.UpVal** %12, align 8, !tbaa !28
  %13 = getelementptr inbounds i8, i8* %11, i64 8
  %14 = bitcast i8* %13 to %struct.UpVal***
  store %struct.UpVal** %3, %struct.UpVal*** %14, align 8, !tbaa !28
  %15 = icmp eq %struct.UpVal* %7, null
  br i1 %15, label %19, label %16

; <label>:16:                                     ; preds = %4
  %17 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %7, i64 0, i32 4, i32 0, i32 1
  %18 = bitcast %struct.UpVal*** %17 to i8**
  store i8* %11, i8** %18, align 8, !tbaa !28
  br label %19

; <label>:19:                                     ; preds = %4, %16
  %20 = bitcast %struct.UpVal** %3 to %struct.GCObject**
  store %struct.GCObject* %5, %struct.GCObject** %20, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14
  %22 = load %struct.lua_State*, %struct.lua_State** %21, align 8, !tbaa !29
  %23 = icmp eq %struct.lua_State* %22, %0
  br i1 %23, label %24, label %31

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %26 = load %struct.global_State*, %struct.global_State** %25, align 8, !tbaa !19
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i64 0, i32 36
  %28 = bitcast %struct.lua_State** %27 to i64*
  %29 = load i64, i64* %28, align 8, !tbaa !30
  %30 = bitcast %struct.lua_State** %21 to i64*
  store i64 %29, i64* %30, align 8, !tbaa !29
  store %struct.lua_State* %0, %struct.lua_State** %27, align 8, !tbaa !30
  br label %31

; <label>:31:                                     ; preds = %19, %24
  ret %struct.UpVal* %6
}

; Function Attrs: nounwind uwtable
define hidden void @luaF_newtbcupval(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #0 {
  %3 = bitcast %union.StackValue* %1 to i8*
  %4 = tail call i32 @luaD_rawrunprotected(%struct.lua_State* %0, void (%struct.lua_State*, i8*)* nonnull @trynewtbcupval, i8* %3) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6, !prof !31

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %union.StackValue, %union.StackValue* %1, i64 1
  tail call void @luaD_seterrorobj(%struct.lua_State* %0, i32 4, %union.StackValue* nonnull %7) #6
  %8 = getelementptr inbounds %union.StackValue, %union.StackValue* %1, i64 0, i32 0
  %9 = getelementptr inbounds %union.StackValue, %union.StackValue* %7, i64 0, i32 0
  %10 = tail call fastcc i32 @prepclosingmethod(%struct.lua_State* %0, %struct.TValue* %8, %struct.TValue* nonnull %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %6
  tail call void @callclose(%struct.lua_State* %0, i8* null)
  br label %13

; <label>:13:                                     ; preds = %6, %12
  tail call void @luaD_throw(%struct.lua_State* %0, i32 4) #7
  unreachable

; <label>:14:                                     ; preds = %2
  ret void
}

declare hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @trynewtbcupval(%struct.lua_State*, i8*) #0 {
  %3 = bitcast i8* %1 to %union.StackValue*
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12
  %5 = tail call fastcc %struct.UpVal* @newupval(%struct.lua_State* %0, i32 25, %union.StackValue* %3, %struct.UpVal** nonnull %4)
  ret void
}

declare hidden void @luaD_seterrorobj(%struct.lua_State*, i32, %union.StackValue*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @prepclosingmethod(%struct.lua_State*, %struct.TValue*, %struct.TValue* nocapture readonly) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %5 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !32
  %6 = tail call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* %1, i32 24) #6
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  %8 = load i8, i8* %7, align 8, !tbaa !12
  %9 = and i8 %8, 15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %32, label %11

; <label>:11:                                     ; preds = %3
  %12 = bitcast %struct.TValue* %6 to i64*
  %13 = bitcast %union.StackValue* %5 to i64*
  %14 = load i64, i64* %12, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i8, i8* %7, align 8, !tbaa !12
  %16 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 0, i32 0, i32 1
  store i8 %15, i8* %16, align 8, !tbaa !12
  %17 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 1, i32 0
  %18 = bitcast %struct.TValue* %1 to i64*
  %19 = bitcast %struct.TValue* %17 to i64*
  %20 = load i64, i64* %18, align 8
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %22 = load i8, i8* %21, align 8, !tbaa !12
  %23 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 1, i32 0, i32 1
  store i8 %22, i8* %23, align 8, !tbaa !12
  %24 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 2, i32 0
  %25 = bitcast %struct.TValue* %2 to i64*
  %26 = bitcast %struct.TValue* %24 to i64*
  %27 = load i64, i64* %25, align 8
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %29 = load i8, i8* %28, align 8, !tbaa !12
  %30 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 2, i32 0, i32 1
  store i8 %29, i8* %30, align 8, !tbaa !12
  %31 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 3
  store %union.StackValue* %31, %union.StackValue** %4, align 8, !tbaa !32
  br label %32

; <label>:32:                                     ; preds = %3, %11
  %33 = phi i32 [ 1, %11 ], [ 0, %3 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal void @callclose(%struct.lua_State*, i8* nocapture readnone) #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !32
  %5 = getelementptr inbounds %union.StackValue, %union.StackValue* %4, i64 -3
  tail call void @luaD_callnoyield(%struct.lua_State* %0, %union.StackValue* nonnull %5, i32 0) #6
  ret void
}

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: norecurse nounwind uwtable
define hidden void @luaF_unlinkupval(%struct.UpVal* nocapture readonly) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %0, i64 0, i32 4, i32 0
  %3 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %2, i64 0, i32 0
  %4 = bitcast %struct.anon.5* %2 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !28
  %6 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %0, i64 0, i32 4, i32 0, i32 1
  %7 = bitcast %struct.UpVal*** %6 to i64**
  %8 = load i64*, i64** %7, align 8, !tbaa !28
  store i64 %5, i64* %8, align 8, !tbaa !14
  %9 = load %struct.UpVal*, %struct.UpVal** %3, align 8, !tbaa !28
  %10 = icmp eq %struct.UpVal* %9, null
  br i1 %10, label %16, label %11

; <label>:11:                                     ; preds = %1
  %12 = bitcast %struct.UpVal*** %6 to i64*
  %13 = load i64, i64* %12, align 8, !tbaa !28
  %14 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %9, i64 0, i32 4, i32 0, i32 1
  %15 = bitcast %struct.UpVal*** %14 to i64*
  store i64 %13, i64* %15, align 8, !tbaa !28
  br label %16

; <label>:16:                                     ; preds = %1, %11
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaF_close(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12
  %5 = load %struct.UpVal*, %struct.UpVal** %4, align 8, !tbaa !33
  %6 = icmp eq %struct.UpVal* %5, null
  br i1 %6, label %72, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %9 = bitcast %union.StackValue** %8 to i64*
  %10 = bitcast %union.StackValue** %8 to i8**
  br label %11

; <label>:11:                                     ; preds = %7, %67
  %12 = phi %struct.UpVal* [ %5, %7 ], [ %70, %67 ]
  %13 = phi %union.StackValue* [ %1, %7 ], [ %69, %67 ]
  %14 = phi i32 [ %2, %7 ], [ %68, %67 ]
  %15 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %12, i64 0, i32 3
  %16 = bitcast %struct.TValue** %15 to %union.StackValue**
  %17 = load %union.StackValue*, %union.StackValue** %16, align 8, !tbaa !10
  %18 = icmp ult %union.StackValue* %17, %13
  br i1 %18, label %72, label %19

; <label>:19:                                     ; preds = %11
  %20 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %12, i64 0, i32 4
  tail call void @luaF_unlinkupval(%struct.UpVal* nonnull %12)
  %21 = load %struct.TValue*, %struct.TValue** %15, align 8, !tbaa !10
  %22 = bitcast %struct.TValue* %21 to i64*
  %23 = bitcast %union.anon.4* %20 to i64*
  %24 = load i64, i64* %22, align 8
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %21, i64 0, i32 1
  %26 = load i8, i8* %25, align 8, !tbaa !12
  %27 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %12, i64 0, i32 4, i32 0, i32 1
  %28 = bitcast %struct.UpVal*** %27 to i8*
  store i8 %26, i8* %28, align 8, !tbaa !12
  %29 = bitcast %struct.TValue** %15 to %union.anon.4**
  store %union.anon.4* %20, %union.anon.4** %29, align 8, !tbaa !10
  %30 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %12, i64 0, i32 2
  %31 = load i8, i8* %30, align 1, !tbaa !18
  %32 = and i8 %31, 24
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %19
  %35 = or i8 %31, 32
  store i8 %35, i8* %30, align 1, !tbaa !18
  br label %36

; <label>:36:                                     ; preds = %19, %34
  %37 = and i8 %26, 64
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %52, label %39

; <label>:39:                                     ; preds = %36
  %40 = load i8, i8* %30, align 1, !tbaa !18
  %41 = and i8 %40, 32
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %52, label %43

; <label>:43:                                     ; preds = %39
  %44 = bitcast %union.anon.4* %20 to %struct.GCObject**
  %45 = load %struct.GCObject*, %struct.GCObject** %44, align 8, !tbaa !28
  %46 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %45, i64 0, i32 2
  %47 = load i8, i8* %46, align 1, !tbaa !16
  %48 = and i8 %47, 24
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50

; <label>:50:                                     ; preds = %43
  %51 = bitcast %struct.UpVal* %12 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* nonnull %0, %struct.GCObject* %51, %struct.GCObject* %45) #6
  br label %52

; <label>:52:                                     ; preds = %43, %39, %36, %50
  %53 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %12, i64 0, i32 1
  %54 = load i8, i8* %53, align 8, !tbaa !34
  %55 = icmp eq i8 %54, 25
  %56 = icmp ne i32 %14, -1
  %57 = and i1 %56, %55
  br i1 %57, label %58, label %67

; <label>:58:                                     ; preds = %52
  %59 = load i64, i64* %9, align 8, !tbaa !35
  %60 = ptrtoint %union.StackValue* %13 to i64
  %61 = sub i64 %60, %59
  %62 = load %struct.TValue*, %struct.TValue** %15, align 8, !tbaa !10
  %63 = tail call fastcc i32 @callclosemth(%struct.lua_State* nonnull %0, %struct.TValue* %62, %union.StackValue* %17, i32 %14)
  %64 = load i8*, i8** %10, align 8, !tbaa !35
  %65 = getelementptr inbounds i8, i8* %64, i64 %61
  %66 = bitcast i8* %65 to %union.StackValue*
  br label %67

; <label>:67:                                     ; preds = %58, %52
  %68 = phi i32 [ %63, %58 ], [ %14, %52 ]
  %69 = phi %union.StackValue* [ %66, %58 ], [ %13, %52 ]
  %70 = load %struct.UpVal*, %struct.UpVal** %4, align 8, !tbaa !33
  %71 = icmp eq %struct.UpVal* %70, null
  br i1 %71, label %72, label %11

; <label>:72:                                     ; preds = %67, %11, %3
  %73 = phi i32 [ %2, %3 ], [ %14, %11 ], [ %68, %67 ]
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @callclosemth(%struct.lua_State*, %struct.TValue*, %union.StackValue*, i32) unnamed_addr #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %6, label %30, !prof !31

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i64 0, i32 8
  %10 = tail call fastcc i32 @prepclosingmethod(%struct.lua_State* %0, %struct.TValue* %1, %struct.TValue* nonnull %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %6
  tail call void @callclose(%struct.lua_State* nonnull %0, i8* null)
  br label %43

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %15 = load i8, i8* %14, align 8, !tbaa !12
  %16 = and i8 %15, 15
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %43, label %18

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %20 = load %struct.CallInfo*, %struct.CallInfo** %19, align 8, !tbaa !36
  %21 = bitcast %struct.CallInfo* %20 to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !37
  %23 = ptrtoint %union.StackValue* %2 to i64
  %24 = sub i64 %23, %22
  %25 = lshr exact i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = tail call i8* @luaG_findlocal(%struct.lua_State* nonnull %0, %struct.CallInfo* %20, i32 %26, %union.StackValue** null) #6
  %28 = icmp eq i8* %27, null
  %29 = select i1 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %27
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %29) #7
  unreachable

; <label>:30:                                     ; preds = %4
  tail call void @luaD_seterrorobj(%struct.lua_State* %0, i32 %3, %union.StackValue* %2) #6
  %31 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 0, i32 0
  %32 = tail call fastcc i32 @prepclosingmethod(%struct.lua_State* %0, %struct.TValue* %1, %struct.TValue* %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

; <label>:34:                                     ; preds = %30
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %36 = bitcast %union.StackValue** %35 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !35
  %38 = ptrtoint %union.StackValue* %2 to i64
  %39 = sub i64 %38, %37
  %40 = tail call i32 @luaD_pcall(%struct.lua_State* %0, void (%struct.lua_State*, i8*)* nonnull @callclose, i8* null, i64 %39, i64 0) #6
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 %3, i32 %40
  br label %43

; <label>:43:                                     ; preds = %30, %34, %12, %13
  %44 = phi i32 [ 0, %12 ], [ 0, %13 ], [ %42, %34 ], [ %3, %30 ]
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) local_unnamed_addr #0 {
  %2 = tail call %struct.GCObject* @luaC_newobj(%struct.lua_State* %0, i32 10, i64 128) #6
  %3 = bitcast %struct.GCObject* %2 to %struct.Proto*
  %4 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 3, i32 1
  %5 = bitcast i8* %4 to %struct.TValue**
  store %struct.TValue* null, %struct.TValue** %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 7
  store i32 0, i32* %6, align 4, !tbaa !40
  %7 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 2
  %8 = bitcast %struct.GCObject* %7 to i32*
  store i32 0, i32* %8, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 4
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 1, i32 1
  %11 = bitcast i8* %10 to i32*
  store i32 0, i32* %11, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 5, i32 1
  %13 = bitcast i8* %12 to i8**
  store i8* null, i8** %13, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 9
  %15 = bitcast %struct.GCObject* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %15, i8 0, i64 16, i32 8, i1 false)
  store i32 0, i32* %14, align 4, !tbaa !44
  %16 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 6
  %17 = bitcast %struct.GCObject* %16 to %struct.AbsLineInfo**
  store %struct.AbsLineInfo* null, %struct.AbsLineInfo** %17, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 2, i32 1
  %19 = bitcast i8* %18 to i32*
  store i32 0, i32* %19, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 5
  %21 = bitcast %struct.GCObject* %20 to %struct.Upvaldesc**
  store %struct.Upvaldesc* null, %struct.Upvaldesc** %21, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 1
  %23 = bitcast %struct.GCObject* %22 to i32*
  store i32 0, i32* %23, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 3
  store i8 0, i8* %24, align 2, !tbaa !49
  %25 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 4
  store i8 0, i8* %25, align 1, !tbaa !50
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 5
  store i8 0, i8* %26, align 4, !tbaa !51
  %27 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 6, i32 1
  %28 = bitcast i8* %27 to %struct.LocVar**
  store %struct.LocVar* null, %struct.LocVar** %28, align 8, !tbaa !52
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 11
  store i32 0, i32* %29, align 4, !tbaa !53
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 13
  store i32 0, i32* %30, align 4, !tbaa !54
  %31 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 3
  %32 = bitcast %struct.GCObject* %31 to i32*
  store i32 0, i32* %32, align 8, !tbaa !55
  %33 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 7
  %34 = bitcast %struct.GCObject* %33 to %struct.TString**
  store %struct.TString* null, %struct.TString** %34, align 8, !tbaa !56
  ret %struct.Proto* %3
}

; Function Attrs: nounwind uwtable
define hidden void @luaF_freeproto(%struct.lua_State*, %struct.Proto*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 16
  %4 = bitcast i32** %3 to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 8
  %7 = load i32, i32* %6, align 8, !tbaa !42
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %5, i64 %9) #6
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 17
  %11 = bitcast %struct.Proto*** %10 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 10
  %14 = load i32, i32* %13, align 8, !tbaa !41
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %12, i64 %16) #6
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 15
  %18 = bitcast %struct.TValue** %17 to i8**
  %19 = load i8*, i8** %18, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 7
  %21 = load i32, i32* %20, align 4, !tbaa !40
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 4
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %19, i64 %23) #6
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 19
  %25 = load i8*, i8** %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 9
  %27 = load i32, i32* %26, align 4, !tbaa !44
  %28 = sext i32 %27 to i64
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %25, i64 %28) #6
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 20
  %30 = bitcast %struct.AbsLineInfo** %29 to i8**
  %31 = load i8*, i8** %30, align 8, !tbaa !45
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 12
  %33 = load i32, i32* %32, align 8, !tbaa !46
  %34 = sext i32 %33 to i64
  %35 = shl nsw i64 %34, 3
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %31, i64 %35) #6
  %36 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 21
  %37 = bitcast %struct.LocVar** %36 to i8**
  %38 = load i8*, i8** %37, align 8, !tbaa !52
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 11
  %40 = load i32, i32* %39, align 4, !tbaa !53
  %41 = sext i32 %40 to i64
  %42 = shl nsw i64 %41, 4
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %38, i64 %42) #6
  %43 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 18
  %44 = bitcast %struct.Upvaldesc** %43 to i8**
  %45 = load i8*, i8** %44, align 8, !tbaa !47
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 6
  %47 = load i32, i32* %46, align 8, !tbaa !48
  %48 = sext i32 %47 to i64
  %49 = shl nsw i64 %48, 4
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %45, i64 %49) #6
  %50 = bitcast %struct.Proto* %1 to i8*
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %50, i64 128) #6
  ret void
}

declare hidden void @luaM_free_(%struct.lua_State*, i8*, i64) local_unnamed_addr #1

; Function Attrs: norecurse nounwind readonly uwtable
define hidden i8* @luaF_getlocalname(%struct.Proto* nocapture readonly, i32, i32) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 11
  %5 = load i32, i32* %4, align 4, !tbaa !53
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %35

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 21
  %9 = load %struct.LocVar*, %struct.LocVar** %8, align 8, !tbaa !52
  br label %10

; <label>:10:                                     ; preds = %7, %29
  %11 = phi i64 [ 0, %7 ], [ %31, %29 ]
  %12 = phi i32 [ %1, %7 ], [ %30, %29 ]
  %13 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %9, i64 %11, i32 1
  %14 = load i32, i32* %13, align 8, !tbaa !59
  %15 = icmp sgt i32 %14, %2
  br i1 %15, label %35, label %16

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %9, i64 %11, i32 2
  %18 = load i32, i32* %17, align 4, !tbaa !61
  %19 = icmp sgt i32 %18, %2
  br i1 %19, label %20, label %29

; <label>:20:                                     ; preds = %16
  %21 = add nsw i32 %12, -1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

; <label>:23:                                     ; preds = %20
  %24 = and i64 %11, 4294967295
  %25 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %9, i64 %24, i32 0
  %26 = bitcast %struct.TString** %25 to i8**
  %27 = load i8*, i8** %26, align 8, !tbaa !62
  %28 = getelementptr inbounds i8, i8* %27, i64 24
  br label %35

; <label>:29:                                     ; preds = %16, %20
  %30 = phi i32 [ %21, %20 ], [ %12, %16 ]
  %31 = add nuw nsw i64 %11, 1
  %32 = load i32, i32* %4, align 4, !tbaa !53
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %10, label %35

; <label>:35:                                     ; preds = %10, %29, %3, %23
  %36 = phi i8* [ %28, %23 ], [ null, %3 ], [ null, %29 ], [ null, %10 ]
  ret i8* %36
}

declare hidden %struct.TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.TValue*, i32) local_unnamed_addr #1

declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #1

declare hidden i8* @luaG_findlocal(%struct.lua_State*, %struct.CallInfo*, i32, %union.StackValue**) local_unnamed_addr #1

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !5, i64 10}
!3 = !{!"CClosure", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !4, i64 16, !4, i64 24, !5, i64 32}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 24}
!8 = !{!"LClosure", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !4, i64 16, !4, i64 24, !5, i64 32}
!9 = !{!8, !5, i64 10}
!10 = !{!11, !4, i64 16}
!11 = !{!"UpVal", !4, i64 0, !5, i64 8, !5, i64 9, !4, i64 16, !5, i64 24}
!12 = !{!13, !5, i64 8}
!13 = !{!"TValue", !5, i64 0, !5, i64 8}
!14 = !{!4, !4, i64 0}
!15 = !{!8, !5, i64 9}
!16 = !{!17, !5, i64 9}
!17 = !{!"GCObject", !4, i64 0, !5, i64 8, !5, i64 9}
!18 = !{!11, !5, i64 9}
!19 = !{!20, !4, i64 24}
!20 = !{!"lua_State", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !21, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !22, i64 96, !4, i64 160, !23, i64 168, !24, i64 176, !24, i64 180, !24, i64 184, !24, i64 188, !24, i64 192}
!21 = !{!"short", !5, i64 0}
!22 = !{!"CallInfo", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !5, i64 32, !5, i64 56, !21, i64 60, !21, i64 62}
!23 = !{!"long", !5, i64 0}
!24 = !{!"int", !5, i64 0}
!25 = !{!26, !5, i64 100}
!26 = !{!"global_State", !4, i64 0, !4, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !27, i64 48, !13, i64 64, !13, i64 80, !24, i64 96, !5, i64 100, !5, i64 101, !5, i64 102, !5, i64 103, !5, i64 104, !5, i64 105, !5, i64 106, !5, i64 107, !5, i64 108, !5, i64 109, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168, !4, i64 176, !4, i64 184, !4, i64 192, !4, i64 200, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256, !4, i64 264, !5, i64 272, !5, i64 472, !5, i64 544, !4, i64 1392, !4, i64 1400}
!27 = !{!"stringtable", !4, i64 0, !24, i64 8, !24, i64 12}
!28 = !{!5, !5, i64 0}
!29 = !{!20, !4, i64 80}
!30 = !{!26, !4, i64 240}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{!20, !4, i64 16}
!33 = !{!20, !4, i64 64}
!34 = !{!11, !5, i64 8}
!35 = !{!20, !4, i64 56}
!36 = !{!20, !4, i64 32}
!37 = !{!22, !4, i64 0}
!38 = !{!39, !4, i64 56}
!39 = !{!"Proto", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !24, i64 36, !24, i64 40, !24, i64 44, !24, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120}
!40 = !{!39, !24, i64 20}
!41 = !{!39, !24, i64 32}
!42 = !{!39, !24, i64 24}
!43 = !{!39, !4, i64 88}
!44 = !{!39, !24, i64 28}
!45 = !{!39, !4, i64 96}
!46 = !{!39, !24, i64 40}
!47 = !{!39, !4, i64 80}
!48 = !{!39, !24, i64 16}
!49 = !{!39, !5, i64 10}
!50 = !{!39, !5, i64 11}
!51 = !{!39, !5, i64 12}
!52 = !{!39, !4, i64 104}
!53 = !{!39, !24, i64 36}
!54 = !{!39, !24, i64 44}
!55 = !{!39, !24, i64 48}
!56 = !{!39, !4, i64 112}
!57 = !{!39, !4, i64 64}
!58 = !{!39, !4, i64 72}
!59 = !{!60, !24, i64 8}
!60 = !{!"LocVar", !4, i64 0, !24, i64 8, !24, i64 12}
!61 = !{!60, !24, i64 12}
!62 = !{!60, !4, i64 0}
