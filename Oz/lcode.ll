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
@previousinstruction.invalidinstruction = internal constant i32 -1, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"control structure too long\00", align 1
@luaP_opmodes = external hidden local_unnamed_addr constant [84 x i8], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"opcodes\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"constants\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"lines\00", align 1

; Function Attrs: minsize noreturn nounwind optsize uwtable
define hidden void @luaK_semerror(%struct.LexState*, i8*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  store i32 0, i32* %3, align 8, !tbaa !2
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* %1) #7
  unreachable
}

; Function Attrs: minsize noreturn optsize
declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) local_unnamed_addr #1

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_nil(%struct.FuncState* nocapture, i32, i32) local_unnamed_addr #2 {
  %4 = add nsw i32 %2, %1
  %5 = add i32 %4, 255
  %6 = tail call fastcc i32* @previousinstruction(%struct.FuncState* %0) #8
  %7 = load i32, i32* %6, align 4, !tbaa !9
  %8 = and i32 %7, 127
  %9 = icmp eq i32 %8, 6
  br i1 %9, label %10, label %37

; <label>:10:                                     ; preds = %3
  %11 = lshr i32 %7, 7
  %12 = and i32 %11, 255
  %13 = lshr i32 %7, 16
  %14 = and i32 %13, 255
  %15 = add nuw nsw i32 %12, %14
  %16 = icmp sgt i32 %12, %1
  %17 = add nuw nsw i32 %15, 1
  %18 = icmp slt i32 %17, %1
  %19 = or i1 %16, %18
  br i1 %19, label %20, label %24

; <label>:20:                                     ; preds = %10
  %21 = icmp slt i32 %12, %1
  %22 = icmp sgt i32 %12, %4
  %23 = or i1 %21, %22
  br i1 %23, label %37, label %24

; <label>:24:                                     ; preds = %10, %20
  %25 = icmp slt i32 %12, %1
  %26 = select i1 %25, i32 %12, i32 %1
  %27 = icmp slt i32 %15, %4
  %28 = select i1 %27, i32 %5, i32 %15
  %29 = and i32 %7, -16744321
  %30 = shl i32 %26, 7
  %31 = and i32 %30, 32640
  %32 = or i32 %31, %29
  %33 = sub i32 %28, %26
  %34 = shl i32 %33, 16
  %35 = and i32 %34, 16711680
  %36 = or i32 %32, %35
  store i32 %36, i32* %6, align 4, !tbaa !9
  br label %44

; <label>:37:                                     ; preds = %20, %3
  %38 = shl i32 %1, 7
  %39 = shl i32 %2, 16
  %40 = add i32 %39, -65536
  %41 = or i32 %38, %40
  %42 = or i32 %41, 6
  %43 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %42) #9
  br label %44

; <label>:44:                                     ; preds = %24, %37
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
define internal fastcc i32* @previousinstruction(%struct.FuncState* nocapture readonly) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  %5 = load i32, i32* %4, align 4, !tbaa !13
  %6 = icmp sgt i32 %3, %5
  br i1 %6, label %7, label %15

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 16
  %11 = load i32*, i32** %10, align 8, !tbaa !15
  %12 = add nsw i32 %3, -1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  br label %15

; <label>:15:                                     ; preds = %1, %7
  %16 = phi i32* [ %14, %7 ], [ @previousinstruction.invalidinstruction, %1 ]
  ret i32* %16
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: minsize nounwind optsize uwtable
define hidden i32 @luaK_codeABCk(%struct.FuncState* nocapture, i32, i32, i32, i32, i32) local_unnamed_addr #2 {
  %7 = shl i32 %2, 7
  %8 = or i32 %7, %1
  %9 = shl i32 %3, 16
  %10 = or i32 %8, %9
  %11 = shl i32 %4, 24
  %12 = or i32 %10, %11
  %13 = shl i32 %5, 15
  %14 = or i32 %12, %13
  %15 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %14) #8
  ret i32 %15
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_concat(%struct.FuncState* nocapture readonly, i32* nocapture, i32) local_unnamed_addr #2 {
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %15, label %5

; <label>:5:                                      ; preds = %3
  %6 = load i32, i32* %1, align 4, !tbaa !9
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %5
  br label %10

; <label>:9:                                      ; preds = %5
  store i32 %2, i32* %1, align 4, !tbaa !9
  br label %15

; <label>:10:                                     ; preds = %8, %10
  %11 = phi i32 [ %12, %10 ], [ %6, %8 ]
  %12 = tail call fastcc i32 @getjump(%struct.FuncState* %0, i32 %11) #8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %10

; <label>:14:                                     ; preds = %10
  tail call fastcc void @fixjump(%struct.FuncState* %0, i32 %11, i32 %2) #8
  br label %15

; <label>:15:                                     ; preds = %9, %14, %3
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
define internal fastcc i32 @getjump(%struct.FuncState* nocapture readonly, i32) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %4 = load %struct.Proto*, %struct.Proto** %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i64 0, i32 16
  %6 = load i32*, i32** %5, align 8, !tbaa !15
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !9
  %10 = lshr i32 %9, 7
  %11 = add nsw i32 %10, -16777215
  %12 = icmp eq i32 %11, -1
  %13 = add nsw i32 %1, 1
  %14 = add nsw i32 %13, %11
  %15 = select i1 %12, i32 -1, i32 %14
  ret i32 %15
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @fixjump(%struct.FuncState* nocapture readonly, i32, i32) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %5 = load %struct.Proto*, %struct.Proto** %4, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 16
  %7 = load i32*, i32** %6, align 8, !tbaa !15
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
  %18 = load i32, i32* %9, align 4, !tbaa !9
  %19 = and i32 %18, 127
  %20 = shl i32 %11, 7
  %21 = add i32 %20, 2147483520
  %22 = or i32 %19, %21
  store i32 %22, i32* %9, align 4, !tbaa !9
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden i32 @luaK_jump(%struct.FuncState* nocapture) local_unnamed_addr #2 {
  %2 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 2147483449) #9
  ret i32 %2
}

; Function Attrs: minsize nounwind optsize uwtable
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
  %13 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %12) #9
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define hidden i32 @luaK_getlabel(%struct.FuncState* nocapture) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %3, i32* %4, align 4, !tbaa !13
  ret i32 %3
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_patchlist(%struct.FuncState* nocapture readonly, i32, i32) local_unnamed_addr #2 {
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %1, i32 %2, i32 255, i32 %2) #8
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @patchlistaux(%struct.FuncState* nocapture readonly, i32, i32, i32, i32) unnamed_addr #2 {
  br label %6

; <label>:6:                                      ; preds = %15, %5
  %7 = phi i32 [ %1, %5 ], [ %10, %15 ]
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %16, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call fastcc i32 @getjump(%struct.FuncState* %0, i32 %7) #8
  %11 = tail call fastcc i32 @patchtestreg(%struct.FuncState* %0, i32 %7, i32 %3) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %9
  tail call fastcc void @fixjump(%struct.FuncState* %0, i32 %7, i32 %2) #8
  br label %15

; <label>:14:                                     ; preds = %9
  tail call fastcc void @fixjump(%struct.FuncState* %0, i32 %7, i32 %4) #8
  br label %15

; <label>:15:                                     ; preds = %14, %13
  br label %6

; <label>:16:                                     ; preds = %6
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_patchtohere(%struct.FuncState* nocapture, i32) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %4 = load i32, i32* %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %4, i32* %5, align 4, !tbaa !13
  tail call void @luaK_patchlist(%struct.FuncState* %0, i32 %1, i32 %4) #8
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @luaK_code(%struct.FuncState* nocapture, i32) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %4 = load %struct.Proto*, %struct.Proto** %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %6 = load %struct.LexState*, %struct.LexState** %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i64 0, i32 6
  %8 = load %struct.lua_State*, %struct.lua_State** %7, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i64 0, i32 16
  %10 = bitcast i32** %9 to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %13 = load i32, i32* %12, align 8, !tbaa !10
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i64 0, i32 8
  %15 = tail call i8* @luaM_growaux_(%struct.lua_State* %8, i8* %11, i32 %13, i32* nonnull %14, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #9
  %16 = bitcast i8* %15 to i32*
  store i8* %15, i8** %10, align 8, !tbaa !15
  %17 = load i32, i32* %12, align 8, !tbaa !10
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %12, align 8, !tbaa !10
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32 %1, i32* %20, align 4, !tbaa !9
  %21 = load %struct.LexState*, %struct.LexState** %5, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %21, i64 0, i32 2
  %23 = load i32, i32* %22, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %4, i32 %23) #8
  %24 = load i32, i32* %12, align 8, !tbaa !10
  %25 = add nsw i32 %24, -1
  ret i32 %25
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden i32 @luaK_codeABx(%struct.FuncState* nocapture, i32, i32, i32) local_unnamed_addr #2 {
  %5 = shl i32 %2, 7
  %6 = or i32 %5, %1
  %7 = shl i32 %3, 15
  %8 = or i32 %6, %7
  %9 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %8) #8
  ret i32 %9
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden i32 @luaK_codeAsBx(%struct.FuncState* nocapture, i32, i32, i32) local_unnamed_addr #2 {
  %5 = shl i32 %2, 7
  %6 = or i32 %5, %1
  %7 = shl i32 %3, 15
  %8 = add i32 %7, 2147450880
  %9 = or i32 %6, %8
  %10 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %9) #8
  ret i32 %10
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_checkstack(%struct.FuncState* nocapture readonly, i32) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %4 = load i8, i8* %3, align 4, !tbaa !20
  %5 = zext i8 %4 to i32
  %6 = add nsw i32 %5, %1
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !tbaa !14
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

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_reserveregs(%struct.FuncState* nocapture, i32) local_unnamed_addr #2 {
  tail call void @luaK_checkstack(%struct.FuncState* %0, i32 %1) #8
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %4 = load i8, i8* %3, align 4, !tbaa !20
  %5 = trunc i32 %1 to i8
  %6 = add i8 %4, %5
  store i8 %6, i8* %3, align 4, !tbaa !20
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
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
  %10 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %3, %struct.TValue* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #10
  ret i32 %10
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @addk(%struct.FuncState* nocapture, %struct.TValue*, %struct.TValue*) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %5 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 6
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 9
  %11 = load %struct.Table*, %struct.Table** %10, align 8, !tbaa !27
  %12 = tail call %struct.TValue* @luaH_set(%struct.lua_State* %7, %struct.Table* %11, %struct.TValue* %1) #9
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
  %40 = tail call i32 @luaV_equalobj(%struct.lua_State* null, %struct.TValue* %39, %struct.TValue* nonnull %2) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %90

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
  %52 = tail call i8* @luaM_growaux_(%struct.lua_State* %7, i8* %51, i32 %47, i32* nonnull %45, i32 16, i32 33554431, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)) #9
  store i8* %52, i8** %50, align 8, !tbaa !29
  %53 = load i32, i32* %45, align 4, !tbaa !30
  %54 = bitcast i8* %52 to %struct.TValue*
  %55 = sext i32 %46 to i64
  %56 = sext i32 %53 to i64
  br label %57

; <label>:57:                                     ; preds = %60, %42
  %58 = phi i64 [ %61, %60 ], [ %55, %42 ]
  %59 = icmp slt i64 %58, %56
  br i1 %59, label %60, label %63

; <label>:60:                                     ; preds = %57
  %61 = add nsw i64 %58, 1
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %54, i64 %58, i32 1
  store i8 0, i8* %62, align 8, !tbaa !25
  br label %57

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds %struct.TValue, %struct.TValue* %54, i64 %48
  %65 = bitcast %struct.TValue* %2 to i64*
  %66 = bitcast %struct.TValue* %64 to i64*
  %67 = load i64, i64* %65, align 8
  store i64 %67, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %69 = load i8, i8* %68, align 8, !tbaa !25
  %70 = getelementptr inbounds %struct.TValue, %struct.TValue* %54, i64 %48, i32 1
  store i8 %69, i8* %70, align 8, !tbaa !25
  %71 = load i32, i32* %44, align 4, !tbaa !28
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %44, align 4, !tbaa !28
  %73 = load i8, i8* %68, align 8, !tbaa !25
  %74 = and i8 %73, 64
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %90, label %76

; <label>:76:                                     ; preds = %63
  %77 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 2
  %78 = load i8, i8* %77, align 1, !tbaa !31
  %79 = and i8 %78, 32
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %90, label %81

; <label>:81:                                     ; preds = %76
  %82 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 0, i32 0
  %83 = load %struct.GCObject*, %struct.GCObject** %82, align 8, !tbaa !22
  %84 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %83, i64 0, i32 2
  %85 = load i8, i8* %84, align 1, !tbaa !32
  %86 = and i8 %85, 24
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %88

; <label>:88:                                     ; preds = %81
  %89 = bitcast %struct.Proto* %9 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* %7, %struct.GCObject* %89, %struct.GCObject* %83) #9
  br label %90

; <label>:90:                                     ; preds = %88, %63, %76, %81, %38
  %91 = phi i32 [ %22, %38 ], [ %47, %81 ], [ %47, %76 ], [ %47, %63 ], [ %47, %88 ]
  ret i32 %91
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_int(%struct.FuncState* nocapture, i32, i64) local_unnamed_addr #2 {
  %4 = add i64 %2, 65535
  %5 = icmp ugt i64 %4, 131071
  br i1 %5, label %9, label %6

; <label>:6:                                      ; preds = %3
  %7 = trunc i64 %2 to i32
  %8 = tail call i32 @luaK_codeAsBx(%struct.FuncState* %0, i32 1, i32 %1, i32 %7) #8
  br label %11

; <label>:9:                                      ; preds = %3
  %10 = tail call fastcc i32 @luaK_intK(%struct.FuncState* %0, i64 %2) #8
  tail call fastcc void @luaK_codek(%struct.FuncState* %0, i32 %1, i32 %10) #8
  br label %11

; <label>:11:                                     ; preds = %9, %6
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @luaK_codek(%struct.FuncState* nocapture, i32, i32) unnamed_addr #2 {
  %4 = icmp slt i32 %2, 131072
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @luaK_codeABx(%struct.FuncState* %0, i32 3, i32 %1, i32 %2) #8
  br label %11

; <label>:7:                                      ; preds = %3
  %8 = shl i32 %1, 7
  %9 = or i32 %8, 4
  %10 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %9) #9
  tail call fastcc void @codeextraarg(%struct.FuncState* %0, i32 %2) #8
  br label %11

; <label>:11:                                     ; preds = %7, %5
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @luaK_intK(%struct.FuncState* nocapture, i64) unnamed_addr #2 {
  %3 = alloca %struct.TValue, align 8
  %4 = alloca %struct.TValue, align 8
  %5 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #10
  %6 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #10
  %7 = inttoptr i64 %1 to i8*
  %8 = bitcast %struct.TValue* %3 to i8**
  store i8* %7, i8** %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 2, i8* %9, align 8, !tbaa !25
  %10 = bitcast %struct.TValue* %4 to i64*
  store i64 %1, i64* %10, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 35, i8* %11, align 8, !tbaa !25
  %12 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %3, %struct.TValue* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #10
  ret i32 %12
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_setreturns(%struct.FuncState* nocapture, %struct.expdesc* nocapture readonly, i32) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %5 = load %struct.Proto*, %struct.Proto** %4, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 16
  %7 = load i32*, i32** %6, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %9 = bitcast %union.anon.7* %8 to i32*
  %10 = load i32, i32* %9, align 8, !tbaa !22
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %7, i64 %11
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %14 = load i32, i32* %13, align 8, !tbaa !34
  switch i32 %14, label %32 [
    i32 16, label %15
    i32 17, label %21
  ]

; <label>:15:                                     ; preds = %3
  %16 = load i32, i32* %12, align 4, !tbaa !9
  %17 = and i32 %16, 16777215
  %18 = shl i32 %2, 24
  %19 = add i32 %18, 16777216
  %20 = or i32 %17, %19
  store i32 %20, i32* %12, align 4, !tbaa !9
  br label %32

; <label>:21:                                     ; preds = %3
  %22 = load i32, i32* %12, align 4, !tbaa !9
  %23 = and i32 %22, 16744575
  %24 = shl i32 %2, 24
  %25 = add i32 %24, 16777216
  %26 = or i32 %23, %25
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %28 = load i8, i8* %27, align 4, !tbaa !20
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 7
  %31 = or i32 %30, %26
  store i32 %31, i32* %12, align 4, !tbaa !9
  tail call void @luaK_reserveregs(%struct.FuncState* nonnull %0, i32 1) #8
  br label %32

; <label>:32:                                     ; preds = %3, %21, %15
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define hidden void @luaK_setoneret(%struct.FuncState* nocapture readonly, %struct.expdesc* nocapture) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !34
  switch i32 %4, label %31 [
    i32 16, label %5
    i32 17, label %18
  ]

; <label>:5:                                      ; preds = %2
  store i32 7, i32* %3, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 16
  %9 = load i32*, i32** %8, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %11 = bitcast %union.anon.7* %10 to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !22
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %9, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !9
  %16 = lshr i32 %15, 7
  %17 = and i32 %16, 255
  store i32 %17, i32* %11, align 8, !tbaa !22
  br label %31

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %20 = load %struct.Proto*, %struct.Proto** %19, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i64 0, i32 16
  %22 = load i32*, i32** %21, align 8, !tbaa !15
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %24 = bitcast %union.anon.7* %23 to i32*
  %25 = load i32, i32* %24, align 8, !tbaa !22
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !9
  %29 = and i32 %28, 16777215
  %30 = or i32 %29, 33554432
  store i32 %30, i32* %27, align 4, !tbaa !9
  store i32 15, i32* %3, align 8, !tbaa !34
  br label %31

; <label>:31:                                     ; preds = %2, %18, %5
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
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
  %12 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %11) #9
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
  %26 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %25) #9
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
  %51 = tail call fastcc i32 @luaK_code(%struct.FuncState* nonnull %0, i32 %50) #9
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
  %76 = tail call fastcc i32 @luaK_code(%struct.FuncState* nonnull %0, i32 %75) #9
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
  tail call fastcc void @freeregs(%struct.FuncState* %0, i32 %83, i32 %86) #8
  %87 = load i8, i8* %81, align 2, !tbaa !22
  %88 = zext i8 %87 to i32
  %89 = load i16, i16* %84, align 8, !tbaa !22
  %90 = zext i16 %89 to i32
  %91 = shl nuw nsw i32 %88, 16
  %92 = shl i32 %90, 24
  %93 = or i32 %91, %92
  %94 = or i32 %93, 10
  %95 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %94) #9
  %96 = bitcast %union.anon.7* %79 to i32*
  store i32 %95, i32* %96, align 8, !tbaa !22
  store i32 15, i32* %3, align 8, !tbaa !34
  br label %98

; <label>:97:                                     ; preds = %2, %2
  tail call void @luaK_setoneret(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #8
  br label %98

; <label>:98:                                     ; preds = %2, %97, %78, %66, %41, %13, %6, %5
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc void @freeregs(%struct.FuncState* nocapture, i32, i32) unnamed_addr #5 {
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

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_exp2nextreg(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #8
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* %1) #8
  tail call void @luaK_reserveregs(%struct.FuncState* %0, i32 1) #8
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %4 = load i8, i8* %3, align 4, !tbaa !20
  %5 = zext i8 %4 to i32
  %6 = add nsw i32 %5, -1
  tail call fastcc void @exp2reg(%struct.FuncState* %0, %struct.expdesc* %1, i32 %6) #8
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc void @freeexp(%struct.FuncState* nocapture, %struct.expdesc* nocapture readonly) unnamed_addr #5 {
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

; <label>:18:                                     ; preds = %14, %6, %2
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @exp2reg(%struct.FuncState* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  tail call fastcc void @discharge2reg(%struct.FuncState* %0, %struct.expdesc* %1, i32 %2) #8
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 14
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  br i1 %6, label %8, label %12

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %10 = bitcast %union.anon.7* %9 to i32*
  %11 = load i32, i32* %10, align 8, !tbaa !22
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %7, i32 %11) #8
  br label %12

; <label>:12:                                     ; preds = %3, %8
  %13 = load i32, i32* %7, align 8, !tbaa !37
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %15 = load i32, i32* %14, align 4, !tbaa !38
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %41, label %17

; <label>:17:                                     ; preds = %12
  %18 = tail call fastcc i32 @need_value(%struct.FuncState* %0, i32 %13) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %17
  %21 = tail call fastcc i32 @need_value(%struct.FuncState* %0, i32 %15) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

; <label>:23:                                     ; preds = %20, %17
  %24 = load i32, i32* %4, align 8, !tbaa !34
  %25 = icmp eq i32 %24, 14
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 @luaK_jump(%struct.FuncState* %0) #8
  br label %28

; <label>:28:                                     ; preds = %23, %26
  %29 = phi i32 [ %27, %26 ], [ -1, %23 ]
  %30 = tail call fastcc i32 @code_loadbool(%struct.FuncState* %0, i32 %2, i32 0, i32 1) #8
  %31 = tail call fastcc i32 @code_loadbool(%struct.FuncState* %0, i32 %2, i32 1, i32 0) #8
  tail call void @luaK_patchtohere(%struct.FuncState* %0, i32 %29) #8
  %32 = load i32, i32* %14, align 4, !tbaa !38
  br label %33

; <label>:33:                                     ; preds = %20, %28
  %34 = phi i32 [ %32, %28 ], [ %15, %20 ]
  %35 = phi i32 [ %31, %28 ], [ -1, %20 ]
  %36 = phi i32 [ %30, %28 ], [ -1, %20 ]
  %37 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %38 = load i32, i32* %37, align 8, !tbaa !10
  %39 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %38, i32* %39, align 4, !tbaa !13
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %34, i32 %38, i32 %2, i32 %36) #8
  %40 = load i32, i32* %7, align 8, !tbaa !37
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %40, i32 %38, i32 %2, i32 %35) #8
  br label %41

; <label>:41:                                     ; preds = %12, %33
  store i32 -1, i32* %7, align 8, !tbaa !37
  store i32 -1, i32* %14, align 4, !tbaa !38
  %42 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %43 = bitcast %union.anon.7* %42 to i32*
  store i32 %2, i32* %43, align 8, !tbaa !22
  store i32 7, i32* %4, align 8, !tbaa !34
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden i32 @luaK_exp2anyreg(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #8
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
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %17) #8
  br label %26

; <label>:24:                                     ; preds = %6, %18
  %25 = phi i32* [ %8, %6 ], [ %16, %18 ]
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #8
  br label %26

; <label>:26:                                     ; preds = %23, %24
  %27 = phi i32* [ %25, %24 ], [ %16, %23 ]
  %28 = load i32, i32* %27, align 8, !tbaa !22
  br label %29

; <label>:29:                                     ; preds = %26, %9
  %30 = phi i32 [ %17, %9 ], [ %28, %26 ]
  ret i32 %30
}

; Function Attrs: minsize nounwind optsize uwtable
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
  %13 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #8
  br label %14

; <label>:14:                                     ; preds = %6, %12
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_exp2val(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %4 = load i32, i32* %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %6 = load i32, i32* %5, align 4, !tbaa !38
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #8
  br label %11

; <label>:10:                                     ; preds = %2
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #8
  br label %11

; <label>:11:                                     ; preds = %10, %8
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden i32 @luaK_exp2RK(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %3 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* %1) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %1) #8
  br label %7

; <label>:7:                                      ; preds = %2, %5
  %8 = phi i32 [ 0, %5 ], [ 1, %2 ]
  ret i32 %8
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @luaK_exp2K(%struct.FuncState* nocapture, %struct.expdesc* nocapture) unnamed_addr #2 {
  %3 = alloca %struct.TValue, align 8
  %4 = alloca %struct.TValue, align 8
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %6 = load i32, i32* %5, align 8, !tbaa !37
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %8 = load i32, i32* %7, align 4, !tbaa !38
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %48

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !34
  switch i32 %12, label %48 [
    i32 2, label %13
    i32 3, label %15
    i32 1, label %17
    i32 6, label %29
    i32 5, label %33
    i32 4, label %38
  ]

; <label>:13:                                     ; preds = %10
  %14 = tail call fastcc i32 @boolK(%struct.FuncState* %0, i32 1) #8
  br label %42

; <label>:15:                                     ; preds = %10
  %16 = tail call fastcc i32 @boolK(%struct.FuncState* %0, i32 0) #8
  br label %42

; <label>:17:                                     ; preds = %10
  %18 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #10
  %19 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19) #10
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 0, i8* %20, align 8, !tbaa !25
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %22 = load %struct.LexState*, %struct.LexState** %21, align 8, !tbaa !17
  %23 = getelementptr inbounds %struct.LexState, %struct.LexState* %22, i64 0, i32 9
  %24 = bitcast %struct.Table** %23 to i64*
  %25 = load i64, i64* %24, align 8, !tbaa !27
  %26 = bitcast %struct.TValue* %3 to i64*
  store i64 %25, i64* %26, align 8, !tbaa !22
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 69, i8* %27, align 8, !tbaa !25
  %28 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %3, %struct.TValue* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #10
  br label %42

; <label>:29:                                     ; preds = %10
  %30 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !22
  %32 = tail call fastcc i32 @luaK_intK(%struct.FuncState* %0, i64 %31) #8
  br label %42

; <label>:33:                                     ; preds = %10
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %35 = bitcast %union.anon.7* %34 to double*
  %36 = load double, double* %35, align 8, !tbaa !22
  %37 = tail call fastcc i32 @luaK_numberK(%struct.FuncState* %0, double %36) #8
  br label %42

; <label>:38:                                     ; preds = %10
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %40 = bitcast %union.anon.7* %39 to i32*
  %41 = load i32, i32* %40, align 8, !tbaa !22
  br label %42

; <label>:42:                                     ; preds = %38, %33, %29, %17, %15, %13
  %43 = phi i32 [ %41, %38 ], [ %37, %33 ], [ %32, %29 ], [ %28, %17 ], [ %16, %15 ], [ %14, %13 ]
  %44 = icmp slt i32 %43, 256
  br i1 %44, label %45, label %48

; <label>:45:                                     ; preds = %42
  store i32 4, i32* %11, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %47 = bitcast %union.anon.7* %46 to i32*
  store i32 %43, i32* %47, align 8, !tbaa !22
  br label %48

; <label>:48:                                     ; preds = %10, %45, %2, %42
  %49 = phi i32 [ 0, %42 ], [ 0, %2 ], [ 0, %10 ], [ 1, %45 ]
  ret i32 %49
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_storevar(%struct.FuncState* nocapture, %struct.expdesc* nocapture readonly, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !34
  switch i32 %5, label %56 [
    i32 8, label %6
    i32 9, label %10
    i32 11, label %20
    i32 12, label %29
    i32 13, label %38
    i32 10, label %47
  ]

; <label>:6:                                      ; preds = %3
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %8 = bitcast %union.anon.7* %7 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !22
  tail call fastcc void @exp2reg(%struct.FuncState* %0, %struct.expdesc* %2, i32 %9) #8
  br label %57

; <label>:10:                                     ; preds = %3
  %11 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %13 = bitcast %union.anon.7* %12 to i32*
  %14 = load i32, i32* %13, align 8, !tbaa !22
  %15 = shl i32 %11, 7
  %16 = shl i32 %14, 16
  %17 = or i32 %15, %16
  %18 = or i32 %17, 8
  %19 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %18) #9
  br label %56

; <label>:20:                                     ; preds = %3
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %22 = bitcast %union.anon.7* %21 to %struct.anon.8*
  %23 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %22, i64 0, i32 1
  %24 = load i8, i8* %23, align 2, !tbaa !22
  %25 = zext i8 %24 to i32
  %26 = bitcast %union.anon.7* %21 to i16*
  %27 = load i16, i16* %26, align 8, !tbaa !22
  %28 = sext i16 %27 to i32
  tail call fastcc void @codeABRK(%struct.FuncState* %0, i32 13, i32 %25, i32 %28, %struct.expdesc* %2) #8
  br label %56

; <label>:29:                                     ; preds = %3
  %30 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %31 = bitcast %union.anon.7* %30 to %struct.anon.8*
  %32 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %31, i64 0, i32 1
  %33 = load i8, i8* %32, align 2, !tbaa !22
  %34 = zext i8 %33 to i32
  %35 = bitcast %union.anon.7* %30 to i16*
  %36 = load i16, i16* %35, align 8, !tbaa !22
  %37 = sext i16 %36 to i32
  tail call fastcc void @codeABRK(%struct.FuncState* %0, i32 15, i32 %34, i32 %37, %struct.expdesc* %2) #8
  br label %56

; <label>:38:                                     ; preds = %3
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %40 = bitcast %union.anon.7* %39 to %struct.anon.8*
  %41 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %40, i64 0, i32 1
  %42 = load i8, i8* %41, align 2, !tbaa !22
  %43 = zext i8 %42 to i32
  %44 = bitcast %union.anon.7* %39 to i16*
  %45 = load i16, i16* %44, align 8, !tbaa !22
  %46 = sext i16 %45 to i32
  tail call fastcc void @codeABRK(%struct.FuncState* %0, i32 16, i32 %43, i32 %46, %struct.expdesc* %2) #8
  br label %56

; <label>:47:                                     ; preds = %3
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %49 = bitcast %union.anon.7* %48 to %struct.anon.8*
  %50 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %49, i64 0, i32 1
  %51 = load i8, i8* %50, align 2, !tbaa !22
  %52 = zext i8 %51 to i32
  %53 = bitcast %union.anon.7* %48 to i16*
  %54 = load i16, i16* %53, align 8, !tbaa !22
  %55 = sext i16 %54 to i32
  tail call fastcc void @codeABRK(%struct.FuncState* %0, i32 14, i32 %52, i32 %55, %struct.expdesc* %2) #8
  br label %56

; <label>:56:                                     ; preds = %3, %47, %38, %29, %20, %10
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* %2) #8
  br label %57

; <label>:57:                                     ; preds = %56, %6
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @codeABRK(%struct.FuncState* nocapture, i32, i32, i32, %struct.expdesc* nocapture) unnamed_addr #2 {
  %6 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %4) #8
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1
  %8 = bitcast %union.anon.7* %7 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !22
  %10 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 %1, i32 %2, i32 %3, i32 %9, i32 %6) #8
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_self(%struct.FuncState* nocapture, %struct.expdesc* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %4 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %1) #8
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %6 = bitcast %union.anon.7* %5 to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !22
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* %1) #8
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %9 = load i8, i8* %8, align 4, !tbaa !20
  %10 = zext i8 %9 to i32
  store i32 %10, i32* %6, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 7, i32* %11, align 8, !tbaa !34
  tail call void @luaK_reserveregs(%struct.FuncState* %0, i32 2) #8
  %12 = load i32, i32* %6, align 8, !tbaa !22
  tail call fastcc void @codeABRK(%struct.FuncState* %0, i32 18, i32 %12, i32 %7, %struct.expdesc* %2) #8
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* %2) #8
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_goiftrue(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #8
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !34
  switch i32 %4, label %9 [
    i32 14, label %5
    i32 4, label %11
    i32 5, label %11
    i32 6, label %11
    i32 2, label %11
  ]

; <label>:5:                                      ; preds = %2
  tail call fastcc void @negatecondition(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #8
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %7 = bitcast %union.anon.7* %6 to i32*
  %8 = load i32, i32* %7, align 8, !tbaa !22
  br label %11

; <label>:9:                                      ; preds = %2
  %10 = tail call fastcc i32 @jumponcond(%struct.FuncState* %0, %struct.expdesc* nonnull %1, i32 0) #8
  br label %11

; <label>:11:                                     ; preds = %2, %2, %2, %2, %9, %5
  %12 = phi i32 [ %10, %9 ], [ %8, %5 ], [ -1, %2 ], [ -1, %2 ], [ -1, %2 ], [ -1, %2 ]
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %13, i32 %12) #8
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %15 = load i32, i32* %14, align 8, !tbaa !37
  tail call void @luaK_patchtohere(%struct.FuncState* %0, i32 %15) #8
  store i32 -1, i32* %14, align 8, !tbaa !37
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc void @negatecondition(%struct.FuncState* nocapture readonly, %struct.expdesc* nocapture readonly) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %4 = bitcast %union.anon.7* %3 to i32*
  %5 = load i32, i32* %4, align 8, !tbaa !22
  %6 = tail call fastcc i32* @getjumpcontrol(%struct.FuncState* %0, i32 %5) #8
  %7 = load i32, i32* %6, align 4, !tbaa !9
  %8 = xor i32 %7, 32768
  store i32 %8, i32* %6, align 4, !tbaa !9
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @jumponcond(%struct.FuncState* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %9 = bitcast %union.anon.7* %8 to i32*
  br label %32

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %12 = load %struct.Proto*, %struct.Proto** %11, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i64 0, i32 16
  %14 = load i32*, i32** %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %16 = bitcast %union.anon.7* %15 to i32*
  %17 = load i32, i32* %16, align 8, !tbaa !22
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !9
  %21 = and i32 %20, 127
  %22 = icmp eq i32 %21, 52
  br i1 %22, label %23, label %32

; <label>:23:                                     ; preds = %10
  tail call fastcc void @removelastlineinfo(%struct.FuncState* nonnull %0) #9
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %25 = load i32, i32* %24, align 8, !tbaa !10
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 8, !tbaa !10
  %27 = lshr i32 %20, 16
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %2, 0
  %30 = zext i1 %29 to i32
  %31 = tail call fastcc i32 @condjump(%struct.FuncState* nonnull %0, i32 67, i32 %28, i32 0, i32 0, i32 %30) #8
  br label %36

; <label>:32:                                     ; preds = %7, %10
  %33 = phi i32* [ %9, %7 ], [ %16, %10 ]
  tail call fastcc void @discharge2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #8
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #8
  %34 = load i32, i32* %33, align 8, !tbaa !22
  %35 = tail call fastcc i32 @condjump(%struct.FuncState* %0, i32 68, i32 255, i32 %34, i32 0, i32 %2) #8
  br label %36

; <label>:36:                                     ; preds = %23, %32
  %37 = phi i32 [ %35, %32 ], [ %31, %23 ]
  ret i32 %37
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_goiffalse(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #8
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
  %10 = tail call fastcc i32 @jumponcond(%struct.FuncState* %0, %struct.expdesc* nonnull %1, i32 1) #8
  br label %11

; <label>:11:                                     ; preds = %2, %2, %9, %5
  %12 = phi i32 [ %10, %9 ], [ %8, %5 ], [ -1, %2 ], [ -1, %2 ]
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %13, i32 %12) #8
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %15 = load i32, i32* %14, align 4, !tbaa !38
  tail call void @luaK_patchtohere(%struct.FuncState* %0, i32 %15) #8
  store i32 -1, i32* %14, align 4, !tbaa !38
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
define hidden i32 @luaK_isKint(%struct.expdesc* nocapture readonly) local_unnamed_addr #4 {
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

; Function Attrs: minsize nounwind optsize uwtable
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
  br label %40

; <label>:14:                                     ; preds = %3
  %15 = tail call fastcc i32 @isKstr(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %19 = bitcast %union.anon.7* %18 to i32*
  %20 = load i32, i32* %19, align 8, !tbaa !22
  %21 = trunc i32 %20 to i8
  %22 = bitcast %union.anon.7* %18 to %struct.anon.8*
  %23 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %22, i64 0, i32 1
  store i8 %21, i8* %23, align 2, !tbaa !22
  br label %34

; <label>:24:                                     ; preds = %14
  %25 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #8
  %26 = load i32, i32* %4, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %28 = bitcast %union.anon.7* %27 to i32*
  %29 = load i32, i32* %28, align 8, !tbaa !22
  %30 = trunc i32 %29 to i8
  %31 = bitcast %union.anon.7* %27 to %struct.anon.8*
  %32 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %31, i64 0, i32 1
  store i8 %30, i8* %32, align 2, !tbaa !22
  %33 = icmp eq i32 %26, 9
  br i1 %33, label %34, label %40

; <label>:34:                                     ; preds = %17, %24
  %35 = phi %union.anon.7* [ %18, %17 ], [ %27, %24 ]
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %37 = bitcast %union.anon.7* %36 to i32*
  %38 = load i32, i32* %37, align 8, !tbaa !22
  %39 = trunc i32 %38 to i16
  br label %68

; <label>:40:                                     ; preds = %7, %24
  %41 = phi %union.anon.7* [ %8, %7 ], [ %27, %24 ]
  %42 = tail call fastcc i32 @isKstr(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %46 = bitcast %union.anon.7* %45 to i32*
  %47 = load i32, i32* %46, align 8, !tbaa !22
  %48 = trunc i32 %47 to i16
  br label %68

; <label>:49:                                     ; preds = %40
  %50 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %51 = load i32, i32* %50, align 8, !tbaa !34
  %52 = icmp eq i32 %51, 6
  br i1 %52, label %53, label %65

; <label>:53:                                     ; preds = %49
  %54 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %55 = load i32, i32* %54, align 8, !tbaa !37
  %56 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %57 = load i32, i32* %56, align 4, !tbaa !38
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %65

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0
  %61 = load i64, i64* %60, align 8, !tbaa !22
  %62 = icmp ugt i64 %61, 255
  br i1 %62, label %65, label %63

; <label>:63:                                     ; preds = %59
  %64 = trunc i64 %61 to i16
  br label %68

; <label>:65:                                     ; preds = %49, %53, %59
  %66 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #8
  %67 = trunc i32 %66 to i16
  br label %68

; <label>:68:                                     ; preds = %44, %65, %63, %34
  %69 = phi %union.anon.7* [ %41, %44 ], [ %41, %65 ], [ %41, %63 ], [ %35, %34 ]
  %70 = phi i16 [ %48, %44 ], [ %67, %65 ], [ %64, %63 ], [ %39, %34 ]
  %71 = phi i32 [ 13, %44 ], [ 10, %65 ], [ 12, %63 ], [ 11, %34 ]
  %72 = bitcast %union.anon.7* %69 to i16*
  store i16 %70, i16* %72, align 8, !tbaa !22
  store i32 %71, i32* %4, align 8, !tbaa !34
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
define internal fastcc i32 @isKstr(%struct.FuncState* nocapture readonly, %struct.expdesc* nocapture readonly) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %27

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %8 = load i32, i32* %7, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %10 = load i32, i32* %9, align 4, !tbaa !38
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %27

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %14 = bitcast %union.anon.7* %13 to i32*
  %15 = load i32, i32* %14, align 8, !tbaa !22
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %27

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %19 = load %struct.Proto*, %struct.Proto** %18, align 8, !tbaa !14
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i64 0, i32 15
  %21 = load %struct.TValue*, %struct.TValue** %20, align 8, !tbaa !29
  %22 = sext i32 %15 to i64
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %21, i64 %22, i32 1
  %24 = load i8, i8* %23, align 8, !tbaa !25
  %25 = icmp eq i8 %24, 84
  %26 = zext i1 %25 to i32
  br label %27

; <label>:27:                                     ; preds = %6, %17, %12, %2
  %28 = phi i32 [ 0, %12 ], [ 0, %6 ], [ 0, %2 ], [ %26, %17 ]
  ret i32 %28
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_prefix(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, i32) local_unnamed_addr #2 {
  switch i32 %1, label %37 [
    i32 0, label %5
    i32 1, label %5
    i32 3, label %9
    i32 2, label %18
  ]

; <label>:5:                                      ; preds = %4, %4
  %6 = add i32 %1, 12
  %7 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %6, %struct.expdesc* %2, %struct.expdesc* nonnull @luaK_prefix.ef) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %37

; <label>:9:                                      ; preds = %5, %4
  %10 = add i32 %1, 50
  %11 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #9
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* %2) #9
  %12 = shl i32 %11, 16
  %13 = or i32 %12, %10
  %14 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %13) #9
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %16 = bitcast %union.anon.7* %15 to i32*
  store i32 %14, i32* %16, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  store i32 15, i32* %17, align 8, !tbaa !34
  tail call void @luaK_fixline(%struct.FuncState* %0, i32 %3) #9
  br label %37

; <label>:18:                                     ; preds = %4
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #9
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %20 = load i32, i32* %19, align 8, !tbaa !34
  switch i32 %20, label %31 [
    i32 1, label %21
    i32 3, label %21
    i32 4, label %22
    i32 5, label %22
    i32 6, label %22
    i32 2, label %22
    i32 14, label %23
    i32 15, label %24
    i32 7, label %24
  ]

; <label>:21:                                     ; preds = %18, %18
  store i32 2, i32* %19, align 8, !tbaa !34
  br label %31

; <label>:22:                                     ; preds = %18, %18, %18, %18
  store i32 3, i32* %19, align 8, !tbaa !34
  br label %31

; <label>:23:                                     ; preds = %18
  tail call fastcc void @negatecondition(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #9
  br label %31

; <label>:24:                                     ; preds = %18, %18
  tail call fastcc void @discharge2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #9
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #9
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %26 = bitcast %union.anon.7* %25 to i32*
  %27 = load i32, i32* %26, align 8, !tbaa !22
  %28 = shl i32 %27, 16
  %29 = or i32 %28, 52
  %30 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %29) #9
  store i32 %30, i32* %26, align 8, !tbaa !22
  store i32 15, i32* %19, align 8, !tbaa !34
  br label %31

; <label>:31:                                     ; preds = %18, %21, %22, %23, %24
  %32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %33 = load i32, i32* %32, align 4, !tbaa !38
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %35 = load i32, i32* %34, align 8, !tbaa !37
  store i32 %35, i32* %32, align 4, !tbaa !38
  store i32 %33, i32* %34, align 8, !tbaa !37
  tail call fastcc void @removevalues(%struct.FuncState* %0, i32 %35) #9
  %36 = load i32, i32* %34, align 8, !tbaa !37
  tail call fastcc void @removevalues(%struct.FuncState* %0, i32 %36) #9
  br label %37

; <label>:37:                                     ; preds = %5, %4, %31, %9
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
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
  %12 = call fastcc i32 @tonumeral(%struct.expdesc* %2, %struct.TValue* nonnull %6) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %70, label %14

; <label>:14:                                     ; preds = %4
  %15 = call fastcc i32 @tonumeral(%struct.expdesc* %3, %struct.TValue* nonnull %7) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %70, label %17

; <label>:17:                                     ; preds = %14
  switch i32 %1, label %48 [
    i32 7, label %18
    i32 8, label %18
    i32 9, label %18
    i32 10, label %18
    i32 11, label %18
    i32 13, label %18
    i32 5, label %35
    i32 6, label %35
    i32 3, label %35
  ]

; <label>:18:                                     ; preds = %17, %17, %17, %17, %17, %17
  %19 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  %21 = load i8, i8* %20, align 8, !tbaa !25
  %22 = icmp eq i8 %21, 35
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %18
  %24 = bitcast %struct.TValue* %6 to i64*
  %25 = load i64, i64* %24, align 8, !tbaa !22
  store i64 %25, i64* %5, align 8, !tbaa !39
  br label %30

; <label>:26:                                     ; preds = %18
  %27 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %6, i64* nonnull %5, i32 0) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10
  br label %70

; <label>:30:                                     ; preds = %26, %23
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  %32 = load i8, i8* %31, align 8, !tbaa !25
  %33 = icmp eq i8 %32, 35
  br i1 %33, label %34, label %45

; <label>:34:                                     ; preds = %30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10
  br label %48

; <label>:35:                                     ; preds = %17, %17, %17
  %36 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  %37 = load i8, i8* %36, align 8, !tbaa !25
  %38 = icmp eq i8 %37, 35
  %39 = bitcast %struct.TValue* %7 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = sitofp i64 %40 to double
  %42 = bitcast i64 %40 to double
  %43 = select i1 %38, double %41, double %42
  %44 = fcmp une double %43, 0.000000e+00
  br i1 %44, label %48, label %70

; <label>:45:                                     ; preds = %30
  %46 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %7, i64* nonnull %5, i32 0) #9
  %47 = icmp eq i32 %46, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10
  br i1 %47, label %70, label %48

; <label>:48:                                     ; preds = %45, %34, %35, %17
  %49 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %50 = load %struct.LexState*, %struct.LexState** %49, align 8, !tbaa !17
  %51 = getelementptr inbounds %struct.LexState, %struct.LexState* %50, i64 0, i32 6
  %52 = load %struct.lua_State*, %struct.lua_State** %51, align 8, !tbaa !18
  %53 = call i32 @luaO_rawarith(%struct.lua_State* %52, i32 %1, %struct.TValue* nonnull %6, %struct.TValue* nonnull %7, %struct.TValue* nonnull %8) #9
  %54 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i64 0, i32 1
  %55 = load i8, i8* %54, align 8, !tbaa !25
  %56 = icmp eq i8 %55, 35
  br i1 %56, label %57, label %62

; <label>:57:                                     ; preds = %48
  %58 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  store i32 6, i32* %58, align 8, !tbaa !34
  %59 = bitcast %struct.TValue* %8 to i64*
  %60 = load i64, i64* %59, align 8, !tbaa !22
  %61 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0
  store i64 %60, i64* %61, align 8, !tbaa !22
  br label %70

; <label>:62:                                     ; preds = %48
  %63 = bitcast %struct.TValue* %8 to double*
  %64 = load double, double* %63, align 8, !tbaa !22
  %65 = fcmp ueq double %64, 0.000000e+00
  br i1 %65, label %70, label %66

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  store i32 5, i32* %67, align 8, !tbaa !34
  %68 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %69 = bitcast %union.anon.7* %68 to double*
  store double %64, double* %69, align 8, !tbaa !22
  br label %70

; <label>:70:                                     ; preds = %45, %29, %35, %57, %66, %62, %4, %14
  %71 = phi i32 [ 0, %45 ], [ 0, %14 ], [ 0, %4 ], [ 0, %62 ], [ 1, %66 ], [ 1, %57 ], [ 0, %35 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #10
  ret i32 %71
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_infix(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  switch i32 %1, label %27 [
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
    i32 13, label %14
    i32 16, label %14
    i32 14, label %19
    i32 15, label %19
    i32 17, label %19
    i32 18, label %19
  ]

; <label>:6:                                      ; preds = %3
  tail call void @luaK_goiftrue(%struct.FuncState* %0, %struct.expdesc* %2) #8
  br label %27

; <label>:7:                                      ; preds = %3
  tail call void @luaK_goiffalse(%struct.FuncState* %0, %struct.expdesc* %2) #8
  br label %27

; <label>:8:                                      ; preds = %3
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  br label %27

; <label>:9:                                      ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %10 = tail call fastcc i32 @tonumeral(%struct.expdesc* %2, %struct.TValue* null) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %27

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  br label %27

; <label>:14:                                     ; preds = %3, %3
  %15 = tail call fastcc i32 @tonumeral(%struct.expdesc* %2, %struct.TValue* null) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

; <label>:17:                                     ; preds = %14
  %18 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2) #8
  br label %27

; <label>:19:                                     ; preds = %3, %3, %3, %3
  %20 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #10
  %21 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #10
  %22 = call fastcc i32 @isSCnumber(%struct.expdesc* %2, i64* nonnull %4, i32* nonnull %5) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %19
  %25 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  br label %26

; <label>:26:                                     ; preds = %19, %24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #10
  br label %27

; <label>:27:                                     ; preds = %9, %14, %3, %17, %12, %26, %8, %7, %6
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc i32 @tonumeral(%struct.expdesc* nocapture readonly, %struct.TValue*) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 3
  %6 = load i32, i32* %5, align 4, !tbaa !38
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %25

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !34
  switch i32 %10, label %25 [
    i32 6, label %11
    i32 5, label %18
  ]

; <label>:11:                                     ; preds = %8
  %12 = icmp eq %struct.TValue* %1, null
  br i1 %12, label %25, label %13

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 1, i32 0
  %15 = load i64, i64* %14, align 8, !tbaa !22
  %16 = bitcast %struct.TValue* %1 to i64*
  store i64 %15, i64* %16, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  store i8 35, i8* %17, align 8, !tbaa !25
  br label %25

; <label>:18:                                     ; preds = %8
  %19 = icmp eq %struct.TValue* %1, null
  br i1 %19, label %25, label %20

; <label>:20:                                     ; preds = %18
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 1, i32 0
  %22 = load i64, i64* %21, align 8, !tbaa !22
  %23 = bitcast %struct.TValue* %1 to i64*
  store i64 %22, i64* %23, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  store i8 19, i8* %24, align 8, !tbaa !25
  br label %25

; <label>:25:                                     ; preds = %8, %20, %18, %13, %11, %2
  %26 = phi i32 [ 0, %2 ], [ 1, %11 ], [ 1, %13 ], [ 1, %18 ], [ 1, %20 ], [ 0, %8 ]
  ret i32 %26
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @isSCnumber(%struct.expdesc* nocapture readonly, i64*, i32* nocapture) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !34
  switch i32 %5, label %27 [
    i32 6, label %6
    i32 5, label %9
  ]

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 1, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !22
  store i64 %8, i64* %1, align 8, !tbaa !39
  br label %16

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 1
  %11 = bitcast %union.anon.7* %10 to double*
  %12 = load double, double* %11, align 8, !tbaa !22
  %13 = tail call fastcc i32 @floatI(double %12, i64* %1) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

; <label>:15:                                     ; preds = %9
  store i32 1, i32* %2, align 4, !tbaa !9
  br label %16

; <label>:16:                                     ; preds = %15, %6
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 2
  %18 = load i32, i32* %17, align 8, !tbaa !37
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 3
  %20 = load i32, i32* %19, align 4, !tbaa !38
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %27

; <label>:22:                                     ; preds = %16
  %23 = load i64, i64* %1, align 8, !tbaa !39
  %24 = add i64 %23, 127
  %25 = icmp ugt i64 %24, 255
  br i1 %25, label %27, label %26

; <label>:26:                                     ; preds = %22
  store i64 %24, i64* %1, align 8, !tbaa !39
  br label %27

; <label>:27:                                     ; preds = %16, %22, %9, %3, %26
  %28 = phi i32 [ 1, %26 ], [ 0, %3 ], [ 0, %9 ], [ 0, %22 ], [ 0, %16 ]
  ret i32 %28
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_posfix(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32) local_unnamed_addr #2 {
  %6 = alloca %struct.expdesc, align 8
  %7 = alloca %struct.expdesc, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.expdesc, align 8
  %11 = alloca %struct.expdesc, align 8
  %12 = alloca %struct.expdesc, align 8
  switch i32 %1, label %154 [
    i32 19, label %13
    i32 20, label %19
    i32 12, label %25
    i32 0, label %50
    i32 2, label %50
    i32 1, label %63
    i32 5, label %63
    i32 6, label %63
    i32 3, label %63
    i32 4, label %63
    i32 7, label %68
    i32 8, label %68
    i32 9, label %68
    i32 10, label %97
    i32 11, label %108
    i32 13, label %112
    i32 16, label %112
    i32 14, label %147
    i32 15, label %147
    i32 17, label %149
    i32 18, label %149
  ]

; <label>:13:                                     ; preds = %5
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %3) #8
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %16 = load i32, i32* %15, align 4, !tbaa !38
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %14, i32 %16) #8
  %17 = bitcast %struct.expdesc* %2 to i8*
  %18 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 24, i32 8, i1 false), !tbaa.struct !41
  br label %154

; <label>:19:                                     ; preds = %5
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %3) #8
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %22 = load i32, i32* %21, align 8, !tbaa !37
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %20, i32 %22) #8
  %23 = bitcast %struct.expdesc* %2 to i8*
  %24 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 24, i32 8, i1 false), !tbaa.struct !41
  br label %154

; <label>:25:                                     ; preds = %5
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* %3) #8
  %26 = tail call fastcc i32* @previousinstruction(%struct.FuncState* %0) #9
  %27 = load i32, i32* %26, align 4, !tbaa !9
  %28 = and i32 %27, 127
  %29 = icmp eq i32 %28, 54
  br i1 %29, label %30, label %43

; <label>:30:                                     ; preds = %25
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* %3) #9
  %31 = load i32, i32* %26, align 4, !tbaa !9
  %32 = and i32 %31, -16744321
  %33 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %34 = bitcast %union.anon.7* %33 to i32*
  %35 = load i32, i32* %34, align 8, !tbaa !22
  %36 = shl i32 %35, 7
  %37 = and i32 %36, 32640
  %38 = and i32 %27, 16711680
  %39 = add nuw nsw i32 %38, 65536
  %40 = and i32 %39, 16711680
  %41 = or i32 %32, %40
  %42 = or i32 %41, %37
  store i32 %42, i32* %26, align 4, !tbaa !9
  br label %154

; <label>:43:                                     ; preds = %25
  %44 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %45 = bitcast %union.anon.7* %44 to i32*
  %46 = load i32, i32* %45, align 8, !tbaa !22
  %47 = shl i32 %46, 7
  %48 = or i32 %47, 131126
  %49 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %48) #9
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* %3) #9
  tail call void @luaK_fixline(%struct.FuncState* %0, i32 %4) #9
  br label %154

; <label>:50:                                     ; preds = %5, %5
  %51 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3) #8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %154

; <label>:53:                                     ; preds = %50
  %54 = add i32 %1, 38
  %55 = tail call fastcc i32 @tonumeral(%struct.expdesc* %2, %struct.TValue* null) #9
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

; <label>:57:                                     ; preds = %53
  %58 = bitcast %struct.expdesc* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %58)
  %59 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %58, i8* %59, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  %60 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* nonnull %58, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %58)
  br label %61

; <label>:61:                                     ; preds = %53, %57
  %62 = phi i32 [ 1, %57 ], [ 0, %53 ]
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 %54, %struct.expdesc* %2, %struct.expdesc* %3, i32 %62, i32 %4) #9
  br label %154

; <label>:63:                                     ; preds = %5, %5, %5, %5, %5
  %64 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %154

; <label>:66:                                     ; preds = %63
  %67 = add i32 %1, 38
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 %67, %struct.expdesc* %2, %struct.expdesc* %3, i32 0, i32 %4) #8
  br label %154

; <label>:68:                                     ; preds = %5, %5, %5
  %69 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3) #8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %154

; <label>:71:                                     ; preds = %68
  %72 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %73 = load i32, i32* %72, align 8, !tbaa !34
  %74 = icmp eq i32 %73, 6
  br i1 %74, label %75, label %82

; <label>:75:                                     ; preds = %71
  %76 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #9
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

; <label>:78:                                     ; preds = %75
  %79 = bitcast %struct.expdesc* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %79)
  %80 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %79, i8* %80, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  %81 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* nonnull %79, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %79)
  br label %91

; <label>:82:                                     ; preds = %75, %71
  %83 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %84 = load i32, i32* %83, align 8, !tbaa !34
  %85 = icmp eq i32 %84, 6
  br i1 %85, label %86, label %89

; <label>:86:                                     ; preds = %82
  %87 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #9
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

; <label>:89:                                     ; preds = %86, %82
  %90 = add i32 %1, 38
  tail call fastcc void @codebinexpval(%struct.FuncState* %0, i32 %90, %struct.expdesc* nonnull %2, %struct.expdesc* nonnull %3, i32 %4) #9
  br label %154

; <label>:91:                                     ; preds = %86, %78
  %92 = phi i32 [ 1, %78 ], [ 0, %86 ]
  %93 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %94 = bitcast %union.anon.7* %93 to i32*
  %95 = load i32, i32* %94, align 8, !tbaa !22
  %96 = add i32 %1, 26
  tail call fastcc void @finishbinexpval(%struct.FuncState* %0, %struct.expdesc* nonnull %2, %struct.expdesc* nonnull %3, i32 %96, i32 %95, i32 %92, i32 %4) #9
  br label %154

; <label>:97:                                     ; preds = %5
  %98 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 10, %struct.expdesc* %2, %struct.expdesc* %3) #8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %154

; <label>:100:                                    ; preds = %97
  %101 = tail call fastcc i32 @isSCint(%struct.expdesc* %2) #8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

; <label>:103:                                    ; preds = %100
  %104 = bitcast %struct.expdesc* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %104)
  %105 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %104, i8* %105, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  %106 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* %106, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* nonnull %104, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %104)
  tail call fastcc void @codebini(%struct.FuncState* %0, i32 37, %struct.expdesc* %2, %struct.expdesc* %3, i32 1, i32 %4) #8
  br label %154

; <label>:107:                                    ; preds = %100
  tail call fastcc void @codeshift(%struct.FuncState* %0, i32 48, %struct.expdesc* %2, %struct.expdesc* %3, i32 %4) #8
  br label %154

; <label>:108:                                    ; preds = %5
  %109 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 11, %struct.expdesc* %2, %struct.expdesc* %3) #8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %154

; <label>:111:                                    ; preds = %108
  tail call fastcc void @codeshift(%struct.FuncState* %0, i32 49, %struct.expdesc* %2, %struct.expdesc* %3, i32 %4) #8
  br label %154

; <label>:112:                                    ; preds = %5, %5
  %113 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %113) #10
  %114 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %114) #10
  store i32 0, i32* %9, align 4, !tbaa !9
  %115 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %116 = load i32, i32* %115, align 8, !tbaa !34
  %117 = icmp eq i32 %116, 7
  br i1 %117, label %122, label %118

; <label>:118:                                    ; preds = %112
  %119 = bitcast %struct.expdesc* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %119)
  %120 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %119, i8* %120, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  %121 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %121, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* nonnull %119, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %119)
  br label %122

; <label>:122:                                    ; preds = %118, %112
  %123 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #9
  %124 = call fastcc i32 @isSCnumber(%struct.expdesc* %3, i64* nonnull %8, i32* nonnull %9) #9
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

; <label>:126:                                    ; preds = %122
  %127 = load i64, i64* %8, align 8, !tbaa !39
  %128 = trunc i64 %127 to i32
  br label %138

; <label>:129:                                    ; preds = %122
  %130 = call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %3) #9
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132

; <label>:132:                                    ; preds = %129
  %133 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %134 = bitcast %union.anon.7* %133 to i32*
  %135 = load i32, i32* %134, align 8, !tbaa !22
  br label %138

; <label>:136:                                    ; preds = %129
  %137 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %3) #9
  br label %138

; <label>:138:                                    ; preds = %126, %132, %136
  %139 = phi i32 [ %128, %126 ], [ %135, %132 ], [ %137, %136 ]
  %140 = phi i32 [ 62, %126 ], [ 61, %132 ], [ 58, %136 ]
  call fastcc void @freeexps(%struct.FuncState* %0, %struct.expdesc* nonnull %2, %struct.expdesc* %3) #9
  %141 = load i32, i32* %9, align 4, !tbaa !9
  %142 = icmp eq i32 %1, 13
  %143 = zext i1 %142 to i32
  %144 = call fastcc i32 @condjump(%struct.FuncState* %0, i32 %140, i32 %123, i32 %139, i32 %141, i32 %143) #9
  %145 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %146 = bitcast %union.anon.7* %145 to i32*
  store i32 %144, i32* %146, align 8, !tbaa !22
  store i32 14, i32* %115, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %114) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %113) #10
  br label %154

; <label>:147:                                    ; preds = %5, %5
  %148 = add i32 %1, 45
  tail call fastcc void @codeorder(%struct.FuncState* %0, i32 %148, %struct.expdesc* %2, %struct.expdesc* %3) #8
  br label %154

; <label>:149:                                    ; preds = %5, %5
  %150 = add i32 %1, 42
  %151 = bitcast %struct.expdesc* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %151)
  %152 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %151, i8* %152, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  %153 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %152, i8* %153, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %153, i8* nonnull %151, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %151)
  tail call fastcc void @codeorder(%struct.FuncState* %0, i32 %150, %struct.expdesc* %2, %struct.expdesc* %3) #8
  br label %154

; <label>:154:                                    ; preds = %91, %89, %43, %30, %50, %63, %68, %97, %108, %5, %111, %107, %103, %66, %61, %149, %147, %138, %19, %13
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @codearith(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture, i32, i32) unnamed_addr #2 {
  %7 = alloca %struct.expdesc, align 8
  %8 = tail call fastcc i32 @isSCint(%struct.expdesc* %3) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %6
  %11 = add i32 %1, -19
  tail call fastcc void @codebini(%struct.FuncState* %0, i32 %11, %struct.expdesc* %2, %struct.expdesc* %3, i32 %4, i32 %5) #8
  br label %30

; <label>:12:                                     ; preds = %6
  %13 = tail call fastcc i32 @tonumeral(%struct.expdesc* %3, %struct.TValue* null) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

; <label>:15:                                     ; preds = %12
  %16 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* %3) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %20 = bitcast %union.anon.7* %19 to i32*
  %21 = load i32, i32* %20, align 8, !tbaa !22
  %22 = add i32 %1, -12
  tail call fastcc void @finishbinexpval(%struct.FuncState* %0, %struct.expdesc* %2, %struct.expdesc* %3, i32 %22, i32 %21, i32 %4, i32 %5) #8
  br label %30

; <label>:23:                                     ; preds = %15, %12
  %24 = icmp eq i32 %4, 0
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %23
  %26 = bitcast %struct.expdesc* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %26)
  %27 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %26, i8* %27, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  %28 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* nonnull %26, i64 24, i32 8, i1 false) #10, !tbaa.struct !41
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %26)
  br label %29

; <label>:29:                                     ; preds = %23, %25
  tail call fastcc void @codebinexpval(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3, i32 %5) #8
  br label %30

; <label>:30:                                     ; preds = %18, %29, %10
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
define internal fastcc i32 @isSCint(%struct.expdesc* nocapture readonly) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %5, label %17

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 2
  %7 = load i32, i32* %6, align 8, !tbaa !37
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 3
  %9 = load i32, i32* %8, align 4, !tbaa !38
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 1, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !22
  %14 = add i64 %13, 127
  %15 = icmp ult i64 %14, 256
  %16 = zext i1 %15 to i32
  br label %17

; <label>:17:                                     ; preds = %5, %1, %11
  %18 = phi i32 [ 0, %5 ], [ %16, %11 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @codebini(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture readonly, i32, i32) unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !22
  %9 = trunc i64 %8 to i32
  %10 = add nsw i32 %9, 127
  tail call fastcc void @finishbinexpval(%struct.FuncState* %0, %struct.expdesc* %2, %struct.expdesc* %3, i32 %1, i32 %10, i32 %4, i32 %5) #8
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @codeshift(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  %6 = tail call fastcc i32 @isSCint(%struct.expdesc* %3) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

; <label>:8:                                      ; preds = %5
  %9 = icmp eq i32 %1, 48
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %8
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !22
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %11, align 8, !tbaa !22
  br label %14

; <label>:14:                                     ; preds = %10, %8
  %15 = phi i32 [ 1, %10 ], [ 0, %8 ]
  tail call fastcc void @codebini(%struct.FuncState* %0, i32 36, %struct.expdesc* %2, %struct.expdesc* %3, i32 %15, i32 %4) #8
  br label %17

; <label>:16:                                     ; preds = %5
  tail call fastcc void @codebinexpval(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3, i32 %4) #8
  br label %17

; <label>:17:                                     ; preds = %16, %14
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @codeorder(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture) unnamed_addr #2 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #10
  store i32 0, i32* %6, align 4, !tbaa !9
  %9 = call fastcc i32 @isSCnumber(%struct.expdesc* %3, i64* nonnull %5, i32* nonnull %6) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

; <label>:11:                                     ; preds = %4
  %12 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %13 = load i64, i64* %5, align 8, !tbaa !39
  %14 = trunc i64 %13 to i32
  %15 = add i32 %1, 4
  br label %28

; <label>:16:                                     ; preds = %4
  %17 = call fastcc i32 @isSCnumber(%struct.expdesc* %2, i64* nonnull %5, i32* nonnull %6) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

; <label>:19:                                     ; preds = %16
  %20 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %3) #8
  %21 = load i64, i64* %5, align 8, !tbaa !39
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %1, 59
  %24 = select i1 %23, i32 65, i32 66
  br label %28

; <label>:25:                                     ; preds = %16
  %26 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %27 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %3) #8
  br label %28

; <label>:28:                                     ; preds = %19, %25, %11
  %29 = phi i32 [ %15, %11 ], [ %24, %19 ], [ %1, %25 ]
  %30 = phi i32 [ %12, %11 ], [ %20, %19 ], [ %26, %25 ]
  %31 = phi i32 [ %14, %11 ], [ %22, %19 ], [ %27, %25 ]
  call fastcc void @freeexps(%struct.FuncState* %0, %struct.expdesc* %2, %struct.expdesc* %3) #8
  %32 = load i32, i32* %6, align 4, !tbaa !9
  %33 = call fastcc i32 @condjump(%struct.FuncState* %0, i32 %29, i32 %30, i32 %31, i32 %32, i32 1) #8
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %35 = bitcast %union.anon.7* %34 to i32*
  store i32 %33, i32* %35, align 8, !tbaa !22
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  store i32 14, i32* %36, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_fixline(%struct.FuncState* nocapture, i32) local_unnamed_addr #2 {
  tail call fastcc void @removelastlineinfo(%struct.FuncState* %0) #8
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %4 = load %struct.Proto*, %struct.Proto** %3, align 8, !tbaa !14
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %4, i32 %1) #8
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc void @removelastlineinfo(%struct.FuncState* nocapture) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %3 = load %struct.Proto*, %struct.Proto** %2, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %5 = load i32, i32* %4, align 8, !tbaa !10
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

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @savelineinfo(%struct.FuncState* nocapture, %struct.Proto*, i32) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %5 = load i32, i32* %4, align 8, !tbaa !46
  %6 = sub nsw i32 %2, %5
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %8 = load i32, i32* %7, align 8, !tbaa !10
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
  %33 = tail call i8* @luaM_growaux_(%struct.lua_State* %26, i8* %29, i32 %31, i32* nonnull %32, i32 8, i32 2147483647, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #9
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
  %49 = tail call i8* @luaM_growaux_(%struct.lua_State* %45, i8* %47, i32 %9, i32* nonnull %48, i32 1, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #9
  store i8* %49, i8** %46, align 8, !tbaa !45
  %50 = sext i32 %9 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 %42, i8* %51, align 1, !tbaa !22
  store i32 %2, i32* %4, align 8, !tbaa !46
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_setlist(%struct.FuncState* nocapture, i32, i32, i32) local_unnamed_addr #2 {
  %5 = add nsw i32 %2, -1
  %6 = sdiv i32 %5, 50
  %7 = add nsw i32 %6, 1
  %8 = icmp eq i32 %3, -1
  %9 = select i1 %8, i32 0, i32 %3
  %10 = icmp slt i32 %2, 12751
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %4
  %12 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 79, i32 %1, i32 %9, i32 %7, i32 0) #8
  br label %24

; <label>:13:                                     ; preds = %4
  %14 = icmp slt i32 %2, 1677721551
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %13
  %16 = shl i32 %1, 7
  %17 = shl i32 %9, 16
  %18 = or i32 %16, %17
  %19 = or i32 %18, 79
  %20 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %19) #9
  tail call fastcc void @codeextraarg(%struct.FuncState* %0, i32 %7) #8
  br label %24

; <label>:21:                                     ; preds = %13
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %23 = load %struct.LexState*, %struct.LexState** %22, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)) #7
  unreachable

; <label>:24:                                     ; preds = %15, %11
  %25 = trunc i32 %1 to i8
  %26 = add i8 %25, 1
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  store i8 %26, i8* %27, align 4, !tbaa !20
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @codeextraarg(%struct.FuncState* nocapture, i32) unnamed_addr #2 {
  %3 = shl i32 %1, 7
  %4 = or i32 %3, 83
  %5 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %4) #8
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaK_finish(%struct.FuncState* nocapture readonly) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %3 = load %struct.Proto*, %struct.Proto** %2, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %5 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 16
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 17
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 4
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 3
  br label %9

; <label>:9:                                      ; preds = %69, %1
  %10 = phi i64 [ %70, %69 ], [ 0, %1 ]
  %11 = load i32, i32* %4, align 8, !tbaa !10
  %12 = sext i32 %11 to i64
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %14, label %71

; <label>:14:                                     ; preds = %9
  %15 = load i32*, i32** %5, align 8, !tbaa !15
  %16 = getelementptr inbounds i32, i32* %15, i64 %10
  %17 = load i32, i32* %16, align 4, !tbaa !9
  %18 = trunc i32 %17 to i7
  switch i7 %18, label %69 [
    i7 -56, label %19
    i7 -55, label %19
    i7 -57, label %28
    i7 -58, label %28
    i7 57, label %51
  ]

; <label>:19:                                     ; preds = %14, %14
  %20 = load i8, i8* %6, align 2, !tbaa !53
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %19
  %23 = load i8, i8* %7, align 1, !tbaa !54
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %69, label %25

; <label>:25:                                     ; preds = %22, %19
  %26 = and i32 %17, -128
  %27 = or i32 %26, 71
  store i32 %27, i32* %16, align 4, !tbaa !9
  br label %28

; <label>:28:                                     ; preds = %14, %14, %25
  %29 = phi i32 [ %17, %14 ], [ %17, %14 ], [ %27, %25 ]
  %30 = load i8, i8* %6, align 2, !tbaa !53
  %31 = icmp eq i8 %30, 0
  %32 = load i8, i8* %7, align 1, !tbaa !54
  br i1 %31, label %33, label %37

; <label>:33:                                     ; preds = %28
  %34 = icmp eq i8 %32, 0
  br i1 %34, label %69, label %35

; <label>:35:                                     ; preds = %33
  %36 = and i32 %29, 16744447
  br label %40

; <label>:37:                                     ; preds = %28
  %38 = and i32 %29, 16744447
  %39 = icmp eq i8 %32, 0
  br i1 %39, label %45, label %40

; <label>:40:                                     ; preds = %35, %37
  %41 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %42 = load i8, i8* %8, align 2, !tbaa !55
  %43 = zext i8 %42 to i32
  %44 = add nuw nsw i32 %43, 1
  br label %45

; <label>:45:                                     ; preds = %37, %40
  %46 = phi i32 [ %41, %40 ], [ %38, %37 ]
  %47 = phi i32 [ %44, %40 ], [ 0, %37 ]
  %48 = shl i32 %47, 24
  %49 = or i32 %46, %48
  %50 = or i32 %49, 32768
  store i32 %50, i32* %16, align 4, !tbaa !9
  br label %69

; <label>:51:                                     ; preds = %14
  %52 = trunc i64 %10 to i32
  br label %53

; <label>:53:                                     ; preds = %63, %51
  %54 = phi i32 [ 0, %51 ], [ %67, %63 ]
  %55 = phi i32 [ %52, %51 ], [ %66, %63 ]
  %56 = icmp ult i32 %54, 100
  br i1 %56, label %57, label %68

; <label>:57:                                     ; preds = %53
  %58 = sext i32 %55 to i64
  %59 = getelementptr inbounds i32, i32* %15, i64 %58
  %60 = load i32, i32* %59, align 4, !tbaa !9
  %61 = and i32 %60, 127
  %62 = icmp eq i32 %61, 57
  br i1 %62, label %63, label %68

; <label>:63:                                     ; preds = %57
  %64 = lshr i32 %60, 7
  %65 = add i32 %55, -16777214
  %66 = add i32 %65, %64
  %67 = add nuw nsw i32 %54, 1
  br label %53

; <label>:68:                                     ; preds = %53, %57
  tail call fastcc void @fixjump(%struct.FuncState* %0, i32 %52, i32 %55) #8
  br label %69

; <label>:69:                                     ; preds = %22, %33, %14, %45, %68
  %70 = add nuw nsw i64 %10, 1
  br label %9

; <label>:71:                                     ; preds = %9
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc i32 @patchtestreg(%struct.FuncState* nocapture readonly, i32, i32) unnamed_addr #5 {
  %4 = tail call fastcc i32* @getjumpcontrol(%struct.FuncState* %0, i32 %1) #8
  %5 = load i32, i32* %4, align 4, !tbaa !9
  %6 = and i32 %5, 127
  %7 = icmp eq i32 %6, 68
  br i1 %7, label %8, label %27

; <label>:8:                                      ; preds = %3
  %9 = icmp eq i32 %2, 255
  br i1 %9, label %19, label %10

; <label>:10:                                     ; preds = %8
  %11 = lshr i32 %5, 16
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %19, label %14

; <label>:14:                                     ; preds = %10
  %15 = and i32 %5, -32641
  %16 = shl i32 %2, 7
  %17 = and i32 %16, 32640
  %18 = or i32 %15, %17
  br label %25

; <label>:19:                                     ; preds = %10, %8
  %20 = lshr i32 %5, 9
  %21 = and i32 %20, 32640
  %22 = and i32 %5, 32768
  %23 = or i32 %22, %21
  %24 = or i32 %23, 67
  br label %25

; <label>:25:                                     ; preds = %19, %14
  %26 = phi i32 [ %24, %19 ], [ %18, %14 ]
  store i32 %26, i32* %4, align 4, !tbaa !9
  br label %27

; <label>:27:                                     ; preds = %3, %25
  %28 = phi i32 [ 1, %25 ], [ 0, %3 ]
  ret i32 %28
}

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
define internal fastcc i32* @getjumpcontrol(%struct.FuncState* nocapture readonly, i32) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %4 = load %struct.Proto*, %struct.Proto** %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i64 0, i32 16
  %6 = load i32*, i32** %5, align 8, !tbaa !15
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %19

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds i32, i32* %8, i64 -1
  %12 = load i32, i32* %11, align 4, !tbaa !9
  %13 = and i32 %12, 127
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1, !tbaa !22
  %17 = and i8 %16, 16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %10, %2
  br label %20

; <label>:20:                                     ; preds = %10, %19
  %21 = phi i32* [ %8, %19 ], [ %11, %10 ]
  ret i32* %21
}

; Function Attrs: minsize optsize
declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32, i32*, i32, i32, i8*) local_unnamed_addr #6

; Function Attrs: minsize optsize
declare hidden %struct.TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.TValue*) local_unnamed_addr #6

; Function Attrs: minsize optsize
declare hidden i32 @luaV_equalobj(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #6

; Function Attrs: minsize optsize
declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) local_unnamed_addr #6

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @discharge2reg(%struct.FuncState* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  %4 = alloca i64, align 8
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1) #8
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %6 = load i32, i32* %5, align 8, !tbaa !34
  switch i32 %6, label %65 [
    i32 1, label %7
    i32 3, label %8
    i32 2, label %8
    i32 4, label %16
    i32 5, label %20
    i32 6, label %34
    i32 15, label %37
    i32 7, label %52
  ]

; <label>:7:                                      ; preds = %3
  tail call void @luaK_nil(%struct.FuncState* %0, i32 %2, i32 1) #8
  br label %62

; <label>:8:                                      ; preds = %3, %3
  %9 = icmp eq i32 %6, 2
  %10 = zext i1 %9 to i32
  %11 = shl i32 %2, 7
  %12 = shl nuw nsw i32 %10, 16
  %13 = or i32 %11, %12
  %14 = or i32 %13, 5
  %15 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %14) #9
  br label %62

; <label>:16:                                     ; preds = %3
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %18 = bitcast %union.anon.7* %17 to i32*
  %19 = load i32, i32* %18, align 8, !tbaa !22
  tail call fastcc void @luaK_codek(%struct.FuncState* %0, i32 %2, i32 %19) #8
  br label %62

; <label>:20:                                     ; preds = %3
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %22 = bitcast %union.anon.7* %21 to double*
  %23 = load double, double* %22, align 8, !tbaa !22
  %24 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #10
  %25 = call fastcc i32 @floatI(double %23, i64* nonnull %4) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

; <label>:27:                                     ; preds = %20
  %28 = load i64, i64* %4, align 8, !tbaa !39
  %29 = trunc i64 %28 to i32
  %30 = call i32 @luaK_codeAsBx(%struct.FuncState* %0, i32 2, i32 %2, i32 %29) #9
  br label %33

; <label>:31:                                     ; preds = %20
  %32 = call fastcc i32 @luaK_numberK(%struct.FuncState* %0, double %23) #9
  call fastcc void @luaK_codek(%struct.FuncState* %0, i32 %2, i32 %32) #9
  br label %33

; <label>:33:                                     ; preds = %27, %31
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #10
  br label %62

; <label>:34:                                     ; preds = %3
  %35 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  %36 = load i64, i64* %35, align 8, !tbaa !22
  tail call void @luaK_int(%struct.FuncState* %0, i32 %2, i64 %36) #8
  br label %62

; <label>:37:                                     ; preds = %3
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %39 = load %struct.Proto*, %struct.Proto** %38, align 8, !tbaa !14
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %39, i64 0, i32 16
  %41 = load i32*, i32** %40, align 8, !tbaa !15
  %42 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %43 = bitcast %union.anon.7* %42 to i32*
  %44 = load i32, i32* %43, align 8, !tbaa !22
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !9
  %48 = and i32 %47, -32641
  %49 = shl i32 %2, 7
  %50 = and i32 %49, 32640
  %51 = or i32 %48, %50
  store i32 %51, i32* %46, align 4, !tbaa !9
  br label %62

; <label>:52:                                     ; preds = %3
  %53 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %54 = bitcast %union.anon.7* %53 to i32*
  %55 = load i32, i32* %54, align 8, !tbaa !22
  %56 = icmp eq i32 %55, %2
  br i1 %56, label %62, label %57

; <label>:57:                                     ; preds = %52
  %58 = shl i32 %2, 7
  %59 = shl i32 %55, 16
  %60 = or i32 %59, %58
  %61 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %60) #9
  br label %62

; <label>:62:                                     ; preds = %52, %57, %37, %34, %33, %16, %8, %7
  %63 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %64 = bitcast %union.anon.7* %63 to i32*
  store i32 %2, i32* %64, align 8, !tbaa !22
  store i32 7, i32* %5, align 8, !tbaa !34
  br label %65

; <label>:65:                                     ; preds = %3, %62
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
define internal fastcc i32 @need_value(%struct.FuncState* nocapture readonly, i32) unnamed_addr #4 {
  br label %3

; <label>:3:                                      ; preds = %11, %2
  %4 = phi i32 [ %1, %2 ], [ %12, %11 ]
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %13, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call fastcc i32* @getjumpcontrol(%struct.FuncState* %0, i32 %4) #8
  %8 = load i32, i32* %7, align 4, !tbaa !9
  %9 = and i32 %8, 127
  %10 = icmp eq i32 %9, 68
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %6
  %12 = tail call fastcc i32 @getjump(%struct.FuncState* %0, i32 %4) #8
  br label %3

; <label>:13:                                     ; preds = %3, %6
  %14 = phi i32 [ 1, %6 ], [ 0, %3 ]
  ret i32 %14
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @code_loadbool(%struct.FuncState* nocapture, i32, i32, i32) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %6 = load i32, i32* %5, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %6, i32* %7, align 4, !tbaa !13
  %8 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 5, i32 %1, i32 %2, i32 %3, i32 0) #8
  ret i32 %8
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @floatI(double, i64*) unnamed_addr #2 {
  %3 = tail call i32 @luaV_flttointeger(double %0, i64* %1, i32 0) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

; <label>:5:                                      ; preds = %2
  %6 = load i64, i64* %1, align 8, !tbaa !39
  %7 = add i64 %6, 65535
  %8 = icmp ult i64 %7, 131072
  %9 = zext i1 %8 to i32
  br label %10

; <label>:10:                                     ; preds = %2, %5
  %11 = phi i32 [ 0, %2 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @luaK_numberK(%struct.FuncState* nocapture, double) unnamed_addr #2 {
  %3 = alloca %struct.TValue, align 8
  %4 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #10
  %5 = bitcast %struct.TValue* %3 to double*
  store double %1, double* %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 19, i8* %6, align 8, !tbaa !25
  %7 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %3, %struct.TValue* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #10
  ret i32 %7
}

; Function Attrs: minsize optsize
declare hidden i32 @luaV_flttointeger(double, i64*, i32) local_unnamed_addr #6

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @boolK(%struct.FuncState* nocapture, i32) unnamed_addr #2 {
  %3 = alloca %struct.TValue, align 8
  %4 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #10
  %5 = bitcast %struct.TValue* %3 to i32*
  store i32 %1, i32* %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 1, i8* %6, align 8, !tbaa !25
  %7 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %3, %struct.TValue* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #10
  ret i32 %7
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @condjump(%struct.FuncState* nocapture, i32, i32, i32, i32, i32) unnamed_addr #2 {
  %7 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #8
  %8 = tail call i32 @luaK_jump(%struct.FuncState* %0) #8
  ret i32 %8
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @discharge2anyreg(%struct.FuncState* nocapture, %struct.expdesc* nocapture) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %11, label %6

; <label>:6:                                      ; preds = %2
  tail call void @luaK_reserveregs(%struct.FuncState* %0, i32 1) #8
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %8 = load i8, i8* %7, align 4, !tbaa !20
  %9 = zext i8 %8 to i32
  %10 = add nsw i32 %9, -1
  tail call fastcc void @discharge2reg(%struct.FuncState* %0, %struct.expdesc* nonnull %1, i32 %10) #8
  br label %11

; <label>:11:                                     ; preds = %2, %6
  ret void
}

; Function Attrs: minsize optsize
declare hidden i32 @luaO_rawarith(%struct.lua_State*, i32, %struct.TValue*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #6

; Function Attrs: minsize optsize
declare hidden i32 @luaV_tointegerns(%struct.TValue*, i64*, i32) local_unnamed_addr #6

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc void @removevalues(%struct.FuncState* nocapture readonly, i32) unnamed_addr #5 {
  br label %3

; <label>:3:                                      ; preds = %6, %2
  %4 = phi i32 [ %1, %2 ], [ %8, %6 ]
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %9, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call fastcc i32 @patchtestreg(%struct.FuncState* %0, i32 %4, i32 255) #8
  %8 = tail call fastcc i32 @getjump(%struct.FuncState* %0, i32 %4) #8
  br label %3

; <label>:9:                                      ; preds = %3
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @finishbinexpval(%struct.FuncState* nocapture, %struct.expdesc* nocapture, %struct.expdesc* nocapture readonly, i32, i32, i32, i32) unnamed_addr #2 {
  %8 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %1) #8
  %9 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 %3, i32 0, i32 %8, i32 %4, i32 %5) #8
  tail call fastcc void @freeexps(%struct.FuncState* %0, %struct.expdesc* %1, %struct.expdesc* %2) #8
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %11 = bitcast %union.anon.7* %10 to i32*
  store i32 %9, i32* %11, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 15, i32* %12, align 8, !tbaa !34
  tail call void @luaK_fixline(%struct.FuncState* %0, i32 %6) #8
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @codebinexpval(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  %6 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %3) #8
  tail call fastcc void @finishbinexpval(%struct.FuncState* %0, %struct.expdesc* %2, %struct.expdesc* %3, i32 %1, i32 %6, i32 0, i32 %4) #8
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc void @freeexps(%struct.FuncState* nocapture, %struct.expdesc* nocapture readonly, %struct.expdesc* nocapture readonly) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 7
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %9 = bitcast %union.anon.7* %8 to i32*
  %10 = load i32, i32* %9, align 8, !tbaa !22
  br label %11

; <label>:11:                                     ; preds = %3, %7
  %12 = phi i32 [ %10, %7 ], [ -1, %3 ]
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %14 = load i32, i32* %13, align 8, !tbaa !34
  %15 = icmp eq i32 %14, 7
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %18 = bitcast %union.anon.7* %17 to i32*
  %19 = load i32, i32* %18, align 8, !tbaa !22
  br label %20

; <label>:20:                                     ; preds = %11, %16
  %21 = phi i32 [ %19, %16 ], [ -1, %11 ]
  tail call fastcc void @freeregs(%struct.FuncState* %0, i32 %12, i32 %21) #8
  ret void
}

attributes #0 = { minsize noreturn nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { minsize noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { minsize norecurse nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { minsize norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { minsize noreturn nounwind optsize }
attributes #8 = { minsize optsize }
attributes #9 = { minsize nounwind optsize }
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
!9 = !{!4, !4, i64 0}
!10 = !{!11, !4, i64 32}
!11 = !{!"FuncState", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !12, i64 64, !5, i64 66, !5, i64 67, !5, i64 68, !5, i64 69, !5, i64 70}
!12 = !{!"short", !5, i64 0}
!13 = !{!11, !4, i64 36}
!14 = !{!11, !8, i64 0}
!15 = !{!16, !8, i64 64}
!16 = !{!"Proto", !8, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120}
!17 = !{!11, !8, i64 16}
!18 = !{!3, !8, i64 56}
!19 = !{!3, !4, i64 8}
!20 = !{!11, !5, i64 68}
!21 = !{!16, !5, i64 12}
!22 = !{!5, !5, i64 0}
!23 = !{!24, !5, i64 8}
!24 = !{!"TString", !8, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !4, i64 12, !5, i64 16}
!25 = !{!26, !5, i64 8}
!26 = !{!"TValue", !5, i64 0, !5, i64 8}
!27 = !{!3, !8, i64 80}
!28 = !{!11, !4, i64 44}
!29 = !{!16, !8, i64 56}
!30 = !{!16, !4, i64 20}
!31 = !{!16, !5, i64 9}
!32 = !{!33, !5, i64 9}
!33 = !{!"GCObject", !8, i64 0, !5, i64 8, !5, i64 9}
!34 = !{!35, !5, i64 0}
!35 = !{!"expdesc", !5, i64 0, !5, i64 8, !4, i64 16, !4, i64 20}
!36 = !{!11, !5, i64 66}
!37 = !{!35, !4, i64 16}
!38 = !{!35, !4, i64 20}
!39 = !{!40, !40, i64 0}
!40 = !{!"long long", !5, i64 0}
!41 = !{i64 0, i64 4, !22, i64 8, i64 8, !39, i64 8, i64 8, !42, i64 8, i64 4, !9, i64 8, i64 2, !44, i64 10, i64 1, !22, i64 16, i64 4, !9, i64 20, i64 4, !9}
!42 = !{!43, !43, i64 0}
!43 = !{!"double", !5, i64 0}
!44 = !{!12, !12, i64 0}
!45 = !{!16, !8, i64 88}
!46 = !{!11, !4, i64 40}
!47 = !{!11, !5, i64 69}
!48 = !{!11, !4, i64 52}
!49 = !{!16, !8, i64 96}
!50 = !{!51, !4, i64 0}
!51 = !{!"AbsLineInfo", !4, i64 0, !4, i64 4}
!52 = !{!51, !4, i64 4}
!53 = !{!11, !5, i64 70}
!54 = !{!16, !5, i64 11}
!55 = !{!16, !5, i64 10}
