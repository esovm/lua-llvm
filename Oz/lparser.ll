; ModuleID = 'lparser.c'
source_filename = "lparser.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.9 = type { i8, i8 }
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
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.Dyndata = type { %struct.anon.6, %struct.Labellist, %struct.Labellist }
%struct.anon.6 = type { %struct.Vardesc*, i32, i32 }
%struct.Vardesc = type { i16 }
%struct.Labellist = type { %struct.Labeldesc*, i32, i32 }
%struct.Labeldesc = type { %struct.TString*, i32, i32, i8, i8 }
%struct.BlockCnt = type { %struct.BlockCnt*, i32, i32, i8, i8, i8, i8 }
%struct.expdesc = type { i32, %union.anon.7, i32, i32 }
%union.anon.7 = type { i64 }
%struct.LexState = type { i32, i32, i32, %struct.Token, %struct.Token, %struct.FuncState*, %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Table*, %struct.Dyndata*, %struct.TString*, %struct.TString* }
%struct.Token = type { i32, %union.SemInfo }
%union.SemInfo = type { double }
%struct.FuncState = type { %struct.Proto*, %struct.FuncState*, %struct.LexState*, %struct.BlockCnt*, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8 }
%struct.LHS_assign = type { %struct.LHS_assign*, %struct.expdesc }
%struct.ConsControl = type { %struct.expdesc, %struct.expdesc*, i32, i32, i32 }
%struct.anon.8 = type { i16, i8 }

@.str = private unnamed_addr constant [9 x i8] c"upvalues\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"main function\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"function at line %d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"too many %s (limit is %d) in %s\00", align 1
@priority = internal unnamed_addr constant [21 x %struct.anon.9] [%struct.anon.9 { i8 10, i8 10 }, %struct.anon.9 { i8 10, i8 10 }, %struct.anon.9 { i8 11, i8 11 }, %struct.anon.9 { i8 11, i8 11 }, %struct.anon.9 { i8 14, i8 13 }, %struct.anon.9 { i8 11, i8 11 }, %struct.anon.9 { i8 11, i8 11 }, %struct.anon.9 { i8 6, i8 6 }, %struct.anon.9 { i8 4, i8 4 }, %struct.anon.9 { i8 5, i8 5 }, %struct.anon.9 { i8 7, i8 7 }, %struct.anon.9 { i8 7, i8 7 }, %struct.anon.9 { i8 9, i8 8 }, %struct.anon.9 { i8 3, i8 3 }, %struct.anon.9 { i8 3, i8 3 }, %struct.anon.9 { i8 3, i8 3 }, %struct.anon.9 { i8 3, i8 3 }, %struct.anon.9 { i8 3, i8 3 }, %struct.anon.9 { i8 3, i8 3 }, %struct.anon.9 { i8 2, i8 2 }, %struct.anon.9 { i8 1, i8 1 }], align 16
@.str.4 = private unnamed_addr constant [43 x i8] c"cannot use '...' outside a vararg function\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"items in a constructor\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"local variables\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"<name> or '...' expected\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"unexpected symbol\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"function arguments expected\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"labels/gotos\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"<goto %s> at line %d jumps into the scope of local '%s'\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"break outside loop at line %d\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"no visible label '%s' for <goto> at line %d\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"%s expected (to close %s at line %d)\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"%s expected\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"'=' or 'in' expected\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"(for index)\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"(for limit)\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"(for step)\00", align 1
@forbody.forprep = internal unnamed_addr constant [2 x i32] [i32 75, i32 76], align 4
@forbody.forloop = internal unnamed_addr constant [2 x i32] [i32 74, i32 78], align 4
@.str.23 = private unnamed_addr constant [27 x i8] c"control structure too long\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"(for generator)\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"(for state)\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"(for control)\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"(for toclose)\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"toclose\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"unknown attribute '%s'\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"label '%s' already defined on line %d\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1

; Function Attrs: minsize nounwind optsize uwtable
define hidden %struct.LClosure* @luaY_parser(%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Dyndata*, i8*, i32) local_unnamed_addr #0 {
  %7 = alloca %struct.BlockCnt, align 8
  %8 = alloca %struct.expdesc, align 8
  %9 = alloca %struct.LexState, align 8
  %10 = alloca %struct.FuncState, align 8
  %11 = bitcast %struct.LexState* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #8
  %12 = bitcast %struct.FuncState* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %12) #8
  %13 = tail call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %0, i32 1) #9
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %15 = bitcast %union.StackValue** %14 to %struct.TValue**
  %16 = load %struct.TValue*, %struct.TValue** %15, align 8, !tbaa !2
  %17 = bitcast %struct.TValue* %16 to %struct.LClosure**
  store %struct.LClosure* %13, %struct.LClosure** %17, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i64 0, i32 1
  store i8 86, i8* %18, align 8, !tbaa !12
  tail call void @luaD_inctop(%struct.lua_State* %0) #9
  %19 = tail call %struct.Table* @luaH_new(%struct.lua_State* %0) #9
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i64 0, i32 9
  store %struct.Table* %19, %struct.Table** %20, align 8, !tbaa !14
  %21 = load %struct.TValue*, %struct.TValue** %15, align 8, !tbaa !2
  %22 = bitcast %struct.TValue* %21 to %struct.Table**
  store %struct.Table* %19, %struct.Table** %22, align 8, !tbaa !11
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %21, i64 0, i32 1
  store i8 69, i8* %23, align 8, !tbaa !12
  tail call void @luaD_inctop(%struct.lua_State* %0) #9
  %24 = tail call %struct.Proto* @luaF_newproto(%struct.lua_State* %0) #9
  %25 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %13, i64 0, i32 5
  store %struct.Proto* %24, %struct.Proto** %25, align 8, !tbaa !17
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 0
  store %struct.Proto* %24, %struct.Proto** %26, align 8, !tbaa !19
  %27 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* %4) #9
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i64 0, i32 22
  store %struct.TString* %27, %struct.TString** %28, align 8, !tbaa !21
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i64 0, i32 2
  %30 = load i8, i8* %29, align 1, !tbaa !23
  %31 = and i8 %30, 32
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %42, label %33

; <label>:33:                                     ; preds = %6
  %34 = getelementptr inbounds %struct.TString, %struct.TString* %27, i64 0, i32 2
  %35 = load i8, i8* %34, align 1, !tbaa !24
  %36 = and i8 %35, 24
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

; <label>:38:                                     ; preds = %33
  %39 = bitcast %struct.Proto* %24 to %struct.GCObject*
  %40 = bitcast %struct.TString* %27 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* nonnull %0, %struct.GCObject* %39, %struct.GCObject* %40) #9
  %41 = load %struct.TString*, %struct.TString** %28, align 8, !tbaa !21
  br label %42

; <label>:42:                                     ; preds = %33, %6, %38
  %43 = phi %struct.TString* [ %27, %33 ], [ %27, %6 ], [ %41, %38 ]
  %44 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i64 0, i32 8
  store %struct.Mbuffer* %2, %struct.Mbuffer** %44, align 8, !tbaa !26
  %45 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i64 0, i32 10
  store %struct.Dyndata* %3, %struct.Dyndata** %45, align 8, !tbaa !27
  %46 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %3, i64 0, i32 2, i32 1
  store i32 0, i32* %46, align 8, !tbaa !28
  %47 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %3, i64 0, i32 1, i32 1
  store i32 0, i32* %47, align 8, !tbaa !32
  %48 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %3, i64 0, i32 0, i32 1
  store i32 0, i32* %48, align 8, !tbaa !33
  call void @luaX_setinput(%struct.lua_State* nonnull %0, %struct.LexState* nonnull %9, %struct.Zio* %1, %struct.TString* %43, i32 %5) #9
  %49 = bitcast %struct.BlockCnt* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %49) #8
  %50 = bitcast %struct.expdesc* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %50) #8
  call fastcc void @open_func(%struct.LexState* nonnull %9, %struct.FuncState* nonnull %10, %struct.BlockCnt* nonnull %7) #9
  call fastcc void @setvararg(%struct.FuncState* nonnull %10, i32 0) #9
  %51 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 2
  store i32 -1, i32* %51, align 8, !tbaa !34
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 3
  store i32 -1, i32* %52, align 4, !tbaa !36
  %53 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 0
  store i32 8, i32* %53, align 8, !tbaa !37
  %54 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 1
  %55 = bitcast %union.anon.7* %54 to i32*
  store i32 0, i32* %55, align 8, !tbaa !11
  %56 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i64 0, i32 12
  %57 = load %struct.TString*, %struct.TString** %56, align 8, !tbaa !38
  %58 = call fastcc i32 @newupvalue(%struct.FuncState* nonnull %10, %struct.TString* %57, %struct.expdesc* nonnull %8) #9
  call void @luaX_next(%struct.LexState* nonnull %9) #9
  call fastcc void @statlist(%struct.LexState* nonnull %9) #9
  call fastcc void @check(%struct.LexState* nonnull %9, i32 289) #9
  call fastcc void @close_func(%struct.LexState* nonnull %9) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %50) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %49) #8
  %59 = load %union.StackValue*, %union.StackValue** %14, align 8, !tbaa !2
  %60 = getelementptr inbounds %union.StackValue, %union.StackValue* %59, i64 -1
  store %union.StackValue* %60, %union.StackValue** %14, align 8, !tbaa !2
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %12) #8
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #8
  ret %struct.LClosure* %13
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: minsize optsize
declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: minsize optsize
declare hidden void @luaD_inctop(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden %struct.Table* @luaH_new(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaX_setinput(%struct.lua_State*, %struct.LexState*, %struct.Zio*, %struct.TString*, i32) local_unnamed_addr #2

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc void @open_func(%struct.LexState*, %struct.FuncState*, %struct.BlockCnt*) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 0
  %5 = load %struct.Proto*, %struct.Proto** %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %7 = bitcast %struct.FuncState** %6 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 1
  %10 = bitcast %struct.FuncState** %9 to i64*
  store i64 %8, i64* %10, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 2
  store %struct.LexState* %0, %struct.LexState** %11, align 8, !tbaa !41
  store %struct.FuncState* %1, %struct.FuncState** %6, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 4
  store i32 0, i32* %12, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 13
  %14 = load i32, i32* %13, align 4, !tbaa !43
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 6
  store i32 %14, i32* %15, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 5
  store i32 0, i32* %16, align 4, !tbaa !45
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 7
  store i32 0, i32* %17, align 4, !tbaa !46
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 9
  store i32 0, i32* %18, align 4, !tbaa !47
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 8
  store i32 0, i32* %19, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 12
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %22 = bitcast i16* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %22, i8 0, i64 7, i32 8, i1 false)
  %23 = load %struct.Dyndata*, %struct.Dyndata** %21, align 8, !tbaa !27
  %24 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %23, i64 0, i32 0, i32 1
  %25 = load i32, i32* %24, align 8, !tbaa !33
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 10
  store i32 %25, i32* %26, align 8, !tbaa !49
  %27 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %23, i64 0, i32 2, i32 1
  %28 = load i32, i32* %27, align 8, !tbaa !28
  %29 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 11
  store i32 %28, i32* %29, align 4, !tbaa !50
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 3
  store %struct.BlockCnt* null, %struct.BlockCnt** %30, align 8, !tbaa !51
  %31 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 11
  %32 = bitcast %struct.TString** %31 to i64*
  %33 = load i64, i64* %32, align 8, !tbaa !52
  %34 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 22
  %35 = bitcast %struct.TString** %34 to i64*
  store i64 %33, i64* %35, align 8, !tbaa !21
  %36 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 5
  store i8 2, i8* %36, align 4, !tbaa !53
  tail call fastcc void @enterblock(%struct.FuncState* %1, %struct.BlockCnt* %2, i8 zeroext 0) #10
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @setvararg(%struct.FuncState*, i32) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %4 = load %struct.Proto*, %struct.Proto** %3, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i64 0, i32 4
  store i8 1, i8* %5, align 1, !tbaa !54
  %6 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 82, i32 %1, i32 0, i32 0, i32 0) #9
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @newupvalue(%struct.FuncState* nocapture, %struct.TString*, %struct.expdesc* nocapture readonly) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %5 = load %struct.Proto*, %struct.Proto** %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 6
  %7 = load i32, i32* %6, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14
  %9 = load i8, i8* %8, align 1, !tbaa !56
  %10 = zext i8 %9 to i32
  %11 = add nuw nsw i32 %10, 1
  tail call fastcc void @checklimit(%struct.FuncState* %0, i32 %11, i32 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #10
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %13 = load %struct.LexState*, %struct.LexState** %12, align 8, !tbaa !41
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i64 0, i32 6
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 18
  %17 = bitcast %struct.Upvaldesc** %16 to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !58
  %19 = load i8, i8* %8, align 1, !tbaa !56
  %20 = zext i8 %19 to i32
  %21 = tail call i8* @luaM_growaux_(%struct.lua_State* %15, i8* %18, i32 %20, i32* nonnull %6, i32 16, i32 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #9
  store i8* %21, i8** %17, align 8, !tbaa !58
  %22 = load i32, i32* %6, align 8, !tbaa !55
  %23 = sext i32 %7 to i64
  %24 = sext i32 %22 to i64
  %25 = bitcast i8* %21 to %struct.Upvaldesc*
  br label %26

; <label>:26:                                     ; preds = %29, %3
  %27 = phi i64 [ %30, %29 ], [ %23, %3 ]
  %28 = icmp slt i64 %27, %24
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %26
  %30 = add nsw i64 %27, 1
  %31 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %25, i64 %27, i32 0
  store %struct.TString* null, %struct.TString** %31, align 8, !tbaa !59
  br label %26

; <label>:32:                                     ; preds = %26
  %33 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %34 = load i32, i32* %33, align 8, !tbaa !37
  %35 = icmp eq i32 %34, 8
  %36 = zext i1 %35 to i8
  %37 = load i8, i8* %8, align 1, !tbaa !56
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %25, i64 %38, i32 1
  store i8 %36, i8* %39, align 8, !tbaa !61
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %41 = bitcast %union.anon.7* %40 to i32*
  %42 = load i32, i32* %41, align 8, !tbaa !11
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %25, i64 %38, i32 2
  store i8 %43, i8* %44, align 1, !tbaa !62
  %45 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %25, i64 %38, i32 0
  store %struct.TString* %1, %struct.TString** %45, align 8, !tbaa !59
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 2
  %47 = load i8, i8* %46, align 1, !tbaa !23
  %48 = and i8 %47, 32
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %62, label %50

; <label>:50:                                     ; preds = %32
  %51 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 2
  %52 = load i8, i8* %51, align 1, !tbaa !24
  %53 = and i8 %52, 24
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %62, label %55

; <label>:55:                                     ; preds = %50
  %56 = load %struct.LexState*, %struct.LexState** %12, align 8, !tbaa !41
  %57 = getelementptr inbounds %struct.LexState, %struct.LexState* %56, i64 0, i32 6
  %58 = load %struct.lua_State*, %struct.lua_State** %57, align 8, !tbaa !57
  %59 = bitcast %struct.Proto* %5 to %struct.GCObject*
  %60 = bitcast %struct.TString* %1 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* %58, %struct.GCObject* %59, %struct.GCObject* %60) #9
  %61 = load i8, i8* %8, align 1, !tbaa !56
  br label %62

; <label>:62:                                     ; preds = %50, %32, %55
  %63 = phi i8 [ %37, %50 ], [ %37, %32 ], [ %61, %55 ]
  %64 = add i8 %63, 1
  store i8 %64, i8* %8, align 1, !tbaa !56
  %65 = zext i8 %63 to i32
  ret i32 %65
}

; Function Attrs: minsize optsize
declare hidden void @luaX_next(%struct.LexState*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @statlist(%struct.LexState*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  br label %3

; <label>:3:                                      ; preds = %5, %1
  %4 = load i32, i32* %2, align 8, !tbaa !63
  switch i32 %4, label %5 [
    i32 260, label %7
    i32 261, label %7
    i32 262, label %7
    i32 289, label %7
    i32 277, label %7
  ]

; <label>:5:                                      ; preds = %3
  %6 = icmp eq i32 %4, 274
  tail call fastcc void @statement(%struct.LexState* nonnull %0) #10
  br i1 %6, label %7, label %3

; <label>:7:                                      ; preds = %3, %3, %3, %3, %3, %5
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @check(%struct.LexState*, i32) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !63
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %2
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 %1) #11
  unreachable

; <label>:7:                                      ; preds = %2
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @close_func(%struct.LexState* nocapture) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 13
  %9 = load i8, i8* %8, align 2, !tbaa !64
  %10 = zext i8 %9 to i32
  tail call void @luaK_ret(%struct.FuncState* %5, i32 %10, i32 0) #9
  tail call fastcc void @leaveblock(%struct.FuncState* %5) #10
  tail call void @luaK_finish(%struct.FuncState* %5) #9
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 16
  %12 = bitcast i32** %11 to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !65
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 8
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 4
  %16 = load i32, i32* %15, align 8, !tbaa !42
  %17 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %13, i32* nonnull %14, i32 %16, i32 4) #9
  store i8* %17, i8** %12, align 8, !tbaa !65
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 19
  %19 = load i8*, i8** %18, align 8, !tbaa !66
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 9
  %21 = load i32, i32* %15, align 8, !tbaa !42
  %22 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %19, i32* nonnull %20, i32 %21, i32 1) #9
  store i8* %22, i8** %18, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 20
  %24 = bitcast %struct.AbsLineInfo** %23 to i8**
  %25 = load i8*, i8** %24, align 8, !tbaa !67
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 12
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 9
  %28 = load i32, i32* %27, align 4, !tbaa !47
  %29 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %25, i32* nonnull %26, i32 %28, i32 8) #9
  store i8* %29, i8** %24, align 8, !tbaa !67
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 15
  %31 = bitcast %struct.TValue** %30 to i8**
  %32 = load i8*, i8** %31, align 8, !tbaa !68
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 7
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 7
  %35 = load i32, i32* %34, align 4, !tbaa !46
  %36 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %32, i32* nonnull %33, i32 %35, i32 16) #9
  store i8* %36, i8** %31, align 8, !tbaa !68
  %37 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 17
  %38 = bitcast %struct.Proto*** %37 to i8**
  %39 = load i8*, i8** %38, align 8, !tbaa !69
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 10
  %41 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 8
  %42 = load i32, i32* %41, align 8, !tbaa !48
  %43 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %39, i32* nonnull %40, i32 %42, i32 8) #9
  store i8* %43, i8** %38, align 8, !tbaa !69
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 21
  %45 = bitcast %struct.LocVar** %44 to i8**
  %46 = load i8*, i8** %45, align 8, !tbaa !70
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 11
  %48 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 12
  %49 = load i16, i16* %48, align 8, !tbaa !71
  %50 = sext i16 %49 to i32
  %51 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %46, i32* nonnull %47, i32 %50, i32 16) #9
  store i8* %51, i8** %45, align 8, !tbaa !70
  %52 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 18
  %53 = bitcast %struct.Upvaldesc** %52 to i8**
  %54 = load i8*, i8** %53, align 8, !tbaa !58
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 6
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 14
  %57 = load i8, i8* %56, align 1, !tbaa !56
  %58 = zext i8 %57 to i32
  %59 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %54, i32* nonnull %55, i32 %58, i32 16) #9
  store i8* %59, i8** %53, align 8, !tbaa !58
  %60 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 1
  %61 = bitcast %struct.FuncState** %60 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !40
  %63 = bitcast %struct.FuncState** %4 to i64*
  store i64 %62, i64* %63, align 8, !tbaa !39
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i64 0, i32 7
  %65 = load %struct.global_State*, %struct.global_State** %64, align 8, !tbaa !72
  %66 = getelementptr inbounds %struct.global_State, %struct.global_State* %65, i64 0, i32 3
  %67 = load i64, i64* %66, align 8, !tbaa !73
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %1
  tail call void @luaC_step(%struct.lua_State* %3) #9
  br label %70

; <label>:70:                                     ; preds = %69, %1
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc void @enterblock(%struct.FuncState* nocapture, %struct.BlockCnt*, i8 zeroext) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %1, i64 0, i32 5
  store i8 %2, i8* %4, align 2, !tbaa !76
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %6 = load i8, i8* %5, align 2, !tbaa !64
  %7 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %1, i64 0, i32 3
  store i8 %6, i8* %7, align 8, !tbaa !78
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %9 = load %struct.LexState*, %struct.LexState** %8, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i64 0, i32 10
  %11 = load %struct.Dyndata*, %struct.Dyndata** %10, align 8, !tbaa !27
  %12 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %11, i64 0, i32 2, i32 1
  %13 = load i32, i32* %12, align 8, !tbaa !28
  %14 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %1, i64 0, i32 1
  store i32 %13, i32* %14, align 8, !tbaa !79
  %15 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %11, i64 0, i32 1, i32 1
  %16 = load i32, i32* %15, align 8, !tbaa !32
  %17 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %1, i64 0, i32 2
  store i32 %16, i32* %17, align 4, !tbaa !80
  %18 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %1, i64 0, i32 4
  store i8 0, i8* %18, align 1, !tbaa !81
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3
  %20 = load %struct.BlockCnt*, %struct.BlockCnt** %19, align 8, !tbaa !51
  %21 = icmp eq %struct.BlockCnt* %20, null
  %22 = ptrtoint %struct.BlockCnt* %20 to i64
  br i1 %21, label %28, label %23

; <label>:23:                                     ; preds = %3
  %24 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 6
  %25 = load i8, i8* %24, align 1, !tbaa !82
  %26 = icmp ne i8 %25, 0
  %27 = zext i1 %26 to i8
  br label %28

; <label>:28:                                     ; preds = %3, %23
  %29 = phi i8 [ 0, %3 ], [ %27, %23 ]
  %30 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %1, i64 0, i32 6
  store i8 %29, i8* %30, align 1, !tbaa !82
  %31 = bitcast %struct.BlockCnt* %1 to i64*
  store i64 %22, i64* %31, align 8, !tbaa !83
  store %struct.BlockCnt* %1, %struct.BlockCnt** %19, align 8, !tbaa !51
  ret void
}

; Function Attrs: minsize optsize
declare hidden i32 @luaK_codeABCk(%struct.FuncState*, i32, i32, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @checklimit(%struct.FuncState* nocapture readonly, i32, i32, i8*) unnamed_addr #0 {
  %5 = icmp sgt i32 %1, %2
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %4
  tail call fastcc void @errorlimit(%struct.FuncState* %0, i32 %2, i8* %3) #11
  unreachable

; <label>:7:                                      ; preds = %4
  ret void
}

; Function Attrs: minsize optsize
declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32, i32*, i32, i32, i8*) local_unnamed_addr #2

; Function Attrs: minsize noreturn nounwind optsize uwtable
define internal fastcc void @errorlimit(%struct.FuncState* nocapture readonly, i32, i8*) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %5 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 6
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8, !tbaa !19
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 13
  %11 = load i32, i32* %10, align 4, !tbaa !43
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %3
  %14 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %11) #9
  br label %15

; <label>:15:                                     ; preds = %3, %13
  %16 = phi i8* [ %14, %13 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %3 ]
  %17 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %2, i32 %1, i8* %16) #9
  %18 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !41
  tail call void @luaX_syntaxerror(%struct.LexState* %18, i8* %17) #12
  unreachable
}

; Function Attrs: minsize optsize
declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: minsize noreturn optsize
declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) local_unnamed_addr #5

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @statement(%struct.LexState*) unnamed_addr #0 {
  %2 = alloca %struct.LHS_assign, align 8
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca %struct.expdesc, align 8
  %6 = alloca %struct.expdesc, align 8
  %7 = alloca %struct.expdesc, align 8
  %8 = alloca %struct.BlockCnt, align 8
  %9 = alloca %struct.BlockCnt, align 8
  %10 = alloca %struct.expdesc, align 8
  %11 = alloca %struct.BlockCnt, align 8
  %12 = alloca %struct.BlockCnt, align 8
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %15 = load i32, i32* %14, align 4, !tbaa !84
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %17 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !57
  tail call void @luaE_enterCcall(%struct.lua_State* %17) #9
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %19 = load i32, i32* %18, align 8, !tbaa !63
  switch i32 %19, label %295 [
    i32 59, label %20
    i32 267, label %21
    i32 278, label %35
    i32 259, label %42
    i32 264, label %43
    i32 273, label %100
    i32 265, label %119
    i32 269, label %131
    i32 288, label %199
    i32 274, label %219
    i32 258, label %266
    i32 266, label %273
  ]

; <label>:20:                                     ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %322

; <label>:21:                                     ; preds = %1
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %23 = load %struct.FuncState*, %struct.FuncState** %22, align 8, !tbaa !39
  %24 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #8
  store i32 -1, i32* %13, align 4, !tbaa !85
  call fastcc void @test_then_block(%struct.LexState* nonnull %0, i32* nonnull %13) #9
  br label %25

; <label>:25:                                     ; preds = %28, %21
  %26 = load i32, i32* %18, align 8, !tbaa !63
  %27 = icmp eq i32 %26, 261
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %25
  call fastcc void @test_then_block(%struct.LexState* nonnull %0, i32* nonnull %13) #9
  br label %25

; <label>:29:                                     ; preds = %25
  %30 = call fastcc i32 @testnext(%struct.LexState* nonnull %0, i32 260) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

; <label>:32:                                     ; preds = %29
  call fastcc void @block(%struct.LexState* nonnull %0) #9
  br label %33

; <label>:33:                                     ; preds = %29, %32
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 267, i32 %15) #9
  %34 = load i32, i32* %13, align 4, !tbaa !85
  call void @luaK_patchtohere(%struct.FuncState* %23, i32 %34) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #8
  br label %322

; <label>:35:                                     ; preds = %1
  %36 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %37 = load %struct.FuncState*, %struct.FuncState** %36, align 8, !tbaa !39
  %38 = bitcast %struct.BlockCnt* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %38) #8
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %39 = tail call i32 @luaK_getlabel(%struct.FuncState* %37) #9
  %40 = tail call fastcc i32 @cond(%struct.LexState* nonnull %0) #9
  call fastcc void @enterblock(%struct.FuncState* %37, %struct.BlockCnt* nonnull %12, i8 zeroext 1) #9
  call fastcc void @checknext(%struct.LexState* nonnull %0, i32 259) #9
  call fastcc void @block(%struct.LexState* nonnull %0) #9
  %41 = call i32 @luaK_jump(%struct.FuncState* %37) #9
  call void @luaK_patchlist(%struct.FuncState* %37, i32 %41, i32 %39) #9
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 278, i32 %15) #9
  call fastcc void @leaveblock(%struct.FuncState* %37) #9
  call void @luaK_patchtohere(%struct.FuncState* %37, i32 %40) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %38) #8
  br label %322

; <label>:42:                                     ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  tail call fastcc void @block(%struct.LexState* nonnull %0) #10
  tail call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 259, i32 %15) #10
  br label %322

; <label>:43:                                     ; preds = %1
  %44 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %45 = load %struct.FuncState*, %struct.FuncState** %44, align 8, !tbaa !39
  %46 = bitcast %struct.BlockCnt* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %46) #8
  call fastcc void @enterblock(%struct.FuncState* %45, %struct.BlockCnt* nonnull %11, i8 zeroext 1) #9
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  %47 = call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #9
  %48 = load i32, i32* %18, align 8, !tbaa !63
  switch i32 %48, label %98 [
    i32 61, label %49
    i32 44, label %64
    i32 268, label %64
  ]

; <label>:49:                                     ; preds = %43
  %50 = load %struct.FuncState*, %struct.FuncState** %44, align 8, !tbaa !39
  %51 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %50, i64 0, i32 15
  %52 = load i8, i8* %51, align 4, !tbaa !86
  %53 = zext i8 %52 to i32
  %54 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i64 11) #9
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %54) #9
  %55 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i64 11) #9
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %55) #9
  %56 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i64 10) #9
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %56) #9
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %47) #9
  call fastcc void @checknext(%struct.LexState* nonnull %0, i32 61) #9
  call fastcc void @exp1(%struct.LexState* nonnull %0) #9
  call fastcc void @checknext(%struct.LexState* nonnull %0, i32 44) #9
  call fastcc void @exp1(%struct.LexState* nonnull %0) #9
  %57 = call fastcc i32 @testnext(%struct.LexState* nonnull %0, i32 44) #9
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

; <label>:59:                                     ; preds = %49
  call fastcc void @exp1(%struct.LexState* nonnull %0) #9
  br label %63

; <label>:60:                                     ; preds = %49
  %61 = load i8, i8* %51, align 4, !tbaa !86
  %62 = zext i8 %61 to i32
  call void @luaK_int(%struct.FuncState* %50, i32 %62, i64 1) #9
  call void @luaK_reserveregs(%struct.FuncState* %50, i32 1) #9
  br label %63

; <label>:63:                                     ; preds = %60, %59
  call fastcc void @adjustlocalvars(%struct.LexState* nonnull %0, i32 3) #9
  call fastcc void @forbody(%struct.LexState* nonnull %0, i32 %53, i32 %15, i32 1, i32 0) #9
  br label %99

; <label>:64:                                     ; preds = %43, %43
  %65 = load %struct.FuncState*, %struct.FuncState** %44, align 8, !tbaa !39
  %66 = bitcast %struct.expdesc* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %66) #8
  %67 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %65, i64 0, i32 15
  %68 = load i8, i8* %67, align 4, !tbaa !86
  %69 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i64 15) #9
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %69) #9
  %70 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i64 11) #9
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %70) #9
  %71 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %65, i64 0, i32 13
  %72 = load i8, i8* %71, align 2, !tbaa !64
  %73 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %65, i64 0, i32 3
  br label %74

; <label>:74:                                     ; preds = %74, %64
  %75 = phi %struct.BlockCnt** [ %73, %64 ], [ %80, %74 ]
  %76 = load %struct.BlockCnt*, %struct.BlockCnt** %75, align 8, !tbaa !87
  %77 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %76, i64 0, i32 3
  %78 = load i8, i8* %77, align 8, !tbaa !78
  %79 = icmp ugt i8 %78, %72
  %80 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %76, i64 0, i32 0
  br i1 %79, label %74, label %81

; <label>:81:                                     ; preds = %74
  %82 = zext i8 %68 to i32
  %83 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %76, i64 0, i32 4
  store i8 1, i8* %83, align 1, !tbaa !81
  %84 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %65, i64 0, i32 17
  store i8 1, i8* %84, align 2, !tbaa !88
  %85 = call %struct.TString* @luaX_newstring(%struct.LexState* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i64 13) #9
  call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %85) #9
  %86 = call %struct.TString* @luaX_newstring(%struct.LexState* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i64 13) #9
  call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %86) #9
  call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %47) #9
  br label %87

; <label>:87:                                     ; preds = %91, %81
  %88 = phi i32 [ 5, %81 ], [ %93, %91 ]
  %89 = call fastcc i32 @testnext(%struct.LexState* %0, i32 44) #9
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

; <label>:91:                                     ; preds = %87
  %92 = call fastcc %struct.TString* @str_checkname(%struct.LexState* %0) #9
  call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %92) #9
  %93 = add nuw nsw i32 %88, 1
  br label %87

; <label>:94:                                     ; preds = %87
  call fastcc void @checknext(%struct.LexState* %0, i32 268) #9
  %95 = load i32, i32* %14, align 4, !tbaa !84
  %96 = call fastcc i32 @explist(%struct.LexState* %0, %struct.expdesc* nonnull %10) #9
  call fastcc void @adjust_assign(%struct.LexState* %0, i32 4, i32 %96, %struct.expdesc* nonnull %10) #9
  call fastcc void @adjustlocalvars(%struct.LexState* %0, i32 4) #9
  call void @luaK_checkstack(%struct.FuncState* %65, i32 3) #9
  %97 = add nsw i32 %88, -4
  call fastcc void @forbody(%struct.LexState* %0, i32 %82, i32 %95, i32 %97, i32 1) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %66) #8
  br label %99

; <label>:98:                                     ; preds = %43
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0)) #12
  unreachable

; <label>:99:                                     ; preds = %63, %94
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 264, i32 %15) #9
  call fastcc void @leaveblock(%struct.FuncState* %45) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %46) #8
  br label %322

; <label>:100:                                    ; preds = %1
  %101 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %102 = load %struct.FuncState*, %struct.FuncState** %101, align 8, !tbaa !39
  %103 = tail call i32 @luaK_getlabel(%struct.FuncState* %102) #9
  %104 = bitcast %struct.BlockCnt* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %104) #8
  %105 = bitcast %struct.BlockCnt* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %105) #8
  call fastcc void @enterblock(%struct.FuncState* %102, %struct.BlockCnt* nonnull %8, i8 zeroext 1) #9
  call fastcc void @enterblock(%struct.FuncState* %102, %struct.BlockCnt* nonnull %9, i8 zeroext 0) #9
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  call fastcc void @statlist(%struct.LexState* nonnull %0) #9
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 277, i32 273, i32 %15) #9
  %106 = call fastcc i32 @cond(%struct.LexState* nonnull %0) #9
  call fastcc void @leaveblock(%struct.FuncState* %102) #9
  %107 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %9, i64 0, i32 4
  %108 = load i8, i8* %107, align 1, !tbaa !81
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %117, label %110

; <label>:110:                                    ; preds = %100
  %111 = call i32 @luaK_jump(%struct.FuncState* %102) #9
  call void @luaK_patchtohere(%struct.FuncState* %102, i32 %106) #9
  %112 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %9, i64 0, i32 3
  %113 = load i8, i8* %112, align 8, !tbaa !78
  %114 = zext i8 %113 to i32
  %115 = call i32 @luaK_codeABCk(%struct.FuncState* %102, i32 55, i32 %114, i32 0, i32 0, i32 0) #9
  %116 = call i32 @luaK_jump(%struct.FuncState* %102) #9
  call void @luaK_patchtohere(%struct.FuncState* %102, i32 %111) #9
  br label %117

; <label>:117:                                    ; preds = %100, %110
  %118 = phi i32 [ %116, %110 ], [ %106, %100 ]
  call void @luaK_patchlist(%struct.FuncState* %102, i32 %118, i32 %103) #9
  call fastcc void @leaveblock(%struct.FuncState* %102) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %105) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %104) #8
  br label %322

; <label>:119:                                    ; preds = %1
  %120 = bitcast %struct.expdesc* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %120) #8
  %121 = bitcast %struct.expdesc* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %121) #8
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  call fastcc void @singlevar(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %6) #9
  br label %122

; <label>:122:                                    ; preds = %124, %119
  %123 = load i32, i32* %18, align 8, !tbaa !63
  switch i32 %123, label %126 [
    i32 46, label %124
    i32 58, label %125
  ]

; <label>:124:                                    ; preds = %122
  call fastcc void @fieldsel(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %6) #9
  br label %122

; <label>:125:                                    ; preds = %122
  call fastcc void @fieldsel(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %6) #9
  br label %126

; <label>:126:                                    ; preds = %122, %125
  %127 = phi i32 [ 1, %125 ], [ 0, %122 ]
  call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %7, i32 %127, i32 %15) #9
  %128 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %129 = load %struct.FuncState*, %struct.FuncState** %128, align 8, !tbaa !39
  call void @luaK_storevar(%struct.FuncState* %129, %struct.expdesc* nonnull %6, %struct.expdesc* nonnull %7) #9
  %130 = load %struct.FuncState*, %struct.FuncState** %128, align 8, !tbaa !39
  call void @luaK_fixline(%struct.FuncState* %130, i32 %15) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %121) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %120) #8
  br label %322

; <label>:131:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %132 = tail call fastcc i32 @testnext(%struct.LexState* nonnull %0, i32 265) #10
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %147, label %134

; <label>:134:                                    ; preds = %131
  %135 = bitcast %struct.expdesc* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %135) #8
  %136 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %137 = load %struct.FuncState*, %struct.FuncState** %136, align 8, !tbaa !39
  %138 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #9
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %138) #9
  tail call fastcc void @adjustlocalvars(%struct.LexState* nonnull %0, i32 1) #9
  %139 = load i32, i32* %14, align 4, !tbaa !84
  call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %5, i32 0, i32 %139) #9
  %140 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %137, i64 0, i32 4
  %141 = load i32, i32* %140, align 8, !tbaa !42
  %142 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i64 0, i32 1
  %143 = bitcast %union.anon.7* %142 to i32*
  %144 = load i32, i32* %143, align 8, !tbaa !11
  %145 = call fastcc %struct.LocVar* @getlocvar(%struct.FuncState* %137, i32 %144) #9
  %146 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %145, i64 0, i32 1
  store i32 %141, i32* %146, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %135) #8
  br label %322

; <label>:147:                                    ; preds = %131
  %148 = tail call fastcc i32 @testnext(%struct.LexState* nonnull %0, i32 42) #9
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %182, label %150

; <label>:150:                                    ; preds = %147
  %151 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %152 = load %struct.FuncState*, %struct.FuncState** %151, align 8, !tbaa !39
  %153 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #9
  %154 = getelementptr inbounds %struct.TString, %struct.TString* %153, i64 1
  %155 = bitcast %struct.TString* %154 to i8*
  %156 = tail call i32 @strcmp(i8* nonnull %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)) #13
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %161, label %158

; <label>:158:                                    ; preds = %150
  %159 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !57
  %160 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %159, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), %struct.TString* nonnull %154) #9
  tail call void @luaK_semerror(%struct.LexState* nonnull %0, i8* %160) #12
  unreachable

; <label>:161:                                    ; preds = %150
  %162 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #9
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %162) #9
  tail call fastcc void @checknext(%struct.LexState* nonnull %0, i32 61) #9
  tail call fastcc void @exp1(%struct.LexState* nonnull %0) #9
  %163 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %152, i64 0, i32 13
  %164 = load i8, i8* %163, align 2, !tbaa !64
  %165 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %152, i64 0, i32 3
  br label %166

; <label>:166:                                    ; preds = %166, %161
  %167 = phi %struct.BlockCnt** [ %165, %161 ], [ %172, %166 ]
  %168 = load %struct.BlockCnt*, %struct.BlockCnt** %167, align 8, !tbaa !87
  %169 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %168, i64 0, i32 3
  %170 = load i8, i8* %169, align 8, !tbaa !78
  %171 = icmp ugt i8 %170, %164
  %172 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %168, i64 0, i32 0
  br i1 %171, label %166, label %173

; <label>:173:                                    ; preds = %166
  %174 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %168, i64 0, i32 4
  store i8 1, i8* %174, align 1, !tbaa !81
  %175 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %152, i64 0, i32 17
  store i8 1, i8* %175, align 2, !tbaa !88
  %176 = load %struct.BlockCnt*, %struct.BlockCnt** %165, align 8, !tbaa !51
  %177 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %176, i64 0, i32 6
  store i8 1, i8* %177, align 1, !tbaa !82
  tail call fastcc void @adjustlocalvars(%struct.LexState* %0, i32 1) #9
  %178 = load i8, i8* %163, align 2, !tbaa !64
  %179 = zext i8 %178 to i32
  %180 = add nsw i32 %179, -1
  %181 = tail call i32 @luaK_codeABCk(%struct.FuncState* %152, i32 56, i32 %180, i32 0, i32 0, i32 0) #9
  br label %322

; <label>:182:                                    ; preds = %147
  %183 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %183) #8
  br label %184

; <label>:184:                                    ; preds = %184, %182
  %185 = phi i32 [ 0, %182 ], [ %187, %184 ]
  %186 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* %0) #9
  tail call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %186) #9
  %187 = add nuw nsw i32 %185, 1
  %188 = tail call fastcc i32 @testnext(%struct.LexState* %0, i32 44) #9
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %184

; <label>:190:                                    ; preds = %184
  %191 = tail call fastcc i32 @testnext(%struct.LexState* %0, i32 61) #9
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %195, label %193

; <label>:193:                                    ; preds = %190
  %194 = call fastcc i32 @explist(%struct.LexState* %0, %struct.expdesc* nonnull %4) #9
  br label %197

; <label>:195:                                    ; preds = %190
  %196 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  store i32 0, i32* %196, align 8, !tbaa !37
  br label %197

; <label>:197:                                    ; preds = %195, %193
  %198 = phi i32 [ %194, %193 ], [ 0, %195 ]
  call fastcc void @adjust_assign(%struct.LexState* %0, i32 %187, i32 %198, %struct.expdesc* nonnull %4) #9
  call fastcc void @adjustlocalvars(%struct.LexState* %0, i32 %187) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %183) #8
  br label %322

; <label>:199:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %200 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #10
  tail call fastcc void @checknext(%struct.LexState* nonnull %0, i32 288) #9
  br label %201

; <label>:201:                                    ; preds = %203, %199
  %202 = load i32, i32* %18, align 8, !tbaa !63
  switch i32 %202, label %204 [
    i32 288, label %203
    i32 59, label %203
  ]

; <label>:203:                                    ; preds = %201, %201
  tail call fastcc void @statement(%struct.LexState* nonnull %0) #9
  br label %201

; <label>:204:                                    ; preds = %201
  %205 = tail call fastcc %struct.Labeldesc* @findlabel(%struct.LexState* nonnull %0, %struct.TString* %200) #9
  %206 = icmp eq %struct.Labeldesc* %205, null
  br i1 %206, label %213, label %207, !prof !91

; <label>:207:                                    ; preds = %204
  %208 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !57
  %209 = getelementptr inbounds %struct.TString, %struct.TString* %200, i64 1
  %210 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %205, i64 0, i32 2
  %211 = load i32, i32* %210, align 4, !tbaa !92
  %212 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %208, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), %struct.TString* nonnull %209, i32 %211) #9
  tail call void @luaK_semerror(%struct.LexState* nonnull %0, i8* %212) #12
  unreachable

; <label>:213:                                    ; preds = %204
  switch i32 %202, label %215 [
    i32 260, label %216
    i32 261, label %216
    i32 262, label %216
    i32 289, label %216
    i32 277, label %214
  ]

; <label>:214:                                    ; preds = %213
  br label %216

; <label>:215:                                    ; preds = %213
  br label %216

; <label>:216:                                    ; preds = %213, %213, %213, %213, %214, %215
  %217 = phi i32 [ 0, %215 ], [ 0, %214 ], [ 1, %213 ], [ 1, %213 ], [ 1, %213 ], [ 1, %213 ]
  %218 = tail call fastcc i32 @createlabel(%struct.LexState* nonnull %0, %struct.TString* %200, i32 %15, i32 %217) #9
  br label %322

; <label>:219:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %220 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %221 = load %struct.FuncState*, %struct.FuncState** %220, align 8, !tbaa !39
  %222 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %222) #8
  %223 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %221, i64 0, i32 13
  %224 = load i8, i8* %223, align 2, !tbaa !64
  %225 = zext i8 %224 to i32
  %226 = load i32, i32* %18, align 8, !tbaa !63
  switch i32 %226, label %227 [
    i32 260, label %262
    i32 261, label %262
    i32 262, label %262
    i32 289, label %262
    i32 277, label %262
    i32 59, label %262
  ]

; <label>:227:                                    ; preds = %219
  %228 = call fastcc i32 @explist(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3) #9
  %229 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %230 = load i32, i32* %229, align 8, !tbaa !37
  %231 = and i32 %230, -2
  %232 = icmp eq i32 %231, 16
  br i1 %232, label %233, label %257

; <label>:233:                                    ; preds = %227
  call void @luaK_setreturns(%struct.FuncState* %221, %struct.expdesc* nonnull %3, i32 -1) #9
  %234 = load i32, i32* %229, align 8, !tbaa !37
  %235 = icmp eq i32 %234, 16
  %236 = icmp eq i32 %228, 1
  %237 = and i1 %236, %235
  br i1 %237, label %238, label %262

; <label>:238:                                    ; preds = %233
  %239 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %221, i64 0, i32 3
  %240 = load %struct.BlockCnt*, %struct.BlockCnt** %239, align 8, !tbaa !51
  %241 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %240, i64 0, i32 6
  %242 = load i8, i8* %241, align 1, !tbaa !82
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %262

; <label>:244:                                    ; preds = %238
  %245 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %221, i64 0, i32 0
  %246 = load %struct.Proto*, %struct.Proto** %245, align 8, !tbaa !19
  %247 = getelementptr inbounds %struct.Proto, %struct.Proto* %246, i64 0, i32 16
  %248 = load i32*, i32** %247, align 8, !tbaa !65
  %249 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %250 = bitcast %union.anon.7* %249 to i32*
  %251 = load i32, i32* %250, align 8, !tbaa !11
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %248, i64 %252
  %254 = load i32, i32* %253, align 4, !tbaa !85
  %255 = and i32 %254, -128
  %256 = or i32 %255, 70
  store i32 %256, i32* %253, align 4, !tbaa !85
  br label %262

; <label>:257:                                    ; preds = %227
  %258 = icmp eq i32 %228, 1
  br i1 %258, label %259, label %261

; <label>:259:                                    ; preds = %257
  %260 = call i32 @luaK_exp2anyreg(%struct.FuncState* %221, %struct.expdesc* nonnull %3) #9
  br label %262

; <label>:261:                                    ; preds = %257
  call void @luaK_exp2nextreg(%struct.FuncState* %221, %struct.expdesc* nonnull %3) #9
  br label %262

; <label>:262:                                    ; preds = %219, %219, %219, %219, %219, %219, %233, %238, %244, %259, %261
  %263 = phi i32 [ 1, %259 ], [ %228, %261 ], [ -1, %238 ], [ -1, %244 ], [ -1, %233 ], [ 0, %219 ], [ 0, %219 ], [ 0, %219 ], [ 0, %219 ], [ 0, %219 ], [ 0, %219 ]
  %264 = phi i32 [ %260, %259 ], [ %225, %261 ], [ %225, %238 ], [ %225, %244 ], [ %225, %233 ], [ %225, %219 ], [ %225, %219 ], [ %225, %219 ], [ %225, %219 ], [ %225, %219 ], [ %225, %219 ]
  call void @luaK_ret(%struct.FuncState* %221, i32 %264, i32 %263) #9
  %265 = call fastcc i32 @testnext(%struct.LexState* nonnull %0, i32 59) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %222) #8
  br label %322

; <label>:266:                                    ; preds = %1
  %267 = load i32, i32* %14, align 4, !tbaa !84
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %268 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !57
  %269 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %268, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #9
  %270 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %271 = load %struct.FuncState*, %struct.FuncState** %270, align 8, !tbaa !39
  %272 = tail call i32 @luaK_jump(%struct.FuncState* %271) #9
  tail call fastcc void @newgotoentry(%struct.LexState* nonnull %0, %struct.TString* %269, i32 %267, i32 %272) #9
  br label %322

; <label>:273:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %274 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %275 = load %struct.FuncState*, %struct.FuncState** %274, align 8, !tbaa !39
  %276 = load i32, i32* %14, align 4, !tbaa !84
  %277 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #9
  %278 = tail call fastcc %struct.Labeldesc* @findlabel(%struct.LexState* nonnull %0, %struct.TString* %277) #9
  %279 = icmp eq %struct.Labeldesc* %278, null
  br i1 %279, label %280, label %282

; <label>:280:                                    ; preds = %273
  %281 = tail call i32 @luaK_jump(%struct.FuncState* %275) #9
  tail call fastcc void @newgotoentry(%struct.LexState* nonnull %0, %struct.TString* %277, i32 %276, i32 %281) #9
  br label %322

; <label>:282:                                    ; preds = %273
  %283 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %275, i64 0, i32 13
  %284 = load i8, i8* %283, align 2, !tbaa !64
  %285 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %278, i64 0, i32 3
  %286 = load i8, i8* %285, align 8, !tbaa !94
  %287 = icmp ugt i8 %284, %286
  br i1 %287, label %288, label %291

; <label>:288:                                    ; preds = %282
  %289 = zext i8 %286 to i32
  %290 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %275, i32 55, i32 %289, i32 0, i32 0, i32 0) #9
  br label %291

; <label>:291:                                    ; preds = %288, %282
  %292 = tail call i32 @luaK_jump(%struct.FuncState* nonnull %275) #9
  %293 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %278, i64 0, i32 1
  %294 = load i32, i32* %293, align 8, !tbaa !95
  tail call void @luaK_patchlist(%struct.FuncState* nonnull %275, i32 %292, i32 %294) #9
  br label %322

; <label>:295:                                    ; preds = %1
  %296 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %297 = load %struct.FuncState*, %struct.FuncState** %296, align 8, !tbaa !39
  %298 = bitcast %struct.LHS_assign* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %298) #8
  %299 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %2, i64 0, i32 1
  call fastcc void @suffixedexp(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %299) #9
  %300 = load i32, i32* %18, align 8, !tbaa !63
  switch i32 %300, label %303 [
    i32 61, label %301
    i32 44, label %301
  ]

; <label>:301:                                    ; preds = %295, %295
  %302 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %2, i64 0, i32 0
  store %struct.LHS_assign* null, %struct.LHS_assign** %302, align 8, !tbaa !96
  call fastcc void @restassign(%struct.LexState* nonnull %0, %struct.LHS_assign* nonnull %2, i32 1) #9
  br label %321

; <label>:303:                                    ; preds = %295
  %304 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %297, i64 0, i32 0
  %305 = load %struct.Proto*, %struct.Proto** %304, align 8, !tbaa !19
  %306 = getelementptr inbounds %struct.Proto, %struct.Proto* %305, i64 0, i32 16
  %307 = load i32*, i32** %306, align 8, !tbaa !65
  %308 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %2, i64 0, i32 1, i32 1
  %309 = bitcast %union.anon.7* %308 to i32*
  %310 = load i32, i32* %309, align 8, !tbaa !11
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %307, i64 %311
  %313 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %299, i64 0, i32 0
  %314 = load i32, i32* %313, align 8, !tbaa !98
  %315 = icmp eq i32 %314, 16
  br i1 %315, label %317, label %316

; <label>:316:                                    ; preds = %303
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0)) #12
  unreachable

; <label>:317:                                    ; preds = %303
  %318 = load i32, i32* %312, align 4, !tbaa !85
  %319 = and i32 %318, 16777215
  %320 = or i32 %319, 16777216
  store i32 %320, i32* %312, align 4, !tbaa !85
  br label %321

; <label>:321:                                    ; preds = %301, %317
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %298) #8
  br label %322

; <label>:322:                                    ; preds = %291, %280, %197, %173, %134, %321, %266, %262, %216, %126, %117, %99, %42, %35, %33, %20
  %323 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %324 = load %struct.FuncState*, %struct.FuncState** %323, align 8, !tbaa !39
  %325 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %324, i64 0, i32 13
  %326 = load i8, i8* %325, align 2, !tbaa !64
  %327 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %324, i64 0, i32 15
  store i8 %326, i8* %327, align 4, !tbaa !86
  %328 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !57
  %329 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %328, i64 0, i32 19
  %330 = load i32, i32* %329, align 8, !tbaa !99
  %331 = add i32 %330, -1
  store i32 %331, i32* %329, align 8, !tbaa !99
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaE_enterCcall(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @block(%struct.LexState*) unnamed_addr #0 {
  %2 = alloca %struct.BlockCnt, align 8
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !39
  %5 = bitcast %struct.BlockCnt* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #8
  call fastcc void @enterblock(%struct.FuncState* %4, %struct.BlockCnt* nonnull %2, i8 zeroext 0) #10
  call fastcc void @statlist(%struct.LexState* %0) #10
  call fastcc void @leaveblock(%struct.FuncState* %4) #10
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #8
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @check_match(%struct.LexState*, i32, i32, i32) unnamed_addr #0 {
  %5 = tail call fastcc i32 @testnext(%struct.LexState* %0, i32 %1) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18, !prof !100

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %9 = load i32, i32* %8, align 4, !tbaa !84
  %10 = icmp eq i32 %9, %3
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %7
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 %1) #11
  unreachable

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %14 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !tbaa !57
  %15 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 %1) #9
  %16 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 %2) #9
  %17 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* %15, i8* %16, i32 %3) #9
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %17) #12
  unreachable

; <label>:18:                                     ; preds = %4
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @testnext(%struct.LexState*, i32) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !63
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %2
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %7

; <label>:7:                                      ; preds = %2, %6
  %8 = phi i32 [ 1, %6 ], [ 0, %2 ]
  ret i32 %8
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc %struct.TString* @str_checkname(%struct.LexState*) unnamed_addr #0 {
  tail call fastcc void @check(%struct.LexState* %0, i32 292) #10
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %3 = bitcast %union.SemInfo* %2 to %struct.TString**
  %4 = load %struct.TString*, %struct.TString** %3, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* %0) #9
  ret %struct.TString* %4
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @test_then_block(%struct.LexState*, i32*) unnamed_addr #0 {
  %3 = alloca %struct.BlockCnt, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = bitcast %struct.BlockCnt* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %7 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !39
  %8 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #8
  tail call void @luaX_next(%struct.LexState* %0) #9
  call fastcc void @expr(%struct.LexState* %0, %struct.expdesc* nonnull %4) #10
  call fastcc void @checknext(%struct.LexState* %0, i32 275) #10
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !84
  %11 = call fastcc i32 @testnext(%struct.LexState* %0, i32 258) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8, !tbaa !57
  %16 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #9
  br label %43

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %19 = load i32, i32* %18, align 8, !tbaa !63
  %20 = icmp eq i32 %19, 266
  br i1 %20, label %21, label %62

; <label>:21:                                     ; preds = %17
  %22 = call i32 @luaX_lookahead(%struct.LexState* nonnull %0) #9
  %23 = icmp eq i32 %22, 292
  br i1 %23, label %24, label %62

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, i32 1
  %26 = bitcast %union.SemInfo* %25 to %struct.TString**
  %27 = load %struct.TString*, %struct.TString** %26, align 8, !tbaa !11
  %28 = call fastcc %struct.Labeldesc* @findlabel(%struct.LexState* nonnull %0, %struct.TString* %27) #9
  %29 = icmp eq %struct.Labeldesc* %28, null
  br i1 %29, label %40, label %30

; <label>:30:                                     ; preds = %24
  %31 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !39
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %31, i64 0, i32 13
  %33 = load i8, i8* %32, align 2, !tbaa !64
  %34 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %28, i64 0, i32 3
  %35 = load i8, i8* %34, align 8, !tbaa !94
  %36 = icmp ugt i8 %33, %35
  br i1 %36, label %62, label %37

; <label>:37:                                     ; preds = %30
  %38 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %28, i64 0, i32 1
  %39 = load i32, i32* %38, align 8, !tbaa !95
  br label %40

; <label>:40:                                     ; preds = %24, %37
  %41 = phi %struct.TString* [ null, %37 ], [ %27, %24 ]
  %42 = phi i32 [ %39, %37 ], [ -1, %24 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %43

; <label>:43:                                     ; preds = %40, %13
  %44 = phi %struct.TString* [ %41, %40 ], [ %16, %13 ]
  %45 = phi i32 [ %42, %40 ], [ -1, %13 ]
  %46 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !39
  call void @luaK_goiffalse(%struct.FuncState* %46, %struct.expdesc* nonnull %4) #9
  call fastcc void @enterblock(%struct.FuncState* %7, %struct.BlockCnt* nonnull %3, i8 zeroext 0) #10
  %47 = icmp eq %struct.TString* %44, null
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2
  %49 = load i32, i32* %48, align 8, !tbaa !34
  br i1 %47, label %51, label %50

; <label>:50:                                     ; preds = %43
  call fastcc void @newgotoentry(%struct.LexState* nonnull %0, %struct.TString* nonnull %44, i32 %10, i32 %49) #10
  br label %52

; <label>:51:                                     ; preds = %43
  call void @luaK_patchlist(%struct.FuncState* %7, i32 %49, i32 %45) #9
  br label %52

; <label>:52:                                     ; preds = %51, %50
  br label %53

; <label>:53:                                     ; preds = %52, %53
  %54 = call fastcc i32 @testnext(%struct.LexState* %0, i32 59) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %53

; <label>:56:                                     ; preds = %53
  %57 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %58 = load i32, i32* %57, align 8, !tbaa !63
  switch i32 %58, label %60 [
    i32 260, label %59
    i32 261, label %59
    i32 262, label %59
    i32 289, label %59
  ]

; <label>:59:                                     ; preds = %56, %56, %56, %56
  call fastcc void @leaveblock(%struct.FuncState* %7) #10
  br label %75

; <label>:60:                                     ; preds = %56
  %61 = call i32 @luaK_jump(%struct.FuncState* %7) #9
  br label %66

; <label>:62:                                     ; preds = %21, %17, %30
  %63 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !39
  call void @luaK_goiftrue(%struct.FuncState* %63, %struct.expdesc* nonnull %4) #9
  call fastcc void @enterblock(%struct.FuncState* %7, %struct.BlockCnt* nonnull %3, i8 zeroext 0) #10
  %64 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3
  %65 = load i32, i32* %64, align 4, !tbaa !36
  br label %66

; <label>:66:                                     ; preds = %62, %60
  %67 = phi i32* [ %18, %62 ], [ %57, %60 ]
  %68 = phi i32 [ %65, %62 ], [ %61, %60 ]
  call fastcc void @statlist(%struct.LexState* nonnull %0) #10
  call fastcc void @leaveblock(%struct.FuncState* %7) #10
  %69 = load i32, i32* %67, align 8, !tbaa !63
  %70 = and i32 %69, -2
  %71 = icmp eq i32 %70, 260
  br i1 %71, label %72, label %74

; <label>:72:                                     ; preds = %66
  %73 = call i32 @luaK_jump(%struct.FuncState* %7) #9
  call void @luaK_concat(%struct.FuncState* %7, i32* %1, i32 %73) #9
  br label %74

; <label>:74:                                     ; preds = %66, %72
  call void @luaK_patchtohere(%struct.FuncState* %7, i32 %68) #9
  br label %75

; <label>:75:                                     ; preds = %74, %59
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #8
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaK_patchtohere(%struct.FuncState*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @expr(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = tail call fastcc i32 @subexpr(%struct.LexState* %0, %struct.expdesc* %1, i32 0) #10
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @checknext(%struct.LexState*, i32) unnamed_addr #0 {
  tail call fastcc void @check(%struct.LexState* %0, i32 %1) #10
  tail call void @luaX_next(%struct.LexState* %0) #9
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaK_goiffalse(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @newgotoentry(%struct.LexState* nocapture readonly, %struct.TString*, i32, i32) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %6 = load %struct.Dyndata*, %struct.Dyndata** %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %6, i64 0, i32 1
  %8 = tail call fastcc i32 @newlabelentry(%struct.LexState* %0, %struct.Labellist* nonnull %7, %struct.TString* %1, i32 %2, i32 %3) #10
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaK_patchlist(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @leaveblock(%struct.FuncState*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3
  %3 = load %struct.BlockCnt*, %struct.BlockCnt** %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %5 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 5
  %7 = load i8, i8* %6, align 2, !tbaa !76
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 6
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !tbaa !57
  %12 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #9
  %13 = tail call fastcc i32 @createlabel(%struct.LexState* %5, %struct.TString* %12, i32 0, i32 0) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %28

; <label>:15:                                     ; preds = %9, %1
  %16 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 0
  %17 = load %struct.BlockCnt*, %struct.BlockCnt** %16, align 8, !tbaa !83
  %18 = icmp eq %struct.BlockCnt* %17, null
  br i1 %18, label %28, label %19

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 4
  %21 = load i8, i8* %20, align 1, !tbaa !81
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 3
  %25 = load i8, i8* %24, align 8, !tbaa !78
  %26 = zext i8 %25 to i32
  %27 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %0, i32 55, i32 %26, i32 0, i32 0, i32 0) #9
  br label %28

; <label>:28:                                     ; preds = %9, %19, %15, %23
  %29 = bitcast %struct.BlockCnt* %3 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !83
  %31 = bitcast %struct.BlockCnt** %2 to i64*
  store i64 %30, i64* %31, align 8, !tbaa !51
  %32 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 3
  %33 = load i8, i8* %32, align 8, !tbaa !78
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %36 = load i8, i8* %35, align 2, !tbaa !64
  %37 = zext i8 %36 to i32
  %38 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !41
  %39 = getelementptr inbounds %struct.LexState, %struct.LexState* %38, i64 0, i32 10
  %40 = load %struct.Dyndata*, %struct.Dyndata** %39, align 8, !tbaa !27
  %41 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %40, i64 0, i32 0, i32 1
  %42 = load i32, i32* %41, align 8, !tbaa !33
  %43 = sub nsw i32 %34, %37
  %44 = add i32 %43, %42
  store i32 %44, i32* %41, align 8, !tbaa !33
  %45 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  br label %46

; <label>:46:                                     ; preds = %50, %28
  %47 = phi i8 [ %53, %50 ], [ %36, %28 ]
  %48 = phi i32 [ %57, %50 ], [ %37, %28 ]
  %49 = icmp ugt i32 %48, %34
  br i1 %49, label %50, label %58

; <label>:50:                                     ; preds = %46
  %51 = load i32, i32* %45, align 8, !tbaa !42
  %52 = trunc i32 %48 to i8
  %53 = add i8 %52, -1
  store i8 %53, i8* %35, align 2, !tbaa !64
  %54 = zext i8 %53 to i32
  %55 = tail call fastcc %struct.LocVar* @getlocvar(%struct.FuncState* nonnull %0, i32 %54) #9
  %56 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %55, i64 0, i32 2
  store i32 %51, i32* %56, align 4, !tbaa !101
  %57 = add nsw i32 %48, -1
  br label %46

; <label>:58:                                     ; preds = %46
  %59 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  store i8 %47, i8* %59, align 4, !tbaa !86
  %60 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 1
  %61 = load i32, i32* %60, align 8, !tbaa !79
  %62 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 10
  %63 = load %struct.Dyndata*, %struct.Dyndata** %62, align 8, !tbaa !27
  %64 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %63, i64 0, i32 2, i32 1
  store i32 %61, i32* %64, align 8, !tbaa !28
  %65 = icmp eq i64 %30, 0
  %66 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 2
  %67 = load i32, i32* %66, align 4, !tbaa !80
  br i1 %65, label %90, label %68

; <label>:68:                                     ; preds = %58
  %69 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %40, i64 0, i32 1, i32 1
  %70 = load i32, i32* %69, align 8, !tbaa !102
  %71 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %40, i64 0, i32 1, i32 0
  %72 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 4
  %73 = sext i32 %67 to i64
  %74 = sext i32 %70 to i64
  br label %75

; <label>:75:                                     ; preds = %88, %68
  %76 = phi i64 [ %89, %88 ], [ %73, %68 ]
  %77 = icmp slt i64 %76, %74
  br i1 %77, label %78, label %99

; <label>:78:                                     ; preds = %75
  %79 = load %struct.Labeldesc*, %struct.Labeldesc** %71, align 8, !tbaa !103
  %80 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %79, i64 %76, i32 3
  %81 = load i8, i8* %80, align 8, !tbaa !94
  %82 = icmp ugt i8 %81, %33
  br i1 %82, label %83, label %88

; <label>:83:                                     ; preds = %78
  store i8 %33, i8* %80, align 8, !tbaa !94
  %84 = load i8, i8* %72, align 1, !tbaa !81
  %85 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %79, i64 %76, i32 4
  %86 = load i8, i8* %85, align 1, !tbaa !104
  %87 = or i8 %86, %84
  store i8 %87, i8* %85, align 1, !tbaa !104
  br label %88

; <label>:88:                                     ; preds = %83, %78
  %89 = add nsw i64 %76, 1
  br label %75

; <label>:90:                                     ; preds = %58
  %91 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %63, i64 0, i32 1, i32 1
  %92 = load i32, i32* %91, align 8, !tbaa !32
  %93 = icmp slt i32 %67, %92
  br i1 %93, label %94, label %99

; <label>:94:                                     ; preds = %90
  %95 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %63, i64 0, i32 1, i32 0
  %96 = load %struct.Labeldesc*, %struct.Labeldesc** %95, align 8, !tbaa !105
  %97 = sext i32 %67 to i64
  %98 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %96, i64 %97
  tail call fastcc void @undefgoto(%struct.LexState* nonnull %5, %struct.Labeldesc* %98) #11
  unreachable

; <label>:99:                                     ; preds = %75, %90
  ret void
}

; Function Attrs: minsize optsize
declare hidden i32 @luaK_jump(%struct.FuncState*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaK_goiftrue(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaK_concat(%struct.FuncState*, i32*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @subexpr(%struct.LexState*, %struct.expdesc*, i32) unnamed_addr #0 {
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %6 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !tbaa !57
  tail call void @luaE_enterCcall(%struct.lua_State* %6) #9
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !63
  switch i32 %8, label %81 [
    i32 271, label %12
    i32 45, label %9
    i32 126, label %10
    i32 35, label %11
    i32 290, label %19
    i32 291, label %29
    i32 293, label %39
    i32 270, label %43
    i32 276, label %49
    i32 263, label %55
    i32 281, label %61
    i32 123, label %77
    i32 265, label %78
  ]

; <label>:9:                                      ; preds = %3
  br label %12

; <label>:10:                                     ; preds = %3
  br label %12

; <label>:11:                                     ; preds = %3
  br label %12

; <label>:12:                                     ; preds = %3, %11, %10, %9
  %13 = phi i32 [ 2, %3 ], [ 0, %9 ], [ 1, %10 ], [ 3, %11 ]
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %15 = load i32, i32* %14, align 4, !tbaa !84
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %16 = tail call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 12) #10
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %18 = load %struct.FuncState*, %struct.FuncState** %17, align 8, !tbaa !39
  tail call void @luaK_prefix(%struct.FuncState* %18, i32 %13, %struct.expdesc* %1, i32 %15) #9
  br label %83

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %20, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %21, align 4, !tbaa !36
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 5, i32* %22, align 8, !tbaa !37
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %24 = bitcast %union.anon.7* %23 to i32*
  store i32 0, i32* %24, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, i32 0
  %26 = bitcast double* %25 to i64*
  %27 = load i64, i64* %26, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  store i64 %27, i64* %28, align 8, !tbaa !11
  br label %82

; <label>:29:                                     ; preds = %3
  %30 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %30, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %31, align 4, !tbaa !36
  %32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 6, i32* %32, align 8, !tbaa !37
  %33 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %34 = bitcast %union.anon.7* %33 to i32*
  store i32 0, i32* %34, align 8, !tbaa !11
  %35 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %36 = bitcast %union.SemInfo* %35 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !11
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  store i64 %37, i64* %38, align 8, !tbaa !11
  br label %82

; <label>:39:                                     ; preds = %3
  %40 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %41 = bitcast %union.SemInfo* %40 to %struct.TString**
  %42 = load %struct.TString*, %struct.TString** %41, align 8, !tbaa !11
  tail call fastcc void @codestring(%struct.LexState* nonnull %0, %struct.expdesc* %1, %struct.TString* %42) #9
  br label %82

; <label>:43:                                     ; preds = %3
  %44 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %44, align 8, !tbaa !34
  %45 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %45, align 4, !tbaa !36
  %46 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 1, i32* %46, align 8, !tbaa !37
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %48 = bitcast %union.anon.7* %47 to i32*
  store i32 0, i32* %48, align 8, !tbaa !11
  br label %82

; <label>:49:                                     ; preds = %3
  %50 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %50, align 8, !tbaa !34
  %51 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %51, align 4, !tbaa !36
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 2, i32* %52, align 8, !tbaa !37
  %53 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %54 = bitcast %union.anon.7* %53 to i32*
  store i32 0, i32* %54, align 8, !tbaa !11
  br label %82

; <label>:55:                                     ; preds = %3
  %56 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %56, align 8, !tbaa !34
  %57 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %57, align 4, !tbaa !36
  %58 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 3, i32* %58, align 8, !tbaa !37
  %59 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %60 = bitcast %union.anon.7* %59 to i32*
  store i32 0, i32* %60, align 8, !tbaa !11
  br label %82

; <label>:61:                                     ; preds = %3
  %62 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %63 = load %struct.FuncState*, %struct.FuncState** %62, align 8, !tbaa !39
  %64 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %63, i64 0, i32 0
  %65 = load %struct.Proto*, %struct.Proto** %64, align 8, !tbaa !19
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 4
  %67 = load i8, i8* %66, align 1, !tbaa !54
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %61
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0)) #12
  unreachable

; <label>:70:                                     ; preds = %61
  %71 = tail call i32 @luaK_codeABCk(%struct.FuncState* %63, i32 81, i32 0, i32 0, i32 1, i32 0) #9
  %72 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %72, align 8, !tbaa !34
  %73 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %73, align 4, !tbaa !36
  %74 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 17, i32* %74, align 8, !tbaa !37
  %75 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %76 = bitcast %union.anon.7* %75 to i32*
  store i32 %71, i32* %76, align 8, !tbaa !11
  br label %82

; <label>:77:                                     ; preds = %3
  tail call fastcc void @constructor(%struct.LexState* nonnull %0, %struct.expdesc* %1) #9
  br label %83

; <label>:78:                                     ; preds = %3
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %79 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %80 = load i32, i32* %79, align 4, !tbaa !84
  tail call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 0, i32 %80) #9
  br label %83

; <label>:81:                                     ; preds = %3
  tail call fastcc void @suffixedexp(%struct.LexState* nonnull %0, %struct.expdesc* %1) #9
  br label %83

; <label>:82:                                     ; preds = %70, %55, %49, %43, %39, %29, %19
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %83

; <label>:83:                                     ; preds = %82, %81, %78, %77, %12
  %84 = load i32, i32* %7, align 8, !tbaa !63
  switch i32 %84, label %105 [
    i32 43, label %106
    i32 45, label %85
    i32 42, label %86
    i32 37, label %87
    i32 94, label %88
    i32 47, label %89
    i32 279, label %90
    i32 38, label %91
    i32 124, label %92
    i32 126, label %93
    i32 286, label %94
    i32 287, label %95
    i32 280, label %96
    i32 285, label %97
    i32 282, label %98
    i32 60, label %99
    i32 284, label %100
    i32 62, label %101
    i32 283, label %102
    i32 257, label %103
    i32 272, label %104
  ]

; <label>:85:                                     ; preds = %83
  br label %106

; <label>:86:                                     ; preds = %83
  br label %106

; <label>:87:                                     ; preds = %83
  br label %106

; <label>:88:                                     ; preds = %83
  br label %106

; <label>:89:                                     ; preds = %83
  br label %106

; <label>:90:                                     ; preds = %83
  br label %106

; <label>:91:                                     ; preds = %83
  br label %106

; <label>:92:                                     ; preds = %83
  br label %106

; <label>:93:                                     ; preds = %83
  br label %106

; <label>:94:                                     ; preds = %83
  br label %106

; <label>:95:                                     ; preds = %83
  br label %106

; <label>:96:                                     ; preds = %83
  br label %106

; <label>:97:                                     ; preds = %83
  br label %106

; <label>:98:                                     ; preds = %83
  br label %106

; <label>:99:                                     ; preds = %83
  br label %106

; <label>:100:                                    ; preds = %83
  br label %106

; <label>:101:                                    ; preds = %83
  br label %106

; <label>:102:                                    ; preds = %83
  br label %106

; <label>:103:                                    ; preds = %83
  br label %106

; <label>:104:                                    ; preds = %83
  br label %106

; <label>:105:                                    ; preds = %83
  br label %106

; <label>:106:                                    ; preds = %83, %85, %86, %87, %88, %89, %90, %91, %92, %93, %94, %95, %96, %97, %98, %99, %100, %101, %102, %103, %104, %105
  %107 = phi i32 [ 21, %105 ], [ 20, %104 ], [ 19, %103 ], [ 18, %102 ], [ 17, %101 ], [ 15, %100 ], [ 14, %99 ], [ 13, %98 ], [ 16, %97 ], [ 12, %96 ], [ 11, %95 ], [ 10, %94 ], [ 9, %93 ], [ 8, %92 ], [ 7, %91 ], [ 6, %90 ], [ 5, %89 ], [ 4, %88 ], [ 3, %87 ], [ 2, %86 ], [ 1, %85 ], [ 0, %83 ]
  %108 = bitcast %struct.expdesc* %4 to i8*
  %109 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %110 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %111

; <label>:111:                                    ; preds = %120, %106
  %112 = phi i32 [ %107, %106 ], [ %126, %120 ]
  %113 = icmp eq i32 %112, 21
  br i1 %113, label %128, label %114

; <label>:114:                                    ; preds = %111
  %115 = zext i32 %112 to i64
  %116 = getelementptr inbounds [21 x %struct.anon.9], [21 x %struct.anon.9]* @priority, i64 0, i64 %115, i32 0
  %117 = load i8, i8* %116, align 2, !tbaa !106
  %118 = zext i8 %117 to i32
  %119 = icmp sgt i32 %118, %2
  br i1 %119, label %120, label %128

; <label>:120:                                    ; preds = %114
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %108) #8
  %121 = load i32, i32* %109, align 4, !tbaa !84
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  %122 = load %struct.FuncState*, %struct.FuncState** %110, align 8, !tbaa !39
  call void @luaK_infix(%struct.FuncState* %122, i32 %112, %struct.expdesc* %1) #9
  %123 = getelementptr inbounds [21 x %struct.anon.9], [21 x %struct.anon.9]* @priority, i64 0, i64 %115, i32 1
  %124 = load i8, i8* %123, align 1, !tbaa !108
  %125 = zext i8 %124 to i32
  %126 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 %125) #10
  %127 = load %struct.FuncState*, %struct.FuncState** %110, align 8, !tbaa !39
  call void @luaK_posfix(%struct.FuncState* %127, i32 %112, %struct.expdesc* %1, %struct.expdesc* nonnull %4, i32 %121) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %108) #8
  br label %111

; <label>:128:                                    ; preds = %111, %114
  %129 = phi i32 [ 21, %111 ], [ %112, %114 ]
  %130 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !tbaa !57
  %131 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %130, i64 0, i32 19
  %132 = load i32, i32* %131, align 8, !tbaa !99
  %133 = add i32 %132, -1
  store i32 %133, i32* %131, align 8, !tbaa !99
  ret i32 %129
}

; Function Attrs: minsize optsize
declare hidden void @luaK_prefix(%struct.FuncState*, i32, %struct.expdesc*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaK_infix(%struct.FuncState*, i32, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaK_posfix(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @codestring(%struct.LexState* nocapture readonly, %struct.expdesc* nocapture, %struct.TString*) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !39
  %6 = tail call i32 @luaK_stringK(%struct.FuncState* %5, %struct.TString* %2) #9
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %7, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %8, align 4, !tbaa !36
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 4, i32* %9, align 8, !tbaa !37
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %11 = bitcast %union.anon.7* %10 to i32*
  store i32 %6, i32* %11, align 8, !tbaa !11
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @constructor(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = alloca %struct.ConsControl, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %7 = load i32, i32* %6, align 4, !tbaa !84
  %8 = tail call i32 @luaK_codeABCk(%struct.FuncState* %5, i32 17, i32 0, i32 0, i32 0, i32 0) #9
  %9 = bitcast %struct.ConsControl* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #8
  %10 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 4
  store i32 0, i32* %10, align 8, !tbaa !109
  %11 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 2
  store i32 0, i32* %11, align 8, !tbaa !111
  %12 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 3
  store i32 0, i32* %12, align 4, !tbaa !112
  %13 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 1
  store %struct.expdesc* %1, %struct.expdesc** %13, align 8, !tbaa !113
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %14, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %15, align 4, !tbaa !36
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 15, i32* %16, align 8, !tbaa !37
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %18 = bitcast %union.anon.7* %17 to i32*
  store i32 %8, i32* %18, align 8, !tbaa !11
  %19 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0
  %20 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 2
  store i32 -1, i32* %20, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 3
  store i32 -1, i32* %21, align 4, !tbaa !36
  %22 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 0
  store i32 0, i32* %22, align 8, !tbaa !37
  %23 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 1
  %24 = bitcast %union.anon.7* %23 to i32*
  store i32 0, i32* %24, align 8, !tbaa !11
  %25 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !39
  tail call void @luaK_exp2nextreg(%struct.FuncState* %25, %struct.expdesc* %1) #9
  tail call fastcc void @checknext(%struct.LexState* %0, i32 123) #10
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  br label %27

; <label>:27:                                     ; preds = %56, %2
  %28 = load i32, i32* %26, align 8, !tbaa !63
  %29 = icmp eq i32 %28, 125
  br i1 %29, label %60, label %30

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %22, align 8, !tbaa !114
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33

; <label>:33:                                     ; preds = %30
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %19) #9
  store i32 0, i32* %22, align 8, !tbaa !114
  %34 = load i32, i32* %10, align 8, !tbaa !109
  %35 = icmp eq i32 %34, 50
  br i1 %35, label %36, label %42

; <label>:36:                                     ; preds = %33
  %37 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !tbaa !113
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %37, i64 0, i32 1
  %39 = bitcast %union.anon.7* %38 to i32*
  %40 = load i32, i32* %39, align 8, !tbaa !11
  %41 = load i32, i32* %12, align 4, !tbaa !112
  call void @luaK_setlist(%struct.FuncState* %5, i32 %40, i32 %41, i32 50) #9
  store i32 0, i32* %10, align 8, !tbaa !109
  br label %42

; <label>:42:                                     ; preds = %36, %33
  %43 = load i32, i32* %26, align 8, !tbaa !63
  br label %44

; <label>:44:                                     ; preds = %42, %30
  %45 = phi i32 [ %43, %42 ], [ %28, %30 ]
  switch i32 %45, label %52 [
    i32 292, label %46
    i32 91, label %51
  ]

; <label>:46:                                     ; preds = %44
  %47 = call i32 @luaX_lookahead(%struct.LexState* nonnull %0) #9
  %48 = icmp eq i32 %47, 61
  br i1 %48, label %50, label %49

; <label>:49:                                     ; preds = %46
  call fastcc void @listfield(%struct.LexState* nonnull %0, %struct.ConsControl* nonnull %3) #9
  br label %53

; <label>:50:                                     ; preds = %46
  call fastcc void @recfield(%struct.LexState* nonnull %0, %struct.ConsControl* nonnull %3) #9
  br label %53

; <label>:51:                                     ; preds = %44
  call fastcc void @recfield(%struct.LexState* nonnull %0, %struct.ConsControl* nonnull %3) #9
  br label %53

; <label>:52:                                     ; preds = %44
  call fastcc void @listfield(%struct.LexState* nonnull %0, %struct.ConsControl* nonnull %3) #9
  br label %53

; <label>:53:                                     ; preds = %49, %50, %51, %52
  %54 = call fastcc i32 @testnext(%struct.LexState* nonnull %0, i32 44) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

; <label>:56:                                     ; preds = %53, %57
  br label %27

; <label>:57:                                     ; preds = %53
  %58 = call fastcc i32 @testnext(%struct.LexState* nonnull %0, i32 59) #10
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %56

; <label>:60:                                     ; preds = %57, %27
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 125, i32 123, i32 %7) #10
  %61 = load i32, i32* %10, align 8, !tbaa !109
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %82, label %63

; <label>:63:                                     ; preds = %60
  %64 = load i32, i32* %22, align 8, !tbaa !114
  switch i32 %64, label %73 [
    i32 16, label %65
    i32 17, label %65
    i32 0, label %75
  ]

; <label>:65:                                     ; preds = %63, %63
  call void @luaK_setreturns(%struct.FuncState* %5, %struct.expdesc* nonnull %19, i32 -1) #9
  %66 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !tbaa !113
  %67 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %66, i64 0, i32 1
  %68 = bitcast %union.anon.7* %67 to i32*
  %69 = load i32, i32* %68, align 8, !tbaa !11
  %70 = load i32, i32* %12, align 4, !tbaa !112
  call void @luaK_setlist(%struct.FuncState* %5, i32 %69, i32 %70, i32 -1) #9
  %71 = load i32, i32* %12, align 4, !tbaa !112
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %12, align 4, !tbaa !112
  br label %82

; <label>:73:                                     ; preds = %63
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %19) #9
  %74 = load i32, i32* %10, align 8, !tbaa !109
  br label %75

; <label>:75:                                     ; preds = %73, %63
  %76 = phi i32 [ %61, %63 ], [ %74, %73 ]
  %77 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !tbaa !113
  %78 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %77, i64 0, i32 1
  %79 = bitcast %union.anon.7* %78 to i32*
  %80 = load i32, i32* %79, align 8, !tbaa !11
  %81 = load i32, i32* %12, align 4, !tbaa !112
  call void @luaK_setlist(%struct.FuncState* %5, i32 %80, i32 %81, i32 %76) #9
  br label %82

; <label>:82:                                     ; preds = %60, %65, %75
  %83 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0
  %84 = load %struct.Proto*, %struct.Proto** %83, align 8, !tbaa !19
  %85 = getelementptr inbounds %struct.Proto, %struct.Proto* %84, i64 0, i32 16
  %86 = load i32*, i32** %85, align 8, !tbaa !65
  %87 = sext i32 %8 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4, !tbaa !85
  %90 = and i32 %89, -16711681
  %91 = load i32, i32* %12, align 4, !tbaa !112
  %92 = call i32 @luaO_int2fb(i32 %91) #9
  %93 = shl i32 %92, 16
  %94 = and i32 %93, 16711680
  %95 = or i32 %94, %90
  %96 = load %struct.Proto*, %struct.Proto** %83, align 8, !tbaa !19
  %97 = getelementptr inbounds %struct.Proto, %struct.Proto* %96, i64 0, i32 16
  %98 = load i32*, i32** %97, align 8, !tbaa !65
  %99 = getelementptr inbounds i32, i32* %98, i64 %87
  store i32 %95, i32* %99, align 4, !tbaa !85
  %100 = and i32 %95, 16777215
  %101 = load i32, i32* %11, align 8, !tbaa !111
  %102 = call i32 @luaO_int2fb(i32 %101) #9
  %103 = shl i32 %102, 24
  %104 = or i32 %103, %100
  %105 = load %struct.Proto*, %struct.Proto** %83, align 8, !tbaa !19
  %106 = getelementptr inbounds %struct.Proto, %struct.Proto* %105, i64 0, i32 16
  %107 = load i32*, i32** %106, align 8, !tbaa !65
  %108 = getelementptr inbounds i32, i32* %107, i64 %87
  store i32 %104, i32* %108, align 4, !tbaa !85
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #8
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @body(%struct.LexState*, %struct.expdesc*, i32, i32) unnamed_addr #0 {
  %5 = alloca %struct.FuncState, align 8
  %6 = alloca %struct.BlockCnt, align 8
  %7 = bitcast %struct.FuncState* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %7) #8
  %8 = bitcast %struct.BlockCnt* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #8
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %10 = load %struct.lua_State*, %struct.lua_State** %9, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %12 = load %struct.FuncState*, %struct.FuncState** %11, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i64 0, i32 0
  %14 = load %struct.Proto*, %struct.Proto** %13, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i64 0, i32 8
  %16 = load i32, i32* %15, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i64 0, i32 10
  %18 = load i32, i32* %17, align 8, !tbaa !115
  %19 = icmp slt i32 %16, %18
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i64 0, i32 17
  br i1 %19, label %35, label %21

; <label>:21:                                     ; preds = %4
  %22 = bitcast %struct.Proto*** %20 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !69
  %24 = tail call i8* @luaM_growaux_(%struct.lua_State* %10, i8* %23, i32 %16, i32* nonnull %17, i32 8, i32 131071, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #9
  store i8* %24, i8** %22, align 8, !tbaa !69
  %25 = load i32, i32* %17, align 8, !tbaa !115
  %26 = sext i32 %18 to i64
  %27 = sext i32 %25 to i64
  br label %28

; <label>:28:                                     ; preds = %31, %21
  %29 = phi i64 [ %33, %31 ], [ %26, %21 ]
  %30 = icmp slt i64 %29, %27
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %28
  %32 = load %struct.Proto**, %struct.Proto*** %20, align 8, !tbaa !69
  %33 = add nsw i64 %29, 1
  %34 = getelementptr inbounds %struct.Proto*, %struct.Proto** %32, i64 %29
  store %struct.Proto* null, %struct.Proto** %34, align 8, !tbaa !87
  br label %28

; <label>:35:                                     ; preds = %28, %4
  %36 = tail call %struct.Proto* @luaF_newproto(%struct.lua_State* %10) #9
  %37 = load %struct.Proto**, %struct.Proto*** %20, align 8, !tbaa !69
  %38 = load i32, i32* %15, align 8, !tbaa !48
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %15, align 8, !tbaa !48
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds %struct.Proto*, %struct.Proto** %37, i64 %40
  store %struct.Proto* %36, %struct.Proto** %41, align 8, !tbaa !87
  %42 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i64 0, i32 2
  %43 = load i8, i8* %42, align 1, !tbaa !23
  %44 = and i8 %43, 32
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %54, label %46

; <label>:46:                                     ; preds = %35
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %36, i64 0, i32 2
  %48 = load i8, i8* %47, align 1, !tbaa !23
  %49 = and i8 %48, 24
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

; <label>:51:                                     ; preds = %46
  %52 = bitcast %struct.Proto* %14 to %struct.GCObject*
  %53 = bitcast %struct.Proto* %36 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* %10, %struct.GCObject* %52, %struct.GCObject* %53) #9
  br label %54

; <label>:54:                                     ; preds = %35, %46, %51
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0
  store %struct.Proto* %36, %struct.Proto** %55, align 8, !tbaa !19
  %56 = getelementptr inbounds %struct.Proto, %struct.Proto* %36, i64 0, i32 13
  store i32 %3, i32* %56, align 4, !tbaa !43
  call fastcc void @open_func(%struct.LexState* %0, %struct.FuncState* nonnull %5, %struct.BlockCnt* nonnull %6) #10
  call fastcc void @checknext(%struct.LexState* %0, i32 40) #10
  %57 = icmp eq i32 %2, 0
  br i1 %57, label %60, label %58

; <label>:58:                                     ; preds = %54
  %59 = call %struct.TString* @luaX_newstring(%struct.LexState* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 4) #9
  call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %59) #10
  call fastcc void @adjustlocalvars(%struct.LexState* %0, i32 1) #10
  br label %60

; <label>:60:                                     ; preds = %54, %58
  %61 = load %struct.FuncState*, %struct.FuncState** %11, align 8, !tbaa !39
  %62 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %61, i64 0, i32 0
  %63 = load %struct.Proto*, %struct.Proto** %62, align 8, !tbaa !19
  %64 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %65 = load i32, i32* %64, align 8, !tbaa !63
  %66 = icmp eq i32 %65, 41
  br i1 %66, label %80, label %67

; <label>:67:                                     ; preds = %60
  br label %70

; <label>:68:                                     ; preds = %75
  %69 = load i32, i32* %64, align 8, !tbaa !63
  br label %70

; <label>:70:                                     ; preds = %67, %68
  %71 = phi i32 [ %69, %68 ], [ %65, %67 ]
  %72 = phi i32 [ %77, %68 ], [ 0, %67 ]
  switch i32 %71, label %73 [
    i32 292, label %75
    i32 281, label %74
  ]

; <label>:73:                                     ; preds = %70
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0)) #12
  unreachable

; <label>:74:                                     ; preds = %70
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %80

; <label>:75:                                     ; preds = %70
  %76 = call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #9
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %76) #9
  %77 = add nuw nsw i32 %72, 1
  %78 = call fastcc i32 @testnext(%struct.LexState* nonnull %0, i32 44) #9
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %68

; <label>:80:                                     ; preds = %75, %74, %60
  %81 = phi i32 [ %72, %74 ], [ 0, %60 ], [ %77, %75 ]
  %82 = phi i1 [ false, %74 ], [ true, %60 ], [ true, %75 ]
  call fastcc void @adjustlocalvars(%struct.LexState* nonnull %0, i32 %81) #9
  %83 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %61, i64 0, i32 13
  %84 = load i8, i8* %83, align 2, !tbaa !64
  %85 = getelementptr inbounds %struct.Proto, %struct.Proto* %63, i64 0, i32 3
  store i8 %84, i8* %85, align 2, !tbaa !116
  br i1 %82, label %89, label %86

; <label>:86:                                     ; preds = %80
  %87 = zext i8 %84 to i32
  call fastcc void @setvararg(%struct.FuncState* nonnull %61, i32 %87) #9
  %88 = load i8, i8* %83, align 2, !tbaa !64
  br label %89

; <label>:89:                                     ; preds = %80, %86
  %90 = phi i8 [ %84, %80 ], [ %88, %86 ]
  %91 = zext i8 %90 to i32
  call void @luaK_reserveregs(%struct.FuncState* nonnull %61, i32 %91) #9
  call fastcc void @checknext(%struct.LexState* nonnull %0, i32 41) #10
  call fastcc void @statlist(%struct.LexState* nonnull %0) #10
  %92 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %93 = load i32, i32* %92, align 4, !tbaa !84
  %94 = load %struct.Proto*, %struct.Proto** %55, align 8, !tbaa !19
  %95 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i64 0, i32 14
  store i32 %93, i32* %95, align 8, !tbaa !117
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 265, i32 %3) #10
  %96 = load %struct.FuncState*, %struct.FuncState** %11, align 8, !tbaa !39
  %97 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %96, i64 0, i32 1
  %98 = load %struct.FuncState*, %struct.FuncState** %97, align 8, !tbaa !40
  %99 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %98, i64 0, i32 8
  %100 = load i32, i32* %99, align 8, !tbaa !48
  %101 = add nsw i32 %100, -1
  %102 = call i32 @luaK_codeABx(%struct.FuncState* %98, i32 80, i32 0, i32 %101) #9
  %103 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %103, align 8, !tbaa !34
  %104 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %104, align 4, !tbaa !36
  %105 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 15, i32* %105, align 8, !tbaa !37
  %106 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %107 = bitcast %union.anon.7* %106 to i32*
  store i32 %102, i32* %107, align 8, !tbaa !11
  call void @luaK_exp2nextreg(%struct.FuncState* %98, %struct.expdesc* %1) #9
  call fastcc void @close_func(%struct.LexState* nonnull %0) #10
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #8
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %7) #8
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @suffixedexp(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %8 = load i32, i32* %7, align 4, !tbaa !84
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !63
  switch i32 %10, label %14 [
    i32 40, label %11
    i32 292, label %13
  ]

; <label>:11:                                     ; preds = %2
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  tail call fastcc void @expr(%struct.LexState* nonnull %0, %struct.expdesc* %1) #9
  tail call fastcc void @check_match(%struct.LexState* nonnull %0, i32 41, i32 40, i32 %8) #9
  %12 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !39
  tail call void @luaK_dischargevars(%struct.FuncState* %12, %struct.expdesc* %1) #9
  br label %15

; <label>:13:                                     ; preds = %2
  tail call fastcc void @singlevar(%struct.LexState* nonnull %0, %struct.expdesc* %1) #9
  br label %15

; <label>:14:                                     ; preds = %2
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0)) #12
  unreachable

; <label>:15:                                     ; preds = %11, %13
  %16 = bitcast %struct.expdesc* %3 to i8*
  %17 = bitcast %struct.expdesc* %4 to i8*
  br label %18

; <label>:18:                                     ; preds = %24, %15
  %19 = load i32, i32* %9, align 8, !tbaa !63
  switch i32 %19, label %25 [
    i32 46, label %20
    i32 91, label %21
    i32 58, label %22
    i32 40, label %23
    i32 293, label %23
    i32 123, label %23
  ]

; <label>:20:                                     ; preds = %18
  call fastcc void @fieldsel(%struct.LexState* nonnull %0, %struct.expdesc* %1) #10
  br label %24

; <label>:21:                                     ; preds = %18
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %16) #8
  call void @luaK_exp2anyregup(%struct.FuncState* %6, %struct.expdesc* %1) #9
  call fastcc void @yindex(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3) #10
  call void @luaK_indexed(%struct.FuncState* %6, %struct.expdesc* %1, %struct.expdesc* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %16) #8
  br label %24

; <label>:22:                                     ; preds = %18
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %17) #8
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  call fastcc void @codename(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4) #10
  call void @luaK_self(%struct.FuncState* %6, %struct.expdesc* %1, %struct.expdesc* nonnull %4) #9
  call fastcc void @funcargs(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 %8) #10
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #8
  br label %24

; <label>:23:                                     ; preds = %18, %18, %18
  call void @luaK_exp2nextreg(%struct.FuncState* %6, %struct.expdesc* %1) #9
  call fastcc void @funcargs(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 %8) #10
  br label %24

; <label>:24:                                     ; preds = %23, %22, %21, %20
  br label %18

; <label>:25:                                     ; preds = %18
  ret void
}

; Function Attrs: minsize optsize
declare hidden i32 @luaK_stringK(%struct.FuncState*, %struct.TString*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaK_exp2nextreg(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden i32 @luaO_int2fb(i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaK_setlist(%struct.FuncState*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden i32 @luaX_lookahead(%struct.LexState*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @listfield(%struct.LexState*, %struct.ConsControl*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 0
  tail call fastcc void @expr(%struct.LexState* %0, %struct.expdesc* %3) #10
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 3
  %7 = load i32, i32* %6, align 4, !tbaa !112
  tail call fastcc void @checklimit(%struct.FuncState* %5, i32 %7, i32 2147483647, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0)) #10
  %8 = load i32, i32* %6, align 4, !tbaa !112
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %6, align 4, !tbaa !112
  %10 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 4
  %11 = load i32, i32* %10, align 8, !tbaa !109
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 8, !tbaa !109
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @recfield(%struct.LexState*, %struct.ConsControl* nocapture) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca %struct.expdesc, align 8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %7 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i64 0, i32 15
  %9 = load i8, i8* %8, align 4, !tbaa !86
  %10 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #8
  %11 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #8
  %12 = bitcast %struct.expdesc* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #8
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %14 = load i32, i32* %13, align 8, !tbaa !63
  %15 = icmp eq i32 %14, 292
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 2
  %18 = load i32, i32* %17, align 8, !tbaa !111
  tail call fastcc void @checklimit(%struct.FuncState* %7, i32 %18, i32 2147483647, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0)) #10
  call fastcc void @codename(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4) #10
  br label %21

; <label>:19:                                     ; preds = %2
  call fastcc void @yindex(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4) #10
  %20 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 2
  br label %21

; <label>:21:                                     ; preds = %19, %16
  %22 = phi i32* [ %20, %19 ], [ %17, %16 ]
  %23 = load i32, i32* %22, align 8, !tbaa !111
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8, !tbaa !111
  call fastcc void @checknext(%struct.LexState* nonnull %0, i32 61) #10
  %25 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 1
  %26 = bitcast %struct.expdesc** %25 to i8**
  %27 = load i8*, i8** %26, align 8, !tbaa !113
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %10, i8* %27, i64 24, i32 8, i1 false), !tbaa.struct !118
  call void @luaK_indexed(%struct.FuncState* %7, %struct.expdesc* nonnull %3, %struct.expdesc* nonnull %4) #9
  call fastcc void @expr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %5) #10
  call void @luaK_storevar(%struct.FuncState* %7, %struct.expdesc* nonnull %3, %struct.expdesc* nonnull %5) #9
  store i8 %9, i8* %8, align 4, !tbaa !86
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #8
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @codename(%struct.LexState*, %struct.expdesc* nocapture) unnamed_addr #0 {
  %3 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* %0) #10
  tail call fastcc void @codestring(%struct.LexState* %0, %struct.expdesc* %1, %struct.TString* %3) #10
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @yindex(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  tail call void @luaX_next(%struct.LexState* %0) #9
  tail call fastcc void @expr(%struct.LexState* %0, %struct.expdesc* %1) #10
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !39
  tail call void @luaK_exp2val(%struct.FuncState* %4, %struct.expdesc* %1) #9
  tail call fastcc void @checknext(%struct.LexState* %0, i32 93) #10
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: minsize optsize
declare hidden void @luaK_indexed(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaK_storevar(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaK_exp2val(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaK_setreturns(%struct.FuncState*, %struct.expdesc*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @new_localvar(%struct.LexState* nocapture readonly, %struct.TString*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %6 = load %struct.Dyndata*, %struct.Dyndata** %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 0
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 11
  %10 = load i32, i32* %9, align 4, !tbaa !124
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %12 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 21
  %14 = bitcast %struct.LocVar** %13 to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !70
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 12
  %17 = load i16, i16* %16, align 8, !tbaa !71
  %18 = sext i16 %17 to i32
  %19 = tail call i8* @luaM_growaux_(%struct.lua_State* %12, i8* %15, i32 %18, i32* nonnull %9, i32 16, i32 32767, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #9
  store i8* %19, i8** %14, align 8, !tbaa !70
  %20 = load i32, i32* %9, align 4, !tbaa !124
  %21 = bitcast i8* %19 to %struct.LocVar*
  %22 = sext i32 %10 to i64
  %23 = sext i32 %20 to i64
  br label %24

; <label>:24:                                     ; preds = %27, %2
  %25 = phi i64 [ %28, %27 ], [ %22, %2 ]
  %26 = icmp slt i64 %25, %23
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %24
  %28 = add nsw i64 %25, 1
  %29 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %21, i64 %25, i32 0
  store %struct.TString* null, %struct.TString** %29, align 8, !tbaa !125
  br label %24

; <label>:30:                                     ; preds = %24
  %31 = load i16, i16* %16, align 8, !tbaa !71
  %32 = sext i16 %31 to i64
  %33 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %21, i64 %32, i32 0
  store %struct.TString* %1, %struct.TString** %33, align 8, !tbaa !125
  %34 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 2
  %35 = load i8, i8* %34, align 1, !tbaa !23
  %36 = and i8 %35, 32
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %48, label %38

; <label>:38:                                     ; preds = %30
  %39 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 2
  %40 = load i8, i8* %39, align 1, !tbaa !24
  %41 = and i8 %40, 24
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %38
  %44 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !57
  %45 = bitcast %struct.Proto* %8 to %struct.GCObject*
  %46 = bitcast %struct.TString* %1 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* %44, %struct.GCObject* %45, %struct.GCObject* %46) #9
  %47 = load i16, i16* %16, align 8, !tbaa !71
  br label %48

; <label>:48:                                     ; preds = %30, %38, %43
  %49 = phi i16 [ %31, %38 ], [ %31, %30 ], [ %47, %43 ]
  %50 = add i16 %49, 1
  store i16 %50, i16* %16, align 8, !tbaa !71
  %51 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %6, i64 0, i32 0, i32 1
  %52 = load i32, i32* %51, align 8, !tbaa !33
  %53 = add nsw i32 %52, 1
  %54 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 10
  %55 = load i32, i32* %54, align 8, !tbaa !49
  %56 = sub i32 %53, %55
  tail call fastcc void @checklimit(%struct.FuncState* nonnull %4, i32 %56, i32 200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #10
  %57 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !57
  %58 = bitcast %struct.Dyndata* %6 to i8**
  %59 = load i8*, i8** %58, align 8, !tbaa !126
  %60 = load i32, i32* %51, align 8, !tbaa !33
  %61 = add nsw i32 %60, 1
  %62 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %6, i64 0, i32 0, i32 2
  %63 = tail call i8* @luaM_growaux_(%struct.lua_State* %57, i8* %59, i32 %61, i32* nonnull %62, i32 2, i32 2147483647, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #9
  %64 = bitcast i8* %63 to %struct.Vardesc*
  store i8* %63, i8** %58, align 8, !tbaa !126
  %65 = load i32, i32* %51, align 8, !tbaa !33
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %51, align 8, !tbaa !33
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %64, i64 %67, i32 0
  store i16 %49, i16* %68, align 2, !tbaa !127
  ret void
}

; Function Attrs: minsize optsize
declare hidden %struct.TString* @luaX_newstring(%struct.LexState*, i8*, i64) local_unnamed_addr #2

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc void @adjustlocalvars(%struct.LexState* nocapture readonly, i32) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 13
  %6 = load i8, i8* %5, align 2, !tbaa !64
  %7 = trunc i32 %1 to i8
  %8 = add i8 %6, %7
  store i8 %8, i8* %5, align 2, !tbaa !64
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 4
  %10 = zext i8 %8 to i32
  br label %11

; <label>:11:                                     ; preds = %14, %2
  %12 = phi i32 [ %1, %2 ], [ %19, %14 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %9, align 8, !tbaa !42
  %16 = sub nsw i32 %10, %12
  %17 = tail call fastcc %struct.LocVar* @getlocvar(%struct.FuncState* %4, i32 %16) #10
  %18 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %17, i64 0, i32 1
  store i32 %15, i32* %18, align 8, !tbaa !89
  %19 = add nsw i32 %12, -1
  br label %11

; <label>:20:                                     ; preds = %11
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
define internal fastcc %struct.LocVar* @getlocvar(%struct.FuncState* nocapture readonly, i32) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %4 = load %struct.LexState*, %struct.LexState** %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i64 0, i32 10
  %6 = load %struct.Dyndata*, %struct.Dyndata** %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %6, i64 0, i32 0, i32 0
  %8 = load %struct.Vardesc*, %struct.Vardesc** %7, align 8, !tbaa !126
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 10
  %10 = load i32, i32* %9, align 8, !tbaa !49
  %11 = add nsw i32 %10, %1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %8, i64 %12, i32 0
  %14 = load i16, i16* %13, align 2, !tbaa !127
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %16 = load %struct.Proto*, %struct.Proto** %15, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 21
  %18 = load %struct.LocVar*, %struct.LocVar** %17, align 8, !tbaa !70
  %19 = sext i16 %14 to i64
  %20 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %18, i64 %19
  ret %struct.LocVar* %20
}

; Function Attrs: minsize optsize
declare hidden void @luaK_reserveregs(%struct.FuncState*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden i32 @luaK_codeABx(%struct.FuncState*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @fieldsel(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !39
  %6 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8
  tail call void @luaK_exp2anyregup(%struct.FuncState* %5, %struct.expdesc* %1) #9
  tail call void @luaX_next(%struct.LexState* %0) #9
  call fastcc void @codename(%struct.LexState* %0, %struct.expdesc* nonnull %3) #10
  call void @luaK_indexed(%struct.FuncState* %5, %struct.expdesc* %1, %struct.expdesc* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaK_exp2anyregup(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaK_self(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @funcargs(%struct.LexState*, %struct.expdesc* nocapture, i32) unnamed_addr #0 {
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !39
  %7 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #8
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !63
  switch i32 %9, label %29 [
    i32 40, label %10
    i32 123, label %18
    i32 293, label %19
  ]

; <label>:10:                                     ; preds = %3
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %11 = load i32, i32* %8, align 8, !tbaa !63
  %12 = icmp eq i32 %11, 41
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  store i32 0, i32* %14, align 8, !tbaa !37
  br label %17

; <label>:15:                                     ; preds = %10
  %16 = call fastcc i32 @explist(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4) #10
  call void @luaK_setreturns(%struct.FuncState* %6, %struct.expdesc* nonnull %4, i32 -1) #9
  br label %17

; <label>:17:                                     ; preds = %15, %13
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 41, i32 40, i32 %2) #10
  br label %30

; <label>:18:                                     ; preds = %3
  call fastcc void @constructor(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4) #10
  br label %30

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %21 = bitcast %union.SemInfo* %20 to %struct.TString**
  %22 = load %struct.TString*, %struct.TString** %21, align 8, !tbaa !11
  %23 = tail call i32 @luaK_stringK(%struct.FuncState* %6, %struct.TString* %22) #9
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2
  store i32 -1, i32* %24, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3
  store i32 -1, i32* %25, align 4, !tbaa !36
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  store i32 4, i32* %26, align 8, !tbaa !37
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1
  %28 = bitcast %union.anon.7* %27 to i32*
  store i32 %23, i32* %28, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %30

; <label>:29:                                     ; preds = %3
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0)) #12
  unreachable

; <label>:30:                                     ; preds = %19, %18, %17
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %32 = bitcast %union.anon.7* %31 to i32*
  %33 = load i32, i32* %32, align 8, !tbaa !11
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  %35 = load i32, i32* %34, align 8, !tbaa !37
  switch i32 %35, label %36 [
    i32 16, label %42
    i32 17, label %42
    i32 0, label %37
  ]

; <label>:36:                                     ; preds = %30
  call void @luaK_exp2nextreg(%struct.FuncState* %6, %struct.expdesc* nonnull %4) #9
  br label %37

; <label>:37:                                     ; preds = %30, %36
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 15
  %39 = load i8, i8* %38, align 4, !tbaa !86
  %40 = zext i8 %39 to i32
  %41 = sub i32 %40, %33
  br label %42

; <label>:42:                                     ; preds = %30, %30, %37
  %43 = phi i32 [ %41, %37 ], [ 0, %30 ], [ 0, %30 ]
  %44 = call i32 @luaK_codeABCk(%struct.FuncState* %6, i32 69, i32 %33, i32 %43, i32 2, i32 0) #9
  %45 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %45, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %46, align 4, !tbaa !36
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 16, i32* %47, align 8, !tbaa !37
  store i32 %44, i32* %32, align 8, !tbaa !11
  call void @luaK_fixline(%struct.FuncState* %6, i32 %2) #9
  %48 = trunc i32 %33 to i8
  %49 = add i8 %48, 1
  %50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 15
  store i8 %49, i8* %50, align 4, !tbaa !86
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #8
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaK_dischargevars(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @singlevar(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* %0) #10
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !39
  tail call fastcc void @singlevaraux(%struct.FuncState* %6, %struct.TString* %4, %struct.expdesc* %1, i32 1) #10
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !37
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

; <label>:10:                                     ; preds = %2
  %11 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 12
  %13 = load %struct.TString*, %struct.TString** %12, align 8, !tbaa !38
  tail call fastcc void @singlevaraux(%struct.FuncState* %6, %struct.TString* %13, %struct.expdesc* nonnull %1, i32 1) #10
  %14 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !39
  %15 = tail call i32 @luaK_stringK(%struct.FuncState* %14, %struct.TString* %4) #9
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  store i32 -1, i32* %16, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  store i32 -1, i32* %17, align 4, !tbaa !36
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  store i32 4, i32* %18, align 8, !tbaa !37
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %20 = bitcast %union.anon.7* %19 to i32*
  store i32 %15, i32* %20, align 8, !tbaa !11
  call void @luaK_indexed(%struct.FuncState* %6, %struct.expdesc* nonnull %1, %struct.expdesc* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #8
  br label %21

; <label>:21:                                     ; preds = %10, %2
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @singlevaraux(%struct.FuncState*, %struct.TString*, %struct.expdesc* nocapture, i32) unnamed_addr #0 {
  %5 = icmp eq %struct.FuncState* %0, null
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  store i32 -1, i32* %7, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  store i32 -1, i32* %8, align 4, !tbaa !36
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  store i32 0, i32* %9, align 8, !tbaa !37
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %11 = bitcast %union.anon.7* %10 to i32*
  store i32 0, i32* %11, align 8, !tbaa !11
  ret void

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %14 = load i8, i8* %13, align 2, !tbaa !64
  %15 = zext i8 %14 to i32
  br label %16

; <label>:16:                                     ; preds = %20, %12
  %17 = phi i32 [ %15, %12 ], [ %18, %20 ]
  %18 = add nsw i32 %17, -1
  %19 = icmp sgt i32 %17, 0
  br i1 %19, label %20, label %45

; <label>:20:                                     ; preds = %16
  %21 = tail call fastcc %struct.LocVar* @getlocvar(%struct.FuncState* nonnull %0, i32 %18) #9
  %22 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %21, i64 0, i32 0
  %23 = load %struct.TString*, %struct.TString** %22, align 8, !tbaa !125
  %24 = icmp eq %struct.TString* %23, %1
  br i1 %24, label %25, label %16

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  store i32 -1, i32* %26, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  store i32 -1, i32* %27, align 4, !tbaa !36
  %28 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  store i32 8, i32* %28, align 8, !tbaa !37
  %29 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %30 = bitcast %union.anon.7* %29 to i32*
  store i32 %18, i32* %30, align 8, !tbaa !11
  %31 = icmp eq i32 %3, 0
  br i1 %31, label %32, label %82

; <label>:32:                                     ; preds = %25
  %33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3
  br label %34

; <label>:34:                                     ; preds = %34, %32
  %35 = phi %struct.BlockCnt** [ %33, %32 ], [ %41, %34 ]
  %36 = load %struct.BlockCnt*, %struct.BlockCnt** %35, align 8, !tbaa !87
  %37 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %36, i64 0, i32 3
  %38 = load i8, i8* %37, align 8, !tbaa !78
  %39 = zext i8 %38 to i32
  %40 = icmp sgt i32 %17, %39
  %41 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %36, i64 0, i32 0
  br i1 %40, label %42, label %34

; <label>:42:                                     ; preds = %34
  %43 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %36, i64 0, i32 4
  store i8 1, i8* %43, align 1, !tbaa !81
  %44 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 17
  store i8 1, i8* %44, align 2, !tbaa !88
  br label %82

; <label>:45:                                     ; preds = %16
  %46 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %47 = load %struct.Proto*, %struct.Proto** %46, align 8, !tbaa !19
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i64 0, i32 18
  %49 = load %struct.Upvaldesc*, %struct.Upvaldesc** %48, align 8, !tbaa !58
  %50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14
  %51 = load i8, i8* %50, align 1, !tbaa !56
  %52 = zext i8 %51 to i64
  br label %53

; <label>:53:                                     ; preds = %60, %45
  %54 = phi i64 [ %61, %60 ], [ 0, %45 ]
  %55 = icmp ult i64 %54, %52
  br i1 %55, label %56, label %67

; <label>:56:                                     ; preds = %53
  %57 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %49, i64 %54, i32 0
  %58 = load %struct.TString*, %struct.TString** %57, align 8, !tbaa !59
  %59 = icmp eq %struct.TString* %58, %1
  br i1 %59, label %62, label %60

; <label>:60:                                     ; preds = %56
  %61 = add nuw nsw i64 %54, 1
  br label %53

; <label>:62:                                     ; preds = %56
  %63 = trunc i64 %54 to i32
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %67, label %65

; <label>:65:                                     ; preds = %62
  %66 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  br label %75

; <label>:67:                                     ; preds = %53, %62
  %68 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 1
  %69 = load %struct.FuncState*, %struct.FuncState** %68, align 8, !tbaa !40
  tail call fastcc void @singlevaraux(%struct.FuncState* %69, %struct.TString* %1, %struct.expdesc* %2, i32 0) #10
  %70 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %71 = load i32, i32* %70, align 8, !tbaa !37
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %82, label %73

; <label>:73:                                     ; preds = %67
  %74 = tail call fastcc i32 @newupvalue(%struct.FuncState* nonnull %0, %struct.TString* %1, %struct.expdesc* nonnull %2) #10
  br label %75

; <label>:75:                                     ; preds = %65, %73
  %76 = phi i32* [ %66, %65 ], [ %70, %73 ]
  %77 = phi i32 [ %63, %65 ], [ %74, %73 ]
  %78 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  store i32 -1, i32* %78, align 8, !tbaa !34
  %79 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  store i32 -1, i32* %79, align 4, !tbaa !36
  store i32 9, i32* %76, align 8, !tbaa !37
  %80 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %81 = bitcast %union.anon.7* %80 to i32*
  store i32 %77, i32* %81, align 8, !tbaa !11
  br label %82

; <label>:82:                                     ; preds = %42, %25, %75, %67
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @explist(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  tail call fastcc void @expr(%struct.LexState* %0, %struct.expdesc* %1) #10
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %4

; <label>:4:                                      ; preds = %8, %2
  %5 = phi i32 [ 1, %2 ], [ %10, %8 ]
  %6 = tail call fastcc i32 @testnext(%struct.LexState* %0, i32 44) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

; <label>:8:                                      ; preds = %4
  %9 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !39
  tail call void @luaK_exp2nextreg(%struct.FuncState* %9, %struct.expdesc* %1) #9
  tail call fastcc void @expr(%struct.LexState* %0, %struct.expdesc* %1) #10
  %10 = add nuw nsw i32 %5, 1
  br label %4

; <label>:11:                                     ; preds = %4
  ret i32 %5
}

; Function Attrs: minsize optsize
declare hidden void @luaK_fixline(%struct.FuncState*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
define internal fastcc %struct.Labeldesc* @findlabel(%struct.LexState* nocapture readonly, %struct.TString* readnone) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %4 = load %struct.Dyndata*, %struct.Dyndata** %3, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 11
  %8 = load i32, i32* %7, align 4, !tbaa !50
  %9 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %4, i64 0, i32 2, i32 0
  %10 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %4, i64 0, i32 2, i32 1
  %11 = load i32, i32* %10, align 8, !tbaa !28
  %12 = sext i32 %8 to i64
  %13 = sext i32 %11 to i64
  br label %14

; <label>:14:                                     ; preds = %17, %2
  %15 = phi i64 [ %23, %17 ], [ %12, %2 ]
  %16 = icmp slt i64 %15, %13
  br i1 %16, label %17, label %24

; <label>:17:                                     ; preds = %14
  %18 = load %struct.Labeldesc*, %struct.Labeldesc** %9, align 8, !tbaa !129
  %19 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %18, i64 %15
  %20 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %19, i64 0, i32 0
  %21 = load %struct.TString*, %struct.TString** %20, align 8, !tbaa !130
  %22 = icmp eq %struct.TString* %21, %1
  %23 = add nsw i64 %15, 1
  br i1 %22, label %24, label %14

; <label>:24:                                     ; preds = %17, %14
  %25 = phi %struct.Labeldesc* [ %19, %17 ], [ null, %14 ]
  ret %struct.Labeldesc* %25
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @newlabelentry(%struct.LexState* nocapture readonly, %struct.Labellist*, %struct.TString*, i32, i32) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %1, i64 0, i32 1
  %7 = load i32, i32* %6, align 8, !tbaa !102
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %9 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !tbaa !57
  %10 = bitcast %struct.Labellist* %1 to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !103
  %12 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %1, i64 0, i32 2
  %13 = tail call i8* @luaM_growaux_(%struct.lua_State* %9, i8* %11, i32 %7, i32* nonnull %12, i32 24, i32 32767, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #9
  %14 = bitcast i8* %13 to %struct.Labeldesc*
  store i8* %13, i8** %10, align 8, !tbaa !103
  %15 = sext i32 %7 to i64
  %16 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %14, i64 %15, i32 0
  store %struct.TString* %2, %struct.TString** %16, align 8, !tbaa !130
  %17 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %14, i64 %15, i32 2
  store i32 %3, i32* %17, align 4, !tbaa !92
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %19 = load %struct.FuncState*, %struct.FuncState** %18, align 8, !tbaa !39
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %19, i64 0, i32 13
  %21 = load i8, i8* %20, align 2, !tbaa !64
  %22 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %14, i64 %15, i32 3
  store i8 %21, i8* %22, align 8, !tbaa !94
  %23 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %14, i64 %15, i32 4
  store i8 0, i8* %23, align 1, !tbaa !104
  %24 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %14, i64 %15, i32 1
  store i32 %4, i32* %24, align 8, !tbaa !95
  %25 = add nsw i32 %7, 1
  store i32 %25, i32* %6, align 8, !tbaa !102
  ret i32 %7
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @createlabel(%struct.LexState*, %struct.TString*, i32, i32) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %8 = load %struct.Dyndata*, %struct.Dyndata** %7, align 8, !tbaa !27
  %9 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %8, i64 0, i32 2
  %10 = tail call i32 @luaK_getlabel(%struct.FuncState* %6) #9
  %11 = tail call fastcc i32 @newlabelentry(%struct.LexState* %0, %struct.Labellist* nonnull %9, %struct.TString* %1, i32 %2, i32 %10) #10
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %4
  %14 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %9, i64 0, i32 0
  %15 = load %struct.Labeldesc*, %struct.Labeldesc** %14, align 8, !tbaa !103
  %16 = sext i32 %11 to i64
  %17 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %15, i64 %16, i32 3
  br label %27

; <label>:18:                                     ; preds = %4
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 3
  %20 = load %struct.BlockCnt*, %struct.BlockCnt** %19, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 3
  %22 = load i8, i8* %21, align 8, !tbaa !78
  %23 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %9, i64 0, i32 0
  %24 = load %struct.Labeldesc*, %struct.Labeldesc** %23, align 8, !tbaa !103
  %25 = sext i32 %11 to i64
  %26 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %24, i64 %25, i32 3
  store i8 %22, i8* %26, align 8, !tbaa !94
  br label %27

; <label>:27:                                     ; preds = %13, %18
  %28 = phi i8* [ %17, %13 ], [ %26, %18 ]
  %29 = phi i64 [ %16, %13 ], [ %25, %18 ]
  %30 = phi %struct.Labeldesc* [ %15, %13 ], [ %24, %18 ]
  %31 = load %struct.Dyndata*, %struct.Dyndata** %7, align 8, !tbaa !27
  %32 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !39
  %33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %32, i64 0, i32 3
  %34 = load %struct.BlockCnt*, %struct.BlockCnt** %33, align 8, !tbaa !51
  %35 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %34, i64 0, i32 2
  %36 = load i32, i32* %35, align 4, !tbaa !80
  %37 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %31, i64 0, i32 1, i32 1
  %38 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %31, i64 0, i32 1, i32 0
  %39 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %30, i64 %29, i32 0
  %40 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %30, i64 %29, i32 1
  br label %41

; <label>:41:                                     ; preds = %89, %27
  %42 = phi i32 [ %90, %89 ], [ %36, %27 ]
  %43 = phi i32 [ %46, %89 ], [ 0, %27 ]
  %44 = sext i32 %42 to i64
  br label %45

; <label>:45:                                     ; preds = %41, %88
  %46 = phi i32 [ %59, %88 ], [ %43, %41 ]
  %47 = load i32, i32* %37, align 8, !tbaa !102
  %48 = icmp slt i32 %42, %47
  br i1 %48, label %49, label %91

; <label>:49:                                     ; preds = %45
  %50 = load %struct.Labeldesc*, %struct.Labeldesc** %38, align 8, !tbaa !103
  %51 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %50, i64 %44, i32 0
  %52 = load %struct.TString*, %struct.TString** %51, align 8, !tbaa !130
  %53 = load %struct.TString*, %struct.TString** %39, align 8, !tbaa !130
  %54 = icmp eq %struct.TString* %52, %53
  br i1 %54, label %55, label %89

; <label>:55:                                     ; preds = %49
  %56 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %50, i64 %44, i32 4
  %57 = load i8, i8* %56, align 1, !tbaa !104
  %58 = zext i8 %57 to i32
  %59 = or i32 %46, %58
  %60 = load %struct.Dyndata*, %struct.Dyndata** %7, align 8, !tbaa !27
  %61 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %60, i64 0, i32 1, i32 0
  %62 = load %struct.Labeldesc*, %struct.Labeldesc** %61, align 8, !tbaa !103
  %63 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %62, i64 %44, i32 3
  %64 = load i8, i8* %63, align 8, !tbaa !94
  %65 = load i8, i8* %28, align 8, !tbaa !94
  %66 = icmp ult i8 %64, %65
  br i1 %66, label %67, label %69, !prof !100

; <label>:67:                                     ; preds = %55
  %68 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %62, i64 %44
  tail call fastcc void @jumpscopeerror(%struct.LexState* nonnull %0, %struct.Labeldesc* %68) #12
  unreachable

; <label>:69:                                     ; preds = %55
  %70 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !39
  %71 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %62, i64 %44, i32 1
  %72 = load i32, i32* %71, align 8, !tbaa !95
  %73 = load i32, i32* %40, align 8, !tbaa !95
  tail call void @luaK_patchlist(%struct.FuncState* %70, i32 %72, i32 %73) #9
  %74 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %60, i64 0, i32 1, i32 1
  br label %75

; <label>:75:                                     ; preds = %81, %69
  %76 = phi i64 [ %84, %81 ], [ %44, %69 ]
  %77 = load i32, i32* %74, align 8, !tbaa !102
  %78 = add nsw i32 %77, -1
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %81, label %88

; <label>:81:                                     ; preds = %75
  %82 = load %struct.Labeldesc*, %struct.Labeldesc** %61, align 8, !tbaa !103
  %83 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %82, i64 %76
  %84 = add nsw i64 %76, 1
  %85 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %82, i64 %84
  %86 = bitcast %struct.Labeldesc* %83 to i8*
  %87 = bitcast %struct.Labeldesc* %85 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 24, i32 8, i1 false) #8, !tbaa.struct !131
  br label %75

; <label>:88:                                     ; preds = %75
  store i32 %78, i32* %74, align 8, !tbaa !102
  br label %45

; <label>:89:                                     ; preds = %49
  %90 = add nsw i32 %42, 1
  br label %41

; <label>:91:                                     ; preds = %45
  %92 = icmp eq i32 %46, 0
  br i1 %92, label %98, label %93

; <label>:93:                                     ; preds = %91
  %94 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 13
  %95 = load i8, i8* %94, align 2, !tbaa !64
  %96 = zext i8 %95 to i32
  %97 = tail call i32 @luaK_codeABCk(%struct.FuncState* %6, i32 55, i32 %96, i32 0, i32 0, i32 0) #9
  br label %98

; <label>:98:                                     ; preds = %91, %93
  %99 = phi i32 [ 1, %93 ], [ 0, %91 ]
  ret i32 %99
}

; Function Attrs: minsize noreturn nounwind optsize uwtable
define internal fastcc void @undefgoto(%struct.LexState*, %struct.Labeldesc* nocapture readonly) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 0
  %4 = load %struct.TString*, %struct.TString** %3, align 8, !tbaa !130
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %6 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !tbaa !57
  %7 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #9
  %8 = icmp eq %struct.TString* %4, %7
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !tbaa !57
  br i1 %8, label %10, label %14

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 2
  %12 = load i32, i32* %11, align 4, !tbaa !92
  %13 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %12) #9
  br label %21

; <label>:14:                                     ; preds = %2
  %15 = bitcast %struct.Labeldesc* %1 to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !130
  %17 = getelementptr inbounds i8, i8* %16, i64 24
  %18 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 2
  %19 = load i32, i32* %18, align 4, !tbaa !92
  %20 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i8* nonnull %17, i32 %19) #9
  br label %21

; <label>:21:                                     ; preds = %14, %10
  %22 = phi i8* [ %13, %10 ], [ %20, %14 ]
  tail call void @luaK_semerror(%struct.LexState* nonnull %0, i8* %22) #12
  unreachable
}

; Function Attrs: minsize optsize
declare hidden i32 @luaK_getlabel(%struct.FuncState*) local_unnamed_addr #2

; Function Attrs: minsize noreturn nounwind optsize uwtable
define internal fastcc void @jumpscopeerror(%struct.LexState*, %struct.Labeldesc* nocapture readonly) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 3
  %6 = load i8, i8* %5, align 8, !tbaa !94
  %7 = zext i8 %6 to i32
  %8 = tail call fastcc %struct.LocVar* @getlocvar(%struct.FuncState* %4, i32 %7) #10
  %9 = bitcast %struct.LocVar* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !125
  %11 = getelementptr inbounds i8, i8* %10, i64 24
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %13 = load %struct.lua_State*, %struct.lua_State** %12, align 8, !tbaa !57
  %14 = bitcast %struct.Labeldesc* %1 to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !130
  %16 = getelementptr inbounds i8, i8* %15, i64 24
  %17 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 2
  %18 = load i32, i32* %17, align 4, !tbaa !92
  %19 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %13, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %16, i32 %18, i8* nonnull %11) #9
  tail call void @luaK_semerror(%struct.LexState* %0, i8* %19) #12
  unreachable
}

; Function Attrs: minsize noreturn optsize
declare hidden void @luaK_semerror(%struct.LexState*, i8*) local_unnamed_addr #5

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @cond(%struct.LexState*) unnamed_addr #0 {
  %2 = alloca %struct.expdesc, align 8
  %3 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8
  call fastcc void @expr(%struct.LexState* %0, %struct.expdesc* nonnull %2) #10
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !37
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i32 3, i32* %4, align 8, !tbaa !37
  br label %8

; <label>:8:                                      ; preds = %7, %1
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %10 = load %struct.FuncState*, %struct.FuncState** %9, align 8, !tbaa !39
  call void @luaK_goiftrue(%struct.FuncState* %10, %struct.expdesc* nonnull %2) #9
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %12 = load i32, i32* %11, align 4, !tbaa !36
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8
  ret i32 %12
}

; Function Attrs: minsize noreturn nounwind optsize uwtable
define internal fastcc void @error_expected(%struct.LexState*, i32) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !tbaa !57
  %5 = tail call i8* @luaX_token2str(%struct.LexState* %0, i32 %1) #9
  %6 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* %5) #9
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* %6) #12
  unreachable
}

; Function Attrs: minsize optsize
declare hidden i8* @luaX_token2str(%struct.LexState*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @exp1(%struct.LexState*) unnamed_addr #0 {
  %2 = alloca %struct.expdesc, align 8
  %3 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8
  call fastcc void @expr(%struct.LexState* %0, %struct.expdesc* nonnull %2) #10
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !39
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaK_int(%struct.FuncState*, i32, i64) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @forbody(%struct.LexState*, i32, i32, i32, i32) unnamed_addr #0 {
  %6 = alloca %struct.BlockCnt, align 8
  %7 = bitcast %struct.BlockCnt* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #8
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %9 = load %struct.FuncState*, %struct.FuncState** %8, align 8, !tbaa !39
  tail call fastcc void @checknext(%struct.LexState* %0, i32 259) #10
  %10 = sext i32 %4 to i64
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* @forbody.forprep, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !11
  %13 = tail call i32 @luaK_codeABx(%struct.FuncState* %9, i32 %12, i32 %1, i32 0) #9
  call fastcc void @enterblock(%struct.FuncState* %9, %struct.BlockCnt* nonnull %6, i8 zeroext 0) #10
  call fastcc void @adjustlocalvars(%struct.LexState* %0, i32 %3) #10
  call void @luaK_reserveregs(%struct.FuncState* %9, i32 %3) #9
  call fastcc void @block(%struct.LexState* %0) #10
  call fastcc void @leaveblock(%struct.FuncState* %9) #10
  %14 = call i32 @luaK_getlabel(%struct.FuncState* %9) #9
  call fastcc void @fixforjump(%struct.FuncState* %9, i32 %13, i32 %14, i32 0) #10
  %15 = icmp eq i32 %4, 0
  br i1 %15, label %19, label %16

; <label>:16:                                     ; preds = %5
  %17 = call i32 @luaK_codeABCk(%struct.FuncState* %9, i32 77, i32 %1, i32 0, i32 %3, i32 0) #9
  call void @luaK_fixline(%struct.FuncState* %9, i32 %2) #9
  %18 = add nsw i32 %1, 2
  br label %19

; <label>:19:                                     ; preds = %5, %16
  %20 = phi i32 [ %18, %16 ], [ %1, %5 ]
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* @forbody.forloop, i64 0, i64 %10
  %22 = load i32, i32* %21, align 4, !tbaa !11
  %23 = call i32 @luaK_codeABx(%struct.FuncState* %9, i32 %22, i32 %20, i32 0) #9
  %24 = add nsw i32 %13, 1
  call fastcc void @fixforjump(%struct.FuncState* %9, i32 %23, i32 %24, i32 1) #10
  call void @luaK_fixline(%struct.FuncState* %9, i32 %2) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #8
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @fixforjump(%struct.FuncState* nocapture readonly, i32, i32, i32) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %6 = load %struct.Proto*, %struct.Proto** %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i64 0, i32 16
  %8 = load i32*, i32** %7, align 8, !tbaa !65
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = xor i32 %1, -1
  %12 = add i32 %11, %2
  %13 = icmp eq i32 %3, 0
  %14 = sub nsw i32 0, %12
  %15 = select i1 %13, i32 %12, i32 %14
  %16 = icmp sgt i32 %15, 131071
  br i1 %16, label %17, label %20, !prof !100

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %19 = load %struct.LexState*, %struct.LexState** %18, align 8, !tbaa !41
  tail call void @luaX_syntaxerror(%struct.LexState* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0)) #12
  unreachable

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %10, align 4, !tbaa !85
  %22 = and i32 %21, 32767
  %23 = shl i32 %15, 15
  %24 = or i32 %22, %23
  store i32 %24, i32* %10, align 4, !tbaa !85
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @adjust_assign(%struct.LexState* nocapture readonly, i32, i32, %struct.expdesc*) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !39
  %7 = sub nsw i32 %1, %2
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !37
  switch i32 %9, label %10 [
    i32 16, label %17
    i32 17, label %17
    i32 0, label %11
  ]

; <label>:10:                                     ; preds = %4
  tail call void @luaK_exp2nextreg(%struct.FuncState* %6, %struct.expdesc* nonnull %3) #9
  br label %11

; <label>:11:                                     ; preds = %4, %10
  %12 = icmp sgt i32 %7, 0
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 15
  %15 = load i8, i8* %14, align 4, !tbaa !86
  %16 = zext i8 %15 to i32
  tail call void @luaK_nil(%struct.FuncState* %6, i32 %16, i32 %7) #9
  br label %22

; <label>:17:                                     ; preds = %4, %4
  %18 = add nsw i32 %7, 1
  %19 = icmp sgt i32 %18, 0
  %20 = select i1 %19, i32 %18, i32 0
  tail call void @luaK_setreturns(%struct.FuncState* %6, %struct.expdesc* nonnull %3, i32 %20) #9
  %21 = icmp sgt i32 %7, 0
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %13, %17
  tail call void @luaK_reserveregs(%struct.FuncState* %6, i32 %7) #9
  br label %28

; <label>:23:                                     ; preds = %11, %17
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 15
  %25 = load i8, i8* %24, align 4, !tbaa !86
  %26 = trunc i32 %7 to i8
  %27 = add i8 %25, %26
  store i8 %27, i8* %24, align 4, !tbaa !86
  br label %28

; <label>:28:                                     ; preds = %23, %22
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaK_checkstack(%struct.FuncState*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaK_nil(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #7

; Function Attrs: minsize optsize
declare hidden i32 @luaK_exp2anyreg(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaK_ret(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @restassign(%struct.LexState*, %struct.LHS_assign*, i32) unnamed_addr #0 {
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca %struct.LHS_assign, align 8
  %6 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8
  %7 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !98
  %10 = add i32 %9, -8
  %11 = icmp ult i32 %10, 6
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %3
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0)) #12
  unreachable

; <label>:13:                                     ; preds = %3
  %14 = tail call fastcc i32 @testnext(%struct.LexState* %0, i32 44) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %100, label %16

; <label>:16:                                     ; preds = %13
  %17 = bitcast %struct.LHS_assign* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #8
  %18 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 0
  store %struct.LHS_assign* %1, %struct.LHS_assign** %18, align 8, !tbaa !96
  %19 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1
  call fastcc void @suffixedexp(%struct.LexState* %0, %struct.expdesc* nonnull %19) #10
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i64 0, i32 0
  %21 = load i32, i32* %20, align 8, !tbaa !98
  %22 = add i32 %21, -10
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %92, label %24

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %26 = load %struct.FuncState*, %struct.FuncState** %25, align 8, !tbaa !39
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %26, i64 0, i32 15
  %28 = load i8, i8* %27, align 4, !tbaa !86
  %29 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1, i32 1
  %30 = bitcast %union.anon.7* %29 to i32*
  %31 = zext i8 %28 to i16
  br label %32

; <label>:32:                                     ; preds = %79, %24
  %33 = phi i32 [ 0, %24 ], [ %80, %79 ]
  %34 = phi %struct.LHS_assign* [ %1, %24 ], [ %82, %79 ]
  %35 = icmp eq %struct.LHS_assign* %34, null
  br i1 %35, label %83, label %36

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %34, i64 0, i32 1, i32 0
  %38 = load i32, i32* %37, align 8, !tbaa !98
  %39 = add i32 %38, -10
  %40 = icmp ult i32 %39, 4
  br i1 %40, label %41, label %79

; <label>:41:                                     ; preds = %36
  %42 = icmp eq i32 %38, 11
  %43 = load i32, i32* %20, align 8, !tbaa !37
  br i1 %42, label %44, label %55

; <label>:44:                                     ; preds = %41
  %45 = icmp eq i32 %43, 9
  br i1 %45, label %46, label %79

; <label>:46:                                     ; preds = %44
  %47 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %34, i64 0, i32 1, i32 1
  %48 = bitcast %union.anon.7* %47 to %struct.anon.8*
  %49 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %48, i64 0, i32 1
  %50 = load i8, i8* %49, align 2, !tbaa !11
  %51 = zext i8 %50 to i32
  %52 = load i32, i32* %30, align 8, !tbaa !11
  %53 = icmp eq i32 %52, %51
  br i1 %53, label %54, label %79

; <label>:54:                                     ; preds = %46
  store i32 13, i32* %37, align 8, !tbaa !98
  store i8 %28, i8* %49, align 2, !tbaa !11
  br label %79

; <label>:55:                                     ; preds = %41
  %56 = icmp eq i32 %43, 8
  br i1 %56, label %57, label %79

; <label>:57:                                     ; preds = %55
  %58 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %34, i64 0, i32 1, i32 1
  %59 = bitcast %union.anon.7* %58 to %struct.anon.8*
  %60 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %59, i64 0, i32 1
  %61 = load i8, i8* %60, align 2, !tbaa !11
  %62 = zext i8 %61 to i32
  %63 = load i32, i32* %30, align 8, !tbaa !11
  %64 = icmp eq i32 %63, %62
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %57
  store i8 %28, i8* %60, align 2, !tbaa !11
  br label %66

; <label>:66:                                     ; preds = %65, %57
  %67 = phi i32 [ 1, %65 ], [ %33, %57 ]
  %68 = icmp ne i32 %38, 10
  %69 = xor i1 %56, true
  %70 = or i1 %68, %69
  br i1 %70, label %79, label %71

; <label>:71:                                     ; preds = %66
  %72 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %34, i64 0, i32 1, i32 1
  %73 = bitcast %union.anon.7* %72 to i16*
  %74 = load i16, i16* %73, align 8, !tbaa !11
  %75 = sext i16 %74 to i32
  %76 = load i32, i32* %30, align 8, !tbaa !11
  %77 = icmp eq i32 %76, %75
  br i1 %77, label %78, label %79

; <label>:78:                                     ; preds = %71
  store i16 %31, i16* %73, align 8, !tbaa !11
  br label %79

; <label>:79:                                     ; preds = %55, %66, %78, %71, %54, %46, %44, %36
  %80 = phi i32 [ 1, %54 ], [ %33, %46 ], [ %33, %44 ], [ 1, %78 ], [ %67, %71 ], [ %67, %66 ], [ %33, %36 ], [ %33, %55 ]
  %81 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %34, i64 0, i32 0
  %82 = load %struct.LHS_assign*, %struct.LHS_assign** %81, align 8, !tbaa !96
  br label %32

; <label>:83:                                     ; preds = %32
  %84 = icmp eq i32 %33, 0
  br i1 %84, label %92, label %85

; <label>:85:                                     ; preds = %83
  %86 = zext i8 %28 to i32
  %87 = load i32, i32* %20, align 8, !tbaa !37
  %88 = icmp eq i32 %87, 8
  %89 = select i1 %88, i32 0, i32 7
  %90 = load i32, i32* %30, align 8, !tbaa !11
  %91 = call i32 @luaK_codeABCk(%struct.FuncState* %26, i32 %89, i32 %86, i32 %90, i32 0, i32 0) #9
  call void @luaK_reserveregs(%struct.FuncState* %26, i32 1) #9
  br label %92

; <label>:92:                                     ; preds = %85, %83, %16
  %93 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %94 = load %struct.lua_State*, %struct.lua_State** %93, align 8, !tbaa !57
  call void @luaE_enterCcall(%struct.lua_State* %94) #9
  %95 = add nsw i32 %2, 1
  call fastcc void @restassign(%struct.LexState* %0, %struct.LHS_assign* nonnull %5, i32 %95) #10
  %96 = load %struct.lua_State*, %struct.lua_State** %93, align 8, !tbaa !57
  %97 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %96, i64 0, i32 19
  %98 = load i32, i32* %97, align 8, !tbaa !99
  %99 = add i32 %98, -1
  store i32 %99, i32* %97, align 8, !tbaa !99
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #8
  br label %108

; <label>:100:                                    ; preds = %13
  tail call fastcc void @checknext(%struct.LexState* %0, i32 61) #10
  %101 = call fastcc i32 @explist(%struct.LexState* %0, %struct.expdesc* nonnull %4) #10
  %102 = icmp eq i32 %101, %2
  br i1 %102, label %104, label %103

; <label>:103:                                    ; preds = %100
  call fastcc void @adjust_assign(%struct.LexState* %0, i32 %2, i32 %101, %struct.expdesc* nonnull %4) #10
  br label %108

; <label>:104:                                    ; preds = %100
  %105 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %106 = load %struct.FuncState*, %struct.FuncState** %105, align 8, !tbaa !39
  call void @luaK_setoneret(%struct.FuncState* %106, %struct.expdesc* nonnull %4) #9
  %107 = load %struct.FuncState*, %struct.FuncState** %105, align 8, !tbaa !39
  call void @luaK_storevar(%struct.FuncState* %107, %struct.expdesc* nonnull %7, %struct.expdesc* nonnull %4) #9
  br label %120

; <label>:108:                                    ; preds = %103, %92
  %109 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %110 = load %struct.FuncState*, %struct.FuncState** %109, align 8, !tbaa !39
  %111 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %110, i64 0, i32 15
  %112 = load i8, i8* %111, align 4, !tbaa !86
  %113 = zext i8 %112 to i32
  %114 = add nsw i32 %113, -1
  %115 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2
  store i32 -1, i32* %115, align 8, !tbaa !34
  %116 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3
  store i32 -1, i32* %116, align 4, !tbaa !36
  %117 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  store i32 7, i32* %117, align 8, !tbaa !37
  %118 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1
  %119 = bitcast %union.anon.7* %118 to i32*
  store i32 %114, i32* %119, align 8, !tbaa !11
  call void @luaK_storevar(%struct.FuncState* %110, %struct.expdesc* nonnull %7, %struct.expdesc* nonnull %4) #9
  br label %120

; <label>:120:                                    ; preds = %104, %108
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaK_setoneret(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaK_finish(%struct.FuncState*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden i8* @luaM_shrinkvector_(%struct.lua_State*, i8*, i32*, i32, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { minsize norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { minsize noreturn nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { minsize noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { minsize norecurse nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { minsize nounwind optsize }
attributes #10 = { minsize optsize }
attributes #11 = { minsize noreturn optsize }
attributes #12 = { minsize noreturn nounwind optsize }
attributes #13 = { minsize nounwind optsize readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !4, i64 16}
!3 = !{!"lua_State", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !8, i64 96, !4, i64 160, !9, i64 168, !10, i64 176, !10, i64 180, !10, i64 184, !10, i64 188, !10, i64 192}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"short", !5, i64 0}
!8 = !{!"CallInfo", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !5, i64 32, !5, i64 56, !7, i64 60, !7, i64 62}
!9 = !{!"long", !5, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !5, i64 8}
!13 = !{!"TValue", !5, i64 0, !5, i64 8}
!14 = !{!15, !4, i64 80}
!15 = !{!"LexState", !10, i64 0, !10, i64 4, !10, i64 8, !16, i64 16, !16, i64 32, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104}
!16 = !{!"Token", !10, i64 0, !5, i64 8}
!17 = !{!18, !4, i64 24}
!18 = !{!"LClosure", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !4, i64 16, !4, i64 24, !5, i64 32}
!19 = !{!20, !4, i64 0}
!20 = !{!"FuncState", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !7, i64 64, !5, i64 66, !5, i64 67, !5, i64 68, !5, i64 69, !5, i64 70}
!21 = !{!22, !4, i64 112}
!22 = !{!"Proto", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120}
!23 = !{!22, !5, i64 9}
!24 = !{!25, !5, i64 9}
!25 = !{!"TString", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !10, i64 12, !5, i64 16}
!26 = !{!15, !4, i64 72}
!27 = !{!15, !4, i64 88}
!28 = !{!29, !10, i64 40}
!29 = !{!"Dyndata", !30, i64 0, !31, i64 16, !31, i64 32}
!30 = !{!"", !4, i64 0, !10, i64 8, !10, i64 12}
!31 = !{!"Labellist", !4, i64 0, !10, i64 8, !10, i64 12}
!32 = !{!29, !10, i64 24}
!33 = !{!29, !10, i64 8}
!34 = !{!35, !10, i64 16}
!35 = !{!"expdesc", !5, i64 0, !5, i64 8, !10, i64 16, !10, i64 20}
!36 = !{!35, !10, i64 20}
!37 = !{!35, !5, i64 0}
!38 = !{!15, !4, i64 104}
!39 = !{!15, !4, i64 48}
!40 = !{!20, !4, i64 8}
!41 = !{!20, !4, i64 16}
!42 = !{!20, !10, i64 32}
!43 = !{!22, !10, i64 44}
!44 = !{!20, !10, i64 40}
!45 = !{!20, !10, i64 36}
!46 = !{!20, !10, i64 44}
!47 = !{!20, !10, i64 52}
!48 = !{!20, !10, i64 48}
!49 = !{!20, !10, i64 56}
!50 = !{!20, !10, i64 60}
!51 = !{!20, !4, i64 24}
!52 = !{!15, !4, i64 96}
!53 = !{!22, !5, i64 12}
!54 = !{!22, !5, i64 11}
!55 = !{!22, !10, i64 16}
!56 = !{!20, !5, i64 67}
!57 = !{!15, !4, i64 56}
!58 = !{!22, !4, i64 80}
!59 = !{!60, !4, i64 0}
!60 = !{!"Upvaldesc", !4, i64 0, !5, i64 8, !5, i64 9}
!61 = !{!60, !5, i64 8}
!62 = !{!60, !5, i64 9}
!63 = !{!15, !10, i64 16}
!64 = !{!20, !5, i64 66}
!65 = !{!22, !4, i64 64}
!66 = !{!22, !4, i64 88}
!67 = !{!22, !4, i64 96}
!68 = !{!22, !4, i64 56}
!69 = !{!22, !4, i64 72}
!70 = !{!22, !4, i64 104}
!71 = !{!20, !7, i64 64}
!72 = !{!3, !4, i64 24}
!73 = !{!74, !9, i64 24}
!74 = !{!"global_State", !4, i64 0, !4, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !75, i64 48, !13, i64 64, !13, i64 80, !10, i64 96, !5, i64 100, !5, i64 101, !5, i64 102, !5, i64 103, !5, i64 104, !5, i64 105, !5, i64 106, !5, i64 107, !5, i64 108, !5, i64 109, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168, !4, i64 176, !4, i64 184, !4, i64 192, !4, i64 200, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256, !4, i64 264, !5, i64 272, !5, i64 472, !5, i64 544, !4, i64 1392, !4, i64 1400}
!75 = !{!"stringtable", !4, i64 0, !10, i64 8, !10, i64 12}
!76 = !{!77, !5, i64 18}
!77 = !{!"BlockCnt", !4, i64 0, !10, i64 8, !10, i64 12, !5, i64 16, !5, i64 17, !5, i64 18, !5, i64 19}
!78 = !{!77, !5, i64 16}
!79 = !{!77, !10, i64 8}
!80 = !{!77, !10, i64 12}
!81 = !{!77, !5, i64 17}
!82 = !{!77, !5, i64 19}
!83 = !{!77, !4, i64 0}
!84 = !{!15, !10, i64 4}
!85 = !{!10, !10, i64 0}
!86 = !{!20, !5, i64 68}
!87 = !{!4, !4, i64 0}
!88 = !{!20, !5, i64 70}
!89 = !{!90, !10, i64 8}
!90 = !{!"LocVar", !4, i64 0, !10, i64 8, !10, i64 12}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{!93, !10, i64 12}
!93 = !{!"Labeldesc", !4, i64 0, !10, i64 8, !10, i64 12, !5, i64 16, !5, i64 17}
!94 = !{!93, !5, i64 16}
!95 = !{!93, !10, i64 8}
!96 = !{!97, !4, i64 0}
!97 = !{!"LHS_assign", !4, i64 0, !35, i64 8}
!98 = !{!97, !5, i64 8}
!99 = !{!3, !10, i64 176}
!100 = !{!"branch_weights", i32 1, i32 2000}
!101 = !{!90, !10, i64 12}
!102 = !{!31, !10, i64 8}
!103 = !{!31, !4, i64 0}
!104 = !{!93, !5, i64 17}
!105 = !{!29, !4, i64 16}
!106 = !{!107, !5, i64 0}
!107 = !{!"", !5, i64 0, !5, i64 1}
!108 = !{!107, !5, i64 1}
!109 = !{!110, !10, i64 40}
!110 = !{!"ConsControl", !35, i64 0, !4, i64 24, !10, i64 32, !10, i64 36, !10, i64 40}
!111 = !{!110, !10, i64 32}
!112 = !{!110, !10, i64 36}
!113 = !{!110, !4, i64 24}
!114 = !{!110, !5, i64 0}
!115 = !{!22, !10, i64 32}
!116 = !{!22, !5, i64 10}
!117 = !{!22, !10, i64 48}
!118 = !{i64 0, i64 4, !11, i64 8, i64 8, !119, i64 8, i64 8, !121, i64 8, i64 4, !85, i64 8, i64 2, !123, i64 10, i64 1, !11, i64 16, i64 4, !85, i64 20, i64 4, !85}
!119 = !{!120, !120, i64 0}
!120 = !{!"long long", !5, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"double", !5, i64 0}
!123 = !{!7, !7, i64 0}
!124 = !{!22, !10, i64 36}
!125 = !{!90, !4, i64 0}
!126 = !{!29, !4, i64 0}
!127 = !{!128, !7, i64 0}
!128 = !{!"Vardesc", !7, i64 0}
!129 = !{!29, !4, i64 32}
!130 = !{!93, !4, i64 0}
!131 = !{i64 0, i64 8, !87, i64 8, i64 4, !85, i64 12, i64 4, !85, i64 16, i64 1, !11, i64 17, i64 1, !11}
