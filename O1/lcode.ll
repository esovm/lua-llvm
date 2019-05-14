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

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaK_semerror(%struct.LexState*, i8*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  store i32 0, i32* %3, align 8, !tbaa !2
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* %1) #8
  unreachable
}

; Function Attrs: noreturn
declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @luaK_nil(%struct.FuncState* nocapture, i32, i32) local_unnamed_addr #2 {
  %4 = add nsw i32 %2, %1
  %5 = add i32 %4, 255
  %6 = tail call fastcc i32* @previousinstruction(%struct.FuncState* %0)
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
  br label %40

; <label>:37:                                     ; preds = %20, %3
  %38 = add nsw i32 %2, -1
  %39 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 6, i32 %1, i32 %38, i32 0, i32 0)
  br label %40

; <label>:40:                                     ; preds = %24, %37
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: norecurse nounwind readonly uwtable
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

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_codeABCk(%struct.FuncState* nocapture, i32, i32, i32, i32, i32) local_unnamed_addr #2 {
  %7 = shl i32 %2, 7
  %8 = or i32 %7, %1
  %9 = shl i32 %3, 16
  %10 = or i32 %8, %9
  %11 = shl i32 %4, 24
  %12 = or i32 %10, %11
  %13 = shl i32 %5, 15
  %14 = or i32 %12, %13
  %15 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %14)
  ret i32 %15
}

; Function Attrs: nounwind uwtable
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
  %12 = tail call fastcc i32 @getjump(%struct.FuncState* %0, i32 %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %10

; <label>:14:                                     ; preds = %10
  tail call fastcc void @fixjump(%struct.FuncState* %0, i32 %11, i32 %2)
  br label %15

; <label>:15:                                     ; preds = %9, %14, %3
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
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

; Function Attrs: nounwind uwtable
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
  tail call void @luaX_syntaxerror(%struct.LexState* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #8
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

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_jump(%struct.FuncState* nocapture) local_unnamed_addr #2 {
  %2 = tail call fastcc i32 @codesJ(%struct.FuncState* %0)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @codesJ(%struct.FuncState* nocapture) unnamed_addr #2 {
  %2 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 2147483449)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_ret(%struct.FuncState* nocapture, i32, i32) local_unnamed_addr #2 {
  %4 = icmp eq i32 %2, 1
  %5 = select i1 %4, i32 73, i32 71
  %6 = icmp eq i32 %2, 0
  %7 = select i1 %6, i32 72, i32 %5
  %8 = add nsw i32 %2, 1
  %9 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 %7, i32 %1, i32 %8, i32 0, i32 0)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define hidden i32 @luaK_getlabel(%struct.FuncState* nocapture) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %3, i32* %4, align 4, !tbaa !13
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_patchlist(%struct.FuncState* nocapture readonly, i32, i32) local_unnamed_addr #2 {
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %1, i32 %2, i32 255, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @patchlistaux(%struct.FuncState* nocapture readonly, i32, i32, i32, i32) unnamed_addr #2 {
  %6 = icmp eq i32 %1, -1
  br i1 %6, label %17, label %7

; <label>:7:                                      ; preds = %5
  br label %8

; <label>:8:                                      ; preds = %7, %15
  %9 = phi i32 [ %10, %15 ], [ %1, %7 ]
  %10 = tail call fastcc i32 @getjump(%struct.FuncState* %0, i32 %9)
  %11 = tail call fastcc i32 @patchtestreg(%struct.FuncState* %0, i32 %9, i32 %3)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %8
  tail call fastcc void @fixjump(%struct.FuncState* %0, i32 %9, i32 %2)
  br label %15

; <label>:14:                                     ; preds = %8
  tail call fastcc void @fixjump(%struct.FuncState* %0, i32 %9, i32 %4)
  br label %15

; <label>:15:                                     ; preds = %14, %13
  %16 = icmp eq i32 %10, -1
  br i1 %16, label %17, label %8

; <label>:17:                                     ; preds = %15, %5
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_patchtohere(%struct.FuncState* nocapture, i32) local_unnamed_addr #2 {
  %3 = tail call i32 @luaK_getlabel(%struct.FuncState* %0)
  tail call void @luaK_patchlist(%struct.FuncState* %0, i32 %1, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
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
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %4, i32 %23)
  %24 = load i32, i32* %12, align 8, !tbaa !10
  %25 = add nsw i32 %24, -1
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_codeABx(%struct.FuncState* nocapture, i32, i32, i32) local_unnamed_addr #2 {
  %5 = shl i32 %2, 7
  %6 = or i32 %5, %1
  %7 = shl i32 %3, 15
  %8 = or i32 %6, %7
  %9 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %8)
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_codeAsBx(%struct.FuncState* nocapture, i32, i32, i32) local_unnamed_addr #2 {
  %5 = shl i32 %2, 7
  %6 = or i32 %5, %1
  %7 = shl i32 %3, 15
  %8 = add i32 %7, 2147450880
  %9 = or i32 %6, %8
  %10 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %9)
  ret i32 %10
}

; Function Attrs: nounwind uwtable
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
  tail call void @luaX_syntaxerror(%struct.LexState* %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #8
  unreachable

; <label>:18:                                     ; preds = %13
  %19 = trunc i32 %6 to i8
  store i8 %19, i8* %9, align 4, !tbaa !21
  br label %20

; <label>:20:                                     ; preds = %18, %2
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_reserveregs(%struct.FuncState* nocapture, i32) local_unnamed_addr #2 {
  tail call void @luaK_checkstack(%struct.FuncState* %0, i32 %1)
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %4 = load i8, i8* %3, align 4, !tbaa !20
  %5 = trunc i32 %1 to i8
  %6 = add i8 %4, %5
  store i8 %6, i8* %3, align 4, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_stringK(%struct.FuncState* nocapture, %struct.TString*) local_unnamed_addr #2 {
  %3 = alloca %struct.TValue, align 8
  %4 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #9
  %5 = bitcast %struct.TValue* %3 to %struct.TString**
  store %struct.TString* %1, %struct.TString** %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !23
  %8 = or i8 %7, 64
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 %8, i8* %9, align 8, !tbaa !25
  %10 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %3, %struct.TValue* nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #9
  ret i32 %10
}

; Function Attrs: nounwind uwtable
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
  br i1 %15, label %16, label %39

; <label>:16:                                     ; preds = %3
  %17 = bitcast %struct.TValue* %12 to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !22
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7
  %21 = load i32, i32* %20, align 4, !tbaa !28
  %22 = icmp sgt i32 %21, %19
  br i1 %22, label %23, label %39

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 15
  %25 = load %struct.TValue*, %struct.TValue** %24, align 8, !tbaa !29
  %26 = shl i64 %18, 32
  %27 = ashr exact i64 %26, 32
  %28 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i64 %27, i32 1
  %29 = load i8, i8* %28, align 8, !tbaa !25
  %30 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %31 = load i8, i8* %30, align 8, !tbaa !25
  %32 = xor i8 %31, %29
  %33 = and i8 %32, 63
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39

; <label>:35:                                     ; preds = %23
  %36 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i64 %27
  %37 = tail call i32 @luaV_equalobj(%struct.lua_State* null, %struct.TValue* %36, %struct.TValue* nonnull %2) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %92

; <label>:39:                                     ; preds = %35, %16, %23, %3
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 7
  %41 = load i32, i32* %40, align 4, !tbaa !30
  %42 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7
  %43 = load i32, i32* %42, align 4, !tbaa !28
  %44 = sext i32 %43 to i64
  %45 = bitcast %struct.TValue* %12 to i64*
  store i64 %44, i64* %45, align 8, !tbaa !22
  store i8 35, i8* %13, align 8, !tbaa !25
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 15
  %47 = bitcast %struct.TValue** %46 to i8**
  %48 = load i8*, i8** %47, align 8, !tbaa !29
  %49 = tail call i8* @luaM_growaux_(%struct.lua_State* %7, i8* %48, i32 %43, i32* nonnull %40, i32 16, i32 33554431, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)) #9
  store i8* %49, i8** %47, align 8, !tbaa !29
  %50 = load i32, i32* %40, align 4, !tbaa !30
  %51 = icmp slt i32 %41, %50
  %52 = bitcast i8* %49 to %struct.TValue*
  br i1 %51, label %53, label %64

; <label>:53:                                     ; preds = %39
  %54 = load i32, i32* %40, align 4, !tbaa !30
  %55 = load %struct.TValue*, %struct.TValue** %46, align 8, !tbaa !29
  %56 = sext i32 %41 to i64
  %57 = sext i32 %54 to i64
  br label %58

; <label>:58:                                     ; preds = %53, %58
  %59 = phi i64 [ %56, %53 ], [ %61, %58 ]
  %60 = phi %struct.TValue* [ %52, %53 ], [ %55, %58 ]
  %61 = add nsw i64 %59, 1
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i64 %59, i32 1
  store i8 0, i8* %62, align 8, !tbaa !25
  %63 = icmp slt i64 %61, %57
  br i1 %63, label %58, label %64

; <label>:64:                                     ; preds = %58, %39
  %65 = phi %struct.TValue* [ %52, %39 ], [ %55, %58 ]
  %66 = getelementptr inbounds %struct.TValue, %struct.TValue* %65, i64 %44
  %67 = bitcast %struct.TValue* %2 to i64*
  %68 = bitcast %struct.TValue* %66 to i64*
  %69 = load i64, i64* %67, align 8
  store i64 %69, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %71 = load i8, i8* %70, align 8, !tbaa !25
  %72 = getelementptr inbounds %struct.TValue, %struct.TValue* %65, i64 %44, i32 1
  store i8 %71, i8* %72, align 8, !tbaa !25
  %73 = load i32, i32* %42, align 4, !tbaa !28
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %42, align 4, !tbaa !28
  %75 = load i8, i8* %70, align 8, !tbaa !25
  %76 = and i8 %75, 64
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %92, label %78

; <label>:78:                                     ; preds = %64
  %79 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 2
  %80 = load i8, i8* %79, align 1, !tbaa !31
  %81 = and i8 %80, 32
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %92, label %83

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 0, i32 0
  %85 = load %struct.GCObject*, %struct.GCObject** %84, align 8, !tbaa !22
  %86 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %85, i64 0, i32 2
  %87 = load i8, i8* %86, align 1, !tbaa !32
  %88 = and i8 %87, 24
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %92, label %90

; <label>:90:                                     ; preds = %83
  %91 = bitcast %struct.Proto* %9 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* %7, %struct.GCObject* %91, %struct.GCObject* %85) #9
  br label %92

; <label>:92:                                     ; preds = %90, %64, %78, %83, %35
  %93 = phi i32 [ %19, %35 ], [ %43, %83 ], [ %43, %78 ], [ %43, %64 ], [ %43, %90 ]
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_int(%struct.FuncState* nocapture, i32, i64) local_unnamed_addr #2 {
  %4 = tail call fastcc i32 @fitsBx(i64 %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6:                                      ; preds = %3
  %7 = trunc i64 %2 to i32
  %8 = tail call i32 @luaK_codeAsBx(%struct.FuncState* %0, i32 1, i32 %1, i32 %7)
  br label %11

; <label>:9:                                      ; preds = %3
  %10 = tail call fastcc i32 @luaK_intK(%struct.FuncState* %0, i64 %2)
  tail call fastcc void @luaK_codek(%struct.FuncState* %0, i32 %1, i32 %10)
  br label %11

; <label>:11:                                     ; preds = %9, %6
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define internal fastcc i32 @fitsBx(i64) unnamed_addr #6 {
  %2 = add i64 %0, 65535
  %3 = icmp ult i64 %2, 131072
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @luaK_codek(%struct.FuncState* nocapture, i32, i32) unnamed_addr #2 {
  %4 = icmp slt i32 %2, 131072
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @luaK_codeABx(%struct.FuncState* %0, i32 3, i32 %1, i32 %2)
  br label %9

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 @luaK_codeABx(%struct.FuncState* %0, i32 4, i32 %1, i32 0)
  tail call fastcc void @codeextraarg(%struct.FuncState* %0, i32 %2)
  br label %9

; <label>:9:                                      ; preds = %7, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @luaK_intK(%struct.FuncState* nocapture, i64) unnamed_addr #2 {
  %3 = alloca %struct.TValue, align 8
  %4 = alloca %struct.TValue, align 8
  %5 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #9
  %6 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #9
  %7 = inttoptr i64 %1 to i8*
  %8 = bitcast %struct.TValue* %3 to i8**
  store i8* %7, i8** %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 2, i8* %9, align 8, !tbaa !25
  %10 = bitcast %struct.TValue* %4 to i64*
  store i64 %1, i64* %10, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 35, i8* %11, align 8, !tbaa !25
  %12 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %3, %struct.TValue* nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #9
  ret i32 %12
}

; Function Attrs: nounwind uwtable
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
  tail call void @luaK_reserveregs(%struct.FuncState* nonnull %0, i32 1)
  br label %32

; <label>:32:                                     ; preds = %3, %21, %15
  ret void
}

; Function Attrs: norecurse nounwind uwtable
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

; Function Attrs: nounwind uwtable
define hidden void @luaK_dischargevars(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !34
  switch i32 %4, label %64 [
    i32 8, label %5
    i32 9, label %6
    i32 11, label %11
    i32 12, label %22
    i32 13, label %35
    i32 10, label %48
    i32 17, label %63
    i32 16, label %63
  ]

; <label>:5:                                      ; preds = %2
  store i32 7, i32* %3, align 8, !tbaa !34
  br label %64

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %8 = bitcast %union.anon.7* %7 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !22
  %10 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 7, i32 0, i32 %9, i32 0, i32 0)
  store i32 %10, i32* %8, align 8, !tbaa !22
  store i32 15, i32* %3, align 8, !tbaa !34
  br label %64

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %13 = bitcast %union.anon.7* %12 to %struct.anon.8*
  %14 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %13, i64 0, i32 1
  %15 = load i8, i8* %14, align 2, !tbaa !22
  %16 = zext i8 %15 to i32
  %17 = bitcast %union.anon.7* %12 to i16*
  %18 = load i16, i16* %17, align 8, !tbaa !22
  %19 = sext i16 %18 to i32
  %20 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 9, i32 0, i32 %16, i32 %19, i32 0)
  %21 = bitcast %union.anon.7* %12 to i32*
  store i32 %20, i32* %21, align 8, !tbaa !22
  store i32 15, i32* %3, align 8, !tbaa !34
  br label %64

; <label>:22:                                     ; preds = %2
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %24 = bitcast %union.anon.7* %23 to %struct.anon.8*
  %25 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %24, i64 0, i32 1
  %26 = load i8, i8* %25, align 2, !tbaa !22
  %27 = zext i8 %26 to i32
  tail call fastcc void @freereg(%struct.FuncState* %0, i32 %27)
  %28 = load i8, i8* %25, align 2, !tbaa !22
  %29 = zext i8 %28 to i32
  %30 = bitcast %union.anon.7* %23 to i16*
  %31 = load i16, i16* %30, align 8, !tbaa !22
  %32 = sext i16 %31 to i32
  %33 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 11, i32 0, i32 %29, i32 %32, i32 0)
  %34 = bitcast %union.anon.7* %23 to i32*
  store i32 %33, i32* %34, align 8, !tbaa !22
  store i32 15, i32* %3, align 8, !tbaa !34
  br label %64

; <label>:35:                                     ; preds = %2
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %37 = bitcast %union.anon.7* %36 to %struct.anon.8*
  %38 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %37, i64 0, i32 1
  %39 = load i8, i8* %38, align 2, !tbaa !22
  %40 = zext i8 %39 to i32
  tail call fastcc void @freereg(%struct.FuncState* %0, i32 %40)
  %41 = load i8, i8* %38, align 2, !tbaa !22
  %42 = zext i8 %41 to i32
  %43 = bitcast %union.anon.7* %36 to i16*
  %44 = load i16, i16* %43, align 8, !tbaa !22
  %45 = sext i16 %44 to i32
  %46 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 12, i32 0, i32 %42, i32 %45, i32 0)
  %47 = bitcast %union.anon.7* %36 to i32*
  store i32 %46, i32* %47, align 8, !tbaa !22
  store i32 15, i32* %3, align 8, !tbaa !34
  br label %64

; <label>:48:                                     ; preds = %2
  %49 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %50 = bitcast %union.anon.7* %49 to %struct.anon.8*
  %51 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %50, i64 0, i32 1
  %52 = load i8, i8* %51, align 2, !tbaa !22
  %53 = zext i8 %52 to i32
  %54 = bitcast %union.anon.7* %49 to i16*
  %55 = load i16, i16* %54, align 8, !tbaa !22
  %56 = sext i16 %55 to i32
  tail call fastcc void @freeregs(%struct.FuncState* %0, i32 %53, i32 %56)
  %57 = load i8, i8* %51, align 2, !tbaa !22
  %58 = zext i8 %57 to i32
  %59 = load i16, i16* %54, align 8, !tbaa !22
  %60 = sext i16 %59 to i32
  %61 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 10, i32 0, i32 %58, i32 %60, i32 0)
  %62 = bitcast %union.anon.7* %49 to i32*
  store i32 %61, i32* %62, align 8, !tbaa !22
  store i32 15, i32* %3, align 8, !tbaa !34
  br label %64

; <label>:63:                                     ; preds = %2, %2
  tail call void @luaK_setoneret(%struct.FuncState* %0, %struct.expdesc* nonnull %1)
  br label %64

; <label>:64:                                     ; preds = %2, %63, %48, %35, %22, %11, %6, %5
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @freereg(%struct.FuncState* nocapture, i32) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %4 = load i8, i8* %3, align 2, !tbaa !36
  %5 = zext i8 %4 to i32
  %6 = icmp sgt i32 %5, %1
  br i1 %6, label %11, label %7

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %9 = load i8, i8* %8, align 4, !tbaa !20
  %10 = add i8 %9, -1
  store i8 %10, i8* %8, align 4, !tbaa !20
  br label %11

; <label>:11:                                     ; preds = %2, %7
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @freeregs(%struct.FuncState* nocapture, i32, i32) unnamed_addr #5 {
  %4 = icmp sgt i32 %1, %2
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  tail call fastcc void @freereg(%struct.FuncState* %0, i32 %1)
  tail call fastcc void @freereg(%struct.FuncState* %0, i32 %2)
  br label %7

; <label>:6:                                      ; preds = %3
  tail call fastcc void @freereg(%struct.FuncState* %0, i32 %2)
  tail call fastcc void @freereg(%struct.FuncState* %0, i32 %1)
  br label %7

; <label>:7:                                      ; preds = %6, %5
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_exp2nextreg(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* %1)
  tail call void @luaK_reserveregs(%struct.FuncState* %0, i32 1)
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %4 = load i8, i8* %3, align 4, !tbaa !20
  %5 = zext i8 %4 to i32
  %6 = add nsw i32 %5, -1
  tail call fastcc void @exp2reg(%struct.FuncState* %0, %struct.expdesc* %1, i32 %6)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @freeexp(%struct.FuncState* nocapture, %struct.expdesc* nocapture readonly) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %6, label %10

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %8 = bitcast %union.anon.7* %7 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !22
  tail call fastcc void @freereg(%struct.FuncState* %0, i32 %9)
  br label %10

; <label>:10:                                     ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @exp2reg(%struct.FuncState* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  tail call fastcc void @discharge2reg(%struct.FuncState* %0, %struct.expdesc* %1, i32 %2)
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 14
  br i1 %6, label %7, label %12

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %10 = bitcast %union.anon.7* %9 to i32*
  %11 = load i32, i32* %10, align 8, !tbaa !22
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %8, i32 %11)
  br label %12

; <label>:12:                                     ; preds = %7, %3
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %14 = load i32, i32* %13, align 8, !tbaa !37
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %16 = load i32, i32* %15, align 4, !tbaa !38
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %39, label %18

; <label>:18:                                     ; preds = %12
  %19 = tail call fastcc i32 @need_value(%struct.FuncState* %0, i32 %14)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %18
  %22 = tail call fastcc i32 @need_value(%struct.FuncState* %0, i32 %16)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

; <label>:24:                                     ; preds = %21, %18
  %25 = load i32, i32* %4, align 8, !tbaa !34
  %26 = icmp eq i32 %25, 14
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %24
  %28 = tail call i32 @luaK_jump(%struct.FuncState* %0)
  br label %29

; <label>:29:                                     ; preds = %24, %27
  %30 = phi i32 [ %28, %27 ], [ -1, %24 ]
  %31 = tail call fastcc i32 @code_loadbool(%struct.FuncState* %0, i32 %2, i32 0, i32 1)
  %32 = tail call fastcc i32 @code_loadbool(%struct.FuncState* %0, i32 %2, i32 1, i32 0)
  tail call void @luaK_patchtohere(%struct.FuncState* %0, i32 %30)
  br label %33

; <label>:33:                                     ; preds = %21, %29
  %34 = phi i32 [ %32, %29 ], [ -1, %21 ]
  %35 = phi i32 [ %31, %29 ], [ -1, %21 ]
  %36 = tail call i32 @luaK_getlabel(%struct.FuncState* %0)
  %37 = load i32, i32* %15, align 4, !tbaa !38
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %37, i32 %36, i32 %2, i32 %35)
  %38 = load i32, i32* %13, align 8, !tbaa !37
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %38, i32 %36, i32 %2, i32 %34)
  br label %39

; <label>:39:                                     ; preds = %12, %33
  store i32 -1, i32* %13, align 8, !tbaa !37
  store i32 -1, i32* %15, align 4, !tbaa !38
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %41 = bitcast %union.anon.7* %40 to i32*
  store i32 %2, i32* %41, align 8, !tbaa !22
  store i32 7, i32* %4, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_exp2anyreg(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %6, label %21

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %8 = load i32, i32* %7, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %10 = load i32, i32* %9, align 4, !tbaa !38
  %11 = icmp eq i32 %8, %10
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %13 = bitcast %union.anon.7* %12 to i32*
  %14 = load i32, i32* %13, align 8, !tbaa !22
  br i1 %11, label %27, label %15

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %17 = load i8, i8* %16, align 2, !tbaa !36
  %18 = zext i8 %17 to i32
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %21, label %20

; <label>:20:                                     ; preds = %15
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %14)
  br label %24

; <label>:21:                                     ; preds = %15, %2
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1)
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %23 = bitcast %union.anon.7* %22 to i32*
  br label %24

; <label>:24:                                     ; preds = %20, %21
  %25 = phi i32* [ %23, %21 ], [ %13, %20 ]
  %26 = load i32, i32* %25, align 8, !tbaa !22
  br label %27

; <label>:27:                                     ; preds = %24, %6
  %28 = phi i32 [ %14, %6 ], [ %26, %24 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
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
  %13 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1)
  br label %14

; <label>:14:                                     ; preds = %6, %12
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_exp2val(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %4 = load i32, i32* %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %6 = load i32, i32* %5, align 4, !tbaa !38
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1)
  br label %11

; <label>:10:                                     ; preds = %2
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %1)
  br label %11

; <label>:11:                                     ; preds = %10, %8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_exp2RK(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %3 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %1)
  br label %7

; <label>:7:                                      ; preds = %2, %5
  %8 = phi i32 [ 0, %5 ], [ 1, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @luaK_exp2K(%struct.FuncState* nocapture, %struct.expdesc* nocapture) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %4 = load i32, i32* %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %6 = load i32, i32* %5, align 4, !tbaa !38
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %36

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !34
  switch i32 %10, label %36 [
    i32 2, label %11
    i32 3, label %13
    i32 1, label %15
    i32 6, label %17
    i32 5, label %21
    i32 4, label %26
  ]

; <label>:11:                                     ; preds = %8
  %12 = tail call fastcc i32 @boolK(%struct.FuncState* %0, i32 1)
  br label %30

; <label>:13:                                     ; preds = %8
  %14 = tail call fastcc i32 @boolK(%struct.FuncState* %0, i32 0)
  br label %30

; <label>:15:                                     ; preds = %8
  %16 = tail call fastcc i32 @nilK(%struct.FuncState* %0)
  br label %30

; <label>:17:                                     ; preds = %8
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  %19 = load i64, i64* %18, align 8, !tbaa !22
  %20 = tail call fastcc i32 @luaK_intK(%struct.FuncState* %0, i64 %19)
  br label %30

; <label>:21:                                     ; preds = %8
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %23 = bitcast %union.anon.7* %22 to double*
  %24 = load double, double* %23, align 8, !tbaa !22
  %25 = tail call fastcc i32 @luaK_numberK(%struct.FuncState* %0, double %24)
  br label %30

; <label>:26:                                     ; preds = %8
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %28 = bitcast %union.anon.7* %27 to i32*
  %29 = load i32, i32* %28, align 8, !tbaa !22
  br label %30

; <label>:30:                                     ; preds = %26, %21, %17, %15, %13, %11
  %31 = phi i32 [ %29, %26 ], [ %25, %21 ], [ %20, %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ]
  %32 = icmp slt i32 %31, 256
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %30
  store i32 4, i32* %9, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %35 = bitcast %union.anon.7* %34 to i32*
  store i32 %31, i32* %35, align 8, !tbaa !22
  br label %36

; <label>:36:                                     ; preds = %8, %33, %2, %30
  %37 = phi i32 [ 0, %30 ], [ 0, %2 ], [ 0, %8 ], [ 1, %33 ]
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_storevar(%struct.FuncState* nocapture, %struct.expdesc* nocapture readonly, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !34
  switch i32 %5, label %52 [
    i32 8, label %6
    i32 9, label %10
    i32 11, label %16
    i32 12, label %25
    i32 13, label %34
    i32 10, label %43
  ]

; <label>:6:                                      ; preds = %3
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* %2)
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %8 = bitcast %union.anon.7* %7 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !22
  tail call fastcc void @exp2reg(%struct.FuncState* %0, %struct.expdesc* %2, i32 %9)
  br label %53

; <label>:10:                                     ; preds = %3
  %11 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2)
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %13 = bitcast %union.anon.7* %12 to i32*
  %14 = load i32, i32* %13, align 8, !tbaa !22
  %15 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 8, i32 %11, i32 %14, i32 0, i32 0)
  br label %52

; <label>:16:                                     ; preds = %3
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %18 = bitcast %union.anon.7* %17 to %struct.anon.8*
  %19 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %18, i64 0, i32 1
  %20 = load i8, i8* %19, align 2, !tbaa !22
  %21 = zext i8 %20 to i32
  %22 = bitcast %union.anon.7* %17 to i16*
  %23 = load i16, i16* %22, align 8, !tbaa !22
  %24 = sext i16 %23 to i32
  tail call fastcc void @codeABRK(%struct.FuncState* %0, i32 13, i32 %21, i32 %24, %struct.expdesc* %2)
  br label %52

; <label>:25:                                     ; preds = %3
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %27 = bitcast %union.anon.7* %26 to %struct.anon.8*
  %28 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %27, i64 0, i32 1
  %29 = load i8, i8* %28, align 2, !tbaa !22
  %30 = zext i8 %29 to i32
  %31 = bitcast %union.anon.7* %26 to i16*
  %32 = load i16, i16* %31, align 8, !tbaa !22
  %33 = sext i16 %32 to i32
  tail call fastcc void @codeABRK(%struct.FuncState* %0, i32 15, i32 %30, i32 %33, %struct.expdesc* %2)
  br label %52

; <label>:34:                                     ; preds = %3
  %35 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %36 = bitcast %union.anon.7* %35 to %struct.anon.8*
  %37 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %36, i64 0, i32 1
  %38 = load i8, i8* %37, align 2, !tbaa !22
  %39 = zext i8 %38 to i32
  %40 = bitcast %union.anon.7* %35 to i16*
  %41 = load i16, i16* %40, align 8, !tbaa !22
  %42 = sext i16 %41 to i32
  tail call fastcc void @codeABRK(%struct.FuncState* %0, i32 16, i32 %39, i32 %42, %struct.expdesc* %2)
  br label %52

; <label>:43:                                     ; preds = %3
  %44 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %45 = bitcast %union.anon.7* %44 to %struct.anon.8*
  %46 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %45, i64 0, i32 1
  %47 = load i8, i8* %46, align 2, !tbaa !22
  %48 = zext i8 %47 to i32
  %49 = bitcast %union.anon.7* %44 to i16*
  %50 = load i16, i16* %49, align 8, !tbaa !22
  %51 = sext i16 %50 to i32
  tail call fastcc void @codeABRK(%struct.FuncState* %0, i32 14, i32 %48, i32 %51, %struct.expdesc* %2)
  br label %52

; <label>:52:                                     ; preds = %3, %43, %34, %25, %16, %10
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* %2)
  br label %53

; <label>:53:                                     ; preds = %52, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codeABRK(%struct.FuncState* nocapture, i32, i32, i32, %struct.expdesc* nocapture) unnamed_addr #2 {
  %6 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %4)
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1
  %8 = bitcast %union.anon.7* %7 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !22
  %10 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 %1, i32 %2, i32 %3, i32 %9, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_self(%struct.FuncState* nocapture, %struct.expdesc* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %4 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %1)
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %6 = bitcast %union.anon.7* %5 to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !22
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* %1)
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %9 = load i8, i8* %8, align 4, !tbaa !20
  %10 = zext i8 %9 to i32
  store i32 %10, i32* %6, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 7, i32* %11, align 8, !tbaa !34
  tail call void @luaK_reserveregs(%struct.FuncState* %0, i32 2)
  %12 = load i32, i32* %6, align 8, !tbaa !22
  tail call fastcc void @codeABRK(%struct.FuncState* %0, i32 18, i32 %12, i32 %7, %struct.expdesc* %2)
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_goiftrue(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
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
  tail call fastcc void @negatecondition(%struct.FuncState* %0, %struct.expdesc* nonnull %1)
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %7 = bitcast %union.anon.7* %6 to i32*
  %8 = load i32, i32* %7, align 8, !tbaa !22
  br label %11

; <label>:9:                                      ; preds = %2
  %10 = tail call fastcc i32 @jumponcond(%struct.FuncState* %0, %struct.expdesc* nonnull %1, i32 0)
  br label %11

; <label>:11:                                     ; preds = %2, %2, %2, %2, %9, %5
  %12 = phi i32 [ %10, %9 ], [ %8, %5 ], [ -1, %2 ], [ -1, %2 ], [ -1, %2 ], [ -1, %2 ]
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %13, i32 %12)
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %15 = load i32, i32* %14, align 8, !tbaa !37
  tail call void @luaK_patchtohere(%struct.FuncState* %0, i32 %15)
  store i32 -1, i32* %14, align 8, !tbaa !37
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @negatecondition(%struct.FuncState* nocapture readonly, %struct.expdesc* nocapture readonly) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %4 = bitcast %union.anon.7* %3 to i32*
  %5 = load i32, i32* %4, align 8, !tbaa !22
  %6 = tail call fastcc i32* @getjumpcontrol(%struct.FuncState* %0, i32 %5)
  %7 = load i32, i32* %6, align 4, !tbaa !9
  %8 = xor i32 %7, 32768
  store i32 %8, i32* %6, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @jumponcond(%struct.FuncState* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %26

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 16
  %11 = load i32*, i32** %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %13 = bitcast %union.anon.7* %12 to i32*
  %14 = load i32, i32* %13, align 8, !tbaa !22
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !9
  %18 = and i32 %17, 127
  %19 = icmp eq i32 %18, 52
  br i1 %19, label %20, label %26

; <label>:20:                                     ; preds = %7
  tail call fastcc void @removelastinstruction(%struct.FuncState* nonnull %0)
  %21 = lshr i32 %17, 16
  %22 = and i32 %21, 255
  %23 = icmp eq i32 %2, 0
  %24 = zext i1 %23 to i32
  %25 = tail call fastcc i32 @condjump(%struct.FuncState* nonnull %0, i32 67, i32 %22, i32 0, i32 0, i32 %24)
  br label %31

; <label>:26:                                     ; preds = %7, %3
  tail call fastcc void @discharge2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1)
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* nonnull %1)
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %28 = bitcast %union.anon.7* %27 to i32*
  %29 = load i32, i32* %28, align 8, !tbaa !22
  %30 = tail call fastcc i32 @condjump(%struct.FuncState* %0, i32 68, i32 255, i32 %29, i32 0, i32 %2)
  br label %31

; <label>:31:                                     ; preds = %20, %26
  %32 = phi i32 [ %30, %26 ], [ %25, %20 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_goiffalse(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
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
  %10 = tail call fastcc i32 @jumponcond(%struct.FuncState* %0, %struct.expdesc* nonnull %1, i32 1)
  br label %11

; <label>:11:                                     ; preds = %2, %2, %9, %5
  %12 = phi i32 [ %10, %9 ], [ %8, %5 ], [ -1, %2 ], [ -1, %2 ]
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %13, i32 %12)
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %15 = load i32, i32* %14, align 4, !tbaa !38
  tail call void @luaK_patchtohere(%struct.FuncState* %0, i32 %15)
  store i32 -1, i32* %14, align 4, !tbaa !38
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
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

; Function Attrs: nounwind uwtable
define hidden void @luaK_indexed(%struct.FuncState* nocapture, %struct.expdesc* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %12

; <label>:7:                                      ; preds = %3
  %8 = tail call fastcc i32 @isKstr(%struct.FuncState* %0, %struct.expdesc* %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1)
  br label %12

; <label>:12:                                     ; preds = %7, %10, %3
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %14 = bitcast %union.anon.7* %13 to i32*
  %15 = load i32, i32* %14, align 8, !tbaa !22
  %16 = trunc i32 %15 to i8
  %17 = bitcast %union.anon.7* %13 to %struct.anon.8*
  %18 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %17, i64 0, i32 1
  store i8 %16, i8* %18, align 2, !tbaa !22
  %19 = load i32, i32* %4, align 8, !tbaa !34
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %21, label %26

; <label>:21:                                     ; preds = %12
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %23 = bitcast %union.anon.7* %22 to i32*
  %24 = load i32, i32* %23, align 8, !tbaa !22
  %25 = trunc i32 %24 to i16
  br label %44

; <label>:26:                                     ; preds = %12
  %27 = tail call fastcc i32 @isKstr(%struct.FuncState* %0, %struct.expdesc* %2)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %31 = bitcast %union.anon.7* %30 to i32*
  %32 = load i32, i32* %31, align 8, !tbaa !22
  %33 = trunc i32 %32 to i16
  br label %44

; <label>:34:                                     ; preds = %26
  %35 = tail call fastcc i32 @isCint(%struct.expdesc* %2)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0
  %39 = load i64, i64* %38, align 8, !tbaa !22
  %40 = trunc i64 %39 to i16
  br label %44

; <label>:41:                                     ; preds = %34
  %42 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2)
  %43 = trunc i32 %42 to i16
  br label %44

; <label>:44:                                     ; preds = %29, %41, %37, %21
  %45 = phi i16 [ %33, %29 ], [ %43, %41 ], [ %40, %37 ], [ %25, %21 ]
  %46 = phi i32 [ 13, %29 ], [ 10, %41 ], [ 12, %37 ], [ 11, %21 ]
  %47 = bitcast %union.anon.7* %13 to i16*
  store i16 %45, i16* %47, align 8, !tbaa !22
  store i32 %46, i32* %4, align 8, !tbaa !34
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
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

; Function Attrs: norecurse nounwind readonly uwtable
define internal fastcc i32 @isCint(%struct.expdesc* nocapture readonly) unnamed_addr #4 {
  %2 = tail call i32 @luaK_isKint(%struct.expdesc* %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 1, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !22
  %7 = icmp ult i64 %6, 256
  %8 = zext i1 %7 to i32
  br label %9

; <label>:9:                                      ; preds = %1, %4
  %10 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_prefix(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, i32) local_unnamed_addr #2 {
  switch i32 %1, label %12 [
    i32 0, label %5
    i32 1, label %5
    i32 3, label %9
    i32 2, label %11
  ]

; <label>:5:                                      ; preds = %4, %4
  %6 = add i32 %1, 12
  %7 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %6, %struct.expdesc* %2, %struct.expdesc* nonnull @luaK_prefix.ef)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %5, %4
  %10 = add i32 %1, 50
  tail call fastcc void @codeunexpval(%struct.FuncState* %0, i32 %10, %struct.expdesc* %2, i32 %3)
  br label %12

; <label>:11:                                     ; preds = %4
  tail call fastcc void @codenot(%struct.FuncState* %0, %struct.expdesc* %2)
  br label %12

; <label>:12:                                     ; preds = %5, %4, %11, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @constfolding(%struct.FuncState* nocapture readonly, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture readonly) unnamed_addr #2 {
  %5 = alloca %struct.TValue, align 8
  %6 = alloca %struct.TValue, align 8
  %7 = alloca %struct.TValue, align 8
  %8 = bitcast %struct.TValue* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #9
  %9 = bitcast %struct.TValue* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #9
  %10 = bitcast %struct.TValue* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #9
  %11 = call fastcc i32 @tonumeral(%struct.expdesc* %2, %struct.TValue* nonnull %5)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %41, label %13

; <label>:13:                                     ; preds = %4
  %14 = call fastcc i32 @tonumeral(%struct.expdesc* %3, %struct.TValue* nonnull %6)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %41, label %16

; <label>:16:                                     ; preds = %13
  %17 = call fastcc i32 @validop(i32 %1, %struct.TValue* nonnull %5, %struct.TValue* nonnull %6)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %41, label %19

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %21 = load %struct.LexState*, %struct.LexState** %20, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %21, i64 0, i32 6
  %23 = load %struct.lua_State*, %struct.lua_State** %22, align 8, !tbaa !18
  %24 = call i32 @luaO_rawarith(%struct.lua_State* %23, i32 %1, %struct.TValue* nonnull %5, %struct.TValue* nonnull %6, %struct.TValue* nonnull %7) #9
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  %26 = load i8, i8* %25, align 8, !tbaa !25
  %27 = icmp eq i8 %26, 35
  br i1 %27, label %28, label %33

; <label>:28:                                     ; preds = %19
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  store i32 6, i32* %29, align 8, !tbaa !34
  %30 = bitcast %struct.TValue* %7 to i64*
  %31 = load i64, i64* %30, align 8, !tbaa !22
  %32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0
  store i64 %31, i64* %32, align 8, !tbaa !22
  br label %41

; <label>:33:                                     ; preds = %19
  %34 = bitcast %struct.TValue* %7 to double*
  %35 = load double, double* %34, align 8, !tbaa !22
  %36 = fcmp ueq double %35, 0.000000e+00
  br i1 %36, label %41, label %37

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  store i32 5, i32* %38, align 8, !tbaa !34
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %40 = bitcast %union.anon.7* %39 to double*
  store double %35, double* %40, align 8, !tbaa !22
  br label %41

; <label>:41:                                     ; preds = %28, %37, %33, %4, %13, %16
  %42 = phi i32 [ 0, %16 ], [ 0, %13 ], [ 0, %4 ], [ 0, %33 ], [ 1, %37 ], [ 1, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #9
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codeunexpval(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  %5 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2)
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* %2)
  %6 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 %1, i32 0, i32 %5, i32 0, i32 0)
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %8 = bitcast %union.anon.7* %7 to i32*
  store i32 %6, i32* %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  store i32 15, i32* %9, align 8, !tbaa !34
  tail call void @luaK_fixline(%struct.FuncState* %0, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codenot(%struct.FuncState* nocapture, %struct.expdesc* nocapture) unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !34
  switch i32 %4, label %13 [
    i32 1, label %5
    i32 3, label %5
    i32 4, label %6
    i32 5, label %6
    i32 6, label %6
    i32 2, label %6
    i32 14, label %7
    i32 15, label %8
    i32 7, label %8
  ]

; <label>:5:                                      ; preds = %2, %2
  store i32 2, i32* %3, align 8, !tbaa !34
  br label %13

; <label>:6:                                      ; preds = %2, %2, %2, %2
  store i32 3, i32* %3, align 8, !tbaa !34
  br label %13

; <label>:7:                                      ; preds = %2
  tail call fastcc void @negatecondition(%struct.FuncState* %0, %struct.expdesc* nonnull %1)
  br label %13

; <label>:8:                                      ; preds = %2, %2
  tail call fastcc void @discharge2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1)
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* nonnull %1)
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %10 = bitcast %union.anon.7* %9 to i32*
  %11 = load i32, i32* %10, align 8, !tbaa !22
  %12 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 52, i32 0, i32 %11, i32 0, i32 0)
  store i32 %12, i32* %10, align 8, !tbaa !22
  store i32 15, i32* %3, align 8, !tbaa !34
  br label %13

; <label>:13:                                     ; preds = %2, %8, %7, %6, %5
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %15 = load i32, i32* %14, align 4, !tbaa !38
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %17 = load i32, i32* %16, align 8, !tbaa !37
  store i32 %17, i32* %14, align 4, !tbaa !38
  store i32 %15, i32* %16, align 8, !tbaa !37
  tail call fastcc void @removevalues(%struct.FuncState* %0, i32 %17)
  %18 = load i32, i32* %16, align 8, !tbaa !37
  tail call fastcc void @removevalues(%struct.FuncState* %0, i32 %18)
  ret void
}

; Function Attrs: nounwind uwtable
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
  tail call void @luaK_goiftrue(%struct.FuncState* %0, %struct.expdesc* %2)
  br label %27

; <label>:7:                                      ; preds = %3
  tail call void @luaK_goiffalse(%struct.FuncState* %0, %struct.expdesc* %2)
  br label %27

; <label>:8:                                      ; preds = %3
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* %2)
  br label %27

; <label>:9:                                      ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %10 = tail call fastcc i32 @tonumeral(%struct.expdesc* %2, %struct.TValue* null)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %27

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2)
  br label %27

; <label>:14:                                     ; preds = %3, %3
  %15 = tail call fastcc i32 @tonumeral(%struct.expdesc* %2, %struct.TValue* null)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

; <label>:17:                                     ; preds = %14
  %18 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %2)
  br label %27

; <label>:19:                                     ; preds = %3, %3, %3, %3
  %20 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #9
  %21 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #9
  %22 = call fastcc i32 @isSCnumber(%struct.expdesc* %2, i64* nonnull %4, i32* nonnull %5)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %19
  %25 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2)
  br label %26

; <label>:26:                                     ; preds = %19, %24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #9
  br label %27

; <label>:27:                                     ; preds = %9, %14, %3, %17, %12, %26, %8, %7, %6
  ret void
}

; Function Attrs: norecurse nounwind uwtable
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

; Function Attrs: nounwind uwtable
define internal fastcc i32 @isSCnumber(%struct.expdesc* nocapture readonly, i64*, i32* nocapture) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !34
  switch i32 %5, label %28 [
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
  %13 = tail call fastcc i32 @floatI(double %12, i64* %1)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

; <label>:15:                                     ; preds = %9
  store i32 1, i32* %2, align 4, !tbaa !9
  br label %16

; <label>:16:                                     ; preds = %15, %6
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 2
  %18 = load i32, i32* %17, align 8, !tbaa !37
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 3
  %20 = load i32, i32* %19, align 4, !tbaa !38
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %28

; <label>:22:                                     ; preds = %16
  %23 = load i64, i64* %1, align 8, !tbaa !39
  %24 = tail call fastcc i32 @fitsC(i64 %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %22
  %27 = add nsw i64 %23, 127
  store i64 %27, i64* %1, align 8, !tbaa !39
  br label %28

; <label>:28:                                     ; preds = %16, %22, %9, %3, %26
  %29 = phi i32 [ 1, %26 ], [ 0, %3 ], [ 0, %9 ], [ 0, %22 ], [ 0, %16 ]
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_posfix(%struct.FuncState* nocapture, i32, %struct.expdesc*, %struct.expdesc*, i32) local_unnamed_addr #2 {
  switch i32 %1, label %50 [
    i32 19, label %6
    i32 20, label %12
    i32 12, label %18
    i32 0, label %19
    i32 2, label %19
    i32 1, label %24
    i32 5, label %24
    i32 6, label %24
    i32 3, label %24
    i32 4, label %24
    i32 7, label %29
    i32 8, label %29
    i32 9, label %29
    i32 10, label %33
    i32 11, label %41
    i32 13, label %45
    i32 16, label %45
    i32 14, label %46
    i32 15, label %46
    i32 17, label %48
    i32 18, label %48
  ]

; <label>:6:                                      ; preds = %5
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %3)
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %9 = load i32, i32* %8, align 4, !tbaa !38
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %7, i32 %9)
  %10 = bitcast %struct.expdesc* %2 to i8*
  %11 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 24, i32 8, i1 false), !tbaa.struct !41
  br label %50

; <label>:12:                                     ; preds = %5
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %3)
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %15 = load i32, i32* %14, align 8, !tbaa !37
  tail call void @luaK_concat(%struct.FuncState* %0, i32* nonnull %13, i32 %15)
  %16 = bitcast %struct.expdesc* %2 to i8*
  %17 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 24, i32 8, i1 false), !tbaa.struct !41
  br label %50

; <label>:18:                                     ; preds = %5
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* %3)
  tail call fastcc void @codeconcat(%struct.FuncState* %0, %struct.expdesc* %2, %struct.expdesc* %3, i32 %4)
  br label %50

; <label>:19:                                     ; preds = %5, %5
  %20 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %50

; <label>:22:                                     ; preds = %19
  %23 = add i32 %1, 38
  tail call fastcc void @codecommutative(%struct.FuncState* %0, i32 %23, %struct.expdesc* %2, %struct.expdesc* %3, i32 %4)
  br label %50

; <label>:24:                                     ; preds = %5, %5, %5, %5, %5
  %25 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %50

; <label>:27:                                     ; preds = %24
  %28 = add i32 %1, 38
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 %28, %struct.expdesc* %2, %struct.expdesc* %3, i32 0, i32 %4)
  br label %50

; <label>:29:                                     ; preds = %5, %5, %5
  %30 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %50

; <label>:32:                                     ; preds = %29
  tail call fastcc void @codebitwise(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3, i32 %4)
  br label %50

; <label>:33:                                     ; preds = %5
  %34 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 10, %struct.expdesc* %2, %struct.expdesc* %3)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %50

; <label>:36:                                     ; preds = %33
  %37 = tail call fastcc i32 @isSCint(%struct.expdesc* %2)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

; <label>:39:                                     ; preds = %36
  tail call fastcc void @swapexps(%struct.expdesc* %2, %struct.expdesc* %3)
  tail call fastcc void @codebini(%struct.FuncState* %0, i32 37, %struct.expdesc* %2, %struct.expdesc* %3, i32 1, i32 %4)
  br label %50

; <label>:40:                                     ; preds = %36
  tail call fastcc void @codeshift(%struct.FuncState* %0, i32 48, %struct.expdesc* %2, %struct.expdesc* %3, i32 %4)
  br label %50

; <label>:41:                                     ; preds = %5
  %42 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 11, %struct.expdesc* %2, %struct.expdesc* %3)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

; <label>:44:                                     ; preds = %41
  tail call fastcc void @codeshift(%struct.FuncState* %0, i32 49, %struct.expdesc* %2, %struct.expdesc* %3, i32 %4)
  br label %50

; <label>:45:                                     ; preds = %5, %5
  tail call fastcc void @codeeq(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3)
  br label %50

; <label>:46:                                     ; preds = %5, %5
  %47 = add i32 %1, 45
  tail call fastcc void @codeorder(%struct.FuncState* %0, i32 %47, %struct.expdesc* %2, %struct.expdesc* %3)
  br label %50

; <label>:48:                                     ; preds = %5, %5
  %49 = add i32 %1, 42
  tail call fastcc void @swapexps(%struct.expdesc* %2, %struct.expdesc* %3)
  tail call fastcc void @codeorder(%struct.FuncState* %0, i32 %49, %struct.expdesc* %2, %struct.expdesc* %3)
  br label %50

; <label>:50:                                     ; preds = %19, %24, %29, %33, %41, %5, %44, %40, %39, %32, %27, %22, %48, %46, %45, %18, %12, %6
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @codeconcat(%struct.FuncState* nocapture, %struct.expdesc* nocapture readonly, %struct.expdesc* nocapture readonly, i32) unnamed_addr #2 {
  %5 = tail call fastcc i32* @previousinstruction(%struct.FuncState* %0)
  %6 = load i32, i32* %5, align 4, !tbaa !9
  %7 = and i32 %6, 127
  %8 = icmp eq i32 %7, 54
  br i1 %8, label %9, label %22

; <label>:9:                                      ; preds = %4
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* %2)
  %10 = load i32, i32* %5, align 4, !tbaa !9
  %11 = and i32 %10, -16744321
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %13 = bitcast %union.anon.7* %12 to i32*
  %14 = load i32, i32* %13, align 8, !tbaa !22
  %15 = shl i32 %14, 7
  %16 = and i32 %15, 32640
  %17 = and i32 %6, 16711680
  %18 = add nuw nsw i32 %17, 65536
  %19 = and i32 %18, 16711680
  %20 = or i32 %11, %19
  %21 = or i32 %20, %16
  store i32 %21, i32* %5, align 4, !tbaa !9
  br label %27

; <label>:22:                                     ; preds = %4
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %24 = bitcast %union.anon.7* %23 to i32*
  %25 = load i32, i32* %24, align 8, !tbaa !22
  %26 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 54, i32 %25, i32 2, i32 0, i32 0)
  tail call fastcc void @freeexp(%struct.FuncState* %0, %struct.expdesc* %2)
  tail call void @luaK_fixline(%struct.FuncState* %0, i32 %3)
  br label %27

; <label>:27:                                     ; preds = %22, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codecommutative(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  %6 = tail call fastcc i32 @tonumeral(%struct.expdesc* %2, %struct.TValue* null)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %5
  tail call fastcc void @swapexps(%struct.expdesc* %2, %struct.expdesc* %3)
  br label %9

; <label>:9:                                      ; preds = %5, %8
  %10 = phi i32 [ 1, %8 ], [ 0, %5 ]
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3, i32 %10, i32 %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codearith(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture, i32, i32) unnamed_addr #2 {
  %7 = tail call fastcc i32 @isSCint(%struct.expdesc* %3)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

; <label>:9:                                      ; preds = %6
  %10 = add i32 %1, -19
  tail call fastcc void @codebini(%struct.FuncState* %0, i32 %10, %struct.expdesc* %2, %struct.expdesc* %3, i32 %4, i32 %5)
  br label %26

; <label>:11:                                     ; preds = %6
  %12 = tail call fastcc i32 @tonumeral(%struct.expdesc* %3, %struct.TValue* null)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

; <label>:14:                                     ; preds = %11
  %15 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* %3)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %19 = bitcast %union.anon.7* %18 to i32*
  %20 = load i32, i32* %19, align 8, !tbaa !22
  %21 = add i32 %1, -12
  tail call fastcc void @finishbinexpval(%struct.FuncState* %0, %struct.expdesc* %2, %struct.expdesc* %3, i32 %21, i32 %20, i32 %4, i32 %5)
  br label %26

; <label>:22:                                     ; preds = %14, %11
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %25, label %24

; <label>:24:                                     ; preds = %22
  tail call fastcc void @swapexps(%struct.expdesc* %2, %struct.expdesc* %3)
  br label %25

; <label>:25:                                     ; preds = %22, %24
  tail call fastcc void @codebinexpval(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3, i32 %5)
  br label %26

; <label>:26:                                     ; preds = %17, %25, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codebitwise(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 6
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* nonnull %2)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %9
  tail call fastcc void @swapexps(%struct.expdesc* nonnull %2, %struct.expdesc* %3)
  br label %22

; <label>:13:                                     ; preds = %9, %5
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %15 = load i32, i32* %14, align 8, !tbaa !34
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %13
  %18 = tail call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* nonnull %3)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %17, %13
  %21 = add i32 %1, 38
  tail call fastcc void @codebinexpval(%struct.FuncState* %0, i32 %21, %struct.expdesc* nonnull %2, %struct.expdesc* nonnull %3, i32 %4)
  br label %28

; <label>:22:                                     ; preds = %17, %12
  %23 = phi i32 [ 1, %12 ], [ 0, %17 ]
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %25 = bitcast %union.anon.7* %24 to i32*
  %26 = load i32, i32* %25, align 8, !tbaa !22
  %27 = add i32 %1, 26
  tail call fastcc void @finishbinexpval(%struct.FuncState* %0, %struct.expdesc* nonnull %2, %struct.expdesc* %3, i32 %27, i32 %26, i32 %23, i32 %4)
  br label %28

; <label>:28:                                     ; preds = %22, %20
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal fastcc i32 @isSCint(%struct.expdesc* nocapture readonly) unnamed_addr #4 {
  %2 = tail call i32 @luaK_isKint(%struct.expdesc* %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 1, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !22
  %7 = tail call fastcc i32 @fitsC(i64 %6)
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

; <label>:10:                                     ; preds = %1, %4
  %11 = phi i32 [ 0, %1 ], [ %9, %4 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal fastcc void @swapexps(%struct.expdesc* nocapture, %struct.expdesc* nocapture) unnamed_addr #2 {
  %3 = alloca %struct.expdesc, align 8
  %4 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4)
  %5 = bitcast %struct.expdesc* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* %5, i64 24, i32 8, i1 false), !tbaa.struct !41
  %6 = bitcast %struct.expdesc* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 24, i32 8, i1 false), !tbaa.struct !41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* nonnull %4, i64 24, i32 8, i1 false), !tbaa.struct !41
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codebini(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture readonly, i32, i32) unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !22
  %9 = trunc i64 %8 to i32
  %10 = add nsw i32 %9, 127
  tail call fastcc void @finishbinexpval(%struct.FuncState* %0, %struct.expdesc* %2, %struct.expdesc* %3, i32 %1, i32 %10, i32 %4, i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codeshift(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  %6 = tail call fastcc i32 @isSCint(%struct.expdesc* %3)
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
  tail call fastcc void @codebini(%struct.FuncState* %0, i32 36, %struct.expdesc* %2, %struct.expdesc* %3, i32 %15, i32 %4)
  br label %17

; <label>:16:                                     ; preds = %5
  tail call fastcc void @codebinexpval(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3, i32 %4)
  br label %17

; <label>:17:                                     ; preds = %16, %14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codeeq(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture) unnamed_addr #2 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #9
  store i32 0, i32* %6, align 4, !tbaa !9
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !34
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %4
  tail call fastcc void @swapexps(%struct.expdesc* nonnull %2, %struct.expdesc* %3)
  br label %13

; <label>:13:                                     ; preds = %4, %12
  %14 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2)
  %15 = call fastcc i32 @isSCnumber(%struct.expdesc* %3, i64* nonnull %5, i32* nonnull %6)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

; <label>:17:                                     ; preds = %13
  %18 = load i64, i64* %5, align 8, !tbaa !39
  %19 = trunc i64 %18 to i32
  br label %29

; <label>:20:                                     ; preds = %13
  %21 = call i32 @luaK_exp2RK(%struct.FuncState* %0, %struct.expdesc* %3)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %25 = bitcast %union.anon.7* %24 to i32*
  %26 = load i32, i32* %25, align 8, !tbaa !22
  br label %29

; <label>:27:                                     ; preds = %20
  %28 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %3)
  br label %29

; <label>:29:                                     ; preds = %23, %27, %17
  %30 = phi i32 [ %19, %17 ], [ %26, %23 ], [ %28, %27 ]
  %31 = phi i32 [ 62, %17 ], [ 61, %23 ], [ 58, %27 ]
  call fastcc void @freeexps(%struct.FuncState* %0, %struct.expdesc* nonnull %2, %struct.expdesc* %3)
  %32 = load i32, i32* %6, align 4, !tbaa !9
  %33 = icmp eq i32 %1, 13
  %34 = zext i1 %33 to i32
  %35 = call fastcc i32 @condjump(%struct.FuncState* %0, i32 %31, i32 %14, i32 %30, i32 %32, i32 %34)
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %37 = bitcast %union.anon.7* %36 to i32*
  store i32 %35, i32* %37, align 8, !tbaa !22
  store i32 14, i32* %9, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codeorder(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture) unnamed_addr #2 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9
  %8 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #9
  store i32 0, i32* %6, align 4, !tbaa !9
  %9 = call fastcc i32 @isSCnumber(%struct.expdesc* %3, i64* nonnull %5, i32* nonnull %6)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

; <label>:11:                                     ; preds = %4
  %12 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2)
  %13 = load i64, i64* %5, align 8, !tbaa !39
  %14 = trunc i64 %13 to i32
  %15 = add i32 %1, 4
  br label %28

; <label>:16:                                     ; preds = %4
  %17 = call fastcc i32 @isSCnumber(%struct.expdesc* %2, i64* nonnull %5, i32* nonnull %6)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

; <label>:19:                                     ; preds = %16
  %20 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %3)
  %21 = load i64, i64* %5, align 8, !tbaa !39
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %1, 59
  %24 = select i1 %23, i32 65, i32 66
  br label %28

; <label>:25:                                     ; preds = %16
  %26 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2)
  %27 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %3)
  br label %28

; <label>:28:                                     ; preds = %19, %25, %11
  %29 = phi i32 [ %15, %11 ], [ %24, %19 ], [ %1, %25 ]
  %30 = phi i32 [ %12, %11 ], [ %20, %19 ], [ %26, %25 ]
  %31 = phi i32 [ %14, %11 ], [ %22, %19 ], [ %27, %25 ]
  call fastcc void @freeexps(%struct.FuncState* %0, %struct.expdesc* %2, %struct.expdesc* %3)
  %32 = load i32, i32* %6, align 4, !tbaa !9
  %33 = call fastcc i32 @condjump(%struct.FuncState* %0, i32 %29, i32 %30, i32 %31, i32 %32, i32 1)
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %35 = bitcast %union.anon.7* %34 to i32*
  store i32 %33, i32* %35, align 8, !tbaa !22
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  store i32 14, i32* %36, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_fixline(%struct.FuncState* nocapture, i32) local_unnamed_addr #2 {
  tail call fastcc void @removelastlineinfo(%struct.FuncState* %0)
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %4 = load %struct.Proto*, %struct.Proto** %3, align 8, !tbaa !14
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %4, i32 %1)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
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

; Function Attrs: nounwind uwtable
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
  br i1 %13, label %19, label %14

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  %16 = load i8, i8* %15, align 1, !tbaa !47
  %17 = add i8 %16, 1
  store i8 %17, i8* %15, align 1, !tbaa !47
  %18 = icmp ugt i8 %16, 120
  br i1 %18, label %19, label %39

; <label>:19:                                     ; preds = %14, %3
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %21 = load %struct.LexState*, %struct.LexState** %20, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %21, i64 0, i32 6
  %23 = load %struct.lua_State*, %struct.lua_State** %22, align 8, !tbaa !18
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 20
  %25 = bitcast %struct.AbsLineInfo** %24 to i8**
  %26 = load i8*, i8** %25, align 8, !tbaa !49
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %28 = load i32, i32* %27, align 4, !tbaa !48
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 12
  %30 = tail call i8* @luaM_growaux_(%struct.lua_State* %23, i8* %26, i32 %28, i32* nonnull %29, i32 8, i32 2147483647, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #9
  %31 = bitcast i8* %30 to %struct.AbsLineInfo*
  store i8* %30, i8** %25, align 8, !tbaa !49
  %32 = load i32, i32* %27, align 4, !tbaa !48
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %31, i64 %33, i32 0
  store i32 %9, i32* %34, align 4, !tbaa !50
  %35 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %24, align 8, !tbaa !49
  %36 = add nsw i32 %32, 1
  store i32 %36, i32* %27, align 4, !tbaa !48
  %37 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %35, i64 %33, i32 1
  store i32 %2, i32* %37, align 4, !tbaa !52
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  store i8 0, i8* %38, align 1, !tbaa !47
  br label %39

; <label>:39:                                     ; preds = %19, %14
  %40 = phi i32 [ -128, %19 ], [ %6, %14 ]
  %41 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %42 = load %struct.LexState*, %struct.LexState** %41, align 8, !tbaa !17
  %43 = getelementptr inbounds %struct.LexState, %struct.LexState* %42, i64 0, i32 6
  %44 = load %struct.lua_State*, %struct.lua_State** %43, align 8, !tbaa !18
  %45 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 19
  %46 = load i8*, i8** %45, align 8, !tbaa !45
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 9
  %48 = tail call i8* @luaM_growaux_(%struct.lua_State* %44, i8* %46, i32 %9, i32* nonnull %47, i32 1, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #9
  store i8* %48, i8** %45, align 8, !tbaa !45
  %49 = trunc i32 %40 to i8
  %50 = sext i32 %9 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 %49, i8* %51, align 1, !tbaa !22
  store i32 %2, i32* %4, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_setlist(%struct.FuncState* nocapture, i32, i32, i32) local_unnamed_addr #2 {
  %5 = add nsw i32 %2, -1
  %6 = sdiv i32 %5, 50
  %7 = add nsw i32 %6, 1
  %8 = icmp eq i32 %3, -1
  %9 = select i1 %8, i32 0, i32 %3
  %10 = icmp slt i32 %2, 12751
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %4
  %12 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 79, i32 %1, i32 %9, i32 %7, i32 0)
  br label %20

; <label>:13:                                     ; preds = %4
  %14 = icmp slt i32 %2, 1677721551
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %13
  %16 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 79, i32 %1, i32 %9, i32 0, i32 0)
  tail call fastcc void @codeextraarg(%struct.FuncState* %0, i32 %7)
  br label %20

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %19 = load %struct.LexState*, %struct.LexState** %18, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)) #8
  unreachable

; <label>:20:                                     ; preds = %15, %11
  %21 = trunc i32 %1 to i8
  %22 = add i8 %21, 1
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  store i8 %22, i8* %23, align 4, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codeextraarg(%struct.FuncState* nocapture, i32) unnamed_addr #2 {
  %3 = shl i32 %1, 7
  %4 = or i32 %3, 83
  %5 = tail call fastcc i32 @luaK_code(%struct.FuncState* %0, i32 %4)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_finish(%struct.FuncState* nocapture readonly) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %3 = load %struct.Proto*, %struct.Proto** %2, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %5 = load i32, i32* %4, align 8, !tbaa !10
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %64

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 16
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 17
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 17
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 4
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 4
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 4
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 3
  br label %15

; <label>:15:                                     ; preds = %7, %59
  %16 = phi i64 [ 0, %7 ], [ %60, %59 ]
  %17 = load i32*, i32** %8, align 8, !tbaa !15
  %18 = getelementptr inbounds i32, i32* %17, i64 %16
  %19 = load i32, i32* %18, align 4, !tbaa !9
  %20 = trunc i32 %19 to i7
  switch i7 %20, label %59 [
    i7 -56, label %21
    i7 -55, label %21
    i7 -57, label %30
    i7 -58, label %30
    i7 57, label %55
  ]

; <label>:21:                                     ; preds = %15, %15
  %22 = load i8, i8* %9, align 2, !tbaa !53
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %21
  %25 = load i8, i8* %11, align 1, !tbaa !54
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %59, label %27

; <label>:27:                                     ; preds = %24, %21
  %28 = and i32 %19, -128
  %29 = or i32 %28, 71
  store i32 %29, i32* %18, align 4, !tbaa !9
  br label %30

; <label>:30:                                     ; preds = %15, %15, %27
  %31 = load i8, i8* %10, align 2, !tbaa !53
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %39

; <label>:33:                                     ; preds = %30
  %34 = load i8, i8* %12, align 1, !tbaa !54
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %59, label %36

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %18, align 4, !tbaa !9
  %38 = and i32 %37, 16744447
  br label %44

; <label>:39:                                     ; preds = %30
  %40 = load i8, i8* %13, align 1, !tbaa !54
  %41 = load i32, i32* %18, align 4, !tbaa !9
  %42 = and i32 %41, 16744447
  %43 = icmp eq i8 %40, 0
  br i1 %43, label %49, label %44

; <label>:44:                                     ; preds = %36, %39
  %45 = phi i32 [ %38, %36 ], [ %42, %39 ]
  %46 = load i8, i8* %14, align 2, !tbaa !55
  %47 = zext i8 %46 to i32
  %48 = add nuw nsw i32 %47, 1
  br label %49

; <label>:49:                                     ; preds = %39, %44
  %50 = phi i32 [ %45, %44 ], [ %42, %39 ]
  %51 = phi i32 [ %48, %44 ], [ 0, %39 ]
  %52 = shl i32 %51, 24
  %53 = or i32 %50, %52
  %54 = or i32 %53, 32768
  store i32 %54, i32* %18, align 4, !tbaa !9
  br label %59

; <label>:55:                                     ; preds = %15
  %56 = trunc i64 %16 to i32
  %57 = tail call fastcc i32 @finaltarget(i32* %17, i32 %56)
  %58 = trunc i64 %16 to i32
  tail call fastcc void @fixjump(%struct.FuncState* nonnull %0, i32 %58, i32 %57)
  br label %59

; <label>:59:                                     ; preds = %24, %33, %15, %49, %55
  %60 = add nuw nsw i64 %16, 1
  %61 = load i32, i32* %4, align 8, !tbaa !10
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %60, %62
  br i1 %63, label %15, label %64

; <label>:64:                                     ; preds = %59, %1
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal fastcc i32 @finaltarget(i32* nocapture readonly, i32) unnamed_addr #4 {
  br label %3

; <label>:3:                                      ; preds = %2, %11
  %4 = phi i32 [ %1, %2 ], [ %14, %11 ]
  %5 = phi i32 [ 0, %2 ], [ %15, %11 ]
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  %8 = load i32, i32* %7, align 4, !tbaa !9
  %9 = and i32 %8, 127
  %10 = icmp eq i32 %9, 57
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %3
  %12 = lshr i32 %8, 7
  %13 = add i32 %4, -16777214
  %14 = add i32 %13, %12
  %15 = add nuw nsw i32 %5, 1
  %16 = icmp ult i32 %15, 100
  br i1 %16, label %3, label %17

; <label>:17:                                     ; preds = %3, %11
  %18 = phi i32 [ %4, %3 ], [ %14, %11 ]
  ret i32 %18
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc i32 @patchtestreg(%struct.FuncState* nocapture readonly, i32, i32) unnamed_addr #5 {
  %4 = tail call fastcc i32* @getjumpcontrol(%struct.FuncState* %0, i32 %1)
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

; Function Attrs: norecurse nounwind readonly uwtable
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

declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32, i32*, i32, i32, i8*) local_unnamed_addr #7

declare hidden %struct.TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.TValue*) local_unnamed_addr #7

declare hidden i32 @luaV_equalobj(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #7

declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @discharge2reg(%struct.FuncState* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !34
  switch i32 %5, label %47 [
    i32 1, label %6
    i32 3, label %7
    i32 2, label %7
    i32 4, label %11
    i32 5, label %15
    i32 6, label %19
    i32 15, label %22
    i32 7, label %37
  ]

; <label>:6:                                      ; preds = %3
  tail call void @luaK_nil(%struct.FuncState* %0, i32 %2, i32 1)
  br label %44

; <label>:7:                                      ; preds = %3, %3
  %8 = icmp eq i32 %5, 2
  %9 = zext i1 %8 to i32
  %10 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 5, i32 %2, i32 %9, i32 0, i32 0)
  br label %44

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %13 = bitcast %union.anon.7* %12 to i32*
  %14 = load i32, i32* %13, align 8, !tbaa !22
  tail call fastcc void @luaK_codek(%struct.FuncState* %0, i32 %2, i32 %14)
  br label %44

; <label>:15:                                     ; preds = %3
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %17 = bitcast %union.anon.7* %16 to double*
  %18 = load double, double* %17, align 8, !tbaa !22
  tail call fastcc void @luaK_float(%struct.FuncState* %0, i32 %2, double %18)
  br label %44

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  %21 = load i64, i64* %20, align 8, !tbaa !22
  tail call void @luaK_int(%struct.FuncState* %0, i32 %2, i64 %21)
  br label %44

; <label>:22:                                     ; preds = %3
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %24 = load %struct.Proto*, %struct.Proto** %23, align 8, !tbaa !14
  %25 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i64 0, i32 16
  %26 = load i32*, i32** %25, align 8, !tbaa !15
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %28 = bitcast %union.anon.7* %27 to i32*
  %29 = load i32, i32* %28, align 8, !tbaa !22
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !9
  %33 = and i32 %32, -32641
  %34 = shl i32 %2, 7
  %35 = and i32 %34, 32640
  %36 = or i32 %33, %35
  store i32 %36, i32* %31, align 4, !tbaa !9
  br label %44

; <label>:37:                                     ; preds = %3
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %39 = bitcast %union.anon.7* %38 to i32*
  %40 = load i32, i32* %39, align 8, !tbaa !22
  %41 = icmp eq i32 %40, %2
  br i1 %41, label %44, label %42

; <label>:42:                                     ; preds = %37
  %43 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 0, i32 %2, i32 %40, i32 0, i32 0)
  br label %44

; <label>:44:                                     ; preds = %37, %42, %22, %19, %15, %11, %7, %6
  %45 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %46 = bitcast %union.anon.7* %45 to i32*
  store i32 %2, i32* %46, align 8, !tbaa !22
  store i32 7, i32* %4, align 8, !tbaa !34
  br label %47

; <label>:47:                                     ; preds = %3, %44
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal fastcc i32 @need_value(%struct.FuncState* nocapture readonly, i32) unnamed_addr #4 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %14, label %4

; <label>:4:                                      ; preds = %2
  br label %5

; <label>:5:                                      ; preds = %4, %11
  %6 = phi i32 [ %12, %11 ], [ %1, %4 ]
  %7 = tail call fastcc i32* @getjumpcontrol(%struct.FuncState* %0, i32 %6)
  %8 = load i32, i32* %7, align 4, !tbaa !9
  %9 = and i32 %8, 127
  %10 = icmp eq i32 %9, 68
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %5
  %12 = tail call fastcc i32 @getjump(%struct.FuncState* %0, i32 %6)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %5

; <label>:14:                                     ; preds = %5, %11, %2
  %15 = phi i32 [ 0, %2 ], [ 0, %11 ], [ 1, %5 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @code_loadbool(%struct.FuncState* nocapture, i32, i32, i32) unnamed_addr #2 {
  %5 = tail call i32 @luaK_getlabel(%struct.FuncState* %0)
  %6 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 5, i32 %1, i32 %2, i32 %3, i32 0)
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc void @luaK_float(%struct.FuncState* nocapture, i32, double) unnamed_addr #2 {
  %4 = alloca i64, align 8
  %5 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
  %6 = call fastcc i32 @floatI(double %2, i64* nonnull %4)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

; <label>:8:                                      ; preds = %3
  %9 = load i64, i64* %4, align 8, !tbaa !39
  %10 = trunc i64 %9 to i32
  %11 = call i32 @luaK_codeAsBx(%struct.FuncState* %0, i32 2, i32 %1, i32 %10)
  br label %14

; <label>:12:                                     ; preds = %3
  %13 = call fastcc i32 @luaK_numberK(%struct.FuncState* %0, double %2)
  call fastcc void @luaK_codek(%struct.FuncState* %0, i32 %1, i32 %13)
  br label %14

; <label>:14:                                     ; preds = %12, %8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @floatI(double, i64*) unnamed_addr #2 {
  %3 = tail call i32 @luaV_flttointeger(double %0, i64* %1, i32 0) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

; <label>:5:                                      ; preds = %2
  %6 = load i64, i64* %1, align 8, !tbaa !39
  %7 = tail call fastcc i32 @fitsBx(i64 %6)
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

; <label>:10:                                     ; preds = %2, %5
  %11 = phi i32 [ 0, %2 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @luaK_numberK(%struct.FuncState* nocapture, double) unnamed_addr #2 {
  %3 = alloca %struct.TValue, align 8
  %4 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #9
  %5 = bitcast %struct.TValue* %3 to double*
  store double %1, double* %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 19, i8* %6, align 8, !tbaa !25
  %7 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %3, %struct.TValue* nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #9
  ret i32 %7
}

declare hidden i32 @luaV_flttointeger(double, i64*, i32) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc i32 @boolK(%struct.FuncState* nocapture, i32) unnamed_addr #2 {
  %3 = alloca %struct.TValue, align 8
  %4 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #9
  %5 = bitcast %struct.TValue* %3 to i32*
  store i32 %1, i32* %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 1, i8* %6, align 8, !tbaa !25
  %7 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %3, %struct.TValue* nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #9
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @nilK(%struct.FuncState* nocapture) unnamed_addr #2 {
  %2 = alloca %struct.TValue, align 8
  %3 = alloca %struct.TValue, align 8
  %4 = bitcast %struct.TValue* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #9
  %5 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #9
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 0, i8* %6, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %8 = load %struct.LexState*, %struct.LexState** %7, align 8, !tbaa !17
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i64 0, i32 9
  %10 = bitcast %struct.Table** %9 to i64*
  %11 = load i64, i64* %10, align 8, !tbaa !27
  %12 = bitcast %struct.TValue* %2 to i64*
  store i64 %11, i64* %12, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  store i8 69, i8* %13, align 8, !tbaa !25
  %14 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %2, %struct.TValue* nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #9
  ret i32 %14
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @removelastinstruction(%struct.FuncState* nocapture) unnamed_addr #5 {
  tail call fastcc void @removelastlineinfo(%struct.FuncState* %0)
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 8, !tbaa !10
  %4 = add nsw i32 %3, -1
  store i32 %4, i32* %2, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @condjump(%struct.FuncState* nocapture, i32, i32, i32, i32, i32) unnamed_addr #2 {
  %7 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5)
  %8 = tail call i32 @luaK_jump(%struct.FuncState* %0)
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal fastcc void @discharge2anyreg(%struct.FuncState* nocapture, %struct.expdesc* nocapture) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %11, label %6

; <label>:6:                                      ; preds = %2
  tail call void @luaK_reserveregs(%struct.FuncState* %0, i32 1)
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %8 = load i8, i8* %7, align 4, !tbaa !20
  %9 = zext i8 %8 to i32
  %10 = add nsw i32 %9, -1
  tail call fastcc void @discharge2reg(%struct.FuncState* %0, %struct.expdesc* nonnull %1, i32 %10)
  br label %11

; <label>:11:                                     ; preds = %2, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @validop(i32, %struct.TValue*, %struct.TValue*) unnamed_addr #2 {
  %4 = alloca i64, align 8
  switch i32 %0, label %42 [
    i32 7, label %5
    i32 8, label %5
    i32 9, label %5
    i32 10, label %5
    i32 11, label %5
    i32 13, label %5
    i32 5, label %28
    i32 6, label %28
    i32 3, label %28
  ]

; <label>:5:                                      ; preds = %3, %3, %3, %3, %3, %3
  %6 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %8 = load i8, i8* %7, align 8, !tbaa !25
  %9 = icmp eq i8 %8, 35
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %5
  %11 = bitcast %struct.TValue* %1 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !22
  store i64 %12, i64* %4, align 8, !tbaa !39
  br label %16

; <label>:13:                                     ; preds = %5
  %14 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %1, i64* nonnull %4, i32 0) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

; <label>:16:                                     ; preds = %13, %10
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %18 = load i8, i8* %17, align 8, !tbaa !25
  %19 = icmp eq i8 %18, 35
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %16
  %21 = bitcast %struct.TValue* %2 to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !22
  store i64 %22, i64* %4, align 8, !tbaa !39
  br label %26

; <label>:23:                                     ; preds = %16
  %24 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %2, i64* nonnull %4, i32 0) #9
  %25 = icmp ne i32 %24, 0
  br label %26

; <label>:26:                                     ; preds = %20, %23, %13
  %27 = phi i1 [ false, %13 ], [ true, %20 ], [ %25, %23 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  br label %42

; <label>:28:                                     ; preds = %3, %3, %3
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %30 = load i8, i8* %29, align 8, !tbaa !25
  %31 = icmp eq i8 %30, 35
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %28
  %33 = bitcast %struct.TValue* %2 to i64*
  %34 = load i64, i64* %33, align 8, !tbaa !22
  %35 = sitofp i64 %34 to double
  br label %39

; <label>:36:                                     ; preds = %28
  %37 = bitcast %struct.TValue* %2 to double*
  %38 = load double, double* %37, align 8, !tbaa !22
  br label %39

; <label>:39:                                     ; preds = %36, %32
  %40 = phi double [ %35, %32 ], [ %38, %36 ]
  %41 = fcmp une double %40, 0.000000e+00
  br label %42

; <label>:42:                                     ; preds = %3, %39, %26
  %43 = phi i1 [ %41, %39 ], [ %27, %26 ], [ true, %3 ]
  %44 = zext i1 %43 to i32
  ret i32 %44
}

declare hidden i32 @luaO_rawarith(%struct.lua_State*, i32, %struct.TValue*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #7

declare hidden i32 @luaV_tointegerns(%struct.TValue*, i64*, i32) local_unnamed_addr #7

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @removevalues(%struct.FuncState* nocapture readonly, i32) unnamed_addr #5 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %10, label %4

; <label>:4:                                      ; preds = %2
  br label %5

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i32 [ %8, %5 ], [ %1, %4 ]
  %7 = tail call fastcc i32 @patchtestreg(%struct.FuncState* %0, i32 %6, i32 255)
  %8 = tail call fastcc i32 @getjump(%struct.FuncState* %0, i32 %6)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %5

; <label>:10:                                     ; preds = %5, %2
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define internal fastcc i32 @fitsC(i64) unnamed_addr #6 {
  %2 = add i64 %0, 127
  %3 = icmp ult i64 %2, 256
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @finishbinexpval(%struct.FuncState* nocapture, %struct.expdesc* nocapture, %struct.expdesc* nocapture readonly, i32, i32, i32, i32) unnamed_addr #2 {
  %8 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %1)
  %9 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 %3, i32 0, i32 %8, i32 %4, i32 %5)
  tail call fastcc void @freeexps(%struct.FuncState* %0, %struct.expdesc* %1, %struct.expdesc* %2)
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %11 = bitcast %union.anon.7* %10 to i32*
  store i32 %9, i32* %11, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 15, i32* %12, align 8, !tbaa !34
  tail call void @luaK_fixline(%struct.FuncState* %0, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codebinexpval(%struct.FuncState* nocapture, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  %6 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %3)
  tail call fastcc void @finishbinexpval(%struct.FuncState* %0, %struct.expdesc* %2, %struct.expdesc* %3, i32 %1, i32 %6, i32 0, i32 %4)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
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
  tail call fastcc void @freeregs(%struct.FuncState* %0, i32 %12, i32 %21)
  ret void
}

attributes #0 = { noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

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
