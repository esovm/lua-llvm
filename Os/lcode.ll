; ModuleID = 'lcode.c'
source_filename = "lcode.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.expdesc = type { i32, %union.anon.7, i32, i32 }
%union.anon.7 = type { i64 }
%struct.LexState = type { i32, i32, i32, %struct.Token, %struct.Token, %struct.FuncState*, %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Table*, %struct.Dyndata*, %struct.TString*, %struct.TString* }
%struct.Token = type { i32, %union.SemInfo }
%union.SemInfo = type { double }
%struct.FuncState = type { %struct.Proto*, %struct.FuncState*, %struct.LexState*, %struct.BlockCnt*, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8 }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.BlockCnt = type opaque
%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32 (%struct.lua_State*)*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%union.StackValue = type { %struct.TValue }
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.UpVal*, %struct.UpVal** }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, %union.anon.2, i16, i16 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.2 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.TValue*, %union.Node*, %union.Node*, %struct.Table*, %struct.GCObject* }
%union.Node = type { %struct.NodeKey }
%struct.NodeKey = type { %union.Value, i8, i8, i32, %union.Value }
%struct.Dyndata = type { %struct.anon.4, %struct.Labellist, %struct.Labellist }
%struct.anon.4 = type { %struct.Vardesc*, i32, i32 }
%struct.Vardesc = type { i16 }
%struct.Labellist = type { %struct.Labeldesc*, i32, i32 }
%struct.Labeldesc = type { %struct.TString*, i32, i32, i8, i8 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i64 }
%struct.anon.8 = type { i16, i8 }

@.str = private unnamed_addr constant [48 x i8] c"function or expression needs too many registers\00", align 1
@luaK_prefix.ef = internal constant %struct.expdesc { i32 6, %union.anon.7 zeroinitializer, i32 -1, i32 -1 }, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"constructor too long\00", align 1
@previousinstruction.invalidinstruction = internal unnamed_addr constant i32 -1, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"control structure too long\00", align 1
@luaP_opmodes = external hidden local_unnamed_addr constant [84 x i8], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"opcodes\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"constants\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"lines\00", align 1

; Function Attrs: noreturn nounwind optsize uwtable
define hidden void @luaK_semerror(%struct.LexState*, i8*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  store i32 0, i32* %3, align 8, !tbaa !2
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* %1) #7
  unreachable
}

; Function Attrs: noreturn optsize
declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_nil(%struct.FuncState* nocapture, i32, i32) local_unnamed_addr #2 {
  %4 = add nsw i32 %2, %1
  %5 = add i32 %4, 255
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %7 = load i32, i32* %6, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  %9 = load i32, i32* %8, align 4, !tbaa !12
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %13 = load %struct.Proto*, %struct.Proto** %12, align 8, !tbaa !13
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 16
  %15 = load i32*, i32** %14, align 8, !tbaa !14
  %16 = add nsw i32 %7, -1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  br label %19

; <label>:19:                                     ; preds = %3, %11
  %20 = phi i32* [ %18, %11 ], [ @previousinstruction.invalidinstruction, %3 ]
  %21 = load i32, i32* %20, align 4, !tbaa !16
  %22 = and i32 %21, 127
  %23 = icmp eq i32 %22, 6
  br i1 %23, label %24, label %51

; <label>:24:                                     ; preds = %19
  %25 = lshr i32 %21, 7
  %26 = and i32 %25, 255
  %27 = lshr i32 %21, 16
  %28 = and i32 %27, 255
  %29 = add nuw nsw i32 %26, %28
  %30 = icmp sgt i32 %26, %1
  %31 = add nuw nsw i32 %29, 1
  %32 = icmp slt i32 %31, %1
  %33 = or i1 %30, %32
  br i1 %33, label %34, label %38

; <label>:34:                                     ; preds = %24
  %35 = icmp slt i32 %26, %1
  %36 = icmp sgt i32 %26, %4
  %37 = or i1 %35, %36
  br i1 %37, label %51, label %38

; <label>:38:                                     ; preds = %24, %34
  %39 = icmp slt i32 %26, %1
  %40 = select i1 %39, i32 %26, i32 %1
  %41 = icmp slt i32 %29, %4
  %42 = select i1 %41, i32 %5, i32 %29
  %43 = and i32 %21, -16744321
  %44 = shl i32 %40, 7
  %45 = and i32 %44, 32640
  %46 = or i32 %45, %43
  %47 = sub i32 %42, %40
  %48 = shl i32 %47, 16
  %49 = and i32 %48, 16711680
  %50 = or i32 %46, %49
  store i32 %50, i32* %20, align 4, !tbaa !16
  br label %58

; <label>:51:                                     ; preds = %34, %19
  %52 = shl i32 %1, 7
  %53 = shl i32 %2, 16
  %54 = add i32 %53, -65536
  %55 = or i32 %52, %54
  %56 = or i32 %55, 6
  %57 = tail call fastcc i32 @luaK_code(%struct.FuncState* nonnull %0, i32 %56) #8
  br label %58

; <label>:58:                                     ; preds = %38, %51
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define hidden i32 @luaK_codeABCk(%struct.FuncState* nocapture, i32, i32, i32, i32, i32) local_unnamed_addr #2 {
  %7 = shl i32 %2, 7
  %8 = or i32 %7, %1
  %9 = shl i32 %3, 16
  %10 = or i32 %8, %9
  %11 = shl i32 %4, 24
  %12 = or i32 %10, %11
  %13 = shl i32 %5, 15
  %14 = or i32 %12, %13
  %15 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %14) #9
  ret i32 %15
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_concat(%struct.FuncState* nocapture readonly, i32* nocapture, i32) local_unnamed_addr #2 {
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %27, label %5

; <label>:5:                                      ; preds = %3
  %6 = load i32, i32* %1, align 4, !tbaa !16
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5
  store i32 %2, i32* %1, align 4, !tbaa !16
  br label %27

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %11 = load %struct.Proto*, %struct.Proto** %10, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i64 0, i32 16
  %13 = load i32*, i32** %12, align 8, !tbaa !14
  br label %14

; <label>:14:                                     ; preds = %14, %9
  %15 = phi i32 [ %6, %9 ], [ %24, %14 ]
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !16
  %19 = lshr i32 %18, 7
  %20 = add nsw i32 %19, -16777215
  %21 = icmp eq i32 %20, -1
  %22 = add nsw i32 %15, 1
  %23 = add nsw i32 %22, %20
  %24 = select i1 %21, i32 -1, i32 %23
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %14

; <label>:26:                                     ; preds = %14
  tail call fastcc void @fixjump(%struct.FuncState* nonnull %0, i32 %15, i32 %2) #9
  br label %27

; <label>:27:                                     ; preds = %8, %26, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @fixjump(%struct.FuncState* nocapture readonly, i32, i32) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %5 = load %struct.Proto*, %struct.Proto** %4, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 16
  %7 = load i32*, i32** %6, align 8, !tbaa !14
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = xor i32 %1, -1
  %11 = add i32 %10, %2
  %12 = add i32 %11, 16777215
  %13 = icmp ult i32 %12, 33554432
  br i1 %13, label %17, label %14

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %16 = load %struct.LexState*, %struct.LexState** %15, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable

; <label>:17:                                     ; preds = %3
  %18 = load i32, i32* %9, align 4, !tbaa !16
  %19 = and i32 %18, 127
  %20 = shl i32 %11, 7
  %21 = add i32 %20, 2147483520
  %22 = or i32 %19, %21
  store i32 %22, i32* %9, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden i32 @luaK_jump(%struct.FuncState* nocapture) local_unnamed_addr #2 {
  %2 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 2147483449) #8
  ret i32 %2
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_ret(%struct.FuncState* nocapture, i32, i32) local_unnamed_addr #2 {
  %4 = icmp eq i32 %2, 1
  %5 = select i1 %4, i32 73, i32 71
  %6 = icmp eq i32 %2, 0
  %7 = select i1 %6, i32 72, i32 %5
  %8 = shl i32 %1, 7
  %9 = shl i32 %2, 16
  %10 = add i32 %9, 65536
  %11 = or i32 %10, %8
  %12 = or i32 %11, %7
  %13 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %12) #8
  ret void
}

; Function Attrs: norecurse nounwind optsize uwtable
define hidden i32 @luaK_getlabel(%struct.FuncState* nocapture) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %3, i32* %4, align 4, !tbaa !12
  ret i32 %3
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_patchlist(%struct.FuncState* nocapture readonly, i32, i32) local_unnamed_addr #2 {
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %1, i32 %2, i32 255, i32 %2) #9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @patchlistaux(%struct.FuncState* nocapture readonly, i32, i32, i32, i32) unnamed_addr #2 {
  %6 = icmp eq i32 %1, -1
  br i1 %6, label %29, label %7

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  br label %9

; <label>:9:                                      ; preds = %7, %27
  %10 = phi i32 [ %1, %7 ], [ %22, %27 ]
  %11 = load %struct.Proto*, %struct.Proto** %8, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i64 0, i32 16
  %13 = load i32*, i32** %12, align 8, !tbaa !14
  %14 = sext i32 %10 to i64
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !16
  %17 = lshr i32 %16, 7
  %18 = add nsw i32 %17, -16777215
  %19 = icmp eq i32 %18, -1
  %20 = add nsw i32 %10, 1
  %21 = add nsw i32 %20, %18
  %22 = select i1 %19, i32 -1, i32 %21
  %23 = tail call fastcc i32 @patchtestreg(%struct.FuncState* %0, i32 %10, i32 %3) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

; <label>:25:                                     ; preds = %9
  tail call fastcc void @fixjump(%struct.FuncState* nonnull %0, i32 %10, i32 %2) #9
  br label %27

; <label>:26:                                     ; preds = %9
  tail call fastcc void @fixjump(%struct.FuncState* nonnull %0, i32 %10, i32 %4) #9
  br label %27

; <label>:27:                                     ; preds = %26, %25
  %28 = icmp eq i32 %22, -1
  br i1 %28, label %29, label %9

; <label>:29:                                     ; preds = %27, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_patchtohere(%struct.FuncState* nocapture, i32) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %4 = load i32, i32* %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %4, i32* %5, align 4, !tbaa !12
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %1, i32 %4, i32 255, i32 %4) #8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @luaK_code(%struct.FuncState* nocapture, i32) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %4 = load %struct.Proto*, %struct.Proto** %3, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %6 = load %struct.LexState*, %struct.LexState** %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i64 0, i32 6
  %8 = load %struct.lua_State*, %struct.lua_State** %7, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i64 0, i32 16
  %10 = bitcast i32** %9 to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %13 = load i32, i32* %12, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i64 0, i32 8
  %15 = tail call i8* @luaM_growaux_(%struct.lua_State* %8, i8* %11, i32 %13, i32* nonnull %14, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %16 = bitcast i8* %15 to i32*
  store i8* %15, i8** %10, align 8, !tbaa !14
  %17 = load i32, i32* %12, align 8, !tbaa !9
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %12, align 8, !tbaa !9
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32 %1, i32* %20, align 4, !tbaa !16
  %21 = load %struct.LexState*, %struct.LexState** %5, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %21, i64 0, i32 2
  %23 = load i32, i32* %22, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %4, i32 %23) #9
  %24 = load i32, i32* %12, align 8, !tbaa !9
  %25 = add nsw i32 %24, -1
  ret i32 %25
}

; Function Attrs: nounwind optsize uwtable
define hidden i32 @luaK_codeABx(%struct.FuncState* nocapture, i32, i32, i32) local_unnamed_addr #2 {
  %5 = shl i32 %2, 7
  %6 = or i32 %5, %1
  %7 = shl i32 %3, 15
  %8 = or i32 %6, %7
  %9 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %8) #9
  ret i32 %9
}

; Function Attrs: nounwind optsize uwtable
define hidden i32 @luaK_codeAsBx(%struct.FuncState* nocapture, i32, i32, i32) local_unnamed_addr #2 {
  %5 = shl i32 %2, 7
  %6 = or i32 %5, %1
  %7 = shl i32 %3, 15
  %8 = add i32 %7, 2147450880
  %9 = or i32 %6, %8
  %10 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %9) #9
  ret i32 %10
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_checkstack(%struct.FuncState* nocapture readonly, i32) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %4 = load i8, i8* %3, align 4, !tbaa !20
  %5 = zext i8 %4 to i32
  %6 = add nsw i32 %5, %1
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 5
  %10 = load i8, i8* %9, align 4, !tbaa !21
  %11 = zext i8 %10 to i32
  %12 = icmp sgt i32 %6, %11
  br i1 %12, label %13, label %20

; <label>:13:                                     ; preds = %2
  %14 = icmp sgt i32 %6, 254
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %17 = load %struct.LexState*, %struct.LexState** %16, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #7
  unreachable

; <label>:18:                                     ; preds = %13
  %19 = trunc i32 %6 to i8
  store i8 %19, i8* %9, align 4, !tbaa !21
  br label %20

; <label>:20:                                     ; preds = %18, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_reserveregs(%struct.FuncState* nocapture, i32) local_unnamed_addr #2 {
  tail call void @luaK_checkstack(%struct.FuncState* %0, i32 %1) #9
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %4 = load i8, i8* %3, align 4, !tbaa !20
  %5 = trunc i32 %1 to i8
  %6 = add i8 %4, %5
  store i8 %6, i8* %3, align 4, !tbaa !20
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden i32 @luaK_stringK(%struct.FuncState* nocapture, %struct.TString*) local_unnamed_addr #2 {
  %3 = alloca %struct.TValue, align 8
  %4 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #10
  %5 = bitcast %struct.TValue* %3 to %struct.TString**
  store %struct.TString* %1, %struct.TString** %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !23
  %8 = or i8 %7, 64
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 %8, i8* %9, align 8, !tbaa !25
  %10 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %3, %struct.TValue* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #10
  ret i32 %10
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @addk(%struct.FuncState* nocapture, %struct.TValue*, %struct.TValue*) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %5 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 6
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 9
  %11 = load %struct.Table*, %struct.Table** %10, align 8, !tbaa !27
  %12 = tail call %struct.TValue* @luaH_set(%struct.lua_State* %7, %struct.Table* %11, %struct.TValue* %1) #8
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i64 0, i32 1
  %14 = load i8, i8* %13, align 8, !tbaa !25
  %15 = icmp eq i8 %14, 35
  br i1 %15, label %19, label %16

; <label>:16:                                     ; preds = %3
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7
  %18 = bitcast %struct.TValue* %12 to i64*
  br label %42

; <label>:19:                                     ; preds = %3
  %20 = bitcast %struct.TValue* %12 to i64*
  %21 = load i64, i64* %20, align 8, !tbaa !22
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7
  %24 = load i32, i32* %23, align 4, !tbaa !28
  %25 = icmp sgt i32 %24, %22
  br i1 %25, label %26, label %42

; <label>:26:                                     ; preds = %19
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 15
  %28 = load %struct.TValue*, %struct.TValue** %27, align 8, !tbaa !29
  %29 = shl i64 %21, 32
  %30 = ashr exact i64 %29, 32
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i64 %30, i32 1
  %32 = load i8, i8* %31, align 8, !tbaa !25
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %34 = load i8, i8* %33, align 8, !tbaa !25
  %35 = xor i8 %34, %32
  %36 = and i8 %35, 63
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %42

; <label>:38:                                     ; preds = %26
  %39 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i64 %30
  %40 = tail call i32 @luaV_equalobj(%struct.lua_State* null, %struct.TValue* %39, %struct.TValue* nonnull %2) #8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %91

; <label>:42:                                     ; preds = %16, %38, %19, %26
  %43 = phi i64* [ %18, %16 ], [ %20, %38 ], [ %20, %19 ], [ %20, %26 ]
  %44 = phi i32* [ %17, %16 ], [ %23, %38 ], [ %23, %19 ], [ %23, %26 ]
  %45 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 7
  %46 = load i32, i32* %45, align 4, !tbaa !30
  %47 = load i32, i32* %44, align 4, !tbaa !28
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %43, align 8, !tbaa !22
  store i8 35, i8* %13, align 8, !tbaa !25
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 15
  %50 = bitcast %struct.TValue** %49 to i8**
  %51 = load i8*, i8** %50, align 8, !tbaa !29
  %52 = tail call i8* @luaM_growaux_(%struct.lua_State* %7, i8* %51, i32 %47, i32* nonnull %45, i32 16, i32 33554431, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)) #8
  store i8* %52, i8** %50, align 8, !tbaa !29
  %53 = load i32, i32* %45, align 4, !tbaa !30
  %54 = icmp slt i32 %46, %53
  %55 = bitcast i8* %52 to %struct.TValue*
  br i1 %54, label %56, label %64

; <label>:56:                                     ; preds = %42
  %57 = sext i32 %46 to i64
  %58 = sext i32 %53 to i64
  br label %59

; <label>:59:                                     ; preds = %56, %59
  %60 = phi i64 [ %57, %56 ], [ %61, %59 ]
  %61 = add nsw i64 %60, 1
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %55, i64 %60, i32 1
  store i8 0, i8* %62, align 8, !tbaa !25
  %63 = icmp slt i64 %61, %58
  br i1 %63, label %59, label %64

; <label>:64:                                     ; preds = %59, %42
  %65 = getelementptr inbounds %struct.TValue, %struct.TValue* %55, i64 %48
  %66 = bitcast %struct.TValue* %2 to i64*
  %67 = bitcast %struct.TValue* %65 to i64*
  %68 = load i64, i64* %66, align 8
  store i64 %68, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %70 = load i8, i8* %69, align 8, !tbaa !25
  %71 = getelementptr inbounds %struct.TValue, %struct.TValue* %55, i64 %48, i32 1
  store i8 %70, i8* %71, align 8, !tbaa !25
  %72 = load i32, i32* %44, align 4, !tbaa !28
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %44, align 4, !tbaa !28
  %74 = load i8, i8* %69, align 8, !tbaa !25
  %75 = and i8 %74, 64
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %91, label %77

; <label>:77:                                     ; preds = %64
  %78 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 2
  %79 = load i8, i8* %78, align 1, !tbaa !31
  %80 = and i8 %79, 32
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %91, label %82

; <label>:82:                                     ; preds = %77
  %83 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 0, i32 0
  %84 = load %struct.GCObject*, %struct.GCObject** %83, align 8, !tbaa !22
  %85 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %84, i64 0, i32 2
  %86 = load i8, i8* %85, align 1, !tbaa !32
  %87 = and i8 %86, 24
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %91, label %89

; <label>:89:                                     ; preds = %82
  %90 = bitcast %struct.Proto* %9 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* %7, %struct.GCObject* %90, %struct.GCObject* %84) #8
  br label %91

; <label>:91:                                     ; preds = %89, %64, %77, %82, %38
  %92 = phi i32 [ %22, %38 ], [ %47, %82 ], [ %47, %77 ], [ %47, %64 ], [ %47, %89 ]
  ret i32 %92
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_int(%struct.FuncState* nocapture, i32, i64) local_unnamed_addr #2 {
  %4 = alloca %struct.TValue, align 8
  %5 = alloca %struct.TValue, align 8
  %6 = add i64 %2, 65535
  %7 = icmp ugt i64 %6, 131071
  br i1 %7, label %16, label %8

; <label>:8:                                      ; preds = %3
  %9 = trunc i64 %2 to i32
  %10 = shl i32 %1, 7
  %11 = shl i32 %9, 15
  %12 = add i32 %11, 2147450880
  %13 = or i32 %10, %12
  %14 = or i32 %13, 1
  %15 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %14) #8
  br label %25

; <label>:16:                                     ; preds = %3
  %17 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #10
  %18 = bitcast %struct.TValue* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #10
  %19 = inttoptr i64 %2 to i8*
  %20 = bitcast %struct.TValue* %4 to i8**
  store i8* %19, i8** %20, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 2, i8* %21, align 8, !tbaa !25
  %22 = bitcast %struct.TValue* %5 to i64*
  store i64 %2, i64* %22, align 8, !tbaa !22
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  store i8 35, i8* %23, align 8, !tbaa !25
  %24 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %4, %struct.TValue* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #10
  call fastcc void @luaK_codek(%struct.FuncState* %0, i32 %1, i32 %24) #9
  br label %25

; <label>:25:                                     ; preds = %16, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @luaK_codek(%struct.FuncState* nocapture, i32, i32) unnamed_addr #2 {
  %4 = icmp slt i32 %2, 131072
  %5 = shl i32 %1, 7
  br i1 %4, label %6, label %11

; <label>:6:                                      ; preds = %3
  %7 = shl i32 %2, 15
  %8 = or i32 %5, %7
  %9 = or i32 %8, 3
  %10 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %9) #8
  br label %17

; <label>:11:                                     ; preds = %3
  %12 = or i32 %5, 4
  %13 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %12) #8
  %14 = shl i32 %2, 7
  %15 = or i32 %14, 83
  %16 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %15) #8
  br label %17

; <label>:17:                                     ; preds = %11, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_setreturns(%struct.FuncState* nocapture, %struct.expdesc* nocapture readonly, i32) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %5 = load %struct.Proto*, %struct.Proto** %4, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 16
  %7 = load i32*, i32** %6, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %9 = bitcast %union.anon.7* %8 to i32*
  %10 = load i32, i32* %9, align 8, !tbaa !22
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %7, i64 %11
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %14 = load i32, i32* %13, align 8, !tbaa !34
  switch i32 %14, label %34 [
    i32 16, label %15
    i32 17, label %21
  ]

; <label>:15:                                     ; preds = %3
  %16 = load i32, i32* %12, align 4, !tbaa !16
  %17 = and i32 %16, 16777215
  %18 = shl i32 %2, 24
  %19 = add i32 %18, 16777216
  %20 = or i32 %17, %19
  store i32 %20, i32* %12, align 4, !tbaa !16
  br label %34

; <label>:21:                                     ; preds = %3
  %22 = load i32, i32* %12, align 4, !tbaa !16
  %23 = and i32 %22, 16744575
  %24 = shl i32 %2, 24
  %25 = add i32 %24, 16777216
  %26 = or i32 %23, %25
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %28 = load i8, i8* %27, align 4, !tbaa !20
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 7
  %31 = or i32 %30, %26
  store i32 %31, i32* %12, align 4, !tbaa !16
  tail call void @luaK_checkstack(%struct.FuncState* nonnull %0, i32 1) #8
  %32 = load i8, i8* %27, align 4, !tbaa !20
  %33 = add i8 %32, 1
  store i8 %33, i8* %27, align 4, !tbaa !20
  br label %34

; <label>:34:                                     ; preds = %3, %21, %15
  ret void
}

; Function Attrs: norecurse nounwind optsize uwtable
define hidden void @luaK_setoneret(%struct.FuncState* nocapture readonly, %struct.expdesc* nocapture) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !34
  switch i32 %4, label %31 [
    i32 16, label %5
    i32 17, label %18
  ]

; <label>:5:                                      ; preds = %2
  store i32 7, i32* %3, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 16
  %9 = load i32*, i32** %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %11 = bitcast %union.anon.7* %10 to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !22
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %9, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !16
  %16 = lshr i32 %15, 7
  %17 = and i32 %16, 255
  store i32 %17, i32* %11, align 8, !tbaa !22
  br label %31

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %20 = load %struct.Proto*, %struct.Proto** %19, align 8, !tbaa !13
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i64 0, i32 16
  %22 = load i32*, i32** %21, align 8, !tbaa !14
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %24 = bitcast %union.anon.7* %23 to i32*
  %25 = load i32, i32* %24, align 8, !tbaa !22
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !16
  %29 = and i32 %28, 16777215
  %30 = or i32 %29, 33554432
  store i32 %30, i32* %27, align 4, !tbaa !16
  store i32 15, i32* %3, align 8, !tbaa !34
  br label %31

; <label>:31:                                     ; preds = %2, %18, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_dischargevars(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !34
  switch i32 %4, label %98 [
    i32 8, label %5
    i32 9, label %6
    i32 11, label %13
    i32 12, label %28
    i32 13, label %53
    i32 10, label %78
    i32 17, label %97
    i32 16, label %97
  ]

; <label>:5:                                      ; preds = %2
  store i32 7, i32* %3, align 8, !tbaa !34
  br label %98

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %8 = bitcast %union.anon.7* %7 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !22
  %10 = shl i32 %9, 16
  %11 = or i32 %10, 7
  %12 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %11) #8
  store i32 %12, i32* %8, align 8, !tbaa !22
  store i32 15, i32* %3, align 8, !tbaa !34
  br label %98

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %15 = bitcast %union.anon.7* %14 to %struct.anon.8*
  %16 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %15, i64 0, i32 1
  %17 = load i8, i8* %16, align 2, !tbaa !22
  %18 = zext i8 %17 to i32
  %19 = bitcast %union.anon.7* %14 to i16*
  %20 = load i16, i16* %19, align 8, !tbaa !22
  %21 = zext i16 %20 to i32
  %22 = shl nuw nsw i32 %18, 16
  %23 = shl i32 %21, 24
  %24 = or i32 %22, %23
  %25 = or i32 %24, 9
  %26 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %25) #8
  %27 = bitcast %union.anon.7* %14 to i32*
  store i32 %26, i32* %27, align 8, !tbaa !22
  store i32 15, i32* %3, align 8, !tbaa !34
  br label %98

; <label>:28:                                     ; preds = %2
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %30 = bitcast %union.anon.7* %29 to %struct.anon.8*
  %31 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %30, i64 0, i32 1
  %32 = load i8, i8* %31, align 2, !tbaa !22
  %33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %34 = load i8, i8* %33, align 2, !tbaa !36
  %35 = icmp ugt i8 %34, %32
  br i1 %35, label %41, label %36

; <label>:36:                                     ; preds = %28
  %37 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %38 = load i8, i8* %37, align 4, !tbaa !20
  %39 = add i8 %38, -1
  store i8 %39, i8* %37, align 4, !tbaa !20
  %40 = load i8, i8* %31, align 2, !tbaa !22
  br label %41

; <label>:41:                                     ; preds = %28, %36
  %42 = phi i8 [ %32, %28 ], [ %40, %36 ]
  %43 = zext i8 %42 to i32
  %44 = bitcast %union.anon.7* %29 to i16*
  %45 = load i16, i16* %44, align 8, !tbaa !22
  %46 = zext i16 %45 to i32
  %47 = shl nuw nsw i32 %43, 16
  %48 = shl i32 %46, 24
  %49 = or i32 %47, %48
  %50 = or i32 %49, 11
  %51 = tail call fastcc i32 @luaK_code(%struct.FuncState* nonnull %0, i32 %50) #8
  %52 = bitcast %union.anon.7* %29 to i32*
  store i32 %51, i32* %52, align 8, !tbaa !22
  store i32 15, i32* %3, align 8, !tbaa !34
  br label %98

; <label>:53:                                     ; preds = %2
  %54 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %55 = bitcast %union.anon.7* %54 to %struct.anon.8*
  %56 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %55, i64 0, i32 1
  %57 = load i8, i8* %56, align 2, !tbaa !22
  %58 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %59 = load i8, i8* %58, align 2, !tbaa !36
  %60 = icmp ugt i8 %59, %57
  br i1 %60, label %66, label %61

; <label>:61:                                     ; preds = %53
  %62 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %63 = load i8, i8* %62, align 4, !tbaa !20
  %64 = add i8 %63, -1
  store i8 %64, i8* %62, align 4, !tbaa !20
  %65 = load i8, i8* %56, align 2, !tbaa !22
  br label %66

; <label>:66:                                     ; preds = %53, %61
  %67 = phi i8 [ %57, %53 ], [ %65, %61 ]
  %68 = zext i8 %67 to i32
  %69 = bitcast %union.anon.7* %54 to i16*
  %70 = load i16, i16* %69, align 8, !tbaa !22
  %71 = zext i16 %70 to i32
  %72 = shl nuw nsw i32 %68, 16
  %73 = shl i32 %71, 24
  %74 = or i32 %72, %73
  %75 = or i32 %74, 12
  %76 = tail call fastcc i32 @luaK_code(%struct.FuncState* nonnull %0, i32 %75) #8
  %77 = bitcast %union.anon.7* %54 to i32*
  store i32 %76, i32* %77, align 8, !tbaa !22
  store i32 15, i32* %3, align 8, !tbaa !34
  br label %98

; <label>:78:                                     ; preds = %2
  %79 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %80 = bitcast %union.anon.7* %79 to %struct.anon.8*
  %81 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %80, i64 0, i32 1
  %82 = load i8, i8* %81, align 2, !tbaa !22
  %83 = zext i8 %82 to i32
  %84 = bitcast %union.anon.7* %79 to i16*
  %85 = load i16, i16* %84, align 8, !tbaa !22
  %86 = sext i16 %85 to i32
  tail call fastcc void @freeregs(%struct.FuncState* %0, i32 %83, i32 %86) #9
  %87 = load i8, i8* %81, align 2, !tbaa !22
  %88 = zext i8 %87 to i32
  %89 = load i16, i16* %84, align 8, !tbaa !22
  %90 = zext i16 %89 to i32
  %91 = shl nuw nsw i32 %88, 16
  %92 = shl i32 %90, 24
  %93 = or i32 %91, %92
  %94 = or i32 %93, 10
  %95 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %94) #8
  %96 = bitcast %union.anon.7* %79 to i32*
  store i32 %95, i32* %96, align 8, !tbaa !22
  store i32 15, i32* %3, align 8, !tbaa !34
  br label %98

; <label>:97:                                     ; preds = %2, %2
  tail call void @luaK_setoneret(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #9
  br label %98

; <label>:98:                                     ; preds = %2, %97, %78, %66, %41, %13, %6, %5
  ret void
}

; Function Attrs: norecurse nounwind optsize uwtable
define internal fastcc void @freeregs(%struct.FuncState* nocapture, i32, i32) unnamed_addr #4 {
  %4 = icmp sgt i32 %1, %2
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %6 = load i8, i8* %5, align 2, !tbaa !36
  %7 = zext i8 %6 to i32
  br i1 %4, label %8, label %20

; <label>:8:                                      ; preds = %3
  %9 = icmp sgt i32 %7, %1
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %8
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %12 = load i8, i8* %11, align 4, !tbaa !20
  %13 = add i8 %12, -1
  store i8 %13, i8* %11, align 4, !tbaa !20
  br label %14

; <label>:14:                                     ; preds = %8, %10
  %15 = icmp sgt i32 %7, %2
  br i1 %15, label %32, label %16

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %18 = load i8, i8* %17, align 4, !tbaa !20
  %19 = add i8 %18, -1
  store i8 %19, i8* %17, align 4, !tbaa !20
  br label %32

; <label>:20:                                     ; preds = %3
  %21 = icmp sgt i32 %7, %2
  br i1 %21, label %26, label %22

; <label>:22:                                     ; preds = %20
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %24 = load i8, i8* %23, align 4, !tbaa !20
  %25 = add i8 %24, -1
  store i8 %25, i8* %23, align 4, !tbaa !20
  br label %26

; <label>:26:                                     ; preds = %20, %22
  %27 = icmp sgt i32 %7, %1
  br i1 %27, label %32, label %28

; <label>:28:                                     ; preds = %26
  %29 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %30 = load i8, i8* %29, align 4, !tbaa !20
  %31 = add i8 %30, -1
  store i8 %31, i8* %29, align 4, !tbaa !20
  br label %32

; <label>:32:                                     ; preds = %28, %26, %16, %14
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_exp2nextreg(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #9
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %6, label %18

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %8 = bitcast %union.anon.7* %7 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %11 = load i8, i8* %10, align 2, !tbaa !36
  %12 = zext i8 %11 to i32
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %18, label %14

; <label>:14:                                     ; preds = %6
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %16 = load i8, i8* %15, align 4, !tbaa !20
  %17 = add i8 %16, -1
  store i8 %17, i8* %15, align 4, !tbaa !20
  br label %18

; <label>:18:                                     ; preds = %2, %6, %14
  tail call void @luaK_checkstack(%struct.FuncState* %0, i32 1) #8
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %20 = load i8, i8* %19, align 4, !tbaa !20
  %21 = add i8 %20, 1
  store i8 %21, i8* %19, align 4, !tbaa !20
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 %22, -1
  tail call fastcc void @exp2reg(%struct.FuncState* %0, %struct.expdesc* nonnull %1, i32 %23) #9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @exp2reg(%struct.FuncState* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  tail call fastcc void @discharge2reg(%struct.FuncState* %0, %struct.expdesc* %1, i32 %2) #9
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 14
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  br i1 %6, label %8, label %12

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %10 = bitcast %union.anon.7* %9 to i32*
  %11 = load i32, i32* %10, align 8, !tbaa !22
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %7, i32 %11) #9
  br label %12

; <label>:12:                                     ; preds = %3, %8
  %13 = load i32, i32* %7, align 8, !tbaa !37
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %15 = load i32, i32* %14, align 4, !tbaa !38
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %52, label %17

; <label>:17:                                     ; preds = %12
  %18 = tail call fastcc i32 @need_value(%struct.FuncState* %0, i32 %13) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

; <label>:20:                                     ; preds = %17
  %21 = tail call fastcc i32 @need_value(%struct.FuncState* %0, i32 %15) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %25 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  br label %44

; <label>:26:                                     ; preds = %20, %17
  %27 = load i32, i32* %4, align 8, !tbaa !34
  %28 = icmp eq i32 %27, 14
  br i1 %28, label %31, label %29

; <label>:29:                                     ; preds = %26
  %30 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 2147483449) #8
  br label %31

; <label>:31:                                     ; preds = %26, %29
  %32 = phi i32 [ %30, %29 ], [ -1, %26 ]
  %33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %34 = load i32, i32* %33, align 8, !tbaa !9
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %34, i32* %35, align 4, !tbaa !12
  %36 = shl i32 %2, 7
  %37 = or i32 %36, 16777221
  %38 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %37) #8
  %39 = load i32, i32* %33, align 8, !tbaa !9
  store i32 %39, i32* %35, align 4, !tbaa !12
  %40 = or i32 %36, 65541
  %41 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %40) #8
  %42 = load i32, i32* %33, align 8, !tbaa !9
  store i32 %42, i32* %35, align 4, !tbaa !12
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %32, i32 %42, i32 255, i32 %42) #8
  %43 = load i32, i32* %14, align 4, !tbaa !38
  br label %44

; <label>:44:                                     ; preds = %23, %31
  %45 = phi i32* [ %25, %23 ], [ %35, %31 ]
  %46 = phi i32* [ %24, %23 ], [ %33, %31 ]
  %47 = phi i32 [ %15, %23 ], [ %43, %31 ]
  %48 = phi i32 [ -1, %23 ], [ %41, %31 ]
  %49 = phi i32 [ -1, %23 ], [ %38, %31 ]
  %50 = load i32, i32* %46, align 8, !tbaa !9
  store i32 %50, i32* %45, align 4, !tbaa !12
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %47, i32 %50, i32 %2, i32 %49) #9
  %51 = load i32, i32* %7, align 8, !tbaa !37
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %51, i32 %50, i32 %2, i32 %48) #9
  br label %52

; <label>:52:                                     ; preds = %12, %44
  store i32 -1, i32* %7, align 8, !tbaa !37
  store i32 -1, i32* %14, align 4, !tbaa !38
  %53 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %54 = bitcast %union.anon.7* %53 to i32*
  store i32 %2, i32* %54, align 8, !tbaa !22
  store i32 7, i32* %4, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden i32 @luaK_exp2anyreg(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #9
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %9, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %8 = bitcast %union.anon.7* %7 to i32*
  br label %24

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %11 = load i32, i32* %10, align 8, !tbaa !37
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %13 = load i32, i32* %12, align 4, !tbaa !38
  %14 = icmp eq i32 %11, %13
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %16 = bitcast %union.anon.7* %15 to i32*
  %17 = load i32, i32* %16, align 8, !tbaa !22
  br i1 %14, label %29, label %18

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %20 = load i8, i8* %19, align 2, !tbaa !36
  %21 = zext i8 %20 to i32
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %24, label %23

; <label>:23:                                     ; preds = %18
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %17) #9
  br label %26

; <label>:24:                                     ; preds = %6, %18
  %25 = phi i32* [ %8, %6 ], [ %16, %18 ]
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #9
  br label %26

; <label>:26:                                     ; preds = %23, %24
  %27 = phi i32* [ %25, %24 ], [ %16, %23 ]
  %28 = load i32, i32* %27, align 8, !tbaa !22
  br label %29

; <label>:29:                                     ; preds = %26, %9
  %30 = phi i32 [ %17, %9 ], [ %28, %26 ]
  ret i32 %30
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_exp2anyregup(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 9
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %8 = load i32, i32* %7, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %10 = load i32, i32* %9, align 4, !tbaa !38
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %6, %2
  %13 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #9
  br label %14

; <label>:14:                                     ; preds = %6, %12
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_exp2val(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %4 = load i32, i32* %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %6 = load i32, i32* %5, align 4, !tbaa !38
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #9
  br label %11

; <label>:10:                                     ; preds = %2
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #9
  br label %11

; <label>:11:                                     ; preds = %10, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden i32 @luaK_exp2RK(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %3 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* %1) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %1) #9
  br label %7

; <label>:7:                                      ; preds = %2, %5
  %8 = phi i32 [ 0, %5 ], [ 1, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @luaK_exp2K(%struct.FuncState* nocapture, %struct.expdesc* nocapture) unnamed_addr #2 {
  %3 = alloca %struct.TValue, align 8
  %4 = alloca %struct.TValue, align 8
  %5 = alloca %struct.TValue, align 8
  %6 = alloca %struct.TValue, align 8
  %7 = alloca %struct.TValue, align 8
  %8 = alloca %struct.TValue, align 8
  %9 = alloca %struct.TValue, align 8
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %11 = load i32, i32* %10, align 8, !tbaa !37
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %13 = load i32, i32* %12, align 4, !tbaa !38
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %68

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %17 = load i32, i32* %16, align 8, !tbaa !34
  switch i32 %17, label %68 [
    i32 2, label %18
    i32 3, label %23
    i32 1, label %28
    i32 6, label %40
    i32 5, label %51
    i32 4, label %58
  ]

; <label>:18:                                     ; preds = %15
  %19 = bitcast %struct.TValue* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19) #10
  %20 = bitcast %struct.TValue* %9 to i32*
  store i32 1, i32* %20, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i64 0, i32 1
  store i8 1, i8* %21, align 8, !tbaa !25
  %22 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %9, %struct.TValue* nonnull %9) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19) #10
  br label %62

; <label>:23:                                     ; preds = %15
  %24 = bitcast %struct.TValue* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #10
  %25 = bitcast %struct.TValue* %8 to i32*
  store i32 0, i32* %25, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i64 0, i32 1
  store i8 1, i8* %26, align 8, !tbaa !25
  %27 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %8, %struct.TValue* nonnull %8) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %24) #10
  br label %62

; <label>:28:                                     ; preds = %15
  %29 = bitcast %struct.TValue* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %29) #10
  %30 = bitcast %struct.TValue* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %30) #10
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  store i8 0, i8* %31, align 8, !tbaa !25
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %33 = load %struct.LexState*, %struct.LexState** %32, align 8, !tbaa !17
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %33, i64 0, i32 9
  %35 = bitcast %struct.Table** %34 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !27
  %37 = bitcast %struct.TValue* %6 to i64*
  store i64 %36, i64* %37, align 8, !tbaa !22
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  store i8 69, i8* %38, align 8, !tbaa !25
  %39 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %6, %struct.TValue* nonnull %7) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %29) #10
  br label %62

; <label>:40:                                     ; preds = %15
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  %42 = load i64, i64* %41, align 8, !tbaa !22
  %43 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %43) #10
  %44 = bitcast %struct.TValue* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %44) #10
  %45 = inttoptr i64 %42 to i8*
  %46 = bitcast %struct.TValue* %4 to i8**
  store i8* %45, i8** %46, align 8, !tbaa !22
  %47 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 2, i8* %47, align 8, !tbaa !25
  %48 = bitcast %struct.TValue* %5 to i64*
  store i64 %42, i64* %48, align 8, !tbaa !22
  %49 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  store i8 35, i8* %49, align 8, !tbaa !25
  %50 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %4, %struct.TValue* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %44) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %43) #10
  br label %62

; <label>:51:                                     ; preds = %15
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  %53 = load i64, i64* %52, align 8, !tbaa !22
  %54 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %54) #10
  %55 = bitcast %struct.TValue* %3 to i64*
  store i64 %53, i64* %55, align 8, !tbaa !22
  %56 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 19, i8* %56, align 8, !tbaa !25
  %57 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %3, %struct.TValue* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %54) #10
  br label %62

; <label>:58:                                     ; preds = %15
  %59 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %60 = bitcast %union.anon.7* %59 to i32*
  %61 = load i32, i32* %60, align 8, !tbaa !22
  br label %62

; <label>:62:                                     ; preds = %58, %51, %40, %28, %23, %18
  %63 = phi i32 [ %61, %58 ], [ %57, %51 ], [ %50, %40 ], [ %39, %28 ], [ %27, %23 ], [ %22, %18 ]
  %64 = icmp slt i32 %63, 256
  br i1 %64, label %65, label %68

; <label>:65:                                     ; preds = %62
  store i32 4, i32* %16, align 8, !tbaa !34
  %66 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %67 = bitcast %union.anon.7* %66 to i32*
  store i32 %63, i32* %67, align 8, !tbaa !22
  br label %68

; <label>:68:                                     ; preds = %15, %65, %2, %62
  %69 = phi i32 [ 0, %62 ], [ 0, %2 ], [ 0, %15 ], [ 1, %65 ]
  ret i32 %69
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_storevar(%struct.FuncState* nocapture, %struct.expdesc* nocapture readonly, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !34
  switch i32 %5, label %124 [
    i32 8, label %6
    i32 9, label %26
    i32 11, label %36
    i32 12, label %58
    i32 13, label %80
    i32 10, label %102
  ]

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 7
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %12 = bitcast %union.anon.7* %11 to i32*
  %13 = load i32, i32* %12, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %15 = load i8, i8* %14, align 2, !tbaa !36
  %16 = zext i8 %15 to i32
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %22, label %18

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %20 = load i8, i8* %19, align 4, !tbaa !20
  %21 = add i8 %20, -1
  store i8 %21, i8* %19, align 4, !tbaa !20
  br label %22

; <label>:22:                                     ; preds = %6, %10, %18
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %24 = bitcast %union.anon.7* %23 to i32*
  %25 = load i32, i32* %24, align 8, !tbaa !22
  tail call fastcc void @exp2reg(%struct.FuncState* %0, %struct.expdesc* nonnull %2, i32 %25) #9
  br label %140

; <label>:26:                                     ; preds = %3
  %27 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #9
  %28 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %29 = bitcast %union.anon.7* %28 to i32*
  %30 = load i32, i32* %29, align 8, !tbaa !22
  %31 = shl i32 %27, 7
  %32 = shl i32 %30, 16
  %33 = or i32 %31, %32
  %34 = or i32 %33, 8
  %35 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %34) #8
  br label %124

; <label>:36:                                     ; preds = %3
  %37 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %38 = bitcast %union.anon.7* %37 to %struct.anon.8*
  %39 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %38, i64 0, i32 1
  %40 = load i8, i8* %39, align 2, !tbaa !22
  %41 = zext i8 %40 to i32
  %42 = bitcast %union.anon.7* %37 to i16*
  %43 = load i16, i16* %42, align 8, !tbaa !22
  %44 = zext i16 %43 to i32
  %45 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %46 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %47 = bitcast %union.anon.7* %46 to i32*
  %48 = load i32, i32* %47, align 8, !tbaa !22
  %49 = shl nuw nsw i32 %41, 7
  %50 = shl nuw i32 %44, 16
  %51 = shl i32 %48, 24
  %52 = shl i32 %45, 15
  %53 = or i32 %49, %50
  %54 = or i32 %53, %52
  %55 = or i32 %54, %51
  %56 = or i32 %55, 13
  %57 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %56) #8
  br label %124

; <label>:58:                                     ; preds = %3
  %59 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %60 = bitcast %union.anon.7* %59 to %struct.anon.8*
  %61 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %60, i64 0, i32 1
  %62 = load i8, i8* %61, align 2, !tbaa !22
  %63 = zext i8 %62 to i32
  %64 = bitcast %union.anon.7* %59 to i16*
  %65 = load i16, i16* %64, align 8, !tbaa !22
  %66 = zext i16 %65 to i32
  %67 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %68 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %69 = bitcast %union.anon.7* %68 to i32*
  %70 = load i32, i32* %69, align 8, !tbaa !22
  %71 = shl nuw nsw i32 %63, 7
  %72 = shl nuw i32 %66, 16
  %73 = shl i32 %70, 24
  %74 = shl i32 %67, 15
  %75 = or i32 %71, %72
  %76 = or i32 %75, %74
  %77 = or i32 %76, %73
  %78 = or i32 %77, 15
  %79 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %78) #8
  br label %124

; <label>:80:                                     ; preds = %3
  %81 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %82 = bitcast %union.anon.7* %81 to %struct.anon.8*
  %83 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %82, i64 0, i32 1
  %84 = load i8, i8* %83, align 2, !tbaa !22
  %85 = zext i8 %84 to i32
  %86 = bitcast %union.anon.7* %81 to i16*
  %87 = load i16, i16* %86, align 8, !tbaa !22
  %88 = zext i16 %87 to i32
  %89 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %90 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %91 = bitcast %union.anon.7* %90 to i32*
  %92 = load i32, i32* %91, align 8, !tbaa !22
  %93 = shl nuw nsw i32 %85, 7
  %94 = shl nuw i32 %88, 16
  %95 = shl i32 %92, 24
  %96 = shl i32 %89, 15
  %97 = or i32 %93, %94
  %98 = or i32 %97, %96
  %99 = or i32 %98, %95
  %100 = or i32 %99, 16
  %101 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %100) #8
  br label %124

; <label>:102:                                    ; preds = %3
  %103 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %104 = bitcast %union.anon.7* %103 to %struct.anon.8*
  %105 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %104, i64 0, i32 1
  %106 = load i8, i8* %105, align 2, !tbaa !22
  %107 = zext i8 %106 to i32
  %108 = bitcast %union.anon.7* %103 to i16*
  %109 = load i16, i16* %108, align 8, !tbaa !22
  %110 = zext i16 %109 to i32
  %111 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %112 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %113 = bitcast %union.anon.7* %112 to i32*
  %114 = load i32, i32* %113, align 8, !tbaa !22
  %115 = shl nuw nsw i32 %107, 7
  %116 = shl nuw i32 %110, 16
  %117 = shl i32 %114, 24
  %118 = shl i32 %111, 15
  %119 = or i32 %115, %116
  %120 = or i32 %119, %118
  %121 = or i32 %120, %117
  %122 = or i32 %121, 14
  %123 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %122) #8
  br label %124

; <label>:124:                                    ; preds = %3, %102, %80, %58, %36, %26
  %125 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %126 = load i32, i32* %125, align 8, !tbaa !34
  %127 = icmp eq i32 %126, 7
  br i1 %127, label %128, label %140

; <label>:128:                                    ; preds = %124
  %129 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %130 = bitcast %union.anon.7* %129 to i32*
  %131 = load i32, i32* %130, align 8, !tbaa !22
  %132 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %133 = load i8, i8* %132, align 2, !tbaa !36
  %134 = zext i8 %133 to i32
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %140, label %136

; <label>:136:                                    ; preds = %128
  %137 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %138 = load i8, i8* %137, align 4, !tbaa !20
  %139 = add i8 %138, -1
  store i8 %139, i8* %137, align 4, !tbaa !20
  br label %140

; <label>:140:                                    ; preds = %136, %128, %124, %22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_self(%struct.FuncState* nocapture, %struct.expdesc* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %4 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %1) #9
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %6 = bitcast %union.anon.7* %5 to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 7
  br i1 %10, label %11, label %20

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %13 = load i8, i8* %12, align 2, !tbaa !36
  %14 = zext i8 %13 to i32
  %15 = icmp slt i32 %7, %14
  br i1 %15, label %20, label %16

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %18 = load i8, i8* %17, align 4, !tbaa !20
  %19 = add i8 %18, -1
  store i8 %19, i8* %17, align 4, !tbaa !20
  br label %20

; <label>:20:                                     ; preds = %3, %11, %16
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %22 = load i8, i8* %21, align 4, !tbaa !20
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %6, align 8, !tbaa !22
  store i32 7, i32* %8, align 8, !tbaa !34
  tail call void @luaK_checkstack(%struct.FuncState* %0, i32 2) #8
  %24 = load i8, i8* %21, align 4, !tbaa !20
  %25 = add i8 %24, 2
  store i8 %25, i8* %21, align 4, !tbaa !20
  %26 = load i32, i32* %6, align 8, !tbaa !22
  %27 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %28 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %29 = bitcast %union.anon.7* %28 to i32*
  %30 = load i32, i32* %29, align 8, !tbaa !22
  %31 = shl i32 %26, 7
  %32 = shl i32 %7, 16
  %33 = shl i32 %30, 24
  %34 = shl i32 %27, 15
  %35 = or i32 %32, %31
  %36 = or i32 %35, %34
  %37 = or i32 %36, %33
  %38 = or i32 %37, 18
  %39 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %38) #8
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %41 = load i32, i32* %40, align 8, !tbaa !34
  %42 = icmp eq i32 %41, 7
  br i1 %42, label %43, label %52

; <label>:43:                                     ; preds = %20
  %44 = load i32, i32* %29, align 8, !tbaa !22
  %45 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %46 = load i8, i8* %45, align 2, !tbaa !36
  %47 = zext i8 %46 to i32
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %52, label %49

; <label>:49:                                     ; preds = %43
  %50 = load i8, i8* %21, align 4, !tbaa !20
  %51 = add i8 %50, -1
  store i8 %51, i8* %21, align 4, !tbaa !20
  br label %52

; <label>:52:                                     ; preds = %20, %43, %49
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_goiftrue(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #9
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !34
  switch i32 %4, label %32 [
    i32 14, label %5
    i32 4, label %34
    i32 5, label %34
    i32 6, label %34
    i32 2, label %34
  ]

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %7 = bitcast %union.anon.7* %6 to i32*
  %8 = load i32, i32* %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %10 = load %struct.Proto*, %struct.Proto** %9, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 16
  %12 = load i32*, i32** %11, align 8, !tbaa !14
  %13 = sext i32 %8 to i64
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = icmp sgt i32 %8, 0
  br i1 %15, label %16, label %25

; <label>:16:                                     ; preds = %5
  %17 = getelementptr inbounds i32, i32* %14, i64 -1
  %18 = load i32, i32* %17, align 4, !tbaa !16
  %19 = and i32 %18, 127
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1, !tbaa !22
  %23 = and i8 %22, 16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %16, %5
  %26 = load i32, i32* %14, align 4, !tbaa !16
  br label %27

; <label>:27:                                     ; preds = %16, %25
  %28 = phi i32 [ %26, %25 ], [ %18, %16 ]
  %29 = phi i32* [ %14, %25 ], [ %17, %16 ]
  %30 = xor i32 %28, 32768
  store i32 %30, i32* %29, align 4, !tbaa !16
  %31 = load i32, i32* %7, align 8, !tbaa !22
  br label %34

; <label>:32:                                     ; preds = %2
  %33 = tail call fastcc i32 @jumponcond(%struct.FuncState* %0, %struct.expdesc* nonnull %1, i32 0) #9
  br label %34

; <label>:34:                                     ; preds = %2, %2, %2, %2, %32, %27
  %35 = phi i32 [ %33, %32 ], [ %31, %27 ], [ -1, %2 ], [ -1, %2 ], [ -1, %2 ], [ -1, %2 ]
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %36, i32 %35) #9
  %37 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %38 = load i32, i32* %37, align 8, !tbaa !37
  %39 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %40 = load i32, i32* %39, align 8, !tbaa !9
  %41 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %40, i32* %41, align 4, !tbaa !12
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %38, i32 %40, i32 255, i32 %40) #8
  store i32 -1, i32* %37, align 8, !tbaa !37
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @jumponcond(%struct.FuncState* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %33

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 16
  %11 = load i32*, i32** %10, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %13 = bitcast %union.anon.7* %12 to i32*
  %14 = load i32, i32* %13, align 8, !tbaa !22
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !16
  %18 = and i32 %17, 127
  %19 = icmp eq i32 %18, 52
  br i1 %19, label %20, label %33

; <label>:20:                                     ; preds = %7
  tail call fastcc void @removelastlineinfo(%struct.FuncState* nonnull %0) #8
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %22 = load i32, i32* %21, align 8, !tbaa !9
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 8, !tbaa !9
  %24 = icmp eq i32 %2, 0
  %25 = zext i1 %24 to i32
  %26 = lshr i32 %17, 9
  %27 = and i32 %26, 32640
  %28 = shl nuw nsw i32 %25, 15
  %29 = or i32 %28, %27
  %30 = or i32 %29, 67
  %31 = tail call fastcc i32 @luaK_code(%struct.FuncState* nonnull %0, i32 %30) #8
  %32 = tail call fastcc i32 @luaK_code(%struct.FuncState* nonnull %0, i32 2147483449) #8
  br label %56

; <label>:33:                                     ; preds = %7, %3
  tail call fastcc void @discharge2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #9
  %34 = load i32, i32* %4, align 8, !tbaa !34
  %35 = icmp eq i32 %34, 7
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %37 = bitcast %union.anon.7* %36 to i32*
  br i1 %35, label %38, label %48

; <label>:38:                                     ; preds = %33
  %39 = load i32, i32* %37, align 8, !tbaa !22
  %40 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %41 = load i8, i8* %40, align 2, !tbaa !36
  %42 = zext i8 %41 to i32
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %48, label %44

; <label>:44:                                     ; preds = %38
  %45 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %46 = load i8, i8* %45, align 4, !tbaa !20
  %47 = add i8 %46, -1
  store i8 %47, i8* %45, align 4, !tbaa !20
  br label %48

; <label>:48:                                     ; preds = %33, %38, %44
  %49 = load i32, i32* %37, align 8, !tbaa !22
  %50 = shl i32 %49, 16
  %51 = shl i32 %2, 15
  %52 = or i32 %51, %50
  %53 = or i32 %52, 32708
  %54 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %53) #8
  %55 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 2147483449) #8
  br label %56

; <label>:56:                                     ; preds = %20, %48
  %57 = phi i32 [ %55, %48 ], [ %32, %20 ]
  ret i32 %57
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_goiffalse(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #9
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !34
  switch i32 %4, label %9 [
    i32 14, label %5
    i32 1, label %11
    i32 3, label %11
  ]

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %7 = bitcast %union.anon.7* %6 to i32*
  %8 = load i32, i32* %7, align 8, !tbaa !22
  br label %11

; <label>:9:                                      ; preds = %2
  %10 = tail call fastcc i32 @jumponcond(%struct.FuncState* %0, %struct.expdesc* nonnull %1, i32 1) #9
  br label %11

; <label>:11:                                     ; preds = %2, %2, %9, %5
  %12 = phi i32 [ %10, %9 ], [ %8, %5 ], [ -1, %2 ], [ -1, %2 ]
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %13, i32 %12) #9
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %15 = load i32, i32* %14, align 4, !tbaa !38
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %17 = load i32, i32* %16, align 8, !tbaa !9
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %17, i32* %18, align 4, !tbaa !12
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %15, i32 %17, i32 255, i32 %17) #8
  store i32 -1, i32* %14, align 4, !tbaa !38
  ret void
}

; Function Attrs: norecurse nounwind optsize readonly uwtable
define hidden i32 @luaK_isKint(%struct.expdesc* nocapture readonly) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %5, label %12

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 2
  %7 = load i32, i32* %6, align 8, !tbaa !37
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 3
  %9 = load i32, i32* %8, align 4, !tbaa !38
  %10 = icmp eq i32 %7, %9
  %11 = zext i1 %10 to i32
  br label %12

; <label>:12:                                     ; preds = %5, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %5 ]
  ret i32 %13
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_indexed(%struct.FuncState* nocapture, %struct.expdesc* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %14, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %9 = bitcast %union.anon.7* %8 to i32*
  %10 = load i32, i32* %9, align 8, !tbaa !22
  %11 = trunc i32 %10 to i8
  %12 = bitcast %union.anon.7* %8 to %struct.anon.8*
  %13 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %12, i64 0, i32 1
  store i8 %11, i8* %13, align 2, !tbaa !22
  br label %61

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %16 = load i32, i32* %15, align 8, !tbaa !34
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %45

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %20 = load i32, i32* %19, align 8, !tbaa !37
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %22 = load i32, i32* %21, align 4, !tbaa !38
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %45

; <label>:24:                                     ; preds = %18
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %26 = bitcast %union.anon.7* %25 to i32*
  %27 = load i32, i32* %26, align 8, !tbaa !22
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %29, label %45

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %31 = load %struct.Proto*, %struct.Proto** %30, align 8, !tbaa !13
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 15
  %33 = load %struct.TValue*, %struct.TValue** %32, align 8, !tbaa !29
  %34 = sext i32 %27 to i64
  %35 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i64 %34, i32 1
  %36 = load i8, i8* %35, align 8, !tbaa !25
  %37 = icmp eq i8 %36, 84
  br i1 %37, label %38, label %45

; <label>:38:                                     ; preds = %29
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %40 = bitcast %union.anon.7* %39 to i32*
  %41 = load i32, i32* %40, align 8, !tbaa !22
  %42 = trunc i32 %41 to i8
  %43 = bitcast %union.anon.7* %39 to %struct.anon.8*
  %44 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %43, i64 0, i32 1
  store i8 %42, i8* %44, align 2, !tbaa !22
  br label %55

; <label>:45:                                     ; preds = %24, %18, %14, %29
  %46 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #9
  %47 = load i32, i32* %4, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %49 = bitcast %union.anon.7* %48 to i32*
  %50 = load i32, i32* %49, align 8, !tbaa !22
  %51 = trunc i32 %50 to i8
  %52 = bitcast %union.anon.7* %48 to %struct.anon.8*
  %53 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %52, i64 0, i32 1
  store i8 %51, i8* %53, align 2, !tbaa !22
  %54 = icmp eq i32 %47, 9
  br i1 %54, label %55, label %61

; <label>:55:                                     ; preds = %38, %45
  %56 = phi %union.anon.7* [ %39, %38 ], [ %48, %45 ]
  %57 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %58 = bitcast %union.anon.7* %57 to i32*
  %59 = load i32, i32* %58, align 8, !tbaa !22
  %60 = trunc i32 %59 to i16
  br label %102

; <label>:61:                                     ; preds = %7, %45
  %62 = phi %union.anon.7* [ %8, %7 ], [ %48, %45 ]
  %63 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %64 = load i32, i32* %63, align 8, !tbaa !34
  switch i32 %64, label %99 [
    i32 4, label %65
    i32 6, label %87
  ]

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %67 = load i32, i32* %66, align 8, !tbaa !37
  %68 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %69 = load i32, i32* %68, align 4, !tbaa !38
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %99

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %73 = bitcast %union.anon.7* %72 to i32*
  %74 = load i32, i32* %73, align 8, !tbaa !22
  %75 = icmp slt i32 %74, 256
  br i1 %75, label %76, label %99

; <label>:76:                                     ; preds = %71
  %77 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %78 = load %struct.Proto*, %struct.Proto** %77, align 8, !tbaa !13
  %79 = getelementptr inbounds %struct.Proto, %struct.Proto* %78, i64 0, i32 15
  %80 = load %struct.TValue*, %struct.TValue** %79, align 8, !tbaa !29
  %81 = sext i32 %74 to i64
  %82 = getelementptr inbounds %struct.TValue, %struct.TValue* %80, i64 %81, i32 1
  %83 = load i8, i8* %82, align 8, !tbaa !25
  %84 = icmp eq i8 %83, 84
  br i1 %84, label %85, label %99

; <label>:85:                                     ; preds = %76
  %86 = trunc i32 %74 to i16
  br label %102

; <label>:87:                                     ; preds = %61
  %88 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %89 = load i32, i32* %88, align 8, !tbaa !37
  %90 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %91 = load i32, i32* %90, align 4, !tbaa !38
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %99

; <label>:93:                                     ; preds = %87
  %94 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0
  %95 = load i64, i64* %94, align 8, !tbaa !22
  %96 = icmp ugt i64 %95, 255
  br i1 %96, label %99, label %97

; <label>:97:                                     ; preds = %93
  %98 = trunc i64 %95 to i16
  br label %102

; <label>:99:                                     ; preds = %76, %61, %65, %71, %87, %93
  %100 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #9
  %101 = trunc i32 %100 to i16
  br label %102

; <label>:102:                                    ; preds = %85, %99, %97, %55
  %103 = phi %union.anon.7* [ %62, %85 ], [ %62, %99 ], [ %62, %97 ], [ %56, %55 ]
  %104 = phi i16 [ %86, %85 ], [ %101, %99 ], [ %98, %97 ], [ %60, %55 ]
  %105 = phi i32 [ 13, %85 ], [ 10, %99 ], [ 12, %97 ], [ 11, %55 ]
  %106 = bitcast %union.anon.7* %103 to i16*
  store i16 %104, i16* %106, align 8, !tbaa !22
  store i32 %105, i32* %4, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_prefix(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, i32) local_unnamed_addr #2 {
  switch i32 %1, label %90 [
    i32 0, label %5
    i32 1, label %5
    i32 3, label %9
    i32 2, label %33
  ]

; <label>:5:                                      ; preds = %4, %4
  %6 = add i32 %1, 12
  %7 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %6, %struct.expdesc* %2, %struct.expdesc* nonnull @luaK_prefix.ef) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %90

; <label>:9:                                      ; preds = %5, %4
  %10 = add i32 %1, 50
  %11 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !34
  %14 = icmp eq i32 %13, 7
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %16 = bitcast %union.anon.7* %15 to i32*
  br i1 %14, label %17, label %27

; <label>:17:                                     ; preds = %9
  %18 = load i32, i32* %16, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %20 = load i8, i8* %19, align 2, !tbaa !36
  %21 = zext i8 %20 to i32
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %25 = load i8, i8* %24, align 4, !tbaa !20
  %26 = add i8 %25, -1
  store i8 %26, i8* %24, align 4, !tbaa !20
  br label %27

; <label>:27:                                     ; preds = %9, %17, %23
  %28 = shl i32 %11, 16
  %29 = or i32 %28, %10
  %30 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %29) #8
  store i32 %30, i32* %16, align 8, !tbaa !22
  store i32 15, i32* %12, align 8, !tbaa !34
  tail call fastcc void @removelastlineinfo(%struct.FuncState* %0) #8
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %32 = load %struct.Proto*, %struct.Proto** %31, align 8, !tbaa !13
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %32, i32 %3) #8
  br label %90

; <label>:33:                                     ; preds = %4
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %35 = load i32, i32* %34, align 8, !tbaa !34
  switch i32 %35, label %84 [
    i32 1, label %36
    i32 3, label %36
    i32 4, label %37
    i32 5, label %37
    i32 6, label %37
    i32 2, label %37
    i32 14, label %38
    i32 15, label %64
    i32 7, label %64
  ]

; <label>:36:                                     ; preds = %33, %33
  store i32 2, i32* %34, align 8, !tbaa !34
  br label %84

; <label>:37:                                     ; preds = %33, %33, %33, %33
  store i32 3, i32* %34, align 8, !tbaa !34
  br label %84

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %40 = bitcast %union.anon.7* %39 to i32*
  %41 = load i32, i32* %40, align 8, !tbaa !22
  %42 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %43 = load %struct.Proto*, %struct.Proto** %42, align 8, !tbaa !13
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %43, i64 0, i32 16
  %45 = load i32*, i32** %44, align 8, !tbaa !14
  %46 = sext i32 %41 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = icmp sgt i32 %41, 0
  br i1 %48, label %49, label %58

; <label>:49:                                     ; preds = %38
  %50 = getelementptr inbounds i32, i32* %47, i64 -1
  %51 = load i32, i32* %50, align 4, !tbaa !16
  %52 = and i32 %51, 127
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1, !tbaa !22
  %56 = and i8 %55, 16
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %60

; <label>:58:                                     ; preds = %49, %38
  %59 = load i32, i32* %47, align 4, !tbaa !16
  br label %60

; <label>:60:                                     ; preds = %58, %49
  %61 = phi i32 [ %59, %58 ], [ %51, %49 ]
  %62 = phi i32* [ %47, %58 ], [ %50, %49 ]
  %63 = xor i32 %61, 32768
  store i32 %63, i32* %62, align 4, !tbaa !16
  br label %84

; <label>:64:                                     ; preds = %33, %33
  tail call fastcc void @discharge2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #8
  %65 = load i32, i32* %34, align 8, !tbaa !34
  %66 = icmp eq i32 %65, 7
  %67 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %68 = bitcast %union.anon.7* %67 to i32*
  br i1 %66, label %69, label %79

; <label>:69:                                     ; preds = %64
  %70 = load i32, i32* %68, align 8, !tbaa !22
  %71 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %72 = load i8, i8* %71, align 2, !tbaa !36
  %73 = zext i8 %72 to i32
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %79, label %75

; <label>:75:                                     ; preds = %69
  %76 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %77 = load i8, i8* %76, align 4, !tbaa !20
  %78 = add i8 %77, -1
  store i8 %78, i8* %76, align 4, !tbaa !20
  br label %79

; <label>:79:                                     ; preds = %75, %69, %64
  %80 = load i32, i32* %68, align 8, !tbaa !22
  %81 = shl i32 %80, 16
  %82 = or i32 %81, 52
  %83 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %82) #8
  store i32 %83, i32* %68, align 8, !tbaa !22
  store i32 15, i32* %34, align 8, !tbaa !34
  br label %84

; <label>:84:                                     ; preds = %33, %36, %37, %60, %79
  %85 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %86 = load i32, i32* %85, align 4, !tbaa !38
  %87 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %88 = load i32, i32* %87, align 8, !tbaa !37
  store i32 %88, i32* %85, align 4, !tbaa !38
  store i32 %86, i32* %87, align 8, !tbaa !37
  tail call fastcc void @removevalues(%struct.FuncState* %0, i32 %88) #8
  %89 = load i32, i32* %87, align 8, !tbaa !37
  tail call fastcc void @removevalues(%struct.FuncState* %0, i32 %89) #8
  br label %90

; <label>:90:                                     ; preds = %5, %4, %84, %27
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @constfolding(%struct.FuncState* nocapture readonly, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture readonly) unnamed_addr #2 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TValue, align 8
  %7 = alloca %struct.TValue, align 8
  %8 = alloca %struct.TValue, align 8
  %9 = bitcast %struct.TValue* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #10
  %10 = bitcast %struct.TValue* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #10
  %11 = bitcast %struct.TValue* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #10
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %13 = load i32, i32* %12, align 8, !tbaa !37
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %15 = load i32, i32* %14, align 4, !tbaa !38
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %86

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %19 = load i32, i32* %18, align 8, !tbaa !34
  switch i32 %19, label %86 [
    i32 6, label %21
    i32 5, label %20
  ]

; <label>:20:                                     ; preds = %17
  br label %21

; <label>:21:                                     ; preds = %17, %20
  %22 = phi i8 [ 19, %20 ], [ 35, %17 ]
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0
  %24 = load i64, i64* %23, align 8, !tbaa !22
  %25 = bitcast %struct.TValue* %6 to i64*
  store i64 %24, i64* %25, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  store i8 %22, i8* %26, align 8, !tbaa !25
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %28 = load i32, i32* %27, align 8, !tbaa !37
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %30 = load i32, i32* %29, align 4, !tbaa !38
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %86

; <label>:32:                                     ; preds = %21
  %33 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %34 = load i32, i32* %33, align 8, !tbaa !34
  switch i32 %34, label %86 [
    i32 6, label %36
    i32 5, label %35
  ]

; <label>:35:                                     ; preds = %32
  br label %36

; <label>:36:                                     ; preds = %32, %35
  %37 = phi i8 [ 19, %35 ], [ 35, %32 ]
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %39 = load i64, i64* %38, align 8, !tbaa !22
  %40 = bitcast %struct.TValue* %7 to i64*
  store i64 %39, i64* %40, align 8, !tbaa !22
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  store i8 %37, i8* %41, align 8, !tbaa !25
  switch i32 %1, label %66 [
    i32 7, label %42
    i32 8, label %42
    i32 9, label %42
    i32 10, label %42
    i32 11, label %42
    i32 13, label %42
    i32 5, label %57
    i32 6, label %57
    i32 3, label %57
  ]

; <label>:42:                                     ; preds = %36, %36, %36, %36, %36, %36
  %43 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #10
  %44 = icmp eq i8 %22, 35
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  store i64 %24, i64* %5, align 8, !tbaa !39
  br label %53

; <label>:46:                                     ; preds = %42
  %47 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %6, i64* nonnull %5, i32 0) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %46
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #10
  br label %86

; <label>:50:                                     ; preds = %46
  %51 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  %52 = load i8, i8* %51, align 8, !tbaa !25
  br label %53

; <label>:53:                                     ; preds = %50, %45
  %54 = phi i8 [ %52, %50 ], [ %37, %45 ]
  %55 = icmp eq i8 %54, 35
  br i1 %55, label %56, label %63

; <label>:56:                                     ; preds = %53
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #10
  br label %66

; <label>:57:                                     ; preds = %36, %36, %36
  %58 = icmp eq i8 %37, 35
  %59 = sitofp i64 %39 to double
  %60 = bitcast i64 %39 to double
  %61 = select i1 %58, double %59, double %60
  %62 = fcmp une double %61, 0.000000e+00
  br i1 %62, label %66, label %86

; <label>:63:                                     ; preds = %53
  %64 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %7, i64* nonnull %5, i32 0) #8
  %65 = icmp eq i32 %64, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #10
  br i1 %65, label %86, label %66

; <label>:66:                                     ; preds = %63, %56, %57, %36
  %67 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %68 = load %struct.LexState*, %struct.LexState** %67, align 8, !tbaa !17
  %69 = getelementptr inbounds %struct.LexState, %struct.LexState* %68, i64 0, i32 6
  %70 = load %struct.lua_State*, %struct.lua_State** %69, align 8, !tbaa !18
  %71 = call i32 @luaO_rawarith(%struct.lua_State* %70, i32 %1, %struct.TValue* nonnull %6, %struct.TValue* nonnull %7, %struct.TValue* nonnull %8) #8
  %72 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i64 0, i32 1
  %73 = load i8, i8* %72, align 8, !tbaa !25
  %74 = icmp eq i8 %73, 35
  br i1 %74, label %75, label %79

; <label>:75:                                     ; preds = %66
  store i32 6, i32* %18, align 8, !tbaa !34
  %76 = bitcast %struct.TValue* %8 to i64*
  %77 = load i64, i64* %76, align 8, !tbaa !22
  %78 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0
  store i64 %77, i64* %78, align 8, !tbaa !22
  br label %86

; <label>:79:                                     ; preds = %66
  %80 = bitcast %struct.TValue* %8 to double*
  %81 = load double, double* %80, align 8, !tbaa !22
  %82 = fcmp ueq double %81, 0.000000e+00
  br i1 %82, label %86, label %83

; <label>:83:                                     ; preds = %79
  store i32 5, i32* %18, align 8, !tbaa !34
  %84 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %85 = bitcast %union.anon.7* %84 to double*
  store double %81, double* %85, align 8, !tbaa !22
  br label %86

; <label>:86:                                     ; preds = %63, %49, %57, %32, %21, %17, %4, %75, %83, %79
  %87 = phi i32 [ 0, %63 ], [ 0, %79 ], [ 1, %83 ], [ 1, %75 ], [ 0, %4 ], [ 0, %17 ], [ 0, %21 ], [ 0, %32 ], [ 0, %57 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #10
  ret i32 %87
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_infix(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  switch i32 %1, label %43 [
    i32 19, label %6
    i32 20, label %7
    i32 12, label %8
    i32 0, label %9
    i32 1, label %9
    i32 2, label %9
    i32 5, label %9
    i32 6, label %9
    i32 3, label %9
    i32 4, label %9
    i32 7, label %9
    i32 8, label %9
    i32 9, label %9
    i32 10, label %9
    i32 11, label %9
    i32 13, label %22
    i32 16, label %22
    i32 14, label %35
    i32 15, label %35
    i32 17, label %35
    i32 18, label %35
  ]

; <label>:6:                                      ; preds = %3
  tail call void @luaK_goiftrue(%struct.FuncState* %0, %struct.expdesc* %2) #9
  br label %43

; <label>:7:                                      ; preds = %3
  tail call void @luaK_goiffalse(%struct.FuncState* %0, %struct.expdesc* %2) #9
  br label %43

; <label>:8:                                      ; preds = %3
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* %2) #9
  br label %43

; <label>:9:                                      ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %11 = load i32, i32* %10, align 8, !tbaa !37
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %13 = load i32, i32* %12, align 4, !tbaa !38
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %20

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %17 = load i32, i32* %16, align 8, !tbaa !34
  %18 = add i32 %17, -5
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %43, label %20

; <label>:20:                                     ; preds = %15, %9
  %21 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #9
  br label %43

; <label>:22:                                     ; preds = %3, %3
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %24 = load i32, i32* %23, align 8, !tbaa !37
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %26 = load i32, i32* %25, align 4, !tbaa !38
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %33

; <label>:28:                                     ; preds = %22
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %30 = load i32, i32* %29, align 8, !tbaa !34
  %31 = add i32 %30, -5
  %32 = icmp ult i32 %31, 2
  br i1 %32, label %43, label %33

; <label>:33:                                     ; preds = %28, %22
  %34 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #9
  br label %43

; <label>:35:                                     ; preds = %3, %3, %3, %3
  %36 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %36) #10
  %37 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %37) #10
  %38 = call fastcc i32 @isSCnumber(%struct.expdesc* %2, i64* nonnull %4, i32* nonnull %5) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

; <label>:40:                                     ; preds = %35
  %41 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #9
  br label %42

; <label>:42:                                     ; preds = %35, %40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #10
  br label %43

; <label>:43:                                     ; preds = %28, %15, %3, %33, %20, %42, %8, %7, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @isSCnumber(%struct.expdesc* nocapture readonly, i64*, i32* nocapture) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !34
  switch i32 %5, label %31 [
    i32 6, label %6
    i32 5, label %9
  ]

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 1, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !22
  store i64 %8, i64* %1, align 8, !tbaa !39
  br label %20

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 1
  %11 = bitcast %union.anon.7* %10 to double*
  %12 = load double, double* %11, align 8, !tbaa !22
  %13 = tail call i32 @luaV_flttointeger(double %12, i64* %1, i32 0) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

; <label>:15:                                     ; preds = %9
  %16 = load i64, i64* %1, align 8, !tbaa !39
  %17 = add i64 %16, 65535
  %18 = icmp ugt i64 %17, 131071
  br i1 %18, label %31, label %19

; <label>:19:                                     ; preds = %15
  store i32 1, i32* %2, align 4, !tbaa !16
  br label %20

; <label>:20:                                     ; preds = %19, %6
  %21 = phi i64 [ %16, %19 ], [ %8, %6 ]
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 2
  %23 = load i32, i32* %22, align 8, !tbaa !37
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 3
  %25 = load i32, i32* %24, align 4, !tbaa !38
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %31

; <label>:27:                                     ; preds = %20
  %28 = add i64 %21, 127
  %29 = icmp ugt i64 %28, 255
  br i1 %29, label %31, label %30

; <label>:30:                                     ; preds = %27
  store i64 %28, i64* %1, align 8, !tbaa !39
  br label %31

; <label>:31:                                     ; preds = %9, %20, %27, %15, %3, %30
  %32 = phi i32 [ 1, %30 ], [ 0, %3 ], [ 0, %15 ], [ 0, %27 ], [ 0, %20 ], [ 0, %9 ]
  ret i32 %32
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_posfix(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32) local_unnamed_addr #2 {
  %6 = alloca %struct.expdesc, align 8
  %7 = alloca %struct.expdesc, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.expdesc, align 8
  %11 = alloca %struct.expdesc, align 8
  %12 = alloca %struct.expdesc, align 8
  switch i32 %1, label %252 [
    i32 19, label %13
    i32 20, label %19
    i32 12, label %25
    i32 0, label %97
    i32 2, label %97
    i32 1, label %118
    i32 5, label %118
    i32 6, label %118
    i32 3, label %118
    i32 4, label %118
    i32 7, label %123
    i32 8, label %123
    i32 9, label %123
    i32 10, label %153
    i32 11, label %180
    i32 13, label %184
    i32 16, label %184
    i32 14, label %245
    i32 15, label %245
    i32 17, label %247
    i32 18, label %247
  ]

; <label>:13:                                     ; preds = %5
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %3) #9
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %16 = load i32, i32* %15, align 4, !tbaa !38
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %14, i32 %16) #9
  %17 = bitcast %struct.expdesc* %2 to i8*
  %18 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 24, i32 8, i1 false), !tbaa.struct !41
  br label %252

; <label>:19:                                     ; preds = %5
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %3) #9
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %22 = load i32, i32* %21, align 8, !tbaa !37
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %20, i32 %22) #9
  %23 = bitcast %struct.expdesc* %2 to i8*
  %24 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 24, i32 8, i1 false), !tbaa.struct !41
  br label %252

; <label>:25:                                     ; preds = %5
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* %3) #9
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %27 = load i32, i32* %26, align 8, !tbaa !9
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  %29 = load i32, i32* %28, align 4, !tbaa !12
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %39

; <label>:31:                                     ; preds = %25
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %33 = load %struct.Proto*, %struct.Proto** %32, align 8, !tbaa !13
  %34 = getelementptr inbounds %struct.Proto, %struct.Proto* %33, i64 0, i32 16
  %35 = load i32*, i32** %34, align 8, !tbaa !14
  %36 = add nsw i32 %27, -1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  br label %39

; <label>:39:                                     ; preds = %31, %25
  %40 = phi i32* [ %38, %31 ], [ @previousinstruction.invalidinstruction, %25 ]
  %41 = load i32, i32* %40, align 4, !tbaa !16
  %42 = and i32 %41, 127
  %43 = icmp eq i32 %42, 54
  br i1 %43, label %44, label %72

; <label>:44:                                     ; preds = %39
  %45 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %46 = load i32, i32* %45, align 8, !tbaa !34
  %47 = icmp eq i32 %46, 7
  br i1 %47, label %48, label %60

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %50 = bitcast %union.anon.7* %49 to i32*
  %51 = load i32, i32* %50, align 8, !tbaa !22
  %52 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %53 = load i8, i8* %52, align 2, !tbaa !36
  %54 = zext i8 %53 to i32
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %60, label %56

; <label>:56:                                     ; preds = %48
  %57 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %58 = load i8, i8* %57, align 4, !tbaa !20
  %59 = add i8 %58, -1
  store i8 %59, i8* %57, align 4, !tbaa !20
  br label %60

; <label>:60:                                     ; preds = %56, %48, %44
  %61 = and i32 %41, -16744321
  %62 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %63 = bitcast %union.anon.7* %62 to i32*
  %64 = load i32, i32* %63, align 8, !tbaa !22
  %65 = shl i32 %64, 7
  %66 = and i32 %65, 32640
  %67 = and i32 %41, 16711680
  %68 = add nuw nsw i32 %67, 65536
  %69 = and i32 %68, 16711680
  %70 = or i32 %69, %61
  %71 = or i32 %70, %66
  store i32 %71, i32* %40, align 4, !tbaa !16
  br label %252

; <label>:72:                                     ; preds = %39
  %73 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %74 = bitcast %union.anon.7* %73 to i32*
  %75 = load i32, i32* %74, align 8, !tbaa !22
  %76 = shl i32 %75, 7
  %77 = or i32 %76, 131126
  %78 = tail call fastcc i32 @luaK_code(%struct.FuncState* nonnull %0, i32 %77) #8
  %79 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %80 = load i32, i32* %79, align 8, !tbaa !34
  %81 = icmp eq i32 %80, 7
  br i1 %81, label %82, label %94

; <label>:82:                                     ; preds = %72
  %83 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %84 = bitcast %union.anon.7* %83 to i32*
  %85 = load i32, i32* %84, align 8, !tbaa !22
  %86 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %87 = load i8, i8* %86, align 2, !tbaa !36
  %88 = zext i8 %87 to i32
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %94, label %90

; <label>:90:                                     ; preds = %82
  %91 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %92 = load i8, i8* %91, align 4, !tbaa !20
  %93 = add i8 %92, -1
  store i8 %93, i8* %91, align 4, !tbaa !20
  br label %94

; <label>:94:                                     ; preds = %90, %82, %72
  tail call fastcc void @removelastlineinfo(%struct.FuncState* nonnull %0) #8
  %95 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %96 = load %struct.Proto*, %struct.Proto** %95, align 8, !tbaa !13
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %96, i32 %4) #8
  br label %252

; <label>:97:                                     ; preds = %5, %5
  %98 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3) #9
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %252

; <label>:100:                                    ; preds = %97
  %101 = add i32 %1, 38
  %102 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %103 = load i32, i32* %102, align 8, !tbaa !37
  %104 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %105 = load i32, i32* %104, align 4, !tbaa !38
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %116

; <label>:107:                                    ; preds = %100
  %108 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %109 = load i32, i32* %108, align 8, !tbaa !34
  %110 = add i32 %109, -5
  %111 = icmp ult i32 %110, 2
  br i1 %111, label %112, label %116

; <label>:112:                                    ; preds = %107
  %113 = bitcast %struct.expdesc* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %113)
  %114 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %113, i8* %114, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  %115 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* nonnull %113, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %113)
  br label %116

; <label>:116:                                    ; preds = %100, %107, %112
  %117 = phi i32 [ 1, %112 ], [ 0, %100 ], [ 0, %107 ]
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 %101, %struct.expdesc* nonnull %2, %struct.expdesc* %3, i32 %117, i32 %4) #8
  br label %252

; <label>:118:                                    ; preds = %5, %5, %5, %5, %5
  %119 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3) #9
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %252

; <label>:121:                                    ; preds = %118
  %122 = add i32 %1, 38
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 %122, %struct.expdesc* %2, %struct.expdesc* %3, i32 0, i32 %4) #9
  br label %252

; <label>:123:                                    ; preds = %5, %5, %5
  %124 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3) #9
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %252

; <label>:126:                                    ; preds = %123
  %127 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %128 = load i32, i32* %127, align 8, !tbaa !34
  %129 = icmp eq i32 %128, 6
  br i1 %129, label %130, label %137

; <label>:130:                                    ; preds = %126
  %131 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %137, label %133

; <label>:133:                                    ; preds = %130
  %134 = bitcast %struct.expdesc* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %134)
  %135 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %134, i8* %135, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  %136 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %135, i8* %136, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %136, i8* nonnull %134, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %134)
  br label %147

; <label>:137:                                    ; preds = %130, %126
  %138 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %139 = load i32, i32* %138, align 8, !tbaa !34
  %140 = icmp eq i32 %139, 6
  br i1 %140, label %141, label %144

; <label>:141:                                    ; preds = %137
  %142 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %147

; <label>:144:                                    ; preds = %141, %137
  %145 = add i32 %1, 38
  %146 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #8
  tail call fastcc void @finishbinexpval(%struct.FuncState* %0, %struct.expdesc* nonnull %2, %struct.expdesc* nonnull %3, i32 %145, i32 %146, i32 0, i32 %4) #8
  br label %252

; <label>:147:                                    ; preds = %141, %133
  %148 = phi i32 [ 1, %133 ], [ 0, %141 ]
  %149 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %150 = bitcast %union.anon.7* %149 to i32*
  %151 = load i32, i32* %150, align 8, !tbaa !22
  %152 = add i32 %1, 26
  tail call fastcc void @finishbinexpval(%struct.FuncState* %0, %struct.expdesc* nonnull %2, %struct.expdesc* nonnull %3, i32 %152, i32 %151, i32 %148, i32 %4) #8
  br label %252

; <label>:153:                                    ; preds = %5
  %154 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 10, %struct.expdesc* %2, %struct.expdesc* %3) #9
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %252

; <label>:156:                                    ; preds = %153
  %157 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %158 = load i32, i32* %157, align 8, !tbaa !34
  %159 = icmp eq i32 %158, 6
  br i1 %159, label %160, label %179

; <label>:160:                                    ; preds = %156
  %161 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %162 = load i32, i32* %161, align 8, !tbaa !37
  %163 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %164 = load i32, i32* %163, align 4, !tbaa !38
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %179

; <label>:166:                                    ; preds = %160
  %167 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0
  %168 = load i64, i64* %167, align 8, !tbaa !22
  %169 = add i64 %168, 127
  %170 = icmp ugt i64 %169, 255
  br i1 %170, label %179, label %171

; <label>:171:                                    ; preds = %166
  %172 = bitcast %struct.expdesc* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %172)
  %173 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %172, i8* %173, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  %174 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %173, i8* %174, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %174, i8* nonnull %172, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %172)
  %175 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %176 = load i64, i64* %175, align 8, !tbaa !22
  %177 = trunc i64 %176 to i32
  %178 = add nsw i32 %177, 127
  tail call fastcc void @finishbinexpval(%struct.FuncState* %0, %struct.expdesc* nonnull %2, %struct.expdesc* %3, i32 37, i32 %178, i32 1, i32 %4) #8
  br label %252

; <label>:179:                                    ; preds = %156, %160, %166
  tail call fastcc void @codeshift(%struct.FuncState* %0, i32 48, %struct.expdesc* nonnull %2, %struct.expdesc* %3, i32 %4) #9
  br label %252

; <label>:180:                                    ; preds = %5
  %181 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 11, %struct.expdesc* %2, %struct.expdesc* %3) #9
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %252

; <label>:183:                                    ; preds = %180
  tail call fastcc void @codeshift(%struct.FuncState* %0, i32 49, %struct.expdesc* %2, %struct.expdesc* %3, i32 %4) #9
  br label %252

; <label>:184:                                    ; preds = %5, %5
  %185 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %185) #10
  %186 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %186) #10
  store i32 0, i32* %9, align 4, !tbaa !16
  %187 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %188 = load i32, i32* %187, align 8, !tbaa !34
  %189 = icmp eq i32 %188, 7
  br i1 %189, label %194, label %190

; <label>:190:                                    ; preds = %184
  %191 = bitcast %struct.expdesc* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %191)
  %192 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %191, i8* %192, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  %193 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %192, i8* %193, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %193, i8* nonnull %191, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %191)
  br label %194

; <label>:194:                                    ; preds = %190, %184
  %195 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #8
  %196 = call fastcc i32 @isSCnumber(%struct.expdesc* %3, i64* nonnull %8, i32* nonnull %9) #8
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %201, label %198

; <label>:198:                                    ; preds = %194
  %199 = load i64, i64* %8, align 8, !tbaa !39
  %200 = trunc i64 %199 to i32
  br label %210

; <label>:201:                                    ; preds = %194
  %202 = call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %3) #8
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %208, label %204

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %206 = bitcast %union.anon.7* %205 to i32*
  %207 = load i32, i32* %206, align 8, !tbaa !22
  br label %210

; <label>:208:                                    ; preds = %201
  %209 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %3) #8
  br label %210

; <label>:210:                                    ; preds = %208, %204, %198
  %211 = phi i32 [ %200, %198 ], [ %207, %204 ], [ %209, %208 ]
  %212 = phi i32 [ 62, %198 ], [ 61, %204 ], [ 58, %208 ]
  %213 = load i32, i32* %187, align 8, !tbaa !34
  %214 = icmp eq i32 %213, 7
  br i1 %214, label %215, label %219

; <label>:215:                                    ; preds = %210
  %216 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %217 = bitcast %union.anon.7* %216 to i32*
  %218 = load i32, i32* %217, align 8, !tbaa !22
  br label %219

; <label>:219:                                    ; preds = %215, %210
  %220 = phi i32 [ %218, %215 ], [ -1, %210 ]
  %221 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %222 = load i32, i32* %221, align 8, !tbaa !34
  %223 = icmp eq i32 %222, 7
  br i1 %223, label %224, label %228

; <label>:224:                                    ; preds = %219
  %225 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %226 = bitcast %union.anon.7* %225 to i32*
  %227 = load i32, i32* %226, align 8, !tbaa !22
  br label %228

; <label>:228:                                    ; preds = %219, %224
  %229 = phi i32 [ %227, %224 ], [ -1, %219 ]
  call fastcc void @freeregs(%struct.FuncState* %0, i32 %220, i32 %229) #8
  %230 = load i32, i32* %9, align 4, !tbaa !16
  %231 = icmp eq i32 %1, 13
  %232 = zext i1 %231 to i32
  %233 = shl i32 %195, 7
  %234 = shl i32 %211, 16
  %235 = shl i32 %230, 24
  %236 = shl nuw nsw i32 %232, 15
  %237 = or i32 %233, %236
  %238 = or i32 %237, %212
  %239 = or i32 %238, %234
  %240 = or i32 %239, %235
  %241 = call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %240) #8
  %242 = call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 2147483449) #8
  %243 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %244 = bitcast %union.anon.7* %243 to i32*
  store i32 %242, i32* %244, align 8, !tbaa !22
  store i32 14, i32* %187, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %186) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %185) #10
  br label %252

; <label>:245:                                    ; preds = %5, %5
  %246 = add i32 %1, 45
  tail call fastcc void @codeorder(%struct.FuncState* %0, i32 %246, %struct.expdesc* %2, %struct.expdesc* %3) #9
  br label %252

; <label>:247:                                    ; preds = %5, %5
  %248 = add i32 %1, 42
  %249 = bitcast %struct.expdesc* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %249)
  %250 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %249, i8* %250, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  %251 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %250, i8* %251, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %251, i8* nonnull %249, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %249)
  tail call fastcc void @codeorder(%struct.FuncState* %0, i32 %248, %struct.expdesc* %2, %struct.expdesc* %3) #9
  br label %252

; <label>:252:                                    ; preds = %147, %144, %94, %60, %97, %118, %123, %153, %180, %5, %183, %179, %171, %121, %116, %247, %245, %228, %19, %13
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @codearith(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture, i32, i32) unnamed_addr #2 {
  %7 = alloca %struct.expdesc, align 8
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 6
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %12 = load i32, i32* %11, align 8, !tbaa !37
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %14 = load i32, i32* %13, align 4, !tbaa !38
  %15 = icmp eq i32 %12, %14
  %16 = and i1 %10, %15
  br i1 %16, label %17, label %26

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %19 = load i64, i64* %18, align 8, !tbaa !22
  %20 = add i64 %19, 127
  %21 = icmp ugt i64 %20, 255
  br i1 %21, label %26, label %22

; <label>:22:                                     ; preds = %17
  %23 = add i32 %1, -19
  %24 = trunc i64 %19 to i32
  %25 = add nsw i32 %24, 127
  tail call fastcc void @finishbinexpval(%struct.FuncState* %0, %struct.expdesc* %2, %struct.expdesc* nonnull %3, i32 %23, i32 %25, i32 %4, i32 %5) #8
  br label %48

; <label>:26:                                     ; preds = %6, %17
  %27 = phi i32 [ %12, %17 ], [ %14, %6 ]
  %28 = icmp eq i32 %12, %27
  %29 = add i32 %9, -5
  %30 = icmp ult i32 %29, 2
  %31 = and i1 %30, %28
  br i1 %31, label %32, label %40

; <label>:32:                                     ; preds = %26
  %33 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

; <label>:35:                                     ; preds = %32
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %37 = bitcast %union.anon.7* %36 to i32*
  %38 = load i32, i32* %37, align 8, !tbaa !22
  %39 = add i32 %1, -12
  tail call fastcc void @finishbinexpval(%struct.FuncState* %0, %struct.expdesc* %2, %struct.expdesc* nonnull %3, i32 %39, i32 %38, i32 %4, i32 %5) #9
  br label %48

; <label>:40:                                     ; preds = %26, %32
  %41 = icmp eq i32 %4, 0
  br i1 %41, label %46, label %42

; <label>:42:                                     ; preds = %40
  %43 = bitcast %struct.expdesc* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %43)
  %44 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %43, i8* %44, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  %45 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* nonnull %43, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %43)
  br label %46

; <label>:46:                                     ; preds = %40, %42
  %47 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #8
  tail call fastcc void @finishbinexpval(%struct.FuncState* %0, %struct.expdesc* %2, %struct.expdesc* nonnull %3, i32 %1, i32 %47, i32 0, i32 %5) #8
  br label %48

; <label>:48:                                     ; preds = %35, %46, %22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @codeshift(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 6
  br i1 %8, label %9, label %29

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %11 = load i32, i32* %10, align 8, !tbaa !37
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %13 = load i32, i32* %12, align 4, !tbaa !38
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %29

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %17 = load i64, i64* %16, align 8, !tbaa !22
  %18 = add i64 %17, 127
  %19 = icmp ugt i64 %18, 255
  br i1 %19, label %29, label %20

; <label>:20:                                     ; preds = %15
  %21 = icmp eq i32 %1, 48
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %20
  %23 = sub nsw i64 0, %17
  store i64 %23, i64* %16, align 8, !tbaa !22
  br label %24

; <label>:24:                                     ; preds = %22, %20
  %25 = phi i64 [ %23, %22 ], [ %17, %20 ]
  %26 = phi i32 [ 1, %22 ], [ 0, %20 ]
  %27 = trunc i64 %25 to i32
  %28 = add nsw i32 %27, 127
  tail call fastcc void @finishbinexpval(%struct.FuncState* %0, %struct.expdesc* %2, %struct.expdesc* nonnull %3, i32 36, i32 %28, i32 %26, i32 %4) #8
  br label %31

; <label>:29:                                     ; preds = %5, %9, %15
  %30 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #8
  tail call fastcc void @finishbinexpval(%struct.FuncState* %0, %struct.expdesc* %2, %struct.expdesc* nonnull %3, i32 %1, i32 %30, i32 0, i32 %4) #8
  br label %31

; <label>:31:                                     ; preds = %29, %24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @codeorder(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture) unnamed_addr #2 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #10
  store i32 0, i32* %6, align 4, !tbaa !16
  %9 = call fastcc i32 @isSCnumber(%struct.expdesc* %3, i64* nonnull %5, i32* nonnull %6) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

; <label>:11:                                     ; preds = %4
  %12 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #9
  %13 = load i64, i64* %5, align 8, !tbaa !39
  %14 = trunc i64 %13 to i32
  %15 = add i32 %1, 4
  br label %28

; <label>:16:                                     ; preds = %4
  %17 = call fastcc i32 @isSCnumber(%struct.expdesc* %2, i64* nonnull %5, i32* nonnull %6) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

; <label>:19:                                     ; preds = %16
  %20 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %3) #9
  %21 = load i64, i64* %5, align 8, !tbaa !39
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %1, 59
  %24 = select i1 %23, i32 65, i32 66
  br label %28

; <label>:25:                                     ; preds = %16
  %26 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #9
  %27 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %3) #9
  br label %28

; <label>:28:                                     ; preds = %19, %25, %11
  %29 = phi i32 [ %15, %11 ], [ %24, %19 ], [ %1, %25 ]
  %30 = phi i32 [ %12, %11 ], [ %20, %19 ], [ %26, %25 ]
  %31 = phi i32 [ %14, %11 ], [ %22, %19 ], [ %27, %25 ]
  %32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %33 = load i32, i32* %32, align 8, !tbaa !34
  %34 = icmp eq i32 %33, 7
  br i1 %34, label %35, label %39

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %37 = bitcast %union.anon.7* %36 to i32*
  %38 = load i32, i32* %37, align 8, !tbaa !22
  br label %39

; <label>:39:                                     ; preds = %35, %28
  %40 = phi i32 [ %38, %35 ], [ -1, %28 ]
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %42 = load i32, i32* %41, align 8, !tbaa !34
  %43 = icmp eq i32 %42, 7
  br i1 %43, label %44, label %48

; <label>:44:                                     ; preds = %39
  %45 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %46 = bitcast %union.anon.7* %45 to i32*
  %47 = load i32, i32* %46, align 8, !tbaa !22
  br label %48

; <label>:48:                                     ; preds = %39, %44
  %49 = phi i32 [ %47, %44 ], [ -1, %39 ]
  call fastcc void @freeregs(%struct.FuncState* %0, i32 %40, i32 %49) #8
  %50 = load i32, i32* %6, align 4, !tbaa !16
  %51 = shl i32 %30, 7
  %52 = shl i32 %31, 16
  %53 = shl i32 %50, 24
  %54 = or i32 %29, %51
  %55 = or i32 %54, %52
  %56 = or i32 %55, %53
  %57 = or i32 %56, 32768
  %58 = call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %57) #8
  %59 = call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 2147483449) #8
  %60 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %61 = bitcast %union.anon.7* %60 to i32*
  store i32 %59, i32* %61, align 8, !tbaa !22
  store i32 14, i32* %32, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_fixline(%struct.FuncState* nocapture, i32) local_unnamed_addr #2 {
  tail call fastcc void @removelastlineinfo(%struct.FuncState* %0) #9
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %4 = load %struct.Proto*, %struct.Proto** %3, align 8, !tbaa !13
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %4, i32 %1) #9
  ret void
}

; Function Attrs: norecurse nounwind optsize uwtable
define internal fastcc void @removelastlineinfo(%struct.FuncState* nocapture) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %3 = load %struct.Proto*, %struct.Proto** %2, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %5 = load i32, i32* %4, align 8, !tbaa !9
  %6 = add nsw i32 %5, -1
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 19
  %8 = load i8*, i8** %7, align 8, !tbaa !45
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds i8, i8* %8, i64 %9
  %11 = load i8, i8* %10, align 1, !tbaa !22
  %12 = icmp eq i8 %11, -128
  br i1 %12, label %21, label %13

; <label>:13:                                     ; preds = %1
  %14 = sext i8 %11 to i32
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %16 = load i32, i32* %15, align 8, !tbaa !46
  %17 = sub nsw i32 %16, %14
  store i32 %17, i32* %15, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  %19 = load i8, i8* %18, align 1, !tbaa !47
  %20 = add i8 %19, -1
  store i8 %20, i8* %18, align 1, !tbaa !47
  br label %26

; <label>:21:                                     ; preds = %1
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %23 = load i32, i32* %22, align 4, !tbaa !48
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4, !tbaa !48
  %25 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  store i8 121, i8* %25, align 1, !tbaa !47
  br label %26

; <label>:26:                                     ; preds = %21, %13
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @savelineinfo(%struct.FuncState* nocapture, %struct.Proto*, i32) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %5 = load i32, i32* %4, align 8, !tbaa !46
  %6 = sub nsw i32 %2, %5
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %8 = load i32, i32* %7, align 8, !tbaa !9
  %9 = add nsw i32 %8, -1
  %10 = icmp sgt i32 %6, -1
  %11 = sub i32 0, %6
  %12 = select i1 %10, i32 %6, i32 %11
  %13 = icmp sgt i32 %12, 127
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  br i1 %13, label %22, label %15

; <label>:15:                                     ; preds = %3
  %16 = load i8, i8* %14, align 1, !tbaa !47
  %17 = add i8 %16, 1
  store i8 %17, i8* %14, align 1, !tbaa !47
  %18 = icmp ugt i8 %16, 120
  br i1 %18, label %22, label %19

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %21 = trunc i32 %6 to i8
  br label %40

; <label>:22:                                     ; preds = %3, %15
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %24 = load %struct.LexState*, %struct.LexState** %23, align 8, !tbaa !17
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %24, i64 0, i32 6
  %26 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !tbaa !18
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 20
  %28 = bitcast %struct.AbsLineInfo** %27 to i8**
  %29 = load i8*, i8** %28, align 8, !tbaa !49
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %31 = load i32, i32* %30, align 4, !tbaa !48
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 12
  %33 = tail call i8* @luaM_growaux_(%struct.lua_State* %26, i8* %29, i32 %31, i32* nonnull %32, i32 8, i32 2147483647, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #8
  %34 = bitcast i8* %33 to %struct.AbsLineInfo*
  store i8* %33, i8** %28, align 8, !tbaa !49
  %35 = load i32, i32* %30, align 4, !tbaa !48
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %34, i64 %36, i32 0
  store i32 %9, i32* %37, align 4, !tbaa !50
  %38 = add nsw i32 %35, 1
  store i32 %38, i32* %30, align 4, !tbaa !48
  %39 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %34, i64 %36, i32 1
  store i32 %2, i32* %39, align 4, !tbaa !52
  store i8 0, i8* %14, align 1, !tbaa !47
  br label %40

; <label>:40:                                     ; preds = %19, %22
  %41 = phi %struct.LexState** [ %20, %19 ], [ %23, %22 ]
  %42 = phi i8 [ %21, %19 ], [ -128, %22 ]
  %43 = load %struct.LexState*, %struct.LexState** %41, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.LexState, %struct.LexState* %43, i64 0, i32 6
  %45 = load %struct.lua_State*, %struct.lua_State** %44, align 8, !tbaa !18
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 19
  %47 = load i8*, i8** %46, align 8, !tbaa !45
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 9
  %49 = tail call i8* @luaM_growaux_(%struct.lua_State* %45, i8* %47, i32 %9, i32* nonnull %48, i32 1, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  store i8* %49, i8** %46, align 8, !tbaa !45
  %50 = sext i32 %9 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 %42, i8* %51, align 1, !tbaa !22
  store i32 %2, i32* %4, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_setlist(%struct.FuncState* nocapture, i32, i32, i32) local_unnamed_addr #2 {
  %5 = add nsw i32 %2, -1
  %6 = sdiv i32 %5, 50
  %7 = add nsw i32 %6, 1
  %8 = icmp eq i32 %3, -1
  %9 = select i1 %8, i32 0, i32 %3
  %10 = icmp slt i32 %2, 12751
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %4
  %12 = shl i32 %1, 7
  %13 = shl i32 %9, 16
  %14 = shl i32 %7, 24
  %15 = or i32 %12, %13
  %16 = or i32 %15, %14
  %17 = or i32 %16, 79
  %18 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %17) #8
  br label %33

; <label>:19:                                     ; preds = %4
  %20 = icmp slt i32 %2, 1677721551
  br i1 %20, label %21, label %30

; <label>:21:                                     ; preds = %19
  %22 = shl i32 %1, 7
  %23 = shl i32 %9, 16
  %24 = or i32 %22, %23
  %25 = or i32 %24, 79
  %26 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %25) #8
  %27 = shl i32 %7, 7
  %28 = or i32 %27, 83
  %29 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %28) #8
  br label %33

; <label>:30:                                     ; preds = %19
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %32 = load %struct.LexState*, %struct.LexState** %31, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)) #7
  unreachable

; <label>:33:                                     ; preds = %21, %11
  %34 = trunc i32 %1 to i8
  %35 = add i8 %34, 1
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  store i8 %35, i8* %36, align 4, !tbaa !20
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaK_finish(%struct.FuncState* nocapture readonly) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %3 = load %struct.Proto*, %struct.Proto** %2, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %5 = load i32, i32* %4, align 8, !tbaa !9
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %73

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 16
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 17
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 4
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 3
  br label %12

; <label>:12:                                     ; preds = %7, %68
  %13 = phi i64 [ 0, %7 ], [ %69, %68 ]
  %14 = load i32*, i32** %8, align 8, !tbaa !14
  %15 = getelementptr inbounds i32, i32* %14, i64 %13
  %16 = load i32, i32* %15, align 4, !tbaa !16
  %17 = trunc i32 %16 to i7
  switch i7 %17, label %68 [
    i7 -56, label %18
    i7 -55, label %18
    i7 -57, label %27
    i7 -58, label %27
    i7 57, label %50
  ]

; <label>:18:                                     ; preds = %12, %12
  %19 = load i8, i8* %9, align 2, !tbaa !53
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %18
  %22 = load i8, i8* %10, align 1, !tbaa !54
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %68, label %24

; <label>:24:                                     ; preds = %21, %18
  %25 = and i32 %16, -128
  %26 = or i32 %25, 71
  store i32 %26, i32* %15, align 4, !tbaa !16
  br label %27

; <label>:27:                                     ; preds = %12, %12, %24
  %28 = phi i32 [ %16, %12 ], [ %16, %12 ], [ %26, %24 ]
  %29 = load i8, i8* %9, align 2, !tbaa !53
  %30 = icmp eq i8 %29, 0
  %31 = load i8, i8* %10, align 1, !tbaa !54
  br i1 %30, label %32, label %36

; <label>:32:                                     ; preds = %27
  %33 = icmp eq i8 %31, 0
  br i1 %33, label %68, label %34

; <label>:34:                                     ; preds = %32
  %35 = and i32 %28, 16744447
  br label %39

; <label>:36:                                     ; preds = %27
  %37 = and i32 %28, 16744447
  %38 = icmp eq i8 %31, 0
  br i1 %38, label %44, label %39

; <label>:39:                                     ; preds = %34, %36
  %40 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %41 = load i8, i8* %11, align 2, !tbaa !55
  %42 = zext i8 %41 to i32
  %43 = add nuw nsw i32 %42, 1
  br label %44

; <label>:44:                                     ; preds = %36, %39
  %45 = phi i32 [ %40, %39 ], [ %37, %36 ]
  %46 = phi i32 [ %43, %39 ], [ 0, %36 ]
  %47 = shl i32 %46, 24
  %48 = or i32 %45, %47
  %49 = or i32 %48, 32768
  store i32 %49, i32* %15, align 4, !tbaa !16
  br label %68

; <label>:50:                                     ; preds = %12
  %51 = trunc i64 %13 to i32
  br label %52

; <label>:52:                                     ; preds = %60, %50
  %53 = phi i32 [ %51, %50 ], [ %63, %60 ]
  %54 = phi i32 [ 0, %50 ], [ %64, %60 ]
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %14, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !16
  %58 = and i32 %57, 127
  %59 = icmp eq i32 %58, 57
  br i1 %59, label %60, label %66

; <label>:60:                                     ; preds = %52
  %61 = lshr i32 %57, 7
  %62 = add i32 %53, -16777214
  %63 = add i32 %62, %61
  %64 = add nuw nsw i32 %54, 1
  %65 = icmp ult i32 %64, 100
  br i1 %65, label %52, label %66

; <label>:66:                                     ; preds = %52, %60
  %67 = phi i32 [ %53, %52 ], [ %63, %60 ]
  tail call fastcc void @fixjump(%struct.FuncState* %0, i32 %51, i32 %67) #9
  br label %68

; <label>:68:                                     ; preds = %21, %32, %12, %44, %66
  %69 = add nuw nsw i64 %13, 1
  %70 = load i32, i32* %4, align 8, !tbaa !9
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %12, label %73

; <label>:73:                                     ; preds = %68, %1
  ret void
}

; Function Attrs: norecurse nounwind optsize uwtable
define internal fastcc i32 @patchtestreg(%struct.FuncState* nocapture readonly, i32, i32) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %5 = load %struct.Proto*, %struct.Proto** %4, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 16
  %7 = load i32*, i32** %6, align 8, !tbaa !14
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %20

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i32, i32* %9, i64 -1
  %13 = load i32, i32* %12, align 4, !tbaa !16
  %14 = and i32 %13, 127
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1, !tbaa !22
  %18 = and i8 %17, 16
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %11, %3
  %21 = load i32, i32* %9, align 4, !tbaa !16
  br label %22

; <label>:22:                                     ; preds = %11, %20
  %23 = phi i32 [ %21, %20 ], [ %13, %11 ]
  %24 = phi i32* [ %9, %20 ], [ %12, %11 ]
  %25 = and i32 %23, 127
  %26 = icmp eq i32 %25, 68
  br i1 %26, label %27, label %46

; <label>:27:                                     ; preds = %22
  %28 = icmp eq i32 %2, 255
  br i1 %28, label %38, label %29

; <label>:29:                                     ; preds = %27
  %30 = lshr i32 %23, 16
  %31 = and i32 %30, 255
  %32 = icmp eq i32 %31, %2
  br i1 %32, label %38, label %33

; <label>:33:                                     ; preds = %29
  %34 = and i32 %23, -32641
  %35 = shl i32 %2, 7
  %36 = and i32 %35, 32640
  %37 = or i32 %34, %36
  br label %44

; <label>:38:                                     ; preds = %29, %27
  %39 = lshr i32 %23, 9
  %40 = and i32 %39, 32640
  %41 = and i32 %23, 32768
  %42 = or i32 %41, %40
  %43 = or i32 %42, 67
  br label %44

; <label>:44:                                     ; preds = %38, %33
  %45 = phi i32 [ %43, %38 ], [ %37, %33 ]
  store i32 %45, i32* %24, align 4, !tbaa !16
  br label %46

; <label>:46:                                     ; preds = %22, %44
  %47 = phi i32 [ 1, %44 ], [ 0, %22 ]
  ret i32 %47
}

; Function Attrs: optsize
declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32, i32*, i32, i32, i8*) local_unnamed_addr #6

; Function Attrs: optsize
declare hidden %struct.TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.TValue*) local_unnamed_addr #6

; Function Attrs: optsize
declare hidden i32 @luaV_equalobj(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #6

; Function Attrs: optsize
declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @discharge2reg(%struct.FuncState* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  %4 = alloca %struct.TValue, align 8
  %5 = alloca i64, align 8
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #9
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !34
  switch i32 %7, label %77 [
    i32 1, label %8
    i32 3, label %9
    i32 2, label %9
    i32 4, label %17
    i32 5, label %21
    i32 6, label %46
    i32 15, label %49
    i32 7, label %64
  ]

; <label>:8:                                      ; preds = %3
  tail call void @luaK_nil(%struct.FuncState* %0, i32 %2, i32 1) #9
  br label %74

; <label>:9:                                      ; preds = %3, %3
  %10 = icmp eq i32 %7, 2
  %11 = zext i1 %10 to i32
  %12 = shl i32 %2, 7
  %13 = shl nuw nsw i32 %11, 16
  %14 = or i32 %12, %13
  %15 = or i32 %14, 5
  %16 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %15) #8
  br label %74

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %19 = bitcast %union.anon.7* %18 to i32*
  %20 = load i32, i32* %19, align 8, !tbaa !22
  tail call fastcc void @luaK_codek(%struct.FuncState* %0, i32 %2, i32 %20) #9
  br label %74

; <label>:21:                                     ; preds = %3
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %23 = bitcast %union.anon.7* %22 to double*
  %24 = load double, double* %23, align 8, !tbaa !22
  %25 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #10
  %26 = call i32 @luaV_flttointeger(double %24, i64* nonnull %5, i32 0) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

; <label>:28:                                     ; preds = %21
  %29 = load i64, i64* %5, align 8, !tbaa !39
  %30 = add i64 %29, 65535
  %31 = icmp ugt i64 %30, 131071
  br i1 %31, label %40, label %32

; <label>:32:                                     ; preds = %28
  %33 = trunc i64 %29 to i32
  %34 = shl i32 %2, 7
  %35 = shl i32 %33, 15
  %36 = add i32 %35, 2147450880
  %37 = or i32 %34, %36
  %38 = or i32 %37, 2
  %39 = call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %38) #8
  br label %45

; <label>:40:                                     ; preds = %28, %21
  %41 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %41) #10
  %42 = bitcast %struct.TValue* %4 to double*
  store double %24, double* %42, align 8, !tbaa !22
  %43 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 19, i8* %43, align 8, !tbaa !25
  %44 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %4, %struct.TValue* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %41) #10
  call fastcc void @luaK_codek(%struct.FuncState* %0, i32 %2, i32 %44) #8
  br label %45

; <label>:45:                                     ; preds = %32, %40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #10
  br label %74

; <label>:46:                                     ; preds = %3
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  %48 = load i64, i64* %47, align 8, !tbaa !22
  tail call void @luaK_int(%struct.FuncState* %0, i32 %2, i64 %48) #9
  br label %74

; <label>:49:                                     ; preds = %3
  %50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %51 = load %struct.Proto*, %struct.Proto** %50, align 8, !tbaa !13
  %52 = getelementptr inbounds %struct.Proto, %struct.Proto* %51, i64 0, i32 16
  %53 = load i32*, i32** %52, align 8, !tbaa !14
  %54 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %55 = bitcast %union.anon.7* %54 to i32*
  %56 = load i32, i32* %55, align 8, !tbaa !22
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !16
  %60 = and i32 %59, -32641
  %61 = shl i32 %2, 7
  %62 = and i32 %61, 32640
  %63 = or i32 %60, %62
  store i32 %63, i32* %58, align 4, !tbaa !16
  br label %74

; <label>:64:                                     ; preds = %3
  %65 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %66 = bitcast %union.anon.7* %65 to i32*
  %67 = load i32, i32* %66, align 8, !tbaa !22
  %68 = icmp eq i32 %67, %2
  br i1 %68, label %74, label %69

; <label>:69:                                     ; preds = %64
  %70 = shl i32 %2, 7
  %71 = shl i32 %67, 16
  %72 = or i32 %71, %70
  %73 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %72) #8
  br label %74

; <label>:74:                                     ; preds = %64, %69, %49, %46, %45, %17, %9, %8
  %75 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %76 = bitcast %union.anon.7* %75 to i32*
  store i32 %2, i32* %76, align 8, !tbaa !22
  store i32 7, i32* %6, align 8, !tbaa !34
  br label %77

; <label>:77:                                     ; preds = %3, %74
  ret void
}

; Function Attrs: norecurse nounwind optsize readonly uwtable
define internal fastcc i32 @need_value(%struct.FuncState* nocapture readonly, i32) unnamed_addr #5 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %38, label %4

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %6 = load %struct.Proto*, %struct.Proto** %5, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i64 0, i32 16
  %8 = load i32*, i32** %7, align 8, !tbaa !14
  br label %9

; <label>:9:                                      ; preds = %4, %29
  %10 = phi i32 [ %1, %4 ], [ %36, %29 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %14, label %23

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds i32, i32* %12, i64 -1
  %16 = load i32, i32* %15, align 4, !tbaa !16
  %17 = and i32 %16, 127
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1, !tbaa !22
  %21 = and i8 %20, 16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %14, %9
  %24 = load i32, i32* %12, align 4, !tbaa !16
  br label %25

; <label>:25:                                     ; preds = %14, %23
  %26 = phi i32 [ %24, %23 ], [ %16, %14 ]
  %27 = and i32 %26, 127
  %28 = icmp eq i32 %27, 68
  br i1 %28, label %29, label %38

; <label>:29:                                     ; preds = %25
  %30 = load i32, i32* %12, align 4, !tbaa !16
  %31 = lshr i32 %30, 7
  %32 = add nsw i32 %31, -16777215
  %33 = icmp eq i32 %32, -1
  %34 = add nsw i32 %10, 1
  %35 = add nsw i32 %34, %32
  %36 = select i1 %33, i32 -1, i32 %35
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %9

; <label>:38:                                     ; preds = %25, %29, %2
  %39 = phi i32 [ 0, %2 ], [ 0, %29 ], [ 1, %25 ]
  ret i32 %39
}

; Function Attrs: optsize
declare hidden i32 @luaV_flttointeger(double, i64*, i32) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @discharge2anyreg(%struct.FuncState* nocapture, %struct.expdesc* nocapture) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %12, label %6

; <label>:6:                                      ; preds = %2
  tail call void @luaK_checkstack(%struct.FuncState* %0, i32 1) #8
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %8 = load i8, i8* %7, align 4, !tbaa !20
  %9 = add i8 %8, 1
  store i8 %9, i8* %7, align 4, !tbaa !20
  %10 = zext i8 %9 to i32
  %11 = add nsw i32 %10, -1
  tail call fastcc void @discharge2reg(%struct.FuncState* %0, %struct.expdesc* nonnull %1, i32 %11) #9
  br label %12

; <label>:12:                                     ; preds = %2, %6
  ret void
}

; Function Attrs: optsize
declare hidden i32 @luaO_rawarith(%struct.lua_State*, i32, %struct.TValue*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #6

; Function Attrs: optsize
declare hidden i32 @luaV_tointegerns(%struct.TValue*, i64*, i32) local_unnamed_addr #6

; Function Attrs: norecurse nounwind optsize uwtable
define internal fastcc void @removevalues(%struct.FuncState* nocapture readonly, i32) unnamed_addr #4 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %22, label %4

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  br label %6

; <label>:6:                                      ; preds = %4, %6
  %7 = phi i32 [ %1, %4 ], [ %20, %6 ]
  %8 = tail call fastcc i32 @patchtestreg(%struct.FuncState* %0, i32 %7, i32 255) #9
  %9 = load %struct.Proto*, %struct.Proto** %5, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 16
  %11 = load i32*, i32** %10, align 8, !tbaa !14
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !16
  %15 = lshr i32 %14, 7
  %16 = add nsw i32 %15, -16777215
  %17 = icmp eq i32 %16, -1
  %18 = add nsw i32 %7, 1
  %19 = add nsw i32 %18, %16
  %20 = select i1 %17, i32 -1, i32 %19
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %6

; <label>:22:                                     ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @finishbinexpval(%struct.FuncState* nocapture, %struct.expdesc* nocapture, %struct.expdesc* nocapture readonly, i32, i32, i32, i32) unnamed_addr #2 {
  %8 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %1) #9
  %9 = shl i32 %8, 16
  %10 = shl i32 %4, 24
  %11 = shl i32 %5, 15
  %12 = or i32 %10, %3
  %13 = or i32 %12, %11
  %14 = or i32 %13, %9
  %15 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %14) #8
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %17 = load i32, i32* %16, align 8, !tbaa !34
  %18 = icmp eq i32 %17, 7
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %21 = bitcast %union.anon.7* %20 to i32*
  %22 = load i32, i32* %21, align 8, !tbaa !22
  br label %23

; <label>:23:                                     ; preds = %19, %7
  %24 = phi i32 [ %22, %19 ], [ -1, %7 ]
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %26 = load i32, i32* %25, align 8, !tbaa !34
  %27 = icmp eq i32 %26, 7
  br i1 %27, label %28, label %32

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %30 = bitcast %union.anon.7* %29 to i32*
  %31 = load i32, i32* %30, align 8, !tbaa !22
  br label %32

; <label>:32:                                     ; preds = %23, %28
  %33 = phi i32 [ %31, %28 ], [ -1, %23 ]
  tail call fastcc void @freeregs(%struct.FuncState* %0, i32 %24, i32 %33) #8
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %35 = bitcast %union.anon.7* %34 to i32*
  store i32 %15, i32* %35, align 8, !tbaa !22
  store i32 15, i32* %16, align 8, !tbaa !34
  tail call fastcc void @removelastlineinfo(%struct.FuncState* %0) #8
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %37 = load %struct.Proto*, %struct.Proto** %36, align 8, !tbaa !13
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %37, i32 %6) #8
  ret void
}

attributes #0 = { noreturn nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !4, i64 16}
!3 = !{!"LexState", !4, i64 0, !4, i64 4, !4, i64 8, !7, i64 16, !7, i64 32, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"Token", !4, i64 0, !5, i64 8}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !4, i64 32}
!10 = !{!"FuncState", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !11, i64 64, !5, i64 66, !5, i64 67, !5, i64 68, !5, i64 69, !5, i64 70}
!11 = !{!"short", !5, i64 0}
!12 = !{!10, !4, i64 36}
!13 = !{!10, !8, i64 0}
!14 = !{!15, !8, i64 64}
!15 = !{!"Proto", !8, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120}
!16 = !{!4, !4, i64 0}
!17 = !{!10, !8, i64 16}
!18 = !{!3, !8, i64 56}
!19 = !{!3, !4, i64 8}
!20 = !{!10, !5, i64 68}
!21 = !{!15, !5, i64 12}
!22 = !{!5, !5, i64 0}
!23 = !{!24, !5, i64 8}
!24 = !{!"TString", !8, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !4, i64 12, !5, i64 16}
!25 = !{!26, !5, i64 8}
!26 = !{!"TValue", !5, i64 0, !5, i64 8}
!27 = !{!3, !8, i64 80}
!28 = !{!10, !4, i64 44}
!29 = !{!15, !8, i64 56}
!30 = !{!15, !4, i64 20}
!31 = !{!15, !5, i64 9}
!32 = !{!33, !5, i64 9}
!33 = !{!"GCObject", !8, i64 0, !5, i64 8, !5, i64 9}
!34 = !{!35, !5, i64 0}
!35 = !{!"expdesc", !5, i64 0, !5, i64 8, !4, i64 16, !4, i64 20}
!36 = !{!10, !5, i64 66}
!37 = !{!35, !4, i64 16}
!38 = !{!35, !4, i64 20}
!39 = !{!40, !40, i64 0}
!40 = !{!"long long", !5, i64 0}
!41 = !{i64 0, i64 4, !22, i64 8, i64 8, !39, i64 8, i64 8, !42, i64 8, i64 4, !16, i64 8, i64 2, !44, i64 10, i64 1, !22, i64 16, i64 4, !16, i64 20, i64 4, !16}
!42 = !{!43, !43, i64 0}
!43 = !{!"double", !5, i64 0}
!44 = !{!11, !11, i64 0}
!45 = !{!15, !8, i64 88}
!46 = !{!10, !4, i64 40}
!47 = !{!10, !5, i64 69}
!48 = !{!10, !4, i64 52}
!49 = !{!15, !8, i64 96}
!50 = !{!51, !4, i64 0}
!51 = !{!"AbsLineInfo", !4, i64 0, !4, i64 4}
!52 = !{!51, !4, i64 4}
!53 = !{!10, !5, i64 70}
!54 = !{!15, !5, i64 11}
!55 = !{!15, !5, i64 10}
