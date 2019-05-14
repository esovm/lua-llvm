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

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaK_semerror(%struct.LexState*, i8*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  store i32 0, i32* %3, align 8, !tbaa !2
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* %1) #7
  unreachable
}

; Function Attrs: noreturn
declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
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
  br label %76

; <label>:51:                                     ; preds = %34, %19
  %52 = shl i32 %1, 7
  %53 = shl i32 %2, 16
  %54 = add i32 %53, -65536
  %55 = or i32 %52, %54
  %56 = or i32 %55, 6
  %57 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %58 = load %struct.Proto*, %struct.Proto** %57, align 8, !tbaa !13
  %59 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %60 = load %struct.LexState*, %struct.LexState** %59, align 8, !tbaa !17
  %61 = getelementptr inbounds %struct.LexState, %struct.LexState* %60, i64 0, i32 6
  %62 = load %struct.lua_State*, %struct.lua_State** %61, align 8, !tbaa !18
  %63 = getelementptr inbounds %struct.Proto, %struct.Proto* %58, i64 0, i32 16
  %64 = bitcast i32** %63 to i8**
  %65 = load i8*, i8** %64, align 8, !tbaa !14
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %58, i64 0, i32 8
  %67 = tail call i8* @luaM_growaux_(%struct.lua_State* %62, i8* %65, i32 %7, i32* nonnull %66, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %68 = bitcast i8* %67 to i32*
  store i8* %67, i8** %64, align 8, !tbaa !14
  %69 = load i32, i32* %6, align 8, !tbaa !9
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 8, !tbaa !9
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %56, i32* %72, align 4, !tbaa !16
  %73 = load %struct.LexState*, %struct.LexState** %59, align 8, !tbaa !17
  %74 = getelementptr inbounds %struct.LexState, %struct.LexState* %73, i64 0, i32 2
  %75 = load i32, i32* %74, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %58, i32 %75) #8
  br label %76

; <label>:76:                                     ; preds = %38, %51
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

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
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %16 = load %struct.Proto*, %struct.Proto** %15, align 8, !tbaa !13
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %18 = load %struct.LexState*, %struct.LexState** %17, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.LexState, %struct.LexState* %18, i64 0, i32 6
  %20 = load %struct.lua_State*, %struct.lua_State** %19, align 8, !tbaa !18
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 16
  %22 = bitcast i32** %21 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !14
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %25 = load i32, i32* %24, align 8, !tbaa !9
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 8
  %27 = tail call i8* @luaM_growaux_(%struct.lua_State* %20, i8* %23, i32 %25, i32* nonnull %26, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %28 = bitcast i8* %27 to i32*
  store i8* %27, i8** %22, align 8, !tbaa !14
  %29 = load i32, i32* %24, align 8, !tbaa !9
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %24, align 8, !tbaa !9
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 %14, i32* %32, align 4, !tbaa !16
  %33 = load %struct.LexState*, %struct.LexState** %17, align 8, !tbaa !17
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %33, i64 0, i32 2
  %35 = load i32, i32* %34, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %16, i32 %35) #8
  %36 = load i32, i32* %24, align 8, !tbaa !9
  %37 = add nsw i32 %36, -1
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_concat(%struct.FuncState* nocapture readonly, i32* nocapture, i32) local_unnamed_addr #2 {
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %40, label %5

; <label>:5:                                      ; preds = %3
  %6 = load i32, i32* %1, align 4, !tbaa !16
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5
  store i32 %2, i32* %1, align 4, !tbaa !16
  br label %40

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
  %27 = xor i32 %15, -1
  %28 = add i32 %27, %2
  %29 = add i32 %28, 16777215
  %30 = icmp ult i32 %29, 33554432
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %26
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %33 = load %struct.LexState*, %struct.LexState** %32, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable

; <label>:34:                                     ; preds = %26
  %35 = getelementptr inbounds i32, i32* %13, i64 %16
  %36 = and i32 %18, 127
  %37 = shl i32 %28, 7
  %38 = add i32 %37, 2147483520
  %39 = or i32 %36, %38
  store i32 %39, i32* %35, align 4, !tbaa !16
  br label %40

; <label>:40:                                     ; preds = %8, %34, %3
  ret void
}

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_jump(%struct.FuncState* nocapture) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %3 = load %struct.Proto*, %struct.Proto** %2, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %5 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 6
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 16
  %9 = bitcast i32** %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %12 = load i32, i32* %11, align 8, !tbaa !9
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 8
  %14 = tail call i8* @luaM_growaux_(%struct.lua_State* %7, i8* %10, i32 %12, i32* nonnull %13, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %15 = bitcast i8* %14 to i32*
  store i8* %14, i8** %9, align 8, !tbaa !14
  %16 = load i32, i32* %11, align 8, !tbaa !9
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %11, align 8, !tbaa !9
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  store i32 2147483449, i32* %19, align 4, !tbaa !16
  %20 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !17
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %20, i64 0, i32 2
  %22 = load i32, i32* %21, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %3, i32 %22) #8
  %23 = load i32, i32* %11, align 8, !tbaa !9
  %24 = add nsw i32 %23, -1
  ret i32 %24
}

; Function Attrs: nounwind uwtable
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
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %14 = load %struct.Proto*, %struct.Proto** %13, align 8, !tbaa !13
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %16 = load %struct.LexState*, %struct.LexState** %15, align 8, !tbaa !17
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %16, i64 0, i32 6
  %18 = load %struct.lua_State*, %struct.lua_State** %17, align 8, !tbaa !18
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i64 0, i32 16
  %20 = bitcast i32** %19 to i8**
  %21 = load i8*, i8** %20, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %23 = load i32, i32* %22, align 8, !tbaa !9
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i64 0, i32 8
  %25 = tail call i8* @luaM_growaux_(%struct.lua_State* %18, i8* %21, i32 %23, i32* nonnull %24, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %26 = bitcast i8* %25 to i32*
  store i8* %25, i8** %20, align 8, !tbaa !14
  %27 = load i32, i32* %22, align 8, !tbaa !9
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %22, align 8, !tbaa !9
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32 %12, i32* %30, align 4, !tbaa !16
  %31 = load %struct.LexState*, %struct.LexState** %15, align 8, !tbaa !17
  %32 = getelementptr inbounds %struct.LexState, %struct.LexState* %31, i64 0, i32 2
  %33 = load i32, i32* %32, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %14, i32 %33) #8
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define hidden i32 @luaK_getlabel(%struct.FuncState* nocapture) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %3, i32* %4, align 4, !tbaa !12
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
  br i1 %6, label %46, label %7

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  br label %9

; <label>:9:                                      ; preds = %7, %44
  %10 = phi i32 [ %1, %7 ], [ %22, %44 ]
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
  %23 = tail call fastcc i32 @patchtestreg(%struct.FuncState* %0, i32 %10, i32 %3)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

; <label>:25:                                     ; preds = %9
  tail call fastcc void @fixjump(%struct.FuncState* nonnull %0, i32 %10, i32 %2)
  br label %44

; <label>:26:                                     ; preds = %9
  %27 = load %struct.Proto*, %struct.Proto** %8, align 8, !tbaa !13
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i64 0, i32 16
  %29 = load i32*, i32** %28, align 8, !tbaa !14
  %30 = getelementptr inbounds i32, i32* %29, i64 %14
  %31 = xor i32 %10, -1
  %32 = add i32 %31, %4
  %33 = add i32 %32, 16777215
  %34 = icmp ult i32 %33, 33554432
  br i1 %34, label %38, label %35

; <label>:35:                                     ; preds = %26
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %37 = load %struct.LexState*, %struct.LexState** %36, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable

; <label>:38:                                     ; preds = %26
  %39 = load i32, i32* %30, align 4, !tbaa !16
  %40 = and i32 %39, 127
  %41 = shl i32 %32, 7
  %42 = add i32 %41, 2147483520
  %43 = or i32 %40, %42
  store i32 %43, i32* %30, align 4, !tbaa !16
  br label %44

; <label>:44:                                     ; preds = %38, %25
  %45 = icmp eq i32 %22, -1
  br i1 %45, label %46, label %9

; <label>:46:                                     ; preds = %44, %5
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_patchtohere(%struct.FuncState* nocapture, i32) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %4 = load i32, i32* %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %4, i32* %5, align 4, !tbaa !12
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %1, i32 %4, i32 255, i32 %4) #8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_codeABx(%struct.FuncState* nocapture, i32, i32, i32) local_unnamed_addr #2 {
  %5 = shl i32 %2, 7
  %6 = or i32 %5, %1
  %7 = shl i32 %3, 15
  %8 = or i32 %6, %7
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %10 = load %struct.Proto*, %struct.Proto** %9, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %12 = load %struct.LexState*, %struct.LexState** %11, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i64 0, i32 6
  %14 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !tbaa !18
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 16
  %16 = bitcast i32** %15 to i8**
  %17 = load i8*, i8** %16, align 8, !tbaa !14
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %19 = load i32, i32* %18, align 8, !tbaa !9
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 8
  %21 = tail call i8* @luaM_growaux_(%struct.lua_State* %14, i8* %17, i32 %19, i32* nonnull %20, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %22 = bitcast i8* %21 to i32*
  store i8* %21, i8** %16, align 8, !tbaa !14
  %23 = load i32, i32* %18, align 8, !tbaa !9
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %18, align 8, !tbaa !9
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32 %8, i32* %26, align 4, !tbaa !16
  %27 = load %struct.LexState*, %struct.LexState** %11, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.LexState, %struct.LexState* %27, i64 0, i32 2
  %29 = load i32, i32* %28, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %10, i32 %29) #8
  %30 = load i32, i32* %18, align 8, !tbaa !9
  %31 = add nsw i32 %30, -1
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_codeAsBx(%struct.FuncState* nocapture, i32, i32, i32) local_unnamed_addr #2 {
  %5 = shl i32 %2, 7
  %6 = or i32 %5, %1
  %7 = shl i32 %3, 15
  %8 = add i32 %7, 2147450880
  %9 = or i32 %6, %8
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %11 = load %struct.Proto*, %struct.Proto** %10, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %13 = load %struct.LexState*, %struct.LexState** %12, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i64 0, i32 6
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8, !tbaa !18
  %16 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i64 0, i32 16
  %17 = bitcast i32** %16 to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %20 = load i32, i32* %19, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i64 0, i32 8
  %22 = tail call i8* @luaM_growaux_(%struct.lua_State* %15, i8* %18, i32 %20, i32* nonnull %21, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %23 = bitcast i8* %22 to i32*
  store i8* %22, i8** %17, align 8, !tbaa !14
  %24 = load i32, i32* %19, align 8, !tbaa !9
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %19, align 8, !tbaa !9
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32 %9, i32* %27, align 4, !tbaa !16
  %28 = load %struct.LexState*, %struct.LexState** %12, align 8, !tbaa !17
  %29 = getelementptr inbounds %struct.LexState, %struct.LexState* %28, i64 0, i32 2
  %30 = load i32, i32* %29, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %11, i32 %30) #8
  %31 = load i32, i32* %19, align 8, !tbaa !9
  %32 = add nsw i32 %31, -1
  ret i32 %32
}

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
define hidden void @luaK_reserveregs(%struct.FuncState* nocapture, i32) local_unnamed_addr #2 {
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

; <label>:20:                                     ; preds = %2, %18
  %21 = trunc i32 %1 to i8
  %22 = add i8 %4, %21
  store i8 %22, i8* %3, align 4, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_stringK(%struct.FuncState* nocapture, %struct.TString*) local_unnamed_addr #2 {
  %3 = alloca %struct.TValue, align 8
  %4 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #8
  %5 = bitcast %struct.TValue* %3 to %struct.TString**
  store %struct.TString* %1, %struct.TString** %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !23
  %8 = or i8 %7, 64
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 %8, i8* %9, align 8, !tbaa !25
  %10 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %3, %struct.TValue* nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #8
  ret i32 %10
}

; Function Attrs: nounwind uwtable
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
  br i1 %41, label %42, label %95

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
  br i1 %54, label %56, label %68

; <label>:56:                                     ; preds = %42
  %57 = sext i32 %46 to i64
  %58 = sext i32 %53 to i64
  %59 = add nsw i64 %57, 1
  %60 = getelementptr inbounds %struct.TValue, %struct.TValue* %55, i64 %57, i32 1
  store i8 0, i8* %60, align 8, !tbaa !25
  %61 = icmp slt i64 %59, %58
  br i1 %61, label %62, label %68

; <label>:62:                                     ; preds = %56
  br label %63

; <label>:63:                                     ; preds = %62, %63
  %64 = phi i64 [ %65, %63 ], [ %59, %62 ]
  %65 = add nsw i64 %64, 1
  %66 = getelementptr inbounds %struct.TValue, %struct.TValue* %55, i64 %64, i32 1
  store i8 0, i8* %66, align 8, !tbaa !25
  %67 = icmp slt i64 %65, %58
  br i1 %67, label %63, label %68, !llvm.loop !31

; <label>:68:                                     ; preds = %63, %56, %42
  %69 = getelementptr inbounds %struct.TValue, %struct.TValue* %55, i64 %48
  %70 = bitcast %struct.TValue* %2 to i64*
  %71 = bitcast %struct.TValue* %69 to i64*
  %72 = load i64, i64* %70, align 8
  store i64 %72, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %74 = load i8, i8* %73, align 8, !tbaa !25
  %75 = getelementptr inbounds %struct.TValue, %struct.TValue* %55, i64 %48, i32 1
  store i8 %74, i8* %75, align 8, !tbaa !25
  %76 = load i32, i32* %44, align 4, !tbaa !28
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %44, align 4, !tbaa !28
  %78 = load i8, i8* %73, align 8, !tbaa !25
  %79 = and i8 %78, 64
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %95, label %81

; <label>:81:                                     ; preds = %68
  %82 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 2
  %83 = load i8, i8* %82, align 1, !tbaa !33
  %84 = and i8 %83, 32
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %95, label %86

; <label>:86:                                     ; preds = %81
  %87 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 0, i32 0
  %88 = load %struct.GCObject*, %struct.GCObject** %87, align 8, !tbaa !22
  %89 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %88, i64 0, i32 2
  %90 = load i8, i8* %89, align 1, !tbaa !34
  %91 = and i8 %90, 24
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

; <label>:93:                                     ; preds = %86
  %94 = bitcast %struct.Proto* %9 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* %7, %struct.GCObject* %94, %struct.GCObject* %88) #8
  br label %95

; <label>:95:                                     ; preds = %93, %68, %81, %86, %38
  %96 = phi i32 [ %22, %38 ], [ %47, %86 ], [ %47, %81 ], [ %47, %68 ], [ %47, %93 ]
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_int(%struct.FuncState* nocapture, i32, i64) local_unnamed_addr #2 {
  %4 = alloca %struct.TValue, align 8
  %5 = alloca %struct.TValue, align 8
  %6 = add i64 %2, 65535
  %7 = icmp ugt i64 %6, 131071
  br i1 %7, label %36, label %8

; <label>:8:                                      ; preds = %3
  %9 = trunc i64 %2 to i32
  %10 = shl i32 %1, 7
  %11 = shl i32 %9, 15
  %12 = add i32 %11, 2147450880
  %13 = or i32 %10, %12
  %14 = or i32 %13, 1
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %16 = load %struct.Proto*, %struct.Proto** %15, align 8, !tbaa !13
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %18 = load %struct.LexState*, %struct.LexState** %17, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.LexState, %struct.LexState* %18, i64 0, i32 6
  %20 = load %struct.lua_State*, %struct.lua_State** %19, align 8, !tbaa !18
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 16
  %22 = bitcast i32** %21 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !14
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %25 = load i32, i32* %24, align 8, !tbaa !9
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 8
  %27 = tail call i8* @luaM_growaux_(%struct.lua_State* %20, i8* %23, i32 %25, i32* nonnull %26, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %28 = bitcast i8* %27 to i32*
  store i8* %27, i8** %22, align 8, !tbaa !14
  %29 = load i32, i32* %24, align 8, !tbaa !9
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %24, align 8, !tbaa !9
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 %14, i32* %32, align 4, !tbaa !16
  %33 = load %struct.LexState*, %struct.LexState** %17, align 8, !tbaa !17
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %33, i64 0, i32 2
  %35 = load i32, i32* %34, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %16, i32 %35) #8
  br label %115

; <label>:36:                                     ; preds = %3
  %37 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #8
  %38 = bitcast %struct.TValue* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %38) #8
  %39 = inttoptr i64 %2 to i8*
  %40 = bitcast %struct.TValue* %4 to i8**
  store i8* %39, i8** %40, align 8, !tbaa !22
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 2, i8* %41, align 8, !tbaa !25
  %42 = bitcast %struct.TValue* %5 to i64*
  store i64 %2, i64* %42, align 8, !tbaa !22
  %43 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  store i8 35, i8* %43, align 8, !tbaa !25
  %44 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %4, %struct.TValue* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #8
  %45 = icmp slt i32 %44, 131072
  %46 = shl i32 %1, 7
  br i1 %45, label %47, label %72

; <label>:47:                                     ; preds = %36
  %48 = shl i32 %44, 15
  %49 = or i32 %46, %48
  %50 = or i32 %49, 3
  %51 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %52 = load %struct.Proto*, %struct.Proto** %51, align 8, !tbaa !13
  %53 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %54 = load %struct.LexState*, %struct.LexState** %53, align 8, !tbaa !17
  %55 = getelementptr inbounds %struct.LexState, %struct.LexState* %54, i64 0, i32 6
  %56 = load %struct.lua_State*, %struct.lua_State** %55, align 8, !tbaa !18
  %57 = getelementptr inbounds %struct.Proto, %struct.Proto* %52, i64 0, i32 16
  %58 = bitcast i32** %57 to i8**
  %59 = load i8*, i8** %58, align 8, !tbaa !14
  %60 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %61 = load i32, i32* %60, align 8, !tbaa !9
  %62 = getelementptr inbounds %struct.Proto, %struct.Proto* %52, i64 0, i32 8
  %63 = call i8* @luaM_growaux_(%struct.lua_State* %56, i8* %59, i32 %61, i32* nonnull %62, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %64 = bitcast i8* %63 to i32*
  store i8* %63, i8** %58, align 8, !tbaa !14
  %65 = load i32, i32* %60, align 8, !tbaa !9
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %60, align 8, !tbaa !9
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %50, i32* %68, align 4, !tbaa !16
  %69 = load %struct.LexState*, %struct.LexState** %53, align 8, !tbaa !17
  %70 = getelementptr inbounds %struct.LexState, %struct.LexState* %69, i64 0, i32 2
  %71 = load i32, i32* %70, align 8, !tbaa !19
  call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %52, i32 %71) #8
  br label %115

; <label>:72:                                     ; preds = %36
  %73 = or i32 %46, 4
  %74 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %75 = load %struct.Proto*, %struct.Proto** %74, align 8, !tbaa !13
  %76 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %77 = load %struct.LexState*, %struct.LexState** %76, align 8, !tbaa !17
  %78 = getelementptr inbounds %struct.LexState, %struct.LexState* %77, i64 0, i32 6
  %79 = load %struct.lua_State*, %struct.lua_State** %78, align 8, !tbaa !18
  %80 = getelementptr inbounds %struct.Proto, %struct.Proto* %75, i64 0, i32 16
  %81 = bitcast i32** %80 to i8**
  %82 = load i8*, i8** %81, align 8, !tbaa !14
  %83 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %84 = load i32, i32* %83, align 8, !tbaa !9
  %85 = getelementptr inbounds %struct.Proto, %struct.Proto* %75, i64 0, i32 8
  %86 = call i8* @luaM_growaux_(%struct.lua_State* %79, i8* %82, i32 %84, i32* nonnull %85, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %87 = bitcast i8* %86 to i32*
  store i8* %86, i8** %81, align 8, !tbaa !14
  %88 = load i32, i32* %83, align 8, !tbaa !9
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %83, align 8, !tbaa !9
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %73, i32* %91, align 4, !tbaa !16
  %92 = load %struct.LexState*, %struct.LexState** %76, align 8, !tbaa !17
  %93 = getelementptr inbounds %struct.LexState, %struct.LexState* %92, i64 0, i32 2
  %94 = load i32, i32* %93, align 8, !tbaa !19
  call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %75, i32 %94) #8
  %95 = load i32, i32* %83, align 8, !tbaa !9
  %96 = shl i32 %44, 7
  %97 = or i32 %96, 83
  %98 = load %struct.Proto*, %struct.Proto** %74, align 8, !tbaa !13
  %99 = load %struct.LexState*, %struct.LexState** %76, align 8, !tbaa !17
  %100 = getelementptr inbounds %struct.LexState, %struct.LexState* %99, i64 0, i32 6
  %101 = load %struct.lua_State*, %struct.lua_State** %100, align 8, !tbaa !18
  %102 = getelementptr inbounds %struct.Proto, %struct.Proto* %98, i64 0, i32 16
  %103 = bitcast i32** %102 to i8**
  %104 = load i8*, i8** %103, align 8, !tbaa !14
  %105 = getelementptr inbounds %struct.Proto, %struct.Proto* %98, i64 0, i32 8
  %106 = call i8* @luaM_growaux_(%struct.lua_State* %101, i8* %104, i32 %95, i32* nonnull %105, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %107 = bitcast i8* %106 to i32*
  store i8* %106, i8** %103, align 8, !tbaa !14
  %108 = load i32, i32* %83, align 8, !tbaa !9
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %83, align 8, !tbaa !9
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  store i32 %97, i32* %111, align 4, !tbaa !16
  %112 = load %struct.LexState*, %struct.LexState** %76, align 8, !tbaa !17
  %113 = getelementptr inbounds %struct.LexState, %struct.LexState* %112, i64 0, i32 2
  %114 = load i32, i32* %113, align 8, !tbaa !19
  call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %98, i32 %114) #8
  br label %115

; <label>:115:                                    ; preds = %72, %47, %8
  ret void
}

; Function Attrs: nounwind uwtable
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
  %14 = load i32, i32* %13, align 8, !tbaa !36
  switch i32 %14, label %43 [
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
  br label %43

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
  %32 = add i8 %28, 1
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 5
  %34 = load i8, i8* %33, align 4, !tbaa !21
  %35 = icmp ult i8 %28, %34
  br i1 %35, label %42, label %36

; <label>:36:                                     ; preds = %21
  %37 = icmp ugt i8 %28, -3
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %36
  %39 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %40 = load %struct.LexState*, %struct.LexState** %39, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #7
  unreachable

; <label>:41:                                     ; preds = %36
  store i8 %32, i8* %33, align 4, !tbaa !21
  br label %42

; <label>:42:                                     ; preds = %21, %41
  store i8 %32, i8* %27, align 4, !tbaa !20
  br label %43

; <label>:43:                                     ; preds = %3, %42, %15
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define hidden void @luaK_setoneret(%struct.FuncState* nocapture readonly, %struct.expdesc* nocapture) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !36
  switch i32 %4, label %31 [
    i32 16, label %5
    i32 17, label %18
  ]

; <label>:5:                                      ; preds = %2
  store i32 7, i32* %3, align 8, !tbaa !36
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
  store i32 15, i32* %3, align 8, !tbaa !36
  br label %31

; <label>:31:                                     ; preds = %2, %18, %5
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_dischargevars(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !36
  switch i32 %4, label %262 [
    i32 8, label %5
    i32 9, label %6
    i32 11, label %35
    i32 12, label %72
    i32 13, label %119
    i32 10, label %166
    i32 16, label %236
    i32 17, label %249
  ]

; <label>:5:                                      ; preds = %2
  store i32 7, i32* %3, align 8, !tbaa !36
  br label %262

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %8 = bitcast %union.anon.7* %7 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !22
  %10 = shl i32 %9, 16
  %11 = or i32 %10, 7
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %13 = load %struct.Proto*, %struct.Proto** %12, align 8, !tbaa !13
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %15 = load %struct.LexState*, %struct.LexState** %14, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i64 0, i32 6
  %17 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !18
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 16
  %19 = bitcast i32** %18 to i8**
  %20 = load i8*, i8** %19, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %22 = load i32, i32* %21, align 8, !tbaa !9
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 8
  %24 = tail call i8* @luaM_growaux_(%struct.lua_State* %17, i8* %20, i32 %22, i32* nonnull %23, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %25 = bitcast i8* %24 to i32*
  store i8* %24, i8** %19, align 8, !tbaa !14
  %26 = load i32, i32* %21, align 8, !tbaa !9
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %21, align 8, !tbaa !9
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32 %11, i32* %29, align 4, !tbaa !16
  %30 = load %struct.LexState*, %struct.LexState** %14, align 8, !tbaa !17
  %31 = getelementptr inbounds %struct.LexState, %struct.LexState* %30, i64 0, i32 2
  %32 = load i32, i32* %31, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %13, i32 %32) #8
  %33 = load i32, i32* %21, align 8, !tbaa !9
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %8, align 8, !tbaa !22
  store i32 15, i32* %3, align 8, !tbaa !36
  br label %262

; <label>:35:                                     ; preds = %2
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %37 = bitcast %union.anon.7* %36 to %struct.anon.8*
  %38 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %37, i64 0, i32 1
  %39 = load i8, i8* %38, align 2, !tbaa !22
  %40 = zext i8 %39 to i32
  %41 = bitcast %union.anon.7* %36 to i16*
  %42 = load i16, i16* %41, align 8, !tbaa !22
  %43 = zext i16 %42 to i32
  %44 = shl nuw nsw i32 %40, 16
  %45 = shl i32 %43, 24
  %46 = or i32 %44, %45
  %47 = or i32 %46, 9
  %48 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %49 = load %struct.Proto*, %struct.Proto** %48, align 8, !tbaa !13
  %50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %51 = load %struct.LexState*, %struct.LexState** %50, align 8, !tbaa !17
  %52 = getelementptr inbounds %struct.LexState, %struct.LexState* %51, i64 0, i32 6
  %53 = load %struct.lua_State*, %struct.lua_State** %52, align 8, !tbaa !18
  %54 = getelementptr inbounds %struct.Proto, %struct.Proto* %49, i64 0, i32 16
  %55 = bitcast i32** %54 to i8**
  %56 = load i8*, i8** %55, align 8, !tbaa !14
  %57 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %58 = load i32, i32* %57, align 8, !tbaa !9
  %59 = getelementptr inbounds %struct.Proto, %struct.Proto* %49, i64 0, i32 8
  %60 = tail call i8* @luaM_growaux_(%struct.lua_State* %53, i8* %56, i32 %58, i32* nonnull %59, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %61 = bitcast i8* %60 to i32*
  store i8* %60, i8** %55, align 8, !tbaa !14
  %62 = load i32, i32* %57, align 8, !tbaa !9
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %57, align 8, !tbaa !9
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32 %47, i32* %65, align 4, !tbaa !16
  %66 = load %struct.LexState*, %struct.LexState** %50, align 8, !tbaa !17
  %67 = getelementptr inbounds %struct.LexState, %struct.LexState* %66, i64 0, i32 2
  %68 = load i32, i32* %67, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %49, i32 %68) #8
  %69 = load i32, i32* %57, align 8, !tbaa !9
  %70 = add nsw i32 %69, -1
  %71 = bitcast %union.anon.7* %36 to i32*
  store i32 %70, i32* %71, align 8, !tbaa !22
  store i32 15, i32* %3, align 8, !tbaa !36
  br label %262

; <label>:72:                                     ; preds = %2
  %73 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %74 = bitcast %union.anon.7* %73 to %struct.anon.8*
  %75 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %74, i64 0, i32 1
  %76 = load i8, i8* %75, align 2, !tbaa !22
  %77 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %78 = load i8, i8* %77, align 2, !tbaa !38
  %79 = icmp ugt i8 %78, %76
  br i1 %79, label %85, label %80

; <label>:80:                                     ; preds = %72
  %81 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %82 = load i8, i8* %81, align 4, !tbaa !20
  %83 = add i8 %82, -1
  store i8 %83, i8* %81, align 4, !tbaa !20
  %84 = load i8, i8* %75, align 2, !tbaa !22
  br label %85

; <label>:85:                                     ; preds = %72, %80
  %86 = phi i8 [ %76, %72 ], [ %84, %80 ]
  %87 = zext i8 %86 to i32
  %88 = bitcast %union.anon.7* %73 to i16*
  %89 = load i16, i16* %88, align 8, !tbaa !22
  %90 = zext i16 %89 to i32
  %91 = shl nuw nsw i32 %87, 16
  %92 = shl i32 %90, 24
  %93 = or i32 %91, %92
  %94 = or i32 %93, 11
  %95 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %96 = load %struct.Proto*, %struct.Proto** %95, align 8, !tbaa !13
  %97 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %98 = load %struct.LexState*, %struct.LexState** %97, align 8, !tbaa !17
  %99 = getelementptr inbounds %struct.LexState, %struct.LexState* %98, i64 0, i32 6
  %100 = load %struct.lua_State*, %struct.lua_State** %99, align 8, !tbaa !18
  %101 = getelementptr inbounds %struct.Proto, %struct.Proto* %96, i64 0, i32 16
  %102 = bitcast i32** %101 to i8**
  %103 = load i8*, i8** %102, align 8, !tbaa !14
  %104 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %105 = load i32, i32* %104, align 8, !tbaa !9
  %106 = getelementptr inbounds %struct.Proto, %struct.Proto* %96, i64 0, i32 8
  %107 = tail call i8* @luaM_growaux_(%struct.lua_State* %100, i8* %103, i32 %105, i32* nonnull %106, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %108 = bitcast i8* %107 to i32*
  store i8* %107, i8** %102, align 8, !tbaa !14
  %109 = load i32, i32* %104, align 8, !tbaa !9
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %104, align 8, !tbaa !9
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %94, i32* %112, align 4, !tbaa !16
  %113 = load %struct.LexState*, %struct.LexState** %97, align 8, !tbaa !17
  %114 = getelementptr inbounds %struct.LexState, %struct.LexState* %113, i64 0, i32 2
  %115 = load i32, i32* %114, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %96, i32 %115) #8
  %116 = load i32, i32* %104, align 8, !tbaa !9
  %117 = add nsw i32 %116, -1
  %118 = bitcast %union.anon.7* %73 to i32*
  store i32 %117, i32* %118, align 8, !tbaa !22
  store i32 15, i32* %3, align 8, !tbaa !36
  br label %262

; <label>:119:                                    ; preds = %2
  %120 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %121 = bitcast %union.anon.7* %120 to %struct.anon.8*
  %122 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %121, i64 0, i32 1
  %123 = load i8, i8* %122, align 2, !tbaa !22
  %124 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %125 = load i8, i8* %124, align 2, !tbaa !38
  %126 = icmp ugt i8 %125, %123
  br i1 %126, label %132, label %127

; <label>:127:                                    ; preds = %119
  %128 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %129 = load i8, i8* %128, align 4, !tbaa !20
  %130 = add i8 %129, -1
  store i8 %130, i8* %128, align 4, !tbaa !20
  %131 = load i8, i8* %122, align 2, !tbaa !22
  br label %132

; <label>:132:                                    ; preds = %119, %127
  %133 = phi i8 [ %123, %119 ], [ %131, %127 ]
  %134 = zext i8 %133 to i32
  %135 = bitcast %union.anon.7* %120 to i16*
  %136 = load i16, i16* %135, align 8, !tbaa !22
  %137 = zext i16 %136 to i32
  %138 = shl nuw nsw i32 %134, 16
  %139 = shl i32 %137, 24
  %140 = or i32 %138, %139
  %141 = or i32 %140, 12
  %142 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %143 = load %struct.Proto*, %struct.Proto** %142, align 8, !tbaa !13
  %144 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %145 = load %struct.LexState*, %struct.LexState** %144, align 8, !tbaa !17
  %146 = getelementptr inbounds %struct.LexState, %struct.LexState* %145, i64 0, i32 6
  %147 = load %struct.lua_State*, %struct.lua_State** %146, align 8, !tbaa !18
  %148 = getelementptr inbounds %struct.Proto, %struct.Proto* %143, i64 0, i32 16
  %149 = bitcast i32** %148 to i8**
  %150 = load i8*, i8** %149, align 8, !tbaa !14
  %151 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %152 = load i32, i32* %151, align 8, !tbaa !9
  %153 = getelementptr inbounds %struct.Proto, %struct.Proto* %143, i64 0, i32 8
  %154 = tail call i8* @luaM_growaux_(%struct.lua_State* %147, i8* %150, i32 %152, i32* nonnull %153, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %155 = bitcast i8* %154 to i32*
  store i8* %154, i8** %149, align 8, !tbaa !14
  %156 = load i32, i32* %151, align 8, !tbaa !9
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %151, align 8, !tbaa !9
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  store i32 %141, i32* %159, align 4, !tbaa !16
  %160 = load %struct.LexState*, %struct.LexState** %144, align 8, !tbaa !17
  %161 = getelementptr inbounds %struct.LexState, %struct.LexState* %160, i64 0, i32 2
  %162 = load i32, i32* %161, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %143, i32 %162) #8
  %163 = load i32, i32* %151, align 8, !tbaa !9
  %164 = add nsw i32 %163, -1
  %165 = bitcast %union.anon.7* %120 to i32*
  store i32 %164, i32* %165, align 8, !tbaa !22
  store i32 15, i32* %3, align 8, !tbaa !36
  br label %262

; <label>:166:                                    ; preds = %2
  %167 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %168 = bitcast %union.anon.7* %167 to %struct.anon.8*
  %169 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %168, i64 0, i32 1
  %170 = load i8, i8* %169, align 2, !tbaa !22
  %171 = zext i8 %170 to i32
  %172 = bitcast %union.anon.7* %167 to i16*
  %173 = load i16, i16* %172, align 8, !tbaa !22
  %174 = sext i16 %173 to i32
  %175 = icmp sgt i32 %171, %174
  %176 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %177 = load i8, i8* %176, align 2, !tbaa !38
  %178 = zext i8 %177 to i32
  br i1 %175, label %179, label %191

; <label>:179:                                    ; preds = %166
  %180 = icmp ugt i8 %177, %170
  br i1 %180, label %185, label %181

; <label>:181:                                    ; preds = %179
  %182 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %183 = load i8, i8* %182, align 4, !tbaa !20
  %184 = add i8 %183, -1
  store i8 %184, i8* %182, align 4, !tbaa !20
  br label %185

; <label>:185:                                    ; preds = %181, %179
  %186 = icmp sgt i32 %178, %174
  br i1 %186, label %203, label %187

; <label>:187:                                    ; preds = %185
  %188 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %189 = load i8, i8* %188, align 4, !tbaa !20
  %190 = add i8 %189, -1
  store i8 %190, i8* %188, align 4, !tbaa !20
  br label %203

; <label>:191:                                    ; preds = %166
  %192 = icmp sgt i32 %178, %174
  br i1 %192, label %197, label %193

; <label>:193:                                    ; preds = %191
  %194 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %195 = load i8, i8* %194, align 4, !tbaa !20
  %196 = add i8 %195, -1
  store i8 %196, i8* %194, align 4, !tbaa !20
  br label %197

; <label>:197:                                    ; preds = %193, %191
  %198 = icmp ugt i8 %177, %170
  br i1 %198, label %203, label %199

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %201 = load i8, i8* %200, align 4, !tbaa !20
  %202 = add i8 %201, -1
  store i8 %202, i8* %200, align 4, !tbaa !20
  br label %203

; <label>:203:                                    ; preds = %185, %187, %197, %199
  %204 = load i8, i8* %169, align 2, !tbaa !22
  %205 = zext i8 %204 to i32
  %206 = load i16, i16* %172, align 8, !tbaa !22
  %207 = zext i16 %206 to i32
  %208 = shl nuw nsw i32 %205, 16
  %209 = shl i32 %207, 24
  %210 = or i32 %208, %209
  %211 = or i32 %210, 10
  %212 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %213 = load %struct.Proto*, %struct.Proto** %212, align 8, !tbaa !13
  %214 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %215 = load %struct.LexState*, %struct.LexState** %214, align 8, !tbaa !17
  %216 = getelementptr inbounds %struct.LexState, %struct.LexState* %215, i64 0, i32 6
  %217 = load %struct.lua_State*, %struct.lua_State** %216, align 8, !tbaa !18
  %218 = getelementptr inbounds %struct.Proto, %struct.Proto* %213, i64 0, i32 16
  %219 = bitcast i32** %218 to i8**
  %220 = load i8*, i8** %219, align 8, !tbaa !14
  %221 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %222 = load i32, i32* %221, align 8, !tbaa !9
  %223 = getelementptr inbounds %struct.Proto, %struct.Proto* %213, i64 0, i32 8
  %224 = tail call i8* @luaM_growaux_(%struct.lua_State* %217, i8* %220, i32 %222, i32* nonnull %223, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %225 = bitcast i8* %224 to i32*
  store i8* %224, i8** %219, align 8, !tbaa !14
  %226 = load i32, i32* %221, align 8, !tbaa !9
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %221, align 8, !tbaa !9
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  store i32 %211, i32* %229, align 4, !tbaa !16
  %230 = load %struct.LexState*, %struct.LexState** %214, align 8, !tbaa !17
  %231 = getelementptr inbounds %struct.LexState, %struct.LexState* %230, i64 0, i32 2
  %232 = load i32, i32* %231, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %213, i32 %232) #8
  %233 = load i32, i32* %221, align 8, !tbaa !9
  %234 = add nsw i32 %233, -1
  %235 = bitcast %union.anon.7* %167 to i32*
  store i32 %234, i32* %235, align 8, !tbaa !22
  store i32 15, i32* %3, align 8, !tbaa !36
  br label %262

; <label>:236:                                    ; preds = %2
  store i32 7, i32* %3, align 8, !tbaa !36
  %237 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %238 = load %struct.Proto*, %struct.Proto** %237, align 8, !tbaa !13
  %239 = getelementptr inbounds %struct.Proto, %struct.Proto* %238, i64 0, i32 16
  %240 = load i32*, i32** %239, align 8, !tbaa !14
  %241 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %242 = bitcast %union.anon.7* %241 to i32*
  %243 = load i32, i32* %242, align 8, !tbaa !22
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %240, i64 %244
  %246 = load i32, i32* %245, align 4, !tbaa !16
  %247 = lshr i32 %246, 7
  %248 = and i32 %247, 255
  store i32 %248, i32* %242, align 8, !tbaa !22
  br label %262

; <label>:249:                                    ; preds = %2
  %250 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %251 = load %struct.Proto*, %struct.Proto** %250, align 8, !tbaa !13
  %252 = getelementptr inbounds %struct.Proto, %struct.Proto* %251, i64 0, i32 16
  %253 = load i32*, i32** %252, align 8, !tbaa !14
  %254 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %255 = bitcast %union.anon.7* %254 to i32*
  %256 = load i32, i32* %255, align 8, !tbaa !22
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %253, i64 %257
  %259 = load i32, i32* %258, align 4, !tbaa !16
  %260 = and i32 %259, 16777215
  %261 = or i32 %260, 33554432
  store i32 %261, i32* %258, align 4, !tbaa !16
  store i32 15, i32* %3, align 8, !tbaa !36
  br label %262

; <label>:262:                                    ; preds = %2, %249, %236, %203, %132, %85, %35, %6, %5
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_exp2nextreg(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !36
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %6, label %18

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %8 = bitcast %union.anon.7* %7 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %11 = load i8, i8* %10, align 2, !tbaa !38
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
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %20 = load i8, i8* %19, align 4, !tbaa !20
  %21 = add i8 %20, 1
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %23 = load %struct.Proto*, %struct.Proto** %22, align 8, !tbaa !13
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %23, i64 0, i32 5
  %25 = load i8, i8* %24, align 4, !tbaa !21
  %26 = icmp ult i8 %20, %25
  br i1 %26, label %33, label %27

; <label>:27:                                     ; preds = %18
  %28 = icmp ugt i8 %20, -3
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %31 = load %struct.LexState*, %struct.LexState** %30, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #7
  unreachable

; <label>:32:                                     ; preds = %27
  store i8 %21, i8* %24, align 4, !tbaa !21
  br label %33

; <label>:33:                                     ; preds = %18, %32
  store i8 %21, i8* %19, align 4, !tbaa !20
  %34 = zext i8 %21 to i32
  %35 = add nsw i32 %34, -1
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %35)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @exp2reg(%struct.FuncState*, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  tail call fastcc void @discharge2reg(%struct.FuncState* %0, %struct.expdesc* %1, i32 %2)
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !36
  %6 = icmp eq i32 %5, 14
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  br i1 %6, label %8, label %48

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %10 = bitcast %union.anon.7* %9 to i32*
  %11 = load i32, i32* %10, align 8, !tbaa !22
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %48, label %13

; <label>:13:                                     ; preds = %8
  %14 = load i32, i32* %7, align 4, !tbaa !16
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  store i32 %11, i32* %7, align 4, !tbaa !16
  br label %50

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %19 = load %struct.Proto*, %struct.Proto** %18, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i64 0, i32 16
  %21 = load i32*, i32** %20, align 8, !tbaa !14
  br label %22

; <label>:22:                                     ; preds = %22, %17
  %23 = phi i32 [ %14, %17 ], [ %32, %22 ]
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !16
  %27 = lshr i32 %26, 7
  %28 = add nsw i32 %27, -16777215
  %29 = icmp eq i32 %28, -1
  %30 = add nsw i32 %23, 1
  %31 = add nsw i32 %30, %28
  %32 = select i1 %29, i32 -1, i32 %31
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %22

; <label>:34:                                     ; preds = %22
  %35 = xor i32 %23, -1
  %36 = add i32 %11, %35
  %37 = add i32 %36, 16777215
  %38 = icmp ult i32 %37, 33554432
  br i1 %38, label %42, label %39

; <label>:39:                                     ; preds = %34
  %40 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %41 = load %struct.LexState*, %struct.LexState** %40, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable

; <label>:42:                                     ; preds = %34
  %43 = getelementptr inbounds i32, i32* %21, i64 %24
  %44 = and i32 %26, 127
  %45 = shl i32 %36, 7
  %46 = add i32 %45, 2147483520
  %47 = or i32 %46, %44
  store i32 %47, i32* %43, align 4, !tbaa !16
  br label %48

; <label>:48:                                     ; preds = %3, %8, %42
  %49 = load i32, i32* %7, align 8, !tbaa !39
  br label %50

; <label>:50:                                     ; preds = %48, %16
  %51 = phi i32 [ %49, %48 ], [ %11, %16 ]
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %53 = load i32, i32* %52, align 4, !tbaa !40
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %214, label %55

; <label>:55:                                     ; preds = %50
  %56 = icmp eq i32 %51, -1
  br i1 %56, label %91, label %57

; <label>:57:                                     ; preds = %55
  %58 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %59 = load %struct.Proto*, %struct.Proto** %58, align 8, !tbaa !13
  %60 = getelementptr inbounds %struct.Proto, %struct.Proto* %59, i64 0, i32 16
  %61 = load i32*, i32** %60, align 8, !tbaa !14
  br label %62

; <label>:62:                                     ; preds = %82, %57
  %63 = phi i32 [ %51, %57 ], [ %89, %82 ]
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = icmp sgt i32 %63, 0
  br i1 %66, label %67, label %76

; <label>:67:                                     ; preds = %62
  %68 = getelementptr inbounds i32, i32* %65, i64 -1
  %69 = load i32, i32* %68, align 4, !tbaa !16
  %70 = and i32 %69, 127
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1, !tbaa !22
  %74 = and i8 %73, 16
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %78

; <label>:76:                                     ; preds = %67, %62
  %77 = load i32, i32* %65, align 4, !tbaa !16
  br label %78

; <label>:78:                                     ; preds = %76, %67
  %79 = phi i32 [ %77, %76 ], [ %69, %67 ]
  %80 = and i32 %79, 127
  %81 = icmp eq i32 %80, 68
  br i1 %81, label %82, label %127

; <label>:82:                                     ; preds = %78
  %83 = load i32, i32* %65, align 4, !tbaa !16
  %84 = lshr i32 %83, 7
  %85 = add nsw i32 %84, -16777215
  %86 = icmp eq i32 %85, -1
  %87 = add nsw i32 %63, 1
  %88 = add nsw i32 %87, %85
  %89 = select i1 %86, i32 -1, i32 %88
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %62

; <label>:91:                                     ; preds = %82, %55
  %92 = icmp eq i32 %53, -1
  br i1 %92, label %206, label %93

; <label>:93:                                     ; preds = %91
  %94 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %95 = load %struct.Proto*, %struct.Proto** %94, align 8, !tbaa !13
  %96 = getelementptr inbounds %struct.Proto, %struct.Proto* %95, i64 0, i32 16
  %97 = load i32*, i32** %96, align 8, !tbaa !14
  br label %98

; <label>:98:                                     ; preds = %118, %93
  %99 = phi i32 [ %53, %93 ], [ %125, %118 ]
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = icmp sgt i32 %99, 0
  br i1 %102, label %103, label %112

; <label>:103:                                    ; preds = %98
  %104 = getelementptr inbounds i32, i32* %101, i64 -1
  %105 = load i32, i32* %104, align 4, !tbaa !16
  %106 = and i32 %105, 127
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %107
  %109 = load i8, i8* %108, align 1, !tbaa !22
  %110 = and i8 %109, 16
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %114

; <label>:112:                                    ; preds = %103, %98
  %113 = load i32, i32* %101, align 4, !tbaa !16
  br label %114

; <label>:114:                                    ; preds = %112, %103
  %115 = phi i32 [ %113, %112 ], [ %105, %103 ]
  %116 = and i32 %115, 127
  %117 = icmp eq i32 %116, 68
  br i1 %117, label %118, label %127

; <label>:118:                                    ; preds = %114
  %119 = load i32, i32* %101, align 4, !tbaa !16
  %120 = lshr i32 %119, 7
  %121 = add nsw i32 %120, -16777215
  %122 = icmp eq i32 %121, -1
  %123 = add nsw i32 %99, 1
  %124 = add nsw i32 %123, %121
  %125 = select i1 %122, i32 -1, i32 %124
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %206, label %98

; <label>:127:                                    ; preds = %78, %114
  %128 = phi %struct.Proto* [ %95, %114 ], [ %59, %78 ]
  br i1 %6, label %129, label %133

; <label>:129:                                    ; preds = %127
  %130 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %131 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %132 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  br label %157

; <label>:133:                                    ; preds = %127
  %134 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %135 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %136 = load %struct.LexState*, %struct.LexState** %135, align 8, !tbaa !17
  %137 = getelementptr inbounds %struct.LexState, %struct.LexState* %136, i64 0, i32 6
  %138 = load %struct.lua_State*, %struct.lua_State** %137, align 8, !tbaa !18
  %139 = getelementptr inbounds %struct.Proto, %struct.Proto* %128, i64 0, i32 16
  %140 = bitcast i32** %139 to i8**
  %141 = load i8*, i8** %140, align 8, !tbaa !14
  %142 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %143 = load i32, i32* %142, align 8, !tbaa !9
  %144 = getelementptr inbounds %struct.Proto, %struct.Proto* %128, i64 0, i32 8
  %145 = tail call i8* @luaM_growaux_(%struct.lua_State* %138, i8* %141, i32 %143, i32* nonnull %144, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %146 = bitcast i8* %145 to i32*
  store i8* %145, i8** %140, align 8, !tbaa !14
  %147 = load i32, i32* %142, align 8, !tbaa !9
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %142, align 8, !tbaa !9
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  store i32 2147483449, i32* %150, align 4, !tbaa !16
  %151 = load %struct.LexState*, %struct.LexState** %135, align 8, !tbaa !17
  %152 = getelementptr inbounds %struct.LexState, %struct.LexState* %151, i64 0, i32 2
  %153 = load i32, i32* %152, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %128, i32 %153) #8
  %154 = load i32, i32* %142, align 8, !tbaa !9
  %155 = add nsw i32 %154, -1
  %156 = load %struct.Proto*, %struct.Proto** %134, align 8, !tbaa !13
  br label %157

; <label>:157:                                    ; preds = %129, %133
  %158 = phi %struct.LexState** [ %132, %129 ], [ %135, %133 ]
  %159 = phi %struct.Proto** [ %131, %129 ], [ %134, %133 ]
  %160 = phi i32* [ %130, %129 ], [ %142, %133 ]
  %161 = phi %struct.Proto* [ %128, %129 ], [ %156, %133 ]
  %162 = phi i32 [ -1, %129 ], [ %155, %133 ]
  %163 = load i32, i32* %160, align 8, !tbaa !9
  %164 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %163, i32* %164, align 4, !tbaa !12
  %165 = shl i32 %2, 7
  %166 = or i32 %165, 16777221
  %167 = load %struct.LexState*, %struct.LexState** %158, align 8, !tbaa !17
  %168 = getelementptr inbounds %struct.LexState, %struct.LexState* %167, i64 0, i32 6
  %169 = load %struct.lua_State*, %struct.lua_State** %168, align 8, !tbaa !18
  %170 = getelementptr inbounds %struct.Proto, %struct.Proto* %161, i64 0, i32 16
  %171 = bitcast i32** %170 to i8**
  %172 = load i8*, i8** %171, align 8, !tbaa !14
  %173 = getelementptr inbounds %struct.Proto, %struct.Proto* %161, i64 0, i32 8
  %174 = tail call i8* @luaM_growaux_(%struct.lua_State* %169, i8* %172, i32 %163, i32* nonnull %173, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %175 = bitcast i8* %174 to i32*
  store i8* %174, i8** %171, align 8, !tbaa !14
  %176 = load i32, i32* %160, align 8, !tbaa !9
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %160, align 8, !tbaa !9
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  store i32 %166, i32* %179, align 4, !tbaa !16
  %180 = load %struct.LexState*, %struct.LexState** %158, align 8, !tbaa !17
  %181 = getelementptr inbounds %struct.LexState, %struct.LexState* %180, i64 0, i32 2
  %182 = load i32, i32* %181, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %161, i32 %182) #8
  %183 = load i32, i32* %160, align 8, !tbaa !9
  %184 = add nsw i32 %183, -1
  store i32 %183, i32* %164, align 4, !tbaa !12
  %185 = or i32 %165, 65541
  %186 = load %struct.Proto*, %struct.Proto** %159, align 8, !tbaa !13
  %187 = load %struct.LexState*, %struct.LexState** %158, align 8, !tbaa !17
  %188 = getelementptr inbounds %struct.LexState, %struct.LexState* %187, i64 0, i32 6
  %189 = load %struct.lua_State*, %struct.lua_State** %188, align 8, !tbaa !18
  %190 = getelementptr inbounds %struct.Proto, %struct.Proto* %186, i64 0, i32 16
  %191 = bitcast i32** %190 to i8**
  %192 = load i8*, i8** %191, align 8, !tbaa !14
  %193 = getelementptr inbounds %struct.Proto, %struct.Proto* %186, i64 0, i32 8
  %194 = tail call i8* @luaM_growaux_(%struct.lua_State* %189, i8* %192, i32 %183, i32* nonnull %193, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %195 = bitcast i8* %194 to i32*
  store i8* %194, i8** %191, align 8, !tbaa !14
  %196 = load i32, i32* %160, align 8, !tbaa !9
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %160, align 8, !tbaa !9
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  store i32 %185, i32* %199, align 4, !tbaa !16
  %200 = load %struct.LexState*, %struct.LexState** %158, align 8, !tbaa !17
  %201 = getelementptr inbounds %struct.LexState, %struct.LexState* %200, i64 0, i32 2
  %202 = load i32, i32* %201, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %186, i32 %202) #8
  %203 = load i32, i32* %160, align 8, !tbaa !9
  %204 = add nsw i32 %203, -1
  store i32 %203, i32* %164, align 4, !tbaa !12
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %162, i32 %203, i32 255, i32 %203) #8
  %205 = load i32, i32* %52, align 4, !tbaa !40
  br label %206

; <label>:206:                                    ; preds = %118, %91, %157
  %207 = phi i32 [ %205, %157 ], [ -1, %91 ], [ %53, %118 ]
  %208 = phi i32 [ %204, %157 ], [ -1, %91 ], [ -1, %118 ]
  %209 = phi i32 [ %184, %157 ], [ -1, %91 ], [ -1, %118 ]
  %210 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %211 = load i32, i32* %210, align 8, !tbaa !9
  %212 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %211, i32* %212, align 4, !tbaa !12
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %207, i32 %211, i32 %2, i32 %209)
  %213 = load i32, i32* %7, align 8, !tbaa !39
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %213, i32 %211, i32 %2, i32 %208)
  br label %214

; <label>:214:                                    ; preds = %50, %206
  store i32 -1, i32* %7, align 8, !tbaa !39
  store i32 -1, i32* %52, align 4, !tbaa !40
  %215 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %216 = bitcast %union.anon.7* %215 to i32*
  store i32 %2, i32* %216, align 8, !tbaa !22
  store i32 7, i32* %4, align 8, !tbaa !36
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_exp2anyreg(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !36
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %6, label %21

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %8 = load i32, i32* %7, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %10 = load i32, i32* %9, align 4, !tbaa !40
  %11 = icmp eq i32 %8, %10
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %13 = bitcast %union.anon.7* %12 to i32*
  %14 = load i32, i32* %13, align 8, !tbaa !22
  br i1 %11, label %59, label %15

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %17 = load i8, i8* %16, align 2, !tbaa !38
  %18 = zext i8 %17 to i32
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %21, label %20

; <label>:20:                                     ; preds = %15
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %14)
  br label %56

; <label>:21:                                     ; preds = %15, %2
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #8
  %22 = load i32, i32* %3, align 8, !tbaa !36
  %23 = icmp eq i32 %22, 7
  br i1 %23, label %24, label %36

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %26 = bitcast %union.anon.7* %25 to i32*
  %27 = load i32, i32* %26, align 8, !tbaa !22
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %29 = load i8, i8* %28, align 2, !tbaa !38
  %30 = zext i8 %29 to i32
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %36, label %32

; <label>:32:                                     ; preds = %24
  %33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %34 = load i8, i8* %33, align 4, !tbaa !20
  %35 = add i8 %34, -1
  store i8 %35, i8* %33, align 4, !tbaa !20
  br label %36

; <label>:36:                                     ; preds = %32, %24, %21
  %37 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %38 = load i8, i8* %37, align 4, !tbaa !20
  %39 = add i8 %38, 1
  %40 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %41 = load %struct.Proto*, %struct.Proto** %40, align 8, !tbaa !13
  %42 = getelementptr inbounds %struct.Proto, %struct.Proto* %41, i64 0, i32 5
  %43 = load i8, i8* %42, align 4, !tbaa !21
  %44 = icmp ult i8 %38, %43
  br i1 %44, label %51, label %45

; <label>:45:                                     ; preds = %36
  %46 = icmp ugt i8 %38, -3
  br i1 %46, label %47, label %50

; <label>:47:                                     ; preds = %45
  %48 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %49 = load %struct.LexState*, %struct.LexState** %48, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #7
  unreachable

; <label>:50:                                     ; preds = %45
  store i8 %39, i8* %42, align 4, !tbaa !21
  br label %51

; <label>:51:                                     ; preds = %36, %50
  store i8 %39, i8* %37, align 4, !tbaa !20
  %52 = zext i8 %39 to i32
  %53 = add nsw i32 %52, -1
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %53) #8
  %54 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %55 = bitcast %union.anon.7* %54 to i32*
  br label %56

; <label>:56:                                     ; preds = %20, %51
  %57 = phi i32* [ %55, %51 ], [ %13, %20 ]
  %58 = load i32, i32* %57, align 8, !tbaa !22
  br label %59

; <label>:59:                                     ; preds = %56, %6
  %60 = phi i32 [ %14, %6 ], [ %58, %56 ]
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_exp2anyregup(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !36
  %5 = icmp eq i32 %4, 9
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %8 = load i32, i32* %7, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %10 = load i32, i32* %9, align 4, !tbaa !40
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %6, %2
  %13 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1)
  br label %14

; <label>:14:                                     ; preds = %6, %12
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_exp2val(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %4 = load i32, i32* %3, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %6 = load i32, i32* %5, align 4, !tbaa !40
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
define hidden i32 @luaK_exp2RK(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #2 {
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
  %3 = alloca %struct.TValue, align 8
  %4 = alloca %struct.TValue, align 8
  %5 = alloca %struct.TValue, align 8
  %6 = alloca %struct.TValue, align 8
  %7 = alloca %struct.TValue, align 8
  %8 = alloca %struct.TValue, align 8
  %9 = alloca %struct.TValue, align 8
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %11 = load i32, i32* %10, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %13 = load i32, i32* %12, align 4, !tbaa !40
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %68

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %17 = load i32, i32* %16, align 8, !tbaa !36
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19) #8
  %20 = bitcast %struct.TValue* %9 to i32*
  store i32 1, i32* %20, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i64 0, i32 1
  store i8 1, i8* %21, align 8, !tbaa !25
  %22 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %9, %struct.TValue* nonnull %9) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19) #8
  br label %62

; <label>:23:                                     ; preds = %15
  %24 = bitcast %struct.TValue* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #8
  %25 = bitcast %struct.TValue* %8 to i32*
  store i32 0, i32* %25, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i64 0, i32 1
  store i8 1, i8* %26, align 8, !tbaa !25
  %27 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %8, %struct.TValue* nonnull %8) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %24) #8
  br label %62

; <label>:28:                                     ; preds = %15
  %29 = bitcast %struct.TValue* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %29) #8
  %30 = bitcast %struct.TValue* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %30) #8
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %29) #8
  br label %62

; <label>:40:                                     ; preds = %15
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  %42 = load i64, i64* %41, align 8, !tbaa !22
  %43 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %43) #8
  %44 = bitcast %struct.TValue* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %44) #8
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %44) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %43) #8
  br label %62

; <label>:51:                                     ; preds = %15
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  %53 = load i64, i64* %52, align 8, !tbaa !22
  %54 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %54) #8
  %55 = bitcast %struct.TValue* %3 to i64*
  store i64 %53, i64* %55, align 8, !tbaa !22
  %56 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 19, i8* %56, align 8, !tbaa !25
  %57 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %3, %struct.TValue* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %54) #8
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
  store i32 4, i32* %16, align 8, !tbaa !36
  %66 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %67 = bitcast %union.anon.7* %66 to i32*
  store i32 %63, i32* %67, align 8, !tbaa !22
  br label %68

; <label>:68:                                     ; preds = %15, %65, %2, %62
  %69 = phi i32 [ 0, %62 ], [ 0, %2 ], [ 0, %15 ], [ 1, %65 ]
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_storevar(%struct.FuncState*, %struct.expdesc* nocapture readonly, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !36
  switch i32 %5, label %240 [
    i32 8, label %6
    i32 9, label %26
    i32 11, label %56
    i32 12, label %102
    i32 13, label %148
    i32 10, label %194
  ]

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !36
  %9 = icmp eq i32 %8, 7
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %12 = bitcast %union.anon.7* %11 to i32*
  %13 = load i32, i32* %12, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %15 = load i8, i8* %14, align 2, !tbaa !38
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
  tail call fastcc void @exp2reg(%struct.FuncState* %0, %struct.expdesc* nonnull %2, i32 %25)
  br label %256

; <label>:26:                                     ; preds = %3
  %27 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2)
  %28 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %29 = bitcast %union.anon.7* %28 to i32*
  %30 = load i32, i32* %29, align 8, !tbaa !22
  %31 = shl i32 %27, 7
  %32 = shl i32 %30, 16
  %33 = or i32 %31, %32
  %34 = or i32 %33, 8
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %36 = load %struct.Proto*, %struct.Proto** %35, align 8, !tbaa !13
  %37 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %38 = load %struct.LexState*, %struct.LexState** %37, align 8, !tbaa !17
  %39 = getelementptr inbounds %struct.LexState, %struct.LexState* %38, i64 0, i32 6
  %40 = load %struct.lua_State*, %struct.lua_State** %39, align 8, !tbaa !18
  %41 = getelementptr inbounds %struct.Proto, %struct.Proto* %36, i64 0, i32 16
  %42 = bitcast i32** %41 to i8**
  %43 = load i8*, i8** %42, align 8, !tbaa !14
  %44 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %45 = load i32, i32* %44, align 8, !tbaa !9
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %36, i64 0, i32 8
  %47 = tail call i8* @luaM_growaux_(%struct.lua_State* %40, i8* %43, i32 %45, i32* nonnull %46, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %48 = bitcast i8* %47 to i32*
  store i8* %47, i8** %42, align 8, !tbaa !14
  %49 = load i32, i32* %44, align 8, !tbaa !9
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %44, align 8, !tbaa !9
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 %34, i32* %52, align 4, !tbaa !16
  %53 = load %struct.LexState*, %struct.LexState** %37, align 8, !tbaa !17
  %54 = getelementptr inbounds %struct.LexState, %struct.LexState* %53, i64 0, i32 2
  %55 = load i32, i32* %54, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %36, i32 %55) #8
  br label %240

; <label>:56:                                     ; preds = %3
  %57 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %58 = bitcast %union.anon.7* %57 to %struct.anon.8*
  %59 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %58, i64 0, i32 1
  %60 = load i8, i8* %59, align 2, !tbaa !22
  %61 = zext i8 %60 to i32
  %62 = bitcast %union.anon.7* %57 to i16*
  %63 = load i16, i16* %62, align 8, !tbaa !22
  %64 = zext i16 %63 to i32
  %65 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

; <label>:67:                                     ; preds = %56
  %68 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  br label %69

; <label>:69:                                     ; preds = %56, %67
  %70 = phi i32 [ 0, %67 ], [ 32768, %56 ]
  %71 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %72 = bitcast %union.anon.7* %71 to i32*
  %73 = load i32, i32* %72, align 8, !tbaa !22
  %74 = shl nuw nsw i32 %61, 7
  %75 = shl nuw i32 %64, 16
  %76 = shl i32 %73, 24
  %77 = or i32 %74, %75
  %78 = or i32 %77, %70
  %79 = or i32 %78, %76
  %80 = or i32 %79, 13
  %81 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %82 = load %struct.Proto*, %struct.Proto** %81, align 8, !tbaa !13
  %83 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %84 = load %struct.LexState*, %struct.LexState** %83, align 8, !tbaa !17
  %85 = getelementptr inbounds %struct.LexState, %struct.LexState* %84, i64 0, i32 6
  %86 = load %struct.lua_State*, %struct.lua_State** %85, align 8, !tbaa !18
  %87 = getelementptr inbounds %struct.Proto, %struct.Proto* %82, i64 0, i32 16
  %88 = bitcast i32** %87 to i8**
  %89 = load i8*, i8** %88, align 8, !tbaa !14
  %90 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %91 = load i32, i32* %90, align 8, !tbaa !9
  %92 = getelementptr inbounds %struct.Proto, %struct.Proto* %82, i64 0, i32 8
  %93 = tail call i8* @luaM_growaux_(%struct.lua_State* %86, i8* %89, i32 %91, i32* nonnull %92, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %94 = bitcast i8* %93 to i32*
  store i8* %93, i8** %88, align 8, !tbaa !14
  %95 = load i32, i32* %90, align 8, !tbaa !9
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %90, align 8, !tbaa !9
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %80, i32* %98, align 4, !tbaa !16
  %99 = load %struct.LexState*, %struct.LexState** %83, align 8, !tbaa !17
  %100 = getelementptr inbounds %struct.LexState, %struct.LexState* %99, i64 0, i32 2
  %101 = load i32, i32* %100, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %82, i32 %101) #8
  br label %240

; <label>:102:                                    ; preds = %3
  %103 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %104 = bitcast %union.anon.7* %103 to %struct.anon.8*
  %105 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %104, i64 0, i32 1
  %106 = load i8, i8* %105, align 2, !tbaa !22
  %107 = zext i8 %106 to i32
  %108 = bitcast %union.anon.7* %103 to i16*
  %109 = load i16, i16* %108, align 8, !tbaa !22
  %110 = zext i16 %109 to i32
  %111 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115

; <label>:113:                                    ; preds = %102
  %114 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  br label %115

; <label>:115:                                    ; preds = %102, %113
  %116 = phi i32 [ 0, %113 ], [ 32768, %102 ]
  %117 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %118 = bitcast %union.anon.7* %117 to i32*
  %119 = load i32, i32* %118, align 8, !tbaa !22
  %120 = shl nuw nsw i32 %107, 7
  %121 = shl nuw i32 %110, 16
  %122 = shl i32 %119, 24
  %123 = or i32 %120, %121
  %124 = or i32 %123, %116
  %125 = or i32 %124, %122
  %126 = or i32 %125, 15
  %127 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %128 = load %struct.Proto*, %struct.Proto** %127, align 8, !tbaa !13
  %129 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %130 = load %struct.LexState*, %struct.LexState** %129, align 8, !tbaa !17
  %131 = getelementptr inbounds %struct.LexState, %struct.LexState* %130, i64 0, i32 6
  %132 = load %struct.lua_State*, %struct.lua_State** %131, align 8, !tbaa !18
  %133 = getelementptr inbounds %struct.Proto, %struct.Proto* %128, i64 0, i32 16
  %134 = bitcast i32** %133 to i8**
  %135 = load i8*, i8** %134, align 8, !tbaa !14
  %136 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %137 = load i32, i32* %136, align 8, !tbaa !9
  %138 = getelementptr inbounds %struct.Proto, %struct.Proto* %128, i64 0, i32 8
  %139 = tail call i8* @luaM_growaux_(%struct.lua_State* %132, i8* %135, i32 %137, i32* nonnull %138, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %140 = bitcast i8* %139 to i32*
  store i8* %139, i8** %134, align 8, !tbaa !14
  %141 = load i32, i32* %136, align 8, !tbaa !9
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %136, align 8, !tbaa !9
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  store i32 %126, i32* %144, align 4, !tbaa !16
  %145 = load %struct.LexState*, %struct.LexState** %129, align 8, !tbaa !17
  %146 = getelementptr inbounds %struct.LexState, %struct.LexState* %145, i64 0, i32 2
  %147 = load i32, i32* %146, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %128, i32 %147) #8
  br label %240

; <label>:148:                                    ; preds = %3
  %149 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %150 = bitcast %union.anon.7* %149 to %struct.anon.8*
  %151 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %150, i64 0, i32 1
  %152 = load i8, i8* %151, align 2, !tbaa !22
  %153 = zext i8 %152 to i32
  %154 = bitcast %union.anon.7* %149 to i16*
  %155 = load i16, i16* %154, align 8, !tbaa !22
  %156 = zext i16 %155 to i32
  %157 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %161

; <label>:159:                                    ; preds = %148
  %160 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  br label %161

; <label>:161:                                    ; preds = %148, %159
  %162 = phi i32 [ 0, %159 ], [ 32768, %148 ]
  %163 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %164 = bitcast %union.anon.7* %163 to i32*
  %165 = load i32, i32* %164, align 8, !tbaa !22
  %166 = shl nuw nsw i32 %153, 7
  %167 = shl nuw i32 %156, 16
  %168 = shl i32 %165, 24
  %169 = or i32 %166, %167
  %170 = or i32 %169, %162
  %171 = or i32 %170, %168
  %172 = or i32 %171, 16
  %173 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %174 = load %struct.Proto*, %struct.Proto** %173, align 8, !tbaa !13
  %175 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %176 = load %struct.LexState*, %struct.LexState** %175, align 8, !tbaa !17
  %177 = getelementptr inbounds %struct.LexState, %struct.LexState* %176, i64 0, i32 6
  %178 = load %struct.lua_State*, %struct.lua_State** %177, align 8, !tbaa !18
  %179 = getelementptr inbounds %struct.Proto, %struct.Proto* %174, i64 0, i32 16
  %180 = bitcast i32** %179 to i8**
  %181 = load i8*, i8** %180, align 8, !tbaa !14
  %182 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %183 = load i32, i32* %182, align 8, !tbaa !9
  %184 = getelementptr inbounds %struct.Proto, %struct.Proto* %174, i64 0, i32 8
  %185 = tail call i8* @luaM_growaux_(%struct.lua_State* %178, i8* %181, i32 %183, i32* nonnull %184, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %186 = bitcast i8* %185 to i32*
  store i8* %185, i8** %180, align 8, !tbaa !14
  %187 = load i32, i32* %182, align 8, !tbaa !9
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %182, align 8, !tbaa !9
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  store i32 %172, i32* %190, align 4, !tbaa !16
  %191 = load %struct.LexState*, %struct.LexState** %175, align 8, !tbaa !17
  %192 = getelementptr inbounds %struct.LexState, %struct.LexState* %191, i64 0, i32 2
  %193 = load i32, i32* %192, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %174, i32 %193) #8
  br label %240

; <label>:194:                                    ; preds = %3
  %195 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %196 = bitcast %union.anon.7* %195 to %struct.anon.8*
  %197 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %196, i64 0, i32 1
  %198 = load i8, i8* %197, align 2, !tbaa !22
  %199 = zext i8 %198 to i32
  %200 = bitcast %union.anon.7* %195 to i16*
  %201 = load i16, i16* %200, align 8, !tbaa !22
  %202 = zext i16 %201 to i32
  %203 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %207

; <label>:205:                                    ; preds = %194
  %206 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  br label %207

; <label>:207:                                    ; preds = %194, %205
  %208 = phi i32 [ 0, %205 ], [ 32768, %194 ]
  %209 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %210 = bitcast %union.anon.7* %209 to i32*
  %211 = load i32, i32* %210, align 8, !tbaa !22
  %212 = shl nuw nsw i32 %199, 7
  %213 = shl nuw i32 %202, 16
  %214 = shl i32 %211, 24
  %215 = or i32 %212, %213
  %216 = or i32 %215, %208
  %217 = or i32 %216, %214
  %218 = or i32 %217, 14
  %219 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %220 = load %struct.Proto*, %struct.Proto** %219, align 8, !tbaa !13
  %221 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %222 = load %struct.LexState*, %struct.LexState** %221, align 8, !tbaa !17
  %223 = getelementptr inbounds %struct.LexState, %struct.LexState* %222, i64 0, i32 6
  %224 = load %struct.lua_State*, %struct.lua_State** %223, align 8, !tbaa !18
  %225 = getelementptr inbounds %struct.Proto, %struct.Proto* %220, i64 0, i32 16
  %226 = bitcast i32** %225 to i8**
  %227 = load i8*, i8** %226, align 8, !tbaa !14
  %228 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %229 = load i32, i32* %228, align 8, !tbaa !9
  %230 = getelementptr inbounds %struct.Proto, %struct.Proto* %220, i64 0, i32 8
  %231 = tail call i8* @luaM_growaux_(%struct.lua_State* %224, i8* %227, i32 %229, i32* nonnull %230, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %232 = bitcast i8* %231 to i32*
  store i8* %231, i8** %226, align 8, !tbaa !14
  %233 = load i32, i32* %228, align 8, !tbaa !9
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %228, align 8, !tbaa !9
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  store i32 %218, i32* %236, align 4, !tbaa !16
  %237 = load %struct.LexState*, %struct.LexState** %221, align 8, !tbaa !17
  %238 = getelementptr inbounds %struct.LexState, %struct.LexState* %237, i64 0, i32 2
  %239 = load i32, i32* %238, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %220, i32 %239) #8
  br label %240

; <label>:240:                                    ; preds = %3, %207, %161, %115, %69, %26
  %241 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %242 = load i32, i32* %241, align 8, !tbaa !36
  %243 = icmp eq i32 %242, 7
  br i1 %243, label %244, label %256

; <label>:244:                                    ; preds = %240
  %245 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %246 = bitcast %union.anon.7* %245 to i32*
  %247 = load i32, i32* %246, align 8, !tbaa !22
  %248 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %249 = load i8, i8* %248, align 2, !tbaa !38
  %250 = zext i8 %249 to i32
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %256, label %252

; <label>:252:                                    ; preds = %244
  %253 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %254 = load i8, i8* %253, align 4, !tbaa !20
  %255 = add i8 %254, -1
  store i8 %255, i8* %253, align 4, !tbaa !20
  br label %256

; <label>:256:                                    ; preds = %252, %244, %240, %22
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_self(%struct.FuncState*, %struct.expdesc* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %4 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %1)
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %6 = bitcast %union.anon.7* %5 to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !36
  %10 = icmp eq i32 %9, 7
  br i1 %10, label %11, label %20

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %13 = load i8, i8* %12, align 2, !tbaa !38
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
  store i32 7, i32* %8, align 8, !tbaa !36
  %24 = load i8, i8* %21, align 4, !tbaa !20
  %25 = zext i8 %24 to i32
  %26 = add nuw nsw i32 %25, 2
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %28 = load %struct.Proto*, %struct.Proto** %27, align 8, !tbaa !13
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i64 0, i32 5
  %30 = load i8, i8* %29, align 4, !tbaa !21
  %31 = zext i8 %30 to i32
  %32 = icmp ugt i32 %26, %31
  br i1 %32, label %33, label %40

; <label>:33:                                     ; preds = %20
  %34 = icmp ugt i32 %26, 254
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %33
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %37 = load %struct.LexState*, %struct.LexState** %36, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #7
  unreachable

; <label>:38:                                     ; preds = %33
  %39 = trunc i32 %26 to i8
  store i8 %39, i8* %29, align 4, !tbaa !21
  br label %40

; <label>:40:                                     ; preds = %20, %38
  %41 = add i8 %24, 2
  store i8 %41, i8* %21, align 4, !tbaa !20
  %42 = load i32, i32* %6, align 8, !tbaa !22
  %43 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* nonnull %0, %struct.expdesc* %2) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %40
  %46 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* nonnull %0, %struct.expdesc* %2) #8
  br label %47

; <label>:47:                                     ; preds = %40, %45
  %48 = phi i32 [ 0, %45 ], [ 32768, %40 ]
  %49 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %50 = bitcast %union.anon.7* %49 to i32*
  %51 = load i32, i32* %50, align 8, !tbaa !22
  %52 = shl i32 %42, 7
  %53 = shl i32 %7, 16
  %54 = shl i32 %51, 24
  %55 = or i32 %53, %52
  %56 = or i32 %55, %48
  %57 = or i32 %56, %54
  %58 = or i32 %57, 18
  %59 = load %struct.Proto*, %struct.Proto** %27, align 8, !tbaa !13
  %60 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %61 = load %struct.LexState*, %struct.LexState** %60, align 8, !tbaa !17
  %62 = getelementptr inbounds %struct.LexState, %struct.LexState* %61, i64 0, i32 6
  %63 = load %struct.lua_State*, %struct.lua_State** %62, align 8, !tbaa !18
  %64 = getelementptr inbounds %struct.Proto, %struct.Proto* %59, i64 0, i32 16
  %65 = bitcast i32** %64 to i8**
  %66 = load i8*, i8** %65, align 8, !tbaa !14
  %67 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %68 = load i32, i32* %67, align 8, !tbaa !9
  %69 = getelementptr inbounds %struct.Proto, %struct.Proto* %59, i64 0, i32 8
  %70 = tail call i8* @luaM_growaux_(%struct.lua_State* %63, i8* %66, i32 %68, i32* nonnull %69, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %71 = bitcast i8* %70 to i32*
  store i8* %70, i8** %65, align 8, !tbaa !14
  %72 = load i32, i32* %67, align 8, !tbaa !9
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %67, align 8, !tbaa !9
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %58, i32* %75, align 4, !tbaa !16
  %76 = load %struct.LexState*, %struct.LexState** %60, align 8, !tbaa !17
  %77 = getelementptr inbounds %struct.LexState, %struct.LexState* %76, i64 0, i32 2
  %78 = load i32, i32* %77, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %59, i32 %78) #8
  %79 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %80 = load i32, i32* %79, align 8, !tbaa !36
  %81 = icmp eq i32 %80, 7
  br i1 %81, label %82, label %91

; <label>:82:                                     ; preds = %47
  %83 = load i32, i32* %50, align 8, !tbaa !22
  %84 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %85 = load i8, i8* %84, align 2, !tbaa !38
  %86 = zext i8 %85 to i32
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %91, label %88

; <label>:88:                                     ; preds = %82
  %89 = load i8, i8* %21, align 4, !tbaa !20
  %90 = add i8 %89, -1
  store i8 %90, i8* %21, align 4, !tbaa !20
  br label %91

; <label>:91:                                     ; preds = %47, %82, %88
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_goiftrue(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !36
  switch i32 %4, label %32 [
    i32 14, label %5
    i32 4, label %73
    i32 5, label %73
    i32 6, label %73
    i32 2, label %73
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
  %33 = tail call fastcc i32 @jumponcond(%struct.FuncState* %0, %struct.expdesc* nonnull %1, i32 0)
  br label %34

; <label>:34:                                     ; preds = %32, %27
  %35 = phi i32 [ %33, %32 ], [ %31, %27 ]
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %37 = icmp eq i32 %35, -1
  br i1 %37, label %73, label %38

; <label>:38:                                     ; preds = %34
  %39 = load i32, i32* %36, align 4, !tbaa !16
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  store i32 %35, i32* %36, align 4, !tbaa !16
  br label %73

; <label>:42:                                     ; preds = %38
  %43 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %44 = load %struct.Proto*, %struct.Proto** %43, align 8, !tbaa !13
  %45 = getelementptr inbounds %struct.Proto, %struct.Proto* %44, i64 0, i32 16
  %46 = load i32*, i32** %45, align 8, !tbaa !14
  br label %47

; <label>:47:                                     ; preds = %47, %42
  %48 = phi i32 [ %39, %42 ], [ %57, %47 ]
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4, !tbaa !16
  %52 = lshr i32 %51, 7
  %53 = add nsw i32 %52, -16777215
  %54 = icmp eq i32 %53, -1
  %55 = add nsw i32 %48, 1
  %56 = add nsw i32 %55, %53
  %57 = select i1 %54, i32 -1, i32 %56
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %47

; <label>:59:                                     ; preds = %47
  %60 = xor i32 %48, -1
  %61 = add i32 %35, %60
  %62 = add i32 %61, 16777215
  %63 = icmp ult i32 %62, 33554432
  br i1 %63, label %67, label %64

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %66 = load %struct.LexState*, %struct.LexState** %65, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable

; <label>:67:                                     ; preds = %59
  %68 = getelementptr inbounds i32, i32* %46, i64 %49
  %69 = and i32 %51, 127
  %70 = shl i32 %61, 7
  %71 = add i32 %70, 2147483520
  %72 = or i32 %71, %69
  store i32 %72, i32* %68, align 4, !tbaa !16
  br label %73

; <label>:73:                                     ; preds = %2, %2, %2, %2, %34, %41, %67
  %74 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %75 = load i32, i32* %74, align 8, !tbaa !39
  %76 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %77 = load i32, i32* %76, align 8, !tbaa !9
  %78 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %77, i32* %78, align 4, !tbaa !12
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %75, i32 %77, i32 255, i32 %77) #8
  store i32 -1, i32* %74, align 8, !tbaa !39
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @jumponcond(%struct.FuncState*, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !36
  switch i32 %5, label %84 [
    i32 15, label %6
    i32 7, label %107
  ]

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 16
  %10 = load i32*, i32** %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %12 = bitcast %union.anon.7* %11 to i32*
  %13 = load i32, i32* %12, align 8, !tbaa !22
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %10, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !16
  %17 = and i32 %16, 127
  %18 = icmp eq i32 %17, 52
  %19 = bitcast i32* %10 to i8*
  br i1 %18, label %20, label %84

; <label>:20:                                     ; preds = %6
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %22 = load i32, i32* %21, align 8, !tbaa !9
  %23 = add nsw i32 %22, -1
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 19
  %25 = load i8*, i8** %24, align 8, !tbaa !41
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !22
  %29 = icmp eq i8 %28, -128
  br i1 %29, label %38, label %30

; <label>:30:                                     ; preds = %20
  %31 = sext i8 %28 to i32
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %33 = load i32, i32* %32, align 8, !tbaa !42
  %34 = sub nsw i32 %33, %31
  store i32 %34, i32* %32, align 8, !tbaa !42
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  %36 = load i8, i8* %35, align 1, !tbaa !43
  %37 = add i8 %36, -1
  store i8 %37, i8* %35, align 1, !tbaa !43
  br label %43

; <label>:38:                                     ; preds = %20
  %39 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %40 = load i32, i32* %39, align 4, !tbaa !44
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4, !tbaa !44
  %42 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  store i8 121, i8* %42, align 1, !tbaa !43
  br label %43

; <label>:43:                                     ; preds = %38, %30
  store i32 %23, i32* %21, align 8, !tbaa !9
  %44 = icmp eq i32 %2, 0
  %45 = zext i1 %44 to i32
  %46 = lshr i32 %16, 9
  %47 = and i32 %46, 32640
  %48 = shl nuw nsw i32 %45, 15
  %49 = or i32 %48, %47
  %50 = or i32 %49, 67
  %51 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %52 = load %struct.LexState*, %struct.LexState** %51, align 8, !tbaa !17
  %53 = getelementptr inbounds %struct.LexState, %struct.LexState* %52, i64 0, i32 6
  %54 = load %struct.lua_State*, %struct.lua_State** %53, align 8, !tbaa !18
  %55 = bitcast i32** %9 to i8**
  %56 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 8
  %57 = tail call i8* @luaM_growaux_(%struct.lua_State* %54, i8* %19, i32 %23, i32* nonnull %56, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %58 = bitcast i8* %57 to i32*
  store i8* %57, i8** %55, align 8, !tbaa !14
  %59 = load i32, i32* %21, align 8, !tbaa !9
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %21, align 8, !tbaa !9
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %50, i32* %62, align 4, !tbaa !16
  %63 = load %struct.LexState*, %struct.LexState** %51, align 8, !tbaa !17
  %64 = getelementptr inbounds %struct.LexState, %struct.LexState* %63, i64 0, i32 2
  %65 = load i32, i32* %64, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* nonnull %8, i32 %65) #8
  %66 = load %struct.Proto*, %struct.Proto** %7, align 8, !tbaa !13
  %67 = load %struct.LexState*, %struct.LexState** %51, align 8, !tbaa !17
  %68 = getelementptr inbounds %struct.LexState, %struct.LexState* %67, i64 0, i32 6
  %69 = load %struct.lua_State*, %struct.lua_State** %68, align 8, !tbaa !18
  %70 = getelementptr inbounds %struct.Proto, %struct.Proto* %66, i64 0, i32 16
  %71 = bitcast i32** %70 to i8**
  %72 = load i8*, i8** %71, align 8, !tbaa !14
  %73 = load i32, i32* %21, align 8, !tbaa !9
  %74 = getelementptr inbounds %struct.Proto, %struct.Proto* %66, i64 0, i32 8
  %75 = tail call i8* @luaM_growaux_(%struct.lua_State* %69, i8* %72, i32 %73, i32* nonnull %74, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %76 = bitcast i8* %75 to i32*
  store i8* %75, i8** %71, align 8, !tbaa !14
  %77 = load i32, i32* %21, align 8, !tbaa !9
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %21, align 8, !tbaa !9
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 2147483449, i32* %80, align 4, !tbaa !16
  %81 = load %struct.LexState*, %struct.LexState** %51, align 8, !tbaa !17
  %82 = getelementptr inbounds %struct.LexState, %struct.LexState* %81, i64 0, i32 2
  %83 = load i32, i32* %82, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %66, i32 %83) #8
  br label %165

; <label>:84:                                     ; preds = %3, %6
  %85 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %86 = load i8, i8* %85, align 4, !tbaa !20
  %87 = add i8 %86, 1
  %88 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %89 = load %struct.Proto*, %struct.Proto** %88, align 8, !tbaa !13
  %90 = getelementptr inbounds %struct.Proto, %struct.Proto* %89, i64 0, i32 5
  %91 = load i8, i8* %90, align 4, !tbaa !21
  %92 = icmp ult i8 %86, %91
  br i1 %92, label %99, label %93

; <label>:93:                                     ; preds = %84
  %94 = icmp ugt i8 %86, -3
  br i1 %94, label %95, label %98

; <label>:95:                                     ; preds = %93
  %96 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %97 = load %struct.LexState*, %struct.LexState** %96, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %97, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #7
  unreachable

; <label>:98:                                     ; preds = %93
  store i8 %87, i8* %90, align 4, !tbaa !21
  br label %99

; <label>:99:                                     ; preds = %84, %98
  store i8 %87, i8* %85, align 4, !tbaa !20
  %100 = zext i8 %87 to i32
  %101 = add nsw i32 %100, -1
  tail call fastcc void @discharge2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %101) #8
  %102 = load i32, i32* %4, align 8, !tbaa !36
  %103 = icmp eq i32 %102, 7
  br i1 %103, label %107, label %104

; <label>:104:                                    ; preds = %99
  %105 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %106 = bitcast %union.anon.7* %105 to i32*
  br label %119

; <label>:107:                                    ; preds = %3, %99
  %108 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %109 = bitcast %union.anon.7* %108 to i32*
  %110 = load i32, i32* %109, align 8, !tbaa !22
  %111 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %112 = load i8, i8* %111, align 2, !tbaa !38
  %113 = zext i8 %112 to i32
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %119, label %115

; <label>:115:                                    ; preds = %107
  %116 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %117 = load i8, i8* %116, align 4, !tbaa !20
  %118 = add i8 %117, -1
  store i8 %118, i8* %116, align 4, !tbaa !20
  br label %119

; <label>:119:                                    ; preds = %104, %107, %115
  %120 = phi i32* [ %106, %104 ], [ %109, %107 ], [ %109, %115 ]
  %121 = load i32, i32* %120, align 8, !tbaa !22
  %122 = shl i32 %121, 16
  %123 = shl i32 %2, 15
  %124 = or i32 %123, %122
  %125 = or i32 %124, 32708
  %126 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %127 = load %struct.Proto*, %struct.Proto** %126, align 8, !tbaa !13
  %128 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %129 = load %struct.LexState*, %struct.LexState** %128, align 8, !tbaa !17
  %130 = getelementptr inbounds %struct.LexState, %struct.LexState* %129, i64 0, i32 6
  %131 = load %struct.lua_State*, %struct.lua_State** %130, align 8, !tbaa !18
  %132 = getelementptr inbounds %struct.Proto, %struct.Proto* %127, i64 0, i32 16
  %133 = bitcast i32** %132 to i8**
  %134 = load i8*, i8** %133, align 8, !tbaa !14
  %135 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %136 = load i32, i32* %135, align 8, !tbaa !9
  %137 = getelementptr inbounds %struct.Proto, %struct.Proto* %127, i64 0, i32 8
  %138 = tail call i8* @luaM_growaux_(%struct.lua_State* %131, i8* %134, i32 %136, i32* nonnull %137, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %139 = bitcast i8* %138 to i32*
  store i8* %138, i8** %133, align 8, !tbaa !14
  %140 = load i32, i32* %135, align 8, !tbaa !9
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %135, align 8, !tbaa !9
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  store i32 %125, i32* %143, align 4, !tbaa !16
  %144 = load %struct.LexState*, %struct.LexState** %128, align 8, !tbaa !17
  %145 = getelementptr inbounds %struct.LexState, %struct.LexState* %144, i64 0, i32 2
  %146 = load i32, i32* %145, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %127, i32 %146) #8
  %147 = load %struct.Proto*, %struct.Proto** %126, align 8, !tbaa !13
  %148 = load %struct.LexState*, %struct.LexState** %128, align 8, !tbaa !17
  %149 = getelementptr inbounds %struct.LexState, %struct.LexState* %148, i64 0, i32 6
  %150 = load %struct.lua_State*, %struct.lua_State** %149, align 8, !tbaa !18
  %151 = getelementptr inbounds %struct.Proto, %struct.Proto* %147, i64 0, i32 16
  %152 = bitcast i32** %151 to i8**
  %153 = load i8*, i8** %152, align 8, !tbaa !14
  %154 = load i32, i32* %135, align 8, !tbaa !9
  %155 = getelementptr inbounds %struct.Proto, %struct.Proto* %147, i64 0, i32 8
  %156 = tail call i8* @luaM_growaux_(%struct.lua_State* %150, i8* %153, i32 %154, i32* nonnull %155, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %157 = bitcast i8* %156 to i32*
  store i8* %156, i8** %152, align 8, !tbaa !14
  %158 = load i32, i32* %135, align 8, !tbaa !9
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %135, align 8, !tbaa !9
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  store i32 2147483449, i32* %161, align 4, !tbaa !16
  %162 = load %struct.LexState*, %struct.LexState** %128, align 8, !tbaa !17
  %163 = getelementptr inbounds %struct.LexState, %struct.LexState* %162, i64 0, i32 2
  %164 = load i32, i32* %163, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %147, i32 %164) #8
  br label %165

; <label>:165:                                    ; preds = %43, %119
  %166 = phi i32* [ %135, %119 ], [ %21, %43 ]
  %167 = load i32, i32* %166, align 8, !tbaa !9
  %168 = add nsw i32 %167, -1
  ret i32 %168
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_goiffalse(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !36
  switch i32 %4, label %9 [
    i32 14, label %5
    i32 1, label %50
    i32 3, label %50
  ]

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %7 = bitcast %union.anon.7* %6 to i32*
  %8 = load i32, i32* %7, align 8, !tbaa !22
  br label %11

; <label>:9:                                      ; preds = %2
  %10 = tail call fastcc i32 @jumponcond(%struct.FuncState* %0, %struct.expdesc* nonnull %1, i32 1)
  br label %11

; <label>:11:                                     ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ %8, %5 ]
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %14 = icmp eq i32 %12, -1
  br i1 %14, label %50, label %15

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %13, align 4, !tbaa !16
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %15
  store i32 %12, i32* %13, align 4, !tbaa !16
  br label %50

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %21 = load %struct.Proto*, %struct.Proto** %20, align 8, !tbaa !13
  %22 = getelementptr inbounds %struct.Proto, %struct.Proto* %21, i64 0, i32 16
  %23 = load i32*, i32** %22, align 8, !tbaa !14
  br label %24

; <label>:24:                                     ; preds = %24, %19
  %25 = phi i32 [ %16, %19 ], [ %34, %24 ]
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !16
  %29 = lshr i32 %28, 7
  %30 = add nsw i32 %29, -16777215
  %31 = icmp eq i32 %30, -1
  %32 = add nsw i32 %25, 1
  %33 = add nsw i32 %32, %30
  %34 = select i1 %31, i32 -1, i32 %33
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %24

; <label>:36:                                     ; preds = %24
  %37 = xor i32 %25, -1
  %38 = add i32 %12, %37
  %39 = add i32 %38, 16777215
  %40 = icmp ult i32 %39, 33554432
  br i1 %40, label %44, label %41

; <label>:41:                                     ; preds = %36
  %42 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %43 = load %struct.LexState*, %struct.LexState** %42, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable

; <label>:44:                                     ; preds = %36
  %45 = getelementptr inbounds i32, i32* %23, i64 %26
  %46 = and i32 %28, 127
  %47 = shl i32 %38, 7
  %48 = add i32 %47, 2147483520
  %49 = or i32 %48, %46
  store i32 %49, i32* %45, align 4, !tbaa !16
  br label %50

; <label>:50:                                     ; preds = %2, %2, %11, %18, %44
  %51 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %52 = load i32, i32* %51, align 4, !tbaa !40
  %53 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %54 = load i32, i32* %53, align 8, !tbaa !9
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %54, i32* %55, align 4, !tbaa !12
  tail call fastcc void @patchlistaux(%struct.FuncState* %0, i32 %52, i32 %54, i32 255, i32 %54) #8
  store i32 -1, i32* %51, align 4, !tbaa !40
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define hidden i32 @luaK_isKint(%struct.expdesc* nocapture readonly) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !36
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %5, label %12

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 2
  %7 = load i32, i32* %6, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 3
  %9 = load i32, i32* %8, align 4, !tbaa !40
  %10 = icmp eq i32 %7, %9
  %11 = zext i1 %10 to i32
  br label %12

; <label>:12:                                     ; preds = %5, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %5 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_indexed(%struct.FuncState*, %struct.expdesc* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !36
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
  %16 = load i32, i32* %15, align 8, !tbaa !36
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %45

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %20 = load i32, i32* %19, align 8, !tbaa !39
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %22 = load i32, i32* %21, align 4, !tbaa !40
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
  %46 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1)
  %47 = load i32, i32* %4, align 8, !tbaa !36
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
  %64 = load i32, i32* %63, align 8, !tbaa !36
  switch i32 %64, label %99 [
    i32 4, label %65
    i32 6, label %87
  ]

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %67 = load i32, i32* %66, align 8, !tbaa !39
  %68 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %69 = load i32, i32* %68, align 4, !tbaa !40
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
  %89 = load i32, i32* %88, align 8, !tbaa !39
  %90 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %91 = load i32, i32* %90, align 4, !tbaa !40
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
  %100 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2)
  %101 = trunc i32 %100 to i16
  br label %102

; <label>:102:                                    ; preds = %85, %99, %97, %55
  %103 = phi %union.anon.7* [ %62, %85 ], [ %62, %99 ], [ %62, %97 ], [ %56, %55 ]
  %104 = phi i16 [ %86, %85 ], [ %101, %99 ], [ %98, %97 ], [ %60, %55 ]
  %105 = phi i32 [ 13, %85 ], [ 10, %99 ], [ 12, %97 ], [ 11, %55 ]
  %106 = bitcast %union.anon.7* %103 to i16*
  store i16 %104, i16* %106, align 8, !tbaa !22
  store i32 %105, i32* %4, align 8, !tbaa !36
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_prefix(%struct.FuncState*, i32, %struct.expdesc* nocapture, i32) local_unnamed_addr #2 {
  switch i32 %1, label %263 [
    i32 0, label %5
    i32 1, label %5
    i32 3, label %9
    i32 2, label %76
  ]

; <label>:5:                                      ; preds = %4, %4
  %6 = add i32 %1, 12
  %7 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %6, %struct.expdesc* %2, %struct.expdesc* nonnull @luaK_prefix.ef)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %263

; <label>:9:                                      ; preds = %5, %4
  %10 = add i32 %1, 50
  %11 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !36
  %14 = icmp eq i32 %13, 7
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %16 = bitcast %union.anon.7* %15 to i32*
  br i1 %14, label %17, label %27

; <label>:17:                                     ; preds = %9
  %18 = load i32, i32* %16, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %20 = load i8, i8* %19, align 2, !tbaa !38
  %21 = zext i8 %20 to i32
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %25 = load i8, i8* %24, align 4, !tbaa !20
  %26 = add i8 %25, -1
  store i8 %26, i8* %24, align 4, !tbaa !20
  br label %27

; <label>:27:                                     ; preds = %23, %17, %9
  %28 = shl i32 %11, 16
  %29 = or i32 %28, %10
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %31 = load %struct.Proto*, %struct.Proto** %30, align 8, !tbaa !13
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %33 = load %struct.LexState*, %struct.LexState** %32, align 8, !tbaa !17
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %33, i64 0, i32 6
  %35 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !18
  %36 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 16
  %37 = bitcast i32** %36 to i8**
  %38 = load i8*, i8** %37, align 8, !tbaa !14
  %39 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %40 = load i32, i32* %39, align 8, !tbaa !9
  %41 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 8
  %42 = tail call i8* @luaM_growaux_(%struct.lua_State* %35, i8* %38, i32 %40, i32* nonnull %41, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %43 = bitcast i8* %42 to i32*
  store i8* %42, i8** %37, align 8, !tbaa !14
  %44 = load i32, i32* %39, align 8, !tbaa !9
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %39, align 8, !tbaa !9
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %29, i32* %47, align 4, !tbaa !16
  %48 = load %struct.LexState*, %struct.LexState** %32, align 8, !tbaa !17
  %49 = getelementptr inbounds %struct.LexState, %struct.LexState* %48, i64 0, i32 2
  %50 = load i32, i32* %49, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %31, i32 %50) #8
  %51 = load i32, i32* %39, align 8, !tbaa !9
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %16, align 8, !tbaa !22
  store i32 15, i32* %12, align 8, !tbaa !36
  %53 = load %struct.Proto*, %struct.Proto** %30, align 8, !tbaa !13
  %54 = load i32, i32* %39, align 8, !tbaa !9
  %55 = add nsw i32 %54, -1
  %56 = getelementptr inbounds %struct.Proto, %struct.Proto* %53, i64 0, i32 19
  %57 = load i8*, i8** %56, align 8, !tbaa !41
  %58 = sext i32 %55 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1, !tbaa !22
  %61 = icmp eq i8 %60, -128
  br i1 %61, label %70, label %62

; <label>:62:                                     ; preds = %27
  %63 = sext i8 %60 to i32
  %64 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %65 = load i32, i32* %64, align 8, !tbaa !42
  %66 = sub nsw i32 %65, %63
  store i32 %66, i32* %64, align 8, !tbaa !42
  %67 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  %68 = load i8, i8* %67, align 1, !tbaa !43
  %69 = add i8 %68, -1
  store i8 %69, i8* %67, align 1, !tbaa !43
  br label %75

; <label>:70:                                     ; preds = %27
  %71 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %72 = load i32, i32* %71, align 4, !tbaa !44
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 4, !tbaa !44
  %74 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  store i8 121, i8* %74, align 1, !tbaa !43
  br label %75

; <label>:75:                                     ; preds = %62, %70
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %53, i32 %3) #8
  br label %263

; <label>:76:                                     ; preds = %4
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %77 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %78 = load i32, i32* %77, align 8, !tbaa !36
  switch i32 %78, label %170 [
    i32 1, label %79
    i32 3, label %79
    i32 4, label %80
    i32 5, label %80
    i32 6, label %80
    i32 2, label %80
    i32 14, label %81
    i32 7, label %130
    i32 15, label %107
  ]

; <label>:79:                                     ; preds = %76, %76
  store i32 2, i32* %77, align 8, !tbaa !36
  br label %170

; <label>:80:                                     ; preds = %76, %76, %76, %76
  store i32 3, i32* %77, align 8, !tbaa !36
  br label %170

; <label>:81:                                     ; preds = %76
  %82 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %83 = bitcast %union.anon.7* %82 to i32*
  %84 = load i32, i32* %83, align 8, !tbaa !22
  %85 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %86 = load %struct.Proto*, %struct.Proto** %85, align 8, !tbaa !13
  %87 = getelementptr inbounds %struct.Proto, %struct.Proto* %86, i64 0, i32 16
  %88 = load i32*, i32** %87, align 8, !tbaa !14
  %89 = sext i32 %84 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = icmp sgt i32 %84, 0
  br i1 %91, label %92, label %101

; <label>:92:                                     ; preds = %81
  %93 = getelementptr inbounds i32, i32* %90, i64 -1
  %94 = load i32, i32* %93, align 4, !tbaa !16
  %95 = and i32 %94, 127
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %96
  %98 = load i8, i8* %97, align 1, !tbaa !22
  %99 = and i8 %98, 16
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %103

; <label>:101:                                    ; preds = %92, %81
  %102 = load i32, i32* %90, align 4, !tbaa !16
  br label %103

; <label>:103:                                    ; preds = %101, %92
  %104 = phi i32 [ %102, %101 ], [ %94, %92 ]
  %105 = phi i32* [ %90, %101 ], [ %93, %92 ]
  %106 = xor i32 %104, 32768
  store i32 %106, i32* %105, align 4, !tbaa !16
  br label %170

; <label>:107:                                    ; preds = %76
  %108 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %109 = load i8, i8* %108, align 4, !tbaa !20
  %110 = add i8 %109, 1
  %111 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %112 = load %struct.Proto*, %struct.Proto** %111, align 8, !tbaa !13
  %113 = getelementptr inbounds %struct.Proto, %struct.Proto* %112, i64 0, i32 5
  %114 = load i8, i8* %113, align 4, !tbaa !21
  %115 = icmp ult i8 %109, %114
  br i1 %115, label %122, label %116

; <label>:116:                                    ; preds = %107
  %117 = icmp ugt i8 %109, -3
  br i1 %117, label %118, label %121

; <label>:118:                                    ; preds = %116
  %119 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %120 = load %struct.LexState*, %struct.LexState** %119, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %120, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #7
  unreachable

; <label>:121:                                    ; preds = %116
  store i8 %110, i8* %113, align 4, !tbaa !21
  br label %122

; <label>:122:                                    ; preds = %121, %107
  store i8 %110, i8* %108, align 4, !tbaa !20
  %123 = zext i8 %110 to i32
  %124 = add nsw i32 %123, -1
  tail call fastcc void @discharge2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %124) #8
  %125 = load i32, i32* %77, align 8, !tbaa !36
  %126 = icmp eq i32 %125, 7
  br i1 %126, label %130, label %127

; <label>:127:                                    ; preds = %122
  %128 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %129 = bitcast %union.anon.7* %128 to i32*
  br label %142

; <label>:130:                                    ; preds = %122, %76
  %131 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %132 = bitcast %union.anon.7* %131 to i32*
  %133 = load i32, i32* %132, align 8, !tbaa !22
  %134 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %135 = load i8, i8* %134, align 2, !tbaa !38
  %136 = zext i8 %135 to i32
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %142, label %138

; <label>:138:                                    ; preds = %130
  %139 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %140 = load i8, i8* %139, align 4, !tbaa !20
  %141 = add i8 %140, -1
  store i8 %141, i8* %139, align 4, !tbaa !20
  br label %142

; <label>:142:                                    ; preds = %138, %130, %127
  %143 = phi i32* [ %129, %127 ], [ %132, %130 ], [ %132, %138 ]
  %144 = load i32, i32* %143, align 8, !tbaa !22
  %145 = shl i32 %144, 16
  %146 = or i32 %145, 52
  %147 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %148 = load %struct.Proto*, %struct.Proto** %147, align 8, !tbaa !13
  %149 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %150 = load %struct.LexState*, %struct.LexState** %149, align 8, !tbaa !17
  %151 = getelementptr inbounds %struct.LexState, %struct.LexState* %150, i64 0, i32 6
  %152 = load %struct.lua_State*, %struct.lua_State** %151, align 8, !tbaa !18
  %153 = getelementptr inbounds %struct.Proto, %struct.Proto* %148, i64 0, i32 16
  %154 = bitcast i32** %153 to i8**
  %155 = load i8*, i8** %154, align 8, !tbaa !14
  %156 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %157 = load i32, i32* %156, align 8, !tbaa !9
  %158 = getelementptr inbounds %struct.Proto, %struct.Proto* %148, i64 0, i32 8
  %159 = tail call i8* @luaM_growaux_(%struct.lua_State* %152, i8* %155, i32 %157, i32* nonnull %158, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %160 = bitcast i8* %159 to i32*
  store i8* %159, i8** %154, align 8, !tbaa !14
  %161 = load i32, i32* %156, align 8, !tbaa !9
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %156, align 8, !tbaa !9
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  store i32 %146, i32* %164, align 4, !tbaa !16
  %165 = load %struct.LexState*, %struct.LexState** %149, align 8, !tbaa !17
  %166 = getelementptr inbounds %struct.LexState, %struct.LexState* %165, i64 0, i32 2
  %167 = load i32, i32* %166, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %148, i32 %167) #8
  %168 = load i32, i32* %156, align 8, !tbaa !9
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %143, align 8, !tbaa !22
  store i32 15, i32* %77, align 8, !tbaa !36
  br label %170

; <label>:170:                                    ; preds = %142, %103, %80, %79, %76
  %171 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %172 = load i32, i32* %171, align 4, !tbaa !40
  %173 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %174 = load i32, i32* %173, align 8, !tbaa !39
  store i32 %174, i32* %171, align 4, !tbaa !40
  store i32 %172, i32* %173, align 8, !tbaa !39
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %219, label %176

; <label>:176:                                    ; preds = %170
  %177 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %178 = load %struct.Proto*, %struct.Proto** %177, align 8, !tbaa !13
  %179 = getelementptr inbounds %struct.Proto, %struct.Proto* %178, i64 0, i32 16
  %180 = load i32*, i32** %179, align 8, !tbaa !14
  br label %181

; <label>:181:                                    ; preds = %208, %176
  %182 = phi i32 [ %174, %176 ], [ %215, %208 ]
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = icmp sgt i32 %182, 0
  br i1 %185, label %186, label %195

; <label>:186:                                    ; preds = %181
  %187 = getelementptr inbounds i32, i32* %184, i64 -1
  %188 = load i32, i32* %187, align 4, !tbaa !16
  %189 = and i32 %188, 127
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %190
  %192 = load i8, i8* %191, align 1, !tbaa !22
  %193 = and i8 %192, 16
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %197

; <label>:195:                                    ; preds = %186, %181
  %196 = load i32, i32* %184, align 4, !tbaa !16
  br label %197

; <label>:197:                                    ; preds = %195, %186
  %198 = phi i32 [ %196, %195 ], [ %188, %186 ]
  %199 = phi i32* [ %184, %195 ], [ %187, %186 ]
  %200 = and i32 %198, 127
  %201 = icmp eq i32 %200, 68
  br i1 %201, label %202, label %208

; <label>:202:                                    ; preds = %197
  %203 = lshr i32 %198, 9
  %204 = and i32 %203, 32640
  %205 = and i32 %198, 32768
  %206 = or i32 %205, %204
  %207 = or i32 %206, 67
  store i32 %207, i32* %199, align 4, !tbaa !16
  br label %208

; <label>:208:                                    ; preds = %202, %197
  %209 = load i32, i32* %184, align 4, !tbaa !16
  %210 = lshr i32 %209, 7
  %211 = add nsw i32 %210, -16777215
  %212 = icmp eq i32 %211, -1
  %213 = add nsw i32 %182, 1
  %214 = add nsw i32 %213, %211
  %215 = select i1 %212, i32 -1, i32 %214
  %216 = icmp eq i32 %215, -1
  br i1 %216, label %217, label %181

; <label>:217:                                    ; preds = %208
  %218 = load i32, i32* %173, align 8, !tbaa !39
  br label %219

; <label>:219:                                    ; preds = %217, %170
  %220 = phi i32 [ %218, %217 ], [ %172, %170 ]
  %221 = icmp eq i32 %220, -1
  br i1 %221, label %263, label %222

; <label>:222:                                    ; preds = %219
  %223 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %224 = load %struct.Proto*, %struct.Proto** %223, align 8, !tbaa !13
  %225 = getelementptr inbounds %struct.Proto, %struct.Proto* %224, i64 0, i32 16
  %226 = load i32*, i32** %225, align 8, !tbaa !14
  br label %227

; <label>:227:                                    ; preds = %254, %222
  %228 = phi i32 [ %220, %222 ], [ %261, %254 ]
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %226, i64 %229
  %231 = icmp sgt i32 %228, 0
  br i1 %231, label %232, label %241

; <label>:232:                                    ; preds = %227
  %233 = getelementptr inbounds i32, i32* %230, i64 -1
  %234 = load i32, i32* %233, align 4, !tbaa !16
  %235 = and i32 %234, 127
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %236
  %238 = load i8, i8* %237, align 1, !tbaa !22
  %239 = and i8 %238, 16
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %243

; <label>:241:                                    ; preds = %232, %227
  %242 = load i32, i32* %230, align 4, !tbaa !16
  br label %243

; <label>:243:                                    ; preds = %241, %232
  %244 = phi i32 [ %242, %241 ], [ %234, %232 ]
  %245 = phi i32* [ %230, %241 ], [ %233, %232 ]
  %246 = and i32 %244, 127
  %247 = icmp eq i32 %246, 68
  br i1 %247, label %248, label %254

; <label>:248:                                    ; preds = %243
  %249 = lshr i32 %244, 9
  %250 = and i32 %249, 32640
  %251 = and i32 %244, 32768
  %252 = or i32 %251, %250
  %253 = or i32 %252, 67
  store i32 %253, i32* %245, align 4, !tbaa !16
  br label %254

; <label>:254:                                    ; preds = %248, %243
  %255 = load i32, i32* %230, align 4, !tbaa !16
  %256 = lshr i32 %255, 7
  %257 = add nsw i32 %256, -16777215
  %258 = icmp eq i32 %257, -1
  %259 = add nsw i32 %228, 1
  %260 = add nsw i32 %259, %257
  %261 = select i1 %258, i32 -1, i32 %260
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %263, label %227

; <label>:263:                                    ; preds = %254, %219, %5, %4, %75
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @constfolding(%struct.FuncState* nocapture readonly, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture readonly) unnamed_addr #2 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TValue, align 8
  %7 = alloca %struct.TValue, align 8
  %8 = alloca %struct.TValue, align 8
  %9 = bitcast %struct.TValue* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #8
  %10 = bitcast %struct.TValue* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #8
  %11 = bitcast %struct.TValue* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #8
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %13 = load i32, i32* %12, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %15 = load i32, i32* %14, align 4, !tbaa !40
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %86

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %19 = load i32, i32* %18, align 8, !tbaa !36
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
  %28 = load i32, i32* %27, align 8, !tbaa !39
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %30 = load i32, i32* %29, align 4, !tbaa !40
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %86

; <label>:32:                                     ; preds = %21
  %33 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %34 = load i32, i32* %33, align 8, !tbaa !36
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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #8
  %44 = icmp eq i8 %22, 35
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  store i64 %24, i64* %5, align 8, !tbaa !45
  br label %53

; <label>:46:                                     ; preds = %42
  %47 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %6, i64* nonnull %5, i32 0) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %46
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #8
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #8
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #8
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
  store i32 6, i32* %18, align 8, !tbaa !36
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
  store i32 5, i32* %18, align 8, !tbaa !36
  %84 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %85 = bitcast %union.anon.7* %84 to double*
  store double %81, double* %85, align 8, !tbaa !22
  br label %86

; <label>:86:                                     ; preds = %63, %49, %57, %32, %21, %17, %4, %75, %83, %79
  %87 = phi i32 [ 0, %63 ], [ 0, %79 ], [ 1, %83 ], [ 1, %75 ], [ 0, %4 ], [ 0, %17 ], [ 0, %21 ], [ 0, %32 ], [ 0, %57 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #8
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_infix(%struct.FuncState*, i32, %struct.expdesc*) local_unnamed_addr #2 {
  %4 = alloca i64, align 8
  switch i32 %1, label %101 [
    i32 19, label %5
    i32 20, label %6
    i32 12, label %7
    i32 0, label %41
    i32 1, label %41
    i32 2, label %41
    i32 5, label %41
    i32 6, label %41
    i32 3, label %41
    i32 4, label %41
    i32 7, label %41
    i32 8, label %41
    i32 9, label %41
    i32 10, label %41
    i32 11, label %41
    i32 13, label %54
    i32 16, label %54
    i32 14, label %70
    i32 15, label %70
    i32 17, label %70
    i32 18, label %70
  ]

; <label>:5:                                      ; preds = %3
  tail call void @luaK_goiftrue(%struct.FuncState* %0, %struct.expdesc* %2)
  br label %101

; <label>:6:                                      ; preds = %3
  tail call void @luaK_goiffalse(%struct.FuncState* %0, %struct.expdesc* %2)
  br label %101

; <label>:7:                                      ; preds = %3
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !36
  %10 = icmp eq i32 %9, 7
  br i1 %10, label %11, label %23

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %13 = bitcast %union.anon.7* %12 to i32*
  %14 = load i32, i32* %13, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %16 = load i8, i8* %15, align 2, !tbaa !38
  %17 = zext i8 %16 to i32
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %11
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %21 = load i8, i8* %20, align 4, !tbaa !20
  %22 = add i8 %21, -1
  store i8 %22, i8* %20, align 4, !tbaa !20
  br label %23

; <label>:23:                                     ; preds = %19, %11, %7
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %25 = load i8, i8* %24, align 4, !tbaa !20
  %26 = add i8 %25, 1
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %28 = load %struct.Proto*, %struct.Proto** %27, align 8, !tbaa !13
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i64 0, i32 5
  %30 = load i8, i8* %29, align 4, !tbaa !21
  %31 = icmp ult i8 %25, %30
  br i1 %31, label %38, label %32

; <label>:32:                                     ; preds = %23
  %33 = icmp ugt i8 %25, -3
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %32
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %36 = load %struct.LexState*, %struct.LexState** %35, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #7
  unreachable

; <label>:37:                                     ; preds = %32
  store i8 %26, i8* %29, align 4, !tbaa !21
  br label %38

; <label>:38:                                     ; preds = %23, %37
  store i8 %26, i8* %24, align 4, !tbaa !20
  %39 = zext i8 %26 to i32
  %40 = add nsw i32 %39, -1
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %40) #8
  br label %101

; <label>:41:                                     ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %42 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %43 = load i32, i32* %42, align 8, !tbaa !39
  %44 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %45 = load i32, i32* %44, align 4, !tbaa !40
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %52

; <label>:47:                                     ; preds = %41
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %49 = load i32, i32* %48, align 8, !tbaa !36
  %50 = add i32 %49, -5
  %51 = icmp ult i32 %50, 2
  br i1 %51, label %101, label %52

; <label>:52:                                     ; preds = %47, %41
  %53 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2)
  br label %101

; <label>:54:                                     ; preds = %3, %3
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %56 = load i32, i32* %55, align 8, !tbaa !39
  %57 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %58 = load i32, i32* %57, align 4, !tbaa !40
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %65

; <label>:60:                                     ; preds = %54
  %61 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %62 = load i32, i32* %61, align 8, !tbaa !36
  %63 = add i32 %62, -5
  %64 = icmp ult i32 %63, 2
  br i1 %64, label %101, label %65

; <label>:65:                                     ; preds = %60, %54
  %66 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %101

; <label>:68:                                     ; preds = %65
  %69 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #8
  br label %101

; <label>:70:                                     ; preds = %3, %3, %3, %3
  %71 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %71) #8
  %72 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %73 = load i32, i32* %72, align 8, !tbaa !36
  switch i32 %73, label %98 [
    i32 6, label %74
    i32 5, label %77
  ]

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0
  %76 = load i64, i64* %75, align 8, !tbaa !22
  store i64 %76, i64* %4, align 8, !tbaa !45
  br label %87

; <label>:77:                                     ; preds = %70
  %78 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %79 = bitcast %union.anon.7* %78 to double*
  %80 = load double, double* %79, align 8, !tbaa !22
  %81 = call i32 @luaV_flttointeger(double %80, i64* nonnull %4, i32 0) #8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %98, label %83

; <label>:83:                                     ; preds = %77
  %84 = load i64, i64* %4, align 8, !tbaa !45
  %85 = add i64 %84, 65535
  %86 = icmp ugt i64 %85, 131071
  br i1 %86, label %98, label %87

; <label>:87:                                     ; preds = %83, %74
  %88 = phi i64 [ %76, %74 ], [ %84, %83 ]
  %89 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %90 = load i32, i32* %89, align 8, !tbaa !39
  %91 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %92 = load i32, i32* %91, align 4, !tbaa !40
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %98

; <label>:94:                                     ; preds = %87
  %95 = add i64 %88, 127
  %96 = icmp ugt i64 %95, 255
  br i1 %96, label %98, label %97

; <label>:97:                                     ; preds = %94
  store i64 %95, i64* %4, align 8, !tbaa !45
  br label %100

; <label>:98:                                     ; preds = %70, %83, %94, %87, %77
  %99 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2)
  br label %100

; <label>:100:                                    ; preds = %97, %98
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %71) #8
  br label %101

; <label>:101:                                    ; preds = %60, %47, %68, %65, %3, %52, %100, %38, %6, %5
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_posfix(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32) local_unnamed_addr #2 {
  %6 = alloca %struct.expdesc, align 8
  %7 = alloca %struct.expdesc, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.expdesc, align 8
  %10 = alloca %struct.expdesc, align 8
  %11 = alloca %struct.expdesc, align 8
  switch i32 %1, label %781 [
    i32 19, label %12
    i32 20, label %55
    i32 12, label %98
    i32 0, label %236
    i32 2, label %236
    i32 1, label %257
    i32 5, label %257
    i32 6, label %257
    i32 3, label %257
    i32 4, label %257
    i32 7, label %262
    i32 8, label %262
    i32 9, label %262
    i32 10, label %492
    i32 11, label %618
    i32 13, label %622
    i32 16, label %622
    i32 14, label %774
    i32 15, label %774
    i32 17, label %776
    i32 18, label %776
  ]

; <label>:12:                                     ; preds = %5
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %3)
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %15 = load i32, i32* %14, align 4, !tbaa !40
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %52, label %17

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %13, align 4, !tbaa !16
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  store i32 %15, i32* %13, align 4, !tbaa !16
  br label %52

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %23 = load %struct.Proto*, %struct.Proto** %22, align 8, !tbaa !13
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %23, i64 0, i32 16
  %25 = load i32*, i32** %24, align 8, !tbaa !14
  br label %26

; <label>:26:                                     ; preds = %26, %21
  %27 = phi i32 [ %18, %21 ], [ %36, %26 ]
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !16
  %31 = lshr i32 %30, 7
  %32 = add nsw i32 %31, -16777215
  %33 = icmp eq i32 %32, -1
  %34 = add nsw i32 %27, 1
  %35 = add nsw i32 %34, %32
  %36 = select i1 %33, i32 -1, i32 %35
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %26

; <label>:38:                                     ; preds = %26
  %39 = xor i32 %27, -1
  %40 = add i32 %15, %39
  %41 = add i32 %40, 16777215
  %42 = icmp ult i32 %41, 33554432
  br i1 %42, label %46, label %43

; <label>:43:                                     ; preds = %38
  %44 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %45 = load %struct.LexState*, %struct.LexState** %44, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable

; <label>:46:                                     ; preds = %38
  %47 = getelementptr inbounds i32, i32* %25, i64 %28
  %48 = and i32 %30, 127
  %49 = shl i32 %40, 7
  %50 = add i32 %49, 2147483520
  %51 = or i32 %50, %48
  store i32 %51, i32* %47, align 4, !tbaa !16
  br label %52

; <label>:52:                                     ; preds = %12, %20, %46
  %53 = bitcast %struct.expdesc* %2 to i8*
  %54 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 24, i32 8, i1 false), !tbaa.struct !47
  br label %781

; <label>:55:                                     ; preds = %5
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %3)
  %56 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %57 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %58 = load i32, i32* %57, align 8, !tbaa !39
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %95, label %60

; <label>:60:                                     ; preds = %55
  %61 = load i32, i32* %56, align 4, !tbaa !16
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %60
  store i32 %58, i32* %56, align 4, !tbaa !16
  br label %95

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %66 = load %struct.Proto*, %struct.Proto** %65, align 8, !tbaa !13
  %67 = getelementptr inbounds %struct.Proto, %struct.Proto* %66, i64 0, i32 16
  %68 = load i32*, i32** %67, align 8, !tbaa !14
  br label %69

; <label>:69:                                     ; preds = %69, %64
  %70 = phi i32 [ %61, %64 ], [ %79, %69 ]
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4, !tbaa !16
  %74 = lshr i32 %73, 7
  %75 = add nsw i32 %74, -16777215
  %76 = icmp eq i32 %75, -1
  %77 = add nsw i32 %70, 1
  %78 = add nsw i32 %77, %75
  %79 = select i1 %76, i32 -1, i32 %78
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %69

; <label>:81:                                     ; preds = %69
  %82 = xor i32 %70, -1
  %83 = add i32 %58, %82
  %84 = add i32 %83, 16777215
  %85 = icmp ult i32 %84, 33554432
  br i1 %85, label %89, label %86

; <label>:86:                                     ; preds = %81
  %87 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %88 = load %struct.LexState*, %struct.LexState** %87, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable

; <label>:89:                                     ; preds = %81
  %90 = getelementptr inbounds i32, i32* %68, i64 %71
  %91 = and i32 %73, 127
  %92 = shl i32 %83, 7
  %93 = add i32 %92, 2147483520
  %94 = or i32 %93, %91
  store i32 %94, i32* %90, align 4, !tbaa !16
  br label %95

; <label>:95:                                     ; preds = %55, %63, %89
  %96 = bitcast %struct.expdesc* %2 to i8*
  %97 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 24, i32 8, i1 false), !tbaa.struct !47
  br label %781

; <label>:98:                                     ; preds = %5
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %3) #8
  %99 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %100 = load i32, i32* %99, align 8, !tbaa !36
  %101 = icmp eq i32 %100, 7
  br i1 %101, label %102, label %114

; <label>:102:                                    ; preds = %98
  %103 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %104 = bitcast %union.anon.7* %103 to i32*
  %105 = load i32, i32* %104, align 8, !tbaa !22
  %106 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %107 = load i8, i8* %106, align 2, !tbaa !38
  %108 = zext i8 %107 to i32
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %114, label %110

; <label>:110:                                    ; preds = %102
  %111 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %112 = load i8, i8* %111, align 4, !tbaa !20
  %113 = add i8 %112, -1
  store i8 %113, i8* %111, align 4, !tbaa !20
  br label %114

; <label>:114:                                    ; preds = %110, %102, %98
  %115 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %116 = load i8, i8* %115, align 4, !tbaa !20
  %117 = add i8 %116, 1
  %118 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %119 = load %struct.Proto*, %struct.Proto** %118, align 8, !tbaa !13
  %120 = getelementptr inbounds %struct.Proto, %struct.Proto* %119, i64 0, i32 5
  %121 = load i8, i8* %120, align 4, !tbaa !21
  %122 = icmp ult i8 %116, %121
  br i1 %122, label %129, label %123

; <label>:123:                                    ; preds = %114
  %124 = icmp ugt i8 %116, -3
  br i1 %124, label %125, label %128

; <label>:125:                                    ; preds = %123
  %126 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %127 = load %struct.LexState*, %struct.LexState** %126, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %127, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #7
  unreachable

; <label>:128:                                    ; preds = %123
  store i8 %117, i8* %120, align 4, !tbaa !21
  br label %129

; <label>:129:                                    ; preds = %114, %128
  store i8 %117, i8* %115, align 4, !tbaa !20
  %130 = zext i8 %117 to i32
  %131 = add nsw i32 %130, -1
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %3, i32 %131) #8
  %132 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %133 = load i32, i32* %132, align 8, !tbaa !9
  %134 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  %135 = load i32, i32* %134, align 4, !tbaa !12
  %136 = icmp sgt i32 %133, %135
  br i1 %136, label %137, label %144

; <label>:137:                                    ; preds = %129
  %138 = load %struct.Proto*, %struct.Proto** %118, align 8, !tbaa !13
  %139 = getelementptr inbounds %struct.Proto, %struct.Proto* %138, i64 0, i32 16
  %140 = load i32*, i32** %139, align 8, !tbaa !14
  %141 = add nsw i32 %133, -1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  br label %144

; <label>:144:                                    ; preds = %137, %129
  %145 = phi i32* [ %143, %137 ], [ @previousinstruction.invalidinstruction, %129 ]
  %146 = load i32, i32* %145, align 4, !tbaa !16
  %147 = and i32 %146, 127
  %148 = icmp eq i32 %147, 54
  br i1 %148, label %149, label %175

; <label>:149:                                    ; preds = %144
  %150 = load i32, i32* %99, align 8, !tbaa !36
  %151 = icmp eq i32 %150, 7
  br i1 %151, label %152, label %163

; <label>:152:                                    ; preds = %149
  %153 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %154 = bitcast %union.anon.7* %153 to i32*
  %155 = load i32, i32* %154, align 8, !tbaa !22
  %156 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %157 = load i8, i8* %156, align 2, !tbaa !38
  %158 = zext i8 %157 to i32
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %163, label %160

; <label>:160:                                    ; preds = %152
  %161 = load i8, i8* %115, align 4, !tbaa !20
  %162 = add i8 %161, -1
  store i8 %162, i8* %115, align 4, !tbaa !20
  br label %163

; <label>:163:                                    ; preds = %160, %152, %149
  %164 = and i32 %146, -16744321
  %165 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %166 = bitcast %union.anon.7* %165 to i32*
  %167 = load i32, i32* %166, align 8, !tbaa !22
  %168 = shl i32 %167, 7
  %169 = and i32 %168, 32640
  %170 = and i32 %146, 16711680
  %171 = add nuw nsw i32 %170, 65536
  %172 = and i32 %171, 16711680
  %173 = or i32 %172, %164
  %174 = or i32 %173, %169
  store i32 %174, i32* %145, align 4, !tbaa !16
  br label %781

; <label>:175:                                    ; preds = %144
  %176 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %177 = bitcast %union.anon.7* %176 to i32*
  %178 = load i32, i32* %177, align 8, !tbaa !22
  %179 = shl i32 %178, 7
  %180 = or i32 %179, 131126
  %181 = load %struct.Proto*, %struct.Proto** %118, align 8, !tbaa !13
  %182 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %183 = load %struct.LexState*, %struct.LexState** %182, align 8, !tbaa !17
  %184 = getelementptr inbounds %struct.LexState, %struct.LexState* %183, i64 0, i32 6
  %185 = load %struct.lua_State*, %struct.lua_State** %184, align 8, !tbaa !18
  %186 = getelementptr inbounds %struct.Proto, %struct.Proto* %181, i64 0, i32 16
  %187 = bitcast i32** %186 to i8**
  %188 = load i8*, i8** %187, align 8, !tbaa !14
  %189 = getelementptr inbounds %struct.Proto, %struct.Proto* %181, i64 0, i32 8
  %190 = tail call i8* @luaM_growaux_(%struct.lua_State* %185, i8* %188, i32 %133, i32* nonnull %189, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %191 = bitcast i8* %190 to i32*
  store i8* %190, i8** %187, align 8, !tbaa !14
  %192 = load i32, i32* %132, align 8, !tbaa !9
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %132, align 8, !tbaa !9
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  store i32 %180, i32* %195, align 4, !tbaa !16
  %196 = load %struct.LexState*, %struct.LexState** %182, align 8, !tbaa !17
  %197 = getelementptr inbounds %struct.LexState, %struct.LexState* %196, i64 0, i32 2
  %198 = load i32, i32* %197, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %181, i32 %198) #8
  %199 = load i32, i32* %132, align 8, !tbaa !9
  %200 = load i32, i32* %99, align 8, !tbaa !36
  %201 = icmp eq i32 %200, 7
  br i1 %201, label %202, label %213

; <label>:202:                                    ; preds = %175
  %203 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %204 = bitcast %union.anon.7* %203 to i32*
  %205 = load i32, i32* %204, align 8, !tbaa !22
  %206 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %207 = load i8, i8* %206, align 2, !tbaa !38
  %208 = zext i8 %207 to i32
  %209 = icmp slt i32 %205, %208
  br i1 %209, label %213, label %210

; <label>:210:                                    ; preds = %202
  %211 = load i8, i8* %115, align 4, !tbaa !20
  %212 = add i8 %211, -1
  store i8 %212, i8* %115, align 4, !tbaa !20
  br label %213

; <label>:213:                                    ; preds = %210, %202, %175
  %214 = load %struct.Proto*, %struct.Proto** %118, align 8, !tbaa !13
  %215 = add nsw i32 %199, -1
  %216 = getelementptr inbounds %struct.Proto, %struct.Proto* %214, i64 0, i32 19
  %217 = load i8*, i8** %216, align 8, !tbaa !41
  %218 = sext i32 %215 to i64
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  %220 = load i8, i8* %219, align 1, !tbaa !22
  %221 = icmp eq i8 %220, -128
  br i1 %221, label %230, label %222

; <label>:222:                                    ; preds = %213
  %223 = sext i8 %220 to i32
  %224 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %225 = load i32, i32* %224, align 8, !tbaa !42
  %226 = sub nsw i32 %225, %223
  store i32 %226, i32* %224, align 8, !tbaa !42
  %227 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  %228 = load i8, i8* %227, align 1, !tbaa !43
  %229 = add i8 %228, -1
  store i8 %229, i8* %227, align 1, !tbaa !43
  br label %235

; <label>:230:                                    ; preds = %213
  %231 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %232 = load i32, i32* %231, align 4, !tbaa !44
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %231, align 4, !tbaa !44
  %234 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  store i8 121, i8* %234, align 1, !tbaa !43
  br label %235

; <label>:235:                                    ; preds = %230, %222
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %214, i32 %4) #8
  br label %781

; <label>:236:                                    ; preds = %5, %5
  %237 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3)
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %781

; <label>:239:                                    ; preds = %236
  %240 = add i32 %1, 38
  %241 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %242 = load i32, i32* %241, align 8, !tbaa !39
  %243 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %244 = load i32, i32* %243, align 4, !tbaa !40
  %245 = icmp eq i32 %242, %244
  br i1 %245, label %246, label %255

; <label>:246:                                    ; preds = %239
  %247 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %248 = load i32, i32* %247, align 8, !tbaa !36
  %249 = add i32 %248, -5
  %250 = icmp ult i32 %249, 2
  br i1 %250, label %251, label %255

; <label>:251:                                    ; preds = %246
  %252 = bitcast %struct.expdesc* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %252)
  %253 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %252, i8* %253, i64 24, i32 8, i1 false) #8, !tbaa.struct !47
  %254 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %253, i8* %254, i64 24, i32 8, i1 false) #8, !tbaa.struct !47
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %254, i8* nonnull %252, i64 24, i32 8, i1 false) #8, !tbaa.struct !47
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %252)
  br label %255

; <label>:255:                                    ; preds = %239, %246, %251
  %256 = phi i32 [ 1, %251 ], [ 0, %239 ], [ 0, %246 ]
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 %240, %struct.expdesc* nonnull %2, %struct.expdesc* %3, i32 %256, i32 %4) #8
  br label %781

; <label>:257:                                    ; preds = %5, %5, %5, %5, %5
  %258 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3)
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %781

; <label>:260:                                    ; preds = %257
  %261 = add i32 %1, 38
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 %261, %struct.expdesc* %2, %struct.expdesc* %3, i32 0, i32 %4)
  br label %781

; <label>:262:                                    ; preds = %5, %5, %5
  %263 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3)
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %781

; <label>:265:                                    ; preds = %262
  %266 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %267 = load i32, i32* %266, align 8, !tbaa !36
  %268 = icmp eq i32 %267, 6
  br i1 %268, label %269, label %278

; <label>:269:                                    ; preds = %265
  %270 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #8
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %274

; <label>:272:                                    ; preds = %269
  %273 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #8
  br label %278

; <label>:274:                                    ; preds = %269
  %275 = bitcast %struct.expdesc* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %275)
  %276 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %275, i8* %276, i64 24, i32 8, i1 false) #8, !tbaa.struct !47
  %277 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %276, i8* %277, i64 24, i32 8, i1 false) #8, !tbaa.struct !47
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %277, i8* nonnull %275, i64 24, i32 8, i1 false) #8, !tbaa.struct !47
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %275)
  br label %388

; <label>:278:                                    ; preds = %272, %265
  %279 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %280 = load i32, i32* %279, align 8, !tbaa !36
  %281 = icmp eq i32 %280, 6
  br i1 %281, label %282, label %287

; <label>:282:                                    ; preds = %278
  %283 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #8
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %388

; <label>:285:                                    ; preds = %282
  %286 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #8
  br label %287

; <label>:287:                                    ; preds = %285, %278
  %288 = add i32 %1, 38
  %289 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #8
  %290 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #8
  %291 = shl i32 %290, 16
  %292 = shl i32 %289, 24
  %293 = or i32 %292, %288
  %294 = or i32 %293, %291
  %295 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %296 = load %struct.Proto*, %struct.Proto** %295, align 8, !tbaa !13
  %297 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %298 = load %struct.LexState*, %struct.LexState** %297, align 8, !tbaa !17
  %299 = getelementptr inbounds %struct.LexState, %struct.LexState* %298, i64 0, i32 6
  %300 = load %struct.lua_State*, %struct.lua_State** %299, align 8, !tbaa !18
  %301 = getelementptr inbounds %struct.Proto, %struct.Proto* %296, i64 0, i32 16
  %302 = bitcast i32** %301 to i8**
  %303 = load i8*, i8** %302, align 8, !tbaa !14
  %304 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %305 = load i32, i32* %304, align 8, !tbaa !9
  %306 = getelementptr inbounds %struct.Proto, %struct.Proto* %296, i64 0, i32 8
  %307 = tail call i8* @luaM_growaux_(%struct.lua_State* %300, i8* %303, i32 %305, i32* nonnull %306, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %308 = bitcast i8* %307 to i32*
  store i8* %307, i8** %302, align 8, !tbaa !14
  %309 = load i32, i32* %304, align 8, !tbaa !9
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %304, align 8, !tbaa !9
  %311 = sext i32 %309 to i64
  %312 = getelementptr inbounds i32, i32* %308, i64 %311
  store i32 %294, i32* %312, align 4, !tbaa !16
  %313 = load %struct.LexState*, %struct.LexState** %297, align 8, !tbaa !17
  %314 = getelementptr inbounds %struct.LexState, %struct.LexState* %313, i64 0, i32 2
  %315 = load i32, i32* %314, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %296, i32 %315) #8
  %316 = load i32, i32* %304, align 8, !tbaa !9
  %317 = add nsw i32 %316, -1
  %318 = load i32, i32* %266, align 8, !tbaa !36
  %319 = icmp eq i32 %318, 7
  br i1 %319, label %320, label %324

; <label>:320:                                    ; preds = %287
  %321 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %322 = bitcast %union.anon.7* %321 to i32*
  %323 = load i32, i32* %322, align 8, !tbaa !22
  br label %324

; <label>:324:                                    ; preds = %320, %287
  %325 = phi i32 [ %323, %320 ], [ -1, %287 ]
  %326 = load i32, i32* %279, align 8, !tbaa !36
  %327 = icmp eq i32 %326, 7
  br i1 %327, label %328, label %332

; <label>:328:                                    ; preds = %324
  %329 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %330 = bitcast %union.anon.7* %329 to i32*
  %331 = load i32, i32* %330, align 8, !tbaa !22
  br label %332

; <label>:332:                                    ; preds = %328, %324
  %333 = phi i32 [ %331, %328 ], [ -1, %324 ]
  %334 = icmp sgt i32 %325, %333
  %335 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %336 = load i8, i8* %335, align 2, !tbaa !38
  %337 = zext i8 %336 to i32
  br i1 %334, label %338, label %350

; <label>:338:                                    ; preds = %332
  %339 = icmp slt i32 %325, %337
  br i1 %339, label %344, label %340

; <label>:340:                                    ; preds = %338
  %341 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %342 = load i8, i8* %341, align 4, !tbaa !20
  %343 = add i8 %342, -1
  store i8 %343, i8* %341, align 4, !tbaa !20
  br label %344

; <label>:344:                                    ; preds = %340, %338
  %345 = icmp slt i32 %333, %337
  br i1 %345, label %362, label %346

; <label>:346:                                    ; preds = %344
  %347 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %348 = load i8, i8* %347, align 4, !tbaa !20
  %349 = add i8 %348, -1
  store i8 %349, i8* %347, align 4, !tbaa !20
  br label %362

; <label>:350:                                    ; preds = %332
  %351 = icmp slt i32 %333, %337
  br i1 %351, label %356, label %352

; <label>:352:                                    ; preds = %350
  %353 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %354 = load i8, i8* %353, align 4, !tbaa !20
  %355 = add i8 %354, -1
  store i8 %355, i8* %353, align 4, !tbaa !20
  br label %356

; <label>:356:                                    ; preds = %352, %350
  %357 = icmp slt i32 %325, %337
  br i1 %357, label %362, label %358

; <label>:358:                                    ; preds = %356
  %359 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %360 = load i8, i8* %359, align 4, !tbaa !20
  %361 = add i8 %360, -1
  store i8 %361, i8* %359, align 4, !tbaa !20
  br label %362

; <label>:362:                                    ; preds = %358, %356, %346, %344
  %363 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %364 = bitcast %union.anon.7* %363 to i32*
  store i32 %317, i32* %364, align 8, !tbaa !22
  store i32 15, i32* %266, align 8, !tbaa !36
  %365 = load %struct.Proto*, %struct.Proto** %295, align 8, !tbaa !13
  %366 = load i32, i32* %304, align 8, !tbaa !9
  %367 = add nsw i32 %366, -1
  %368 = getelementptr inbounds %struct.Proto, %struct.Proto* %365, i64 0, i32 19
  %369 = load i8*, i8** %368, align 8, !tbaa !41
  %370 = sext i32 %367 to i64
  %371 = getelementptr inbounds i8, i8* %369, i64 %370
  %372 = load i8, i8* %371, align 1, !tbaa !22
  %373 = icmp eq i8 %372, -128
  br i1 %373, label %382, label %374

; <label>:374:                                    ; preds = %362
  %375 = sext i8 %372 to i32
  %376 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %377 = load i32, i32* %376, align 8, !tbaa !42
  %378 = sub nsw i32 %377, %375
  store i32 %378, i32* %376, align 8, !tbaa !42
  %379 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  %380 = load i8, i8* %379, align 1, !tbaa !43
  %381 = add i8 %380, -1
  store i8 %381, i8* %379, align 1, !tbaa !43
  br label %387

; <label>:382:                                    ; preds = %362
  %383 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %384 = load i32, i32* %383, align 4, !tbaa !44
  %385 = add nsw i32 %384, -1
  store i32 %385, i32* %383, align 4, !tbaa !44
  %386 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  store i8 121, i8* %386, align 1, !tbaa !43
  br label %387

; <label>:387:                                    ; preds = %382, %374
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %365, i32 %4) #8
  br label %781

; <label>:388:                                    ; preds = %282, %274
  %389 = phi i32 [ 32768, %274 ], [ 0, %282 ]
  %390 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %391 = bitcast %union.anon.7* %390 to i32*
  %392 = load i32, i32* %391, align 8, !tbaa !22
  %393 = add i32 %1, 26
  %394 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #8
  %395 = shl i32 %394, 16
  %396 = shl i32 %392, 24
  %397 = or i32 %389, %393
  %398 = or i32 %397, %396
  %399 = or i32 %398, %395
  %400 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %401 = load %struct.Proto*, %struct.Proto** %400, align 8, !tbaa !13
  %402 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %403 = load %struct.LexState*, %struct.LexState** %402, align 8, !tbaa !17
  %404 = getelementptr inbounds %struct.LexState, %struct.LexState* %403, i64 0, i32 6
  %405 = load %struct.lua_State*, %struct.lua_State** %404, align 8, !tbaa !18
  %406 = getelementptr inbounds %struct.Proto, %struct.Proto* %401, i64 0, i32 16
  %407 = bitcast i32** %406 to i8**
  %408 = load i8*, i8** %407, align 8, !tbaa !14
  %409 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %410 = load i32, i32* %409, align 8, !tbaa !9
  %411 = getelementptr inbounds %struct.Proto, %struct.Proto* %401, i64 0, i32 8
  %412 = tail call i8* @luaM_growaux_(%struct.lua_State* %405, i8* %408, i32 %410, i32* nonnull %411, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %413 = bitcast i8* %412 to i32*
  store i8* %412, i8** %407, align 8, !tbaa !14
  %414 = load i32, i32* %409, align 8, !tbaa !9
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %409, align 8, !tbaa !9
  %416 = sext i32 %414 to i64
  %417 = getelementptr inbounds i32, i32* %413, i64 %416
  store i32 %399, i32* %417, align 4, !tbaa !16
  %418 = load %struct.LexState*, %struct.LexState** %402, align 8, !tbaa !17
  %419 = getelementptr inbounds %struct.LexState, %struct.LexState* %418, i64 0, i32 2
  %420 = load i32, i32* %419, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %401, i32 %420) #8
  %421 = load i32, i32* %409, align 8, !tbaa !9
  %422 = add nsw i32 %421, -1
  %423 = load i32, i32* %266, align 8, !tbaa !36
  %424 = icmp eq i32 %423, 7
  br i1 %424, label %425, label %429

; <label>:425:                                    ; preds = %388
  %426 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %427 = bitcast %union.anon.7* %426 to i32*
  %428 = load i32, i32* %427, align 8, !tbaa !22
  br label %429

; <label>:429:                                    ; preds = %425, %388
  %430 = phi i32 [ %428, %425 ], [ -1, %388 ]
  %431 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %432 = load i32, i32* %431, align 8, !tbaa !36
  %433 = icmp eq i32 %432, 7
  br i1 %433, label %434, label %436

; <label>:434:                                    ; preds = %429
  %435 = load i32, i32* %391, align 8, !tbaa !22
  br label %436

; <label>:436:                                    ; preds = %434, %429
  %437 = phi i32 [ %435, %434 ], [ -1, %429 ]
  %438 = icmp sgt i32 %430, %437
  %439 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %440 = load i8, i8* %439, align 2, !tbaa !38
  %441 = zext i8 %440 to i32
  br i1 %438, label %442, label %454

; <label>:442:                                    ; preds = %436
  %443 = icmp slt i32 %430, %441
  br i1 %443, label %448, label %444

; <label>:444:                                    ; preds = %442
  %445 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %446 = load i8, i8* %445, align 4, !tbaa !20
  %447 = add i8 %446, -1
  store i8 %447, i8* %445, align 4, !tbaa !20
  br label %448

; <label>:448:                                    ; preds = %444, %442
  %449 = icmp slt i32 %437, %441
  br i1 %449, label %466, label %450

; <label>:450:                                    ; preds = %448
  %451 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %452 = load i8, i8* %451, align 4, !tbaa !20
  %453 = add i8 %452, -1
  store i8 %453, i8* %451, align 4, !tbaa !20
  br label %466

; <label>:454:                                    ; preds = %436
  %455 = icmp slt i32 %437, %441
  br i1 %455, label %460, label %456

; <label>:456:                                    ; preds = %454
  %457 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %458 = load i8, i8* %457, align 4, !tbaa !20
  %459 = add i8 %458, -1
  store i8 %459, i8* %457, align 4, !tbaa !20
  br label %460

; <label>:460:                                    ; preds = %456, %454
  %461 = icmp slt i32 %430, %441
  br i1 %461, label %466, label %462

; <label>:462:                                    ; preds = %460
  %463 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %464 = load i8, i8* %463, align 4, !tbaa !20
  %465 = add i8 %464, -1
  store i8 %465, i8* %463, align 4, !tbaa !20
  br label %466

; <label>:466:                                    ; preds = %462, %460, %450, %448
  %467 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %468 = bitcast %union.anon.7* %467 to i32*
  store i32 %422, i32* %468, align 8, !tbaa !22
  store i32 15, i32* %266, align 8, !tbaa !36
  %469 = load %struct.Proto*, %struct.Proto** %400, align 8, !tbaa !13
  %470 = load i32, i32* %409, align 8, !tbaa !9
  %471 = add nsw i32 %470, -1
  %472 = getelementptr inbounds %struct.Proto, %struct.Proto* %469, i64 0, i32 19
  %473 = load i8*, i8** %472, align 8, !tbaa !41
  %474 = sext i32 %471 to i64
  %475 = getelementptr inbounds i8, i8* %473, i64 %474
  %476 = load i8, i8* %475, align 1, !tbaa !22
  %477 = icmp eq i8 %476, -128
  br i1 %477, label %486, label %478

; <label>:478:                                    ; preds = %466
  %479 = sext i8 %476 to i32
  %480 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %481 = load i32, i32* %480, align 8, !tbaa !42
  %482 = sub nsw i32 %481, %479
  store i32 %482, i32* %480, align 8, !tbaa !42
  %483 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  %484 = load i8, i8* %483, align 1, !tbaa !43
  %485 = add i8 %484, -1
  store i8 %485, i8* %483, align 1, !tbaa !43
  br label %491

; <label>:486:                                    ; preds = %466
  %487 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %488 = load i32, i32* %487, align 4, !tbaa !44
  %489 = add nsw i32 %488, -1
  store i32 %489, i32* %487, align 4, !tbaa !44
  %490 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  store i8 121, i8* %490, align 1, !tbaa !43
  br label %491

; <label>:491:                                    ; preds = %486, %478
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %469, i32 %4) #8
  br label %781

; <label>:492:                                    ; preds = %5
  %493 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 10, %struct.expdesc* %2, %struct.expdesc* %3)
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %781

; <label>:495:                                    ; preds = %492
  %496 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %497 = load i32, i32* %496, align 8, !tbaa !36
  %498 = icmp eq i32 %497, 6
  br i1 %498, label %499, label %617

; <label>:499:                                    ; preds = %495
  %500 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %501 = load i32, i32* %500, align 8, !tbaa !39
  %502 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %503 = load i32, i32* %502, align 4, !tbaa !40
  %504 = icmp eq i32 %501, %503
  br i1 %504, label %505, label %617

; <label>:505:                                    ; preds = %499
  %506 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0
  %507 = load i64, i64* %506, align 8, !tbaa !22
  %508 = add i64 %507, 127
  %509 = icmp ugt i64 %508, 255
  br i1 %509, label %617, label %510

; <label>:510:                                    ; preds = %505
  %511 = bitcast %struct.expdesc* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %511)
  %512 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %511, i8* %512, i64 24, i32 8, i1 false) #8, !tbaa.struct !47
  %513 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %512, i8* %513, i64 24, i32 8, i1 false) #8, !tbaa.struct !47
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %513, i8* nonnull %511, i64 24, i32 8, i1 false) #8, !tbaa.struct !47
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %511)
  %514 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %515 = load i64, i64* %514, align 8, !tbaa !22
  %516 = trunc i64 %515 to i32
  %517 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #8
  %518 = shl i32 %517, 16
  %519 = shl i32 %516, 24
  %520 = add i32 %519, 2130706432
  %521 = or i32 %518, %520
  %522 = or i32 %521, 32805
  %523 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %524 = load %struct.Proto*, %struct.Proto** %523, align 8, !tbaa !13
  %525 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %526 = load %struct.LexState*, %struct.LexState** %525, align 8, !tbaa !17
  %527 = getelementptr inbounds %struct.LexState, %struct.LexState* %526, i64 0, i32 6
  %528 = load %struct.lua_State*, %struct.lua_State** %527, align 8, !tbaa !18
  %529 = getelementptr inbounds %struct.Proto, %struct.Proto* %524, i64 0, i32 16
  %530 = bitcast i32** %529 to i8**
  %531 = load i8*, i8** %530, align 8, !tbaa !14
  %532 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %533 = load i32, i32* %532, align 8, !tbaa !9
  %534 = getelementptr inbounds %struct.Proto, %struct.Proto* %524, i64 0, i32 8
  %535 = tail call i8* @luaM_growaux_(%struct.lua_State* %528, i8* %531, i32 %533, i32* nonnull %534, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %536 = bitcast i8* %535 to i32*
  store i8* %535, i8** %530, align 8, !tbaa !14
  %537 = load i32, i32* %532, align 8, !tbaa !9
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %532, align 8, !tbaa !9
  %539 = sext i32 %537 to i64
  %540 = getelementptr inbounds i32, i32* %536, i64 %539
  store i32 %522, i32* %540, align 4, !tbaa !16
  %541 = load %struct.LexState*, %struct.LexState** %525, align 8, !tbaa !17
  %542 = getelementptr inbounds %struct.LexState, %struct.LexState* %541, i64 0, i32 2
  %543 = load i32, i32* %542, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %524, i32 %543) #8
  %544 = load i32, i32* %532, align 8, !tbaa !9
  %545 = add nsw i32 %544, -1
  %546 = load i32, i32* %496, align 8, !tbaa !36
  %547 = icmp eq i32 %546, 7
  br i1 %547, label %548, label %552

; <label>:548:                                    ; preds = %510
  %549 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %550 = bitcast %union.anon.7* %549 to i32*
  %551 = load i32, i32* %550, align 8, !tbaa !22
  br label %552

; <label>:552:                                    ; preds = %548, %510
  %553 = phi i32 [ %551, %548 ], [ -1, %510 ]
  %554 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %555 = load i32, i32* %554, align 8, !tbaa !36
  %556 = icmp eq i32 %555, 7
  br i1 %556, label %557, label %561

; <label>:557:                                    ; preds = %552
  %558 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %559 = bitcast %union.anon.7* %558 to i32*
  %560 = load i32, i32* %559, align 8, !tbaa !22
  br label %561

; <label>:561:                                    ; preds = %557, %552
  %562 = phi i32 [ %560, %557 ], [ -1, %552 ]
  %563 = icmp sgt i32 %553, %562
  %564 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %565 = load i8, i8* %564, align 2, !tbaa !38
  %566 = zext i8 %565 to i32
  br i1 %563, label %567, label %579

; <label>:567:                                    ; preds = %561
  %568 = icmp slt i32 %553, %566
  br i1 %568, label %573, label %569

; <label>:569:                                    ; preds = %567
  %570 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %571 = load i8, i8* %570, align 4, !tbaa !20
  %572 = add i8 %571, -1
  store i8 %572, i8* %570, align 4, !tbaa !20
  br label %573

; <label>:573:                                    ; preds = %569, %567
  %574 = icmp slt i32 %562, %566
  br i1 %574, label %591, label %575

; <label>:575:                                    ; preds = %573
  %576 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %577 = load i8, i8* %576, align 4, !tbaa !20
  %578 = add i8 %577, -1
  store i8 %578, i8* %576, align 4, !tbaa !20
  br label %591

; <label>:579:                                    ; preds = %561
  %580 = icmp slt i32 %562, %566
  br i1 %580, label %585, label %581

; <label>:581:                                    ; preds = %579
  %582 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %583 = load i8, i8* %582, align 4, !tbaa !20
  %584 = add i8 %583, -1
  store i8 %584, i8* %582, align 4, !tbaa !20
  br label %585

; <label>:585:                                    ; preds = %581, %579
  %586 = icmp slt i32 %553, %566
  br i1 %586, label %591, label %587

; <label>:587:                                    ; preds = %585
  %588 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %589 = load i8, i8* %588, align 4, !tbaa !20
  %590 = add i8 %589, -1
  store i8 %590, i8* %588, align 4, !tbaa !20
  br label %591

; <label>:591:                                    ; preds = %573, %575, %585, %587
  %592 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %593 = bitcast %union.anon.7* %592 to i32*
  store i32 %545, i32* %593, align 8, !tbaa !22
  store i32 15, i32* %496, align 8, !tbaa !36
  %594 = load %struct.Proto*, %struct.Proto** %523, align 8, !tbaa !13
  %595 = load i32, i32* %532, align 8, !tbaa !9
  %596 = add nsw i32 %595, -1
  %597 = getelementptr inbounds %struct.Proto, %struct.Proto* %594, i64 0, i32 19
  %598 = load i8*, i8** %597, align 8, !tbaa !41
  %599 = sext i32 %596 to i64
  %600 = getelementptr inbounds i8, i8* %598, i64 %599
  %601 = load i8, i8* %600, align 1, !tbaa !22
  %602 = icmp eq i8 %601, -128
  br i1 %602, label %611, label %603

; <label>:603:                                    ; preds = %591
  %604 = sext i8 %601 to i32
  %605 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %606 = load i32, i32* %605, align 8, !tbaa !42
  %607 = sub nsw i32 %606, %604
  store i32 %607, i32* %605, align 8, !tbaa !42
  %608 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  %609 = load i8, i8* %608, align 1, !tbaa !43
  %610 = add i8 %609, -1
  store i8 %610, i8* %608, align 1, !tbaa !43
  br label %616

; <label>:611:                                    ; preds = %591
  %612 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %613 = load i32, i32* %612, align 4, !tbaa !44
  %614 = add nsw i32 %613, -1
  store i32 %614, i32* %612, align 4, !tbaa !44
  %615 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  store i8 121, i8* %615, align 1, !tbaa !43
  br label %616

; <label>:616:                                    ; preds = %603, %611
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %594, i32 %4) #8
  br label %781

; <label>:617:                                    ; preds = %495, %499, %505
  tail call fastcc void @codeshift(%struct.FuncState* %0, i32 48, %struct.expdesc* nonnull %2, %struct.expdesc* %3, i32 %4)
  br label %781

; <label>:618:                                    ; preds = %5
  %619 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 11, %struct.expdesc* %2, %struct.expdesc* %3)
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %621, label %781

; <label>:621:                                    ; preds = %618
  tail call fastcc void @codeshift(%struct.FuncState* %0, i32 49, %struct.expdesc* %2, %struct.expdesc* %3, i32 %4)
  br label %781

; <label>:622:                                    ; preds = %5, %5
  %623 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %623) #8
  %624 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %625 = load i32, i32* %624, align 8, !tbaa !36
  %626 = icmp eq i32 %625, 7
  br i1 %626, label %631, label %627

; <label>:627:                                    ; preds = %622
  %628 = bitcast %struct.expdesc* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %628)
  %629 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %628, i8* %629, i64 24, i32 8, i1 false) #8, !tbaa.struct !47
  %630 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %629, i8* %630, i64 24, i32 8, i1 false) #8, !tbaa.struct !47
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %630, i8* nonnull %628, i64 24, i32 8, i1 false) #8, !tbaa.struct !47
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %628)
  br label %631

; <label>:631:                                    ; preds = %627, %622
  %632 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #8
  %633 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %634 = load i32, i32* %633, align 8, !tbaa !36
  switch i32 %634, label %661 [
    i32 6, label %635
    i32 5, label %638
  ]

; <label>:635:                                    ; preds = %631
  %636 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %637 = load i64, i64* %636, align 8, !tbaa !22
  store i64 %637, i64* %8, align 8, !tbaa !45
  br label %648

; <label>:638:                                    ; preds = %631
  %639 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %640 = bitcast %union.anon.7* %639 to double*
  %641 = load double, double* %640, align 8, !tbaa !22
  %642 = call i32 @luaV_flttointeger(double %641, i64* nonnull %8, i32 0) #8
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %661, label %644

; <label>:644:                                    ; preds = %638
  %645 = load i64, i64* %8, align 8, !tbaa !45
  %646 = add i64 %645, 65535
  %647 = icmp ugt i64 %646, 131071
  br i1 %647, label %661, label %648

; <label>:648:                                    ; preds = %644, %635
  %649 = phi i32 [ 0, %635 ], [ 1, %644 ]
  %650 = phi i64 [ %637, %635 ], [ %645, %644 ]
  %651 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %652 = load i32, i32* %651, align 8, !tbaa !39
  %653 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %654 = load i32, i32* %653, align 4, !tbaa !40
  %655 = icmp eq i32 %652, %654
  br i1 %655, label %656, label %661

; <label>:656:                                    ; preds = %648
  %657 = add i64 %650, 127
  %658 = icmp ugt i64 %657, 255
  br i1 %658, label %661, label %659

; <label>:659:                                    ; preds = %656
  store i64 %657, i64* %8, align 8, !tbaa !45
  %660 = trunc i64 %657 to i32
  br label %672

; <label>:661:                                    ; preds = %656, %648, %644, %638, %631
  %662 = phi i32 [ %649, %648 ], [ %649, %656 ], [ 0, %644 ], [ 0, %638 ], [ 0, %631 ]
  %663 = call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #8
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %669, label %665

; <label>:665:                                    ; preds = %661
  %666 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %667 = bitcast %union.anon.7* %666 to i32*
  %668 = load i32, i32* %667, align 8, !tbaa !22
  br label %672

; <label>:669:                                    ; preds = %661
  %670 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #8
  %671 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #8
  br label %672

; <label>:672:                                    ; preds = %669, %665, %659
  %673 = phi i32 [ %649, %659 ], [ %662, %665 ], [ %662, %669 ]
  %674 = phi i32 [ %660, %659 ], [ %668, %665 ], [ %671, %669 ]
  %675 = phi i32 [ 62, %659 ], [ 61, %665 ], [ 58, %669 ]
  %676 = load i32, i32* %624, align 8, !tbaa !36
  %677 = icmp eq i32 %676, 7
  br i1 %677, label %678, label %682

; <label>:678:                                    ; preds = %672
  %679 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %680 = bitcast %union.anon.7* %679 to i32*
  %681 = load i32, i32* %680, align 8, !tbaa !22
  br label %682

; <label>:682:                                    ; preds = %678, %672
  %683 = phi i32 [ %681, %678 ], [ -1, %672 ]
  %684 = load i32, i32* %633, align 8, !tbaa !36
  %685 = icmp eq i32 %684, 7
  br i1 %685, label %686, label %690

; <label>:686:                                    ; preds = %682
  %687 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %688 = bitcast %union.anon.7* %687 to i32*
  %689 = load i32, i32* %688, align 8, !tbaa !22
  br label %690

; <label>:690:                                    ; preds = %686, %682
  %691 = phi i32 [ %689, %686 ], [ -1, %682 ]
  %692 = icmp sgt i32 %683, %691
  %693 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %694 = load i8, i8* %693, align 2, !tbaa !38
  %695 = zext i8 %694 to i32
  br i1 %692, label %696, label %708

; <label>:696:                                    ; preds = %690
  %697 = icmp slt i32 %683, %695
  br i1 %697, label %702, label %698

; <label>:698:                                    ; preds = %696
  %699 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %700 = load i8, i8* %699, align 4, !tbaa !20
  %701 = add i8 %700, -1
  store i8 %701, i8* %699, align 4, !tbaa !20
  br label %702

; <label>:702:                                    ; preds = %698, %696
  %703 = icmp slt i32 %691, %695
  br i1 %703, label %720, label %704

; <label>:704:                                    ; preds = %702
  %705 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %706 = load i8, i8* %705, align 4, !tbaa !20
  %707 = add i8 %706, -1
  store i8 %707, i8* %705, align 4, !tbaa !20
  br label %720

; <label>:708:                                    ; preds = %690
  %709 = icmp slt i32 %691, %695
  br i1 %709, label %714, label %710

; <label>:710:                                    ; preds = %708
  %711 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %712 = load i8, i8* %711, align 4, !tbaa !20
  %713 = add i8 %712, -1
  store i8 %713, i8* %711, align 4, !tbaa !20
  br label %714

; <label>:714:                                    ; preds = %710, %708
  %715 = icmp slt i32 %683, %695
  br i1 %715, label %720, label %716

; <label>:716:                                    ; preds = %714
  %717 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %718 = load i8, i8* %717, align 4, !tbaa !20
  %719 = add i8 %718, -1
  store i8 %719, i8* %717, align 4, !tbaa !20
  br label %720

; <label>:720:                                    ; preds = %702, %704, %714, %716
  %721 = icmp eq i32 %1, 13
  %722 = zext i1 %721 to i32
  %723 = shl i32 %632, 7
  %724 = shl i32 %674, 16
  %725 = shl i32 %673, 24
  %726 = shl nuw nsw i32 %722, 15
  %727 = or i32 %723, %726
  %728 = or i32 %727, %725
  %729 = or i32 %728, %675
  %730 = or i32 %729, %724
  %731 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %732 = load %struct.Proto*, %struct.Proto** %731, align 8, !tbaa !13
  %733 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %734 = load %struct.LexState*, %struct.LexState** %733, align 8, !tbaa !17
  %735 = getelementptr inbounds %struct.LexState, %struct.LexState* %734, i64 0, i32 6
  %736 = load %struct.lua_State*, %struct.lua_State** %735, align 8, !tbaa !18
  %737 = getelementptr inbounds %struct.Proto, %struct.Proto* %732, i64 0, i32 16
  %738 = bitcast i32** %737 to i8**
  %739 = load i8*, i8** %738, align 8, !tbaa !14
  %740 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %741 = load i32, i32* %740, align 8, !tbaa !9
  %742 = getelementptr inbounds %struct.Proto, %struct.Proto* %732, i64 0, i32 8
  %743 = call i8* @luaM_growaux_(%struct.lua_State* %736, i8* %739, i32 %741, i32* nonnull %742, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %744 = bitcast i8* %743 to i32*
  store i8* %743, i8** %738, align 8, !tbaa !14
  %745 = load i32, i32* %740, align 8, !tbaa !9
  %746 = add nsw i32 %745, 1
  store i32 %746, i32* %740, align 8, !tbaa !9
  %747 = sext i32 %745 to i64
  %748 = getelementptr inbounds i32, i32* %744, i64 %747
  store i32 %730, i32* %748, align 4, !tbaa !16
  %749 = load %struct.LexState*, %struct.LexState** %733, align 8, !tbaa !17
  %750 = getelementptr inbounds %struct.LexState, %struct.LexState* %749, i64 0, i32 2
  %751 = load i32, i32* %750, align 8, !tbaa !19
  call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %732, i32 %751) #8
  %752 = load %struct.Proto*, %struct.Proto** %731, align 8, !tbaa !13
  %753 = load %struct.LexState*, %struct.LexState** %733, align 8, !tbaa !17
  %754 = getelementptr inbounds %struct.LexState, %struct.LexState* %753, i64 0, i32 6
  %755 = load %struct.lua_State*, %struct.lua_State** %754, align 8, !tbaa !18
  %756 = getelementptr inbounds %struct.Proto, %struct.Proto* %752, i64 0, i32 16
  %757 = bitcast i32** %756 to i8**
  %758 = load i8*, i8** %757, align 8, !tbaa !14
  %759 = load i32, i32* %740, align 8, !tbaa !9
  %760 = getelementptr inbounds %struct.Proto, %struct.Proto* %752, i64 0, i32 8
  %761 = call i8* @luaM_growaux_(%struct.lua_State* %755, i8* %758, i32 %759, i32* nonnull %760, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %762 = bitcast i8* %761 to i32*
  store i8* %761, i8** %757, align 8, !tbaa !14
  %763 = load i32, i32* %740, align 8, !tbaa !9
  %764 = add nsw i32 %763, 1
  store i32 %764, i32* %740, align 8, !tbaa !9
  %765 = sext i32 %763 to i64
  %766 = getelementptr inbounds i32, i32* %762, i64 %765
  store i32 2147483449, i32* %766, align 4, !tbaa !16
  %767 = load %struct.LexState*, %struct.LexState** %733, align 8, !tbaa !17
  %768 = getelementptr inbounds %struct.LexState, %struct.LexState* %767, i64 0, i32 2
  %769 = load i32, i32* %768, align 8, !tbaa !19
  call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %752, i32 %769) #8
  %770 = load i32, i32* %740, align 8, !tbaa !9
  %771 = add nsw i32 %770, -1
  %772 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %773 = bitcast %union.anon.7* %772 to i32*
  store i32 %771, i32* %773, align 8, !tbaa !22
  store i32 14, i32* %624, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %623) #8
  br label %781

; <label>:774:                                    ; preds = %5, %5
  %775 = add i32 %1, 45
  tail call fastcc void @codeorder(%struct.FuncState* %0, i32 %775, %struct.expdesc* %2, %struct.expdesc* %3)
  br label %781

; <label>:776:                                    ; preds = %5, %5
  %777 = add i32 %1, 42
  %778 = bitcast %struct.expdesc* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %778)
  %779 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %778, i8* %779, i64 24, i32 8, i1 false) #8, !tbaa.struct !47
  %780 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %779, i8* %780, i64 24, i32 8, i1 false) #8, !tbaa.struct !47
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %780, i8* nonnull %778, i64 24, i32 8, i1 false) #8, !tbaa.struct !47
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %778)
  tail call fastcc void @codeorder(%struct.FuncState* %0, i32 %777, %struct.expdesc* %2, %struct.expdesc* %3)
  br label %781

; <label>:781:                                    ; preds = %491, %387, %235, %163, %236, %257, %262, %492, %618, %5, %621, %617, %616, %260, %255, %776, %774, %720, %95, %52
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @codearith(%struct.FuncState*, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture, i32, i32) unnamed_addr #2 {
  %7 = alloca %struct.expdesc, align 8
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !36
  %10 = icmp eq i32 %9, 6
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %12 = load i32, i32* %11, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %14 = load i32, i32* %13, align 4, !tbaa !40
  %15 = icmp eq i32 %12, %14
  %16 = and i1 %10, %15
  br i1 %16, label %17, label %127

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %19 = load i64, i64* %18, align 8, !tbaa !22
  %20 = add i64 %19, 127
  %21 = icmp ugt i64 %20, 255
  br i1 %21, label %127, label %22

; <label>:22:                                     ; preds = %17
  %23 = add i32 %1, -19
  %24 = trunc i64 %19 to i32
  %25 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %26 = shl i32 %25, 16
  %27 = shl i32 %24, 24
  %28 = add i32 %27, 2130706432
  %29 = shl i32 %4, 15
  %30 = or i32 %29, %23
  %31 = or i32 %30, %26
  %32 = or i32 %31, %28
  %33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %34 = load %struct.Proto*, %struct.Proto** %33, align 8, !tbaa !13
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %36 = load %struct.LexState*, %struct.LexState** %35, align 8, !tbaa !17
  %37 = getelementptr inbounds %struct.LexState, %struct.LexState* %36, i64 0, i32 6
  %38 = load %struct.lua_State*, %struct.lua_State** %37, align 8, !tbaa !18
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i64 0, i32 16
  %40 = bitcast i32** %39 to i8**
  %41 = load i8*, i8** %40, align 8, !tbaa !14
  %42 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %43 = load i32, i32* %42, align 8, !tbaa !9
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i64 0, i32 8
  %45 = tail call i8* @luaM_growaux_(%struct.lua_State* %38, i8* %41, i32 %43, i32* nonnull %44, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %46 = bitcast i8* %45 to i32*
  store i8* %45, i8** %40, align 8, !tbaa !14
  %47 = load i32, i32* %42, align 8, !tbaa !9
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %42, align 8, !tbaa !9
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %32, i32* %50, align 4, !tbaa !16
  %51 = load %struct.LexState*, %struct.LexState** %35, align 8, !tbaa !17
  %52 = getelementptr inbounds %struct.LexState, %struct.LexState* %51, i64 0, i32 2
  %53 = load i32, i32* %52, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %34, i32 %53) #8
  %54 = load i32, i32* %42, align 8, !tbaa !9
  %55 = add nsw i32 %54, -1
  %56 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %57 = load i32, i32* %56, align 8, !tbaa !36
  %58 = icmp eq i32 %57, 7
  br i1 %58, label %59, label %63

; <label>:59:                                     ; preds = %22
  %60 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %61 = bitcast %union.anon.7* %60 to i32*
  %62 = load i32, i32* %61, align 8, !tbaa !22
  br label %63

; <label>:63:                                     ; preds = %59, %22
  %64 = phi i32 [ %62, %59 ], [ -1, %22 ]
  %65 = load i32, i32* %8, align 8, !tbaa !36
  %66 = icmp eq i32 %65, 7
  br i1 %66, label %67, label %71

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %69 = bitcast %union.anon.7* %68 to i32*
  %70 = load i32, i32* %69, align 8, !tbaa !22
  br label %71

; <label>:71:                                     ; preds = %67, %63
  %72 = phi i32 [ %70, %67 ], [ -1, %63 ]
  %73 = icmp sgt i32 %64, %72
  %74 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %75 = load i8, i8* %74, align 2, !tbaa !38
  %76 = zext i8 %75 to i32
  br i1 %73, label %77, label %89

; <label>:77:                                     ; preds = %71
  %78 = icmp slt i32 %64, %76
  br i1 %78, label %83, label %79

; <label>:79:                                     ; preds = %77
  %80 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %81 = load i8, i8* %80, align 4, !tbaa !20
  %82 = add i8 %81, -1
  store i8 %82, i8* %80, align 4, !tbaa !20
  br label %83

; <label>:83:                                     ; preds = %79, %77
  %84 = icmp slt i32 %72, %76
  br i1 %84, label %101, label %85

; <label>:85:                                     ; preds = %83
  %86 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %87 = load i8, i8* %86, align 4, !tbaa !20
  %88 = add i8 %87, -1
  store i8 %88, i8* %86, align 4, !tbaa !20
  br label %101

; <label>:89:                                     ; preds = %71
  %90 = icmp slt i32 %72, %76
  br i1 %90, label %95, label %91

; <label>:91:                                     ; preds = %89
  %92 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %93 = load i8, i8* %92, align 4, !tbaa !20
  %94 = add i8 %93, -1
  store i8 %94, i8* %92, align 4, !tbaa !20
  br label %95

; <label>:95:                                     ; preds = %91, %89
  %96 = icmp slt i32 %64, %76
  br i1 %96, label %101, label %97

; <label>:97:                                     ; preds = %95
  %98 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %99 = load i8, i8* %98, align 4, !tbaa !20
  %100 = add i8 %99, -1
  store i8 %100, i8* %98, align 4, !tbaa !20
  br label %101

; <label>:101:                                    ; preds = %83, %85, %95, %97
  %102 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %103 = bitcast %union.anon.7* %102 to i32*
  store i32 %55, i32* %103, align 8, !tbaa !22
  store i32 15, i32* %56, align 8, !tbaa !36
  %104 = load %struct.Proto*, %struct.Proto** %33, align 8, !tbaa !13
  %105 = load i32, i32* %42, align 8, !tbaa !9
  %106 = add nsw i32 %105, -1
  %107 = getelementptr inbounds %struct.Proto, %struct.Proto* %104, i64 0, i32 19
  %108 = load i8*, i8** %107, align 8, !tbaa !41
  %109 = sext i32 %106 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  %111 = load i8, i8* %110, align 1, !tbaa !22
  %112 = icmp eq i8 %111, -128
  br i1 %112, label %121, label %113

; <label>:113:                                    ; preds = %101
  %114 = sext i8 %111 to i32
  %115 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %116 = load i32, i32* %115, align 8, !tbaa !42
  %117 = sub nsw i32 %116, %114
  store i32 %117, i32* %115, align 8, !tbaa !42
  %118 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  %119 = load i8, i8* %118, align 1, !tbaa !43
  %120 = add i8 %119, -1
  store i8 %120, i8* %118, align 1, !tbaa !43
  br label %126

; <label>:121:                                    ; preds = %101
  %122 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %123 = load i32, i32* %122, align 4, !tbaa !44
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %122, align 4, !tbaa !44
  %125 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  store i8 121, i8* %125, align 1, !tbaa !43
  br label %126

; <label>:126:                                    ; preds = %113, %121
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %104, i32 %5) #8
  br label %347

; <label>:127:                                    ; preds = %6, %17
  %128 = phi i32 [ %12, %17 ], [ %14, %6 ]
  %129 = icmp eq i32 %12, %128
  %130 = add i32 %9, -5
  %131 = icmp ult i32 %130, 2
  %132 = and i1 %131, %129
  br i1 %132, label %133, label %240

; <label>:133:                                    ; preds = %127
  %134 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* nonnull %3)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %240, label %136

; <label>:136:                                    ; preds = %133
  %137 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %138 = bitcast %union.anon.7* %137 to i32*
  %139 = load i32, i32* %138, align 8, !tbaa !22
  %140 = add i32 %1, -12
  %141 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %142 = shl i32 %141, 16
  %143 = shl i32 %139, 24
  %144 = shl i32 %4, 15
  %145 = or i32 %144, %140
  %146 = or i32 %145, %143
  %147 = or i32 %146, %142
  %148 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %149 = load %struct.Proto*, %struct.Proto** %148, align 8, !tbaa !13
  %150 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %151 = load %struct.LexState*, %struct.LexState** %150, align 8, !tbaa !17
  %152 = getelementptr inbounds %struct.LexState, %struct.LexState* %151, i64 0, i32 6
  %153 = load %struct.lua_State*, %struct.lua_State** %152, align 8, !tbaa !18
  %154 = getelementptr inbounds %struct.Proto, %struct.Proto* %149, i64 0, i32 16
  %155 = bitcast i32** %154 to i8**
  %156 = load i8*, i8** %155, align 8, !tbaa !14
  %157 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %158 = load i32, i32* %157, align 8, !tbaa !9
  %159 = getelementptr inbounds %struct.Proto, %struct.Proto* %149, i64 0, i32 8
  %160 = tail call i8* @luaM_growaux_(%struct.lua_State* %153, i8* %156, i32 %158, i32* nonnull %159, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %161 = bitcast i8* %160 to i32*
  store i8* %160, i8** %155, align 8, !tbaa !14
  %162 = load i32, i32* %157, align 8, !tbaa !9
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %157, align 8, !tbaa !9
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  store i32 %147, i32* %165, align 4, !tbaa !16
  %166 = load %struct.LexState*, %struct.LexState** %150, align 8, !tbaa !17
  %167 = getelementptr inbounds %struct.LexState, %struct.LexState* %166, i64 0, i32 2
  %168 = load i32, i32* %167, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %149, i32 %168) #8
  %169 = load i32, i32* %157, align 8, !tbaa !9
  %170 = add nsw i32 %169, -1
  %171 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %172 = load i32, i32* %171, align 8, !tbaa !36
  %173 = icmp eq i32 %172, 7
  br i1 %173, label %174, label %178

; <label>:174:                                    ; preds = %136
  %175 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %176 = bitcast %union.anon.7* %175 to i32*
  %177 = load i32, i32* %176, align 8, !tbaa !22
  br label %178

; <label>:178:                                    ; preds = %174, %136
  %179 = phi i32 [ %177, %174 ], [ -1, %136 ]
  %180 = load i32, i32* %8, align 8, !tbaa !36
  %181 = icmp eq i32 %180, 7
  br i1 %181, label %182, label %184

; <label>:182:                                    ; preds = %178
  %183 = load i32, i32* %138, align 8, !tbaa !22
  br label %184

; <label>:184:                                    ; preds = %182, %178
  %185 = phi i32 [ %183, %182 ], [ -1, %178 ]
  %186 = icmp sgt i32 %179, %185
  %187 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %188 = load i8, i8* %187, align 2, !tbaa !38
  %189 = zext i8 %188 to i32
  br i1 %186, label %190, label %202

; <label>:190:                                    ; preds = %184
  %191 = icmp slt i32 %179, %189
  br i1 %191, label %196, label %192

; <label>:192:                                    ; preds = %190
  %193 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %194 = load i8, i8* %193, align 4, !tbaa !20
  %195 = add i8 %194, -1
  store i8 %195, i8* %193, align 4, !tbaa !20
  br label %196

; <label>:196:                                    ; preds = %192, %190
  %197 = icmp slt i32 %185, %189
  br i1 %197, label %214, label %198

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %200 = load i8, i8* %199, align 4, !tbaa !20
  %201 = add i8 %200, -1
  store i8 %201, i8* %199, align 4, !tbaa !20
  br label %214

; <label>:202:                                    ; preds = %184
  %203 = icmp slt i32 %185, %189
  br i1 %203, label %208, label %204

; <label>:204:                                    ; preds = %202
  %205 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %206 = load i8, i8* %205, align 4, !tbaa !20
  %207 = add i8 %206, -1
  store i8 %207, i8* %205, align 4, !tbaa !20
  br label %208

; <label>:208:                                    ; preds = %204, %202
  %209 = icmp slt i32 %179, %189
  br i1 %209, label %214, label %210

; <label>:210:                                    ; preds = %208
  %211 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %212 = load i8, i8* %211, align 4, !tbaa !20
  %213 = add i8 %212, -1
  store i8 %213, i8* %211, align 4, !tbaa !20
  br label %214

; <label>:214:                                    ; preds = %196, %198, %208, %210
  %215 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %216 = bitcast %union.anon.7* %215 to i32*
  store i32 %170, i32* %216, align 8, !tbaa !22
  store i32 15, i32* %171, align 8, !tbaa !36
  %217 = load %struct.Proto*, %struct.Proto** %148, align 8, !tbaa !13
  %218 = load i32, i32* %157, align 8, !tbaa !9
  %219 = add nsw i32 %218, -1
  %220 = getelementptr inbounds %struct.Proto, %struct.Proto* %217, i64 0, i32 19
  %221 = load i8*, i8** %220, align 8, !tbaa !41
  %222 = sext i32 %219 to i64
  %223 = getelementptr inbounds i8, i8* %221, i64 %222
  %224 = load i8, i8* %223, align 1, !tbaa !22
  %225 = icmp eq i8 %224, -128
  br i1 %225, label %234, label %226

; <label>:226:                                    ; preds = %214
  %227 = sext i8 %224 to i32
  %228 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %229 = load i32, i32* %228, align 8, !tbaa !42
  %230 = sub nsw i32 %229, %227
  store i32 %230, i32* %228, align 8, !tbaa !42
  %231 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  %232 = load i8, i8* %231, align 1, !tbaa !43
  %233 = add i8 %232, -1
  store i8 %233, i8* %231, align 1, !tbaa !43
  br label %239

; <label>:234:                                    ; preds = %214
  %235 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %236 = load i32, i32* %235, align 4, !tbaa !44
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %235, align 4, !tbaa !44
  %238 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  store i8 121, i8* %238, align 1, !tbaa !43
  br label %239

; <label>:239:                                    ; preds = %226, %234
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %217, i32 %5) #8
  br label %347

; <label>:240:                                    ; preds = %127, %133
  %241 = icmp eq i32 %4, 0
  br i1 %241, label %246, label %242

; <label>:242:                                    ; preds = %240
  %243 = bitcast %struct.expdesc* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %243)
  %244 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %243, i8* %244, i64 24, i32 8, i1 false) #8, !tbaa.struct !47
  %245 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %244, i8* %245, i64 24, i32 8, i1 false) #8, !tbaa.struct !47
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %245, i8* nonnull %243, i64 24, i32 8, i1 false) #8, !tbaa.struct !47
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %243)
  br label %246

; <label>:246:                                    ; preds = %240, %242
  %247 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #8
  %248 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %249 = shl i32 %248, 16
  %250 = shl i32 %247, 24
  %251 = or i32 %250, %1
  %252 = or i32 %251, %249
  %253 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %254 = load %struct.Proto*, %struct.Proto** %253, align 8, !tbaa !13
  %255 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %256 = load %struct.LexState*, %struct.LexState** %255, align 8, !tbaa !17
  %257 = getelementptr inbounds %struct.LexState, %struct.LexState* %256, i64 0, i32 6
  %258 = load %struct.lua_State*, %struct.lua_State** %257, align 8, !tbaa !18
  %259 = getelementptr inbounds %struct.Proto, %struct.Proto* %254, i64 0, i32 16
  %260 = bitcast i32** %259 to i8**
  %261 = load i8*, i8** %260, align 8, !tbaa !14
  %262 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %263 = load i32, i32* %262, align 8, !tbaa !9
  %264 = getelementptr inbounds %struct.Proto, %struct.Proto* %254, i64 0, i32 8
  %265 = tail call i8* @luaM_growaux_(%struct.lua_State* %258, i8* %261, i32 %263, i32* nonnull %264, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %266 = bitcast i8* %265 to i32*
  store i8* %265, i8** %260, align 8, !tbaa !14
  %267 = load i32, i32* %262, align 8, !tbaa !9
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %262, align 8, !tbaa !9
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  store i32 %252, i32* %270, align 4, !tbaa !16
  %271 = load %struct.LexState*, %struct.LexState** %255, align 8, !tbaa !17
  %272 = getelementptr inbounds %struct.LexState, %struct.LexState* %271, i64 0, i32 2
  %273 = load i32, i32* %272, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %254, i32 %273) #8
  %274 = load i32, i32* %262, align 8, !tbaa !9
  %275 = add nsw i32 %274, -1
  %276 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %277 = load i32, i32* %276, align 8, !tbaa !36
  %278 = icmp eq i32 %277, 7
  br i1 %278, label %279, label %283

; <label>:279:                                    ; preds = %246
  %280 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %281 = bitcast %union.anon.7* %280 to i32*
  %282 = load i32, i32* %281, align 8, !tbaa !22
  br label %283

; <label>:283:                                    ; preds = %279, %246
  %284 = phi i32 [ %282, %279 ], [ -1, %246 ]
  %285 = load i32, i32* %8, align 8, !tbaa !36
  %286 = icmp eq i32 %285, 7
  br i1 %286, label %287, label %291

; <label>:287:                                    ; preds = %283
  %288 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %289 = bitcast %union.anon.7* %288 to i32*
  %290 = load i32, i32* %289, align 8, !tbaa !22
  br label %291

; <label>:291:                                    ; preds = %287, %283
  %292 = phi i32 [ %290, %287 ], [ -1, %283 ]
  %293 = icmp sgt i32 %284, %292
  %294 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %295 = load i8, i8* %294, align 2, !tbaa !38
  %296 = zext i8 %295 to i32
  br i1 %293, label %297, label %309

; <label>:297:                                    ; preds = %291
  %298 = icmp slt i32 %284, %296
  br i1 %298, label %303, label %299

; <label>:299:                                    ; preds = %297
  %300 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %301 = load i8, i8* %300, align 4, !tbaa !20
  %302 = add i8 %301, -1
  store i8 %302, i8* %300, align 4, !tbaa !20
  br label %303

; <label>:303:                                    ; preds = %299, %297
  %304 = icmp slt i32 %292, %296
  br i1 %304, label %321, label %305

; <label>:305:                                    ; preds = %303
  %306 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %307 = load i8, i8* %306, align 4, !tbaa !20
  %308 = add i8 %307, -1
  store i8 %308, i8* %306, align 4, !tbaa !20
  br label %321

; <label>:309:                                    ; preds = %291
  %310 = icmp slt i32 %292, %296
  br i1 %310, label %315, label %311

; <label>:311:                                    ; preds = %309
  %312 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %313 = load i8, i8* %312, align 4, !tbaa !20
  %314 = add i8 %313, -1
  store i8 %314, i8* %312, align 4, !tbaa !20
  br label %315

; <label>:315:                                    ; preds = %311, %309
  %316 = icmp slt i32 %284, %296
  br i1 %316, label %321, label %317

; <label>:317:                                    ; preds = %315
  %318 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %319 = load i8, i8* %318, align 4, !tbaa !20
  %320 = add i8 %319, -1
  store i8 %320, i8* %318, align 4, !tbaa !20
  br label %321

; <label>:321:                                    ; preds = %303, %305, %315, %317
  %322 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %323 = bitcast %union.anon.7* %322 to i32*
  store i32 %275, i32* %323, align 8, !tbaa !22
  store i32 15, i32* %276, align 8, !tbaa !36
  %324 = load %struct.Proto*, %struct.Proto** %253, align 8, !tbaa !13
  %325 = load i32, i32* %262, align 8, !tbaa !9
  %326 = add nsw i32 %325, -1
  %327 = getelementptr inbounds %struct.Proto, %struct.Proto* %324, i64 0, i32 19
  %328 = load i8*, i8** %327, align 8, !tbaa !41
  %329 = sext i32 %326 to i64
  %330 = getelementptr inbounds i8, i8* %328, i64 %329
  %331 = load i8, i8* %330, align 1, !tbaa !22
  %332 = icmp eq i8 %331, -128
  br i1 %332, label %341, label %333

; <label>:333:                                    ; preds = %321
  %334 = sext i8 %331 to i32
  %335 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %336 = load i32, i32* %335, align 8, !tbaa !42
  %337 = sub nsw i32 %336, %334
  store i32 %337, i32* %335, align 8, !tbaa !42
  %338 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  %339 = load i8, i8* %338, align 1, !tbaa !43
  %340 = add i8 %339, -1
  store i8 %340, i8* %338, align 1, !tbaa !43
  br label %346

; <label>:341:                                    ; preds = %321
  %342 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %343 = load i32, i32* %342, align 4, !tbaa !44
  %344 = add nsw i32 %343, -1
  store i32 %344, i32* %342, align 4, !tbaa !44
  %345 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  store i8 121, i8* %345, align 1, !tbaa !43
  br label %346

; <label>:346:                                    ; preds = %333, %341
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %324, i32 %5) #8
  br label %347

; <label>:347:                                    ; preds = %239, %346, %126
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codeshift(%struct.FuncState*, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !36
  %8 = icmp eq i32 %7, 6
  br i1 %8, label %9, label %128

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %11 = load i32, i32* %10, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %13 = load i32, i32* %12, align 4, !tbaa !40
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %128

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %17 = load i64, i64* %16, align 8, !tbaa !22
  %18 = add i64 %17, 127
  %19 = icmp ugt i64 %18, 255
  br i1 %19, label %128, label %20

; <label>:20:                                     ; preds = %15
  %21 = icmp eq i32 %1, 48
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %20
  %23 = sub nsw i64 0, %17
  store i64 %23, i64* %16, align 8, !tbaa !22
  br label %24

; <label>:24:                                     ; preds = %22, %20
  %25 = phi i64 [ %23, %22 ], [ %17, %20 ]
  %26 = phi i32 [ 32804, %22 ], [ 36, %20 ]
  %27 = trunc i64 %25 to i32
  %28 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %29 = shl i32 %28, 16
  %30 = shl i32 %27, 24
  %31 = add i32 %30, 2130706432
  %32 = or i32 %29, %26
  %33 = or i32 %32, %31
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %35 = load %struct.Proto*, %struct.Proto** %34, align 8, !tbaa !13
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %37 = load %struct.LexState*, %struct.LexState** %36, align 8, !tbaa !17
  %38 = getelementptr inbounds %struct.LexState, %struct.LexState* %37, i64 0, i32 6
  %39 = load %struct.lua_State*, %struct.lua_State** %38, align 8, !tbaa !18
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %35, i64 0, i32 16
  %41 = bitcast i32** %40 to i8**
  %42 = load i8*, i8** %41, align 8, !tbaa !14
  %43 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %44 = load i32, i32* %43, align 8, !tbaa !9
  %45 = getelementptr inbounds %struct.Proto, %struct.Proto* %35, i64 0, i32 8
  %46 = tail call i8* @luaM_growaux_(%struct.lua_State* %39, i8* %42, i32 %44, i32* nonnull %45, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %47 = bitcast i8* %46 to i32*
  store i8* %46, i8** %41, align 8, !tbaa !14
  %48 = load i32, i32* %43, align 8, !tbaa !9
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %43, align 8, !tbaa !9
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 %33, i32* %51, align 4, !tbaa !16
  %52 = load %struct.LexState*, %struct.LexState** %36, align 8, !tbaa !17
  %53 = getelementptr inbounds %struct.LexState, %struct.LexState* %52, i64 0, i32 2
  %54 = load i32, i32* %53, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %35, i32 %54) #8
  %55 = load i32, i32* %43, align 8, !tbaa !9
  %56 = add nsw i32 %55, -1
  %57 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %58 = load i32, i32* %57, align 8, !tbaa !36
  %59 = icmp eq i32 %58, 7
  br i1 %59, label %60, label %64

; <label>:60:                                     ; preds = %24
  %61 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %62 = bitcast %union.anon.7* %61 to i32*
  %63 = load i32, i32* %62, align 8, !tbaa !22
  br label %64

; <label>:64:                                     ; preds = %60, %24
  %65 = phi i32 [ %63, %60 ], [ -1, %24 ]
  %66 = load i32, i32* %6, align 8, !tbaa !36
  %67 = icmp eq i32 %66, 7
  br i1 %67, label %68, label %72

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %70 = bitcast %union.anon.7* %69 to i32*
  %71 = load i32, i32* %70, align 8, !tbaa !22
  br label %72

; <label>:72:                                     ; preds = %68, %64
  %73 = phi i32 [ %71, %68 ], [ -1, %64 ]
  %74 = icmp sgt i32 %65, %73
  %75 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %76 = load i8, i8* %75, align 2, !tbaa !38
  %77 = zext i8 %76 to i32
  br i1 %74, label %78, label %90

; <label>:78:                                     ; preds = %72
  %79 = icmp slt i32 %65, %77
  br i1 %79, label %84, label %80

; <label>:80:                                     ; preds = %78
  %81 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %82 = load i8, i8* %81, align 4, !tbaa !20
  %83 = add i8 %82, -1
  store i8 %83, i8* %81, align 4, !tbaa !20
  br label %84

; <label>:84:                                     ; preds = %80, %78
  %85 = icmp slt i32 %73, %77
  br i1 %85, label %102, label %86

; <label>:86:                                     ; preds = %84
  %87 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %88 = load i8, i8* %87, align 4, !tbaa !20
  %89 = add i8 %88, -1
  store i8 %89, i8* %87, align 4, !tbaa !20
  br label %102

; <label>:90:                                     ; preds = %72
  %91 = icmp slt i32 %73, %77
  br i1 %91, label %96, label %92

; <label>:92:                                     ; preds = %90
  %93 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %94 = load i8, i8* %93, align 4, !tbaa !20
  %95 = add i8 %94, -1
  store i8 %95, i8* %93, align 4, !tbaa !20
  br label %96

; <label>:96:                                     ; preds = %92, %90
  %97 = icmp slt i32 %65, %77
  br i1 %97, label %102, label %98

; <label>:98:                                     ; preds = %96
  %99 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %100 = load i8, i8* %99, align 4, !tbaa !20
  %101 = add i8 %100, -1
  store i8 %101, i8* %99, align 4, !tbaa !20
  br label %102

; <label>:102:                                    ; preds = %84, %86, %96, %98
  %103 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %104 = bitcast %union.anon.7* %103 to i32*
  store i32 %56, i32* %104, align 8, !tbaa !22
  store i32 15, i32* %57, align 8, !tbaa !36
  %105 = load %struct.Proto*, %struct.Proto** %34, align 8, !tbaa !13
  %106 = load i32, i32* %43, align 8, !tbaa !9
  %107 = add nsw i32 %106, -1
  %108 = getelementptr inbounds %struct.Proto, %struct.Proto* %105, i64 0, i32 19
  %109 = load i8*, i8** %108, align 8, !tbaa !41
  %110 = sext i32 %107 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = load i8, i8* %111, align 1, !tbaa !22
  %113 = icmp eq i8 %112, -128
  br i1 %113, label %122, label %114

; <label>:114:                                    ; preds = %102
  %115 = sext i8 %112 to i32
  %116 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %117 = load i32, i32* %116, align 8, !tbaa !42
  %118 = sub nsw i32 %117, %115
  store i32 %118, i32* %116, align 8, !tbaa !42
  %119 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  %120 = load i8, i8* %119, align 1, !tbaa !43
  %121 = add i8 %120, -1
  store i8 %121, i8* %119, align 1, !tbaa !43
  br label %127

; <label>:122:                                    ; preds = %102
  %123 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %124 = load i32, i32* %123, align 4, !tbaa !44
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %123, align 4, !tbaa !44
  %126 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  store i8 121, i8* %126, align 1, !tbaa !43
  br label %127

; <label>:127:                                    ; preds = %114, %122
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %105, i32 %4) #8
  br label %229

; <label>:128:                                    ; preds = %5, %9, %15
  %129 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #8
  %130 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %131 = shl i32 %130, 16
  %132 = shl i32 %129, 24
  %133 = or i32 %132, %1
  %134 = or i32 %133, %131
  %135 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %136 = load %struct.Proto*, %struct.Proto** %135, align 8, !tbaa !13
  %137 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %138 = load %struct.LexState*, %struct.LexState** %137, align 8, !tbaa !17
  %139 = getelementptr inbounds %struct.LexState, %struct.LexState* %138, i64 0, i32 6
  %140 = load %struct.lua_State*, %struct.lua_State** %139, align 8, !tbaa !18
  %141 = getelementptr inbounds %struct.Proto, %struct.Proto* %136, i64 0, i32 16
  %142 = bitcast i32** %141 to i8**
  %143 = load i8*, i8** %142, align 8, !tbaa !14
  %144 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %145 = load i32, i32* %144, align 8, !tbaa !9
  %146 = getelementptr inbounds %struct.Proto, %struct.Proto* %136, i64 0, i32 8
  %147 = tail call i8* @luaM_growaux_(%struct.lua_State* %140, i8* %143, i32 %145, i32* nonnull %146, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %148 = bitcast i8* %147 to i32*
  store i8* %147, i8** %142, align 8, !tbaa !14
  %149 = load i32, i32* %144, align 8, !tbaa !9
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %144, align 8, !tbaa !9
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  store i32 %134, i32* %152, align 4, !tbaa !16
  %153 = load %struct.LexState*, %struct.LexState** %137, align 8, !tbaa !17
  %154 = getelementptr inbounds %struct.LexState, %struct.LexState* %153, i64 0, i32 2
  %155 = load i32, i32* %154, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %136, i32 %155) #8
  %156 = load i32, i32* %144, align 8, !tbaa !9
  %157 = add nsw i32 %156, -1
  %158 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %159 = load i32, i32* %158, align 8, !tbaa !36
  %160 = icmp eq i32 %159, 7
  br i1 %160, label %161, label %165

; <label>:161:                                    ; preds = %128
  %162 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %163 = bitcast %union.anon.7* %162 to i32*
  %164 = load i32, i32* %163, align 8, !tbaa !22
  br label %165

; <label>:165:                                    ; preds = %161, %128
  %166 = phi i32 [ %164, %161 ], [ -1, %128 ]
  %167 = load i32, i32* %6, align 8, !tbaa !36
  %168 = icmp eq i32 %167, 7
  br i1 %168, label %169, label %173

; <label>:169:                                    ; preds = %165
  %170 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %171 = bitcast %union.anon.7* %170 to i32*
  %172 = load i32, i32* %171, align 8, !tbaa !22
  br label %173

; <label>:173:                                    ; preds = %169, %165
  %174 = phi i32 [ %172, %169 ], [ -1, %165 ]
  %175 = icmp sgt i32 %166, %174
  %176 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %177 = load i8, i8* %176, align 2, !tbaa !38
  %178 = zext i8 %177 to i32
  br i1 %175, label %179, label %191

; <label>:179:                                    ; preds = %173
  %180 = icmp slt i32 %166, %178
  br i1 %180, label %185, label %181

; <label>:181:                                    ; preds = %179
  %182 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %183 = load i8, i8* %182, align 4, !tbaa !20
  %184 = add i8 %183, -1
  store i8 %184, i8* %182, align 4, !tbaa !20
  br label %185

; <label>:185:                                    ; preds = %181, %179
  %186 = icmp slt i32 %174, %178
  br i1 %186, label %203, label %187

; <label>:187:                                    ; preds = %185
  %188 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %189 = load i8, i8* %188, align 4, !tbaa !20
  %190 = add i8 %189, -1
  store i8 %190, i8* %188, align 4, !tbaa !20
  br label %203

; <label>:191:                                    ; preds = %173
  %192 = icmp slt i32 %174, %178
  br i1 %192, label %197, label %193

; <label>:193:                                    ; preds = %191
  %194 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %195 = load i8, i8* %194, align 4, !tbaa !20
  %196 = add i8 %195, -1
  store i8 %196, i8* %194, align 4, !tbaa !20
  br label %197

; <label>:197:                                    ; preds = %193, %191
  %198 = icmp slt i32 %166, %178
  br i1 %198, label %203, label %199

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %201 = load i8, i8* %200, align 4, !tbaa !20
  %202 = add i8 %201, -1
  store i8 %202, i8* %200, align 4, !tbaa !20
  br label %203

; <label>:203:                                    ; preds = %185, %187, %197, %199
  %204 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %205 = bitcast %union.anon.7* %204 to i32*
  store i32 %157, i32* %205, align 8, !tbaa !22
  store i32 15, i32* %158, align 8, !tbaa !36
  %206 = load %struct.Proto*, %struct.Proto** %135, align 8, !tbaa !13
  %207 = load i32, i32* %144, align 8, !tbaa !9
  %208 = add nsw i32 %207, -1
  %209 = getelementptr inbounds %struct.Proto, %struct.Proto* %206, i64 0, i32 19
  %210 = load i8*, i8** %209, align 8, !tbaa !41
  %211 = sext i32 %208 to i64
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  %213 = load i8, i8* %212, align 1, !tbaa !22
  %214 = icmp eq i8 %213, -128
  br i1 %214, label %223, label %215

; <label>:215:                                    ; preds = %203
  %216 = sext i8 %213 to i32
  %217 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %218 = load i32, i32* %217, align 8, !tbaa !42
  %219 = sub nsw i32 %218, %216
  store i32 %219, i32* %217, align 8, !tbaa !42
  %220 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  %221 = load i8, i8* %220, align 1, !tbaa !43
  %222 = add i8 %221, -1
  store i8 %222, i8* %220, align 1, !tbaa !43
  br label %228

; <label>:223:                                    ; preds = %203
  %224 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %225 = load i32, i32* %224, align 4, !tbaa !44
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %224, align 4, !tbaa !44
  %227 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  store i8 121, i8* %227, align 1, !tbaa !43
  br label %228

; <label>:228:                                    ; preds = %215, %223
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %206, i32 %4) #8
  br label %229

; <label>:229:                                    ; preds = %228, %127
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codeorder(%struct.FuncState*, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture) unnamed_addr #2 {
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !36
  switch i32 %8, label %39 [
    i32 6, label %9
    i32 5, label %12
  ]

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !22
  store i64 %11, i64* %5, align 8, !tbaa !45
  br label %22

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %14 = bitcast %union.anon.7* %13 to double*
  %15 = load double, double* %14, align 8, !tbaa !22
  %16 = call i32 @luaV_flttointeger(double %15, i64* nonnull %5, i32 0) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %39, label %18

; <label>:18:                                     ; preds = %12
  %19 = load i64, i64* %5, align 8, !tbaa !45
  %20 = add i64 %19, 65535
  %21 = icmp ugt i64 %20, 131071
  br i1 %21, label %39, label %22

; <label>:22:                                     ; preds = %18, %9
  %23 = phi i32 [ 0, %9 ], [ 1, %18 ]
  %24 = phi i64 [ %11, %9 ], [ %19, %18 ]
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %26 = load i32, i32* %25, align 8, !tbaa !39
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %28 = load i32, i32* %27, align 4, !tbaa !40
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %39

; <label>:30:                                     ; preds = %22
  %31 = add i64 %24, 127
  %32 = icmp ugt i64 %31, 255
  br i1 %32, label %39, label %33

; <label>:33:                                     ; preds = %30
  store i64 %31, i64* %5, align 8, !tbaa !45
  %34 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2)
  %35 = load i64, i64* %5, align 8, !tbaa !45
  %36 = trunc i64 %35 to i32
  %37 = add i32 %1, 4
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  br label %77

; <label>:39:                                     ; preds = %4, %18, %30, %22, %12
  %40 = phi i32 [ %23, %22 ], [ %23, %30 ], [ 0, %18 ], [ 0, %12 ], [ 0, %4 ]
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %42 = load i32, i32* %41, align 8, !tbaa !36
  switch i32 %42, label %73 [
    i32 6, label %43
    i32 5, label %46
  ]

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !22
  store i64 %45, i64* %5, align 8, !tbaa !45
  br label %56

; <label>:46:                                     ; preds = %39
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %48 = bitcast %union.anon.7* %47 to double*
  %49 = load double, double* %48, align 8, !tbaa !22
  %50 = call i32 @luaV_flttointeger(double %49, i64* nonnull %5, i32 0) #8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %73, label %52

; <label>:52:                                     ; preds = %46
  %53 = load i64, i64* %5, align 8, !tbaa !45
  %54 = add i64 %53, 65535
  %55 = icmp ugt i64 %54, 131071
  br i1 %55, label %73, label %56

; <label>:56:                                     ; preds = %52, %43
  %57 = phi i32 [ %40, %43 ], [ 1, %52 ]
  %58 = phi i64 [ %45, %43 ], [ %53, %52 ]
  %59 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %60 = load i32, i32* %59, align 8, !tbaa !39
  %61 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %62 = load i32, i32* %61, align 4, !tbaa !40
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %73

; <label>:64:                                     ; preds = %56
  %65 = add i64 %58, 127
  %66 = icmp ugt i64 %65, 255
  br i1 %66, label %73, label %67

; <label>:67:                                     ; preds = %64
  store i64 %65, i64* %5, align 8, !tbaa !45
  %68 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3)
  %69 = load i64, i64* %5, align 8, !tbaa !45
  %70 = trunc i64 %69 to i32
  %71 = icmp eq i32 %1, 59
  %72 = select i1 %71, i32 65, i32 66
  br label %77

; <label>:73:                                     ; preds = %39, %52, %64, %56, %46
  %74 = phi i32 [ %57, %56 ], [ %57, %64 ], [ %40, %52 ], [ %40, %46 ], [ %40, %39 ]
  %75 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2)
  %76 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3)
  br label %77

; <label>:77:                                     ; preds = %67, %73, %33
  %78 = phi i32* [ %41, %67 ], [ %41, %73 ], [ %38, %33 ]
  %79 = phi i32 [ %57, %67 ], [ %74, %73 ], [ %23, %33 ]
  %80 = phi i32 [ %72, %67 ], [ %1, %73 ], [ %37, %33 ]
  %81 = phi i32 [ %68, %67 ], [ %75, %73 ], [ %34, %33 ]
  %82 = phi i32 [ %70, %67 ], [ %76, %73 ], [ %36, %33 ]
  %83 = load i32, i32* %78, align 8, !tbaa !36
  %84 = icmp eq i32 %83, 7
  br i1 %84, label %85, label %89

; <label>:85:                                     ; preds = %77
  %86 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %87 = bitcast %union.anon.7* %86 to i32*
  %88 = load i32, i32* %87, align 8, !tbaa !22
  br label %89

; <label>:89:                                     ; preds = %85, %77
  %90 = phi i32 [ %88, %85 ], [ -1, %77 ]
  %91 = load i32, i32* %7, align 8, !tbaa !36
  %92 = icmp eq i32 %91, 7
  br i1 %92, label %93, label %97

; <label>:93:                                     ; preds = %89
  %94 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %95 = bitcast %union.anon.7* %94 to i32*
  %96 = load i32, i32* %95, align 8, !tbaa !22
  br label %97

; <label>:97:                                     ; preds = %93, %89
  %98 = phi i32 [ %96, %93 ], [ -1, %89 ]
  %99 = icmp sgt i32 %90, %98
  %100 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %101 = load i8, i8* %100, align 2, !tbaa !38
  %102 = zext i8 %101 to i32
  br i1 %99, label %103, label %115

; <label>:103:                                    ; preds = %97
  %104 = icmp slt i32 %90, %102
  br i1 %104, label %109, label %105

; <label>:105:                                    ; preds = %103
  %106 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %107 = load i8, i8* %106, align 4, !tbaa !20
  %108 = add i8 %107, -1
  store i8 %108, i8* %106, align 4, !tbaa !20
  br label %109

; <label>:109:                                    ; preds = %105, %103
  %110 = icmp slt i32 %98, %102
  br i1 %110, label %127, label %111

; <label>:111:                                    ; preds = %109
  %112 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %113 = load i8, i8* %112, align 4, !tbaa !20
  %114 = add i8 %113, -1
  store i8 %114, i8* %112, align 4, !tbaa !20
  br label %127

; <label>:115:                                    ; preds = %97
  %116 = icmp slt i32 %98, %102
  br i1 %116, label %121, label %117

; <label>:117:                                    ; preds = %115
  %118 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %119 = load i8, i8* %118, align 4, !tbaa !20
  %120 = add i8 %119, -1
  store i8 %120, i8* %118, align 4, !tbaa !20
  br label %121

; <label>:121:                                    ; preds = %117, %115
  %122 = icmp slt i32 %90, %102
  br i1 %122, label %127, label %123

; <label>:123:                                    ; preds = %121
  %124 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %125 = load i8, i8* %124, align 4, !tbaa !20
  %126 = add i8 %125, -1
  store i8 %126, i8* %124, align 4, !tbaa !20
  br label %127

; <label>:127:                                    ; preds = %109, %111, %121, %123
  %128 = shl i32 %81, 7
  %129 = shl i32 %82, 16
  %130 = shl i32 %79, 24
  %131 = or i32 %80, %130
  %132 = or i32 %131, %128
  %133 = or i32 %132, %129
  %134 = or i32 %133, 32768
  %135 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %136 = load %struct.Proto*, %struct.Proto** %135, align 8, !tbaa !13
  %137 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %138 = load %struct.LexState*, %struct.LexState** %137, align 8, !tbaa !17
  %139 = getelementptr inbounds %struct.LexState, %struct.LexState* %138, i64 0, i32 6
  %140 = load %struct.lua_State*, %struct.lua_State** %139, align 8, !tbaa !18
  %141 = getelementptr inbounds %struct.Proto, %struct.Proto* %136, i64 0, i32 16
  %142 = bitcast i32** %141 to i8**
  %143 = load i8*, i8** %142, align 8, !tbaa !14
  %144 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %145 = load i32, i32* %144, align 8, !tbaa !9
  %146 = getelementptr inbounds %struct.Proto, %struct.Proto* %136, i64 0, i32 8
  %147 = call i8* @luaM_growaux_(%struct.lua_State* %140, i8* %143, i32 %145, i32* nonnull %146, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %148 = bitcast i8* %147 to i32*
  store i8* %147, i8** %142, align 8, !tbaa !14
  %149 = load i32, i32* %144, align 8, !tbaa !9
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %144, align 8, !tbaa !9
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  store i32 %134, i32* %152, align 4, !tbaa !16
  %153 = load %struct.LexState*, %struct.LexState** %137, align 8, !tbaa !17
  %154 = getelementptr inbounds %struct.LexState, %struct.LexState* %153, i64 0, i32 2
  %155 = load i32, i32* %154, align 8, !tbaa !19
  call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %136, i32 %155) #8
  %156 = load %struct.Proto*, %struct.Proto** %135, align 8, !tbaa !13
  %157 = load %struct.LexState*, %struct.LexState** %137, align 8, !tbaa !17
  %158 = getelementptr inbounds %struct.LexState, %struct.LexState* %157, i64 0, i32 6
  %159 = load %struct.lua_State*, %struct.lua_State** %158, align 8, !tbaa !18
  %160 = getelementptr inbounds %struct.Proto, %struct.Proto* %156, i64 0, i32 16
  %161 = bitcast i32** %160 to i8**
  %162 = load i8*, i8** %161, align 8, !tbaa !14
  %163 = load i32, i32* %144, align 8, !tbaa !9
  %164 = getelementptr inbounds %struct.Proto, %struct.Proto* %156, i64 0, i32 8
  %165 = call i8* @luaM_growaux_(%struct.lua_State* %159, i8* %162, i32 %163, i32* nonnull %164, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %166 = bitcast i8* %165 to i32*
  store i8* %165, i8** %161, align 8, !tbaa !14
  %167 = load i32, i32* %144, align 8, !tbaa !9
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %144, align 8, !tbaa !9
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  store i32 2147483449, i32* %170, align 4, !tbaa !16
  %171 = load %struct.LexState*, %struct.LexState** %137, align 8, !tbaa !17
  %172 = getelementptr inbounds %struct.LexState, %struct.LexState* %171, i64 0, i32 2
  %173 = load i32, i32* %172, align 8, !tbaa !19
  call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %156, i32 %173) #8
  %174 = load i32, i32* %144, align 8, !tbaa !9
  %175 = add nsw i32 %174, -1
  %176 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %177 = bitcast %union.anon.7* %176 to i32*
  store i32 %175, i32* %177, align 8, !tbaa !22
  store i32 14, i32* %78, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_fixline(%struct.FuncState* nocapture, i32) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %4 = load %struct.Proto*, %struct.Proto** %3, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %6 = load i32, i32* %5, align 8, !tbaa !9
  %7 = add nsw i32 %6, -1
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i64 0, i32 19
  %9 = load i8*, i8** %8, align 8, !tbaa !41
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  %12 = load i8, i8* %11, align 1, !tbaa !22
  %13 = icmp eq i8 %12, -128
  br i1 %13, label %22, label %14

; <label>:14:                                     ; preds = %2
  %15 = sext i8 %12 to i32
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %17 = load i32, i32* %16, align 8, !tbaa !42
  %18 = sub nsw i32 %17, %15
  store i32 %18, i32* %16, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  %20 = load i8, i8* %19, align 1, !tbaa !43
  %21 = add i8 %20, -1
  store i8 %21, i8* %19, align 1, !tbaa !43
  br label %27

; <label>:22:                                     ; preds = %2
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %24 = load i32, i32* %23, align 4, !tbaa !44
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4, !tbaa !44
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  store i8 121, i8* %26, align 1, !tbaa !43
  br label %27

; <label>:27:                                     ; preds = %14, %22
  tail call fastcc void @savelineinfo(%struct.FuncState* nonnull %0, %struct.Proto* %4, i32 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @savelineinfo(%struct.FuncState* nocapture, %struct.Proto*, i32) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %5 = load i32, i32* %4, align 8, !tbaa !42
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
  %16 = load i8, i8* %14, align 1, !tbaa !43
  %17 = add i8 %16, 1
  store i8 %17, i8* %14, align 1, !tbaa !43
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
  %29 = load i8*, i8** %28, align 8, !tbaa !51
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %31 = load i32, i32* %30, align 4, !tbaa !44
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 12
  %33 = tail call i8* @luaM_growaux_(%struct.lua_State* %26, i8* %29, i32 %31, i32* nonnull %32, i32 8, i32 2147483647, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #8
  %34 = bitcast i8* %33 to %struct.AbsLineInfo*
  store i8* %33, i8** %28, align 8, !tbaa !51
  %35 = load i32, i32* %30, align 4, !tbaa !44
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %34, i64 %36, i32 0
  store i32 %9, i32* %37, align 4, !tbaa !52
  %38 = add nsw i32 %35, 1
  store i32 %38, i32* %30, align 4, !tbaa !44
  %39 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %34, i64 %36, i32 1
  store i32 %2, i32* %39, align 4, !tbaa !54
  store i8 0, i8* %14, align 1, !tbaa !43
  br label %40

; <label>:40:                                     ; preds = %19, %22
  %41 = phi %struct.LexState** [ %20, %19 ], [ %23, %22 ]
  %42 = phi i8 [ %21, %19 ], [ -128, %22 ]
  %43 = load %struct.LexState*, %struct.LexState** %41, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.LexState, %struct.LexState* %43, i64 0, i32 6
  %45 = load %struct.lua_State*, %struct.lua_State** %44, align 8, !tbaa !18
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 19
  %47 = load i8*, i8** %46, align 8, !tbaa !41
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 9
  %49 = tail call i8* @luaM_growaux_(%struct.lua_State* %45, i8* %47, i32 %9, i32* nonnull %48, i32 1, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  store i8* %49, i8** %46, align 8, !tbaa !41
  %50 = sext i32 %9 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 %42, i8* %51, align 1, !tbaa !22
  store i32 %2, i32* %4, align 8, !tbaa !42
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
  br i1 %10, label %11, label %39

; <label>:11:                                     ; preds = %4
  %12 = shl i32 %1, 7
  %13 = shl i32 %9, 16
  %14 = shl i32 %7, 24
  %15 = or i32 %12, %13
  %16 = or i32 %15, %14
  %17 = or i32 %16, 79
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %19 = load %struct.Proto*, %struct.Proto** %18, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %21 = load %struct.LexState*, %struct.LexState** %20, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %21, i64 0, i32 6
  %23 = load %struct.lua_State*, %struct.lua_State** %22, align 8, !tbaa !18
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i64 0, i32 16
  %25 = bitcast i32** %24 to i8**
  %26 = load i8*, i8** %25, align 8, !tbaa !14
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %28 = load i32, i32* %27, align 8, !tbaa !9
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i64 0, i32 8
  %30 = tail call i8* @luaM_growaux_(%struct.lua_State* %23, i8* %26, i32 %28, i32* nonnull %29, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %31 = bitcast i8* %30 to i32*
  store i8* %30, i8** %25, align 8, !tbaa !14
  %32 = load i32, i32* %27, align 8, !tbaa !9
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %27, align 8, !tbaa !9
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 %17, i32* %35, align 4, !tbaa !16
  %36 = load %struct.LexState*, %struct.LexState** %20, align 8, !tbaa !17
  %37 = getelementptr inbounds %struct.LexState, %struct.LexState* %36, i64 0, i32 2
  %38 = load i32, i32* %37, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %19, i32 %38) #8
  br label %90

; <label>:39:                                     ; preds = %4
  %40 = icmp slt i32 %2, 1677721551
  br i1 %40, label %41, label %87

; <label>:41:                                     ; preds = %39
  %42 = shl i32 %1, 7
  %43 = shl i32 %9, 16
  %44 = or i32 %42, %43
  %45 = or i32 %44, 79
  %46 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %47 = load %struct.Proto*, %struct.Proto** %46, align 8, !tbaa !13
  %48 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %49 = load %struct.LexState*, %struct.LexState** %48, align 8, !tbaa !17
  %50 = getelementptr inbounds %struct.LexState, %struct.LexState* %49, i64 0, i32 6
  %51 = load %struct.lua_State*, %struct.lua_State** %50, align 8, !tbaa !18
  %52 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i64 0, i32 16
  %53 = bitcast i32** %52 to i8**
  %54 = load i8*, i8** %53, align 8, !tbaa !14
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %56 = load i32, i32* %55, align 8, !tbaa !9
  %57 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i64 0, i32 8
  %58 = tail call i8* @luaM_growaux_(%struct.lua_State* %51, i8* %54, i32 %56, i32* nonnull %57, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %59 = bitcast i8* %58 to i32*
  store i8* %58, i8** %53, align 8, !tbaa !14
  %60 = load i32, i32* %55, align 8, !tbaa !9
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %55, align 8, !tbaa !9
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %45, i32* %63, align 4, !tbaa !16
  %64 = load %struct.LexState*, %struct.LexState** %48, align 8, !tbaa !17
  %65 = getelementptr inbounds %struct.LexState, %struct.LexState* %64, i64 0, i32 2
  %66 = load i32, i32* %65, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %47, i32 %66) #8
  %67 = load i32, i32* %55, align 8, !tbaa !9
  %68 = shl i32 %7, 7
  %69 = or i32 %68, 83
  %70 = load %struct.Proto*, %struct.Proto** %46, align 8, !tbaa !13
  %71 = load %struct.LexState*, %struct.LexState** %48, align 8, !tbaa !17
  %72 = getelementptr inbounds %struct.LexState, %struct.LexState* %71, i64 0, i32 6
  %73 = load %struct.lua_State*, %struct.lua_State** %72, align 8, !tbaa !18
  %74 = getelementptr inbounds %struct.Proto, %struct.Proto* %70, i64 0, i32 16
  %75 = bitcast i32** %74 to i8**
  %76 = load i8*, i8** %75, align 8, !tbaa !14
  %77 = getelementptr inbounds %struct.Proto, %struct.Proto* %70, i64 0, i32 8
  %78 = tail call i8* @luaM_growaux_(%struct.lua_State* %73, i8* %76, i32 %67, i32* nonnull %77, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %79 = bitcast i8* %78 to i32*
  store i8* %78, i8** %75, align 8, !tbaa !14
  %80 = load i32, i32* %55, align 8, !tbaa !9
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %55, align 8, !tbaa !9
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 %69, i32* %83, align 4, !tbaa !16
  %84 = load %struct.LexState*, %struct.LexState** %48, align 8, !tbaa !17
  %85 = getelementptr inbounds %struct.LexState, %struct.LexState* %84, i64 0, i32 2
  %86 = load i32, i32* %85, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %70, i32 %86) #8
  br label %90

; <label>:87:                                     ; preds = %39
  %88 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %89 = load %struct.LexState*, %struct.LexState** %88, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)) #7
  unreachable

; <label>:90:                                     ; preds = %41, %11
  %91 = trunc i32 %1 to i8
  %92 = add i8 %91, 1
  %93 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  store i8 %92, i8* %93, align 4, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_finish(%struct.FuncState* nocapture readonly) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %3 = load %struct.Proto*, %struct.Proto** %2, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %5 = load i32, i32* %4, align 8, !tbaa !9
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %90

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 16
  %9 = load i32*, i32** %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 17
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 4
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 3
  br label %13

; <label>:13:                                     ; preds = %7, %84
  %14 = phi i64 [ 0, %7 ], [ %85, %84 ]
  %15 = phi i32 [ 0, %7 ], [ %86, %84 ]
  %16 = getelementptr inbounds i32, i32* %9, i64 %14
  %17 = load i32, i32* %16, align 4, !tbaa !16
  %18 = trunc i32 %17 to i7
  switch i7 %18, label %84 [
    i7 -56, label %19
    i7 -55, label %19
    i7 -57, label %28
    i7 -58, label %28
    i7 57, label %51
  ]

; <label>:19:                                     ; preds = %13, %13
  %20 = load i8, i8* %10, align 2, !tbaa !55
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %19
  %23 = load i8, i8* %11, align 1, !tbaa !56
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %84, label %25

; <label>:25:                                     ; preds = %22, %19
  %26 = and i32 %17, -128
  %27 = or i32 %26, 71
  store i32 %27, i32* %16, align 4, !tbaa !16
  br label %28

; <label>:28:                                     ; preds = %13, %13, %25
  %29 = phi i32 [ %17, %13 ], [ %17, %13 ], [ %27, %25 ]
  %30 = load i8, i8* %10, align 2, !tbaa !55
  %31 = icmp eq i8 %30, 0
  %32 = load i8, i8* %11, align 1, !tbaa !56
  br i1 %31, label %33, label %37

; <label>:33:                                     ; preds = %28
  %34 = icmp eq i8 %32, 0
  br i1 %34, label %84, label %35

; <label>:35:                                     ; preds = %33
  %36 = and i32 %29, 16744447
  br label %40

; <label>:37:                                     ; preds = %28
  %38 = and i32 %29, 16744447
  %39 = icmp eq i8 %32, 0
  br i1 %39, label %45, label %40

; <label>:40:                                     ; preds = %35, %37
  %41 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %42 = load i8, i8* %12, align 2, !tbaa !57
  %43 = zext i8 %42 to i32
  %44 = add nuw nsw i32 %43, 1
  br label %45

; <label>:45:                                     ; preds = %37, %40
  %46 = phi i32 [ %41, %40 ], [ %38, %37 ]
  %47 = phi i32 [ %44, %40 ], [ 0, %37 ]
  %48 = shl i32 %47, 24
  %49 = or i32 %46, %48
  %50 = or i32 %49, 32768
  store i32 %50, i32* %16, align 4, !tbaa !16
  br label %84

; <label>:51:                                     ; preds = %13
  %52 = trunc i64 %14 to i32
  br label %53

; <label>:53:                                     ; preds = %91, %51
  %54 = phi i32 [ %52, %51 ], [ %94, %91 ]
  %55 = phi i32 [ 0, %51 ], [ %95, %91 ]
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %9, i64 %56
  %58 = load i32, i32* %57, align 4, !tbaa !16
  %59 = and i32 %58, 127
  %60 = icmp eq i32 %59, 57
  br i1 %60, label %61, label %70

; <label>:61:                                     ; preds = %53
  %62 = lshr i32 %58, 7
  %63 = add i32 %54, -16777214
  %64 = add i32 %63, %62
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %9, i64 %65
  %67 = load i32, i32* %66, align 4, !tbaa !16
  %68 = and i32 %67, 127
  %69 = icmp eq i32 %68, 57
  br i1 %69, label %91, label %70

; <label>:70:                                     ; preds = %91, %61, %53
  %71 = phi i32 [ %54, %53 ], [ %64, %61 ], [ %94, %91 ]
  %72 = xor i32 %15, -1
  %73 = add i32 %71, %72
  %74 = add i32 %73, 16777215
  %75 = icmp ult i32 %74, 33554432
  br i1 %75, label %79, label %76

; <label>:76:                                     ; preds = %70
  %77 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %78 = load %struct.LexState*, %struct.LexState** %77, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable

; <label>:79:                                     ; preds = %70
  %80 = and i32 %17, 127
  %81 = shl i32 %73, 7
  %82 = add i32 %81, 2147483520
  %83 = or i32 %80, %82
  store i32 %83, i32* %16, align 4, !tbaa !16
  br label %84

; <label>:84:                                     ; preds = %22, %33, %13, %45, %79
  %85 = add nuw nsw i64 %14, 1
  %86 = add nuw nsw i32 %15, 1
  %87 = load i32, i32* %4, align 8, !tbaa !9
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %85, %88
  br i1 %89, label %13, label %90

; <label>:90:                                     ; preds = %84, %1
  ret void

; <label>:91:                                     ; preds = %61
  %92 = lshr i32 %67, 7
  %93 = add i32 %64, -16777214
  %94 = add i32 %93, %92
  %95 = add nuw nsw i32 %55, 2
  %96 = icmp ult i32 %95, 100
  br i1 %96, label %53, label %70
}

; Function Attrs: norecurse nounwind uwtable
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

declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32, i32*, i32, i32, i8*) local_unnamed_addr #6

declare hidden %struct.TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.TValue*) local_unnamed_addr #6

declare hidden i32 @luaV_equalobj(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #6

declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @discharge2reg(%struct.FuncState*, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  %4 = alloca %struct.TValue, align 8
  %5 = alloca i64, align 8
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !36
  switch i32 %7, label %277 [
    i32 1, label %8
    i32 3, label %9
    i32 2, label %9
    i32 4, label %37
    i32 5, label %111
    i32 6, label %226
    i32 15, label %229
    i32 7, label %244
  ]

; <label>:8:                                      ; preds = %3
  tail call void @luaK_nil(%struct.FuncState* %0, i32 %2, i32 1)
  br label %274

; <label>:9:                                      ; preds = %3, %3
  %10 = icmp eq i32 %7, 2
  %11 = zext i1 %10 to i32
  %12 = shl i32 %2, 7
  %13 = shl nuw nsw i32 %11, 16
  %14 = or i32 %12, %13
  %15 = or i32 %14, 5
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %17 = load %struct.Proto*, %struct.Proto** %16, align 8, !tbaa !13
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %19 = load %struct.LexState*, %struct.LexState** %18, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %19, i64 0, i32 6
  %21 = load %struct.lua_State*, %struct.lua_State** %20, align 8, !tbaa !18
  %22 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i64 0, i32 16
  %23 = bitcast i32** %22 to i8**
  %24 = load i8*, i8** %23, align 8, !tbaa !14
  %25 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %26 = load i32, i32* %25, align 8, !tbaa !9
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i64 0, i32 8
  %28 = tail call i8* @luaM_growaux_(%struct.lua_State* %21, i8* %24, i32 %26, i32* nonnull %27, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %29 = bitcast i8* %28 to i32*
  store i8* %28, i8** %23, align 8, !tbaa !14
  %30 = load i32, i32* %25, align 8, !tbaa !9
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %25, align 8, !tbaa !9
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 %15, i32* %33, align 4, !tbaa !16
  %34 = load %struct.LexState*, %struct.LexState** %18, align 8, !tbaa !17
  %35 = getelementptr inbounds %struct.LexState, %struct.LexState* %34, i64 0, i32 2
  %36 = load i32, i32* %35, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %17, i32 %36) #8
  br label %274

; <label>:37:                                     ; preds = %3
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %39 = bitcast %union.anon.7* %38 to i32*
  %40 = load i32, i32* %39, align 8, !tbaa !22
  %41 = icmp slt i32 %40, 131072
  %42 = shl i32 %2, 7
  br i1 %41, label %43, label %68

; <label>:43:                                     ; preds = %37
  %44 = shl i32 %40, 15
  %45 = or i32 %42, %44
  %46 = or i32 %45, 3
  %47 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %48 = load %struct.Proto*, %struct.Proto** %47, align 8, !tbaa !13
  %49 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %50 = load %struct.LexState*, %struct.LexState** %49, align 8, !tbaa !17
  %51 = getelementptr inbounds %struct.LexState, %struct.LexState* %50, i64 0, i32 6
  %52 = load %struct.lua_State*, %struct.lua_State** %51, align 8, !tbaa !18
  %53 = getelementptr inbounds %struct.Proto, %struct.Proto* %48, i64 0, i32 16
  %54 = bitcast i32** %53 to i8**
  %55 = load i8*, i8** %54, align 8, !tbaa !14
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %57 = load i32, i32* %56, align 8, !tbaa !9
  %58 = getelementptr inbounds %struct.Proto, %struct.Proto* %48, i64 0, i32 8
  %59 = tail call i8* @luaM_growaux_(%struct.lua_State* %52, i8* %55, i32 %57, i32* nonnull %58, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %60 = bitcast i8* %59 to i32*
  store i8* %59, i8** %54, align 8, !tbaa !14
  %61 = load i32, i32* %56, align 8, !tbaa !9
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %56, align 8, !tbaa !9
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %46, i32* %64, align 4, !tbaa !16
  %65 = load %struct.LexState*, %struct.LexState** %49, align 8, !tbaa !17
  %66 = getelementptr inbounds %struct.LexState, %struct.LexState* %65, i64 0, i32 2
  %67 = load i32, i32* %66, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %48, i32 %67) #8
  br label %274

; <label>:68:                                     ; preds = %37
  %69 = or i32 %42, 4
  %70 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %71 = load %struct.Proto*, %struct.Proto** %70, align 8, !tbaa !13
  %72 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %73 = load %struct.LexState*, %struct.LexState** %72, align 8, !tbaa !17
  %74 = getelementptr inbounds %struct.LexState, %struct.LexState* %73, i64 0, i32 6
  %75 = load %struct.lua_State*, %struct.lua_State** %74, align 8, !tbaa !18
  %76 = getelementptr inbounds %struct.Proto, %struct.Proto* %71, i64 0, i32 16
  %77 = bitcast i32** %76 to i8**
  %78 = load i8*, i8** %77, align 8, !tbaa !14
  %79 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %80 = load i32, i32* %79, align 8, !tbaa !9
  %81 = getelementptr inbounds %struct.Proto, %struct.Proto* %71, i64 0, i32 8
  %82 = tail call i8* @luaM_growaux_(%struct.lua_State* %75, i8* %78, i32 %80, i32* nonnull %81, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %83 = bitcast i8* %82 to i32*
  store i8* %82, i8** %77, align 8, !tbaa !14
  %84 = load i32, i32* %79, align 8, !tbaa !9
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %79, align 8, !tbaa !9
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32 %69, i32* %87, align 4, !tbaa !16
  %88 = load %struct.LexState*, %struct.LexState** %72, align 8, !tbaa !17
  %89 = getelementptr inbounds %struct.LexState, %struct.LexState* %88, i64 0, i32 2
  %90 = load i32, i32* %89, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %71, i32 %90) #8
  %91 = load i32, i32* %79, align 8, !tbaa !9
  %92 = shl i32 %40, 7
  %93 = or i32 %92, 83
  %94 = load %struct.Proto*, %struct.Proto** %70, align 8, !tbaa !13
  %95 = load %struct.LexState*, %struct.LexState** %72, align 8, !tbaa !17
  %96 = getelementptr inbounds %struct.LexState, %struct.LexState* %95, i64 0, i32 6
  %97 = load %struct.lua_State*, %struct.lua_State** %96, align 8, !tbaa !18
  %98 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i64 0, i32 16
  %99 = bitcast i32** %98 to i8**
  %100 = load i8*, i8** %99, align 8, !tbaa !14
  %101 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i64 0, i32 8
  %102 = tail call i8* @luaM_growaux_(%struct.lua_State* %97, i8* %100, i32 %91, i32* nonnull %101, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %103 = bitcast i8* %102 to i32*
  store i8* %102, i8** %99, align 8, !tbaa !14
  %104 = load i32, i32* %79, align 8, !tbaa !9
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %79, align 8, !tbaa !9
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32 %93, i32* %107, align 4, !tbaa !16
  %108 = load %struct.LexState*, %struct.LexState** %72, align 8, !tbaa !17
  %109 = getelementptr inbounds %struct.LexState, %struct.LexState* %108, i64 0, i32 2
  %110 = load i32, i32* %109, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %94, i32 %110) #8
  br label %274

; <label>:111:                                    ; preds = %3
  %112 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %113 = bitcast %union.anon.7* %112 to double*
  %114 = load double, double* %113, align 8, !tbaa !22
  %115 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %115) #8
  %116 = call i32 @luaV_flttointeger(double %114, i64* nonnull %5, i32 0) #8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %150, label %118

; <label>:118:                                    ; preds = %111
  %119 = load i64, i64* %5, align 8, !tbaa !45
  %120 = add i64 %119, 65535
  %121 = icmp ugt i64 %120, 131071
  br i1 %121, label %150, label %122

; <label>:122:                                    ; preds = %118
  %123 = trunc i64 %119 to i32
  %124 = shl i32 %2, 7
  %125 = shl i32 %123, 15
  %126 = add i32 %125, 2147450880
  %127 = or i32 %124, %126
  %128 = or i32 %127, 2
  %129 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %130 = load %struct.Proto*, %struct.Proto** %129, align 8, !tbaa !13
  %131 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %132 = load %struct.LexState*, %struct.LexState** %131, align 8, !tbaa !17
  %133 = getelementptr inbounds %struct.LexState, %struct.LexState* %132, i64 0, i32 6
  %134 = load %struct.lua_State*, %struct.lua_State** %133, align 8, !tbaa !18
  %135 = getelementptr inbounds %struct.Proto, %struct.Proto* %130, i64 0, i32 16
  %136 = bitcast i32** %135 to i8**
  %137 = load i8*, i8** %136, align 8, !tbaa !14
  %138 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %139 = load i32, i32* %138, align 8, !tbaa !9
  %140 = getelementptr inbounds %struct.Proto, %struct.Proto* %130, i64 0, i32 8
  %141 = call i8* @luaM_growaux_(%struct.lua_State* %134, i8* %137, i32 %139, i32* nonnull %140, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %142 = bitcast i8* %141 to i32*
  store i8* %141, i8** %136, align 8, !tbaa !14
  %143 = load i32, i32* %138, align 8, !tbaa !9
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %138, align 8, !tbaa !9
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  store i32 %128, i32* %146, align 4, !tbaa !16
  %147 = load %struct.LexState*, %struct.LexState** %131, align 8, !tbaa !17
  %148 = getelementptr inbounds %struct.LexState, %struct.LexState* %147, i64 0, i32 2
  %149 = load i32, i32* %148, align 8, !tbaa !19
  call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %130, i32 %149) #8
  br label %225

; <label>:150:                                    ; preds = %118, %111
  %151 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %151) #8
  %152 = bitcast %struct.TValue* %4 to double*
  store double %114, double* %152, align 8, !tbaa !22
  %153 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 19, i8* %153, align 8, !tbaa !25
  %154 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %4, %struct.TValue* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %151) #8
  %155 = icmp slt i32 %154, 131072
  %156 = shl i32 %2, 7
  br i1 %155, label %157, label %182

; <label>:157:                                    ; preds = %150
  %158 = shl i32 %154, 15
  %159 = or i32 %156, %158
  %160 = or i32 %159, 3
  %161 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %162 = load %struct.Proto*, %struct.Proto** %161, align 8, !tbaa !13
  %163 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %164 = load %struct.LexState*, %struct.LexState** %163, align 8, !tbaa !17
  %165 = getelementptr inbounds %struct.LexState, %struct.LexState* %164, i64 0, i32 6
  %166 = load %struct.lua_State*, %struct.lua_State** %165, align 8, !tbaa !18
  %167 = getelementptr inbounds %struct.Proto, %struct.Proto* %162, i64 0, i32 16
  %168 = bitcast i32** %167 to i8**
  %169 = load i8*, i8** %168, align 8, !tbaa !14
  %170 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %171 = load i32, i32* %170, align 8, !tbaa !9
  %172 = getelementptr inbounds %struct.Proto, %struct.Proto* %162, i64 0, i32 8
  %173 = call i8* @luaM_growaux_(%struct.lua_State* %166, i8* %169, i32 %171, i32* nonnull %172, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %174 = bitcast i8* %173 to i32*
  store i8* %173, i8** %168, align 8, !tbaa !14
  %175 = load i32, i32* %170, align 8, !tbaa !9
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %170, align 8, !tbaa !9
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  store i32 %160, i32* %178, align 4, !tbaa !16
  %179 = load %struct.LexState*, %struct.LexState** %163, align 8, !tbaa !17
  %180 = getelementptr inbounds %struct.LexState, %struct.LexState* %179, i64 0, i32 2
  %181 = load i32, i32* %180, align 8, !tbaa !19
  call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %162, i32 %181) #8
  br label %225

; <label>:182:                                    ; preds = %150
  %183 = or i32 %156, 4
  %184 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %185 = load %struct.Proto*, %struct.Proto** %184, align 8, !tbaa !13
  %186 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %187 = load %struct.LexState*, %struct.LexState** %186, align 8, !tbaa !17
  %188 = getelementptr inbounds %struct.LexState, %struct.LexState* %187, i64 0, i32 6
  %189 = load %struct.lua_State*, %struct.lua_State** %188, align 8, !tbaa !18
  %190 = getelementptr inbounds %struct.Proto, %struct.Proto* %185, i64 0, i32 16
  %191 = bitcast i32** %190 to i8**
  %192 = load i8*, i8** %191, align 8, !tbaa !14
  %193 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %194 = load i32, i32* %193, align 8, !tbaa !9
  %195 = getelementptr inbounds %struct.Proto, %struct.Proto* %185, i64 0, i32 8
  %196 = call i8* @luaM_growaux_(%struct.lua_State* %189, i8* %192, i32 %194, i32* nonnull %195, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %197 = bitcast i8* %196 to i32*
  store i8* %196, i8** %191, align 8, !tbaa !14
  %198 = load i32, i32* %193, align 8, !tbaa !9
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %193, align 8, !tbaa !9
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  store i32 %183, i32* %201, align 4, !tbaa !16
  %202 = load %struct.LexState*, %struct.LexState** %186, align 8, !tbaa !17
  %203 = getelementptr inbounds %struct.LexState, %struct.LexState* %202, i64 0, i32 2
  %204 = load i32, i32* %203, align 8, !tbaa !19
  call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %185, i32 %204) #8
  %205 = load i32, i32* %193, align 8, !tbaa !9
  %206 = shl i32 %154, 7
  %207 = or i32 %206, 83
  %208 = load %struct.Proto*, %struct.Proto** %184, align 8, !tbaa !13
  %209 = load %struct.LexState*, %struct.LexState** %186, align 8, !tbaa !17
  %210 = getelementptr inbounds %struct.LexState, %struct.LexState* %209, i64 0, i32 6
  %211 = load %struct.lua_State*, %struct.lua_State** %210, align 8, !tbaa !18
  %212 = getelementptr inbounds %struct.Proto, %struct.Proto* %208, i64 0, i32 16
  %213 = bitcast i32** %212 to i8**
  %214 = load i8*, i8** %213, align 8, !tbaa !14
  %215 = getelementptr inbounds %struct.Proto, %struct.Proto* %208, i64 0, i32 8
  %216 = call i8* @luaM_growaux_(%struct.lua_State* %211, i8* %214, i32 %205, i32* nonnull %215, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %217 = bitcast i8* %216 to i32*
  store i8* %216, i8** %213, align 8, !tbaa !14
  %218 = load i32, i32* %193, align 8, !tbaa !9
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %193, align 8, !tbaa !9
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  store i32 %207, i32* %221, align 4, !tbaa !16
  %222 = load %struct.LexState*, %struct.LexState** %186, align 8, !tbaa !17
  %223 = getelementptr inbounds %struct.LexState, %struct.LexState* %222, i64 0, i32 2
  %224 = load i32, i32* %223, align 8, !tbaa !19
  call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %208, i32 %224) #8
  br label %225

; <label>:225:                                    ; preds = %122, %157, %182
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %115) #8
  br label %274

; <label>:226:                                    ; preds = %3
  %227 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  %228 = load i64, i64* %227, align 8, !tbaa !22
  tail call void @luaK_int(%struct.FuncState* %0, i32 %2, i64 %228)
  br label %274

; <label>:229:                                    ; preds = %3
  %230 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %231 = load %struct.Proto*, %struct.Proto** %230, align 8, !tbaa !13
  %232 = getelementptr inbounds %struct.Proto, %struct.Proto* %231, i64 0, i32 16
  %233 = load i32*, i32** %232, align 8, !tbaa !14
  %234 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %235 = bitcast %union.anon.7* %234 to i32*
  %236 = load i32, i32* %235, align 8, !tbaa !22
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %233, i64 %237
  %239 = load i32, i32* %238, align 4, !tbaa !16
  %240 = and i32 %239, -32641
  %241 = shl i32 %2, 7
  %242 = and i32 %241, 32640
  %243 = or i32 %240, %242
  store i32 %243, i32* %238, align 4, !tbaa !16
  br label %274

; <label>:244:                                    ; preds = %3
  %245 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %246 = bitcast %union.anon.7* %245 to i32*
  %247 = load i32, i32* %246, align 8, !tbaa !22
  %248 = icmp eq i32 %247, %2
  br i1 %248, label %274, label %249

; <label>:249:                                    ; preds = %244
  %250 = shl i32 %2, 7
  %251 = shl i32 %247, 16
  %252 = or i32 %251, %250
  %253 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %254 = load %struct.Proto*, %struct.Proto** %253, align 8, !tbaa !13
  %255 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %256 = load %struct.LexState*, %struct.LexState** %255, align 8, !tbaa !17
  %257 = getelementptr inbounds %struct.LexState, %struct.LexState* %256, i64 0, i32 6
  %258 = load %struct.lua_State*, %struct.lua_State** %257, align 8, !tbaa !18
  %259 = getelementptr inbounds %struct.Proto, %struct.Proto* %254, i64 0, i32 16
  %260 = bitcast i32** %259 to i8**
  %261 = load i8*, i8** %260, align 8, !tbaa !14
  %262 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %263 = load i32, i32* %262, align 8, !tbaa !9
  %264 = getelementptr inbounds %struct.Proto, %struct.Proto* %254, i64 0, i32 8
  %265 = tail call i8* @luaM_growaux_(%struct.lua_State* %258, i8* %261, i32 %263, i32* nonnull %264, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %266 = bitcast i8* %265 to i32*
  store i8* %265, i8** %260, align 8, !tbaa !14
  %267 = load i32, i32* %262, align 8, !tbaa !9
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %262, align 8, !tbaa !9
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  store i32 %252, i32* %270, align 4, !tbaa !16
  %271 = load %struct.LexState*, %struct.LexState** %255, align 8, !tbaa !17
  %272 = getelementptr inbounds %struct.LexState, %struct.LexState* %271, i64 0, i32 2
  %273 = load i32, i32* %272, align 8, !tbaa !19
  tail call fastcc void @savelineinfo(%struct.FuncState* %0, %struct.Proto* %254, i32 %273) #8
  br label %274

; <label>:274:                                    ; preds = %68, %43, %244, %249, %229, %226, %225, %9, %8
  %275 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %276 = bitcast %union.anon.7* %275 to i32*
  store i32 %2, i32* %276, align 8, !tbaa !22
  store i32 7, i32* %6, align 8, !tbaa !36
  br label %277

; <label>:277:                                    ; preds = %3, %274
  ret void
}

declare hidden i32 @luaV_flttointeger(double, i64*, i32) local_unnamed_addr #6

declare hidden i32 @luaO_rawarith(%struct.lua_State*, i32, %struct.TValue*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #6

declare hidden i32 @luaV_tointegerns(%struct.TValue*, i64*, i32) local_unnamed_addr #6

attributes #0 = { noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

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
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!15, !5, i64 9}
!34 = !{!35, !5, i64 9}
!35 = !{!"GCObject", !8, i64 0, !5, i64 8, !5, i64 9}
!36 = !{!37, !5, i64 0}
!37 = !{!"expdesc", !5, i64 0, !5, i64 8, !4, i64 16, !4, i64 20}
!38 = !{!10, !5, i64 66}
!39 = !{!37, !4, i64 16}
!40 = !{!37, !4, i64 20}
!41 = !{!15, !8, i64 88}
!42 = !{!10, !4, i64 40}
!43 = !{!10, !5, i64 69}
!44 = !{!10, !4, i64 52}
!45 = !{!46, !46, i64 0}
!46 = !{!"long long", !5, i64 0}
!47 = !{i64 0, i64 4, !22, i64 8, i64 8, !45, i64 8, i64 8, !48, i64 8, i64 4, !16, i64 8, i64 2, !50, i64 10, i64 1, !22, i64 16, i64 4, !16, i64 20, i64 4, !16}
!48 = !{!49, !49, i64 0}
!49 = !{!"double", !5, i64 0}
!50 = !{!11, !11, i64 0}
!51 = !{!15, !8, i64 96}
!52 = !{!53, !4, i64 0}
!53 = !{!"AbsLineInfo", !4, i64 0, !4, i64 4}
!54 = !{!53, !4, i64 4}
!55 = !{!10, !5, i64 70}
!56 = !{!15, !5, i64 11}
!57 = !{!15, !5, i64 10}
