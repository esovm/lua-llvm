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
  br label %54

; <label>:51:                                     ; preds = %34, %19
  %52 = add nsw i32 %2, -1
  %53 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %0, i32 6, i32 %1, i32 %52, i32 0, i32 0)
  br label %54

; <label>:54:                                     ; preds = %38, %51
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
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %37 = load i32, i32* %36, align 8, !tbaa !20
  %38 = sub nsw i32 %35, %37
  %39 = load i32, i32* %24, align 8, !tbaa !9
  %40 = add nsw i32 %39, -1
  %41 = icmp sgt i32 %38, -1
  %42 = sub i32 0, %38
  %43 = select i1 %41, i32 %38, i32 %42
  %44 = icmp sgt i32 %43, 127
  %45 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  br i1 %44, label %52, label %46

; <label>:46:                                     ; preds = %6
  %47 = load i8, i8* %45, align 1, !tbaa !21
  %48 = add i8 %47, 1
  store i8 %48, i8* %45, align 1, !tbaa !21
  %49 = icmp ugt i8 %47, 120
  br i1 %49, label %52, label %50

; <label>:50:                                     ; preds = %46
  %51 = trunc i32 %38 to i8
  br label %69

; <label>:52:                                     ; preds = %46, %6
  %53 = getelementptr inbounds %struct.LexState, %struct.LexState* %33, i64 0, i32 6
  %54 = load %struct.lua_State*, %struct.lua_State** %53, align 8, !tbaa !18
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 20
  %56 = bitcast %struct.AbsLineInfo** %55 to i8**
  %57 = load i8*, i8** %56, align 8, !tbaa !22
  %58 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %59 = load i32, i32* %58, align 4, !tbaa !23
  %60 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 12
  %61 = tail call i8* @luaM_growaux_(%struct.lua_State* %54, i8* %57, i32 %59, i32* nonnull %60, i32 8, i32 2147483647, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #8
  %62 = bitcast i8* %61 to %struct.AbsLineInfo*
  store i8* %61, i8** %56, align 8, !tbaa !22
  %63 = load i32, i32* %58, align 4, !tbaa !23
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %62, i64 %64, i32 0
  store i32 %40, i32* %65, align 4, !tbaa !24
  %66 = add nsw i32 %63, 1
  store i32 %66, i32* %58, align 4, !tbaa !23
  %67 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %62, i64 %64, i32 1
  store i32 %35, i32* %67, align 4, !tbaa !26
  store i8 0, i8* %45, align 1, !tbaa !21
  %68 = load %struct.LexState*, %struct.LexState** %17, align 8, !tbaa !17
  br label %69

; <label>:69:                                     ; preds = %50, %52
  %70 = phi %struct.LexState* [ %33, %50 ], [ %68, %52 ]
  %71 = phi i8 [ %51, %50 ], [ -128, %52 ]
  %72 = getelementptr inbounds %struct.LexState, %struct.LexState* %70, i64 0, i32 6
  %73 = load %struct.lua_State*, %struct.lua_State** %72, align 8, !tbaa !18
  %74 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 19
  %75 = load i8*, i8** %74, align 8, !tbaa !27
  %76 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 9
  %77 = tail call i8* @luaM_growaux_(%struct.lua_State* %73, i8* %75, i32 %40, i32* nonnull %76, i32 1, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  store i8* %77, i8** %74, align 8, !tbaa !27
  %78 = sext i32 %40 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8 %71, i8* %79, align 1, !tbaa !28
  store i32 %35, i32* %36, align 8, !tbaa !20
  %80 = load i32, i32* %24, align 8, !tbaa !9
  %81 = add nsw i32 %80, -1
  ret i32 %81
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
  %10 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %11 = load %struct.Proto*, %struct.Proto** %10, align 8, !tbaa !13
  %12 = getelementptr %struct.Proto, %struct.Proto* %11, i64 0, i32 16
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
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %24 = load i32, i32* %23, align 8, !tbaa !20
  %25 = sub nsw i32 %22, %24
  %26 = load i32, i32* %11, align 8, !tbaa !9
  %27 = add nsw i32 %26, -1
  %28 = icmp sgt i32 %25, -1
  %29 = sub i32 0, %25
  %30 = select i1 %28, i32 %25, i32 %29
  %31 = icmp sgt i32 %30, 127
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  br i1 %31, label %39, label %33

; <label>:33:                                     ; preds = %1
  %34 = load i8, i8* %32, align 1, !tbaa !21
  %35 = add i8 %34, 1
  store i8 %35, i8* %32, align 1, !tbaa !21
  %36 = icmp ugt i8 %34, 120
  br i1 %36, label %39, label %37

; <label>:37:                                     ; preds = %33
  %38 = trunc i32 %25 to i8
  br label %56

; <label>:39:                                     ; preds = %33, %1
  %40 = getelementptr inbounds %struct.LexState, %struct.LexState* %20, i64 0, i32 6
  %41 = load %struct.lua_State*, %struct.lua_State** %40, align 8, !tbaa !18
  %42 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 20
  %43 = bitcast %struct.AbsLineInfo** %42 to i8**
  %44 = load i8*, i8** %43, align 8, !tbaa !22
  %45 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %46 = load i32, i32* %45, align 4, !tbaa !23
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 12
  %48 = tail call i8* @luaM_growaux_(%struct.lua_State* %41, i8* %44, i32 %46, i32* nonnull %47, i32 8, i32 2147483647, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #8
  %49 = bitcast i8* %48 to %struct.AbsLineInfo*
  store i8* %48, i8** %43, align 8, !tbaa !22
  %50 = load i32, i32* %45, align 4, !tbaa !23
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %49, i64 %51, i32 0
  store i32 %27, i32* %52, align 4, !tbaa !24
  %53 = add nsw i32 %50, 1
  store i32 %53, i32* %45, align 4, !tbaa !23
  %54 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %49, i64 %51, i32 1
  store i32 %22, i32* %54, align 4, !tbaa !26
  store i8 0, i8* %32, align 1, !tbaa !21
  %55 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !17
  br label %56

; <label>:56:                                     ; preds = %37, %39
  %57 = phi %struct.LexState* [ %20, %37 ], [ %55, %39 ]
  %58 = phi i8 [ %38, %37 ], [ -128, %39 ]
  %59 = getelementptr inbounds %struct.LexState, %struct.LexState* %57, i64 0, i32 6
  %60 = load %struct.lua_State*, %struct.lua_State** %59, align 8, !tbaa !18
  %61 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 19
  %62 = load i8*, i8** %61, align 8, !tbaa !27
  %63 = getelementptr inbounds %struct.Proto, %struct.Proto* %3, i64 0, i32 9
  %64 = tail call i8* @luaM_growaux_(%struct.lua_State* %60, i8* %62, i32 %27, i32* nonnull %63, i32 1, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  store i8* %64, i8** %61, align 8, !tbaa !27
  %65 = sext i32 %27 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 %58, i8* %66, align 1, !tbaa !28
  store i32 %22, i32* %23, align 8, !tbaa !20
  %67 = load i32, i32* %11, align 8, !tbaa !9
  %68 = add nsw i32 %67, -1
  ret i32 %68
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
define hidden i32 @luaK_getlabel(%struct.FuncState* nocapture) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %3, i32* %4, align 4, !tbaa !12
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_patchlist(%struct.FuncState* nocapture readonly, i32, i32) local_unnamed_addr #2 {
  %4 = icmp eq i32 %1, -1
  br i1 %4, label %68, label %5

; <label>:5:                                      ; preds = %3
  %6 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !tbaa !13
  %8 = getelementptr %struct.Proto, %struct.Proto* %7, i64 0, i32 16
  %9 = load i32*, i32** %8, align 8, !tbaa !14
  br label %10

; <label>:10:                                     ; preds = %60, %5
  %11 = phi i32 [ %1, %5 ], [ %20, %60 ]
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !16
  %15 = lshr i32 %14, 7
  %16 = add nsw i32 %15, -16777215
  %17 = icmp eq i32 %16, -1
  %18 = add nsw i32 %11, 1
  %19 = add nsw i32 %18, %16
  %20 = select i1 %17, i32 -1, i32 %19
  %21 = icmp sgt i32 %11, 0
  br i1 %21, label %22, label %31

; <label>:22:                                     ; preds = %10
  %23 = getelementptr inbounds i32, i32* %13, i64 -1
  %24 = load i32, i32* %23, align 4, !tbaa !16
  %25 = and i32 %24, 127
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !28
  %29 = and i8 %28, 16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %22, %10
  br label %32

; <label>:32:                                     ; preds = %31, %22
  %33 = phi i32 [ %14, %31 ], [ %24, %22 ]
  %34 = phi i32* [ %13, %31 ], [ %23, %22 ]
  %35 = and i32 %33, 127
  %36 = icmp eq i32 %35, 68
  br i1 %36, label %37, label %52

; <label>:37:                                     ; preds = %32
  %38 = lshr i32 %33, 9
  %39 = and i32 %38, 32640
  %40 = and i32 %33, 32768
  %41 = or i32 %40, %39
  %42 = or i32 %41, 67
  store i32 %42, i32* %34, align 4, !tbaa !16
  %43 = xor i32 %11, -1
  %44 = add i32 %43, %2
  %45 = add i32 %44, 16777215
  %46 = icmp ult i32 %45, 33554432
  br i1 %46, label %50, label %47

; <label>:47:                                     ; preds = %37
  %48 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %49 = load %struct.LexState*, %struct.LexState** %48, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable

; <label>:50:                                     ; preds = %37
  %51 = load i32, i32* %13, align 4, !tbaa !16
  br label %60

; <label>:52:                                     ; preds = %32
  %53 = xor i32 %11, -1
  %54 = add i32 %53, %2
  %55 = add i32 %54, 16777215
  %56 = icmp ult i32 %55, 33554432
  br i1 %56, label %60, label %57

; <label>:57:                                     ; preds = %52
  %58 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %59 = load %struct.LexState*, %struct.LexState** %58, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable

; <label>:60:                                     ; preds = %52, %50
  %61 = phi i32 [ %51, %50 ], [ %14, %52 ]
  %62 = phi i32 [ %44, %50 ], [ %54, %52 ]
  %63 = and i32 %61, 127
  %64 = shl i32 %62, 7
  %65 = add i32 %64, 2147483520
  %66 = or i32 %63, %65
  store i32 %66, i32* %13, align 4, !tbaa !16
  %67 = icmp eq i32 %20, -1
  br i1 %67, label %68, label %10

; <label>:68:                                     ; preds = %60, %3
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_patchtohere(%struct.FuncState* nocapture, i32) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %4 = load i32, i32* %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %4, i32* %5, align 4, !tbaa !12
  tail call void @luaK_patchlist(%struct.FuncState* %0, i32 %1, i32 %4)
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
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %31 = load i32, i32* %30, align 8, !tbaa !20
  %32 = sub nsw i32 %29, %31
  %33 = load i32, i32* %18, align 8, !tbaa !9
  %34 = add nsw i32 %33, -1
  %35 = icmp sgt i32 %32, -1
  %36 = sub i32 0, %32
  %37 = select i1 %35, i32 %32, i32 %36
  %38 = icmp sgt i32 %37, 127
  %39 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  br i1 %38, label %46, label %40

; <label>:40:                                     ; preds = %4
  %41 = load i8, i8* %39, align 1, !tbaa !21
  %42 = add i8 %41, 1
  store i8 %42, i8* %39, align 1, !tbaa !21
  %43 = icmp ugt i8 %41, 120
  br i1 %43, label %46, label %44

; <label>:44:                                     ; preds = %40
  %45 = trunc i32 %32 to i8
  br label %63

; <label>:46:                                     ; preds = %40, %4
  %47 = getelementptr inbounds %struct.LexState, %struct.LexState* %27, i64 0, i32 6
  %48 = load %struct.lua_State*, %struct.lua_State** %47, align 8, !tbaa !18
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 20
  %50 = bitcast %struct.AbsLineInfo** %49 to i8**
  %51 = load i8*, i8** %50, align 8, !tbaa !22
  %52 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %53 = load i32, i32* %52, align 4, !tbaa !23
  %54 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 12
  %55 = tail call i8* @luaM_growaux_(%struct.lua_State* %48, i8* %51, i32 %53, i32* nonnull %54, i32 8, i32 2147483647, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #8
  %56 = bitcast i8* %55 to %struct.AbsLineInfo*
  store i8* %55, i8** %50, align 8, !tbaa !22
  %57 = load i32, i32* %52, align 4, !tbaa !23
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %56, i64 %58, i32 0
  store i32 %34, i32* %59, align 4, !tbaa !24
  %60 = add nsw i32 %57, 1
  store i32 %60, i32* %52, align 4, !tbaa !23
  %61 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %56, i64 %58, i32 1
  store i32 %29, i32* %61, align 4, !tbaa !26
  store i8 0, i8* %39, align 1, !tbaa !21
  %62 = load %struct.LexState*, %struct.LexState** %11, align 8, !tbaa !17
  br label %63

; <label>:63:                                     ; preds = %44, %46
  %64 = phi %struct.LexState* [ %27, %44 ], [ %62, %46 ]
  %65 = phi i8 [ %45, %44 ], [ -128, %46 ]
  %66 = getelementptr inbounds %struct.LexState, %struct.LexState* %64, i64 0, i32 6
  %67 = load %struct.lua_State*, %struct.lua_State** %66, align 8, !tbaa !18
  %68 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 19
  %69 = load i8*, i8** %68, align 8, !tbaa !27
  %70 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i64 0, i32 9
  %71 = tail call i8* @luaM_growaux_(%struct.lua_State* %67, i8* %69, i32 %34, i32* nonnull %70, i32 1, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  store i8* %71, i8** %68, align 8, !tbaa !27
  %72 = sext i32 %34 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8 %65, i8* %73, align 1, !tbaa !28
  store i32 %29, i32* %30, align 8, !tbaa !20
  %74 = load i32, i32* %18, align 8, !tbaa !9
  %75 = add nsw i32 %74, -1
  ret i32 %75
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
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %32 = load i32, i32* %31, align 8, !tbaa !20
  %33 = sub nsw i32 %30, %32
  %34 = load i32, i32* %19, align 8, !tbaa !9
  %35 = add nsw i32 %34, -1
  %36 = icmp sgt i32 %33, -1
  %37 = sub i32 0, %33
  %38 = select i1 %36, i32 %33, i32 %37
  %39 = icmp sgt i32 %38, 127
  %40 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  br i1 %39, label %47, label %41

; <label>:41:                                     ; preds = %4
  %42 = load i8, i8* %40, align 1, !tbaa !21
  %43 = add i8 %42, 1
  store i8 %43, i8* %40, align 1, !tbaa !21
  %44 = icmp ugt i8 %42, 120
  br i1 %44, label %47, label %45

; <label>:45:                                     ; preds = %41
  %46 = trunc i32 %33 to i8
  br label %64

; <label>:47:                                     ; preds = %41, %4
  %48 = getelementptr inbounds %struct.LexState, %struct.LexState* %28, i64 0, i32 6
  %49 = load %struct.lua_State*, %struct.lua_State** %48, align 8, !tbaa !18
  %50 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i64 0, i32 20
  %51 = bitcast %struct.AbsLineInfo** %50 to i8**
  %52 = load i8*, i8** %51, align 8, !tbaa !22
  %53 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %54 = load i32, i32* %53, align 4, !tbaa !23
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i64 0, i32 12
  %56 = tail call i8* @luaM_growaux_(%struct.lua_State* %49, i8* %52, i32 %54, i32* nonnull %55, i32 8, i32 2147483647, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #8
  %57 = bitcast i8* %56 to %struct.AbsLineInfo*
  store i8* %56, i8** %51, align 8, !tbaa !22
  %58 = load i32, i32* %53, align 4, !tbaa !23
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %57, i64 %59, i32 0
  store i32 %35, i32* %60, align 4, !tbaa !24
  %61 = add nsw i32 %58, 1
  store i32 %61, i32* %53, align 4, !tbaa !23
  %62 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %57, i64 %59, i32 1
  store i32 %30, i32* %62, align 4, !tbaa !26
  store i8 0, i8* %40, align 1, !tbaa !21
  %63 = load %struct.LexState*, %struct.LexState** %12, align 8, !tbaa !17
  br label %64

; <label>:64:                                     ; preds = %45, %47
  %65 = phi %struct.LexState* [ %28, %45 ], [ %63, %47 ]
  %66 = phi i8 [ %46, %45 ], [ -128, %47 ]
  %67 = getelementptr inbounds %struct.LexState, %struct.LexState* %65, i64 0, i32 6
  %68 = load %struct.lua_State*, %struct.lua_State** %67, align 8, !tbaa !18
  %69 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i64 0, i32 19
  %70 = load i8*, i8** %69, align 8, !tbaa !27
  %71 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i64 0, i32 9
  %72 = tail call i8* @luaM_growaux_(%struct.lua_State* %68, i8* %70, i32 %35, i32* nonnull %71, i32 1, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  store i8* %72, i8** %69, align 8, !tbaa !27
  %73 = sext i32 %35 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 %66, i8* %74, align 1, !tbaa !28
  store i32 %30, i32* %31, align 8, !tbaa !20
  %75 = load i32, i32* %19, align 8, !tbaa !9
  %76 = add nsw i32 %75, -1
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_checkstack(%struct.FuncState* nocapture readonly, i32) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %4 = load i8, i8* %3, align 4, !tbaa !29
  %5 = zext i8 %4 to i32
  %6 = add nsw i32 %5, %1
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 5
  %10 = load i8, i8* %9, align 4, !tbaa !30
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
  store i8 %19, i8* %9, align 4, !tbaa !30
  br label %20

; <label>:20:                                     ; preds = %18, %2
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_reserveregs(%struct.FuncState* nocapture, i32) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %4 = load i8, i8* %3, align 4, !tbaa !29
  %5 = zext i8 %4 to i32
  %6 = add nsw i32 %5, %1
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 5
  %10 = load i8, i8* %9, align 4, !tbaa !30
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
  store i8 %19, i8* %9, align 4, !tbaa !30
  br label %20

; <label>:20:                                     ; preds = %2, %18
  %21 = trunc i32 %1 to i8
  %22 = add i8 %4, %21
  store i8 %22, i8* %3, align 4, !tbaa !29
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_stringK(%struct.FuncState* nocapture, %struct.TString*) local_unnamed_addr #2 {
  %3 = alloca %struct.TValue, align 8
  %4 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #8
  %5 = bitcast %struct.TValue* %3 to %struct.TString**
  store %struct.TString* %1, %struct.TString** %5, align 8, !tbaa !28
  %6 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !31
  %8 = or i8 %7, 64
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 %8, i8* %9, align 8, !tbaa !33
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
  %11 = load %struct.Table*, %struct.Table** %10, align 8, !tbaa !35
  %12 = tail call %struct.TValue* @luaH_set(%struct.lua_State* %7, %struct.Table* %11, %struct.TValue* %1) #8
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i64 0, i32 1
  %14 = load i8, i8* %13, align 8, !tbaa !33
  %15 = icmp eq i8 %14, 35
  br i1 %15, label %19, label %16

; <label>:16:                                     ; preds = %3
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7
  %18 = bitcast %struct.TValue* %12 to i64*
  br label %42

; <label>:19:                                     ; preds = %3
  %20 = bitcast %struct.TValue* %12 to i64*
  %21 = load i64, i64* %20, align 8, !tbaa !28
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 7
  %24 = load i32, i32* %23, align 4, !tbaa !36
  %25 = icmp sgt i32 %24, %22
  br i1 %25, label %26, label %42

; <label>:26:                                     ; preds = %19
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 15
  %28 = load %struct.TValue*, %struct.TValue** %27, align 8, !tbaa !37
  %29 = shl i64 %21, 32
  %30 = ashr exact i64 %29, 32
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i64 %30, i32 1
  %32 = load i8, i8* %31, align 8, !tbaa !33
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %34 = load i8, i8* %33, align 8, !tbaa !33
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
  %46 = load i32, i32* %45, align 4, !tbaa !38
  %47 = load i32, i32* %44, align 4, !tbaa !36
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %43, align 8, !tbaa !28
  store i8 35, i8* %13, align 8, !tbaa !33
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 15
  %50 = bitcast %struct.TValue** %49 to i8**
  %51 = load i8*, i8** %50, align 8, !tbaa !37
  %52 = tail call i8* @luaM_growaux_(%struct.lua_State* %7, i8* %51, i32 %47, i32* nonnull %45, i32 16, i32 33554431, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)) #8
  store i8* %52, i8** %50, align 8, !tbaa !37
  %53 = load i32, i32* %45, align 4, !tbaa !38
  %54 = icmp slt i32 %46, %53
  %55 = bitcast i8* %52 to %struct.TValue*
  br i1 %54, label %56, label %68

; <label>:56:                                     ; preds = %42
  %57 = sext i32 %46 to i64
  %58 = sext i32 %53 to i64
  %59 = add nsw i64 %57, 1
  %60 = getelementptr inbounds %struct.TValue, %struct.TValue* %55, i64 %57, i32 1
  store i8 0, i8* %60, align 8, !tbaa !33
  %61 = icmp slt i64 %59, %58
  br i1 %61, label %62, label %68

; <label>:62:                                     ; preds = %56
  br label %63

; <label>:63:                                     ; preds = %62, %63
  %64 = phi i64 [ %65, %63 ], [ %59, %62 ]
  %65 = add nsw i64 %64, 1
  %66 = getelementptr inbounds %struct.TValue, %struct.TValue* %55, i64 %64, i32 1
  store i8 0, i8* %66, align 8, !tbaa !33
  %67 = icmp slt i64 %65, %58
  br i1 %67, label %63, label %68, !llvm.loop !39

; <label>:68:                                     ; preds = %63, %56, %42
  %69 = getelementptr inbounds %struct.TValue, %struct.TValue* %55, i64 %48
  %70 = bitcast %struct.TValue* %2 to i64*
  %71 = bitcast %struct.TValue* %69 to i64*
  %72 = load i64, i64* %70, align 8
  store i64 %72, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %74 = load i8, i8* %73, align 8, !tbaa !33
  %75 = getelementptr inbounds %struct.TValue, %struct.TValue* %55, i64 %48, i32 1
  store i8 %74, i8* %75, align 8, !tbaa !33
  %76 = load i32, i32* %44, align 4, !tbaa !36
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %44, align 4, !tbaa !36
  %78 = load i8, i8* %73, align 8, !tbaa !33
  %79 = and i8 %78, 64
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %95, label %81

; <label>:81:                                     ; preds = %68
  %82 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 2
  %83 = load i8, i8* %82, align 1, !tbaa !41
  %84 = and i8 %83, 32
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %95, label %86

; <label>:86:                                     ; preds = %81
  %87 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 0, i32 0
  %88 = load %struct.GCObject*, %struct.GCObject** %87, align 8, !tbaa !28
  %89 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %88, i64 0, i32 2
  %90 = load i8, i8* %89, align 1, !tbaa !42
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
  br i1 %7, label %11, label %8

; <label>:8:                                      ; preds = %3
  %9 = trunc i64 %2 to i32
  %10 = tail call i32 @luaK_codeAsBx(%struct.FuncState* %0, i32 1, i32 %1, i32 %9)
  br label %92

; <label>:11:                                     ; preds = %3
  %12 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #8
  %13 = bitcast %struct.TValue* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #8
  %14 = inttoptr i64 %2 to i8*
  %15 = bitcast %struct.TValue* %4 to i8**
  store i8* %14, i8** %15, align 8, !tbaa !28
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 2, i8* %16, align 8, !tbaa !33
  %17 = bitcast %struct.TValue* %5 to i64*
  store i64 %2, i64* %17, align 8, !tbaa !28
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  store i8 35, i8* %18, align 8, !tbaa !33
  %19 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %4, %struct.TValue* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #8
  %20 = icmp slt i32 %19, 131072
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %11
  %22 = call i32 @luaK_codeABx(%struct.FuncState* %0, i32 3, i32 %1, i32 %19) #8
  br label %92

; <label>:23:                                     ; preds = %11
  %24 = call i32 @luaK_codeABx(%struct.FuncState* %0, i32 4, i32 %1, i32 0) #8
  %25 = shl i32 %19, 7
  %26 = or i32 %25, 83
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %28 = load %struct.Proto*, %struct.Proto** %27, align 8, !tbaa !13
  %29 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %30 = load %struct.LexState*, %struct.LexState** %29, align 8, !tbaa !17
  %31 = getelementptr inbounds %struct.LexState, %struct.LexState* %30, i64 0, i32 6
  %32 = load %struct.lua_State*, %struct.lua_State** %31, align 8, !tbaa !18
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i64 0, i32 16
  %34 = bitcast i32** %33 to i8**
  %35 = load i8*, i8** %34, align 8, !tbaa !14
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %37 = load i32, i32* %36, align 8, !tbaa !9
  %38 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i64 0, i32 8
  %39 = call i8* @luaM_growaux_(%struct.lua_State* %32, i8* %35, i32 %37, i32* nonnull %38, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %40 = bitcast i8* %39 to i32*
  store i8* %39, i8** %34, align 8, !tbaa !14
  %41 = load i32, i32* %36, align 8, !tbaa !9
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %36, align 8, !tbaa !9
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32 %26, i32* %44, align 4, !tbaa !16
  %45 = load %struct.LexState*, %struct.LexState** %29, align 8, !tbaa !17
  %46 = getelementptr inbounds %struct.LexState, %struct.LexState* %45, i64 0, i32 2
  %47 = load i32, i32* %46, align 8, !tbaa !19
  %48 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %49 = load i32, i32* %48, align 8, !tbaa !20
  %50 = sub nsw i32 %47, %49
  %51 = load i32, i32* %36, align 8, !tbaa !9
  %52 = add nsw i32 %51, -1
  %53 = icmp sgt i32 %50, -1
  %54 = sub i32 0, %50
  %55 = select i1 %53, i32 %50, i32 %54
  %56 = icmp sgt i32 %55, 127
  %57 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  br i1 %56, label %64, label %58

; <label>:58:                                     ; preds = %23
  %59 = load i8, i8* %57, align 1, !tbaa !21
  %60 = add i8 %59, 1
  store i8 %60, i8* %57, align 1, !tbaa !21
  %61 = icmp ugt i8 %59, 120
  br i1 %61, label %64, label %62

; <label>:62:                                     ; preds = %58
  %63 = trunc i32 %50 to i8
  br label %81

; <label>:64:                                     ; preds = %58, %23
  %65 = getelementptr inbounds %struct.LexState, %struct.LexState* %45, i64 0, i32 6
  %66 = load %struct.lua_State*, %struct.lua_State** %65, align 8, !tbaa !18
  %67 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i64 0, i32 20
  %68 = bitcast %struct.AbsLineInfo** %67 to i8**
  %69 = load i8*, i8** %68, align 8, !tbaa !22
  %70 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %71 = load i32, i32* %70, align 4, !tbaa !23
  %72 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i64 0, i32 12
  %73 = call i8* @luaM_growaux_(%struct.lua_State* %66, i8* %69, i32 %71, i32* nonnull %72, i32 8, i32 2147483647, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #8
  %74 = bitcast i8* %73 to %struct.AbsLineInfo*
  store i8* %73, i8** %68, align 8, !tbaa !22
  %75 = load i32, i32* %70, align 4, !tbaa !23
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %74, i64 %76, i32 0
  store i32 %52, i32* %77, align 4, !tbaa !24
  %78 = add nsw i32 %75, 1
  store i32 %78, i32* %70, align 4, !tbaa !23
  %79 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %74, i64 %76, i32 1
  store i32 %47, i32* %79, align 4, !tbaa !26
  store i8 0, i8* %57, align 1, !tbaa !21
  %80 = load %struct.LexState*, %struct.LexState** %29, align 8, !tbaa !17
  br label %81

; <label>:81:                                     ; preds = %62, %64
  %82 = phi %struct.LexState* [ %45, %62 ], [ %80, %64 ]
  %83 = phi i8 [ %63, %62 ], [ -128, %64 ]
  %84 = getelementptr inbounds %struct.LexState, %struct.LexState* %82, i64 0, i32 6
  %85 = load %struct.lua_State*, %struct.lua_State** %84, align 8, !tbaa !18
  %86 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i64 0, i32 19
  %87 = load i8*, i8** %86, align 8, !tbaa !27
  %88 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i64 0, i32 9
  %89 = call i8* @luaM_growaux_(%struct.lua_State* %85, i8* %87, i32 %52, i32* nonnull %88, i32 1, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  store i8* %89, i8** %86, align 8, !tbaa !27
  %90 = sext i32 %52 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8 %83, i8* %91, align 1, !tbaa !28
  store i32 %47, i32* %48, align 8, !tbaa !20
  br label %92

; <label>:92:                                     ; preds = %81, %21, %8
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
  %10 = load i32, i32* %9, align 8, !tbaa !28
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %7, i64 %11
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %14 = load i32, i32* %13, align 8, !tbaa !44
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
  %28 = load i8, i8* %27, align 4, !tbaa !29
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 7
  %31 = or i32 %30, %26
  store i32 %31, i32* %12, align 4, !tbaa !16
  %32 = add i8 %28, 1
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 5
  %34 = load i8, i8* %33, align 4, !tbaa !30
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
  store i8 %32, i8* %33, align 4, !tbaa !30
  br label %42

; <label>:42:                                     ; preds = %21, %41
  store i8 %32, i8* %27, align 4, !tbaa !29
  br label %43

; <label>:43:                                     ; preds = %3, %42, %15
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define hidden void @luaK_setoneret(%struct.FuncState* nocapture readonly, %struct.expdesc* nocapture) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !44
  switch i32 %4, label %31 [
    i32 16, label %5
    i32 17, label %18
  ]

; <label>:5:                                      ; preds = %2
  store i32 7, i32* %3, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 16
  %9 = load i32*, i32** %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %11 = bitcast %union.anon.7* %10 to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !28
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %9, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !16
  %16 = lshr i32 %15, 7
  %17 = and i32 %16, 255
  store i32 %17, i32* %11, align 8, !tbaa !28
  br label %31

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %20 = load %struct.Proto*, %struct.Proto** %19, align 8, !tbaa !13
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i64 0, i32 16
  %22 = load i32*, i32** %21, align 8, !tbaa !14
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %24 = bitcast %union.anon.7* %23 to i32*
  %25 = load i32, i32* %24, align 8, !tbaa !28
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !16
  %29 = and i32 %28, 16777215
  %30 = or i32 %29, 33554432
  store i32 %30, i32* %27, align 4, !tbaa !16
  store i32 15, i32* %3, align 8, !tbaa !44
  br label %31

; <label>:31:                                     ; preds = %2, %18, %5
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_dischargevars(%struct.FuncState* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !44
  switch i32 %4, label %134 [
    i32 8, label %5
    i32 9, label %6
    i32 11, label %11
    i32 12, label %22
    i32 13, label %43
    i32 10, label %64
    i32 16, label %108
    i32 17, label %121
  ]

; <label>:5:                                      ; preds = %2
  store i32 7, i32* %3, align 8, !tbaa !44
  br label %134

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %8 = bitcast %union.anon.7* %7 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !28
  %10 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 7, i32 0, i32 %9, i32 0, i32 0)
  store i32 %10, i32* %8, align 8, !tbaa !28
  store i32 15, i32* %3, align 8, !tbaa !44
  br label %134

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %13 = bitcast %union.anon.7* %12 to %struct.anon.8*
  %14 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %13, i64 0, i32 1
  %15 = load i8, i8* %14, align 2, !tbaa !28
  %16 = zext i8 %15 to i32
  %17 = bitcast %union.anon.7* %12 to i16*
  %18 = load i16, i16* %17, align 8, !tbaa !28
  %19 = sext i16 %18 to i32
  %20 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 9, i32 0, i32 %16, i32 %19, i32 0)
  %21 = bitcast %union.anon.7* %12 to i32*
  store i32 %20, i32* %21, align 8, !tbaa !28
  store i32 15, i32* %3, align 8, !tbaa !44
  br label %134

; <label>:22:                                     ; preds = %2
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %24 = bitcast %union.anon.7* %23 to %struct.anon.8*
  %25 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %24, i64 0, i32 1
  %26 = load i8, i8* %25, align 2, !tbaa !28
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %28 = load i8, i8* %27, align 2, !tbaa !46
  %29 = icmp ugt i8 %28, %26
  br i1 %29, label %35, label %30

; <label>:30:                                     ; preds = %22
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %32 = load i8, i8* %31, align 4, !tbaa !29
  %33 = add i8 %32, -1
  store i8 %33, i8* %31, align 4, !tbaa !29
  %34 = load i8, i8* %25, align 2, !tbaa !28
  br label %35

; <label>:35:                                     ; preds = %22, %30
  %36 = phi i8 [ %26, %22 ], [ %34, %30 ]
  %37 = zext i8 %36 to i32
  %38 = bitcast %union.anon.7* %23 to i16*
  %39 = load i16, i16* %38, align 8, !tbaa !28
  %40 = sext i16 %39 to i32
  %41 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %0, i32 11, i32 0, i32 %37, i32 %40, i32 0)
  %42 = bitcast %union.anon.7* %23 to i32*
  store i32 %41, i32* %42, align 8, !tbaa !28
  store i32 15, i32* %3, align 8, !tbaa !44
  br label %134

; <label>:43:                                     ; preds = %2
  %44 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %45 = bitcast %union.anon.7* %44 to %struct.anon.8*
  %46 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %45, i64 0, i32 1
  %47 = load i8, i8* %46, align 2, !tbaa !28
  %48 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %49 = load i8, i8* %48, align 2, !tbaa !46
  %50 = icmp ugt i8 %49, %47
  br i1 %50, label %56, label %51

; <label>:51:                                     ; preds = %43
  %52 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %53 = load i8, i8* %52, align 4, !tbaa !29
  %54 = add i8 %53, -1
  store i8 %54, i8* %52, align 4, !tbaa !29
  %55 = load i8, i8* %46, align 2, !tbaa !28
  br label %56

; <label>:56:                                     ; preds = %43, %51
  %57 = phi i8 [ %47, %43 ], [ %55, %51 ]
  %58 = zext i8 %57 to i32
  %59 = bitcast %union.anon.7* %44 to i16*
  %60 = load i16, i16* %59, align 8, !tbaa !28
  %61 = sext i16 %60 to i32
  %62 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %0, i32 12, i32 0, i32 %58, i32 %61, i32 0)
  %63 = bitcast %union.anon.7* %44 to i32*
  store i32 %62, i32* %63, align 8, !tbaa !28
  store i32 15, i32* %3, align 8, !tbaa !44
  br label %134

; <label>:64:                                     ; preds = %2
  %65 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %66 = bitcast %union.anon.7* %65 to %struct.anon.8*
  %67 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %66, i64 0, i32 1
  %68 = load i8, i8* %67, align 2, !tbaa !28
  %69 = zext i8 %68 to i32
  %70 = bitcast %union.anon.7* %65 to i16*
  %71 = load i16, i16* %70, align 8, !tbaa !28
  %72 = sext i16 %71 to i32
  %73 = icmp sgt i32 %69, %72
  %74 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %75 = load i8, i8* %74, align 2, !tbaa !46
  %76 = zext i8 %75 to i32
  br i1 %73, label %77, label %89

; <label>:77:                                     ; preds = %64
  %78 = icmp ugt i8 %75, %68
  br i1 %78, label %83, label %79

; <label>:79:                                     ; preds = %77
  %80 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %81 = load i8, i8* %80, align 4, !tbaa !29
  %82 = add i8 %81, -1
  store i8 %82, i8* %80, align 4, !tbaa !29
  br label %83

; <label>:83:                                     ; preds = %79, %77
  %84 = icmp sgt i32 %76, %72
  br i1 %84, label %101, label %85

; <label>:85:                                     ; preds = %83
  %86 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %87 = load i8, i8* %86, align 4, !tbaa !29
  %88 = add i8 %87, -1
  store i8 %88, i8* %86, align 4, !tbaa !29
  br label %101

; <label>:89:                                     ; preds = %64
  %90 = icmp sgt i32 %76, %72
  br i1 %90, label %95, label %91

; <label>:91:                                     ; preds = %89
  %92 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %93 = load i8, i8* %92, align 4, !tbaa !29
  %94 = add i8 %93, -1
  store i8 %94, i8* %92, align 4, !tbaa !29
  br label %95

; <label>:95:                                     ; preds = %91, %89
  %96 = icmp ugt i8 %75, %68
  br i1 %96, label %101, label %97

; <label>:97:                                     ; preds = %95
  %98 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %99 = load i8, i8* %98, align 4, !tbaa !29
  %100 = add i8 %99, -1
  store i8 %100, i8* %98, align 4, !tbaa !29
  br label %101

; <label>:101:                                    ; preds = %83, %85, %95, %97
  %102 = load i8, i8* %67, align 2, !tbaa !28
  %103 = zext i8 %102 to i32
  %104 = load i16, i16* %70, align 8, !tbaa !28
  %105 = sext i16 %104 to i32
  %106 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %0, i32 10, i32 0, i32 %103, i32 %105, i32 0)
  %107 = bitcast %union.anon.7* %65 to i32*
  store i32 %106, i32* %107, align 8, !tbaa !28
  store i32 15, i32* %3, align 8, !tbaa !44
  br label %134

; <label>:108:                                    ; preds = %2
  store i32 7, i32* %3, align 8, !tbaa !44
  %109 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %110 = load %struct.Proto*, %struct.Proto** %109, align 8, !tbaa !13
  %111 = getelementptr inbounds %struct.Proto, %struct.Proto* %110, i64 0, i32 16
  %112 = load i32*, i32** %111, align 8, !tbaa !14
  %113 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %114 = bitcast %union.anon.7* %113 to i32*
  %115 = load i32, i32* %114, align 8, !tbaa !28
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i32, i32* %117, align 4, !tbaa !16
  %119 = lshr i32 %118, 7
  %120 = and i32 %119, 255
  store i32 %120, i32* %114, align 8, !tbaa !28
  br label %134

; <label>:121:                                    ; preds = %2
  %122 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %123 = load %struct.Proto*, %struct.Proto** %122, align 8, !tbaa !13
  %124 = getelementptr inbounds %struct.Proto, %struct.Proto* %123, i64 0, i32 16
  %125 = load i32*, i32** %124, align 8, !tbaa !14
  %126 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %127 = bitcast %union.anon.7* %126 to i32*
  %128 = load i32, i32* %127, align 8, !tbaa !28
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %125, i64 %129
  %131 = load i32, i32* %130, align 4, !tbaa !16
  %132 = and i32 %131, 16777215
  %133 = or i32 %132, 33554432
  store i32 %133, i32* %130, align 4, !tbaa !16
  store i32 15, i32* %3, align 8, !tbaa !44
  br label %134

; <label>:134:                                    ; preds = %2, %121, %108, %101, %56, %35, %11, %6, %5
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_exp2nextreg(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %6, label %18

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %8 = bitcast %union.anon.7* %7 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !28
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %11 = load i8, i8* %10, align 2, !tbaa !46
  %12 = zext i8 %11 to i32
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %18, label %14

; <label>:14:                                     ; preds = %6
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %16 = load i8, i8* %15, align 4, !tbaa !29
  %17 = add i8 %16, -1
  store i8 %17, i8* %15, align 4, !tbaa !29
  br label %18

; <label>:18:                                     ; preds = %2, %6, %14
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %20 = load i8, i8* %19, align 4, !tbaa !29
  %21 = add i8 %20, 1
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %23 = load %struct.Proto*, %struct.Proto** %22, align 8, !tbaa !13
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %23, i64 0, i32 5
  %25 = load i8, i8* %24, align 4, !tbaa !30
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
  store i8 %21, i8* %24, align 4, !tbaa !30
  br label %33

; <label>:33:                                     ; preds = %18, %32
  store i8 %21, i8* %19, align 4, !tbaa !29
  %34 = zext i8 %21 to i32
  %35 = add nsw i32 %34, -1
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %35)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @exp2reg(%struct.FuncState*, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  tail call fastcc void @discharge2reg(%struct.FuncState* %0, %struct.expdesc* %1, i32 %2)
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !44
  %6 = icmp eq i32 %5, 14
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  br i1 %6, label %8, label %48

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %10 = bitcast %union.anon.7* %9 to i32*
  %11 = load i32, i32* %10, align 8, !tbaa !28
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
  %18 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %19 = load %struct.Proto*, %struct.Proto** %18, align 8, !tbaa !13
  %20 = getelementptr %struct.Proto, %struct.Proto* %19, i64 0, i32 16
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
  %49 = load i32, i32* %7, align 8, !tbaa !47
  br label %50

; <label>:50:                                     ; preds = %48, %16
  %51 = phi i32 [ %49, %48 ], [ %11, %16 ]
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %53 = load i32, i32* %52, align 4, !tbaa !48
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %415, label %55

; <label>:55:                                     ; preds = %50
  %56 = icmp eq i32 %51, -1
  br i1 %56, label %91, label %57

; <label>:57:                                     ; preds = %55
  %58 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %59 = load %struct.Proto*, %struct.Proto** %58, align 8, !tbaa !13
  %60 = getelementptr %struct.Proto, %struct.Proto* %59, i64 0, i32 16
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
  %73 = load i8, i8* %72, align 1, !tbaa !28
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
  br i1 %81, label %82, label %131

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
  br i1 %92, label %93, label %97

; <label>:93:                                     ; preds = %91
  %94 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %95 = load i32, i32* %94, align 8, !tbaa !9
  %96 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %95, i32* %96, align 4, !tbaa !12
  br label %281

; <label>:97:                                     ; preds = %91
  %98 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %99 = load %struct.Proto*, %struct.Proto** %98, align 8, !tbaa !13
  %100 = getelementptr %struct.Proto, %struct.Proto* %99, i64 0, i32 16
  %101 = load i32*, i32** %100, align 8, !tbaa !14
  br label %102

; <label>:102:                                    ; preds = %122, %97
  %103 = phi i32 [ %53, %97 ], [ %129, %122 ]
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = icmp sgt i32 %103, 0
  br i1 %106, label %107, label %116

; <label>:107:                                    ; preds = %102
  %108 = getelementptr inbounds i32, i32* %105, i64 -1
  %109 = load i32, i32* %108, align 4, !tbaa !16
  %110 = and i32 %109, 127
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1, !tbaa !28
  %114 = and i8 %113, 16
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %118

; <label>:116:                                    ; preds = %107, %102
  %117 = load i32, i32* %105, align 4, !tbaa !16
  br label %118

; <label>:118:                                    ; preds = %116, %107
  %119 = phi i32 [ %117, %116 ], [ %109, %107 ]
  %120 = and i32 %119, 127
  %121 = icmp eq i32 %120, 68
  br i1 %121, label %122, label %131

; <label>:122:                                    ; preds = %118
  %123 = load i32, i32* %105, align 4, !tbaa !16
  %124 = lshr i32 %123, 7
  %125 = add nsw i32 %124, -16777215
  %126 = icmp eq i32 %125, -1
  %127 = add nsw i32 %103, 1
  %128 = add nsw i32 %127, %125
  %129 = select i1 %126, i32 -1, i32 %128
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %144, label %102

; <label>:131:                                    ; preds = %78, %118
  br i1 %6, label %134, label %132

; <label>:132:                                    ; preds = %131
  %133 = tail call i32 @luaK_jump(%struct.FuncState* %0)
  br label %134

; <label>:134:                                    ; preds = %131, %132
  %135 = phi i32 [ %133, %132 ], [ -1, %131 ]
  %136 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %137 = load i32, i32* %136, align 8, !tbaa !9
  %138 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %137, i32* %138, align 4, !tbaa !12
  %139 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 5, i32 %2, i32 0, i32 1, i32 0) #8
  %140 = load i32, i32* %136, align 8, !tbaa !9
  store i32 %140, i32* %138, align 4, !tbaa !12
  %141 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 5, i32 %2, i32 1, i32 0, i32 0) #8
  %142 = load i32, i32* %136, align 8, !tbaa !9
  store i32 %142, i32* %138, align 4, !tbaa !12
  tail call void @luaK_patchlist(%struct.FuncState* %0, i32 %135, i32 %142) #8
  %143 = load i32, i32* %52, align 4, !tbaa !48
  br label %144

; <label>:144:                                    ; preds = %122, %134
  %145 = phi i32 [ %143, %134 ], [ %53, %122 ]
  %146 = phi i32 [ %141, %134 ], [ -1, %122 ]
  %147 = phi i32 [ %139, %134 ], [ -1, %122 ]
  %148 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %149 = load i32, i32* %148, align 8, !tbaa !9
  %150 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %149, i32* %150, align 4, !tbaa !12
  %151 = icmp eq i32 %145, -1
  br i1 %151, label %281, label %152

; <label>:152:                                    ; preds = %144
  %153 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %154 = icmp eq i32 %2, 255
  %155 = shl i32 %2, 7
  %156 = and i32 %155, 32640
  %157 = load %struct.Proto*, %struct.Proto** %153, align 8, !tbaa !13
  %158 = getelementptr %struct.Proto, %struct.Proto* %157, i64 0, i32 16
  %159 = load i32*, i32** %158, align 8, !tbaa !14
  br i1 %154, label %161, label %160

; <label>:160:                                    ; preds = %152
  br label %214

; <label>:161:                                    ; preds = %152
  br label %162

; <label>:162:                                    ; preds = %161, %206
  %163 = phi i32 [ %172, %206 ], [ %145, %161 ]
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %159, i64 %164
  %166 = load i32, i32* %165, align 4, !tbaa !16
  %167 = lshr i32 %166, 7
  %168 = add nsw i32 %167, -16777215
  %169 = icmp eq i32 %168, -1
  %170 = add nsw i32 %163, 1
  %171 = add nsw i32 %170, %168
  %172 = select i1 %169, i32 -1, i32 %171
  %173 = icmp sgt i32 %163, 0
  br i1 %173, label %174, label %183

; <label>:174:                                    ; preds = %162
  %175 = getelementptr inbounds i32, i32* %165, i64 -1
  %176 = load i32, i32* %175, align 4, !tbaa !16
  %177 = and i32 %176, 127
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %178
  %180 = load i8, i8* %179, align 1, !tbaa !28
  %181 = and i8 %180, 16
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %184

; <label>:183:                                    ; preds = %174, %162
  br label %184

; <label>:184:                                    ; preds = %183, %174
  %185 = phi i32 [ %166, %183 ], [ %176, %174 ]
  %186 = phi i32* [ %165, %183 ], [ %175, %174 ]
  %187 = and i32 %185, 127
  %188 = icmp eq i32 %187, 68
  br i1 %188, label %194, label %189

; <label>:189:                                    ; preds = %184
  %190 = xor i32 %163, -1
  %191 = add i32 %147, %190
  %192 = add i32 %191, 16777215
  %193 = icmp ult i32 %192, 33554432
  br i1 %193, label %206, label %270

; <label>:194:                                    ; preds = %184
  %195 = lshr i32 %185, 9
  %196 = and i32 %195, 32640
  %197 = and i32 %185, 32768
  %198 = or i32 %197, %196
  %199 = or i32 %198, 67
  store i32 %199, i32* %186, align 4, !tbaa !16
  %200 = xor i32 %163, -1
  %201 = add i32 %149, %200
  %202 = add i32 %201, 16777215
  %203 = icmp ult i32 %202, 33554432
  br i1 %203, label %204, label %260

; <label>:204:                                    ; preds = %194
  %205 = load i32, i32* %165, align 4, !tbaa !16
  br label %206

; <label>:206:                                    ; preds = %189, %204
  %207 = phi i32 [ %205, %204 ], [ %166, %189 ]
  %208 = phi i32 [ %201, %204 ], [ %191, %189 ]
  %209 = and i32 %207, 127
  %210 = shl i32 %208, 7
  %211 = add i32 %210, 2147483520
  %212 = or i32 %209, %211
  store i32 %212, i32* %165, align 4, !tbaa !16
  %213 = icmp eq i32 %172, -1
  br i1 %213, label %281, label %162

; <label>:214:                                    ; preds = %160, %273
  %215 = phi i32 [ %224, %273 ], [ %145, %160 ]
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %159, i64 %216
  %218 = load i32, i32* %217, align 4, !tbaa !16
  %219 = lshr i32 %218, 7
  %220 = add nsw i32 %219, -16777215
  %221 = icmp eq i32 %220, -1
  %222 = add nsw i32 %215, 1
  %223 = add nsw i32 %222, %220
  %224 = select i1 %221, i32 -1, i32 %223
  %225 = icmp sgt i32 %215, 0
  br i1 %225, label %226, label %235

; <label>:226:                                    ; preds = %214
  %227 = getelementptr inbounds i32, i32* %217, i64 -1
  %228 = load i32, i32* %227, align 4, !tbaa !16
  %229 = and i32 %228, 127
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %230
  %232 = load i8, i8* %231, align 1, !tbaa !28
  %233 = and i8 %232, 16
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %235, label %236

; <label>:235:                                    ; preds = %226, %214
  br label %236

; <label>:236:                                    ; preds = %235, %226
  %237 = phi i32 [ %218, %235 ], [ %228, %226 ]
  %238 = phi i32* [ %217, %235 ], [ %227, %226 ]
  %239 = and i32 %237, 127
  %240 = icmp eq i32 %239, 68
  br i1 %240, label %241, label %265

; <label>:241:                                    ; preds = %236
  %242 = lshr i32 %237, 16
  %243 = and i32 %242, 255
  %244 = icmp eq i32 %243, %2
  br i1 %244, label %248, label %245

; <label>:245:                                    ; preds = %241
  %246 = and i32 %237, -32641
  %247 = or i32 %246, %156
  br label %254

; <label>:248:                                    ; preds = %241
  %249 = lshr i32 %237, 9
  %250 = and i32 %249, 32640
  %251 = and i32 %237, 32768
  %252 = or i32 %251, %250
  %253 = or i32 %252, 67
  br label %254

; <label>:254:                                    ; preds = %248, %245
  %255 = phi i32 [ %253, %248 ], [ %247, %245 ]
  store i32 %255, i32* %238, align 4, !tbaa !16
  %256 = xor i32 %215, -1
  %257 = add i32 %149, %256
  %258 = add i32 %257, 16777215
  %259 = icmp ult i32 %258, 33554432
  br i1 %259, label %263, label %260

; <label>:260:                                    ; preds = %254, %194
  %261 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %262 = load %struct.LexState*, %struct.LexState** %261, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %262, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable

; <label>:263:                                    ; preds = %254
  %264 = load i32, i32* %217, align 4, !tbaa !16
  br label %273

; <label>:265:                                    ; preds = %236
  %266 = xor i32 %215, -1
  %267 = add i32 %147, %266
  %268 = add i32 %267, 16777215
  %269 = icmp ult i32 %268, 33554432
  br i1 %269, label %273, label %270

; <label>:270:                                    ; preds = %265, %189
  %271 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %272 = load %struct.LexState*, %struct.LexState** %271, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %272, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable

; <label>:273:                                    ; preds = %265, %263
  %274 = phi i32 [ %264, %263 ], [ %218, %265 ]
  %275 = phi i32 [ %257, %263 ], [ %267, %265 ]
  %276 = and i32 %274, 127
  %277 = shl i32 %275, 7
  %278 = add i32 %277, 2147483520
  %279 = or i32 %276, %278
  store i32 %279, i32* %217, align 4, !tbaa !16
  %280 = icmp eq i32 %224, -1
  br i1 %280, label %281, label %214

; <label>:281:                                    ; preds = %273, %206, %93, %144
  %282 = phi i32 [ %95, %93 ], [ %149, %144 ], [ %149, %206 ], [ %149, %273 ]
  %283 = phi i32 [ -1, %93 ], [ %146, %144 ], [ %146, %206 ], [ %146, %273 ]
  %284 = load i32, i32* %7, align 8, !tbaa !47
  %285 = icmp eq i32 %284, -1
  br i1 %285, label %415, label %286

; <label>:286:                                    ; preds = %281
  %287 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %288 = icmp eq i32 %2, 255
  %289 = shl i32 %2, 7
  %290 = and i32 %289, 32640
  %291 = load %struct.Proto*, %struct.Proto** %287, align 8, !tbaa !13
  %292 = getelementptr %struct.Proto, %struct.Proto* %291, i64 0, i32 16
  %293 = load i32*, i32** %292, align 8, !tbaa !14
  br i1 %288, label %295, label %294

; <label>:294:                                    ; preds = %286
  br label %348

; <label>:295:                                    ; preds = %286
  br label %296

; <label>:296:                                    ; preds = %295, %340
  %297 = phi i32 [ %306, %340 ], [ %284, %295 ]
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %293, i64 %298
  %300 = load i32, i32* %299, align 4, !tbaa !16
  %301 = lshr i32 %300, 7
  %302 = add nsw i32 %301, -16777215
  %303 = icmp eq i32 %302, -1
  %304 = add nsw i32 %297, 1
  %305 = add nsw i32 %304, %302
  %306 = select i1 %303, i32 -1, i32 %305
  %307 = icmp sgt i32 %297, 0
  br i1 %307, label %308, label %317

; <label>:308:                                    ; preds = %296
  %309 = getelementptr inbounds i32, i32* %299, i64 -1
  %310 = load i32, i32* %309, align 4, !tbaa !16
  %311 = and i32 %310, 127
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %312
  %314 = load i8, i8* %313, align 1, !tbaa !28
  %315 = and i8 %314, 16
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %317, label %318

; <label>:317:                                    ; preds = %308, %296
  br label %318

; <label>:318:                                    ; preds = %317, %308
  %319 = phi i32 [ %300, %317 ], [ %310, %308 ]
  %320 = phi i32* [ %299, %317 ], [ %309, %308 ]
  %321 = and i32 %319, 127
  %322 = icmp eq i32 %321, 68
  br i1 %322, label %328, label %323

; <label>:323:                                    ; preds = %318
  %324 = xor i32 %297, -1
  %325 = add i32 %283, %324
  %326 = add i32 %325, 16777215
  %327 = icmp ult i32 %326, 33554432
  br i1 %327, label %340, label %404

; <label>:328:                                    ; preds = %318
  %329 = lshr i32 %319, 9
  %330 = and i32 %329, 32640
  %331 = and i32 %319, 32768
  %332 = or i32 %331, %330
  %333 = or i32 %332, 67
  store i32 %333, i32* %320, align 4, !tbaa !16
  %334 = xor i32 %297, -1
  %335 = add i32 %282, %334
  %336 = add i32 %335, 16777215
  %337 = icmp ult i32 %336, 33554432
  br i1 %337, label %338, label %394

; <label>:338:                                    ; preds = %328
  %339 = load i32, i32* %299, align 4, !tbaa !16
  br label %340

; <label>:340:                                    ; preds = %323, %338
  %341 = phi i32 [ %339, %338 ], [ %300, %323 ]
  %342 = phi i32 [ %335, %338 ], [ %325, %323 ]
  %343 = and i32 %341, 127
  %344 = shl i32 %342, 7
  %345 = add i32 %344, 2147483520
  %346 = or i32 %343, %345
  store i32 %346, i32* %299, align 4, !tbaa !16
  %347 = icmp eq i32 %306, -1
  br i1 %347, label %415, label %296

; <label>:348:                                    ; preds = %294, %407
  %349 = phi i32 [ %358, %407 ], [ %284, %294 ]
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %293, i64 %350
  %352 = load i32, i32* %351, align 4, !tbaa !16
  %353 = lshr i32 %352, 7
  %354 = add nsw i32 %353, -16777215
  %355 = icmp eq i32 %354, -1
  %356 = add nsw i32 %349, 1
  %357 = add nsw i32 %356, %354
  %358 = select i1 %355, i32 -1, i32 %357
  %359 = icmp sgt i32 %349, 0
  br i1 %359, label %360, label %369

; <label>:360:                                    ; preds = %348
  %361 = getelementptr inbounds i32, i32* %351, i64 -1
  %362 = load i32, i32* %361, align 4, !tbaa !16
  %363 = and i32 %362, 127
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %364
  %366 = load i8, i8* %365, align 1, !tbaa !28
  %367 = and i8 %366, 16
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %369, label %370

; <label>:369:                                    ; preds = %360, %348
  br label %370

; <label>:370:                                    ; preds = %369, %360
  %371 = phi i32 [ %352, %369 ], [ %362, %360 ]
  %372 = phi i32* [ %351, %369 ], [ %361, %360 ]
  %373 = and i32 %371, 127
  %374 = icmp eq i32 %373, 68
  br i1 %374, label %375, label %399

; <label>:375:                                    ; preds = %370
  %376 = lshr i32 %371, 16
  %377 = and i32 %376, 255
  %378 = icmp eq i32 %377, %2
  br i1 %378, label %382, label %379

; <label>:379:                                    ; preds = %375
  %380 = and i32 %371, -32641
  %381 = or i32 %380, %290
  br label %388

; <label>:382:                                    ; preds = %375
  %383 = lshr i32 %371, 9
  %384 = and i32 %383, 32640
  %385 = and i32 %371, 32768
  %386 = or i32 %385, %384
  %387 = or i32 %386, 67
  br label %388

; <label>:388:                                    ; preds = %382, %379
  %389 = phi i32 [ %387, %382 ], [ %381, %379 ]
  store i32 %389, i32* %372, align 4, !tbaa !16
  %390 = xor i32 %349, -1
  %391 = add i32 %282, %390
  %392 = add i32 %391, 16777215
  %393 = icmp ult i32 %392, 33554432
  br i1 %393, label %397, label %394

; <label>:394:                                    ; preds = %388, %328
  %395 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %396 = load %struct.LexState*, %struct.LexState** %395, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %396, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable

; <label>:397:                                    ; preds = %388
  %398 = load i32, i32* %351, align 4, !tbaa !16
  br label %407

; <label>:399:                                    ; preds = %370
  %400 = xor i32 %349, -1
  %401 = add i32 %283, %400
  %402 = add i32 %401, 16777215
  %403 = icmp ult i32 %402, 33554432
  br i1 %403, label %407, label %404

; <label>:404:                                    ; preds = %399, %323
  %405 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %406 = load %struct.LexState*, %struct.LexState** %405, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %406, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable

; <label>:407:                                    ; preds = %399, %397
  %408 = phi i32 [ %398, %397 ], [ %352, %399 ]
  %409 = phi i32 [ %391, %397 ], [ %401, %399 ]
  %410 = and i32 %408, 127
  %411 = shl i32 %409, 7
  %412 = add i32 %411, 2147483520
  %413 = or i32 %410, %412
  store i32 %413, i32* %351, align 4, !tbaa !16
  %414 = icmp eq i32 %358, -1
  br i1 %414, label %415, label %348

; <label>:415:                                    ; preds = %407, %340, %281, %50
  store i32 -1, i32* %7, align 8, !tbaa !47
  store i32 -1, i32* %52, align 4, !tbaa !48
  %416 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %417 = bitcast %union.anon.7* %416 to i32*
  store i32 %2, i32* %417, align 8, !tbaa !28
  store i32 7, i32* %4, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_exp2anyreg(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %6, label %21

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %8 = load i32, i32* %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %10 = load i32, i32* %9, align 4, !tbaa !48
  %11 = icmp eq i32 %8, %10
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %13 = bitcast %union.anon.7* %12 to i32*
  %14 = load i32, i32* %13, align 8, !tbaa !28
  br i1 %11, label %59, label %15

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %17 = load i8, i8* %16, align 2, !tbaa !46
  %18 = zext i8 %17 to i32
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %21, label %20

; <label>:20:                                     ; preds = %15
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %14)
  br label %56

; <label>:21:                                     ; preds = %15, %2
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* nonnull %1) #8
  %22 = load i32, i32* %3, align 8, !tbaa !44
  %23 = icmp eq i32 %22, 7
  br i1 %23, label %24, label %36

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %26 = bitcast %union.anon.7* %25 to i32*
  %27 = load i32, i32* %26, align 8, !tbaa !28
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %29 = load i8, i8* %28, align 2, !tbaa !46
  %30 = zext i8 %29 to i32
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %36, label %32

; <label>:32:                                     ; preds = %24
  %33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %34 = load i8, i8* %33, align 4, !tbaa !29
  %35 = add i8 %34, -1
  store i8 %35, i8* %33, align 4, !tbaa !29
  br label %36

; <label>:36:                                     ; preds = %32, %24, %21
  %37 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %38 = load i8, i8* %37, align 4, !tbaa !29
  %39 = add i8 %38, 1
  %40 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %41 = load %struct.Proto*, %struct.Proto** %40, align 8, !tbaa !13
  %42 = getelementptr inbounds %struct.Proto, %struct.Proto* %41, i64 0, i32 5
  %43 = load i8, i8* %42, align 4, !tbaa !30
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
  store i8 %39, i8* %42, align 4, !tbaa !30
  br label %51

; <label>:51:                                     ; preds = %36, %50
  store i8 %39, i8* %37, align 4, !tbaa !29
  %52 = zext i8 %39 to i32
  %53 = add nsw i32 %52, -1
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %53) #8
  %54 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %55 = bitcast %union.anon.7* %54 to i32*
  br label %56

; <label>:56:                                     ; preds = %20, %51
  %57 = phi i32* [ %55, %51 ], [ %13, %20 ]
  %58 = load i32, i32* %57, align 8, !tbaa !28
  br label %59

; <label>:59:                                     ; preds = %56, %6
  %60 = phi i32 [ %14, %6 ], [ %58, %56 ]
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_exp2anyregup(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 9
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  %8 = load i32, i32* %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %10 = load i32, i32* %9, align 4, !tbaa !48
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
  %4 = load i32, i32* %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %6 = load i32, i32* %5, align 4, !tbaa !48
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
  %11 = load i32, i32* %10, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  %13 = load i32, i32* %12, align 4, !tbaa !48
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %68

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %17 = load i32, i32* %16, align 8, !tbaa !44
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
  store i32 1, i32* %20, align 8, !tbaa !28
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i64 0, i32 1
  store i8 1, i8* %21, align 8, !tbaa !33
  %22 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %9, %struct.TValue* nonnull %9) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19) #8
  br label %62

; <label>:23:                                     ; preds = %15
  %24 = bitcast %struct.TValue* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #8
  %25 = bitcast %struct.TValue* %8 to i32*
  store i32 0, i32* %25, align 8, !tbaa !28
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i64 0, i32 1
  store i8 1, i8* %26, align 8, !tbaa !33
  %27 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %8, %struct.TValue* nonnull %8) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %24) #8
  br label %62

; <label>:28:                                     ; preds = %15
  %29 = bitcast %struct.TValue* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %29) #8
  %30 = bitcast %struct.TValue* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %30) #8
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  store i8 0, i8* %31, align 8, !tbaa !33
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %33 = load %struct.LexState*, %struct.LexState** %32, align 8, !tbaa !17
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %33, i64 0, i32 9
  %35 = bitcast %struct.Table** %34 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !35
  %37 = bitcast %struct.TValue* %6 to i64*
  store i64 %36, i64* %37, align 8, !tbaa !28
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  store i8 69, i8* %38, align 8, !tbaa !33
  %39 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %6, %struct.TValue* nonnull %7) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %29) #8
  br label %62

; <label>:40:                                     ; preds = %15
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  %42 = load i64, i64* %41, align 8, !tbaa !28
  %43 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %43) #8
  %44 = bitcast %struct.TValue* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %44) #8
  %45 = inttoptr i64 %42 to i8*
  %46 = bitcast %struct.TValue* %4 to i8**
  store i8* %45, i8** %46, align 8, !tbaa !28
  %47 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 2, i8* %47, align 8, !tbaa !33
  %48 = bitcast %struct.TValue* %5 to i64*
  store i64 %42, i64* %48, align 8, !tbaa !28
  %49 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  store i8 35, i8* %49, align 8, !tbaa !33
  %50 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %4, %struct.TValue* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %44) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %43) #8
  br label %62

; <label>:51:                                     ; preds = %15
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  %53 = load i64, i64* %52, align 8, !tbaa !28
  %54 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %54) #8
  %55 = bitcast %struct.TValue* %3 to i64*
  store i64 %53, i64* %55, align 8, !tbaa !28
  %56 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  store i8 19, i8* %56, align 8, !tbaa !33
  %57 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %3, %struct.TValue* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %54) #8
  br label %62

; <label>:58:                                     ; preds = %15
  %59 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %60 = bitcast %union.anon.7* %59 to i32*
  %61 = load i32, i32* %60, align 8, !tbaa !28
  br label %62

; <label>:62:                                     ; preds = %58, %51, %40, %28, %23, %18
  %63 = phi i32 [ %61, %58 ], [ %57, %51 ], [ %50, %40 ], [ %39, %28 ], [ %27, %23 ], [ %22, %18 ]
  %64 = icmp slt i32 %63, 256
  br i1 %64, label %65, label %68

; <label>:65:                                     ; preds = %62
  store i32 4, i32* %16, align 8, !tbaa !44
  %66 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %67 = bitcast %union.anon.7* %66 to i32*
  store i32 %63, i32* %67, align 8, !tbaa !28
  br label %68

; <label>:68:                                     ; preds = %15, %65, %2, %62
  %69 = phi i32 [ 0, %62 ], [ 0, %2 ], [ 0, %15 ], [ 1, %65 ]
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_storevar(%struct.FuncState*, %struct.expdesc* nocapture readonly, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !44
  switch i32 %5, label %108 [
    i32 8, label %6
    i32 9, label %26
    i32 11, label %32
    i32 12, label %51
    i32 13, label %70
    i32 10, label %89
  ]

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !44
  %9 = icmp eq i32 %8, 7
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %12 = bitcast %union.anon.7* %11 to i32*
  %13 = load i32, i32* %12, align 8, !tbaa !28
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %15 = load i8, i8* %14, align 2, !tbaa !46
  %16 = zext i8 %15 to i32
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %22, label %18

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %20 = load i8, i8* %19, align 4, !tbaa !29
  %21 = add i8 %20, -1
  store i8 %21, i8* %19, align 4, !tbaa !29
  br label %22

; <label>:22:                                     ; preds = %6, %10, %18
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %24 = bitcast %union.anon.7* %23 to i32*
  %25 = load i32, i32* %24, align 8, !tbaa !28
  tail call fastcc void @exp2reg(%struct.FuncState* %0, %struct.expdesc* nonnull %2, i32 %25)
  br label %124

; <label>:26:                                     ; preds = %3
  %27 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2)
  %28 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %29 = bitcast %union.anon.7* %28 to i32*
  %30 = load i32, i32* %29, align 8, !tbaa !28
  %31 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 8, i32 %27, i32 %30, i32 0, i32 0)
  br label %108

; <label>:32:                                     ; preds = %3
  %33 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %34 = bitcast %union.anon.7* %33 to %struct.anon.8*
  %35 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %34, i64 0, i32 1
  %36 = load i8, i8* %35, align 2, !tbaa !28
  %37 = zext i8 %36 to i32
  %38 = bitcast %union.anon.7* %33 to i16*
  %39 = load i16, i16* %38, align 8, !tbaa !28
  %40 = sext i16 %39 to i32
  %41 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

; <label>:43:                                     ; preds = %32
  %44 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  br label %45

; <label>:45:                                     ; preds = %32, %43
  %46 = phi i32 [ 0, %43 ], [ 1, %32 ]
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %48 = bitcast %union.anon.7* %47 to i32*
  %49 = load i32, i32* %48, align 8, !tbaa !28
  %50 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 13, i32 %37, i32 %40, i32 %49, i32 %46) #8
  br label %108

; <label>:51:                                     ; preds = %3
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %53 = bitcast %union.anon.7* %52 to %struct.anon.8*
  %54 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %53, i64 0, i32 1
  %55 = load i8, i8* %54, align 2, !tbaa !28
  %56 = zext i8 %55 to i32
  %57 = bitcast %union.anon.7* %52 to i16*
  %58 = load i16, i16* %57, align 8, !tbaa !28
  %59 = sext i16 %58 to i32
  %60 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

; <label>:62:                                     ; preds = %51
  %63 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  br label %64

; <label>:64:                                     ; preds = %51, %62
  %65 = phi i32 [ 0, %62 ], [ 1, %51 ]
  %66 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %67 = bitcast %union.anon.7* %66 to i32*
  %68 = load i32, i32* %67, align 8, !tbaa !28
  %69 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 15, i32 %56, i32 %59, i32 %68, i32 %65) #8
  br label %108

; <label>:70:                                     ; preds = %3
  %71 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %72 = bitcast %union.anon.7* %71 to %struct.anon.8*
  %73 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %72, i64 0, i32 1
  %74 = load i8, i8* %73, align 2, !tbaa !28
  %75 = zext i8 %74 to i32
  %76 = bitcast %union.anon.7* %71 to i16*
  %77 = load i16, i16* %76, align 8, !tbaa !28
  %78 = sext i16 %77 to i32
  %79 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

; <label>:81:                                     ; preds = %70
  %82 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  br label %83

; <label>:83:                                     ; preds = %70, %81
  %84 = phi i32 [ 0, %81 ], [ 1, %70 ]
  %85 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %86 = bitcast %union.anon.7* %85 to i32*
  %87 = load i32, i32* %86, align 8, !tbaa !28
  %88 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 16, i32 %75, i32 %78, i32 %87, i32 %84) #8
  br label %108

; <label>:89:                                     ; preds = %3
  %90 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %91 = bitcast %union.anon.7* %90 to %struct.anon.8*
  %92 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %91, i64 0, i32 1
  %93 = load i8, i8* %92, align 2, !tbaa !28
  %94 = zext i8 %93 to i32
  %95 = bitcast %union.anon.7* %90 to i16*
  %96 = load i16, i16* %95, align 8, !tbaa !28
  %97 = sext i16 %96 to i32
  %98 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

; <label>:100:                                    ; preds = %89
  %101 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  br label %102

; <label>:102:                                    ; preds = %89, %100
  %103 = phi i32 [ 0, %100 ], [ 1, %89 ]
  %104 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %105 = bitcast %union.anon.7* %104 to i32*
  %106 = load i32, i32* %105, align 8, !tbaa !28
  %107 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 14, i32 %94, i32 %97, i32 %106, i32 %103) #8
  br label %108

; <label>:108:                                    ; preds = %3, %102, %83, %64, %45, %26
  %109 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %110 = load i32, i32* %109, align 8, !tbaa !44
  %111 = icmp eq i32 %110, 7
  br i1 %111, label %112, label %124

; <label>:112:                                    ; preds = %108
  %113 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %114 = bitcast %union.anon.7* %113 to i32*
  %115 = load i32, i32* %114, align 8, !tbaa !28
  %116 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %117 = load i8, i8* %116, align 2, !tbaa !46
  %118 = zext i8 %117 to i32
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %124, label %120

; <label>:120:                                    ; preds = %112
  %121 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %122 = load i8, i8* %121, align 4, !tbaa !29
  %123 = add i8 %122, -1
  store i8 %123, i8* %121, align 4, !tbaa !29
  br label %124

; <label>:124:                                    ; preds = %120, %112, %108, %22
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_self(%struct.FuncState*, %struct.expdesc* nocapture, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  %4 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %1)
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %6 = bitcast %union.anon.7* %5 to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !28
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 7
  br i1 %10, label %11, label %20

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %13 = load i8, i8* %12, align 2, !tbaa !46
  %14 = zext i8 %13 to i32
  %15 = icmp slt i32 %7, %14
  br i1 %15, label %20, label %16

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %18 = load i8, i8* %17, align 4, !tbaa !29
  %19 = add i8 %18, -1
  store i8 %19, i8* %17, align 4, !tbaa !29
  br label %20

; <label>:20:                                     ; preds = %3, %11, %16
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %22 = load i8, i8* %21, align 4, !tbaa !29
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %6, align 8, !tbaa !28
  store i32 7, i32* %8, align 8, !tbaa !44
  %24 = load i8, i8* %21, align 4, !tbaa !29
  %25 = zext i8 %24 to i32
  %26 = add nuw nsw i32 %25, 2
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %28 = load %struct.Proto*, %struct.Proto** %27, align 8, !tbaa !13
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i64 0, i32 5
  %30 = load i8, i8* %29, align 4, !tbaa !30
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
  store i8 %39, i8* %29, align 4, !tbaa !30
  br label %40

; <label>:40:                                     ; preds = %20, %38
  %41 = add i8 %24, 2
  store i8 %41, i8* %21, align 4, !tbaa !29
  %42 = load i32, i32* %6, align 8, !tbaa !28
  %43 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* nonnull %0, %struct.expdesc* %2) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %40
  %46 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* nonnull %0, %struct.expdesc* %2) #8
  br label %47

; <label>:47:                                     ; preds = %40, %45
  %48 = phi i32 [ 0, %45 ], [ 1, %40 ]
  %49 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %50 = bitcast %union.anon.7* %49 to i32*
  %51 = load i32, i32* %50, align 8, !tbaa !28
  %52 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %0, i32 18, i32 %42, i32 %7, i32 %51, i32 %48) #8
  %53 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %54 = load i32, i32* %53, align 8, !tbaa !44
  %55 = icmp eq i32 %54, 7
  br i1 %55, label %56, label %65

; <label>:56:                                     ; preds = %47
  %57 = load i32, i32* %50, align 8, !tbaa !28
  %58 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %59 = load i8, i8* %58, align 2, !tbaa !46
  %60 = zext i8 %59 to i32
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %65, label %62

; <label>:62:                                     ; preds = %56
  %63 = load i8, i8* %21, align 4, !tbaa !29
  %64 = add i8 %63, -1
  store i8 %64, i8* %21, align 4, !tbaa !29
  br label %65

; <label>:65:                                     ; preds = %47, %56, %62
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_goiftrue(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !44
  switch i32 %4, label %32 [
    i32 14, label %5
    i32 4, label %73
    i32 5, label %73
    i32 6, label %73
    i32 2, label %73
  ]

; <label>:5:                                      ; preds = %2
  %6 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !tbaa !13
  %8 = getelementptr %struct.Proto, %struct.Proto* %7, i64 0, i32 16
  %9 = load i32*, i32** %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %11 = bitcast %union.anon.7* %10 to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !28
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %9, i64 %13
  %15 = icmp sgt i32 %12, 0
  br i1 %15, label %16, label %25

; <label>:16:                                     ; preds = %5
  %17 = getelementptr inbounds i32, i32* %14, i64 -1
  %18 = load i32, i32* %17, align 4, !tbaa !16
  %19 = and i32 %18, 127
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1, !tbaa !28
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
  %31 = load i32, i32* %11, align 8, !tbaa !28
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
  %43 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %44 = load %struct.Proto*, %struct.Proto** %43, align 8, !tbaa !13
  %45 = getelementptr %struct.Proto, %struct.Proto* %44, i64 0, i32 16
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
  %75 = load i32, i32* %74, align 8, !tbaa !47
  %76 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %77 = load i32, i32* %76, align 8, !tbaa !9
  %78 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %77, i32* %78, align 4, !tbaa !12
  tail call void @luaK_patchlist(%struct.FuncState* %0, i32 %75, i32 %77) #8
  store i32 -1, i32* %74, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @jumponcond(%struct.FuncState*, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !44
  switch i32 %5, label %48 [
    i32 15, label %6
    i32 7, label %71
  ]

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 16
  %10 = load i32*, i32** %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %12 = bitcast %union.anon.7* %11 to i32*
  %13 = load i32, i32* %12, align 8, !tbaa !28
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %10, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !16
  %17 = and i32 %16, 127
  %18 = icmp eq i32 %17, 52
  br i1 %18, label %19, label %48

; <label>:19:                                     ; preds = %6
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %21 = load i32, i32* %20, align 8, !tbaa !9
  %22 = add nsw i32 %21, -1
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 19
  %24 = load i8*, i8** %23, align 8, !tbaa !27
  %25 = sext i32 %22 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1, !tbaa !28
  %28 = icmp eq i8 %27, -128
  br i1 %28, label %37, label %29

; <label>:29:                                     ; preds = %19
  %30 = sext i8 %27 to i32
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %32 = load i32, i32* %31, align 8, !tbaa !20
  %33 = sub nsw i32 %32, %30
  store i32 %33, i32* %31, align 8, !tbaa !20
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  %35 = load i8, i8* %34, align 1, !tbaa !21
  %36 = add i8 %35, -1
  store i8 %36, i8* %34, align 1, !tbaa !21
  br label %42

; <label>:37:                                     ; preds = %19
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %39 = load i32, i32* %38, align 4, !tbaa !23
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4, !tbaa !23
  %41 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  store i8 121, i8* %41, align 1, !tbaa !21
  br label %42

; <label>:42:                                     ; preds = %37, %29
  store i32 %22, i32* %20, align 8, !tbaa !9
  %43 = lshr i32 %16, 16
  %44 = and i32 %43, 255
  %45 = icmp eq i32 %2, 0
  %46 = zext i1 %45 to i32
  %47 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %0, i32 67, i32 %44, i32 0, i32 0, i32 %46) #8
  br label %87

; <label>:48:                                     ; preds = %3, %6
  %49 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %50 = load i8, i8* %49, align 4, !tbaa !29
  %51 = add i8 %50, 1
  %52 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %53 = load %struct.Proto*, %struct.Proto** %52, align 8, !tbaa !13
  %54 = getelementptr inbounds %struct.Proto, %struct.Proto* %53, i64 0, i32 5
  %55 = load i8, i8* %54, align 4, !tbaa !30
  %56 = icmp ult i8 %50, %55
  br i1 %56, label %63, label %57

; <label>:57:                                     ; preds = %48
  %58 = icmp ugt i8 %50, -3
  br i1 %58, label %59, label %62

; <label>:59:                                     ; preds = %57
  %60 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %61 = load %struct.LexState*, %struct.LexState** %60, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %61, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #7
  unreachable

; <label>:62:                                     ; preds = %57
  store i8 %51, i8* %54, align 4, !tbaa !30
  br label %63

; <label>:63:                                     ; preds = %48, %62
  store i8 %51, i8* %49, align 4, !tbaa !29
  %64 = zext i8 %51 to i32
  %65 = add nsw i32 %64, -1
  tail call fastcc void @discharge2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %1, i32 %65) #8
  %66 = load i32, i32* %4, align 8, !tbaa !44
  %67 = icmp eq i32 %66, 7
  br i1 %67, label %71, label %68

; <label>:68:                                     ; preds = %63
  %69 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %70 = bitcast %union.anon.7* %69 to i32*
  br label %83

; <label>:71:                                     ; preds = %3, %63
  %72 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %73 = bitcast %union.anon.7* %72 to i32*
  %74 = load i32, i32* %73, align 8, !tbaa !28
  %75 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %76 = load i8, i8* %75, align 2, !tbaa !46
  %77 = zext i8 %76 to i32
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %83, label %79

; <label>:79:                                     ; preds = %71
  %80 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %81 = load i8, i8* %80, align 4, !tbaa !29
  %82 = add i8 %81, -1
  store i8 %82, i8* %80, align 4, !tbaa !29
  br label %83

; <label>:83:                                     ; preds = %68, %71, %79
  %84 = phi i32* [ %70, %68 ], [ %73, %71 ], [ %73, %79 ]
  %85 = load i32, i32* %84, align 8, !tbaa !28
  %86 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %0, i32 68, i32 255, i32 %85, i32 0, i32 %2) #8
  br label %87

; <label>:87:                                     ; preds = %42, %83
  %88 = tail call i32 @luaK_jump(%struct.FuncState* nonnull %0) #8
  ret i32 %88
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_goiffalse(%struct.FuncState*, %struct.expdesc* nocapture) local_unnamed_addr #2 {
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %1)
  %3 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !44
  switch i32 %4, label %9 [
    i32 14, label %5
    i32 1, label %50
    i32 3, label %50
  ]

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %7 = bitcast %union.anon.7* %6 to i32*
  %8 = load i32, i32* %7, align 8, !tbaa !28
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
  %20 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %21 = load %struct.Proto*, %struct.Proto** %20, align 8, !tbaa !13
  %22 = getelementptr %struct.Proto, %struct.Proto* %21, i64 0, i32 16
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
  %52 = load i32, i32* %51, align 4, !tbaa !48
  %53 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %54 = load i32, i32* %53, align 8, !tbaa !9
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  store i32 %54, i32* %55, align 4, !tbaa !12
  tail call void @luaK_patchlist(%struct.FuncState* %0, i32 %52, i32 %54) #8
  store i32 -1, i32* %51, align 4, !tbaa !48
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define hidden i32 @luaK_isKint(%struct.expdesc* nocapture readonly) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !44
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %5, label %12

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 2
  %7 = load i32, i32* %6, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 3
  %9 = load i32, i32* %8, align 4, !tbaa !48
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
  %5 = load i32, i32* %4, align 8, !tbaa !44
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %14, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %9 = bitcast %union.anon.7* %8 to i32*
  %10 = load i32, i32* %9, align 8, !tbaa !28
  %11 = trunc i32 %10 to i8
  %12 = bitcast %union.anon.7* %8 to %struct.anon.8*
  %13 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %12, i64 0, i32 1
  store i8 %11, i8* %13, align 2, !tbaa !28
  br label %61

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %16 = load i32, i32* %15, align 8, !tbaa !44
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %45

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %20 = load i32, i32* %19, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %22 = load i32, i32* %21, align 4, !tbaa !48
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %45

; <label>:24:                                     ; preds = %18
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %26 = bitcast %union.anon.7* %25 to i32*
  %27 = load i32, i32* %26, align 8, !tbaa !28
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %29, label %45

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %31 = load %struct.Proto*, %struct.Proto** %30, align 8, !tbaa !13
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 15
  %33 = load %struct.TValue*, %struct.TValue** %32, align 8, !tbaa !37
  %34 = sext i32 %27 to i64
  %35 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i64 %34, i32 1
  %36 = load i8, i8* %35, align 8, !tbaa !33
  %37 = icmp eq i8 %36, 84
  br i1 %37, label %38, label %45

; <label>:38:                                     ; preds = %29
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %40 = bitcast %union.anon.7* %39 to i32*
  %41 = load i32, i32* %40, align 8, !tbaa !28
  %42 = trunc i32 %41 to i8
  %43 = bitcast %union.anon.7* %39 to %struct.anon.8*
  %44 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %43, i64 0, i32 1
  store i8 %42, i8* %44, align 2, !tbaa !28
  br label %55

; <label>:45:                                     ; preds = %24, %18, %14, %29
  %46 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %1)
  %47 = load i32, i32* %4, align 8, !tbaa !44
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %49 = bitcast %union.anon.7* %48 to i32*
  %50 = load i32, i32* %49, align 8, !tbaa !28
  %51 = trunc i32 %50 to i8
  %52 = bitcast %union.anon.7* %48 to %struct.anon.8*
  %53 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %52, i64 0, i32 1
  store i8 %51, i8* %53, align 2, !tbaa !28
  %54 = icmp eq i32 %47, 9
  br i1 %54, label %55, label %61

; <label>:55:                                     ; preds = %38, %45
  %56 = phi %union.anon.7* [ %39, %38 ], [ %48, %45 ]
  %57 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %58 = bitcast %union.anon.7* %57 to i32*
  %59 = load i32, i32* %58, align 8, !tbaa !28
  %60 = trunc i32 %59 to i16
  br label %102

; <label>:61:                                     ; preds = %7, %45
  %62 = phi %union.anon.7* [ %8, %7 ], [ %48, %45 ]
  %63 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %64 = load i32, i32* %63, align 8, !tbaa !44
  switch i32 %64, label %99 [
    i32 4, label %65
    i32 6, label %87
  ]

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %67 = load i32, i32* %66, align 8, !tbaa !47
  %68 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %69 = load i32, i32* %68, align 4, !tbaa !48
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %99

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %73 = bitcast %union.anon.7* %72 to i32*
  %74 = load i32, i32* %73, align 8, !tbaa !28
  %75 = icmp slt i32 %74, 256
  br i1 %75, label %76, label %99

; <label>:76:                                     ; preds = %71
  %77 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %78 = load %struct.Proto*, %struct.Proto** %77, align 8, !tbaa !13
  %79 = getelementptr inbounds %struct.Proto, %struct.Proto* %78, i64 0, i32 15
  %80 = load %struct.TValue*, %struct.TValue** %79, align 8, !tbaa !37
  %81 = sext i32 %74 to i64
  %82 = getelementptr inbounds %struct.TValue, %struct.TValue* %80, i64 %81, i32 1
  %83 = load i8, i8* %82, align 8, !tbaa !33
  %84 = icmp eq i8 %83, 84
  br i1 %84, label %85, label %99

; <label>:85:                                     ; preds = %76
  %86 = trunc i32 %74 to i16
  br label %102

; <label>:87:                                     ; preds = %61
  %88 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %89 = load i32, i32* %88, align 8, !tbaa !47
  %90 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %91 = load i32, i32* %90, align 4, !tbaa !48
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %99

; <label>:93:                                     ; preds = %87
  %94 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0
  %95 = load i64, i64* %94, align 8, !tbaa !28
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
  store i16 %104, i16* %106, align 8, !tbaa !28
  store i32 %105, i32* %4, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_prefix(%struct.FuncState*, i32, %struct.expdesc* nocapture, i32) local_unnamed_addr #2 {
  switch i32 %1, label %192 [
    i32 0, label %5
    i32 1, label %5
    i32 3, label %9
    i32 2, label %29
  ]

; <label>:5:                                      ; preds = %4, %4
  %6 = add i32 %1, 12
  %7 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %6, %struct.expdesc* %2, %struct.expdesc* nonnull @luaK_prefix.ef)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %192

; <label>:9:                                      ; preds = %5, %4
  %10 = add i32 %1, 50
  %11 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 7
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %16 = bitcast %union.anon.7* %15 to i32*
  br i1 %14, label %17, label %27

; <label>:17:                                     ; preds = %9
  %18 = load i32, i32* %16, align 8, !tbaa !28
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %20 = load i8, i8* %19, align 2, !tbaa !46
  %21 = zext i8 %20 to i32
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %25 = load i8, i8* %24, align 4, !tbaa !29
  %26 = add i8 %25, -1
  store i8 %26, i8* %24, align 4, !tbaa !29
  br label %27

; <label>:27:                                     ; preds = %9, %17, %23
  %28 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 %10, i32 0, i32 %11, i32 0, i32 0) #8
  store i32 %28, i32* %16, align 8, !tbaa !28
  store i32 15, i32* %12, align 8, !tbaa !44
  tail call void @luaK_fixline(%struct.FuncState* %0, i32 %3) #8
  br label %192

; <label>:29:                                     ; preds = %4
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %30 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %31 = load i32, i32* %30, align 8, !tbaa !44
  switch i32 %31, label %99 [
    i32 1, label %32
    i32 3, label %32
    i32 4, label %33
    i32 5, label %33
    i32 6, label %33
    i32 2, label %33
    i32 14, label %34
    i32 7, label %83
    i32 15, label %60
  ]

; <label>:32:                                     ; preds = %29, %29
  store i32 2, i32* %30, align 8, !tbaa !44
  br label %99

; <label>:33:                                     ; preds = %29, %29, %29, %29
  store i32 3, i32* %30, align 8, !tbaa !44
  br label %99

; <label>:34:                                     ; preds = %29
  %35 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %36 = load %struct.Proto*, %struct.Proto** %35, align 8, !tbaa !13
  %37 = getelementptr %struct.Proto, %struct.Proto* %36, i64 0, i32 16
  %38 = load i32*, i32** %37, align 8, !tbaa !14
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %40 = bitcast %union.anon.7* %39 to i32*
  %41 = load i32, i32* %40, align 8, !tbaa !28
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = icmp sgt i32 %41, 0
  br i1 %44, label %45, label %54

; <label>:45:                                     ; preds = %34
  %46 = getelementptr inbounds i32, i32* %43, i64 -1
  %47 = load i32, i32* %46, align 4, !tbaa !16
  %48 = and i32 %47, 127
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1, !tbaa !28
  %52 = and i8 %51, 16
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %56

; <label>:54:                                     ; preds = %45, %34
  %55 = load i32, i32* %43, align 4, !tbaa !16
  br label %56

; <label>:56:                                     ; preds = %54, %45
  %57 = phi i32 [ %55, %54 ], [ %47, %45 ]
  %58 = phi i32* [ %43, %54 ], [ %46, %45 ]
  %59 = xor i32 %57, 32768
  store i32 %59, i32* %58, align 4, !tbaa !16
  br label %99

; <label>:60:                                     ; preds = %29
  %61 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %62 = load i8, i8* %61, align 4, !tbaa !29
  %63 = add i8 %62, 1
  %64 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %65 = load %struct.Proto*, %struct.Proto** %64, align 8, !tbaa !13
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 5
  %67 = load i8, i8* %66, align 4, !tbaa !30
  %68 = icmp ult i8 %62, %67
  br i1 %68, label %75, label %69

; <label>:69:                                     ; preds = %60
  %70 = icmp ugt i8 %62, -3
  br i1 %70, label %71, label %74

; <label>:71:                                     ; preds = %69
  %72 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %73 = load %struct.LexState*, %struct.LexState** %72, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %73, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #7
  unreachable

; <label>:74:                                     ; preds = %69
  store i8 %63, i8* %66, align 4, !tbaa !30
  br label %75

; <label>:75:                                     ; preds = %74, %60
  store i8 %63, i8* %61, align 4, !tbaa !29
  %76 = zext i8 %63 to i32
  %77 = add nsw i32 %76, -1
  tail call fastcc void @discharge2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %77) #8
  %78 = load i32, i32* %30, align 8, !tbaa !44
  %79 = icmp eq i32 %78, 7
  br i1 %79, label %83, label %80

; <label>:80:                                     ; preds = %75
  %81 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %82 = bitcast %union.anon.7* %81 to i32*
  br label %95

; <label>:83:                                     ; preds = %75, %29
  %84 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %85 = bitcast %union.anon.7* %84 to i32*
  %86 = load i32, i32* %85, align 8, !tbaa !28
  %87 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %88 = load i8, i8* %87, align 2, !tbaa !46
  %89 = zext i8 %88 to i32
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %95, label %91

; <label>:91:                                     ; preds = %83
  %92 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %93 = load i8, i8* %92, align 4, !tbaa !29
  %94 = add i8 %93, -1
  store i8 %94, i8* %92, align 4, !tbaa !29
  br label %95

; <label>:95:                                     ; preds = %91, %83, %80
  %96 = phi i32* [ %82, %80 ], [ %85, %83 ], [ %85, %91 ]
  %97 = load i32, i32* %96, align 8, !tbaa !28
  %98 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %0, i32 52, i32 0, i32 %97, i32 0, i32 0) #8
  store i32 %98, i32* %96, align 8, !tbaa !28
  store i32 15, i32* %30, align 8, !tbaa !44
  br label %99

; <label>:99:                                     ; preds = %95, %56, %33, %32, %29
  %100 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %101 = load i32, i32* %100, align 4, !tbaa !48
  %102 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %103 = load i32, i32* %102, align 8, !tbaa !47
  store i32 %103, i32* %100, align 4, !tbaa !48
  store i32 %101, i32* %102, align 8, !tbaa !47
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %148, label %105

; <label>:105:                                    ; preds = %99
  %106 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %107 = load %struct.Proto*, %struct.Proto** %106, align 8, !tbaa !13
  %108 = getelementptr %struct.Proto, %struct.Proto* %107, i64 0, i32 16
  %109 = load i32*, i32** %108, align 8, !tbaa !14
  br label %110

; <label>:110:                                    ; preds = %137, %105
  %111 = phi i32 [ %103, %105 ], [ %144, %137 ]
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = icmp sgt i32 %111, 0
  br i1 %114, label %115, label %124

; <label>:115:                                    ; preds = %110
  %116 = getelementptr inbounds i32, i32* %113, i64 -1
  %117 = load i32, i32* %116, align 4, !tbaa !16
  %118 = and i32 %117, 127
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %119
  %121 = load i8, i8* %120, align 1, !tbaa !28
  %122 = and i8 %121, 16
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %126

; <label>:124:                                    ; preds = %115, %110
  %125 = load i32, i32* %113, align 4, !tbaa !16
  br label %126

; <label>:126:                                    ; preds = %124, %115
  %127 = phi i32 [ %125, %124 ], [ %117, %115 ]
  %128 = phi i32* [ %113, %124 ], [ %116, %115 ]
  %129 = and i32 %127, 127
  %130 = icmp eq i32 %129, 68
  br i1 %130, label %131, label %137

; <label>:131:                                    ; preds = %126
  %132 = lshr i32 %127, 9
  %133 = and i32 %132, 32640
  %134 = and i32 %127, 32768
  %135 = or i32 %134, %133
  %136 = or i32 %135, 67
  store i32 %136, i32* %128, align 4, !tbaa !16
  br label %137

; <label>:137:                                    ; preds = %131, %126
  %138 = load i32, i32* %113, align 4, !tbaa !16
  %139 = lshr i32 %138, 7
  %140 = add nsw i32 %139, -16777215
  %141 = icmp eq i32 %140, -1
  %142 = add nsw i32 %111, 1
  %143 = add nsw i32 %142, %140
  %144 = select i1 %141, i32 -1, i32 %143
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %110

; <label>:146:                                    ; preds = %137
  %147 = load i32, i32* %102, align 8, !tbaa !47
  br label %148

; <label>:148:                                    ; preds = %146, %99
  %149 = phi i32 [ %147, %146 ], [ %101, %99 ]
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %192, label %151

; <label>:151:                                    ; preds = %148
  %152 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %153 = load %struct.Proto*, %struct.Proto** %152, align 8, !tbaa !13
  %154 = getelementptr %struct.Proto, %struct.Proto* %153, i64 0, i32 16
  %155 = load i32*, i32** %154, align 8, !tbaa !14
  br label %156

; <label>:156:                                    ; preds = %183, %151
  %157 = phi i32 [ %149, %151 ], [ %190, %183 ]
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = icmp sgt i32 %157, 0
  br i1 %160, label %161, label %170

; <label>:161:                                    ; preds = %156
  %162 = getelementptr inbounds i32, i32* %159, i64 -1
  %163 = load i32, i32* %162, align 4, !tbaa !16
  %164 = and i32 %163, 127
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %165
  %167 = load i8, i8* %166, align 1, !tbaa !28
  %168 = and i8 %167, 16
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %172

; <label>:170:                                    ; preds = %161, %156
  %171 = load i32, i32* %159, align 4, !tbaa !16
  br label %172

; <label>:172:                                    ; preds = %170, %161
  %173 = phi i32 [ %171, %170 ], [ %163, %161 ]
  %174 = phi i32* [ %159, %170 ], [ %162, %161 ]
  %175 = and i32 %173, 127
  %176 = icmp eq i32 %175, 68
  br i1 %176, label %177, label %183

; <label>:177:                                    ; preds = %172
  %178 = lshr i32 %173, 9
  %179 = and i32 %178, 32640
  %180 = and i32 %173, 32768
  %181 = or i32 %180, %179
  %182 = or i32 %181, 67
  store i32 %182, i32* %174, align 4, !tbaa !16
  br label %183

; <label>:183:                                    ; preds = %177, %172
  %184 = load i32, i32* %159, align 4, !tbaa !16
  %185 = lshr i32 %184, 7
  %186 = add nsw i32 %185, -16777215
  %187 = icmp eq i32 %186, -1
  %188 = add nsw i32 %157, 1
  %189 = add nsw i32 %188, %186
  %190 = select i1 %187, i32 -1, i32 %189
  %191 = icmp eq i32 %190, -1
  br i1 %191, label %192, label %156

; <label>:192:                                    ; preds = %183, %148, %5, %4, %27
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
  %13 = load i32, i32* %12, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %15 = load i32, i32* %14, align 4, !tbaa !48
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %86

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %19 = load i32, i32* %18, align 8, !tbaa !44
  switch i32 %19, label %86 [
    i32 6, label %21
    i32 5, label %20
  ]

; <label>:20:                                     ; preds = %17
  br label %21

; <label>:21:                                     ; preds = %17, %20
  %22 = phi i8 [ 19, %20 ], [ 35, %17 ]
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0
  %24 = load i64, i64* %23, align 8, !tbaa !28
  %25 = bitcast %struct.TValue* %6 to i64*
  store i64 %24, i64* %25, align 8, !tbaa !28
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  store i8 %22, i8* %26, align 8, !tbaa !33
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %28 = load i32, i32* %27, align 8, !tbaa !47
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %30 = load i32, i32* %29, align 4, !tbaa !48
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %86

; <label>:32:                                     ; preds = %21
  %33 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %34 = load i32, i32* %33, align 8, !tbaa !44
  switch i32 %34, label %86 [
    i32 6, label %36
    i32 5, label %35
  ]

; <label>:35:                                     ; preds = %32
  br label %36

; <label>:36:                                     ; preds = %32, %35
  %37 = phi i8 [ 19, %35 ], [ 35, %32 ]
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %39 = load i64, i64* %38, align 8, !tbaa !28
  %40 = bitcast %struct.TValue* %7 to i64*
  store i64 %39, i64* %40, align 8, !tbaa !28
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  store i8 %37, i8* %41, align 8, !tbaa !33
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
  store i64 %24, i64* %5, align 8, !tbaa !49
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
  %52 = load i8, i8* %51, align 8, !tbaa !33
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
  %73 = load i8, i8* %72, align 8, !tbaa !33
  %74 = icmp eq i8 %73, 35
  br i1 %74, label %75, label %79

; <label>:75:                                     ; preds = %66
  store i32 6, i32* %18, align 8, !tbaa !44
  %76 = bitcast %struct.TValue* %8 to i64*
  %77 = load i64, i64* %76, align 8, !tbaa !28
  %78 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0
  store i64 %77, i64* %78, align 8, !tbaa !28
  br label %86

; <label>:79:                                     ; preds = %66
  %80 = bitcast %struct.TValue* %8 to double*
  %81 = load double, double* %80, align 8, !tbaa !28
  %82 = fcmp ueq double %81, 0.000000e+00
  br i1 %82, label %86, label %83

; <label>:83:                                     ; preds = %79
  store i32 5, i32* %18, align 8, !tbaa !44
  %84 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %85 = bitcast %union.anon.7* %84 to double*
  store double %81, double* %85, align 8, !tbaa !28
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
  %9 = load i32, i32* %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 7
  br i1 %10, label %11, label %23

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %13 = bitcast %union.anon.7* %12 to i32*
  %14 = load i32, i32* %13, align 8, !tbaa !28
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %16 = load i8, i8* %15, align 2, !tbaa !46
  %17 = zext i8 %16 to i32
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %11
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %21 = load i8, i8* %20, align 4, !tbaa !29
  %22 = add i8 %21, -1
  store i8 %22, i8* %20, align 4, !tbaa !29
  br label %23

; <label>:23:                                     ; preds = %19, %11, %7
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %25 = load i8, i8* %24, align 4, !tbaa !29
  %26 = add i8 %25, 1
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %28 = load %struct.Proto*, %struct.Proto** %27, align 8, !tbaa !13
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i64 0, i32 5
  %30 = load i8, i8* %29, align 4, !tbaa !30
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
  store i8 %26, i8* %29, align 4, !tbaa !30
  br label %38

; <label>:38:                                     ; preds = %23, %37
  store i8 %26, i8* %24, align 4, !tbaa !29
  %39 = zext i8 %26 to i32
  %40 = add nsw i32 %39, -1
  tail call fastcc void @exp2reg(%struct.FuncState* nonnull %0, %struct.expdesc* nonnull %2, i32 %40) #8
  br label %101

; <label>:41:                                     ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %42 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %43 = load i32, i32* %42, align 8, !tbaa !47
  %44 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %45 = load i32, i32* %44, align 4, !tbaa !48
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %52

; <label>:47:                                     ; preds = %41
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %49 = load i32, i32* %48, align 8, !tbaa !44
  %50 = add i32 %49, -5
  %51 = icmp ult i32 %50, 2
  br i1 %51, label %101, label %52

; <label>:52:                                     ; preds = %47, %41
  %53 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2)
  br label %101

; <label>:54:                                     ; preds = %3, %3
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %56 = load i32, i32* %55, align 8, !tbaa !47
  %57 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %58 = load i32, i32* %57, align 4, !tbaa !48
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %65

; <label>:60:                                     ; preds = %54
  %61 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %62 = load i32, i32* %61, align 8, !tbaa !44
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
  %73 = load i32, i32* %72, align 8, !tbaa !44
  switch i32 %73, label %98 [
    i32 6, label %74
    i32 5, label %77
  ]

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0
  %76 = load i64, i64* %75, align 8, !tbaa !28
  store i64 %76, i64* %4, align 8, !tbaa !49
  br label %87

; <label>:77:                                     ; preds = %70
  %78 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %79 = bitcast %union.anon.7* %78 to double*
  %80 = load double, double* %79, align 8, !tbaa !28
  %81 = call i32 @luaV_flttointeger(double %80, i64* nonnull %4, i32 0) #8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %98, label %83

; <label>:83:                                     ; preds = %77
  %84 = load i64, i64* %4, align 8, !tbaa !49
  %85 = add i64 %84, 65535
  %86 = icmp ugt i64 %85, 131071
  br i1 %86, label %98, label %87

; <label>:87:                                     ; preds = %83, %74
  %88 = phi i64 [ %76, %74 ], [ %84, %83 ]
  %89 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %90 = load i32, i32* %89, align 8, !tbaa !47
  %91 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %92 = load i32, i32* %91, align 4, !tbaa !48
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %98

; <label>:94:                                     ; preds = %87
  %95 = add i64 %88, 127
  %96 = icmp ugt i64 %95, 255
  br i1 %96, label %98, label %97

; <label>:97:                                     ; preds = %94
  store i64 %95, i64* %4, align 8, !tbaa !49
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
  switch i32 %1, label %472 [
    i32 19, label %12
    i32 20, label %55
    i32 12, label %98
    i32 0, label %194
    i32 2, label %194
    i32 1, label %214
    i32 5, label %214
    i32 6, label %214
    i32 3, label %214
    i32 4, label %214
    i32 7, label %219
    i32 8, label %219
    i32 9, label %219
    i32 10, label %300
    i32 11, label %340
    i32 13, label %360
    i32 16, label %360
    i32 14, label %465
    i32 15, label %465
    i32 17, label %467
    i32 18, label %467
  ]

; <label>:12:                                     ; preds = %5
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %3)
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %15 = load i32, i32* %14, align 4, !tbaa !48
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
  %22 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %23 = load %struct.Proto*, %struct.Proto** %22, align 8, !tbaa !13
  %24 = getelementptr %struct.Proto, %struct.Proto* %23, i64 0, i32 16
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 24, i32 8, i1 false), !tbaa.struct !51
  br label %472

; <label>:55:                                     ; preds = %5
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %3)
  %56 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %57 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %58 = load i32, i32* %57, align 8, !tbaa !47
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
  %65 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %66 = load %struct.Proto*, %struct.Proto** %65, align 8, !tbaa !13
  %67 = getelementptr %struct.Proto, %struct.Proto* %66, i64 0, i32 16
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 24, i32 8, i1 false), !tbaa.struct !51
  br label %472

; <label>:98:                                     ; preds = %5
  tail call void @luaK_dischargevars(%struct.FuncState* %0, %struct.expdesc* %3) #8
  %99 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %100 = load i32, i32* %99, align 8, !tbaa !44
  %101 = icmp eq i32 %100, 7
  br i1 %101, label %102, label %114

; <label>:102:                                    ; preds = %98
  %103 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %104 = bitcast %union.anon.7* %103 to i32*
  %105 = load i32, i32* %104, align 8, !tbaa !28
  %106 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %107 = load i8, i8* %106, align 2, !tbaa !46
  %108 = zext i8 %107 to i32
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %114, label %110

; <label>:110:                                    ; preds = %102
  %111 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %112 = load i8, i8* %111, align 4, !tbaa !29
  %113 = add i8 %112, -1
  store i8 %113, i8* %111, align 4, !tbaa !29
  br label %114

; <label>:114:                                    ; preds = %110, %102, %98
  %115 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %116 = load i8, i8* %115, align 4, !tbaa !29
  %117 = add i8 %116, 1
  %118 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %119 = load %struct.Proto*, %struct.Proto** %118, align 8, !tbaa !13
  %120 = getelementptr inbounds %struct.Proto, %struct.Proto* %119, i64 0, i32 5
  %121 = load i8, i8* %120, align 4, !tbaa !30
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
  store i8 %117, i8* %120, align 4, !tbaa !30
  br label %129

; <label>:129:                                    ; preds = %114, %128
  store i8 %117, i8* %115, align 4, !tbaa !29
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
  %150 = load i32, i32* %99, align 8, !tbaa !44
  %151 = icmp eq i32 %150, 7
  br i1 %151, label %152, label %163

; <label>:152:                                    ; preds = %149
  %153 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %154 = bitcast %union.anon.7* %153 to i32*
  %155 = load i32, i32* %154, align 8, !tbaa !28
  %156 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %157 = load i8, i8* %156, align 2, !tbaa !46
  %158 = zext i8 %157 to i32
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %163, label %160

; <label>:160:                                    ; preds = %152
  %161 = load i8, i8* %115, align 4, !tbaa !29
  %162 = add i8 %161, -1
  store i8 %162, i8* %115, align 4, !tbaa !29
  br label %163

; <label>:163:                                    ; preds = %160, %152, %149
  %164 = and i32 %146, -16744321
  %165 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %166 = bitcast %union.anon.7* %165 to i32*
  %167 = load i32, i32* %166, align 8, !tbaa !28
  %168 = shl i32 %167, 7
  %169 = and i32 %168, 32640
  %170 = and i32 %146, 16711680
  %171 = add nuw nsw i32 %170, 65536
  %172 = and i32 %171, 16711680
  %173 = or i32 %172, %164
  %174 = or i32 %173, %169
  store i32 %174, i32* %145, align 4, !tbaa !16
  br label %472

; <label>:175:                                    ; preds = %144
  %176 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %177 = bitcast %union.anon.7* %176 to i32*
  %178 = load i32, i32* %177, align 8, !tbaa !28
  %179 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %0, i32 54, i32 %178, i32 2, i32 0, i32 0) #8
  %180 = load i32, i32* %99, align 8, !tbaa !44
  %181 = icmp eq i32 %180, 7
  br i1 %181, label %182, label %193

; <label>:182:                                    ; preds = %175
  %183 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %184 = bitcast %union.anon.7* %183 to i32*
  %185 = load i32, i32* %184, align 8, !tbaa !28
  %186 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %187 = load i8, i8* %186, align 2, !tbaa !46
  %188 = zext i8 %187 to i32
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %193, label %190

; <label>:190:                                    ; preds = %182
  %191 = load i8, i8* %115, align 4, !tbaa !29
  %192 = add i8 %191, -1
  store i8 %192, i8* %115, align 4, !tbaa !29
  br label %193

; <label>:193:                                    ; preds = %190, %182, %175
  tail call void @luaK_fixline(%struct.FuncState* nonnull %0, i32 %4) #8
  br label %472

; <label>:194:                                    ; preds = %5, %5
  %195 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3)
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %472

; <label>:197:                                    ; preds = %194
  %198 = add i32 %1, 38
  %199 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %200 = load i32, i32* %199, align 8, !tbaa !47
  %201 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %202 = load i32, i32* %201, align 4, !tbaa !48
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %213

; <label>:204:                                    ; preds = %197
  %205 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %206 = load i32, i32* %205, align 8, !tbaa !44
  %207 = add i32 %206, -5
  %208 = icmp ult i32 %207, 2
  br i1 %208, label %209, label %213

; <label>:209:                                    ; preds = %204
  %210 = bitcast %struct.expdesc* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %210)
  %211 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %210, i8* %211, i64 24, i32 8, i1 false) #8, !tbaa.struct !51
  %212 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %211, i8* %212, i64 24, i32 8, i1 false) #8, !tbaa.struct !51
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %212, i8* nonnull %210, i64 24, i32 8, i1 false) #8, !tbaa.struct !51
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %210)
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 %198, %struct.expdesc* nonnull %2, %struct.expdesc* %3, i32 1, i32 %4) #8
  br label %472

; <label>:213:                                    ; preds = %204, %197
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 %198, %struct.expdesc* nonnull %2, %struct.expdesc* %3, i32 0, i32 %4) #8
  br label %472

; <label>:214:                                    ; preds = %5, %5, %5, %5, %5
  %215 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3)
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %472

; <label>:217:                                    ; preds = %214
  %218 = add i32 %1, 38
  tail call fastcc void @codearith(%struct.FuncState* %0, i32 %218, %struct.expdesc* %2, %struct.expdesc* %3, i32 0, i32 %4)
  br label %472

; <label>:219:                                    ; preds = %5, %5, %5
  %220 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* %3)
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %472

; <label>:222:                                    ; preds = %219
  %223 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %224 = load i32, i32* %223, align 8, !tbaa !44
  %225 = icmp eq i32 %224, 6
  br i1 %225, label %226, label %235

; <label>:226:                                    ; preds = %222
  %227 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #8
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %231

; <label>:229:                                    ; preds = %226
  %230 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #8
  br label %235

; <label>:231:                                    ; preds = %226
  %232 = bitcast %struct.expdesc* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %232)
  %233 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %232, i8* %233, i64 24, i32 8, i1 false) #8, !tbaa.struct !51
  %234 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %233, i8* %234, i64 24, i32 8, i1 false) #8, !tbaa.struct !51
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %234, i8* nonnull %232, i64 24, i32 8, i1 false) #8, !tbaa.struct !51
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %232)
  br label %246

; <label>:235:                                    ; preds = %229, %222
  %236 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %237 = load i32, i32* %236, align 8, !tbaa !44
  %238 = icmp eq i32 %237, 6
  br i1 %238, label %239, label %244

; <label>:239:                                    ; preds = %235
  %240 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #8
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %246

; <label>:242:                                    ; preds = %239
  %243 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #8
  br label %244

; <label>:244:                                    ; preds = %242, %235
  %245 = add i32 %1, 38
  tail call fastcc void @codebinexpval(%struct.FuncState* %0, i32 %245, %struct.expdesc* nonnull %2, %struct.expdesc* nonnull %3, i32 %4) #8
  br label %472

; <label>:246:                                    ; preds = %239, %231
  %247 = phi i32 [ 1, %231 ], [ 0, %239 ]
  %248 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %249 = bitcast %union.anon.7* %248 to i32*
  %250 = load i32, i32* %249, align 8, !tbaa !28
  %251 = add i32 %1, 26
  %252 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #8
  %253 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 %251, i32 0, i32 %252, i32 %250, i32 %247) #8
  %254 = load i32, i32* %223, align 8, !tbaa !44
  %255 = icmp eq i32 %254, 7
  br i1 %255, label %256, label %260

; <label>:256:                                    ; preds = %246
  %257 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %258 = bitcast %union.anon.7* %257 to i32*
  %259 = load i32, i32* %258, align 8, !tbaa !28
  br label %260

; <label>:260:                                    ; preds = %256, %246
  %261 = phi i32 [ %259, %256 ], [ -1, %246 ]
  %262 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %263 = load i32, i32* %262, align 8, !tbaa !44
  %264 = icmp eq i32 %263, 7
  br i1 %264, label %265, label %267

; <label>:265:                                    ; preds = %260
  %266 = load i32, i32* %249, align 8, !tbaa !28
  br label %267

; <label>:267:                                    ; preds = %265, %260
  %268 = phi i32 [ %266, %265 ], [ -1, %260 ]
  %269 = icmp sgt i32 %261, %268
  %270 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %271 = load i8, i8* %270, align 2, !tbaa !46
  %272 = zext i8 %271 to i32
  br i1 %269, label %273, label %285

; <label>:273:                                    ; preds = %267
  %274 = icmp slt i32 %261, %272
  br i1 %274, label %279, label %275

; <label>:275:                                    ; preds = %273
  %276 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %277 = load i8, i8* %276, align 4, !tbaa !29
  %278 = add i8 %277, -1
  store i8 %278, i8* %276, align 4, !tbaa !29
  br label %279

; <label>:279:                                    ; preds = %275, %273
  %280 = icmp slt i32 %268, %272
  br i1 %280, label %297, label %281

; <label>:281:                                    ; preds = %279
  %282 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %283 = load i8, i8* %282, align 4, !tbaa !29
  %284 = add i8 %283, -1
  store i8 %284, i8* %282, align 4, !tbaa !29
  br label %297

; <label>:285:                                    ; preds = %267
  %286 = icmp slt i32 %268, %272
  br i1 %286, label %291, label %287

; <label>:287:                                    ; preds = %285
  %288 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %289 = load i8, i8* %288, align 4, !tbaa !29
  %290 = add i8 %289, -1
  store i8 %290, i8* %288, align 4, !tbaa !29
  br label %291

; <label>:291:                                    ; preds = %287, %285
  %292 = icmp slt i32 %261, %272
  br i1 %292, label %297, label %293

; <label>:293:                                    ; preds = %291
  %294 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %295 = load i8, i8* %294, align 4, !tbaa !29
  %296 = add i8 %295, -1
  store i8 %296, i8* %294, align 4, !tbaa !29
  br label %297

; <label>:297:                                    ; preds = %293, %291, %281, %279
  %298 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %299 = bitcast %union.anon.7* %298 to i32*
  store i32 %253, i32* %299, align 8, !tbaa !28
  store i32 15, i32* %223, align 8, !tbaa !44
  tail call void @luaK_fixline(%struct.FuncState* nonnull %0, i32 %4) #8
  br label %472

; <label>:300:                                    ; preds = %5
  %301 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 10, %struct.expdesc* %2, %struct.expdesc* %3)
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %472

; <label>:303:                                    ; preds = %300
  %304 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %305 = load i32, i32* %304, align 8, !tbaa !44
  %306 = icmp eq i32 %305, 6
  br i1 %306, label %307, label %322

; <label>:307:                                    ; preds = %303
  %308 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %309 = load i32, i32* %308, align 8, !tbaa !47
  %310 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %311 = load i32, i32* %310, align 4, !tbaa !48
  %312 = icmp eq i32 %309, %311
  br i1 %312, label %313, label %322

; <label>:313:                                    ; preds = %307
  %314 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0
  %315 = load i64, i64* %314, align 8, !tbaa !28
  %316 = add i64 %315, 127
  %317 = icmp ugt i64 %316, 255
  br i1 %317, label %322, label %318

; <label>:318:                                    ; preds = %313
  %319 = bitcast %struct.expdesc* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %319)
  %320 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %319, i8* %320, i64 24, i32 8, i1 false) #8, !tbaa.struct !51
  %321 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %320, i8* %321, i64 24, i32 8, i1 false) #8, !tbaa.struct !51
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %321, i8* nonnull %319, i64 24, i32 8, i1 false) #8, !tbaa.struct !51
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %319)
  tail call fastcc void @codebini(%struct.FuncState* %0, i32 37, %struct.expdesc* nonnull %2, %struct.expdesc* %3, i32 1, i32 %4)
  br label %472

; <label>:322:                                    ; preds = %303, %307, %313
  %323 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %324 = load i32, i32* %323, align 8, !tbaa !44
  %325 = icmp eq i32 %324, 6
  br i1 %325, label %326, label %339

; <label>:326:                                    ; preds = %322
  %327 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %328 = load i32, i32* %327, align 8, !tbaa !47
  %329 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %330 = load i32, i32* %329, align 4, !tbaa !48
  %331 = icmp eq i32 %328, %330
  br i1 %331, label %332, label %339

; <label>:332:                                    ; preds = %326
  %333 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %334 = load i64, i64* %333, align 8, !tbaa !28
  %335 = add i64 %334, 127
  %336 = icmp ugt i64 %335, 255
  br i1 %336, label %339, label %337

; <label>:337:                                    ; preds = %332
  %338 = sub nsw i64 0, %334
  store i64 %338, i64* %333, align 8, !tbaa !28
  tail call fastcc void @codebini(%struct.FuncState* %0, i32 36, %struct.expdesc* nonnull %2, %struct.expdesc* nonnull %3, i32 1, i32 %4) #8
  br label %472

; <label>:339:                                    ; preds = %332, %326, %322
  tail call fastcc void @codebinexpval(%struct.FuncState* %0, i32 48, %struct.expdesc* nonnull %2, %struct.expdesc* nonnull %3, i32 %4) #8
  br label %472

; <label>:340:                                    ; preds = %5
  %341 = tail call fastcc i32 @constfolding(%struct.FuncState* %0, i32 11, %struct.expdesc* %2, %struct.expdesc* %3)
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %472

; <label>:343:                                    ; preds = %340
  %344 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %345 = load i32, i32* %344, align 8, !tbaa !44
  %346 = icmp eq i32 %345, 6
  br i1 %346, label %347, label %359

; <label>:347:                                    ; preds = %343
  %348 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %349 = load i32, i32* %348, align 8, !tbaa !47
  %350 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %351 = load i32, i32* %350, align 4, !tbaa !48
  %352 = icmp eq i32 %349, %351
  br i1 %352, label %353, label %359

; <label>:353:                                    ; preds = %347
  %354 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %355 = load i64, i64* %354, align 8, !tbaa !28
  %356 = add i64 %355, 127
  %357 = icmp ugt i64 %356, 255
  br i1 %357, label %359, label %358

; <label>:358:                                    ; preds = %353
  tail call fastcc void @codebini(%struct.FuncState* %0, i32 36, %struct.expdesc* %2, %struct.expdesc* nonnull %3, i32 0, i32 %4) #8
  br label %472

; <label>:359:                                    ; preds = %353, %347, %343
  tail call fastcc void @codebinexpval(%struct.FuncState* %0, i32 49, %struct.expdesc* %2, %struct.expdesc* nonnull %3, i32 %4) #8
  br label %472

; <label>:360:                                    ; preds = %5, %5
  %361 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %361) #8
  %362 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %363 = load i32, i32* %362, align 8, !tbaa !44
  %364 = icmp eq i32 %363, 7
  br i1 %364, label %369, label %365

; <label>:365:                                    ; preds = %360
  %366 = bitcast %struct.expdesc* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %366)
  %367 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %366, i8* %367, i64 24, i32 8, i1 false) #8, !tbaa.struct !51
  %368 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %367, i8* %368, i64 24, i32 8, i1 false) #8, !tbaa.struct !51
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %368, i8* nonnull %366, i64 24, i32 8, i1 false) #8, !tbaa.struct !51
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %366)
  br label %369

; <label>:369:                                    ; preds = %365, %360
  %370 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %2) #8
  %371 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %372 = load i32, i32* %371, align 8, !tbaa !44
  switch i32 %372, label %399 [
    i32 6, label %373
    i32 5, label %376
  ]

; <label>:373:                                    ; preds = %369
  %374 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %375 = load i64, i64* %374, align 8, !tbaa !28
  store i64 %375, i64* %8, align 8, !tbaa !49
  br label %386

; <label>:376:                                    ; preds = %369
  %377 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %378 = bitcast %union.anon.7* %377 to double*
  %379 = load double, double* %378, align 8, !tbaa !28
  %380 = call i32 @luaV_flttointeger(double %379, i64* nonnull %8, i32 0) #8
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %399, label %382

; <label>:382:                                    ; preds = %376
  %383 = load i64, i64* %8, align 8, !tbaa !49
  %384 = add i64 %383, 65535
  %385 = icmp ugt i64 %384, 131071
  br i1 %385, label %399, label %386

; <label>:386:                                    ; preds = %382, %373
  %387 = phi i32 [ 0, %373 ], [ 1, %382 ]
  %388 = phi i64 [ %375, %373 ], [ %383, %382 ]
  %389 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %390 = load i32, i32* %389, align 8, !tbaa !47
  %391 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %392 = load i32, i32* %391, align 4, !tbaa !48
  %393 = icmp eq i32 %390, %392
  br i1 %393, label %394, label %399

; <label>:394:                                    ; preds = %386
  %395 = add i64 %388, 127
  %396 = icmp ugt i64 %395, 255
  br i1 %396, label %399, label %397

; <label>:397:                                    ; preds = %394
  store i64 %395, i64* %8, align 8, !tbaa !49
  %398 = trunc i64 %395 to i32
  br label %410

; <label>:399:                                    ; preds = %394, %386, %382, %376, %369
  %400 = phi i32 [ %387, %386 ], [ %387, %394 ], [ 0, %382 ], [ 0, %376 ], [ 0, %369 ]
  %401 = call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #8
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %407, label %403

; <label>:403:                                    ; preds = %399
  %404 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %405 = bitcast %union.anon.7* %404 to i32*
  %406 = load i32, i32* %405, align 8, !tbaa !28
  br label %410

; <label>:407:                                    ; preds = %399
  %408 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #8
  %409 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3) #8
  br label %410

; <label>:410:                                    ; preds = %407, %403, %397
  %411 = phi i32 [ %387, %397 ], [ %400, %403 ], [ %400, %407 ]
  %412 = phi i32 [ %398, %397 ], [ %406, %403 ], [ %409, %407 ]
  %413 = phi i32 [ 62, %397 ], [ 61, %403 ], [ 58, %407 ]
  %414 = load i32, i32* %362, align 8, !tbaa !44
  %415 = icmp eq i32 %414, 7
  br i1 %415, label %416, label %420

; <label>:416:                                    ; preds = %410
  %417 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %418 = bitcast %union.anon.7* %417 to i32*
  %419 = load i32, i32* %418, align 8, !tbaa !28
  br label %420

; <label>:420:                                    ; preds = %416, %410
  %421 = phi i32 [ %419, %416 ], [ -1, %410 ]
  %422 = load i32, i32* %371, align 8, !tbaa !44
  %423 = icmp eq i32 %422, 7
  br i1 %423, label %424, label %428

; <label>:424:                                    ; preds = %420
  %425 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %426 = bitcast %union.anon.7* %425 to i32*
  %427 = load i32, i32* %426, align 8, !tbaa !28
  br label %428

; <label>:428:                                    ; preds = %424, %420
  %429 = phi i32 [ %427, %424 ], [ -1, %420 ]
  %430 = icmp sgt i32 %421, %429
  %431 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %432 = load i8, i8* %431, align 2, !tbaa !46
  %433 = zext i8 %432 to i32
  br i1 %430, label %434, label %446

; <label>:434:                                    ; preds = %428
  %435 = icmp slt i32 %421, %433
  br i1 %435, label %440, label %436

; <label>:436:                                    ; preds = %434
  %437 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %438 = load i8, i8* %437, align 4, !tbaa !29
  %439 = add i8 %438, -1
  store i8 %439, i8* %437, align 4, !tbaa !29
  br label %440

; <label>:440:                                    ; preds = %436, %434
  %441 = icmp slt i32 %429, %433
  br i1 %441, label %458, label %442

; <label>:442:                                    ; preds = %440
  %443 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %444 = load i8, i8* %443, align 4, !tbaa !29
  %445 = add i8 %444, -1
  store i8 %445, i8* %443, align 4, !tbaa !29
  br label %458

; <label>:446:                                    ; preds = %428
  %447 = icmp slt i32 %429, %433
  br i1 %447, label %452, label %448

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %450 = load i8, i8* %449, align 4, !tbaa !29
  %451 = add i8 %450, -1
  store i8 %451, i8* %449, align 4, !tbaa !29
  br label %452

; <label>:452:                                    ; preds = %448, %446
  %453 = icmp slt i32 %421, %433
  br i1 %453, label %458, label %454

; <label>:454:                                    ; preds = %452
  %455 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %456 = load i8, i8* %455, align 4, !tbaa !29
  %457 = add i8 %456, -1
  store i8 %457, i8* %455, align 4, !tbaa !29
  br label %458

; <label>:458:                                    ; preds = %440, %442, %452, %454
  %459 = icmp eq i32 %1, 13
  %460 = zext i1 %459 to i32
  %461 = call i32 @luaK_codeABCk(%struct.FuncState* nonnull %0, i32 %413, i32 %370, i32 %412, i32 %411, i32 %460) #8
  %462 = call i32 @luaK_jump(%struct.FuncState* nonnull %0) #8
  %463 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %464 = bitcast %union.anon.7* %463 to i32*
  store i32 %462, i32* %464, align 8, !tbaa !28
  store i32 14, i32* %362, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %361) #8
  br label %472

; <label>:465:                                    ; preds = %5, %5
  %466 = add i32 %1, 45
  tail call fastcc void @codeorder(%struct.FuncState* %0, i32 %466, %struct.expdesc* %2, %struct.expdesc* %3)
  br label %472

; <label>:467:                                    ; preds = %5, %5
  %468 = add i32 %1, 42
  %469 = bitcast %struct.expdesc* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %469)
  %470 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %469, i8* %470, i64 24, i32 8, i1 false) #8, !tbaa.struct !51
  %471 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %470, i8* %471, i64 24, i32 8, i1 false) #8, !tbaa.struct !51
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %471, i8* nonnull %469, i64 24, i32 8, i1 false) #8, !tbaa.struct !51
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %469)
  tail call fastcc void @codeorder(%struct.FuncState* %0, i32 %468, %struct.expdesc* %2, %struct.expdesc* %3)
  br label %472

; <label>:472:                                    ; preds = %359, %358, %339, %337, %297, %244, %213, %209, %193, %163, %194, %214, %219, %300, %340, %5, %318, %217, %467, %465, %458, %95, %52
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @codearith(%struct.FuncState*, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture, i32, i32) unnamed_addr #2 {
  %7 = alloca %struct.expdesc, align 8
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 6
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %12 = load i32, i32* %11, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %14 = load i32, i32* %13, align 4, !tbaa !48
  %15 = icmp eq i32 %12, %14
  %16 = and i1 %10, %15
  br i1 %16, label %17, label %24

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %19 = load i64, i64* %18, align 8, !tbaa !28
  %20 = add i64 %19, 127
  %21 = icmp ugt i64 %20, 255
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %17
  %23 = add i32 %1, -19
  tail call fastcc void @codebini(%struct.FuncState* %0, i32 %23, %struct.expdesc* %2, %struct.expdesc* nonnull %3, i32 %4, i32 %5)
  br label %93

; <label>:24:                                     ; preds = %6, %17
  %25 = phi i32 [ %12, %17 ], [ %14, %6 ]
  %26 = icmp eq i32 %12, %25
  %27 = add i32 %9, -5
  %28 = icmp ult i32 %27, 2
  %29 = and i1 %28, %26
  br i1 %29, label %30, label %86

; <label>:30:                                     ; preds = %24
  %31 = tail call fastcc i32 @luaK_exp2K(%struct.FuncState* %0, %struct.expdesc* nonnull %3)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %86, label %33

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %35 = bitcast %union.anon.7* %34 to i32*
  %36 = load i32, i32* %35, align 8, !tbaa !28
  %37 = add i32 %1, -12
  %38 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %39 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 %37, i32 0, i32 %38, i32 %36, i32 %4) #8
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %41 = load i32, i32* %40, align 8, !tbaa !44
  %42 = icmp eq i32 %41, 7
  br i1 %42, label %43, label %47

; <label>:43:                                     ; preds = %33
  %44 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %45 = bitcast %union.anon.7* %44 to i32*
  %46 = load i32, i32* %45, align 8, !tbaa !28
  br label %47

; <label>:47:                                     ; preds = %43, %33
  %48 = phi i32 [ %46, %43 ], [ -1, %33 ]
  %49 = load i32, i32* %8, align 8, !tbaa !44
  %50 = icmp eq i32 %49, 7
  br i1 %50, label %51, label %53

; <label>:51:                                     ; preds = %47
  %52 = load i32, i32* %35, align 8, !tbaa !28
  br label %53

; <label>:53:                                     ; preds = %51, %47
  %54 = phi i32 [ %52, %51 ], [ -1, %47 ]
  %55 = icmp sgt i32 %48, %54
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %57 = load i8, i8* %56, align 2, !tbaa !46
  %58 = zext i8 %57 to i32
  br i1 %55, label %59, label %71

; <label>:59:                                     ; preds = %53
  %60 = icmp slt i32 %48, %58
  br i1 %60, label %65, label %61

; <label>:61:                                     ; preds = %59
  %62 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %63 = load i8, i8* %62, align 4, !tbaa !29
  %64 = add i8 %63, -1
  store i8 %64, i8* %62, align 4, !tbaa !29
  br label %65

; <label>:65:                                     ; preds = %61, %59
  %66 = icmp slt i32 %54, %58
  br i1 %66, label %83, label %67

; <label>:67:                                     ; preds = %65
  %68 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %69 = load i8, i8* %68, align 4, !tbaa !29
  %70 = add i8 %69, -1
  store i8 %70, i8* %68, align 4, !tbaa !29
  br label %83

; <label>:71:                                     ; preds = %53
  %72 = icmp slt i32 %54, %58
  br i1 %72, label %77, label %73

; <label>:73:                                     ; preds = %71
  %74 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %75 = load i8, i8* %74, align 4, !tbaa !29
  %76 = add i8 %75, -1
  store i8 %76, i8* %74, align 4, !tbaa !29
  br label %77

; <label>:77:                                     ; preds = %73, %71
  %78 = icmp slt i32 %48, %58
  br i1 %78, label %83, label %79

; <label>:79:                                     ; preds = %77
  %80 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %81 = load i8, i8* %80, align 4, !tbaa !29
  %82 = add i8 %81, -1
  store i8 %82, i8* %80, align 4, !tbaa !29
  br label %83

; <label>:83:                                     ; preds = %65, %67, %77, %79
  %84 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %85 = bitcast %union.anon.7* %84 to i32*
  store i32 %39, i32* %85, align 8, !tbaa !28
  store i32 15, i32* %40, align 8, !tbaa !44
  tail call void @luaK_fixline(%struct.FuncState* nonnull %0, i32 %5) #8
  br label %93

; <label>:86:                                     ; preds = %24, %30
  %87 = icmp eq i32 %4, 0
  br i1 %87, label %92, label %88

; <label>:88:                                     ; preds = %86
  %89 = bitcast %struct.expdesc* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %89)
  %90 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %89, i8* %90, i64 24, i32 8, i1 false) #8, !tbaa.struct !51
  %91 = bitcast %struct.expdesc* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 24, i32 8, i1 false) #8, !tbaa.struct !51
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* nonnull %89, i64 24, i32 8, i1 false) #8, !tbaa.struct !51
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %89)
  br label %92

; <label>:92:                                     ; preds = %86, %88
  tail call fastcc void @codebinexpval(%struct.FuncState* %0, i32 %1, %struct.expdesc* %2, %struct.expdesc* nonnull %3, i32 %5)
  br label %93

; <label>:93:                                     ; preds = %83, %92, %22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codebini(%struct.FuncState*, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture readonly, i32, i32) unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !28
  %9 = trunc i64 %8 to i32
  %10 = add nsw i32 %9, 127
  %11 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %12 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 %1, i32 0, i32 %11, i32 %10, i32 %4) #8
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %14 = load i32, i32* %13, align 8, !tbaa !44
  %15 = icmp eq i32 %14, 7
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %6
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %18 = bitcast %union.anon.7* %17 to i32*
  %19 = load i32, i32* %18, align 8, !tbaa !28
  br label %20

; <label>:20:                                     ; preds = %16, %6
  %21 = phi i32 [ %19, %16 ], [ -1, %6 ]
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %23 = load i32, i32* %22, align 8, !tbaa !44
  %24 = icmp eq i32 %23, 7
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %27 = bitcast %union.anon.7* %26 to i32*
  %28 = load i32, i32* %27, align 8, !tbaa !28
  br label %29

; <label>:29:                                     ; preds = %25, %20
  %30 = phi i32 [ %28, %25 ], [ -1, %20 ]
  %31 = icmp sgt i32 %21, %30
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %33 = load i8, i8* %32, align 2, !tbaa !46
  %34 = zext i8 %33 to i32
  br i1 %31, label %35, label %47

; <label>:35:                                     ; preds = %29
  %36 = icmp slt i32 %21, %34
  br i1 %36, label %41, label %37

; <label>:37:                                     ; preds = %35
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %39 = load i8, i8* %38, align 4, !tbaa !29
  %40 = add i8 %39, -1
  store i8 %40, i8* %38, align 4, !tbaa !29
  br label %41

; <label>:41:                                     ; preds = %37, %35
  %42 = icmp slt i32 %30, %34
  br i1 %42, label %59, label %43

; <label>:43:                                     ; preds = %41
  %44 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %45 = load i8, i8* %44, align 4, !tbaa !29
  %46 = add i8 %45, -1
  store i8 %46, i8* %44, align 4, !tbaa !29
  br label %59

; <label>:47:                                     ; preds = %29
  %48 = icmp slt i32 %30, %34
  br i1 %48, label %53, label %49

; <label>:49:                                     ; preds = %47
  %50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %51 = load i8, i8* %50, align 4, !tbaa !29
  %52 = add i8 %51, -1
  store i8 %52, i8* %50, align 4, !tbaa !29
  br label %53

; <label>:53:                                     ; preds = %49, %47
  %54 = icmp slt i32 %21, %34
  br i1 %54, label %59, label %55

; <label>:55:                                     ; preds = %53
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %57 = load i8, i8* %56, align 4, !tbaa !29
  %58 = add i8 %57, -1
  store i8 %58, i8* %56, align 4, !tbaa !29
  br label %59

; <label>:59:                                     ; preds = %41, %43, %53, %55
  %60 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %61 = bitcast %union.anon.7* %60 to i32*
  store i32 %12, i32* %61, align 8, !tbaa !28
  store i32 15, i32* %13, align 8, !tbaa !44
  tail call void @luaK_fixline(%struct.FuncState* nonnull %0, i32 %5) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codeorder(%struct.FuncState*, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture) unnamed_addr #2 {
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !44
  switch i32 %8, label %39 [
    i32 6, label %9
    i32 5, label %12
  ]

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !28
  store i64 %11, i64* %5, align 8, !tbaa !49
  br label %22

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %14 = bitcast %union.anon.7* %13 to double*
  %15 = load double, double* %14, align 8, !tbaa !28
  %16 = call i32 @luaV_flttointeger(double %15, i64* nonnull %5, i32 0) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %39, label %18

; <label>:18:                                     ; preds = %12
  %19 = load i64, i64* %5, align 8, !tbaa !49
  %20 = add i64 %19, 65535
  %21 = icmp ugt i64 %20, 131071
  br i1 %21, label %39, label %22

; <label>:22:                                     ; preds = %18, %9
  %23 = phi i32 [ 0, %9 ], [ 1, %18 ]
  %24 = phi i64 [ %11, %9 ], [ %19, %18 ]
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %26 = load i32, i32* %25, align 8, !tbaa !47
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %28 = load i32, i32* %27, align 4, !tbaa !48
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %39

; <label>:30:                                     ; preds = %22
  %31 = add i64 %24, 127
  %32 = icmp ugt i64 %31, 255
  br i1 %32, label %39, label %33

; <label>:33:                                     ; preds = %30
  store i64 %31, i64* %5, align 8, !tbaa !49
  %34 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2)
  %35 = load i64, i64* %5, align 8, !tbaa !49
  %36 = trunc i64 %35 to i32
  %37 = add i32 %1, 4
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  br label %77

; <label>:39:                                     ; preds = %4, %18, %30, %22, %12
  %40 = phi i32 [ %23, %22 ], [ %23, %30 ], [ 0, %18 ], [ 0, %12 ], [ 0, %4 ]
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %42 = load i32, i32* %41, align 8, !tbaa !44
  switch i32 %42, label %73 [
    i32 6, label %43
    i32 5, label %46
  ]

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !28
  store i64 %45, i64* %5, align 8, !tbaa !49
  br label %56

; <label>:46:                                     ; preds = %39
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %48 = bitcast %union.anon.7* %47 to double*
  %49 = load double, double* %48, align 8, !tbaa !28
  %50 = call i32 @luaV_flttointeger(double %49, i64* nonnull %5, i32 0) #8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %73, label %52

; <label>:52:                                     ; preds = %46
  %53 = load i64, i64* %5, align 8, !tbaa !49
  %54 = add i64 %53, 65535
  %55 = icmp ugt i64 %54, 131071
  br i1 %55, label %73, label %56

; <label>:56:                                     ; preds = %52, %43
  %57 = phi i32 [ %40, %43 ], [ 1, %52 ]
  %58 = phi i64 [ %45, %43 ], [ %53, %52 ]
  %59 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  %60 = load i32, i32* %59, align 8, !tbaa !47
  %61 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %62 = load i32, i32* %61, align 4, !tbaa !48
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %73

; <label>:64:                                     ; preds = %56
  %65 = add i64 %58, 127
  %66 = icmp ugt i64 %65, 255
  br i1 %66, label %73, label %67

; <label>:67:                                     ; preds = %64
  store i64 %65, i64* %5, align 8, !tbaa !49
  %68 = call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* nonnull %3)
  %69 = load i64, i64* %5, align 8, !tbaa !49
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
  %83 = load i32, i32* %78, align 8, !tbaa !44
  %84 = icmp eq i32 %83, 7
  br i1 %84, label %85, label %89

; <label>:85:                                     ; preds = %77
  %86 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %87 = bitcast %union.anon.7* %86 to i32*
  %88 = load i32, i32* %87, align 8, !tbaa !28
  br label %89

; <label>:89:                                     ; preds = %85, %77
  %90 = phi i32 [ %88, %85 ], [ -1, %77 ]
  %91 = load i32, i32* %7, align 8, !tbaa !44
  %92 = icmp eq i32 %91, 7
  br i1 %92, label %93, label %97

; <label>:93:                                     ; preds = %89
  %94 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %95 = bitcast %union.anon.7* %94 to i32*
  %96 = load i32, i32* %95, align 8, !tbaa !28
  br label %97

; <label>:97:                                     ; preds = %93, %89
  %98 = phi i32 [ %96, %93 ], [ -1, %89 ]
  %99 = icmp sgt i32 %90, %98
  %100 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %101 = load i8, i8* %100, align 2, !tbaa !46
  %102 = zext i8 %101 to i32
  br i1 %99, label %103, label %115

; <label>:103:                                    ; preds = %97
  %104 = icmp slt i32 %90, %102
  br i1 %104, label %109, label %105

; <label>:105:                                    ; preds = %103
  %106 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %107 = load i8, i8* %106, align 4, !tbaa !29
  %108 = add i8 %107, -1
  store i8 %108, i8* %106, align 4, !tbaa !29
  br label %109

; <label>:109:                                    ; preds = %105, %103
  %110 = icmp slt i32 %98, %102
  br i1 %110, label %127, label %111

; <label>:111:                                    ; preds = %109
  %112 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %113 = load i8, i8* %112, align 4, !tbaa !29
  %114 = add i8 %113, -1
  store i8 %114, i8* %112, align 4, !tbaa !29
  br label %127

; <label>:115:                                    ; preds = %97
  %116 = icmp slt i32 %98, %102
  br i1 %116, label %121, label %117

; <label>:117:                                    ; preds = %115
  %118 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %119 = load i8, i8* %118, align 4, !tbaa !29
  %120 = add i8 %119, -1
  store i8 %120, i8* %118, align 4, !tbaa !29
  br label %121

; <label>:121:                                    ; preds = %117, %115
  %122 = icmp slt i32 %90, %102
  br i1 %122, label %127, label %123

; <label>:123:                                    ; preds = %121
  %124 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %125 = load i8, i8* %124, align 4, !tbaa !29
  %126 = add i8 %125, -1
  store i8 %126, i8* %124, align 4, !tbaa !29
  br label %127

; <label>:127:                                    ; preds = %109, %111, %121, %123
  %128 = call i32 @luaK_codeABCk(%struct.FuncState* nonnull %0, i32 %80, i32 %81, i32 %82, i32 %79, i32 1) #8
  %129 = call i32 @luaK_jump(%struct.FuncState* nonnull %0) #8
  %130 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %131 = bitcast %union.anon.7* %130 to i32*
  store i32 %129, i32* %131, align 8, !tbaa !28
  store i32 14, i32* %78, align 8, !tbaa !44
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
  %9 = load i8*, i8** %8, align 8, !tbaa !27
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  %12 = load i8, i8* %11, align 1, !tbaa !28
  %13 = icmp eq i8 %12, -128
  br i1 %13, label %22, label %14

; <label>:14:                                     ; preds = %2
  %15 = sext i8 %12 to i32
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %17 = load i32, i32* %16, align 8, !tbaa !20
  %18 = sub nsw i32 %17, %15
  store i32 %18, i32* %16, align 8, !tbaa !20
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  %20 = load i8, i8* %19, align 1, !tbaa !21
  %21 = add i8 %20, -1
  store i8 %21, i8* %19, align 1, !tbaa !21
  br label %29

; <label>:22:                                     ; preds = %2
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %24 = load i32, i32* %23, align 4, !tbaa !23
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4, !tbaa !23
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  store i8 121, i8* %26, align 1, !tbaa !21
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %28 = load i32, i32* %27, align 8, !tbaa !20
  br label %29

; <label>:29:                                     ; preds = %14, %22
  %30 = phi i8* [ %19, %14 ], [ %26, %22 ]
  %31 = phi i32* [ %16, %14 ], [ %27, %22 ]
  %32 = phi i8 [ %21, %14 ], [ 121, %22 ]
  %33 = phi i32 [ %18, %14 ], [ %28, %22 ]
  %34 = sub nsw i32 %1, %33
  %35 = icmp sgt i32 %34, -1
  %36 = sub i32 0, %34
  %37 = select i1 %35, i32 %34, i32 %36
  %38 = icmp sgt i32 %37, 127
  br i1 %38, label %45, label %39

; <label>:39:                                     ; preds = %29
  %40 = add i8 %32, 1
  store i8 %40, i8* %30, align 1, !tbaa !21
  %41 = icmp ugt i8 %32, 120
  br i1 %41, label %45, label %42

; <label>:42:                                     ; preds = %39
  %43 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %44 = trunc i32 %34 to i8
  br label %64

; <label>:45:                                     ; preds = %39, %29
  %46 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %47 = load %struct.LexState*, %struct.LexState** %46, align 8, !tbaa !17
  %48 = getelementptr inbounds %struct.LexState, %struct.LexState* %47, i64 0, i32 6
  %49 = load %struct.lua_State*, %struct.lua_State** %48, align 8, !tbaa !18
  %50 = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i64 0, i32 20
  %51 = bitcast %struct.AbsLineInfo** %50 to i8**
  %52 = load i8*, i8** %51, align 8, !tbaa !22
  %53 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %54 = load i32, i32* %53, align 4, !tbaa !23
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i64 0, i32 12
  %56 = tail call i8* @luaM_growaux_(%struct.lua_State* %49, i8* %52, i32 %54, i32* nonnull %55, i32 8, i32 2147483647, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #8
  %57 = bitcast i8* %56 to %struct.AbsLineInfo*
  store i8* %56, i8** %51, align 8, !tbaa !22
  %58 = load i32, i32* %53, align 4, !tbaa !23
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %57, i64 %59, i32 0
  store i32 %7, i32* %60, align 4, !tbaa !24
  %61 = add nsw i32 %58, 1
  store i32 %61, i32* %53, align 4, !tbaa !23
  %62 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %57, i64 %59, i32 1
  store i32 %1, i32* %62, align 4, !tbaa !26
  store i8 0, i8* %30, align 1, !tbaa !21
  %63 = load i8*, i8** %8, align 8, !tbaa !27
  br label %64

; <label>:64:                                     ; preds = %42, %45
  %65 = phi i8* [ %9, %42 ], [ %63, %45 ]
  %66 = phi %struct.LexState** [ %43, %42 ], [ %46, %45 ]
  %67 = phi i8 [ %44, %42 ], [ -128, %45 ]
  %68 = load %struct.LexState*, %struct.LexState** %66, align 8, !tbaa !17
  %69 = getelementptr inbounds %struct.LexState, %struct.LexState* %68, i64 0, i32 6
  %70 = load %struct.lua_State*, %struct.lua_State** %69, align 8, !tbaa !18
  %71 = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i64 0, i32 9
  %72 = tail call i8* @luaM_growaux_(%struct.lua_State* %70, i8* %65, i32 %7, i32* nonnull %71, i32 1, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  store i8* %72, i8** %8, align 8, !tbaa !27
  %73 = getelementptr inbounds i8, i8* %72, i64 %10
  store i8 %67, i8* %73, align 1, !tbaa !28
  store i32 %1, i32* %31, align 8, !tbaa !20
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
  br label %87

; <label>:13:                                     ; preds = %4
  %14 = icmp slt i32 %2, 1677721551
  br i1 %14, label %15, label %84

; <label>:15:                                     ; preds = %13
  %16 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 79, i32 %1, i32 %9, i32 0, i32 0)
  %17 = shl i32 %7, 7
  %18 = or i32 %17, 83
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %20 = load %struct.Proto*, %struct.Proto** %19, align 8, !tbaa !13
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %22 = load %struct.LexState*, %struct.LexState** %21, align 8, !tbaa !17
  %23 = getelementptr inbounds %struct.LexState, %struct.LexState* %22, i64 0, i32 6
  %24 = load %struct.lua_State*, %struct.lua_State** %23, align 8, !tbaa !18
  %25 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i64 0, i32 16
  %26 = bitcast i32** %25 to i8**
  %27 = load i8*, i8** %26, align 8, !tbaa !14
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %29 = load i32, i32* %28, align 8, !tbaa !9
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i64 0, i32 8
  %31 = tail call i8* @luaM_growaux_(%struct.lua_State* %24, i8* %27, i32 %29, i32* nonnull %30, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %32 = bitcast i8* %31 to i32*
  store i8* %31, i8** %26, align 8, !tbaa !14
  %33 = load i32, i32* %28, align 8, !tbaa !9
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %28, align 8, !tbaa !9
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32 %18, i32* %36, align 4, !tbaa !16
  %37 = load %struct.LexState*, %struct.LexState** %21, align 8, !tbaa !17
  %38 = getelementptr inbounds %struct.LexState, %struct.LexState* %37, i64 0, i32 2
  %39 = load i32, i32* %38, align 8, !tbaa !19
  %40 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %41 = load i32, i32* %40, align 8, !tbaa !20
  %42 = sub nsw i32 %39, %41
  %43 = load i32, i32* %28, align 8, !tbaa !9
  %44 = add nsw i32 %43, -1
  %45 = icmp sgt i32 %42, -1
  %46 = sub i32 0, %42
  %47 = select i1 %45, i32 %42, i32 %46
  %48 = icmp sgt i32 %47, 127
  %49 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  br i1 %48, label %56, label %50

; <label>:50:                                     ; preds = %15
  %51 = load i8, i8* %49, align 1, !tbaa !21
  %52 = add i8 %51, 1
  store i8 %52, i8* %49, align 1, !tbaa !21
  %53 = icmp ugt i8 %51, 120
  br i1 %53, label %56, label %54

; <label>:54:                                     ; preds = %50
  %55 = trunc i32 %42 to i8
  br label %73

; <label>:56:                                     ; preds = %50, %15
  %57 = getelementptr inbounds %struct.LexState, %struct.LexState* %37, i64 0, i32 6
  %58 = load %struct.lua_State*, %struct.lua_State** %57, align 8, !tbaa !18
  %59 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i64 0, i32 20
  %60 = bitcast %struct.AbsLineInfo** %59 to i8**
  %61 = load i8*, i8** %60, align 8, !tbaa !22
  %62 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %63 = load i32, i32* %62, align 4, !tbaa !23
  %64 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i64 0, i32 12
  %65 = tail call i8* @luaM_growaux_(%struct.lua_State* %58, i8* %61, i32 %63, i32* nonnull %64, i32 8, i32 2147483647, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #8
  %66 = bitcast i8* %65 to %struct.AbsLineInfo*
  store i8* %65, i8** %60, align 8, !tbaa !22
  %67 = load i32, i32* %62, align 4, !tbaa !23
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %66, i64 %68, i32 0
  store i32 %44, i32* %69, align 4, !tbaa !24
  %70 = add nsw i32 %67, 1
  store i32 %70, i32* %62, align 4, !tbaa !23
  %71 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %66, i64 %68, i32 1
  store i32 %39, i32* %71, align 4, !tbaa !26
  store i8 0, i8* %49, align 1, !tbaa !21
  %72 = load %struct.LexState*, %struct.LexState** %21, align 8, !tbaa !17
  br label %73

; <label>:73:                                     ; preds = %54, %56
  %74 = phi %struct.LexState* [ %37, %54 ], [ %72, %56 ]
  %75 = phi i8 [ %55, %54 ], [ -128, %56 ]
  %76 = getelementptr inbounds %struct.LexState, %struct.LexState* %74, i64 0, i32 6
  %77 = load %struct.lua_State*, %struct.lua_State** %76, align 8, !tbaa !18
  %78 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i64 0, i32 19
  %79 = load i8*, i8** %78, align 8, !tbaa !27
  %80 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i64 0, i32 9
  %81 = tail call i8* @luaM_growaux_(%struct.lua_State* %77, i8* %79, i32 %44, i32* nonnull %80, i32 1, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  store i8* %81, i8** %78, align 8, !tbaa !27
  %82 = sext i32 %44 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8 %75, i8* %83, align 1, !tbaa !28
  store i32 %39, i32* %40, align 8, !tbaa !20
  br label %87

; <label>:84:                                     ; preds = %13
  %85 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %86 = load %struct.LexState*, %struct.LexState** %85, align 8, !tbaa !17
  tail call void @luaX_syntaxerror(%struct.LexState* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)) #7
  unreachable

; <label>:87:                                     ; preds = %73, %11
  %88 = trunc i32 %1 to i8
  %89 = add i8 %88, 1
  %90 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  store i8 %89, i8* %90, align 4, !tbaa !29
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
  %7 = load i32, i32* %6, align 8, !tbaa !44
  switch i32 %7, label %257 [
    i32 1, label %8
    i32 3, label %57
    i32 2, label %57
    i32 4, label %61
    i32 5, label %137
    i32 6, label %229
    i32 15, label %232
    i32 7, label %247
  ]

; <label>:8:                                      ; preds = %3
  %9 = add nsw i32 %2, 1
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %11 = load i32, i32* %10, align 8, !tbaa !9
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5
  %13 = load i32, i32* %12, align 4, !tbaa !12
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %23

; <label>:15:                                     ; preds = %8
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %17 = load %struct.Proto*, %struct.Proto** %16, align 8, !tbaa !13
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i64 0, i32 16
  %19 = load i32*, i32** %18, align 8, !tbaa !14
  %20 = add nsw i32 %11, -1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  br label %23

; <label>:23:                                     ; preds = %15, %8
  %24 = phi i32* [ %22, %15 ], [ @previousinstruction.invalidinstruction, %8 ]
  %25 = load i32, i32* %24, align 4, !tbaa !16
  %26 = and i32 %25, 127
  %27 = icmp eq i32 %26, 6
  br i1 %27, label %28, label %55

; <label>:28:                                     ; preds = %23
  %29 = lshr i32 %25, 7
  %30 = and i32 %29, 255
  %31 = lshr i32 %25, 16
  %32 = and i32 %31, 255
  %33 = add nuw nsw i32 %30, %32
  %34 = icmp sgt i32 %30, %2
  %35 = add nuw nsw i32 %33, 1
  %36 = icmp slt i32 %35, %2
  %37 = or i1 %34, %36
  br i1 %37, label %38, label %42

; <label>:38:                                     ; preds = %28
  %39 = icmp slt i32 %30, %2
  %40 = icmp sgt i32 %30, %9
  %41 = or i1 %39, %40
  br i1 %41, label %55, label %42

; <label>:42:                                     ; preds = %38, %28
  %43 = icmp slt i32 %30, %2
  %44 = select i1 %43, i32 %30, i32 %2
  %45 = icmp sgt i32 %33, %2
  %46 = select i1 %45, i32 %33, i32 %2
  %47 = and i32 %25, -16744321
  %48 = shl i32 %44, 7
  %49 = and i32 %48, 32640
  %50 = or i32 %49, %47
  %51 = sub i32 %46, %44
  %52 = shl i32 %51, 16
  %53 = and i32 %52, 16711680
  %54 = or i32 %50, %53
  store i32 %54, i32* %24, align 4, !tbaa !16
  br label %254

; <label>:55:                                     ; preds = %38, %23
  %56 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %0, i32 6, i32 %2, i32 0, i32 0, i32 0) #8
  br label %254

; <label>:57:                                     ; preds = %3, %3
  %58 = icmp eq i32 %7, 2
  %59 = zext i1 %58 to i32
  %60 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 5, i32 %2, i32 %59, i32 0, i32 0)
  br label %254

; <label>:61:                                     ; preds = %3
  %62 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %63 = bitcast %union.anon.7* %62 to i32*
  %64 = load i32, i32* %63, align 8, !tbaa !28
  %65 = icmp slt i32 %64, 131072
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %61
  %67 = tail call i32 @luaK_codeABx(%struct.FuncState* %0, i32 3, i32 %2, i32 %64) #8
  br label %254

; <label>:68:                                     ; preds = %61
  %69 = tail call i32 @luaK_codeABx(%struct.FuncState* %0, i32 4, i32 %2, i32 0) #8
  %70 = shl i32 %64, 7
  %71 = or i32 %70, 83
  %72 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %73 = load %struct.Proto*, %struct.Proto** %72, align 8, !tbaa !13
  %74 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %75 = load %struct.LexState*, %struct.LexState** %74, align 8, !tbaa !17
  %76 = getelementptr inbounds %struct.LexState, %struct.LexState* %75, i64 0, i32 6
  %77 = load %struct.lua_State*, %struct.lua_State** %76, align 8, !tbaa !18
  %78 = getelementptr inbounds %struct.Proto, %struct.Proto* %73, i64 0, i32 16
  %79 = bitcast i32** %78 to i8**
  %80 = load i8*, i8** %79, align 8, !tbaa !14
  %81 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %82 = load i32, i32* %81, align 8, !tbaa !9
  %83 = getelementptr inbounds %struct.Proto, %struct.Proto* %73, i64 0, i32 8
  %84 = tail call i8* @luaM_growaux_(%struct.lua_State* %77, i8* %80, i32 %82, i32* nonnull %83, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %85 = bitcast i8* %84 to i32*
  store i8* %84, i8** %79, align 8, !tbaa !14
  %86 = load i32, i32* %81, align 8, !tbaa !9
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %81, align 8, !tbaa !9
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 %71, i32* %89, align 4, !tbaa !16
  %90 = load %struct.LexState*, %struct.LexState** %74, align 8, !tbaa !17
  %91 = getelementptr inbounds %struct.LexState, %struct.LexState* %90, i64 0, i32 2
  %92 = load i32, i32* %91, align 8, !tbaa !19
  %93 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %94 = load i32, i32* %93, align 8, !tbaa !20
  %95 = sub nsw i32 %92, %94
  %96 = load i32, i32* %81, align 8, !tbaa !9
  %97 = add nsw i32 %96, -1
  %98 = icmp sgt i32 %95, -1
  %99 = sub i32 0, %95
  %100 = select i1 %98, i32 %95, i32 %99
  %101 = icmp sgt i32 %100, 127
  %102 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  br i1 %101, label %109, label %103

; <label>:103:                                    ; preds = %68
  %104 = load i8, i8* %102, align 1, !tbaa !21
  %105 = add i8 %104, 1
  store i8 %105, i8* %102, align 1, !tbaa !21
  %106 = icmp ugt i8 %104, 120
  br i1 %106, label %109, label %107

; <label>:107:                                    ; preds = %103
  %108 = trunc i32 %95 to i8
  br label %126

; <label>:109:                                    ; preds = %103, %68
  %110 = getelementptr inbounds %struct.LexState, %struct.LexState* %90, i64 0, i32 6
  %111 = load %struct.lua_State*, %struct.lua_State** %110, align 8, !tbaa !18
  %112 = getelementptr inbounds %struct.Proto, %struct.Proto* %73, i64 0, i32 20
  %113 = bitcast %struct.AbsLineInfo** %112 to i8**
  %114 = load i8*, i8** %113, align 8, !tbaa !22
  %115 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %116 = load i32, i32* %115, align 4, !tbaa !23
  %117 = getelementptr inbounds %struct.Proto, %struct.Proto* %73, i64 0, i32 12
  %118 = tail call i8* @luaM_growaux_(%struct.lua_State* %111, i8* %114, i32 %116, i32* nonnull %117, i32 8, i32 2147483647, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #8
  %119 = bitcast i8* %118 to %struct.AbsLineInfo*
  store i8* %118, i8** %113, align 8, !tbaa !22
  %120 = load i32, i32* %115, align 4, !tbaa !23
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %119, i64 %121, i32 0
  store i32 %97, i32* %122, align 4, !tbaa !24
  %123 = add nsw i32 %120, 1
  store i32 %123, i32* %115, align 4, !tbaa !23
  %124 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %119, i64 %121, i32 1
  store i32 %92, i32* %124, align 4, !tbaa !26
  store i8 0, i8* %102, align 1, !tbaa !21
  %125 = load %struct.LexState*, %struct.LexState** %74, align 8, !tbaa !17
  br label %126

; <label>:126:                                    ; preds = %107, %109
  %127 = phi %struct.LexState* [ %90, %107 ], [ %125, %109 ]
  %128 = phi i8 [ %108, %107 ], [ -128, %109 ]
  %129 = getelementptr inbounds %struct.LexState, %struct.LexState* %127, i64 0, i32 6
  %130 = load %struct.lua_State*, %struct.lua_State** %129, align 8, !tbaa !18
  %131 = getelementptr inbounds %struct.Proto, %struct.Proto* %73, i64 0, i32 19
  %132 = load i8*, i8** %131, align 8, !tbaa !27
  %133 = getelementptr inbounds %struct.Proto, %struct.Proto* %73, i64 0, i32 9
  %134 = tail call i8* @luaM_growaux_(%struct.lua_State* %130, i8* %132, i32 %97, i32* nonnull %133, i32 1, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  store i8* %134, i8** %131, align 8, !tbaa !27
  %135 = sext i32 %97 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8 %128, i8* %136, align 1, !tbaa !28
  store i32 %92, i32* %93, align 8, !tbaa !20
  br label %254

; <label>:137:                                    ; preds = %3
  %138 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %139 = bitcast %union.anon.7* %138 to double*
  %140 = load double, double* %139, align 8, !tbaa !28
  %141 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %141) #8
  %142 = call i32 @luaV_flttointeger(double %140, i64* nonnull %5, i32 0) #8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %151, label %144

; <label>:144:                                    ; preds = %137
  %145 = load i64, i64* %5, align 8, !tbaa !49
  %146 = add i64 %145, 65535
  %147 = icmp ugt i64 %146, 131071
  br i1 %147, label %151, label %148

; <label>:148:                                    ; preds = %144
  %149 = trunc i64 %145 to i32
  %150 = call i32 @luaK_codeAsBx(%struct.FuncState* %0, i32 2, i32 %2, i32 %149) #8
  br label %228

; <label>:151:                                    ; preds = %144, %137
  %152 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %152) #8
  %153 = bitcast %struct.TValue* %4 to double*
  store double %140, double* %153, align 8, !tbaa !28
  %154 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 19, i8* %154, align 8, !tbaa !33
  %155 = call fastcc i32 @addk(%struct.FuncState* %0, %struct.TValue* nonnull %4, %struct.TValue* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %152) #8
  %156 = icmp slt i32 %155, 131072
  br i1 %156, label %157, label %159

; <label>:157:                                    ; preds = %151
  %158 = call i32 @luaK_codeABx(%struct.FuncState* %0, i32 3, i32 %2, i32 %155) #8
  br label %228

; <label>:159:                                    ; preds = %151
  %160 = call i32 @luaK_codeABx(%struct.FuncState* %0, i32 4, i32 %2, i32 0) #8
  %161 = shl i32 %155, 7
  %162 = or i32 %161, 83
  %163 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %164 = load %struct.Proto*, %struct.Proto** %163, align 8, !tbaa !13
  %165 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %166 = load %struct.LexState*, %struct.LexState** %165, align 8, !tbaa !17
  %167 = getelementptr inbounds %struct.LexState, %struct.LexState* %166, i64 0, i32 6
  %168 = load %struct.lua_State*, %struct.lua_State** %167, align 8, !tbaa !18
  %169 = getelementptr inbounds %struct.Proto, %struct.Proto* %164, i64 0, i32 16
  %170 = bitcast i32** %169 to i8**
  %171 = load i8*, i8** %170, align 8, !tbaa !14
  %172 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %173 = load i32, i32* %172, align 8, !tbaa !9
  %174 = getelementptr inbounds %struct.Proto, %struct.Proto* %164, i64 0, i32 8
  %175 = call i8* @luaM_growaux_(%struct.lua_State* %168, i8* %171, i32 %173, i32* nonnull %174, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  %176 = bitcast i8* %175 to i32*
  store i8* %175, i8** %170, align 8, !tbaa !14
  %177 = load i32, i32* %172, align 8, !tbaa !9
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %172, align 8, !tbaa !9
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32 %162, i32* %180, align 4, !tbaa !16
  %181 = load %struct.LexState*, %struct.LexState** %165, align 8, !tbaa !17
  %182 = getelementptr inbounds %struct.LexState, %struct.LexState* %181, i64 0, i32 2
  %183 = load i32, i32* %182, align 8, !tbaa !19
  %184 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 6
  %185 = load i32, i32* %184, align 8, !tbaa !20
  %186 = sub nsw i32 %183, %185
  %187 = load i32, i32* %172, align 8, !tbaa !9
  %188 = add nsw i32 %187, -1
  %189 = icmp sgt i32 %186, -1
  %190 = sub i32 0, %186
  %191 = select i1 %189, i32 %186, i32 %190
  %192 = icmp sgt i32 %191, 127
  %193 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 16
  br i1 %192, label %200, label %194

; <label>:194:                                    ; preds = %159
  %195 = load i8, i8* %193, align 1, !tbaa !21
  %196 = add i8 %195, 1
  store i8 %196, i8* %193, align 1, !tbaa !21
  %197 = icmp ugt i8 %195, 120
  br i1 %197, label %200, label %198

; <label>:198:                                    ; preds = %194
  %199 = trunc i32 %186 to i8
  br label %217

; <label>:200:                                    ; preds = %194, %159
  %201 = getelementptr inbounds %struct.LexState, %struct.LexState* %181, i64 0, i32 6
  %202 = load %struct.lua_State*, %struct.lua_State** %201, align 8, !tbaa !18
  %203 = getelementptr inbounds %struct.Proto, %struct.Proto* %164, i64 0, i32 20
  %204 = bitcast %struct.AbsLineInfo** %203 to i8**
  %205 = load i8*, i8** %204, align 8, !tbaa !22
  %206 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9
  %207 = load i32, i32* %206, align 4, !tbaa !23
  %208 = getelementptr inbounds %struct.Proto, %struct.Proto* %164, i64 0, i32 12
  %209 = call i8* @luaM_growaux_(%struct.lua_State* %202, i8* %205, i32 %207, i32* nonnull %208, i32 8, i32 2147483647, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #8
  %210 = bitcast i8* %209 to %struct.AbsLineInfo*
  store i8* %209, i8** %204, align 8, !tbaa !22
  %211 = load i32, i32* %206, align 4, !tbaa !23
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %210, i64 %212, i32 0
  store i32 %188, i32* %213, align 4, !tbaa !24
  %214 = add nsw i32 %211, 1
  store i32 %214, i32* %206, align 4, !tbaa !23
  %215 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %210, i64 %212, i32 1
  store i32 %183, i32* %215, align 4, !tbaa !26
  store i8 0, i8* %193, align 1, !tbaa !21
  %216 = load %struct.LexState*, %struct.LexState** %165, align 8, !tbaa !17
  br label %217

; <label>:217:                                    ; preds = %200, %198
  %218 = phi %struct.LexState* [ %181, %198 ], [ %216, %200 ]
  %219 = phi i8 [ %199, %198 ], [ -128, %200 ]
  %220 = getelementptr inbounds %struct.LexState, %struct.LexState* %218, i64 0, i32 6
  %221 = load %struct.lua_State*, %struct.lua_State** %220, align 8, !tbaa !18
  %222 = getelementptr inbounds %struct.Proto, %struct.Proto* %164, i64 0, i32 19
  %223 = load i8*, i8** %222, align 8, !tbaa !27
  %224 = getelementptr inbounds %struct.Proto, %struct.Proto* %164, i64 0, i32 9
  %225 = call i8* @luaM_growaux_(%struct.lua_State* %221, i8* %223, i32 %188, i32* nonnull %224, i32 1, i32 2147483647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #8
  store i8* %225, i8** %222, align 8, !tbaa !27
  %226 = sext i32 %188 to i64
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  store i8 %219, i8* %227, align 1, !tbaa !28
  store i32 %183, i32* %184, align 8, !tbaa !20
  br label %228

; <label>:228:                                    ; preds = %148, %157, %217
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %141) #8
  br label %254

; <label>:229:                                    ; preds = %3
  %230 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  %231 = load i64, i64* %230, align 8, !tbaa !28
  tail call void @luaK_int(%struct.FuncState* %0, i32 %2, i64 %231)
  br label %254

; <label>:232:                                    ; preds = %3
  %233 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %234 = load %struct.Proto*, %struct.Proto** %233, align 8, !tbaa !13
  %235 = getelementptr inbounds %struct.Proto, %struct.Proto* %234, i64 0, i32 16
  %236 = load i32*, i32** %235, align 8, !tbaa !14
  %237 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %238 = bitcast %union.anon.7* %237 to i32*
  %239 = load i32, i32* %238, align 8, !tbaa !28
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %236, i64 %240
  %242 = load i32, i32* %241, align 4, !tbaa !16
  %243 = and i32 %242, -32641
  %244 = shl i32 %2, 7
  %245 = and i32 %244, 32640
  %246 = or i32 %243, %245
  store i32 %246, i32* %241, align 4, !tbaa !16
  br label %254

; <label>:247:                                    ; preds = %3
  %248 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %249 = bitcast %union.anon.7* %248 to i32*
  %250 = load i32, i32* %249, align 8, !tbaa !28
  %251 = icmp eq i32 %250, %2
  br i1 %251, label %254, label %252

; <label>:252:                                    ; preds = %247
  %253 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 0, i32 %2, i32 %250, i32 0, i32 0)
  br label %254

; <label>:254:                                    ; preds = %126, %66, %55, %42, %247, %252, %232, %229, %228, %57
  %255 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %256 = bitcast %union.anon.7* %255 to i32*
  store i32 %2, i32* %256, align 8, !tbaa !28
  store i32 7, i32* %6, align 8, !tbaa !44
  br label %257

; <label>:257:                                    ; preds = %3, %254
  ret void
}

declare hidden i32 @luaV_flttointeger(double, i64*, i32) local_unnamed_addr #6

declare hidden i32 @luaO_rawarith(%struct.lua_State*, i32, %struct.TValue*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #6

declare hidden i32 @luaV_tointegerns(%struct.TValue*, i64*, i32) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @codebinexpval(%struct.FuncState*, i32, %struct.expdesc* nocapture, %struct.expdesc* nocapture, i32) unnamed_addr #2 {
  %6 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %3)
  %7 = tail call i32 @luaK_exp2anyreg(%struct.FuncState* %0, %struct.expdesc* %2) #8
  %8 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 %1, i32 0, i32 %7, i32 %6, i32 0) #8
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !44
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %5
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %14 = bitcast %union.anon.7* %13 to i32*
  %15 = load i32, i32* %14, align 8, !tbaa !28
  br label %16

; <label>:16:                                     ; preds = %12, %5
  %17 = phi i32 [ %15, %12 ], [ -1, %5 ]
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %19 = load i32, i32* %18, align 8, !tbaa !44
  %20 = icmp eq i32 %19, 7
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %23 = bitcast %union.anon.7* %22 to i32*
  %24 = load i32, i32* %23, align 8, !tbaa !28
  br label %25

; <label>:25:                                     ; preds = %21, %16
  %26 = phi i32 [ %24, %21 ], [ -1, %16 ]
  %27 = icmp sgt i32 %17, %26
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %29 = load i8, i8* %28, align 2, !tbaa !46
  %30 = zext i8 %29 to i32
  br i1 %27, label %31, label %43

; <label>:31:                                     ; preds = %25
  %32 = icmp slt i32 %17, %30
  br i1 %32, label %37, label %33

; <label>:33:                                     ; preds = %31
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %35 = load i8, i8* %34, align 4, !tbaa !29
  %36 = add i8 %35, -1
  store i8 %36, i8* %34, align 4, !tbaa !29
  br label %37

; <label>:37:                                     ; preds = %33, %31
  %38 = icmp slt i32 %26, %30
  br i1 %38, label %55, label %39

; <label>:39:                                     ; preds = %37
  %40 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %41 = load i8, i8* %40, align 4, !tbaa !29
  %42 = add i8 %41, -1
  store i8 %42, i8* %40, align 4, !tbaa !29
  br label %55

; <label>:43:                                     ; preds = %25
  %44 = icmp slt i32 %26, %30
  br i1 %44, label %49, label %45

; <label>:45:                                     ; preds = %43
  %46 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %47 = load i8, i8* %46, align 4, !tbaa !29
  %48 = add i8 %47, -1
  store i8 %48, i8* %46, align 4, !tbaa !29
  br label %49

; <label>:49:                                     ; preds = %45, %43
  %50 = icmp slt i32 %17, %30
  br i1 %50, label %55, label %51

; <label>:51:                                     ; preds = %49
  %52 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  %53 = load i8, i8* %52, align 4, !tbaa !29
  %54 = add i8 %53, -1
  store i8 %54, i8* %52, align 4, !tbaa !29
  br label %55

; <label>:55:                                     ; preds = %37, %39, %49, %51
  %56 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %57 = bitcast %union.anon.7* %56 to i32*
  store i32 %8, i32* %57, align 8, !tbaa !28
  store i32 15, i32* %9, align 8, !tbaa !44
  tail call void @luaK_fixline(%struct.FuncState* nonnull %0, i32 %4) #8
  ret void
}

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
!20 = !{!10, !4, i64 40}
!21 = !{!10, !5, i64 69}
!22 = !{!15, !8, i64 96}
!23 = !{!10, !4, i64 52}
!24 = !{!25, !4, i64 0}
!25 = !{!"AbsLineInfo", !4, i64 0, !4, i64 4}
!26 = !{!25, !4, i64 4}
!27 = !{!15, !8, i64 88}
!28 = !{!5, !5, i64 0}
!29 = !{!10, !5, i64 68}
!30 = !{!15, !5, i64 12}
!31 = !{!32, !5, i64 8}
!32 = !{!"TString", !8, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !4, i64 12, !5, i64 16}
!33 = !{!34, !5, i64 8}
!34 = !{!"TValue", !5, i64 0, !5, i64 8}
!35 = !{!3, !8, i64 80}
!36 = !{!10, !4, i64 44}
!37 = !{!15, !8, i64 56}
!38 = !{!15, !4, i64 20}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!15, !5, i64 9}
!42 = !{!43, !5, i64 9}
!43 = !{!"GCObject", !8, i64 0, !5, i64 8, !5, i64 9}
!44 = !{!45, !5, i64 0}
!45 = !{!"expdesc", !5, i64 0, !5, i64 8, !4, i64 16, !4, i64 20}
!46 = !{!10, !5, i64 66}
!47 = !{!45, !4, i64 16}
!48 = !{!45, !4, i64 20}
!49 = !{!50, !50, i64 0}
!50 = !{!"long long", !5, i64 0}
!51 = !{i64 0, i64 4, !28, i64 8, i64 8, !49, i64 8, i64 8, !52, i64 8, i64 4, !16, i64 8, i64 2, !54, i64 10, i64 1, !28, i64 16, i64 4, !16, i64 20, i64 4, !16}
!52 = !{!53, !53, i64 0}
!53 = !{!"double", !5, i64 0}
!54 = !{!11, !11, i64 0}
!55 = !{!10, !5, i64 70}
!56 = !{!15, !5, i64 11}
!57 = !{!15, !5, i64 10}
