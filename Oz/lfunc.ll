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

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i64) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
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
  %12 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i64 2
  %13 = bitcast %struct.GCObject* %12 to [1 x %struct.UpVal*]*
  %14 = sext i32 %1 to i64
  br label %15

; <label>:15:                                     ; preds = %20, %2
  %16 = phi i64 [ %17, %20 ], [ %14, %2 ]
  %17 = add nsw i64 %16, -1
  %18 = trunc i64 %16 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %13, i64 0, i64 %17
  store %struct.UpVal* null, %struct.UpVal** %21, align 8, !tbaa !10
  br label %15

; <label>:22:                                     ; preds = %15
  ret %struct.LClosure* %7
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaF_initupvals(%struct.lua_State*, %struct.LClosure*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %1, i64 0, i32 3
  %4 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %1, i64 0, i32 2
  %5 = bitcast %struct.LClosure* %1 to %struct.GCObject*
  br label %6

; <label>:6:                                      ; preds = %28, %2
  %7 = phi i64 [ %29, %28 ], [ 0, %2 ]
  %8 = load i8, i8* %3, align 2, !tbaa !9
  %9 = zext i8 %8 to i64
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %30

; <label>:11:                                     ; preds = %6
  %12 = tail call %struct.GCObject* @luaC_newobj(%struct.lua_State* %0, i32 9, i64 40) #6
  %13 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %12, i64 1, i32 1
  %14 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %12, i64 1
  %15 = bitcast %struct.GCObject* %14 to i8**
  store i8* %13, i8** %15, align 8, !tbaa !11
  %16 = getelementptr inbounds i8, i8* %13, i64 8
  store i8 0, i8* %16, align 8, !tbaa !13
  %17 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %1, i64 0, i32 6, i64 %7
  %18 = bitcast %struct.UpVal** %17 to %struct.GCObject**
  store %struct.GCObject* %12, %struct.GCObject** %18, align 8, !tbaa !10
  %19 = load i8, i8* %4, align 1, !tbaa !15
  %20 = and i8 %19, 32
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

; <label>:22:                                     ; preds = %11
  %23 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %12, i64 0, i32 2
  %24 = load i8, i8* %23, align 1, !tbaa !16
  %25 = and i8 %24, 24
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

; <label>:27:                                     ; preds = %22
  tail call void @luaC_barrier_(%struct.lua_State* %0, %struct.GCObject* nonnull %5, %struct.GCObject* nonnull %12) #6
  br label %28

; <label>:28:                                     ; preds = %22, %11, %27
  %29 = add nuw nsw i64 %7, 1
  br label %6

; <label>:30:                                     ; preds = %6
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define hidden %struct.UpVal* @luaF_findupval(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  br label %5

; <label>:5:                                      ; preds = %25, %2
  %6 = phi %struct.UpVal** [ %3, %2 ], [ %26, %25 ]
  %7 = load %struct.UpVal*, %struct.UpVal** %6, align 8, !tbaa !10
  %8 = icmp eq %struct.UpVal* %7, null
  br i1 %8, label %27, label %9

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %7, i64 0, i32 3
  %11 = bitcast %struct.TValue** %10 to %union.StackValue**
  %12 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !11
  %13 = icmp ult %union.StackValue* %12, %1
  br i1 %13, label %27, label %14

; <label>:14:                                     ; preds = %9
  %15 = icmp eq %union.StackValue* %12, %1
  br i1 %15, label %16, label %25

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %7, i64 0, i32 2
  %18 = load i8, i8* %17, align 1, !tbaa !18
  %19 = load %struct.global_State*, %struct.global_State** %4, align 8, !tbaa !19
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i64 0, i32 10
  %21 = load i8, i8* %20, align 4, !tbaa !25
  %22 = xor i8 %21, 24
  %23 = and i8 %22, %18
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %16, %14
  %26 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %7, i64 0, i32 4, i32 0, i32 0
  br label %5

; <label>:27:                                     ; preds = %9, %5
  %28 = tail call fastcc %struct.UpVal* @newupval(%struct.lua_State* %0, i32 9, %union.StackValue* %1, %struct.UpVal** nonnull %6) #7
  br label %29

; <label>:29:                                     ; preds = %16, %27
  %30 = phi %struct.UpVal* [ %28, %27 ], [ %7, %16 ]
  ret %struct.UpVal* %30
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc %struct.UpVal* @newupval(%struct.lua_State*, i32, %union.StackValue*, %struct.UpVal**) unnamed_addr #0 {
  %5 = tail call %struct.GCObject* @luaC_newobj(%struct.lua_State* %0, i32 %1, i64 40) #6
  %6 = bitcast %struct.GCObject* %5 to %struct.UpVal*
  %7 = load %struct.UpVal*, %struct.UpVal** %3, align 8, !tbaa !10
  %8 = getelementptr inbounds %union.StackValue, %union.StackValue* %2, i64 0, i32 0
  %9 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %5, i64 1
  %10 = bitcast %struct.GCObject* %9 to %struct.TValue**
  store %struct.TValue* %8, %struct.TValue** %10, align 8, !tbaa !11
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
  store %struct.GCObject* %5, %struct.GCObject** %20, align 8, !tbaa !10
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

; Function Attrs: minsize nounwind optsize uwtable
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
  %10 = tail call fastcc i32 @prepclosingmethod(%struct.lua_State* %0, %struct.TValue* %8, %struct.TValue* nonnull %9) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %6
  tail call void @callclose(%struct.lua_State* %0, i8* null) #7
  br label %13

; <label>:13:                                     ; preds = %6, %12
  tail call void @luaD_throw(%struct.lua_State* %0, i32 4) #8
  unreachable

; <label>:14:                                     ; preds = %2
  ret void
}

; Function Attrs: minsize optsize
declare hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal void @trynewtbcupval(%struct.lua_State*, i8*) #0 {
  %3 = bitcast i8* %1 to %union.StackValue*
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12
  %5 = tail call fastcc %struct.UpVal* @newupval(%struct.lua_State* %0, i32 25, %union.StackValue* %3, %struct.UpVal** nonnull %4) #7
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaD_seterrorobj(%struct.lua_State*, i32, %union.StackValue*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @prepclosingmethod(%struct.lua_State*, %struct.TValue*, %struct.TValue* nocapture readonly) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %5 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !32
  %6 = tail call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* %1, i32 24) #6
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  %8 = load i8, i8* %7, align 8, !tbaa !13
  %9 = and i8 %8, 15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %32, label %11

; <label>:11:                                     ; preds = %3
  %12 = bitcast %struct.TValue* %6 to i64*
  %13 = bitcast %union.StackValue* %5 to i64*
  %14 = load i64, i64* %12, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i8, i8* %7, align 8, !tbaa !13
  %16 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 0, i32 0, i32 1
  store i8 %15, i8* %16, align 8, !tbaa !13
  %17 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 1, i32 0
  %18 = bitcast %struct.TValue* %1 to i64*
  %19 = bitcast %struct.TValue* %17 to i64*
  %20 = load i64, i64* %18, align 8
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %22 = load i8, i8* %21, align 8, !tbaa !13
  %23 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 1, i32 0, i32 1
  store i8 %22, i8* %23, align 8, !tbaa !13
  %24 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 2, i32 0
  %25 = bitcast %struct.TValue* %2 to i64*
  %26 = bitcast %struct.TValue* %24 to i64*
  %27 = load i64, i64* %25, align 8
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %29 = load i8, i8* %28, align 8, !tbaa !13
  %30 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 2, i32 0, i32 1
  store i8 %29, i8* %30, align 8, !tbaa !13
  %31 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 3
  store %union.StackValue* %31, %union.StackValue** %4, align 8, !tbaa !32
  br label %32

; <label>:32:                                     ; preds = %3, %11
  %33 = phi i32 [ 1, %11 ], [ 0, %3 ]
  ret i32 %33
}

; Function Attrs: minsize nounwind optsize uwtable
define internal void @callclose(%struct.lua_State*, i8* nocapture readnone) #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !32
  %5 = getelementptr inbounds %union.StackValue, %union.StackValue* %4, i64 -3
  tail call void @luaD_callnoyield(%struct.lua_State* %0, %union.StackValue* nonnull %5, i32 0) #6
  ret void
}

; Function Attrs: minsize noreturn optsize
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize norecurse nounwind optsize uwtable
define hidden void @luaF_unlinkupval(%struct.UpVal* nocapture readonly) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %0, i64 0, i32 4, i32 0
  %3 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %2, i64 0, i32 0
  %4 = bitcast %struct.anon.5* %2 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !28
  %6 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %0, i64 0, i32 4, i32 0, i32 1
  %7 = bitcast %struct.UpVal*** %6 to i64**
  %8 = load i64*, i64** %7, align 8, !tbaa !28
  store i64 %5, i64* %8, align 8, !tbaa !10
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

; Function Attrs: minsize nounwind optsize uwtable
define hidden i32 @luaF_close(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %6 = bitcast %union.StackValue** %5 to i64*
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %8 = bitcast %union.StackValue** %5 to i8**
  br label %9

; <label>:9:                                      ; preds = %98, %3
  %10 = phi i32 [ %99, %98 ], [ %2, %3 ]
  %11 = phi %union.StackValue* [ %102, %98 ], [ %1, %3 ]
  %12 = icmp ne i32 %10, -1
  br label %13

; <label>:13:                                     ; preds = %9, %53
  %14 = load %struct.UpVal*, %struct.UpVal** %4, align 8, !tbaa !33
  %15 = icmp eq %struct.UpVal* %14, null
  br i1 %15, label %103, label %16

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %14, i64 0, i32 3
  %18 = bitcast %struct.TValue** %17 to %union.StackValue**
  %19 = load %union.StackValue*, %union.StackValue** %18, align 8, !tbaa !11
  %20 = icmp ult %union.StackValue* %19, %11
  br i1 %20, label %103, label %21

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %14, i64 0, i32 4
  tail call void @luaF_unlinkupval(%struct.UpVal* nonnull %14) #7
  %23 = load %struct.TValue*, %struct.TValue** %17, align 8, !tbaa !11
  %24 = bitcast %struct.TValue* %23 to i64*
  %25 = bitcast %union.anon.4* %22 to i64*
  %26 = load i64, i64* %24, align 8
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %23, i64 0, i32 1
  %28 = load i8, i8* %27, align 8, !tbaa !13
  %29 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %14, i64 0, i32 4, i32 0, i32 1
  %30 = bitcast %struct.UpVal*** %29 to i8*
  store i8 %28, i8* %30, align 8, !tbaa !13
  %31 = bitcast %struct.TValue** %17 to %union.anon.4**
  store %union.anon.4* %22, %union.anon.4** %31, align 8, !tbaa !11
  %32 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %14, i64 0, i32 2
  %33 = load i8, i8* %32, align 1, !tbaa !18
  %34 = and i8 %33, 24
  %35 = icmp eq i8 %34, 0
  %36 = inttoptr i64 %26 to %struct.GCObject*
  br i1 %35, label %37, label %39

; <label>:37:                                     ; preds = %21
  %38 = or i8 %33, 32
  store i8 %38, i8* %32, align 1, !tbaa !18
  br label %39

; <label>:39:                                     ; preds = %21, %37
  %40 = phi i8 [ %33, %21 ], [ %38, %37 ]
  %41 = and i8 %28, 64
  %42 = icmp eq i8 %41, 0
  %43 = and i8 %40, 32
  %44 = icmp eq i8 %43, 0
  %45 = or i1 %42, %44
  br i1 %45, label %53, label %46

; <label>:46:                                     ; preds = %39
  %47 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %36, i64 0, i32 2
  %48 = load i8, i8* %47, align 1, !tbaa !16
  %49 = and i8 %48, 24
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %53, label %51

; <label>:51:                                     ; preds = %46
  %52 = bitcast %struct.UpVal* %14 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* nonnull %0, %struct.GCObject* %52, %struct.GCObject* nonnull %36) #6
  br label %53

; <label>:53:                                     ; preds = %46, %39, %51
  %54 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %14, i64 0, i32 1
  %55 = load i8, i8* %54, align 8, !tbaa !34
  %56 = icmp eq i8 %55, 25
  %57 = and i1 %12, %56
  br i1 %57, label %58, label %13

; <label>:58:                                     ; preds = %53
  %59 = load i64, i64* %6, align 8, !tbaa !35
  %60 = ptrtoint %union.StackValue* %11 to i64
  %61 = sub i64 %60, %59
  %62 = load %struct.TValue*, %struct.TValue** %17, align 8, !tbaa !11
  %63 = icmp eq i32 %10, 0
  br i1 %63, label %64, label %87, !prof !31

; <label>:64:                                     ; preds = %58
  %65 = load %struct.global_State*, %struct.global_State** %7, align 8, !tbaa !19
  %66 = getelementptr inbounds %struct.global_State, %struct.global_State* %65, i64 0, i32 8
  %67 = tail call fastcc i32 @prepclosingmethod(%struct.lua_State* nonnull %0, %struct.TValue* %62, %struct.TValue* nonnull %66) #6
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

; <label>:69:                                     ; preds = %64
  tail call void @callclose(%struct.lua_State* nonnull %0, i8* null) #6
  br label %98

; <label>:70:                                     ; preds = %64
  %71 = getelementptr inbounds %struct.TValue, %struct.TValue* %62, i64 0, i32 1
  %72 = load i8, i8* %71, align 8, !tbaa !13
  %73 = and i8 %72, 15
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %98, label %75

; <label>:75:                                     ; preds = %70
  %76 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %77 = load %struct.CallInfo*, %struct.CallInfo** %76, align 8, !tbaa !36
  %78 = bitcast %struct.CallInfo* %77 to i64*
  %79 = load i64, i64* %78, align 8, !tbaa !37
  %80 = ptrtoint %union.StackValue* %19 to i64
  %81 = sub i64 %80, %79
  %82 = lshr exact i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = tail call i8* @luaG_findlocal(%struct.lua_State* nonnull %0, %struct.CallInfo* %77, i32 %83, %union.StackValue** null) #6
  %85 = icmp eq i8* %84, null
  %86 = select i1 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %84
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %86) #8
  unreachable

; <label>:87:                                     ; preds = %58
  tail call void @luaD_seterrorobj(%struct.lua_State* nonnull %0, i32 %10, %union.StackValue* %19) #6
  %88 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 0, i32 0
  %89 = tail call fastcc i32 @prepclosingmethod(%struct.lua_State* nonnull %0, %struct.TValue* %62, %struct.TValue* %88) #6
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91

; <label>:91:                                     ; preds = %87
  %92 = load i64, i64* %6, align 8, !tbaa !35
  %93 = ptrtoint %union.StackValue* %19 to i64
  %94 = sub i64 %93, %92
  %95 = tail call i32 @luaD_pcall(%struct.lua_State* nonnull %0, void (%struct.lua_State*, i8*)* nonnull @callclose, i8* null, i64 %94, i64 0) #6
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %96, i32 %10, i32 %95
  br label %98

; <label>:98:                                     ; preds = %69, %70, %87, %91
  %99 = phi i32 [ 0, %69 ], [ 0, %70 ], [ %97, %91 ], [ %10, %87 ]
  %100 = load i8*, i8** %8, align 8, !tbaa !35
  %101 = getelementptr inbounds i8, i8* %100, i64 %61
  %102 = bitcast i8* %101 to %union.StackValue*
  br label %9

; <label>:103:                                    ; preds = %16, %13
  ret i32 %10
}

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare hidden void @luaM_free_(%struct.lua_State*, i8*, i64) local_unnamed_addr #1

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
define hidden i8* @luaF_getlocalname(%struct.Proto* nocapture readonly, i32, i32) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 11
  %5 = load i32, i32* %4, align 4, !tbaa !53
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 21
  %7 = sext i32 %5 to i64
  br label %8

; <label>:8:                                      ; preds = %30, %3
  %9 = phi i64 [ %32, %30 ], [ 0, %3 ]
  %10 = phi i32 [ %31, %30 ], [ %1, %3 ]
  %11 = icmp slt i64 %9, %7
  br i1 %11, label %12, label %33

; <label>:12:                                     ; preds = %8
  %13 = load %struct.LocVar*, %struct.LocVar** %6, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %13, i64 %9, i32 1
  %15 = load i32, i32* %14, align 8, !tbaa !59
  %16 = icmp sgt i32 %15, %2
  br i1 %16, label %33, label %17

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %13, i64 %9, i32 2
  %19 = load i32, i32* %18, align 4, !tbaa !61
  %20 = icmp sgt i32 %19, %2
  br i1 %20, label %21, label %30

; <label>:21:                                     ; preds = %17
  %22 = add nsw i32 %10, -1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %21
  %25 = and i64 %9, 4294967295
  %26 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %13, i64 %25, i32 0
  %27 = bitcast %struct.TString** %26 to i8**
  %28 = load i8*, i8** %27, align 8, !tbaa !62
  %29 = getelementptr inbounds i8, i8* %28, i64 24
  br label %33

; <label>:30:                                     ; preds = %17, %21
  %31 = phi i32 [ %22, %21 ], [ %10, %17 ]
  %32 = add nuw nsw i64 %9, 1
  br label %8

; <label>:33:                                     ; preds = %8, %12, %24
  %34 = phi i8* [ %29, %24 ], [ null, %12 ], [ null, %8 ]
  ret i8* %34
}

; Function Attrs: minsize optsize
declare hidden %struct.TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.TValue*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #1

; Function Attrs: minsize optsize
declare hidden i8* @luaG_findlocal(%struct.lua_State*, %struct.CallInfo*, i32, %union.StackValue**) local_unnamed_addr #1

; Function Attrs: minsize noreturn optsize
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

attributes #0 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { minsize noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { minsize norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { minsize norecurse nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { minsize nounwind optsize }
attributes #7 = { minsize optsize }
attributes #8 = { minsize noreturn nounwind optsize }

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
!10 = !{!4, !4, i64 0}
!11 = !{!12, !4, i64 16}
!12 = !{!"UpVal", !4, i64 0, !5, i64 8, !5, i64 9, !4, i64 16, !5, i64 24}
!13 = !{!14, !5, i64 8}
!14 = !{!"TValue", !5, i64 0, !5, i64 8}
!15 = !{!8, !5, i64 9}
!16 = !{!17, !5, i64 9}
!17 = !{!"GCObject", !4, i64 0, !5, i64 8, !5, i64 9}
!18 = !{!12, !5, i64 9}
!19 = !{!20, !4, i64 24}
!20 = !{!"lua_State", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !21, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !22, i64 96, !4, i64 160, !23, i64 168, !24, i64 176, !24, i64 180, !24, i64 184, !24, i64 188, !24, i64 192}
!21 = !{!"short", !5, i64 0}
!22 = !{!"CallInfo", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !5, i64 32, !5, i64 56, !21, i64 60, !21, i64 62}
!23 = !{!"long", !5, i64 0}
!24 = !{!"int", !5, i64 0}
!25 = !{!26, !5, i64 100}
!26 = !{!"global_State", !4, i64 0, !4, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !27, i64 48, !14, i64 64, !14, i64 80, !24, i64 96, !5, i64 100, !5, i64 101, !5, i64 102, !5, i64 103, !5, i64 104, !5, i64 105, !5, i64 106, !5, i64 107, !5, i64 108, !5, i64 109, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168, !4, i64 176, !4, i64 184, !4, i64 192, !4, i64 200, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256, !4, i64 264, !5, i64 272, !5, i64 472, !5, i64 544, !4, i64 1392, !4, i64 1400}
!27 = !{!"stringtable", !4, i64 0, !24, i64 8, !24, i64 12}
!28 = !{!5, !5, i64 0}
!29 = !{!20, !4, i64 80}
!30 = !{!26, !4, i64 240}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{!20, !4, i64 16}
!33 = !{!20, !4, i64 64}
!34 = !{!12, !5, i64 8}
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
