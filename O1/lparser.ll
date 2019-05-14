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
%struct.LexState = type { i32, i32, i32, %struct.Token, %struct.Token, %struct.FuncState*, %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Table*, %struct.Dyndata*, %struct.TString*, %struct.TString* }
%struct.Token = type { i32, %union.SemInfo }
%union.SemInfo = type { double }
%struct.FuncState = type { %struct.Proto*, %struct.FuncState*, %struct.LexState*, %struct.BlockCnt*, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8 }
%struct.BlockCnt = type { %struct.BlockCnt*, i32, i32, i8, i8, i8, i8 }
%struct.expdesc = type { i32, %union.anon.7, i32, i32 }
%union.anon.7 = type { i64 }
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

; Function Attrs: nounwind uwtable
define hidden %struct.LClosure* @luaY_parser(%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Dyndata*, i8*, i32) local_unnamed_addr #0 {
  %7 = alloca %struct.LexState, align 8
  %8 = alloca %struct.FuncState, align 8
  %9 = bitcast %struct.LexState* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %9) #9
  %10 = bitcast %struct.FuncState* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %10) #9
  %11 = tail call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %0, i32 1) #9
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %13 = bitcast %union.StackValue** %12 to %struct.TValue**
  %14 = load %struct.TValue*, %struct.TValue** %13, align 8, !tbaa !2
  %15 = bitcast %struct.TValue* %14 to %struct.LClosure**
  store %struct.LClosure* %11, %struct.LClosure** %15, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i64 0, i32 1
  store i8 86, i8* %16, align 8, !tbaa !12
  tail call void @luaD_inctop(%struct.lua_State* %0) #9
  %17 = tail call %struct.Table* @luaH_new(%struct.lua_State* %0) #9
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i64 0, i32 9
  store %struct.Table* %17, %struct.Table** %18, align 8, !tbaa !14
  %19 = load %struct.TValue*, %struct.TValue** %13, align 8, !tbaa !2
  %20 = bitcast %struct.TValue* %19 to %struct.Table**
  store %struct.Table* %17, %struct.Table** %20, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i64 0, i32 1
  store i8 69, i8* %21, align 8, !tbaa !12
  tail call void @luaD_inctop(%struct.lua_State* %0) #9
  %22 = tail call %struct.Proto* @luaF_newproto(%struct.lua_State* %0) #9
  %23 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %11, i64 0, i32 5
  store %struct.Proto* %22, %struct.Proto** %23, align 8, !tbaa !17
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i64 0, i32 0
  store %struct.Proto* %22, %struct.Proto** %24, align 8, !tbaa !19
  %25 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* %4) #9
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i64 0, i32 22
  store %struct.TString* %25, %struct.TString** %26, align 8, !tbaa !21
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i64 0, i32 2
  %28 = load i8, i8* %27, align 1, !tbaa !23
  %29 = and i8 %28, 32
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %39, label %31

; <label>:31:                                     ; preds = %6
  %32 = getelementptr inbounds %struct.TString, %struct.TString* %25, i64 0, i32 2
  %33 = load i8, i8* %32, align 1, !tbaa !24
  %34 = and i8 %33, 24
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

; <label>:36:                                     ; preds = %31
  %37 = bitcast %struct.Proto* %22 to %struct.GCObject*
  %38 = bitcast %struct.TString* %25 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* nonnull %0, %struct.GCObject* %37, %struct.GCObject* %38) #9
  br label %39

; <label>:39:                                     ; preds = %31, %6, %36
  %40 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i64 0, i32 8
  store %struct.Mbuffer* %2, %struct.Mbuffer** %40, align 8, !tbaa !26
  %41 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i64 0, i32 10
  store %struct.Dyndata* %3, %struct.Dyndata** %41, align 8, !tbaa !27
  %42 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %3, i64 0, i32 2, i32 1
  store i32 0, i32* %42, align 8, !tbaa !28
  %43 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %3, i64 0, i32 1, i32 1
  store i32 0, i32* %43, align 8, !tbaa !32
  %44 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %3, i64 0, i32 0, i32 1
  store i32 0, i32* %44, align 8, !tbaa !33
  %45 = load %struct.Proto*, %struct.Proto** %24, align 8, !tbaa !19
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %45, i64 0, i32 22
  %47 = load %struct.TString*, %struct.TString** %46, align 8, !tbaa !21
  call void @luaX_setinput(%struct.lua_State* nonnull %0, %struct.LexState* nonnull %7, %struct.Zio* %1, %struct.TString* %47, i32 %5) #9
  call fastcc void @mainfunc(%struct.LexState* nonnull %7, %struct.FuncState* nonnull %8)
  %48 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !2
  %49 = getelementptr inbounds %union.StackValue, %union.StackValue* %48, i64 -1
  store %union.StackValue* %49, %union.StackValue** %12, align 8, !tbaa !2
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %10) #9
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %9) #9
  ret %struct.LClosure* %11
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

declare hidden void @luaD_inctop(%struct.lua_State*) local_unnamed_addr #2

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) local_unnamed_addr #2

declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) local_unnamed_addr #2

declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) local_unnamed_addr #2

declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) local_unnamed_addr #2

declare hidden void @luaX_setinput(%struct.lua_State*, %struct.LexState*, %struct.Zio*, %struct.TString*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mainfunc(%struct.LexState*, %struct.FuncState*) unnamed_addr #0 {
  %3 = alloca %struct.BlockCnt, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = bitcast %struct.BlockCnt* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #9
  %6 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9
  call fastcc void @open_func(%struct.LexState* %0, %struct.FuncState* %1, %struct.BlockCnt* nonnull %3)
  call fastcc void @setvararg(%struct.FuncState* %1, i32 0)
  call fastcc void @init_exp(%struct.expdesc* nonnull %4, i32 8, i32 0)
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 12
  %8 = load %struct.TString*, %struct.TString** %7, align 8, !tbaa !34
  %9 = call fastcc i32 @newupvalue(%struct.FuncState* %1, %struct.TString* %8, %struct.expdesc* nonnull %4)
  call void @luaX_next(%struct.LexState* %0) #9
  call fastcc void @statlist(%struct.LexState* %0)
  call fastcc void @check(%struct.LexState* %0, i32 289)
  call fastcc void @close_func(%struct.LexState* %0)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #9
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @open_func(%struct.LexState*, %struct.FuncState*, %struct.BlockCnt*) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 0
  %5 = load %struct.Proto*, %struct.Proto** %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %7 = bitcast %struct.FuncState** %6 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 1
  %10 = bitcast %struct.FuncState** %9 to i64*
  store i64 %8, i64* %10, align 8, !tbaa !36
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 2
  store %struct.LexState* %0, %struct.LexState** %11, align 8, !tbaa !37
  store %struct.FuncState* %1, %struct.FuncState** %6, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 4
  store i32 0, i32* %12, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 13
  %14 = load i32, i32* %13, align 4, !tbaa !39
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 6
  store i32 %14, i32* %15, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 5
  store i32 0, i32* %16, align 4, !tbaa !41
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 7
  store i32 0, i32* %17, align 4, !tbaa !42
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 9
  store i32 0, i32* %18, align 4, !tbaa !43
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 8
  store i32 0, i32* %19, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 12
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %22 = bitcast i16* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %22, i8 0, i64 7, i32 8, i1 false)
  %23 = load %struct.Dyndata*, %struct.Dyndata** %21, align 8, !tbaa !27
  %24 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %23, i64 0, i32 0, i32 1
  %25 = load i32, i32* %24, align 8, !tbaa !33
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 10
  store i32 %25, i32* %26, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %23, i64 0, i32 2, i32 1
  %28 = load i32, i32* %27, align 8, !tbaa !28
  %29 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 11
  store i32 %28, i32* %29, align 4, !tbaa !46
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 3
  store %struct.BlockCnt* null, %struct.BlockCnt** %30, align 8, !tbaa !47
  %31 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 11
  %32 = bitcast %struct.TString** %31 to i64*
  %33 = load i64, i64* %32, align 8, !tbaa !48
  %34 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 22
  %35 = bitcast %struct.TString** %34 to i64*
  store i64 %33, i64* %35, align 8, !tbaa !21
  %36 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 5
  store i8 2, i8* %36, align 4, !tbaa !49
  tail call fastcc void @enterblock(%struct.FuncState* %1, %struct.BlockCnt* %2, i8 zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @setvararg(%struct.FuncState*, i32) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %4 = load %struct.Proto*, %struct.Proto** %3, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i64 0, i32 4
  store i8 1, i8* %5, align 1, !tbaa !50
  %6 = tail call i32 @luaK_codeABCk(%struct.FuncState* %0, i32 82, i32 %1, i32 0, i32 0, i32 0) #9
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @init_exp(%struct.expdesc* nocapture, i32, i32) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 2
  store i32 -1, i32* %4, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 3
  store i32 -1, i32* %5, align 4, !tbaa !53
  %6 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 0
  store i32 %1, i32* %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %0, i64 0, i32 1
  %8 = bitcast %union.anon.7* %7 to i32*
  store i32 %2, i32* %8, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @newupvalue(%struct.FuncState* nocapture, %struct.TString*, %struct.expdesc* nocapture readonly) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %5 = load %struct.Proto*, %struct.Proto** %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 6
  %7 = load i32, i32* %6, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14
  %9 = load i8, i8* %8, align 1, !tbaa !56
  %10 = zext i8 %9 to i32
  %11 = add nuw nsw i32 %10, 1
  tail call fastcc void @checklimit(%struct.FuncState* %0, i32 %11, i32 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %13 = load %struct.LexState*, %struct.LexState** %12, align 8, !tbaa !37
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
  %23 = icmp slt i32 %7, %22
  br i1 %23, label %24, label %34

; <label>:24:                                     ; preds = %3
  %25 = load %struct.Upvaldesc*, %struct.Upvaldesc** %16, align 8, !tbaa !58
  %26 = load i32, i32* %6, align 8, !tbaa !55
  %27 = sext i32 %7 to i64
  %28 = sext i32 %26 to i64
  br label %29

; <label>:29:                                     ; preds = %24, %29
  %30 = phi i64 [ %27, %24 ], [ %31, %29 ]
  %31 = add nsw i64 %30, 1
  %32 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %25, i64 %30, i32 0
  store %struct.TString* null, %struct.TString** %32, align 8, !tbaa !59
  %33 = icmp slt i64 %31, %28
  br i1 %33, label %29, label %34

; <label>:34:                                     ; preds = %29, %3
  %35 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %36 = load i32, i32* %35, align 8, !tbaa !54
  %37 = icmp eq i32 %36, 8
  %38 = zext i1 %37 to i8
  %39 = load %struct.Upvaldesc*, %struct.Upvaldesc** %16, align 8, !tbaa !58
  %40 = load i8, i8* %8, align 1, !tbaa !56
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %39, i64 %41, i32 1
  store i8 %38, i8* %42, align 8, !tbaa !61
  %43 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %44 = bitcast %union.anon.7* %43 to i32*
  %45 = load i32, i32* %44, align 8, !tbaa !11
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %39, i64 %41, i32 2
  store i8 %46, i8* %47, align 1, !tbaa !62
  %48 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %39, i64 %41, i32 0
  store %struct.TString* %1, %struct.TString** %48, align 8, !tbaa !59
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 2
  %50 = load i8, i8* %49, align 1, !tbaa !23
  %51 = and i8 %50, 32
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %64, label %53

; <label>:53:                                     ; preds = %34
  %54 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 2
  %55 = load i8, i8* %54, align 1, !tbaa !24
  %56 = and i8 %55, 24
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %64, label %58

; <label>:58:                                     ; preds = %53
  %59 = load %struct.LexState*, %struct.LexState** %12, align 8, !tbaa !37
  %60 = getelementptr inbounds %struct.LexState, %struct.LexState* %59, i64 0, i32 6
  %61 = load %struct.lua_State*, %struct.lua_State** %60, align 8, !tbaa !57
  %62 = bitcast %struct.Proto* %5 to %struct.GCObject*
  %63 = bitcast %struct.TString* %1 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* %61, %struct.GCObject* %62, %struct.GCObject* %63) #9
  br label %64

; <label>:64:                                     ; preds = %53, %34, %58
  %65 = load i8, i8* %8, align 1, !tbaa !56
  %66 = add i8 %65, 1
  store i8 %66, i8* %8, align 1, !tbaa !56
  %67 = zext i8 %65 to i32
  ret i32 %67
}

declare hidden void @luaX_next(%struct.LexState*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @statlist(%struct.LexState*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %3 = tail call fastcc i32 @block_follow(%struct.LexState* %0, i32 1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

; <label>:5:                                      ; preds = %1
  br label %9

; <label>:6:                                      ; preds = %9
  %7 = tail call fastcc i32 @block_follow(%struct.LexState* nonnull %0, i32 1)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %5, %6
  %10 = load i32, i32* %2, align 8, !tbaa !63
  %11 = icmp eq i32 %10, 274
  tail call fastcc void @statement(%struct.LexState* %0)
  br i1 %11, label %12, label %6

; <label>:12:                                     ; preds = %6, %9, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check(%struct.LexState*, i32) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !63
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %2
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 %1) #10
  unreachable

; <label>:7:                                      ; preds = %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @close_func(%struct.LexState* nocapture) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 13
  %9 = load i8, i8* %8, align 2, !tbaa !64
  %10 = zext i8 %9 to i32
  tail call void @luaK_ret(%struct.FuncState* %5, i32 %10, i32 0) #9
  tail call fastcc void @leaveblock(%struct.FuncState* %5)
  tail call void @luaK_finish(%struct.FuncState* %5) #9
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 16
  %12 = bitcast i32** %11 to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !65
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 8
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 4
  %16 = load i32, i32* %15, align 8, !tbaa !38
  %17 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %13, i32* nonnull %14, i32 %16, i32 4) #9
  store i8* %17, i8** %12, align 8, !tbaa !65
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 19
  %19 = load i8*, i8** %18, align 8, !tbaa !66
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 9
  %21 = load i32, i32* %15, align 8, !tbaa !38
  %22 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %19, i32* nonnull %20, i32 %21, i32 1) #9
  store i8* %22, i8** %18, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 20
  %24 = bitcast %struct.AbsLineInfo** %23 to i8**
  %25 = load i8*, i8** %24, align 8, !tbaa !67
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 12
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 9
  %28 = load i32, i32* %27, align 4, !tbaa !43
  %29 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %25, i32* nonnull %26, i32 %28, i32 8) #9
  store i8* %29, i8** %24, align 8, !tbaa !67
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 15
  %31 = bitcast %struct.TValue** %30 to i8**
  %32 = load i8*, i8** %31, align 8, !tbaa !68
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 7
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 7
  %35 = load i32, i32* %34, align 4, !tbaa !42
  %36 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %32, i32* nonnull %33, i32 %35, i32 16) #9
  store i8* %36, i8** %31, align 8, !tbaa !68
  %37 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 17
  %38 = bitcast %struct.Proto*** %37 to i8**
  %39 = load i8*, i8** %38, align 8, !tbaa !69
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 10
  %41 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 8
  %42 = load i32, i32* %41, align 8, !tbaa !44
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
  %62 = load i64, i64* %61, align 8, !tbaa !36
  %63 = bitcast %struct.FuncState** %4 to i64*
  store i64 %62, i64* %63, align 8, !tbaa !35
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

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @enterblock(%struct.FuncState* nocapture, %struct.BlockCnt*, i8 zeroext) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %1, i64 0, i32 5
  store i8 %2, i8* %4, align 2, !tbaa !76
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %6 = load i8, i8* %5, align 2, !tbaa !64
  %7 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %1, i64 0, i32 3
  store i8 %6, i8* %7, align 8, !tbaa !78
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %9 = load %struct.LexState*, %struct.LexState** %8, align 8, !tbaa !37
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
  %20 = load %struct.BlockCnt*, %struct.BlockCnt** %19, align 8, !tbaa !47
  %21 = icmp eq %struct.BlockCnt* %20, null
  br i1 %21, label %27, label %22

; <label>:22:                                     ; preds = %3
  %23 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 6
  %24 = load i8, i8* %23, align 1, !tbaa !82
  %25 = icmp ne i8 %24, 0
  %26 = zext i1 %25 to i8
  br label %27

; <label>:27:                                     ; preds = %3, %22
  %28 = phi i8 [ 0, %3 ], [ %26, %22 ]
  %29 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %1, i64 0, i32 6
  store i8 %28, i8* %29, align 1, !tbaa !82
  %30 = bitcast %struct.BlockCnt** %19 to i64*
  %31 = load i64, i64* %30, align 8, !tbaa !47
  %32 = bitcast %struct.BlockCnt* %1 to i64*
  store i64 %31, i64* %32, align 8, !tbaa !83
  store %struct.BlockCnt* %1, %struct.BlockCnt** %19, align 8, !tbaa !47
  ret void
}

declare hidden i32 @luaK_codeABCk(%struct.FuncState*, i32, i32, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @checklimit(%struct.FuncState* nocapture readonly, i32, i32, i8*) unnamed_addr #0 {
  %5 = icmp sgt i32 %1, %2
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %4
  tail call fastcc void @errorlimit(%struct.FuncState* %0, i32 %2, i8* %3) #10
  unreachable

; <label>:7:                                      ; preds = %4
  ret void
}

declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32, i32*, i32, i32, i8*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @errorlimit(%struct.FuncState* nocapture readonly, i32, i8*) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %5 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !37
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 6
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8, !tbaa !19
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 13
  %11 = load i32, i32* %10, align 4, !tbaa !39
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %3
  %14 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %11) #9
  br label %15

; <label>:15:                                     ; preds = %3, %13
  %16 = phi i8* [ %14, %13 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %3 ]
  %17 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %2, i32 %1, i8* %16) #9
  %18 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !37
  tail call void @luaX_syntaxerror(%struct.LexState* %18, i8* %17) #11
  unreachable
}

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noreturn
declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) local_unnamed_addr #5

; Function Attrs: norecurse nounwind readonly uwtable
define internal fastcc i32 @block_follow(%struct.LexState* nocapture readonly, i32) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !63
  switch i32 %4, label %6 [
    i32 260, label %7
    i32 261, label %7
    i32 262, label %7
    i32 289, label %7
    i32 277, label %5
  ]

; <label>:5:                                      ; preds = %2
  br label %7

; <label>:6:                                      ; preds = %2
  br label %7

; <label>:7:                                      ; preds = %2, %2, %2, %2, %6, %5
  %8 = phi i32 [ 0, %6 ], [ %1, %5 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal fastcc void @statement(%struct.LexState*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !84
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !57
  tail call void @luaE_enterCcall(%struct.lua_State* %5) #9
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !63
  switch i32 %7, label %25 [
    i32 59, label %8
    i32 267, label %9
    i32 278, label %10
    i32 259, label %11
    i32 264, label %12
    i32 273, label %13
    i32 265, label %14
    i32 269, label %15
    i32 288, label %20
    i32 274, label %22
    i32 258, label %23
    i32 266, label %24
  ]

; <label>:8:                                      ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %26

; <label>:9:                                      ; preds = %1
  tail call fastcc void @ifstat(%struct.LexState* nonnull %0, i32 %3)
  br label %26

; <label>:10:                                     ; preds = %1
  tail call fastcc void @whilestat(%struct.LexState* nonnull %0, i32 %3)
  br label %26

; <label>:11:                                     ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  tail call fastcc void @block(%struct.LexState* nonnull %0)
  tail call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 259, i32 %3)
  br label %26

; <label>:12:                                     ; preds = %1
  tail call fastcc void @forstat(%struct.LexState* nonnull %0, i32 %3)
  br label %26

; <label>:13:                                     ; preds = %1
  tail call fastcc void @repeatstat(%struct.LexState* nonnull %0, i32 %3)
  br label %26

; <label>:14:                                     ; preds = %1
  tail call fastcc void @funcstat(%struct.LexState* nonnull %0, i32 %3)
  br label %26

; <label>:15:                                     ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %16 = tail call fastcc i32 @testnext(%struct.LexState* nonnull %0, i32 265)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %15
  tail call fastcc void @localfunc(%struct.LexState* nonnull %0)
  br label %26

; <label>:19:                                     ; preds = %15
  tail call fastcc void @localstat(%struct.LexState* nonnull %0)
  br label %26

; <label>:20:                                     ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %21 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0)
  tail call fastcc void @labelstat(%struct.LexState* nonnull %0, %struct.TString* %21, i32 %3)
  br label %26

; <label>:22:                                     ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  tail call fastcc void @retstat(%struct.LexState* nonnull %0)
  br label %26

; <label>:23:                                     ; preds = %1
  tail call fastcc void @breakstat(%struct.LexState* nonnull %0)
  br label %26

; <label>:24:                                     ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  tail call fastcc void @gotostat(%struct.LexState* nonnull %0)
  br label %26

; <label>:25:                                     ; preds = %1
  tail call fastcc void @exprstat(%struct.LexState* nonnull %0)
  br label %26

; <label>:26:                                     ; preds = %18, %19, %25, %24, %23, %22, %20, %14, %13, %12, %11, %10, %9, %8
  %27 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %28 = load %struct.FuncState*, %struct.FuncState** %27, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i64 0, i32 13
  %30 = load i8, i8* %29, align 2, !tbaa !64
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i64 0, i32 15
  store i8 %30, i8* %31, align 4, !tbaa !85
  %32 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !57
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i64 0, i32 19
  %34 = load i32, i32* %33, align 8, !tbaa !86
  %35 = add i32 %34, -1
  store i32 %35, i32* %33, align 8, !tbaa !86
  ret void
}

declare hidden void @luaE_enterCcall(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ifstat(%struct.LexState*, i32) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !35
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  store i32 -1, i32* %3, align 4, !tbaa !87
  call fastcc void @test_then_block(%struct.LexState* %0, i32* nonnull %3)
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !63
  %9 = icmp eq i32 %8, 261
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %2
  br label %11

; <label>:11:                                     ; preds = %10, %11
  call fastcc void @test_then_block(%struct.LexState* nonnull %0, i32* nonnull %3)
  %12 = load i32, i32* %7, align 8, !tbaa !63
  %13 = icmp eq i32 %12, 261
  br i1 %13, label %11, label %14

; <label>:14:                                     ; preds = %11, %2
  %15 = call fastcc i32 @testnext(%struct.LexState* nonnull %0, i32 260)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

; <label>:17:                                     ; preds = %14
  call fastcc void @block(%struct.LexState* nonnull %0)
  br label %18

; <label>:18:                                     ; preds = %14, %17
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 267, i32 %1)
  %19 = load i32, i32* %3, align 4, !tbaa !87
  call void @luaK_patchtohere(%struct.FuncState* %5, i32 %19) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @whilestat(%struct.LexState*, i32) unnamed_addr #0 {
  %3 = alloca %struct.BlockCnt, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !35
  %6 = bitcast %struct.BlockCnt* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9
  tail call void @luaX_next(%struct.LexState* %0) #9
  %7 = tail call i32 @luaK_getlabel(%struct.FuncState* %5) #9
  %8 = tail call fastcc i32 @cond(%struct.LexState* %0)
  call fastcc void @enterblock(%struct.FuncState* %5, %struct.BlockCnt* nonnull %3, i8 zeroext 1)
  call fastcc void @checknext(%struct.LexState* %0, i32 259)
  call fastcc void @block(%struct.LexState* %0)
  %9 = call i32 @luaK_jump(%struct.FuncState* %5) #9
  call void @luaK_patchlist(%struct.FuncState* %5, i32 %9, i32 %7) #9
  call fastcc void @check_match(%struct.LexState* %0, i32 262, i32 278, i32 %1)
  call fastcc void @leaveblock(%struct.FuncState* %5)
  call void @luaK_patchtohere(%struct.FuncState* %5, i32 %8) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @block(%struct.LexState*) unnamed_addr #0 {
  %2 = alloca %struct.BlockCnt, align 8
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !35
  %5 = bitcast %struct.BlockCnt* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #9
  call fastcc void @enterblock(%struct.FuncState* %4, %struct.BlockCnt* nonnull %2, i8 zeroext 0)
  call fastcc void @statlist(%struct.LexState* %0)
  call fastcc void @leaveblock(%struct.FuncState* %4)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_match(%struct.LexState*, i32, i32, i32) unnamed_addr #0 {
  %5 = tail call fastcc i32 @testnext(%struct.LexState* %0, i32 %1)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18, !prof !88

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %9 = load i32, i32* %8, align 4, !tbaa !84
  %10 = icmp eq i32 %9, %3
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %7
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 %1) #10
  unreachable

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %14 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !tbaa !57
  %15 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 %1) #9
  %16 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 %2) #9
  %17 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* %15, i8* %16, i32 %3) #9
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %17) #11
  unreachable

; <label>:18:                                     ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @forstat(%struct.LexState*, i32) unnamed_addr #0 {
  %3 = alloca %struct.BlockCnt, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !35
  %6 = bitcast %struct.BlockCnt* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9
  call fastcc void @enterblock(%struct.FuncState* %5, %struct.BlockCnt* nonnull %3, i8 zeroext 1)
  call void @luaX_next(%struct.LexState* %0) #9
  %7 = call fastcc %struct.TString* @str_checkname(%struct.LexState* %0)
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !63
  switch i32 %9, label %12 [
    i32 61, label %10
    i32 44, label %11
    i32 268, label %11
  ]

; <label>:10:                                     ; preds = %2
  call fastcc void @fornum(%struct.LexState* nonnull %0, %struct.TString* %7, i32 %1)
  br label %13

; <label>:11:                                     ; preds = %2, %2
  call fastcc void @forlist(%struct.LexState* nonnull %0, %struct.TString* %7)
  br label %13

; <label>:12:                                     ; preds = %2
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0)) #11
  unreachable

; <label>:13:                                     ; preds = %11, %10
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 264, i32 %1)
  call fastcc void @leaveblock(%struct.FuncState* %5)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @repeatstat(%struct.LexState*, i32) unnamed_addr #0 {
  %3 = alloca %struct.BlockCnt, align 8
  %4 = alloca %struct.BlockCnt, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !35
  %7 = tail call i32 @luaK_getlabel(%struct.FuncState* %6) #9
  %8 = bitcast %struct.BlockCnt* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #9
  %9 = bitcast %struct.BlockCnt* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #9
  call fastcc void @enterblock(%struct.FuncState* %6, %struct.BlockCnt* nonnull %3, i8 zeroext 1)
  call fastcc void @enterblock(%struct.FuncState* %6, %struct.BlockCnt* nonnull %4, i8 zeroext 0)
  call void @luaX_next(%struct.LexState* %0) #9
  call fastcc void @statlist(%struct.LexState* %0)
  call fastcc void @check_match(%struct.LexState* %0, i32 277, i32 273, i32 %1)
  %10 = call fastcc i32 @cond(%struct.LexState* %0)
  call fastcc void @leaveblock(%struct.FuncState* %6)
  %11 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %4, i64 0, i32 4
  %12 = load i8, i8* %11, align 1, !tbaa !81
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %21, label %14

; <label>:14:                                     ; preds = %2
  %15 = call i32 @luaK_jump(%struct.FuncState* %6) #9
  call void @luaK_patchtohere(%struct.FuncState* %6, i32 %10) #9
  %16 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %4, i64 0, i32 3
  %17 = load i8, i8* %16, align 8, !tbaa !78
  %18 = zext i8 %17 to i32
  %19 = call i32 @luaK_codeABCk(%struct.FuncState* %6, i32 55, i32 %18, i32 0, i32 0, i32 0) #9
  %20 = call i32 @luaK_jump(%struct.FuncState* %6) #9
  call void @luaK_patchtohere(%struct.FuncState* %6, i32 %15) #9
  br label %21

; <label>:21:                                     ; preds = %2, %14
  %22 = phi i32 [ %20, %14 ], [ %10, %2 ]
  call void @luaK_patchlist(%struct.FuncState* %6, i32 %22, i32 %7) #9
  call fastcc void @leaveblock(%struct.FuncState* %6)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @funcstat(%struct.LexState*, i32) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #9
  %6 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9
  tail call void @luaX_next(%struct.LexState* %0) #9
  %7 = call fastcc i32 @funcname(%struct.LexState* %0, %struct.expdesc* nonnull %3)
  call fastcc void @body(%struct.LexState* %0, %struct.expdesc* nonnull %4, i32 %7, i32 %1)
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %9 = load %struct.FuncState*, %struct.FuncState** %8, align 8, !tbaa !35
  call void @luaK_storevar(%struct.FuncState* %9, %struct.expdesc* nonnull %3, %struct.expdesc* nonnull %4) #9
  %10 = load %struct.FuncState*, %struct.FuncState** %8, align 8, !tbaa !35
  call void @luaK_fixline(%struct.FuncState* %10, i32 %1) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #9
  ret void
}

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
define internal fastcc void @localfunc(%struct.LexState*) unnamed_addr #0 {
  %2 = alloca %struct.expdesc, align 8
  %3 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #9
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !35
  %6 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* %0)
  tail call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %6)
  tail call fastcc void @adjustlocalvars(%struct.LexState* %0, i32 1)
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %8 = load i32, i32* %7, align 4, !tbaa !84
  call fastcc void @body(%struct.LexState* %0, %struct.expdesc* nonnull %2, i32 0, i32 %8)
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 4
  %10 = load i32, i32* %9, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %12 = bitcast %union.anon.7* %11 to i32*
  %13 = load i32, i32* %12, align 8, !tbaa !11
  %14 = call fastcc %struct.LocVar* @getlocvar(%struct.FuncState* %5, i32 %13)
  %15 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %14, i64 0, i32 1
  store i32 %10, i32* %15, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @localstat(%struct.LexState*) unnamed_addr #0 {
  %2 = tail call fastcc i32 @testnext(%struct.LexState* %0, i32 42)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

; <label>:4:                                      ; preds = %1
  tail call fastcc void @tocloselocalstat(%struct.LexState* %0)
  br label %6

; <label>:5:                                      ; preds = %1
  tail call fastcc void @commonlocalstat(%struct.LexState* %0)
  br label %6

; <label>:6:                                      ; preds = %5, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @labelstat(%struct.LexState*, %struct.TString*, i32) unnamed_addr #0 {
  tail call fastcc void @checknext(%struct.LexState* %0, i32 288)
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  br label %5

; <label>:5:                                      ; preds = %7, %3
  %6 = load i32, i32* %4, align 8, !tbaa !63
  switch i32 %6, label %8 [
    i32 288, label %7
    i32 59, label %7
  ]

; <label>:7:                                      ; preds = %5, %5
  tail call fastcc void @statement(%struct.LexState* nonnull %0)
  br label %5

; <label>:8:                                      ; preds = %5
  tail call fastcc void @checkrepeated(%struct.LexState* nonnull %0, %struct.TString* %1)
  %9 = tail call fastcc i32 @block_follow(%struct.LexState* nonnull %0, i32 0)
  %10 = tail call fastcc i32 @createlabel(%struct.LexState* nonnull %0, %struct.TString* %1, i32 %2, i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.TString* @str_checkname(%struct.LexState*) unnamed_addr #0 {
  tail call fastcc void @check(%struct.LexState* %0, i32 292)
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %3 = bitcast %union.SemInfo* %2 to %struct.TString**
  %4 = load %struct.TString*, %struct.TString** %3, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* %0) #9
  ret %struct.TString* %4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @retstat(%struct.LexState*) unnamed_addr #0 {
  %2 = alloca %struct.expdesc, align 8
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !35
  %5 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #9
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 13
  %7 = load i8, i8* %6, align 2, !tbaa !64
  %8 = zext i8 %7 to i32
  %9 = tail call fastcc i32 @block_follow(%struct.LexState* %0, i32 1)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %50

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !63
  %14 = icmp eq i32 %13, 59
  br i1 %14, label %50, label %15

; <label>:15:                                     ; preds = %11
  %16 = call fastcc i32 @explist(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %2)
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %18 = load i32, i32* %17, align 8, !tbaa !54
  %19 = and i32 %18, -2
  %20 = icmp eq i32 %19, 16
  br i1 %20, label %21, label %45

; <label>:21:                                     ; preds = %15
  call void @luaK_setreturns(%struct.FuncState* %4, %struct.expdesc* nonnull %2, i32 -1) #9
  %22 = load i32, i32* %17, align 8, !tbaa !54
  %23 = icmp eq i32 %22, 16
  %24 = icmp eq i32 %16, 1
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %50

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 3
  %28 = load %struct.BlockCnt*, %struct.BlockCnt** %27, align 8, !tbaa !47
  %29 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %28, i64 0, i32 6
  %30 = load i8, i8* %29, align 1, !tbaa !82
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %50

; <label>:32:                                     ; preds = %26
  %33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 0
  %34 = load %struct.Proto*, %struct.Proto** %33, align 8, !tbaa !19
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i64 0, i32 16
  %36 = load i32*, i32** %35, align 8, !tbaa !65
  %37 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %38 = bitcast %union.anon.7* %37 to i32*
  %39 = load i32, i32* %38, align 8, !tbaa !11
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !87
  %43 = and i32 %42, -128
  %44 = or i32 %43, 70
  store i32 %44, i32* %41, align 4, !tbaa !87
  br label %50

; <label>:45:                                     ; preds = %15
  %46 = icmp eq i32 %16, 1
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %45
  %48 = call i32 @luaK_exp2anyreg(%struct.FuncState* %4, %struct.expdesc* nonnull %2) #9
  br label %50

; <label>:49:                                     ; preds = %45
  call void @luaK_exp2nextreg(%struct.FuncState* %4, %struct.expdesc* nonnull %2) #9
  br label %50

; <label>:50:                                     ; preds = %21, %32, %26, %11, %1, %49, %47
  %51 = phi i32 [ 1, %47 ], [ %16, %49 ], [ 0, %1 ], [ 0, %11 ], [ -1, %26 ], [ -1, %32 ], [ -1, %21 ]
  %52 = phi i32 [ %48, %47 ], [ %8, %49 ], [ %8, %1 ], [ %8, %11 ], [ %8, %26 ], [ %8, %32 ], [ %8, %21 ]
  call void @luaK_ret(%struct.FuncState* %4, i32 %52, i32 %51) #9
  %53 = call fastcc i32 @testnext(%struct.LexState* nonnull %0, i32 59)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @breakstat(%struct.LexState*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !84
  tail call void @luaX_next(%struct.LexState* %0) #9
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !57
  %6 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #9
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %8 = load %struct.FuncState*, %struct.FuncState** %7, align 8, !tbaa !35
  %9 = tail call i32 @luaK_jump(%struct.FuncState* %8) #9
  tail call fastcc void @newgotoentry(%struct.LexState* %0, %struct.TString* %6, i32 %3, i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gotostat(%struct.LexState*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %3 = load %struct.FuncState*, %struct.FuncState** %2, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %5 = load i32, i32* %4, align 4, !tbaa !84
  %6 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* %0)
  %7 = tail call fastcc %struct.Labeldesc* @findlabel(%struct.LexState* %0, %struct.TString* %6)
  %8 = icmp eq %struct.Labeldesc* %7, null
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @luaK_jump(%struct.FuncState* %3) #9
  tail call fastcc void @newgotoentry(%struct.LexState* nonnull %0, %struct.TString* %6, i32 %5, i32 %10)
  br label %24

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %3, i64 0, i32 13
  %13 = load i8, i8* %12, align 2, !tbaa !64
  %14 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %7, i64 0, i32 3
  %15 = load i8, i8* %14, align 8, !tbaa !91
  %16 = icmp ugt i8 %13, %15
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %11
  %18 = zext i8 %15 to i32
  %19 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %3, i32 55, i32 %18, i32 0, i32 0, i32 0) #9
  br label %20

; <label>:20:                                     ; preds = %17, %11
  %21 = tail call i32 @luaK_jump(%struct.FuncState* nonnull %3) #9
  %22 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %7, i64 0, i32 1
  %23 = load i32, i32* %22, align 8, !tbaa !93
  tail call void @luaK_patchlist(%struct.FuncState* nonnull %3, i32 %21, i32 %23) #9
  br label %24

; <label>:24:                                     ; preds = %20, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @exprstat(%struct.LexState*) unnamed_addr #0 {
  %2 = alloca %struct.LHS_assign, align 8
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !35
  %5 = bitcast %struct.LHS_assign* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #9
  %6 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %2, i64 0, i32 1
  call fastcc void @suffixedexp(%struct.LexState* %0, %struct.expdesc* nonnull %6)
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !63
  switch i32 %8, label %11 [
    i32 61, label %9
    i32 44, label %9
  ]

; <label>:9:                                      ; preds = %1, %1
  %10 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %2, i64 0, i32 0
  store %struct.LHS_assign* null, %struct.LHS_assign** %10, align 8, !tbaa !94
  call fastcc void @restassign(%struct.LexState* nonnull %0, %struct.LHS_assign* nonnull %2, i32 1)
  br label %29

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 0
  %13 = load %struct.Proto*, %struct.Proto** %12, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 16
  %15 = load i32*, i32** %14, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %2, i64 0, i32 1, i32 1
  %17 = bitcast %union.anon.7* %16 to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !11
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %6, i64 0, i32 0
  %22 = load i32, i32* %21, align 8, !tbaa !96
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %25, label %24

; <label>:24:                                     ; preds = %11
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0)) #11
  unreachable

; <label>:25:                                     ; preds = %11
  %26 = load i32, i32* %20, align 4, !tbaa !87
  %27 = and i32 %26, 16777215
  %28 = or i32 %27, 16777216
  store i32 %28, i32* %20, align 4, !tbaa !87
  br label %29

; <label>:29:                                     ; preds = %25, %9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @test_then_block(%struct.LexState*, i32*) unnamed_addr #0 {
  %3 = alloca %struct.BlockCnt, align 8
  %4 = alloca %struct.TString*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.expdesc, align 8
  %7 = bitcast %struct.BlockCnt* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #9
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %9 = load %struct.FuncState*, %struct.FuncState** %8, align 8, !tbaa !35
  %10 = bitcast %struct.TString** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #9
  store %struct.TString* null, %struct.TString** %4, align 8, !tbaa !97
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #9
  store i32 -1, i32* %5, align 4, !tbaa !87
  %12 = bitcast %struct.expdesc* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #9
  tail call void @luaX_next(%struct.LexState* %0) #9
  call fastcc void @expr(%struct.LexState* %0, %struct.expdesc* nonnull %6)
  call fastcc void @checknext(%struct.LexState* %0, i32 275)
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %14 = load i32, i32* %13, align 4, !tbaa !84
  %15 = call fastcc i32 @issinglejump(%struct.LexState* %0, %struct.TString** nonnull %4, i32* nonnull %5)
  %16 = icmp eq i32 %15, 0
  %17 = load %struct.FuncState*, %struct.FuncState** %8, align 8, !tbaa !35
  br i1 %16, label %36, label %18

; <label>:18:                                     ; preds = %2
  call void @luaK_goiffalse(%struct.FuncState* %17, %struct.expdesc* nonnull %6) #9
  call fastcc void @enterblock(%struct.FuncState* %9, %struct.BlockCnt* nonnull %3, i8 zeroext 0)
  %19 = load %struct.TString*, %struct.TString** %4, align 8, !tbaa !97
  %20 = icmp eq %struct.TString* %19, null
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %6, i64 0, i32 2
  %22 = load i32, i32* %21, align 8, !tbaa !51
  br i1 %20, label %24, label %23

; <label>:23:                                     ; preds = %18
  call fastcc void @newgotoentry(%struct.LexState* nonnull %0, %struct.TString* nonnull %19, i32 %14, i32 %22)
  br label %26

; <label>:24:                                     ; preds = %18
  %25 = load i32, i32* %5, align 4, !tbaa !87
  call void @luaK_patchlist(%struct.FuncState* %9, i32 %22, i32 %25) #9
  br label %26

; <label>:26:                                     ; preds = %24, %23
  br label %27

; <label>:27:                                     ; preds = %26, %27
  %28 = call fastcc i32 @testnext(%struct.LexState* %0, i32 59)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %27

; <label>:30:                                     ; preds = %27
  %31 = call fastcc i32 @block_follow(%struct.LexState* %0, i32 0)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

; <label>:33:                                     ; preds = %30
  call fastcc void @leaveblock(%struct.FuncState* %9)
  br label %48

; <label>:34:                                     ; preds = %30
  %35 = call i32 @luaK_jump(%struct.FuncState* %9) #9
  br label %39

; <label>:36:                                     ; preds = %2
  call void @luaK_goiftrue(%struct.FuncState* %17, %struct.expdesc* nonnull %6) #9
  call fastcc void @enterblock(%struct.FuncState* %9, %struct.BlockCnt* nonnull %3, i8 zeroext 0)
  %37 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %6, i64 0, i32 3
  %38 = load i32, i32* %37, align 4, !tbaa !53
  br label %39

; <label>:39:                                     ; preds = %36, %34
  %40 = phi i32 [ %35, %34 ], [ %38, %36 ]
  call fastcc void @statlist(%struct.LexState* %0)
  call fastcc void @leaveblock(%struct.FuncState* %9)
  %41 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %42 = load i32, i32* %41, align 8, !tbaa !63
  %43 = and i32 %42, -2
  %44 = icmp eq i32 %43, 260
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %39
  %46 = call i32 @luaK_jump(%struct.FuncState* %9) #9
  call void @luaK_concat(%struct.FuncState* %9, i32* %1, i32 %46) #9
  br label %47

; <label>:47:                                     ; preds = %39, %45
  call void @luaK_patchtohere(%struct.FuncState* %9, i32 %40) #9
  br label %48

; <label>:48:                                     ; preds = %47, %33
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #9
  ret void
}

declare hidden void @luaK_patchtohere(%struct.FuncState*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @expr(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = tail call fastcc i32 @subexpr(%struct.LexState* %0, %struct.expdesc* %1, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @checknext(%struct.LexState*, i32) unnamed_addr #0 {
  tail call fastcc void @check(%struct.LexState* %0, i32 %1)
  tail call void @luaX_next(%struct.LexState* %0) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @issinglejump(%struct.LexState*, %struct.TString** nocapture, i32* nocapture) unnamed_addr #0 {
  %4 = tail call fastcc i32 @testnext(%struct.LexState* %0, i32 258)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %8 = load %struct.lua_State*, %struct.lua_State** %7, align 8, !tbaa !57
  %9 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #9
  store %struct.TString* %9, %struct.TString** %1, align 8, !tbaa !97
  br label %36

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !63
  %13 = icmp eq i32 %12, 266
  br i1 %13, label %14, label %36

; <label>:14:                                     ; preds = %10
  %15 = tail call i32 @luaX_lookahead(%struct.LexState* nonnull %0) #9
  %16 = icmp eq i32 %15, 292
  br i1 %16, label %17, label %36

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, i32 1
  %19 = bitcast %union.SemInfo* %18 to %struct.TString**
  %20 = load %struct.TString*, %struct.TString** %19, align 8, !tbaa !11
  %21 = tail call fastcc %struct.Labeldesc* @findlabel(%struct.LexState* nonnull %0, %struct.TString* %20)
  %22 = icmp eq %struct.Labeldesc* %21, null
  br i1 %22, label %34, label %23

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %25 = load %struct.FuncState*, %struct.FuncState** %24, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %25, i64 0, i32 13
  %27 = load i8, i8* %26, align 2, !tbaa !64
  %28 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %21, i64 0, i32 3
  %29 = load i8, i8* %28, align 8, !tbaa !91
  %30 = icmp ugt i8 %27, %29
  br i1 %30, label %36, label %31

; <label>:31:                                     ; preds = %23
  %32 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %21, i64 0, i32 1
  %33 = load i32, i32* %32, align 8, !tbaa !93
  store i32 %33, i32* %2, align 4, !tbaa !87
  br label %35

; <label>:34:                                     ; preds = %17
  store %struct.TString* %20, %struct.TString** %1, align 8, !tbaa !97
  br label %35

; <label>:35:                                     ; preds = %34, %31
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %36

; <label>:36:                                     ; preds = %35, %23, %10, %14, %6
  %37 = phi i32 [ 1, %6 ], [ 0, %14 ], [ 0, %10 ], [ 1, %35 ], [ 0, %23 ]
  ret i32 %37
}

declare hidden void @luaK_goiffalse(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @newgotoentry(%struct.LexState* nocapture readonly, %struct.TString*, i32, i32) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %6 = load %struct.Dyndata*, %struct.Dyndata** %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %6, i64 0, i32 1
  %8 = tail call fastcc i32 @newlabelentry(%struct.LexState* %0, %struct.Labellist* nonnull %7, %struct.TString* %1, i32 %2, i32 %3)
  ret void
}

declare hidden void @luaK_patchlist(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @leaveblock(%struct.FuncState*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3
  %3 = load %struct.BlockCnt*, %struct.BlockCnt** %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %5 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !37
  %6 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 5
  %7 = load i8, i8* %6, align 2, !tbaa !76
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 6
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !tbaa !57
  %12 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #9
  %13 = tail call fastcc i32 @createlabel(%struct.LexState* %5, %struct.TString* %12, i32 0, i32 0)
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
  %29 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 0
  %30 = bitcast %struct.BlockCnt* %3 to i64*
  %31 = load i64, i64* %30, align 8, !tbaa !83
  %32 = bitcast %struct.BlockCnt** %2 to i64*
  store i64 %31, i64* %32, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 3
  %34 = load i8, i8* %33, align 8, !tbaa !78
  %35 = zext i8 %34 to i32
  tail call fastcc void @removevars(%struct.FuncState* nonnull %0, i32 %35)
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %37 = load i8, i8* %36, align 2, !tbaa !64
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  store i8 %37, i8* %38, align 4, !tbaa !85
  %39 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 1
  %40 = load i32, i32* %39, align 8, !tbaa !79
  %41 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 10
  %42 = load %struct.Dyndata*, %struct.Dyndata** %41, align 8, !tbaa !27
  %43 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %42, i64 0, i32 2, i32 1
  store i32 %40, i32* %43, align 8, !tbaa !28
  %44 = load %struct.BlockCnt*, %struct.BlockCnt** %29, align 8, !tbaa !83
  %45 = icmp eq %struct.BlockCnt* %44, null
  br i1 %45, label %47, label %46

; <label>:46:                                     ; preds = %28
  tail call fastcc void @movegotosout(%struct.FuncState* nonnull %0, %struct.BlockCnt* nonnull %3)
  br label %58

; <label>:47:                                     ; preds = %28
  %48 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 2
  %49 = load i32, i32* %48, align 4, !tbaa !80
  %50 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %42, i64 0, i32 1, i32 1
  %51 = load i32, i32* %50, align 8, !tbaa !32
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %58

; <label>:53:                                     ; preds = %47
  %54 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %42, i64 0, i32 1, i32 0
  %55 = load %struct.Labeldesc*, %struct.Labeldesc** %54, align 8, !tbaa !98
  %56 = sext i32 %49 to i64
  %57 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %55, i64 %56
  tail call fastcc void @undefgoto(%struct.LexState* nonnull %5, %struct.Labeldesc* %57) #10
  unreachable

; <label>:58:                                     ; preds = %47, %46
  ret void
}

declare hidden i32 @luaK_jump(%struct.FuncState*) local_unnamed_addr #2

declare hidden void @luaK_goiftrue(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_concat(%struct.FuncState*, i32*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @subexpr(%struct.LexState*, %struct.expdesc*, i32) unnamed_addr #0 {
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %6 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !tbaa !57
  tail call void @luaE_enterCcall(%struct.lua_State* %6) #9
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !63
  %9 = tail call fastcc i32 @getunopr(i32 %8)
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %17, label %11

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %13 = load i32, i32* %12, align 4, !tbaa !84
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %14 = tail call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 12)
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %16 = load %struct.FuncState*, %struct.FuncState** %15, align 8, !tbaa !35
  tail call void @luaK_prefix(%struct.FuncState* %16, i32 %9, %struct.expdesc* %1, i32 %13) #9
  br label %18

; <label>:17:                                     ; preds = %3
  tail call fastcc void @simpleexp(%struct.LexState* nonnull %0, %struct.expdesc* %1)
  br label %18

; <label>:18:                                     ; preds = %17, %11
  %19 = load i32, i32* %7, align 8, !tbaa !63
  %20 = tail call fastcc i32 @getbinopr(i32 %19)
  %21 = icmp eq i32 %20, 21
  br i1 %21, label %42, label %22

; <label>:22:                                     ; preds = %18
  %23 = bitcast %struct.expdesc* %4 to i8*
  %24 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %26

; <label>:26:                                     ; preds = %22, %33
  %27 = phi i32 [ %20, %22 ], [ %39, %33 ]
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [21 x %struct.anon.9], [21 x %struct.anon.9]* @priority, i64 0, i64 %28, i32 0
  %30 = load i8, i8* %29, align 2, !tbaa !99
  %31 = zext i8 %30 to i32
  %32 = icmp sgt i32 %31, %2
  br i1 %32, label %33, label %42

; <label>:33:                                     ; preds = %26
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %23) #9
  %34 = load i32, i32* %24, align 4, !tbaa !84
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  %35 = load %struct.FuncState*, %struct.FuncState** %25, align 8, !tbaa !35
  call void @luaK_infix(%struct.FuncState* %35, i32 %27, %struct.expdesc* %1) #9
  %36 = getelementptr inbounds [21 x %struct.anon.9], [21 x %struct.anon.9]* @priority, i64 0, i64 %28, i32 1
  %37 = load i8, i8* %36, align 1, !tbaa !101
  %38 = zext i8 %37 to i32
  %39 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 %38)
  %40 = load %struct.FuncState*, %struct.FuncState** %25, align 8, !tbaa !35
  call void @luaK_posfix(%struct.FuncState* %40, i32 %27, %struct.expdesc* %1, %struct.expdesc* nonnull %4, i32 %34) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %23) #9
  %41 = icmp eq i32 %39, 21
  br i1 %41, label %42, label %26

; <label>:42:                                     ; preds = %26, %33, %18
  %43 = phi i32 [ 21, %18 ], [ 21, %33 ], [ %27, %26 ]
  %44 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !tbaa !57
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i64 0, i32 19
  %46 = load i32, i32* %45, align 8, !tbaa !86
  %47 = add i32 %46, -1
  store i32 %47, i32* %45, align 8, !tbaa !86
  ret i32 %43
}

; Function Attrs: norecurse nounwind readnone uwtable
define internal fastcc i32 @getunopr(i32) unnamed_addr #7 {
  switch i32 %0, label %5 [
    i32 271, label %6
    i32 45, label %2
    i32 126, label %3
    i32 35, label %4
  ]

; <label>:2:                                      ; preds = %1
  br label %6

; <label>:3:                                      ; preds = %1
  br label %6

; <label>:4:                                      ; preds = %1
  br label %6

; <label>:5:                                      ; preds = %1
  br label %6

; <label>:6:                                      ; preds = %1, %5, %4, %3, %2
  %7 = phi i32 [ 4, %5 ], [ 3, %4 ], [ 1, %3 ], [ 0, %2 ], [ 2, %1 ]
  ret i32 %7
}

declare hidden void @luaK_prefix(%struct.FuncState*, i32, %struct.expdesc*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @simpleexp(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !63
  switch i32 %4, label %37 [
    i32 290, label %5
    i32 291, label %10
    i32 293, label %15
    i32 270, label %19
    i32 276, label %20
    i32 263, label %21
    i32 281, label %22
    i32 123, label %33
    i32 265, label %34
  ]

; <label>:5:                                      ; preds = %2
  tail call fastcc void @init_exp(%struct.expdesc* %1, i32 5, i32 0)
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, i32 0
  %7 = bitcast double* %6 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  store i64 %8, i64* %9, align 8, !tbaa !11
  br label %38

; <label>:10:                                     ; preds = %2
  tail call fastcc void @init_exp(%struct.expdesc* %1, i32 6, i32 0)
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %12 = bitcast %union.SemInfo* %11 to i64*
  %13 = load i64, i64* %12, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  store i64 %13, i64* %14, align 8, !tbaa !11
  br label %38

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %17 = bitcast %union.SemInfo* %16 to %struct.TString**
  %18 = load %struct.TString*, %struct.TString** %17, align 8, !tbaa !11
  tail call fastcc void @codestring(%struct.LexState* nonnull %0, %struct.expdesc* %1, %struct.TString* %18)
  br label %38

; <label>:19:                                     ; preds = %2
  tail call fastcc void @init_exp(%struct.expdesc* %1, i32 1, i32 0)
  br label %38

; <label>:20:                                     ; preds = %2
  tail call fastcc void @init_exp(%struct.expdesc* %1, i32 2, i32 0)
  br label %38

; <label>:21:                                     ; preds = %2
  tail call fastcc void @init_exp(%struct.expdesc* %1, i32 3, i32 0)
  br label %38

; <label>:22:                                     ; preds = %2
  %23 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %24 = load %struct.FuncState*, %struct.FuncState** %23, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %24, i64 0, i32 0
  %26 = load %struct.Proto*, %struct.Proto** %25, align 8, !tbaa !19
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i64 0, i32 4
  %28 = load i8, i8* %27, align 1, !tbaa !50
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %22
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0)) #11
  unreachable

; <label>:31:                                     ; preds = %22
  %32 = tail call i32 @luaK_codeABCk(%struct.FuncState* %24, i32 81, i32 0, i32 0, i32 1, i32 0) #9
  tail call fastcc void @init_exp(%struct.expdesc* %1, i32 17, i32 %32)
  br label %38

; <label>:33:                                     ; preds = %2
  tail call fastcc void @constructor(%struct.LexState* nonnull %0, %struct.expdesc* %1)
  br label %39

; <label>:34:                                     ; preds = %2
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %35 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %36 = load i32, i32* %35, align 4, !tbaa !84
  tail call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 0, i32 %36)
  br label %39

; <label>:37:                                     ; preds = %2
  tail call fastcc void @suffixedexp(%struct.LexState* nonnull %0, %struct.expdesc* %1)
  br label %39

; <label>:38:                                     ; preds = %31, %21, %20, %19, %15, %10, %5
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %39

; <label>:39:                                     ; preds = %38, %37, %34, %33
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define internal fastcc i32 @getbinopr(i32) unnamed_addr #7 {
  switch i32 %0, label %22 [
    i32 43, label %23
    i32 45, label %2
    i32 42, label %3
    i32 37, label %4
    i32 94, label %5
    i32 47, label %6
    i32 279, label %7
    i32 38, label %8
    i32 124, label %9
    i32 126, label %10
    i32 286, label %11
    i32 287, label %12
    i32 280, label %13
    i32 285, label %14
    i32 282, label %15
    i32 60, label %16
    i32 284, label %17
    i32 62, label %18
    i32 283, label %19
    i32 257, label %20
    i32 272, label %21
  ]

; <label>:2:                                      ; preds = %1
  br label %23

; <label>:3:                                      ; preds = %1
  br label %23

; <label>:4:                                      ; preds = %1
  br label %23

; <label>:5:                                      ; preds = %1
  br label %23

; <label>:6:                                      ; preds = %1
  br label %23

; <label>:7:                                      ; preds = %1
  br label %23

; <label>:8:                                      ; preds = %1
  br label %23

; <label>:9:                                      ; preds = %1
  br label %23

; <label>:10:                                     ; preds = %1
  br label %23

; <label>:11:                                     ; preds = %1
  br label %23

; <label>:12:                                     ; preds = %1
  br label %23

; <label>:13:                                     ; preds = %1
  br label %23

; <label>:14:                                     ; preds = %1
  br label %23

; <label>:15:                                     ; preds = %1
  br label %23

; <label>:16:                                     ; preds = %1
  br label %23

; <label>:17:                                     ; preds = %1
  br label %23

; <label>:18:                                     ; preds = %1
  br label %23

; <label>:19:                                     ; preds = %1
  br label %23

; <label>:20:                                     ; preds = %1
  br label %23

; <label>:21:                                     ; preds = %1
  br label %23

; <label>:22:                                     ; preds = %1
  br label %23

; <label>:23:                                     ; preds = %1, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %24 = phi i32 [ 21, %22 ], [ 20, %21 ], [ 19, %20 ], [ 18, %19 ], [ 17, %18 ], [ 15, %17 ], [ 14, %16 ], [ 13, %15 ], [ 16, %14 ], [ 12, %13 ], [ 11, %12 ], [ 10, %11 ], [ 9, %10 ], [ 8, %9 ], [ 7, %8 ], [ 6, %7 ], [ 5, %6 ], [ 4, %5 ], [ 3, %4 ], [ 2, %3 ], [ 1, %2 ], [ 0, %1 ]
  ret i32 %24
}

declare hidden void @luaK_infix(%struct.FuncState*, i32, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_posfix(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @codestring(%struct.LexState* nocapture readonly, %struct.expdesc* nocapture, %struct.TString*) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !35
  %6 = tail call i32 @luaK_stringK(%struct.FuncState* %5, %struct.TString* %2) #9
  tail call fastcc void @init_exp(%struct.expdesc* %1, i32 4, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @constructor(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = alloca %struct.ConsControl, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %7 = load i32, i32* %6, align 4, !tbaa !84
  %8 = tail call i32 @luaK_codeABCk(%struct.FuncState* %5, i32 17, i32 0, i32 0, i32 0, i32 0) #9
  %9 = bitcast %struct.ConsControl* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #9
  %10 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 4
  store i32 0, i32* %10, align 8, !tbaa !102
  %11 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 2
  store i32 0, i32* %11, align 8, !tbaa !104
  %12 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 3
  store i32 0, i32* %12, align 4, !tbaa !105
  %13 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 1
  store %struct.expdesc* %1, %struct.expdesc** %13, align 8, !tbaa !106
  tail call fastcc void @init_exp(%struct.expdesc* %1, i32 15, i32 %8)
  %14 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0
  call fastcc void @init_exp(%struct.expdesc* nonnull %14, i32 0, i32 0)
  %15 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !35
  tail call void @luaK_exp2nextreg(%struct.FuncState* %15, %struct.expdesc* %1) #9
  tail call fastcc void @checknext(%struct.LexState* %0, i32 123)
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %17 = load i32, i32* %16, align 8, !tbaa !63
  %18 = icmp eq i32 %17, 125
  br i1 %18, label %29, label %19

; <label>:19:                                     ; preds = %2
  br label %23

; <label>:20:                                     ; preds = %23, %26
  %21 = load i32, i32* %16, align 8, !tbaa !63
  %22 = icmp eq i32 %21, 125
  br i1 %22, label %29, label %23

; <label>:23:                                     ; preds = %19, %20
  call fastcc void @closelistfield(%struct.FuncState* %5, %struct.ConsControl* nonnull %3)
  call fastcc void @field(%struct.LexState* nonnull %0, %struct.ConsControl* nonnull %3)
  %24 = call fastcc i32 @testnext(%struct.LexState* nonnull %0, i32 44)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %20

; <label>:26:                                     ; preds = %23
  %27 = call fastcc i32 @testnext(%struct.LexState* nonnull %0, i32 59)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %20

; <label>:29:                                     ; preds = %20, %26, %2
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 125, i32 123, i32 %7)
  call fastcc void @lastlistfield(%struct.FuncState* %5, %struct.ConsControl* nonnull %3)
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0
  %31 = load %struct.Proto*, %struct.Proto** %30, align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 16
  %33 = load i32*, i32** %32, align 8, !tbaa !65
  %34 = sext i32 %8 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !87
  %37 = and i32 %36, -16711681
  %38 = load i32, i32* %12, align 4, !tbaa !105
  %39 = call i32 @luaO_int2fb(i32 %38) #9
  %40 = shl i32 %39, 16
  %41 = and i32 %40, 16711680
  %42 = or i32 %41, %37
  %43 = load %struct.Proto*, %struct.Proto** %30, align 8, !tbaa !19
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %43, i64 0, i32 16
  %45 = load i32*, i32** %44, align 8, !tbaa !65
  %46 = getelementptr inbounds i32, i32* %45, i64 %34
  store i32 %42, i32* %46, align 4, !tbaa !87
  %47 = and i32 %42, 16777215
  %48 = load i32, i32* %11, align 8, !tbaa !104
  %49 = call i32 @luaO_int2fb(i32 %48) #9
  %50 = shl i32 %49, 24
  %51 = or i32 %50, %47
  %52 = load %struct.Proto*, %struct.Proto** %30, align 8, !tbaa !19
  %53 = getelementptr inbounds %struct.Proto, %struct.Proto* %52, i64 0, i32 16
  %54 = load i32*, i32** %53, align 8, !tbaa !65
  %55 = getelementptr inbounds i32, i32* %54, i64 %34
  store i32 %51, i32* %55, align 4, !tbaa !87
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @body(%struct.LexState*, %struct.expdesc*, i32, i32) unnamed_addr #0 {
  %5 = alloca %struct.FuncState, align 8
  %6 = alloca %struct.BlockCnt, align 8
  %7 = bitcast %struct.FuncState* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %7) #9
  %8 = bitcast %struct.BlockCnt* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #9
  %9 = tail call fastcc %struct.Proto* @addprototype(%struct.LexState* %0)
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0
  store %struct.Proto* %9, %struct.Proto** %10, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 13
  store i32 %3, i32* %11, align 4, !tbaa !39
  call fastcc void @open_func(%struct.LexState* %0, %struct.FuncState* nonnull %5, %struct.BlockCnt* nonnull %6)
  call fastcc void @checknext(%struct.LexState* %0, i32 40)
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %4
  %14 = call %struct.TString* @luaX_newstring(%struct.LexState* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 4) #9
  call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %14)
  call fastcc void @adjustlocalvars(%struct.LexState* %0, i32 1)
  br label %15

; <label>:15:                                     ; preds = %4, %13
  call fastcc void @parlist(%struct.LexState* %0)
  call fastcc void @checknext(%struct.LexState* %0, i32 41)
  call fastcc void @statlist(%struct.LexState* %0)
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %17 = load i32, i32* %16, align 4, !tbaa !84
  %18 = load %struct.Proto*, %struct.Proto** %10, align 8, !tbaa !19
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i64 0, i32 14
  store i32 %17, i32* %19, align 8, !tbaa !107
  call fastcc void @check_match(%struct.LexState* %0, i32 262, i32 265, i32 %3)
  call fastcc void @codeclosure(%struct.LexState* %0, %struct.expdesc* %1)
  call fastcc void @close_func(%struct.LexState* %0)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %7) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @suffixedexp(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %8 = load i32, i32* %7, align 4, !tbaa !84
  tail call fastcc void @primaryexp(%struct.LexState* %0, %struct.expdesc* %1)
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %10 = bitcast %struct.expdesc* %3 to i8*
  %11 = bitcast %struct.expdesc* %4 to i8*
  br label %12

; <label>:12:                                     ; preds = %18, %2
  %13 = load i32, i32* %9, align 8, !tbaa !63
  switch i32 %13, label %19 [
    i32 46, label %14
    i32 91, label %15
    i32 58, label %16
    i32 40, label %17
    i32 293, label %17
    i32 123, label %17
  ]

; <label>:14:                                     ; preds = %12
  call fastcc void @fieldsel(%struct.LexState* nonnull %0, %struct.expdesc* %1)
  br label %18

; <label>:15:                                     ; preds = %12
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #9
  call void @luaK_exp2anyregup(%struct.FuncState* %6, %struct.expdesc* %1) #9
  call fastcc void @yindex(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3)
  call void @luaK_indexed(%struct.FuncState* %6, %struct.expdesc* %1, %struct.expdesc* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #9
  br label %18

; <label>:16:                                     ; preds = %12
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #9
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  call fastcc void @codename(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4)
  call void @luaK_self(%struct.FuncState* %6, %struct.expdesc* %1, %struct.expdesc* nonnull %4) #9
  call fastcc void @funcargs(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 %8)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #9
  br label %18

; <label>:17:                                     ; preds = %12, %12, %12
  call void @luaK_exp2nextreg(%struct.FuncState* %6, %struct.expdesc* %1) #9
  call fastcc void @funcargs(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 %8)
  br label %18

; <label>:18:                                     ; preds = %17, %16, %15, %14
  br label %12

; <label>:19:                                     ; preds = %12
  ret void
}

declare hidden i32 @luaK_stringK(%struct.FuncState*, %struct.TString*) local_unnamed_addr #2

declare hidden void @luaK_exp2nextreg(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @closelistfield(%struct.FuncState*, %struct.ConsControl*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !108
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 0
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* %7) #9
  store i32 0, i32* %3, align 8, !tbaa !108
  %8 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 4
  %9 = load i32, i32* %8, align 8, !tbaa !102
  %10 = icmp eq i32 %9, 50
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 1
  %13 = load %struct.expdesc*, %struct.expdesc** %12, align 8, !tbaa !106
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %13, i64 0, i32 1
  %15 = bitcast %union.anon.7* %14 to i32*
  %16 = load i32, i32* %15, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 3
  %18 = load i32, i32* %17, align 4, !tbaa !105
  tail call void @luaK_setlist(%struct.FuncState* %0, i32 %16, i32 %18, i32 %9) #9
  store i32 0, i32* %8, align 8, !tbaa !102
  br label %19

; <label>:19:                                     ; preds = %2, %11, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @field(%struct.LexState*, %struct.ConsControl*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !63
  switch i32 %4, label %11 [
    i32 292, label %5
    i32 91, label %10
  ]

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @luaX_lookahead(%struct.LexState* nonnull %0) #9
  %7 = icmp eq i32 %6, 61
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %5
  tail call fastcc void @listfield(%struct.LexState* nonnull %0, %struct.ConsControl* %1)
  br label %12

; <label>:9:                                      ; preds = %5
  tail call fastcc void @recfield(%struct.LexState* nonnull %0, %struct.ConsControl* %1)
  br label %12

; <label>:10:                                     ; preds = %2
  tail call fastcc void @recfield(%struct.LexState* nonnull %0, %struct.ConsControl* %1)
  br label %12

; <label>:11:                                     ; preds = %2
  tail call fastcc void @listfield(%struct.LexState* nonnull %0, %struct.ConsControl* %1)
  br label %12

; <label>:12:                                     ; preds = %8, %9, %11, %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lastlistfield(%struct.FuncState*, %struct.ConsControl*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 4
  %4 = load i32, i32* %3, align 8, !tbaa !102
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %30, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 0
  %8 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !108
  switch i32 %9, label %20 [
    i32 16, label %10
    i32 17, label %10
    i32 0, label %21
  ]

; <label>:10:                                     ; preds = %6, %6
  tail call void @luaK_setreturns(%struct.FuncState* %0, %struct.expdesc* %7, i32 -1) #9
  %11 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 1
  %12 = load %struct.expdesc*, %struct.expdesc** %11, align 8, !tbaa !106
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i64 0, i32 1
  %14 = bitcast %union.anon.7* %13 to i32*
  %15 = load i32, i32* %14, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 3
  %17 = load i32, i32* %16, align 4, !tbaa !105
  tail call void @luaK_setlist(%struct.FuncState* %0, i32 %15, i32 %17, i32 -1) #9
  %18 = load i32, i32* %16, align 4, !tbaa !105
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %16, align 4, !tbaa !105
  br label %30

; <label>:20:                                     ; preds = %6
  tail call void @luaK_exp2nextreg(%struct.FuncState* %0, %struct.expdesc* %7) #9
  br label %21

; <label>:21:                                     ; preds = %6, %20
  %22 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 1
  %23 = load %struct.expdesc*, %struct.expdesc** %22, align 8, !tbaa !106
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %23, i64 0, i32 1
  %25 = bitcast %union.anon.7* %24 to i32*
  %26 = load i32, i32* %25, align 8, !tbaa !11
  %27 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 3
  %28 = load i32, i32* %27, align 4, !tbaa !105
  %29 = load i32, i32* %3, align 8, !tbaa !102
  tail call void @luaK_setlist(%struct.FuncState* %0, i32 %26, i32 %28, i32 %29) #9
  br label %30

; <label>:30:                                     ; preds = %2, %21, %10
  ret void
}

declare hidden i32 @luaO_int2fb(i32) local_unnamed_addr #2

declare hidden void @luaK_setlist(%struct.FuncState*, i32, i32, i32) local_unnamed_addr #2

declare hidden i32 @luaX_lookahead(%struct.LexState*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @listfield(%struct.LexState*, %struct.ConsControl*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 0
  tail call fastcc void @expr(%struct.LexState* %0, %struct.expdesc* %3)
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 3
  %7 = load i32, i32* %6, align 4, !tbaa !105
  tail call fastcc void @checklimit(%struct.FuncState* %5, i32 %7, i32 2147483647, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %8 = load i32, i32* %6, align 4, !tbaa !105
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %6, align 4, !tbaa !105
  %10 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 4
  %11 = load i32, i32* %10, align 8, !tbaa !102
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 8, !tbaa !102
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @recfield(%struct.LexState*, %struct.ConsControl* nocapture) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca %struct.expdesc, align 8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %7 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i64 0, i32 15
  %9 = load i8, i8* %8, align 4, !tbaa !85
  %10 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #9
  %11 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #9
  %12 = bitcast %struct.expdesc* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #9
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %14 = load i32, i32* %13, align 8, !tbaa !63
  %15 = icmp eq i32 %14, 292
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 2
  %18 = load i32, i32* %17, align 8, !tbaa !104
  tail call fastcc void @checklimit(%struct.FuncState* %7, i32 %18, i32 2147483647, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  call fastcc void @codename(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4)
  br label %20

; <label>:19:                                     ; preds = %2
  call fastcc void @yindex(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4)
  br label %20

; <label>:20:                                     ; preds = %19, %16
  %21 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 2
  %22 = load i32, i32* %21, align 8, !tbaa !104
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8, !tbaa !104
  call fastcc void @checknext(%struct.LexState* nonnull %0, i32 61)
  %24 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 1
  %25 = bitcast %struct.expdesc** %24 to i8**
  %26 = load i8*, i8** %25, align 8, !tbaa !106
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %10, i8* %26, i64 24, i32 8, i1 false), !tbaa.struct !109
  call void @luaK_indexed(%struct.FuncState* %7, %struct.expdesc* nonnull %3, %struct.expdesc* nonnull %4) #9
  call fastcc void @expr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %5)
  call void @luaK_storevar(%struct.FuncState* %7, %struct.expdesc* nonnull %3, %struct.expdesc* nonnull %5) #9
  store i8 %9, i8* %8, align 4, !tbaa !85
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codename(%struct.LexState*, %struct.expdesc* nocapture) unnamed_addr #0 {
  %3 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* %0)
  tail call fastcc void @codestring(%struct.LexState* %0, %struct.expdesc* %1, %struct.TString* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @yindex(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  tail call void @luaX_next(%struct.LexState* %0) #9
  tail call fastcc void @expr(%struct.LexState* %0, %struct.expdesc* %1)
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !35
  tail call void @luaK_exp2val(%struct.FuncState* %4, %struct.expdesc* %1) #9
  tail call fastcc void @checknext(%struct.LexState* %0, i32 93)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

declare hidden void @luaK_indexed(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_storevar(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_exp2val(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_setreturns(%struct.FuncState*, %struct.expdesc*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.Proto* @addprototype(%struct.LexState* nocapture readonly) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 8
  %9 = load i32, i32* %8, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 10
  %11 = load i32, i32* %10, align 8, !tbaa !115
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %30, label %13

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 17
  %15 = bitcast %struct.Proto*** %14 to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !69
  %17 = tail call i8* @luaM_growaux_(%struct.lua_State* %3, i8* %16, i32 %9, i32* nonnull %10, i32 8, i32 131071, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #9
  store i8* %17, i8** %15, align 8, !tbaa !69
  %18 = load i32, i32* %10, align 8, !tbaa !115
  %19 = icmp slt i32 %11, %18
  br i1 %19, label %20, label %30

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* %10, align 8, !tbaa !115
  %22 = sext i32 %11 to i64
  %23 = sext i32 %21 to i64
  br label %24

; <label>:24:                                     ; preds = %20, %24
  %25 = phi i64 [ %22, %20 ], [ %27, %24 ]
  %26 = load %struct.Proto**, %struct.Proto*** %14, align 8, !tbaa !69
  %27 = add nsw i64 %25, 1
  %28 = getelementptr inbounds %struct.Proto*, %struct.Proto** %26, i64 %25
  store %struct.Proto* null, %struct.Proto** %28, align 8, !tbaa !97
  %29 = icmp slt i64 %27, %23
  br i1 %29, label %24, label %30

; <label>:30:                                     ; preds = %24, %13, %1
  %31 = tail call %struct.Proto* @luaF_newproto(%struct.lua_State* %3) #9
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 17
  %33 = load %struct.Proto**, %struct.Proto*** %32, align 8, !tbaa !69
  %34 = load i32, i32* %8, align 8, !tbaa !44
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 8, !tbaa !44
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds %struct.Proto*, %struct.Proto** %33, i64 %36
  store %struct.Proto* %31, %struct.Proto** %37, align 8, !tbaa !97
  %38 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 2
  %39 = load i8, i8* %38, align 1, !tbaa !23
  %40 = and i8 %39, 32
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %50, label %42

; <label>:42:                                     ; preds = %30
  %43 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 2
  %44 = load i8, i8* %43, align 1, !tbaa !23
  %45 = and i8 %44, 24
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %50, label %47

; <label>:47:                                     ; preds = %42
  %48 = bitcast %struct.Proto* %7 to %struct.GCObject*
  %49 = bitcast %struct.Proto* %31 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* %3, %struct.GCObject* %48, %struct.GCObject* %49) #9
  br label %50

; <label>:50:                                     ; preds = %42, %30, %47
  ret %struct.Proto* %31
}

; Function Attrs: nounwind uwtable
define internal fastcc void @new_localvar(%struct.LexState* nocapture readonly, %struct.TString*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %6 = load %struct.Dyndata*, %struct.Dyndata** %5, align 8, !tbaa !27
  %7 = tail call fastcc i32 @registerlocalvar(%struct.LexState* %0, %struct.TString* %1)
  %8 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %6, i64 0, i32 0, i32 1
  %9 = load i32, i32* %8, align 8, !tbaa !33
  %10 = add nsw i32 %9, 1
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 10
  %12 = load i32, i32* %11, align 8, !tbaa !45
  %13 = sub i32 %10, %12
  tail call fastcc void @checklimit(%struct.FuncState* %4, i32 %13, i32 200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8, !tbaa !57
  %16 = bitcast %struct.Dyndata* %6 to i8**
  %17 = load i8*, i8** %16, align 8, !tbaa !116
  %18 = load i32, i32* %8, align 8, !tbaa !33
  %19 = add nsw i32 %18, 1
  %20 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %6, i64 0, i32 0, i32 2
  %21 = tail call i8* @luaM_growaux_(%struct.lua_State* %15, i8* %17, i32 %19, i32* nonnull %20, i32 2, i32 2147483647, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #9
  %22 = bitcast i8* %21 to %struct.Vardesc*
  store i8* %21, i8** %16, align 8, !tbaa !116
  %23 = trunc i32 %7 to i16
  %24 = load i32, i32* %8, align 8, !tbaa !33
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 8, !tbaa !33
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %22, i64 %26, i32 0
  store i16 %23, i16* %27, align 2, !tbaa !117
  ret void
}

declare hidden %struct.TString* @luaX_newstring(%struct.LexState*, i8*, i64) local_unnamed_addr #2

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @adjustlocalvars(%struct.LexState* nocapture readonly, i32) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 13
  %6 = load i8, i8* %5, align 2, !tbaa !64
  %7 = trunc i32 %1 to i8
  %8 = add i8 %6, %7
  store i8 %8, i8* %5, align 2, !tbaa !64
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %21, label %10

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 4
  %12 = zext i8 %8 to i32
  br label %13

; <label>:13:                                     ; preds = %10, %13
  %14 = phi i32 [ %1, %10 ], [ %19, %13 ]
  %15 = load i32, i32* %11, align 8, !tbaa !38
  %16 = sub nsw i32 %12, %14
  %17 = tail call fastcc %struct.LocVar* @getlocvar(%struct.FuncState* %4, i32 %16)
  %18 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %17, i64 0, i32 1
  store i32 %15, i32* %18, align 8, !tbaa !89
  %19 = add nsw i32 %14, -1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %13

; <label>:21:                                     ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @parlist(%struct.LexState*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %3 = load %struct.FuncState*, %struct.FuncState** %2, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %3, i64 0, i32 0
  %5 = load %struct.Proto*, %struct.Proto** %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %7 = load i32, i32* %6, align 8, !tbaa !63
  %8 = icmp eq i32 %7, 41
  br i1 %8, label %22, label %9

; <label>:9:                                      ; preds = %1
  br label %12

; <label>:10:                                     ; preds = %17
  %11 = load i32, i32* %6, align 8, !tbaa !63
  br label %12

; <label>:12:                                     ; preds = %9, %10
  %13 = phi i32 [ %11, %10 ], [ %7, %9 ]
  %14 = phi i32 [ %19, %10 ], [ 0, %9 ]
  switch i32 %13, label %15 [
    i32 292, label %17
    i32 281, label %16
  ]

; <label>:15:                                     ; preds = %12
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0)) #11
  unreachable

; <label>:16:                                     ; preds = %12
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %22

; <label>:17:                                     ; preds = %12
  %18 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0)
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %18)
  %19 = add nuw nsw i32 %14, 1
  %20 = tail call fastcc i32 @testnext(%struct.LexState* nonnull %0, i32 44)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %10

; <label>:22:                                     ; preds = %17, %16, %1
  %23 = phi i32 [ %14, %16 ], [ 0, %1 ], [ %19, %17 ]
  %24 = phi i1 [ false, %16 ], [ true, %1 ], [ true, %17 ]
  tail call fastcc void @adjustlocalvars(%struct.LexState* nonnull %0, i32 %23)
  %25 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %3, i64 0, i32 13
  %26 = load i8, i8* %25, align 2, !tbaa !64
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 3
  store i8 %26, i8* %27, align 2, !tbaa !119
  br i1 %24, label %30, label %28

; <label>:28:                                     ; preds = %22
  %29 = zext i8 %26 to i32
  tail call fastcc void @setvararg(%struct.FuncState* nonnull %3, i32 %29)
  br label %30

; <label>:30:                                     ; preds = %22, %28
  %31 = load i8, i8* %25, align 2, !tbaa !64
  %32 = zext i8 %31 to i32
  tail call void @luaK_reserveregs(%struct.FuncState* nonnull %3, i32 %32) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codeclosure(%struct.LexState* nocapture readonly, %struct.expdesc*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 1
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 8
  %8 = load i32, i32* %7, align 8, !tbaa !44
  %9 = add nsw i32 %8, -1
  %10 = tail call i32 @luaK_codeABx(%struct.FuncState* %6, i32 80, i32 0, i32 %9) #9
  tail call fastcc void @init_exp(%struct.expdesc* %1, i32 15, i32 %10)
  tail call void @luaK_exp2nextreg(%struct.FuncState* %6, %struct.expdesc* %1) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @registerlocalvar(%struct.LexState* nocapture readonly, %struct.TString*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 0
  %6 = load %struct.Proto*, %struct.Proto** %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i64 0, i32 11
  %8 = load i32, i32* %7, align 4, !tbaa !120
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %10 = load %struct.lua_State*, %struct.lua_State** %9, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i64 0, i32 21
  %12 = bitcast %struct.LocVar** %11 to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 12
  %15 = load i16, i16* %14, align 8, !tbaa !71
  %16 = sext i16 %15 to i32
  %17 = tail call i8* @luaM_growaux_(%struct.lua_State* %10, i8* %13, i32 %16, i32* nonnull %7, i32 16, i32 32767, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #9
  store i8* %17, i8** %12, align 8, !tbaa !70
  %18 = load i32, i32* %7, align 4, !tbaa !120
  %19 = icmp slt i32 %8, %18
  %20 = bitcast i8* %17 to %struct.LocVar*
  br i1 %19, label %21, label %32

; <label>:21:                                     ; preds = %2
  %22 = load i32, i32* %7, align 4, !tbaa !120
  %23 = load %struct.LocVar*, %struct.LocVar** %11, align 8, !tbaa !70
  %24 = sext i32 %8 to i64
  %25 = sext i32 %22 to i64
  br label %26

; <label>:26:                                     ; preds = %21, %26
  %27 = phi i64 [ %24, %21 ], [ %29, %26 ]
  %28 = phi %struct.LocVar* [ %20, %21 ], [ %23, %26 ]
  %29 = add nsw i64 %27, 1
  %30 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %28, i64 %27, i32 0
  store %struct.TString* null, %struct.TString** %30, align 8, !tbaa !121
  %31 = icmp slt i64 %29, %25
  br i1 %31, label %26, label %32

; <label>:32:                                     ; preds = %26, %2
  %33 = phi %struct.LocVar* [ %20, %2 ], [ %23, %26 ]
  %34 = load i16, i16* %14, align 8, !tbaa !71
  %35 = sext i16 %34 to i64
  %36 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %33, i64 %35, i32 0
  store %struct.TString* %1, %struct.TString** %36, align 8, !tbaa !121
  %37 = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i64 0, i32 2
  %38 = load i8, i8* %37, align 1, !tbaa !23
  %39 = and i8 %38, 32
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %50, label %41

; <label>:41:                                     ; preds = %32
  %42 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 2
  %43 = load i8, i8* %42, align 1, !tbaa !24
  %44 = and i8 %43, 24
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

; <label>:46:                                     ; preds = %41
  %47 = load %struct.lua_State*, %struct.lua_State** %9, align 8, !tbaa !57
  %48 = bitcast %struct.Proto* %6 to %struct.GCObject*
  %49 = bitcast %struct.TString* %1 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* %47, %struct.GCObject* %48, %struct.GCObject* %49) #9
  br label %50

; <label>:50:                                     ; preds = %41, %32, %46
  %51 = load i16, i16* %14, align 8, !tbaa !71
  %52 = add i16 %51, 1
  store i16 %52, i16* %14, align 8, !tbaa !71
  %53 = sext i16 %51 to i32
  ret i32 %53
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal fastcc %struct.LocVar* @getlocvar(%struct.FuncState* nocapture readonly, i32) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %4 = load %struct.LexState*, %struct.LexState** %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i64 0, i32 10
  %6 = load %struct.Dyndata*, %struct.Dyndata** %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %6, i64 0, i32 0, i32 0
  %8 = load %struct.Vardesc*, %struct.Vardesc** %7, align 8, !tbaa !116
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 10
  %10 = load i32, i32* %9, align 8, !tbaa !45
  %11 = add nsw i32 %10, %1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %8, i64 %12, i32 0
  %14 = load i16, i16* %13, align 2, !tbaa !117
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %16 = load %struct.Proto*, %struct.Proto** %15, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 21
  %18 = load %struct.LocVar*, %struct.LocVar** %17, align 8, !tbaa !70
  %19 = sext i16 %14 to i64
  %20 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %18, i64 %19
  ret %struct.LocVar* %20
}

declare hidden void @luaK_reserveregs(%struct.FuncState*, i32) local_unnamed_addr #2

declare hidden i32 @luaK_codeABx(%struct.FuncState*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @primaryexp(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !63
  switch i32 %4, label %11 [
    i32 40, label %5
    i32 292, label %10
  ]

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %7 = load i32, i32* %6, align 4, !tbaa !84
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  tail call fastcc void @expr(%struct.LexState* nonnull %0, %struct.expdesc* %1)
  tail call fastcc void @check_match(%struct.LexState* nonnull %0, i32 41, i32 40, i32 %7)
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %9 = load %struct.FuncState*, %struct.FuncState** %8, align 8, !tbaa !35
  tail call void @luaK_dischargevars(%struct.FuncState* %9, %struct.expdesc* %1) #9
  br label %12

; <label>:10:                                     ; preds = %2
  tail call fastcc void @singlevar(%struct.LexState* nonnull %0, %struct.expdesc* %1)
  br label %12

; <label>:11:                                     ; preds = %2
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0)) #11
  unreachable

; <label>:12:                                     ; preds = %10, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fieldsel(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !35
  %6 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9
  tail call void @luaK_exp2anyregup(%struct.FuncState* %5, %struct.expdesc* %1) #9
  tail call void @luaX_next(%struct.LexState* %0) #9
  call fastcc void @codename(%struct.LexState* %0, %struct.expdesc* nonnull %3)
  call void @luaK_indexed(%struct.FuncState* %5, %struct.expdesc* %1, %struct.expdesc* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9
  ret void
}

declare hidden void @luaK_exp2anyregup(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_self(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @funcargs(%struct.LexState*, %struct.expdesc* nocapture, i32) unnamed_addr #0 {
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !35
  %7 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #9
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !63
  switch i32 %9, label %23 [
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
  store i32 0, i32* %14, align 8, !tbaa !54
  br label %17

; <label>:15:                                     ; preds = %10
  %16 = call fastcc i32 @explist(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4)
  call void @luaK_setreturns(%struct.FuncState* %6, %struct.expdesc* nonnull %4, i32 -1) #9
  br label %17

; <label>:17:                                     ; preds = %15, %13
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 41, i32 40, i32 %2)
  br label %24

; <label>:18:                                     ; preds = %3
  call fastcc void @constructor(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4)
  br label %24

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %21 = bitcast %union.SemInfo* %20 to %struct.TString**
  %22 = load %struct.TString*, %struct.TString** %21, align 8, !tbaa !11
  call fastcc void @codestring(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, %struct.TString* %22)
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %24

; <label>:23:                                     ; preds = %3
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0)) #11
  unreachable

; <label>:24:                                     ; preds = %19, %18, %17
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %26 = bitcast %union.anon.7* %25 to i32*
  %27 = load i32, i32* %26, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  %29 = load i32, i32* %28, align 8, !tbaa !54
  switch i32 %29, label %30 [
    i32 16, label %36
    i32 17, label %36
    i32 0, label %31
  ]

; <label>:30:                                     ; preds = %24
  call void @luaK_exp2nextreg(%struct.FuncState* %6, %struct.expdesc* nonnull %4) #9
  br label %31

; <label>:31:                                     ; preds = %24, %30
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 15
  %33 = load i8, i8* %32, align 4, !tbaa !85
  %34 = zext i8 %33 to i32
  %35 = sub i32 %34, %27
  br label %36

; <label>:36:                                     ; preds = %24, %24, %31
  %37 = phi i32 [ %35, %31 ], [ 0, %24 ], [ 0, %24 ]
  %38 = call i32 @luaK_codeABCk(%struct.FuncState* %6, i32 69, i32 %27, i32 %37, i32 2, i32 0) #9
  call fastcc void @init_exp(%struct.expdesc* nonnull %1, i32 16, i32 %38)
  call void @luaK_fixline(%struct.FuncState* %6, i32 %2) #9
  %39 = trunc i32 %27 to i8
  %40 = add i8 %39, 1
  %41 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 15
  store i8 %40, i8* %41, align 4, !tbaa !85
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #9
  ret void
}

declare hidden void @luaK_dischargevars(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @singlevar(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* %0)
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !35
  tail call fastcc void @singlevaraux(%struct.FuncState* %6, %struct.TString* %4, %struct.expdesc* %1, i32 1)
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !54
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %2
  %11 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #9
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 12
  %13 = load %struct.TString*, %struct.TString** %12, align 8, !tbaa !34
  tail call fastcc void @singlevaraux(%struct.FuncState* %6, %struct.TString* %13, %struct.expdesc* nonnull %1, i32 1)
  call fastcc void @codestring(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3, %struct.TString* %4)
  call void @luaK_indexed(%struct.FuncState* %6, %struct.expdesc* nonnull %1, %struct.expdesc* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #9
  br label %14

; <label>:14:                                     ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @singlevaraux(%struct.FuncState*, %struct.TString*, %struct.expdesc* nocapture, i32) unnamed_addr #0 {
  %5 = icmp eq %struct.FuncState* %0, null
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %4
  tail call fastcc void @init_exp(%struct.expdesc* %2, i32 0, i32 0)
  ret void

; <label>:7:                                      ; preds = %4
  %8 = tail call fastcc i32 @searchvar(%struct.FuncState* nonnull %0, %struct.TString* %1)
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %7
  tail call fastcc void @init_exp(%struct.expdesc* %2, i32 8, i32 %8)
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %12, label %26

; <label>:12:                                     ; preds = %10
  tail call fastcc void @markupval(%struct.FuncState* nonnull %0, i32 %8)
  br label %26

; <label>:13:                                     ; preds = %7
  %14 = tail call fastcc i32 @searchupvalue(%struct.FuncState* nonnull %0, %struct.TString* %1)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %24

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 1
  %18 = load %struct.FuncState*, %struct.FuncState** %17, align 8, !tbaa !36
  tail call fastcc void @singlevaraux(%struct.FuncState* %18, %struct.TString* %1, %struct.expdesc* %2, i32 0)
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %20 = load i32, i32* %19, align 8, !tbaa !54
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

; <label>:22:                                     ; preds = %16
  %23 = tail call fastcc i32 @newupvalue(%struct.FuncState* nonnull %0, %struct.TString* %1, %struct.expdesc* nonnull %2)
  br label %24

; <label>:24:                                     ; preds = %22, %13
  %25 = phi i32 [ %23, %22 ], [ %14, %13 ]
  tail call fastcc void @init_exp(%struct.expdesc* %2, i32 9, i32 %25)
  br label %26

; <label>:26:                                     ; preds = %12, %10, %24, %16
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal fastcc i32 @searchvar(%struct.FuncState* nocapture readonly, %struct.TString* readnone) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %4 = load i8, i8* %3, align 2, !tbaa !64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

; <label>:6:                                      ; preds = %2
  %7 = zext i8 %4 to i32
  br label %10

; <label>:8:                                      ; preds = %10
  %9 = icmp sgt i32 %11, 1
  br i1 %9, label %10, label %17

; <label>:10:                                     ; preds = %6, %8
  %11 = phi i32 [ %7, %6 ], [ %12, %8 ]
  %12 = add nsw i32 %11, -1
  %13 = tail call fastcc %struct.LocVar* @getlocvar(%struct.FuncState* %0, i32 %12)
  %14 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %13, i64 0, i32 0
  %15 = load %struct.TString*, %struct.TString** %14, align 8, !tbaa !121
  %16 = icmp eq %struct.TString* %15, %1
  br i1 %16, label %17, label %8

; <label>:17:                                     ; preds = %10, %8, %2
  %18 = phi i32 [ -1, %2 ], [ -1, %8 ], [ %12, %10 ]
  ret i32 %18
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @markupval(%struct.FuncState* nocapture, i32) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3
  br label %4

; <label>:4:                                      ; preds = %4, %2
  %5 = phi %struct.BlockCnt** [ %3, %2 ], [ %11, %4 ]
  %6 = load %struct.BlockCnt*, %struct.BlockCnt** %5, align 8, !tbaa !97
  %7 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 3
  %8 = load i8, i8* %7, align 8, !tbaa !78
  %9 = zext i8 %8 to i32
  %10 = icmp sgt i32 %9, %1
  %11 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 0
  br i1 %10, label %4, label %12

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 4
  store i8 1, i8* %13, align 1, !tbaa !81
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 17
  store i8 1, i8* %14, align 2, !tbaa !122
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal fastcc i32 @searchupvalue(%struct.FuncState* nocapture readonly, %struct.TString* readnone) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %4 = load %struct.Proto*, %struct.Proto** %3, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i64 0, i32 18
  %6 = load %struct.Upvaldesc*, %struct.Upvaldesc** %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14
  %8 = load i8, i8* %7, align 1, !tbaa !56
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

; <label>:10:                                     ; preds = %2
  br label %11

; <label>:11:                                     ; preds = %10, %16
  %12 = phi i64 [ %17, %16 ], [ 0, %10 ]
  %13 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %6, i64 %12, i32 0
  %14 = load %struct.TString*, %struct.TString** %13, align 8, !tbaa !59
  %15 = icmp eq %struct.TString* %14, %1
  br i1 %15, label %21, label %16

; <label>:16:                                     ; preds = %11
  %17 = add nuw nsw i64 %12, 1
  %18 = load i8, i8* %7, align 1, !tbaa !56
  %19 = zext i8 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %11, label %23

; <label>:21:                                     ; preds = %11
  %22 = trunc i64 %12 to i32
  br label %23

; <label>:23:                                     ; preds = %16, %21, %2
  %24 = phi i32 [ -1, %2 ], [ %22, %21 ], [ -1, %16 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @explist(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  tail call fastcc void @expr(%struct.LexState* %0, %struct.expdesc* %1)
  %3 = tail call fastcc i32 @testnext(%struct.LexState* %0, i32 44)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %7

; <label>:7:                                      ; preds = %5, %7
  %8 = phi i32 [ 1, %5 ], [ %10, %7 ]
  %9 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !35
  tail call void @luaK_exp2nextreg(%struct.FuncState* %9, %struct.expdesc* %1) #9
  tail call fastcc void @expr(%struct.LexState* %0, %struct.expdesc* %1)
  %10 = add nuw nsw i32 %8, 1
  %11 = tail call fastcc i32 @testnext(%struct.LexState* %0, i32 44)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %7

; <label>:13:                                     ; preds = %7, %2
  %14 = phi i32 [ 1, %2 ], [ %10, %7 ]
  ret i32 %14
}

declare hidden void @luaK_fixline(%struct.FuncState*, i32) local_unnamed_addr #2

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: norecurse nounwind readonly uwtable
define internal fastcc %struct.Labeldesc* @findlabel(%struct.LexState* nocapture readonly, %struct.TString* readnone) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %4 = load %struct.Dyndata*, %struct.Dyndata** %3, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 11
  %8 = load i32, i32* %7, align 4, !tbaa !46
  %9 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %4, i64 0, i32 2, i32 1
  %10 = load i32, i32* %9, align 8, !tbaa !28
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %27

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %4, i64 0, i32 2, i32 0
  %14 = load %struct.Labeldesc*, %struct.Labeldesc** %13, align 8, !tbaa !123
  %15 = sext i32 %8 to i64
  br label %20

; <label>:16:                                     ; preds = %20
  %17 = load i32, i32* %9, align 8, !tbaa !28
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %26, %18
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %12, %16
  %21 = phi i64 [ %15, %12 ], [ %26, %16 ]
  %22 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %14, i64 %21
  %23 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %22, i64 0, i32 0
  %24 = load %struct.TString*, %struct.TString** %23, align 8, !tbaa !124
  %25 = icmp eq %struct.TString* %24, %1
  %26 = add nsw i64 %21, 1
  br i1 %25, label %27, label %16

; <label>:27:                                     ; preds = %16, %20, %2
  %28 = phi %struct.Labeldesc* [ null, %2 ], [ %22, %20 ], [ null, %16 ]
  ret %struct.Labeldesc* %28
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @newlabelentry(%struct.LexState* nocapture readonly, %struct.Labellist*, %struct.TString*, i32, i32) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %1, i64 0, i32 1
  %7 = load i32, i32* %6, align 8, !tbaa !125
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %9 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %1, i64 0, i32 0
  %11 = bitcast %struct.Labellist* %1 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !126
  %13 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %1, i64 0, i32 2
  %14 = tail call i8* @luaM_growaux_(%struct.lua_State* %9, i8* %12, i32 %7, i32* nonnull %13, i32 24, i32 32767, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #9
  %15 = bitcast i8* %14 to %struct.Labeldesc*
  store i8* %14, i8** %11, align 8, !tbaa !126
  %16 = sext i32 %7 to i64
  %17 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %15, i64 %16, i32 0
  store %struct.TString* %2, %struct.TString** %17, align 8, !tbaa !124
  %18 = load %struct.Labeldesc*, %struct.Labeldesc** %10, align 8, !tbaa !126
  %19 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %18, i64 %16, i32 2
  store i32 %3, i32* %19, align 4, !tbaa !127
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %21 = load %struct.FuncState*, %struct.FuncState** %20, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %21, i64 0, i32 13
  %23 = load i8, i8* %22, align 2, !tbaa !64
  %24 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %18, i64 %16, i32 3
  store i8 %23, i8* %24, align 8, !tbaa !91
  %25 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %18, i64 %16, i32 4
  store i8 0, i8* %25, align 1, !tbaa !128
  %26 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %18, i64 %16, i32 1
  store i32 %4, i32* %26, align 8, !tbaa !93
  %27 = add nsw i32 %7, 1
  store i32 %27, i32* %6, align 8, !tbaa !125
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @createlabel(%struct.LexState*, %struct.TString*, i32, i32) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %8 = load %struct.Dyndata*, %struct.Dyndata** %7, align 8, !tbaa !27
  %9 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %8, i64 0, i32 2
  %10 = tail call i32 @luaK_getlabel(%struct.FuncState* %6) #9
  %11 = tail call fastcc i32 @newlabelentry(%struct.LexState* %0, %struct.Labellist* nonnull %9, %struct.TString* %1, i32 %2, i32 %10)
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %22, label %13

; <label>:13:                                     ; preds = %4
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 3
  %15 = load %struct.BlockCnt*, %struct.BlockCnt** %14, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 3
  %17 = load i8, i8* %16, align 8, !tbaa !78
  %18 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %9, i64 0, i32 0
  %19 = load %struct.Labeldesc*, %struct.Labeldesc** %18, align 8, !tbaa !126
  %20 = sext i32 %11 to i64
  %21 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %19, i64 %20, i32 3
  store i8 %17, i8* %21, align 8, !tbaa !91
  br label %22

; <label>:22:                                     ; preds = %4, %13
  %23 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %9, i64 0, i32 0
  %24 = load %struct.Labeldesc*, %struct.Labeldesc** %23, align 8, !tbaa !126
  %25 = sext i32 %11 to i64
  %26 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %24, i64 %25
  %27 = tail call fastcc i32 @solvegotos(%struct.LexState* nonnull %0, %struct.Labeldesc* %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 13
  %31 = load i8, i8* %30, align 2, !tbaa !64
  %32 = zext i8 %31 to i32
  %33 = tail call i32 @luaK_codeABCk(%struct.FuncState* %6, i32 55, i32 %32, i32 0, i32 0, i32 0) #9
  br label %34

; <label>:34:                                     ; preds = %22, %29
  %35 = phi i32 [ 1, %29 ], [ 0, %22 ]
  ret i32 %35
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @removevars(%struct.FuncState* nocapture, i32) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %4 = load i8, i8* %3, align 2, !tbaa !64
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %7 = load %struct.LexState*, %struct.LexState** %6, align 8, !tbaa !37
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i64 0, i32 10
  %9 = load %struct.Dyndata*, %struct.Dyndata** %8, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %9, i64 0, i32 0, i32 1
  %11 = load i32, i32* %10, align 8, !tbaa !33
  %12 = sub i32 %1, %5
  %13 = add i32 %12, %11
  store i32 %13, i32* %10, align 8, !tbaa !33
  %14 = load i8, i8* %3, align 2, !tbaa !64
  %15 = zext i8 %14 to i32
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %17, label %29

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  br label %19

; <label>:19:                                     ; preds = %17, %19
  %20 = phi i8 [ %14, %17 ], [ %26, %19 ]
  %21 = load i32, i32* %18, align 8, !tbaa !38
  %22 = add i8 %20, -1
  store i8 %22, i8* %3, align 2, !tbaa !64
  %23 = zext i8 %22 to i32
  %24 = tail call fastcc %struct.LocVar* @getlocvar(%struct.FuncState* nonnull %0, i32 %23)
  %25 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %24, i64 0, i32 2
  store i32 %21, i32* %25, align 4, !tbaa !129
  %26 = load i8, i8* %3, align 2, !tbaa !64
  %27 = zext i8 %26 to i32
  %28 = icmp sgt i32 %27, %1
  br i1 %28, label %19, label %29

; <label>:29:                                     ; preds = %19, %2
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @movegotosout(%struct.FuncState* nocapture readonly, %struct.BlockCnt* nocapture readonly) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %4 = load %struct.LexState*, %struct.LexState** %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i64 0, i32 10
  %6 = load %struct.Dyndata*, %struct.Dyndata** %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %1, i64 0, i32 2
  %8 = load i32, i32* %7, align 4, !tbaa !80
  %9 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %6, i64 0, i32 1, i32 1
  %10 = load i32, i32* %9, align 8, !tbaa !125
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %34

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %6, i64 0, i32 1, i32 0
  %14 = load %struct.Labeldesc*, %struct.Labeldesc** %13, align 8, !tbaa !126
  %15 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %1, i64 0, i32 3
  %16 = load i8, i8* %15, align 8, !tbaa !78
  %17 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %1, i64 0, i32 4
  %18 = load i32, i32* %9, align 8, !tbaa !125
  %19 = sext i32 %8 to i64
  %20 = sext i32 %18 to i64
  br label %21

; <label>:21:                                     ; preds = %12, %31
  %22 = phi i64 [ %19, %12 ], [ %32, %31 ]
  %23 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %14, i64 %22, i32 3
  %24 = load i8, i8* %23, align 8, !tbaa !91
  %25 = icmp ugt i8 %24, %16
  br i1 %25, label %26, label %31

; <label>:26:                                     ; preds = %21
  store i8 %16, i8* %23, align 8, !tbaa !91
  %27 = load i8, i8* %17, align 1, !tbaa !81
  %28 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %14, i64 %22, i32 4
  %29 = load i8, i8* %28, align 1, !tbaa !128
  %30 = or i8 %29, %27
  store i8 %30, i8* %28, align 1, !tbaa !128
  br label %31

; <label>:31:                                     ; preds = %26, %21
  %32 = add nsw i64 %22, 1
  %33 = icmp slt i64 %32, %20
  br i1 %33, label %21, label %34

; <label>:34:                                     ; preds = %31, %2
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @undefgoto(%struct.LexState*, %struct.Labeldesc* nocapture readonly) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 0
  %4 = load %struct.TString*, %struct.TString** %3, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %6 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !tbaa !57
  %7 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #9
  %8 = icmp eq %struct.TString* %4, %7
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !tbaa !57
  br i1 %8, label %10, label %14

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 2
  %12 = load i32, i32* %11, align 4, !tbaa !127
  %13 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %12) #9
  br label %21

; <label>:14:                                     ; preds = %2
  %15 = bitcast %struct.Labeldesc* %1 to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !124
  %17 = getelementptr inbounds i8, i8* %16, i64 24
  %18 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 2
  %19 = load i32, i32* %18, align 4, !tbaa !127
  %20 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i8* nonnull %17, i32 %19) #9
  br label %21

; <label>:21:                                     ; preds = %14, %10
  %22 = phi i8* [ %13, %10 ], [ %20, %14 ]
  tail call void @luaK_semerror(%struct.LexState* nonnull %0, i8* %22) #11
  unreachable
}

declare hidden i32 @luaK_getlabel(%struct.FuncState*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @solvegotos(%struct.LexState*, %struct.Labeldesc* nocapture readonly) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %4 = load %struct.Dyndata*, %struct.Dyndata** %3, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 3
  %8 = load %struct.BlockCnt*, %struct.BlockCnt** %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %8, i64 0, i32 2
  %10 = load i32, i32* %9, align 4, !tbaa !80
  %11 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %4, i64 0, i32 1, i32 1
  %12 = load i32, i32* %11, align 8, !tbaa !125
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %38

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %4, i64 0, i32 1, i32 0
  %16 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 0
  br label %17

; <label>:17:                                     ; preds = %14, %33
  %18 = phi i32 [ 0, %14 ], [ %35, %33 ]
  %19 = phi i32 [ %10, %14 ], [ %34, %33 ]
  %20 = load %struct.Labeldesc*, %struct.Labeldesc** %15, align 8, !tbaa !126
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %20, i64 %21, i32 0
  %23 = load %struct.TString*, %struct.TString** %22, align 8, !tbaa !124
  %24 = load %struct.TString*, %struct.TString** %16, align 8, !tbaa !124
  %25 = icmp eq %struct.TString* %23, %24
  br i1 %25, label %26, label %31

; <label>:26:                                     ; preds = %17
  %27 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %20, i64 %21, i32 4
  %28 = load i8, i8* %27, align 1, !tbaa !128
  %29 = zext i8 %28 to i32
  %30 = or i32 %18, %29
  tail call fastcc void @solvegoto(%struct.LexState* %0, i32 %19, %struct.Labeldesc* nonnull %1)
  br label %33

; <label>:31:                                     ; preds = %17
  %32 = add nsw i32 %19, 1
  br label %33

; <label>:33:                                     ; preds = %31, %26
  %34 = phi i32 [ %19, %26 ], [ %32, %31 ]
  %35 = phi i32 [ %30, %26 ], [ %18, %31 ]
  %36 = load i32, i32* %11, align 8, !tbaa !125
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %17, label %38

; <label>:38:                                     ; preds = %33, %2
  %39 = phi i32 [ 0, %2 ], [ %35, %33 ]
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal fastcc void @solvegoto(%struct.LexState*, i32, %struct.Labeldesc* nocapture readonly) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %5 = load %struct.Dyndata*, %struct.Dyndata** %4, align 8, !tbaa !27
  %6 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %5, i64 0, i32 1, i32 0
  %7 = load %struct.Labeldesc*, %struct.Labeldesc** %6, align 8, !tbaa !126
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %7, i64 %8, i32 3
  %10 = load i8, i8* %9, align 8, !tbaa !91
  %11 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %2, i64 0, i32 3
  %12 = load i8, i8* %11, align 8, !tbaa !91
  %13 = icmp ult i8 %10, %12
  br i1 %13, label %14, label %16, !prof !88

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %7, i64 %8
  tail call fastcc void @jumpscopeerror(%struct.LexState* nonnull %0, %struct.Labeldesc* %15) #10
  unreachable

; <label>:16:                                     ; preds = %3
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %18 = load %struct.FuncState*, %struct.FuncState** %17, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %7, i64 %8, i32 1
  %20 = load i32, i32* %19, align 8, !tbaa !93
  %21 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %2, i64 0, i32 1
  %22 = load i32, i32* %21, align 8, !tbaa !93
  tail call void @luaK_patchlist(%struct.FuncState* %18, i32 %20, i32 %22) #9
  %23 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %5, i64 0, i32 1, i32 1
  %24 = load i32, i32* %23, align 8, !tbaa !125
  %25 = add nsw i32 %24, -1
  %26 = icmp sgt i32 %25, %1
  br i1 %26, label %27, label %41

; <label>:27:                                     ; preds = %16
  %28 = sext i32 %1 to i64
  br label %29

; <label>:29:                                     ; preds = %27, %29
  %30 = phi i64 [ %28, %27 ], [ %33, %29 ]
  %31 = load %struct.Labeldesc*, %struct.Labeldesc** %6, align 8, !tbaa !126
  %32 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %31, i64 %30
  %33 = add nsw i64 %30, 1
  %34 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %31, i64 %33
  %35 = bitcast %struct.Labeldesc* %32 to i8*
  %36 = bitcast %struct.Labeldesc* %34 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 24, i32 8, i1 false), !tbaa.struct !130
  %37 = load i32, i32* %23, align 8, !tbaa !125
  %38 = add nsw i32 %37, -1
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %33, %39
  br i1 %40, label %29, label %41

; <label>:41:                                     ; preds = %29, %16
  %42 = phi i32 [ %25, %16 ], [ %38, %29 ]
  store i32 %42, i32* %23, align 8, !tbaa !125
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @jumpscopeerror(%struct.LexState*, %struct.Labeldesc* nocapture readonly) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 3
  %6 = load i8, i8* %5, align 8, !tbaa !91
  %7 = zext i8 %6 to i32
  %8 = tail call fastcc %struct.LocVar* @getlocvar(%struct.FuncState* %4, i32 %7)
  %9 = bitcast %struct.LocVar* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !121
  %11 = getelementptr inbounds i8, i8* %10, i64 24
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %13 = load %struct.lua_State*, %struct.lua_State** %12, align 8, !tbaa !57
  %14 = bitcast %struct.Labeldesc* %1 to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !124
  %16 = getelementptr inbounds i8, i8* %15, i64 24
  %17 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 2
  %18 = load i32, i32* %17, align 4, !tbaa !127
  %19 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %13, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %16, i32 %18, i8* nonnull %11) #9
  tail call void @luaK_semerror(%struct.LexState* %0, i8* %19) #11
  unreachable
}

; Function Attrs: noreturn
declare hidden void @luaK_semerror(%struct.LexState*, i8*) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cond(%struct.LexState*) unnamed_addr #0 {
  %2 = alloca %struct.expdesc, align 8
  %3 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #9
  call fastcc void @expr(%struct.LexState* %0, %struct.expdesc* nonnull %2)
  %4 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !54
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i32 3, i32* %4, align 8, !tbaa !54
  br label %8

; <label>:8:                                      ; preds = %7, %1
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %10 = load %struct.FuncState*, %struct.FuncState** %9, align 8, !tbaa !35
  call void @luaK_goiftrue(%struct.FuncState* %10, %struct.expdesc* nonnull %2) #9
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %12 = load i32, i32* %11, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #9
  ret i32 %12
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @error_expected(%struct.LexState*, i32) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !tbaa !57
  %5 = tail call i8* @luaX_token2str(%struct.LexState* %0, i32 %1) #9
  %6 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* %5) #9
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* %6) #11
  unreachable
}

declare hidden i8* @luaX_token2str(%struct.LexState*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @fornum(%struct.LexState*, %struct.TString*, i32) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 15
  %7 = load i8, i8* %6, align 4, !tbaa !85
  %8 = zext i8 %7 to i32
  %9 = tail call %struct.TString* @luaX_newstring(%struct.LexState* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i64 11) #9
  tail call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %9)
  %10 = tail call %struct.TString* @luaX_newstring(%struct.LexState* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i64 11) #9
  tail call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %10)
  %11 = tail call %struct.TString* @luaX_newstring(%struct.LexState* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i64 10) #9
  tail call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %11)
  tail call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %1)
  tail call fastcc void @checknext(%struct.LexState* %0, i32 61)
  tail call fastcc void @exp1(%struct.LexState* %0)
  tail call fastcc void @checknext(%struct.LexState* %0, i32 44)
  tail call fastcc void @exp1(%struct.LexState* %0)
  %12 = tail call fastcc i32 @testnext(%struct.LexState* %0, i32 44)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %3
  tail call fastcc void @exp1(%struct.LexState* nonnull %0)
  br label %18

; <label>:15:                                     ; preds = %3
  %16 = load i8, i8* %6, align 4, !tbaa !85
  %17 = zext i8 %16 to i32
  tail call void @luaK_int(%struct.FuncState* %5, i32 %17, i64 1) #9
  tail call void @luaK_reserveregs(%struct.FuncState* %5, i32 1) #9
  br label %18

; <label>:18:                                     ; preds = %15, %14
  tail call fastcc void @adjustlocalvars(%struct.LexState* nonnull %0, i32 3)
  tail call fastcc void @forbody(%struct.LexState* nonnull %0, i32 %8, i32 %2, i32 1, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @forlist(%struct.LexState*, %struct.TString*) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !35
  %6 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 15
  %8 = load i8, i8* %7, align 4, !tbaa !85
  %9 = zext i8 %8 to i32
  %10 = tail call %struct.TString* @luaX_newstring(%struct.LexState* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i64 15) #9
  tail call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %10)
  %11 = tail call %struct.TString* @luaX_newstring(%struct.LexState* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i64 11) #9
  tail call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %11)
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 13
  %13 = load i8, i8* %12, align 2, !tbaa !64
  %14 = zext i8 %13 to i32
  tail call fastcc void @markupval(%struct.FuncState* %5, i32 %14)
  %15 = tail call %struct.TString* @luaX_newstring(%struct.LexState* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i64 13) #9
  tail call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %15)
  %16 = tail call %struct.TString* @luaX_newstring(%struct.LexState* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i64 13) #9
  tail call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %16)
  tail call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %1)
  %17 = tail call fastcc i32 @testnext(%struct.LexState* %0, i32 44)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

; <label>:19:                                     ; preds = %2
  br label %20

; <label>:20:                                     ; preds = %19, %20
  %21 = phi i32 [ %23, %20 ], [ 5, %19 ]
  %22 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* %0)
  tail call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %22)
  %23 = add nuw nsw i32 %21, 1
  %24 = tail call fastcc i32 @testnext(%struct.LexState* %0, i32 44)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %20

; <label>:26:                                     ; preds = %20
  %27 = add nsw i32 %21, -3
  br label %28

; <label>:28:                                     ; preds = %26, %2
  %29 = phi i32 [ 1, %2 ], [ %27, %26 ]
  tail call fastcc void @checknext(%struct.LexState* %0, i32 268)
  %30 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %31 = load i32, i32* %30, align 4, !tbaa !84
  %32 = call fastcc i32 @explist(%struct.LexState* %0, %struct.expdesc* nonnull %3)
  call fastcc void @adjust_assign(%struct.LexState* %0, i32 4, i32 %32, %struct.expdesc* nonnull %3)
  call fastcc void @adjustlocalvars(%struct.LexState* %0, i32 4)
  call void @luaK_checkstack(%struct.FuncState* %5, i32 3) #9
  call fastcc void @forbody(%struct.LexState* %0, i32 %9, i32 %31, i32 %29, i32 1)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @exp1(%struct.LexState*) unnamed_addr #0 {
  %2 = alloca %struct.expdesc, align 8
  %3 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #9
  call fastcc void @expr(%struct.LexState* %0, %struct.expdesc* nonnull %2)
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !35
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #9
  ret void
}

declare hidden void @luaK_int(%struct.FuncState*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @forbody(%struct.LexState*, i32, i32, i32, i32) unnamed_addr #0 {
  %6 = alloca %struct.BlockCnt, align 8
  %7 = bitcast %struct.BlockCnt* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #9
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %9 = load %struct.FuncState*, %struct.FuncState** %8, align 8, !tbaa !35
  tail call fastcc void @checknext(%struct.LexState* %0, i32 259)
  %10 = sext i32 %4 to i64
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* @forbody.forprep, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !11
  %13 = tail call i32 @luaK_codeABx(%struct.FuncState* %9, i32 %12, i32 %1, i32 0) #9
  call fastcc void @enterblock(%struct.FuncState* %9, %struct.BlockCnt* nonnull %6, i8 zeroext 0)
  call fastcc void @adjustlocalvars(%struct.LexState* %0, i32 %3)
  call void @luaK_reserveregs(%struct.FuncState* %9, i32 %3) #9
  call fastcc void @block(%struct.LexState* %0)
  call fastcc void @leaveblock(%struct.FuncState* %9)
  %14 = call i32 @luaK_getlabel(%struct.FuncState* %9) #9
  call fastcc void @fixforjump(%struct.FuncState* %9, i32 %13, i32 %14, i32 0)
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
  call fastcc void @fixforjump(%struct.FuncState* %9, i32 %23, i32 %24, i32 1)
  call void @luaK_fixline(%struct.FuncState* %9, i32 %2) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #9
  ret void
}

; Function Attrs: nounwind uwtable
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
  br i1 %16, label %17, label %20, !prof !88

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %19 = load %struct.LexState*, %struct.LexState** %18, align 8, !tbaa !37
  tail call void @luaX_syntaxerror(%struct.LexState* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0)) #11
  unreachable

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %10, align 4, !tbaa !87
  %22 = and i32 %21, 32767
  %23 = shl i32 %15, 15
  %24 = or i32 %22, %23
  store i32 %24, i32* %10, align 4, !tbaa !87
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @adjust_assign(%struct.LexState* nocapture readonly, i32, i32, %struct.expdesc*) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !35
  %7 = sub nsw i32 %1, %2
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !54
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
  %15 = load i8, i8* %14, align 4, !tbaa !85
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
  %25 = load i8, i8* %24, align 4, !tbaa !85
  %26 = trunc i32 %7 to i8
  %27 = add i8 %25, %26
  store i8 %27, i8* %24, align 4, !tbaa !85
  br label %28

; <label>:28:                                     ; preds = %23, %22
  ret void
}

declare hidden void @luaK_checkstack(%struct.FuncState*, i32) local_unnamed_addr #2

declare hidden void @luaK_nil(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @funcname(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  tail call fastcc void @singlevar(%struct.LexState* %0, %struct.expdesc* %1)
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  br label %4

; <label>:4:                                      ; preds = %6, %2
  %5 = load i32, i32* %3, align 8, !tbaa !63
  switch i32 %5, label %8 [
    i32 46, label %6
    i32 58, label %7
  ]

; <label>:6:                                      ; preds = %4
  tail call fastcc void @fieldsel(%struct.LexState* nonnull %0, %struct.expdesc* %1)
  br label %4

; <label>:7:                                      ; preds = %4
  tail call fastcc void @fieldsel(%struct.LexState* nonnull %0, %struct.expdesc* %1)
  br label %8

; <label>:8:                                      ; preds = %4, %7
  %9 = phi i32 [ 1, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tocloselocalstat(%struct.LexState*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %3 = load %struct.FuncState*, %struct.FuncState** %2, align 8, !tbaa !35
  %4 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* %0)
  %5 = getelementptr inbounds %struct.TString, %struct.TString* %4, i64 1
  %6 = bitcast %struct.TString* %5 to i8*
  %7 = tail call i32 @strcmp(i8* nonnull %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !tbaa !57
  %12 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), %struct.TString* nonnull %5) #9
  tail call void @luaK_semerror(%struct.LexState* nonnull %0, i8* %12) #11
  unreachable

; <label>:13:                                     ; preds = %1
  %14 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0)
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %14)
  tail call fastcc void @checknext(%struct.LexState* nonnull %0, i32 61)
  tail call fastcc void @exp1(%struct.LexState* nonnull %0)
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %3, i64 0, i32 13
  %16 = load i8, i8* %15, align 2, !tbaa !64
  %17 = zext i8 %16 to i32
  tail call fastcc void @markupval(%struct.FuncState* %3, i32 %17)
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %3, i64 0, i32 3
  %19 = load %struct.BlockCnt*, %struct.BlockCnt** %18, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %19, i64 0, i32 6
  store i8 1, i8* %20, align 1, !tbaa !82
  tail call fastcc void @adjustlocalvars(%struct.LexState* nonnull %0, i32 1)
  %21 = load i8, i8* %15, align 2, !tbaa !64
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 %22, -1
  %24 = tail call i32 @luaK_codeABCk(%struct.FuncState* %3, i32 56, i32 %23, i32 0, i32 0, i32 0) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @commonlocalstat(%struct.LexState*) unnamed_addr #0 {
  %2 = alloca %struct.expdesc, align 8
  %3 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #9
  br label %4

; <label>:4:                                      ; preds = %4, %1
  %5 = phi i32 [ 0, %1 ], [ %7, %4 ]
  %6 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* %0)
  tail call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %6)
  %7 = add nuw nsw i32 %5, 1
  %8 = tail call fastcc i32 @testnext(%struct.LexState* %0, i32 44)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %4

; <label>:10:                                     ; preds = %4
  %11 = tail call fastcc i32 @testnext(%struct.LexState* %0, i32 61)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %10
  %14 = call fastcc i32 @explist(%struct.LexState* %0, %struct.expdesc* nonnull %2)
  br label %17

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  store i32 0, i32* %16, align 8, !tbaa !54
  br label %17

; <label>:17:                                     ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ 0, %15 ]
  call fastcc void @adjust_assign(%struct.LexState* %0, i32 %7, i32 %18, %struct.expdesc* nonnull %2)
  call fastcc void @adjustlocalvars(%struct.LexState* %0, i32 %7)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @checkrepeated(%struct.LexState*, %struct.TString*) unnamed_addr #0 {
  %3 = tail call fastcc %struct.Labeldesc* @findlabel(%struct.LexState* %0, %struct.TString* %1)
  %4 = icmp eq %struct.Labeldesc* %3, null
  br i1 %4, label %12, label %5, !prof !131

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 1
  %9 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %3, i64 0, i32 2
  %10 = load i32, i32* %9, align 4, !tbaa !127
  %11 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %7, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), %struct.TString* nonnull %8, i32 %10) #9
  tail call void @luaK_semerror(%struct.LexState* %0, i8* %11) #11
  unreachable

; <label>:12:                                     ; preds = %2
  ret void
}

declare hidden i32 @luaK_exp2anyreg(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_ret(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @restassign(%struct.LexState*, %struct.LHS_assign*, i32) unnamed_addr #0 {
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca %struct.LHS_assign, align 8
  %6 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9
  %7 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !96
  %10 = add i32 %9, -8
  %11 = icmp ult i32 %10, 6
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %3
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0)) #11
  unreachable

; <label>:13:                                     ; preds = %3
  %14 = tail call fastcc i32 @testnext(%struct.LexState* %0, i32 44)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %33, label %16

; <label>:16:                                     ; preds = %13
  %17 = bitcast %struct.LHS_assign* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #9
  %18 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 0
  store %struct.LHS_assign* %1, %struct.LHS_assign** %18, align 8, !tbaa !94
  %19 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1
  call fastcc void @suffixedexp(%struct.LexState* %0, %struct.expdesc* nonnull %19)
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i64 0, i32 0
  %21 = load i32, i32* %20, align 8, !tbaa !96
  %22 = add i32 %21, -10
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %25, label %24

; <label>:24:                                     ; preds = %16
  call fastcc void @check_conflict(%struct.LexState* %0, %struct.LHS_assign* nonnull %1, %struct.expdesc* nonnull %19)
  br label %25

; <label>:25:                                     ; preds = %16, %24
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %27 = load %struct.lua_State*, %struct.lua_State** %26, align 8, !tbaa !57
  call void @luaE_enterCcall(%struct.lua_State* %27) #9
  %28 = add nsw i32 %2, 1
  call fastcc void @restassign(%struct.LexState* %0, %struct.LHS_assign* nonnull %5, i32 %28)
  %29 = load %struct.lua_State*, %struct.lua_State** %26, align 8, !tbaa !57
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i64 0, i32 19
  %31 = load i32, i32* %30, align 8, !tbaa !86
  %32 = add i32 %31, -1
  store i32 %32, i32* %30, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #9
  br label %41

; <label>:33:                                     ; preds = %13
  tail call fastcc void @checknext(%struct.LexState* %0, i32 61)
  %34 = call fastcc i32 @explist(%struct.LexState* %0, %struct.expdesc* nonnull %4)
  %35 = icmp eq i32 %34, %2
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %33
  call fastcc void @adjust_assign(%struct.LexState* %0, i32 %2, i32 %34, %struct.expdesc* nonnull %4)
  br label %41

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %39 = load %struct.FuncState*, %struct.FuncState** %38, align 8, !tbaa !35
  call void @luaK_setoneret(%struct.FuncState* %39, %struct.expdesc* nonnull %4) #9
  %40 = load %struct.FuncState*, %struct.FuncState** %38, align 8, !tbaa !35
  call void @luaK_storevar(%struct.FuncState* %40, %struct.expdesc* nonnull %7, %struct.expdesc* nonnull %4) #9
  br label %49

; <label>:41:                                     ; preds = %36, %25
  %42 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %43 = load %struct.FuncState*, %struct.FuncState** %42, align 8, !tbaa !35
  %44 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %43, i64 0, i32 15
  %45 = load i8, i8* %44, align 4, !tbaa !85
  %46 = zext i8 %45 to i32
  %47 = add nsw i32 %46, -1
  call fastcc void @init_exp(%struct.expdesc* nonnull %4, i32 7, i32 %47)
  %48 = load %struct.FuncState*, %struct.FuncState** %42, align 8, !tbaa !35
  call void @luaK_storevar(%struct.FuncState* %48, %struct.expdesc* nonnull %7, %struct.expdesc* nonnull %4) #9
  br label %49

; <label>:49:                                     ; preds = %37, %41
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_conflict(%struct.LexState* nocapture readonly, %struct.LHS_assign*, %struct.expdesc* nocapture readonly) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 15
  %7 = load i8, i8* %6, align 4, !tbaa !85
  %8 = zext i8 %7 to i32
  %9 = icmp eq %struct.LHS_assign* %1, null
  br i1 %9, label %81, label %10

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %13 = bitcast %union.anon.7* %12 to i32*
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %15 = bitcast %union.anon.7* %14 to i32*
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %17 = bitcast %union.anon.7* %16 to i32*
  %18 = zext i8 %7 to i16
  br label %19

; <label>:19:                                     ; preds = %10, %65
  %20 = phi %struct.LHS_assign* [ %1, %10 ], [ %68, %65 ]
  %21 = phi i32 [ 0, %10 ], [ %66, %65 ]
  %22 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %20, i64 0, i32 1, i32 0
  %23 = load i32, i32* %22, align 8, !tbaa !96
  %24 = add i32 %23, -10
  %25 = icmp ult i32 %24, 4
  br i1 %25, label %26, label %65

; <label>:26:                                     ; preds = %19
  %27 = icmp eq i32 %23, 11
  %28 = load i32, i32* %11, align 8, !tbaa !54
  br i1 %27, label %29, label %40

; <label>:29:                                     ; preds = %26
  %30 = icmp eq i32 %28, 9
  br i1 %30, label %31, label %65

; <label>:31:                                     ; preds = %29
  %32 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %20, i64 0, i32 1, i32 1
  %33 = bitcast %union.anon.7* %32 to %struct.anon.8*
  %34 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %33, i64 0, i32 1
  %35 = load i8, i8* %34, align 2, !tbaa !11
  %36 = zext i8 %35 to i32
  %37 = load i32, i32* %13, align 8, !tbaa !11
  %38 = icmp eq i32 %37, %36
  br i1 %38, label %39, label %65

; <label>:39:                                     ; preds = %31
  store i32 13, i32* %22, align 8, !tbaa !96
  store i8 %7, i8* %34, align 2, !tbaa !11
  br label %65

; <label>:40:                                     ; preds = %26
  %41 = icmp eq i32 %28, 8
  br i1 %41, label %42, label %51

; <label>:42:                                     ; preds = %40
  %43 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %20, i64 0, i32 1, i32 1
  %44 = bitcast %union.anon.7* %43 to %struct.anon.8*
  %45 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %44, i64 0, i32 1
  %46 = load i8, i8* %45, align 2, !tbaa !11
  %47 = zext i8 %46 to i32
  %48 = load i32, i32* %15, align 8, !tbaa !11
  %49 = icmp eq i32 %48, %47
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %42
  store i8 %7, i8* %45, align 2, !tbaa !11
  br label %51

; <label>:51:                                     ; preds = %50, %42, %40
  %52 = phi i32 [ 1, %50 ], [ %21, %42 ], [ %21, %40 ]
  %53 = icmp eq i32 %23, 10
  br i1 %53, label %54, label %65

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %11, align 8, !tbaa !54
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %57, label %65

; <label>:57:                                     ; preds = %54
  %58 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %20, i64 0, i32 1, i32 1
  %59 = bitcast %union.anon.7* %58 to i16*
  %60 = load i16, i16* %59, align 8, !tbaa !11
  %61 = sext i16 %60 to i32
  %62 = load i32, i32* %17, align 8, !tbaa !11
  %63 = icmp eq i32 %62, %61
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %57
  store i16 %18, i16* %59, align 8, !tbaa !11
  br label %65

; <label>:65:                                     ; preds = %19, %51, %54, %57, %64, %29, %31, %39
  %66 = phi i32 [ 1, %39 ], [ %21, %31 ], [ %21, %29 ], [ 1, %64 ], [ %52, %57 ], [ %52, %54 ], [ %52, %51 ], [ %21, %19 ]
  %67 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %20, i64 0, i32 0
  %68 = load %struct.LHS_assign*, %struct.LHS_assign** %67, align 8, !tbaa !94
  %69 = icmp eq %struct.LHS_assign* %68, null
  br i1 %69, label %70, label %19

; <label>:70:                                     ; preds = %65
  %71 = icmp eq i32 %66, 0
  br i1 %71, label %81, label %72

; <label>:72:                                     ; preds = %70
  %73 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %74 = load i32, i32* %73, align 8, !tbaa !54
  %75 = icmp eq i32 %74, 8
  %76 = select i1 %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %78 = bitcast %union.anon.7* %77 to i32*
  %79 = load i32, i32* %78, align 8, !tbaa !11
  %80 = tail call i32 @luaK_codeABCk(%struct.FuncState* %5, i32 %76, i32 %8, i32 %79, i32 0, i32 0) #9
  tail call void @luaK_reserveregs(%struct.FuncState* %5, i32 1) #9
  br label %81

; <label>:81:                                     ; preds = %3, %70, %72
  ret void
}

declare hidden void @luaK_setoneret(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_finish(%struct.FuncState*) local_unnamed_addr #2

declare hidden i8* @luaM_shrinkvector_(%struct.lua_State*, i8*, i32*, i32, i32) local_unnamed_addr #2

declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readonly }

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
!34 = !{!15, !4, i64 104}
!35 = !{!15, !4, i64 48}
!36 = !{!20, !4, i64 8}
!37 = !{!20, !4, i64 16}
!38 = !{!20, !10, i64 32}
!39 = !{!22, !10, i64 44}
!40 = !{!20, !10, i64 40}
!41 = !{!20, !10, i64 36}
!42 = !{!20, !10, i64 44}
!43 = !{!20, !10, i64 52}
!44 = !{!20, !10, i64 48}
!45 = !{!20, !10, i64 56}
!46 = !{!20, !10, i64 60}
!47 = !{!20, !4, i64 24}
!48 = !{!15, !4, i64 96}
!49 = !{!22, !5, i64 12}
!50 = !{!22, !5, i64 11}
!51 = !{!52, !10, i64 16}
!52 = !{!"expdesc", !5, i64 0, !5, i64 8, !10, i64 16, !10, i64 20}
!53 = !{!52, !10, i64 20}
!54 = !{!52, !5, i64 0}
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
!85 = !{!20, !5, i64 68}
!86 = !{!3, !10, i64 176}
!87 = !{!10, !10, i64 0}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{!90, !10, i64 8}
!90 = !{!"LocVar", !4, i64 0, !10, i64 8, !10, i64 12}
!91 = !{!92, !5, i64 16}
!92 = !{!"Labeldesc", !4, i64 0, !10, i64 8, !10, i64 12, !5, i64 16, !5, i64 17}
!93 = !{!92, !10, i64 8}
!94 = !{!95, !4, i64 0}
!95 = !{!"LHS_assign", !4, i64 0, !52, i64 8}
!96 = !{!95, !5, i64 8}
!97 = !{!4, !4, i64 0}
!98 = !{!29, !4, i64 16}
!99 = !{!100, !5, i64 0}
!100 = !{!"", !5, i64 0, !5, i64 1}
!101 = !{!100, !5, i64 1}
!102 = !{!103, !10, i64 40}
!103 = !{!"ConsControl", !52, i64 0, !4, i64 24, !10, i64 32, !10, i64 36, !10, i64 40}
!104 = !{!103, !10, i64 32}
!105 = !{!103, !10, i64 36}
!106 = !{!103, !4, i64 24}
!107 = !{!22, !10, i64 48}
!108 = !{!103, !5, i64 0}
!109 = !{i64 0, i64 4, !11, i64 8, i64 8, !110, i64 8, i64 8, !112, i64 8, i64 4, !87, i64 8, i64 2, !114, i64 10, i64 1, !11, i64 16, i64 4, !87, i64 20, i64 4, !87}
!110 = !{!111, !111, i64 0}
!111 = !{!"long long", !5, i64 0}
!112 = !{!113, !113, i64 0}
!113 = !{!"double", !5, i64 0}
!114 = !{!7, !7, i64 0}
!115 = !{!22, !10, i64 32}
!116 = !{!29, !4, i64 0}
!117 = !{!118, !7, i64 0}
!118 = !{!"Vardesc", !7, i64 0}
!119 = !{!22, !5, i64 10}
!120 = !{!22, !10, i64 36}
!121 = !{!90, !4, i64 0}
!122 = !{!20, !5, i64 70}
!123 = !{!29, !4, i64 32}
!124 = !{!92, !4, i64 0}
!125 = !{!31, !10, i64 8}
!126 = !{!31, !4, i64 0}
!127 = !{!92, !10, i64 12}
!128 = !{!92, !5, i64 17}
!129 = !{!90, !10, i64 12}
!130 = !{i64 0, i64 8, !97, i64 8, i64 4, !87, i64 12, i64 4, !87, i64 16, i64 1, !11, i64 17, i64 1, !11}
!131 = !{!"branch_weights", i32 2000, i32 1}
