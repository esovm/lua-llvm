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

; Function Attrs: nounwind optsize uwtable
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
  %51 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i64 0, i32 5
  %52 = bitcast %struct.FuncState** %51 to i64*
  %53 = load i64, i64* %52, align 8, !tbaa !34
  %54 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 1
  %55 = bitcast %struct.FuncState** %54 to i64*
  store i64 %53, i64* %55, align 8, !tbaa !35
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 2
  store %struct.LexState* %9, %struct.LexState** %56, align 8, !tbaa !36
  store %struct.FuncState* %10, %struct.FuncState** %51, align 8, !tbaa !34
  %57 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 4
  store i32 0, i32* %57, align 8, !tbaa !37
  %58 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i64 0, i32 13
  %59 = load i32, i32* %58, align 4, !tbaa !38
  %60 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 6
  store i32 %59, i32* %60, align 8, !tbaa !39
  %61 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 5
  store i32 0, i32* %61, align 4, !tbaa !40
  %62 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 7
  store i32 0, i32* %62, align 4, !tbaa !41
  %63 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 9
  store i32 0, i32* %63, align 4, !tbaa !42
  %64 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 8
  store i32 0, i32* %64, align 8, !tbaa !43
  %65 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 12
  %66 = bitcast i16* %65 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %66, i8 0, i64 7, i32 8, i1 false) #8
  %67 = load %struct.Dyndata*, %struct.Dyndata** %45, align 8, !tbaa !27
  %68 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %67, i64 0, i32 0, i32 1
  %69 = load i32, i32* %68, align 8, !tbaa !33
  %70 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 10
  store i32 %69, i32* %70, align 8, !tbaa !44
  %71 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %67, i64 0, i32 2, i32 1
  %72 = load i32, i32* %71, align 8, !tbaa !28
  %73 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 11
  store i32 %72, i32* %73, align 4, !tbaa !45
  %74 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 3
  %75 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i64 0, i32 11
  %76 = bitcast %struct.TString** %75 to i64*
  %77 = load i64, i64* %76, align 8, !tbaa !46
  %78 = bitcast %struct.TString** %28 to i64*
  store i64 %77, i64* %78, align 8, !tbaa !21
  %79 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i64 0, i32 5
  store i8 2, i8* %79, align 4, !tbaa !47
  %80 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %7, i64 0, i32 5
  store i8 0, i8* %80, align 2, !tbaa !48
  %81 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %7, i64 0, i32 3
  store i8 0, i8* %81, align 8, !tbaa !50
  %82 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %7, i64 0, i32 1
  store i32 %72, i32* %82, align 8, !tbaa !51
  %83 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %67, i64 0, i32 1, i32 1
  %84 = load i32, i32* %83, align 8, !tbaa !32
  %85 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %7, i64 0, i32 2
  store i32 %84, i32* %85, align 4, !tbaa !52
  %86 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %7, i64 0, i32 4
  store i8 0, i8* %86, align 1, !tbaa !53
  %87 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %7, i64 0, i32 6
  store i8 0, i8* %87, align 1, !tbaa !54
  %88 = bitcast %struct.BlockCnt* %7 to i64*
  store i64 0, i64* %88, align 8, !tbaa !55
  store %struct.BlockCnt* %7, %struct.BlockCnt** %74, align 8, !tbaa !56
  %89 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i64 0, i32 4
  store i8 1, i8* %89, align 1, !tbaa !57
  %90 = call i32 @luaK_codeABCk(%struct.FuncState* nonnull %10, i32 82, i32 0, i32 0, i32 0, i32 0) #9
  %91 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 2
  store i32 -1, i32* %91, align 8, !tbaa !58
  %92 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 3
  store i32 -1, i32* %92, align 4, !tbaa !60
  %93 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 0
  store i32 8, i32* %93, align 8, !tbaa !61
  %94 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 1
  %95 = bitcast %union.anon.7* %94 to i32*
  store i32 0, i32* %95, align 8, !tbaa !11
  %96 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i64 0, i32 12
  %97 = load %struct.TString*, %struct.TString** %96, align 8, !tbaa !62
  %98 = call fastcc i32 @newupvalue(%struct.FuncState* nonnull %10, %struct.TString* %97, %struct.expdesc* nonnull %8) #9
  call void @luaX_next(%struct.LexState* nonnull %9) #9
  %99 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i64 0, i32 3, i32 0
  br label %100

; <label>:100:                                    ; preds = %102, %42
  %101 = load i32, i32* %99, align 8, !tbaa !63
  switch i32 %101, label %102 [
    i32 260, label %106
    i32 261, label %106
    i32 262, label %106
    i32 289, label %106
    i32 277, label %106
  ]

; <label>:102:                                    ; preds = %100
  %103 = icmp eq i32 %101, 274
  call fastcc void @statement(%struct.LexState* nonnull %9) #9
  br i1 %103, label %104, label %100

; <label>:104:                                    ; preds = %102
  %105 = load i32, i32* %99, align 8, !tbaa !63
  br label %106

; <label>:106:                                    ; preds = %100, %100, %100, %100, %100, %104
  %107 = phi i32 [ %105, %104 ], [ %101, %100 ], [ %101, %100 ], [ %101, %100 ], [ %101, %100 ], [ %101, %100 ]
  %108 = icmp eq i32 %107, 289
  br i1 %108, label %110, label %109

; <label>:109:                                    ; preds = %106
  call fastcc void @error_expected(%struct.LexState* nonnull %9, i32 289) #10
  unreachable

; <label>:110:                                    ; preds = %106
  call fastcc void @close_func(%struct.LexState* nonnull %9) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %50) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %49) #8
  %111 = load %union.StackValue*, %union.StackValue** %14, align 8, !tbaa !2
  %112 = getelementptr inbounds %union.StackValue, %union.StackValue* %111, i64 -1
  store %union.StackValue* %112, %union.StackValue** %14, align 8, !tbaa !2
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %12) #8
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #8
  ret %struct.LClosure* %13
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: optsize
declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: optsize
declare hidden void @luaD_inctop(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden %struct.Table* @luaH_new(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaX_setinput(%struct.lua_State*, %struct.LexState*, %struct.Zio*, %struct.TString*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @newupvalue(%struct.FuncState* nocapture, %struct.TString*, %struct.expdesc* nocapture readonly) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %5 = load %struct.Proto*, %struct.Proto** %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 6
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14
  %8 = load i8, i8* %7, align 1, !tbaa !64
  %9 = icmp eq i8 %8, -1
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call fastcc void @errorlimit(%struct.FuncState* nonnull %0, i32 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #10
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = zext i8 %8 to i32
  %13 = load i32, i32* %6, align 8, !tbaa !65
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %15 = load %struct.LexState*, %struct.LexState** %14, align 8, !tbaa !36
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i64 0, i32 6
  %17 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !tbaa !66
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 18
  %19 = bitcast %struct.Upvaldesc** %18 to i8**
  %20 = load i8*, i8** %19, align 8, !tbaa !67
  %21 = tail call i8* @luaM_growaux_(%struct.lua_State* %17, i8* %20, i32 %12, i32* nonnull %6, i32 16, i32 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #9
  store i8* %21, i8** %19, align 8, !tbaa !67
  %22 = load i32, i32* %6, align 8, !tbaa !65
  %23 = icmp slt i32 %13, %22
  %24 = bitcast i8* %21 to %struct.Upvaldesc*
  br i1 %23, label %25, label %33

; <label>:25:                                     ; preds = %11
  %26 = sext i32 %13 to i64
  %27 = sext i32 %22 to i64
  br label %28

; <label>:28:                                     ; preds = %25, %28
  %29 = phi i64 [ %26, %25 ], [ %30, %28 ]
  %30 = add nsw i64 %29, 1
  %31 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %24, i64 %29, i32 0
  store %struct.TString* null, %struct.TString** %31, align 8, !tbaa !68
  %32 = icmp slt i64 %30, %27
  br i1 %32, label %28, label %33

; <label>:33:                                     ; preds = %28, %11
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %35 = load i32, i32* %34, align 8, !tbaa !61
  %36 = icmp eq i32 %35, 8
  %37 = zext i1 %36 to i8
  %38 = load i8, i8* %7, align 1, !tbaa !64
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %24, i64 %39, i32 1
  store i8 %37, i8* %40, align 8, !tbaa !70
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %42 = bitcast %union.anon.7* %41 to i32*
  %43 = load i32, i32* %42, align 8, !tbaa !11
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %24, i64 %39, i32 2
  store i8 %44, i8* %45, align 1, !tbaa !71
  %46 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %24, i64 %39, i32 0
  store %struct.TString* %1, %struct.TString** %46, align 8, !tbaa !68
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 2
  %48 = load i8, i8* %47, align 1, !tbaa !23
  %49 = and i8 %48, 32
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %63, label %51

; <label>:51:                                     ; preds = %33
  %52 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 2
  %53 = load i8, i8* %52, align 1, !tbaa !24
  %54 = and i8 %53, 24
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %63, label %56

; <label>:56:                                     ; preds = %51
  %57 = load %struct.LexState*, %struct.LexState** %14, align 8, !tbaa !36
  %58 = getelementptr inbounds %struct.LexState, %struct.LexState* %57, i64 0, i32 6
  %59 = load %struct.lua_State*, %struct.lua_State** %58, align 8, !tbaa !66
  %60 = bitcast %struct.Proto* %5 to %struct.GCObject*
  %61 = bitcast %struct.TString* %1 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* %59, %struct.GCObject* %60, %struct.GCObject* %61) #9
  %62 = load i8, i8* %7, align 1, !tbaa !64
  br label %63

; <label>:63:                                     ; preds = %51, %33, %56
  %64 = phi i8 [ %38, %51 ], [ %38, %33 ], [ %62, %56 ]
  %65 = add i8 %64, 1
  store i8 %65, i8* %7, align 1, !tbaa !64
  %66 = zext i8 %64 to i32
  ret i32 %66
}

; Function Attrs: optsize
declare hidden void @luaX_next(%struct.LexState*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @close_func(%struct.LexState* nocapture) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 13
  %9 = load i8, i8* %8, align 2, !tbaa !72
  %10 = zext i8 %9 to i32
  tail call void @luaK_ret(%struct.FuncState* %5, i32 %10, i32 0) #9
  tail call fastcc void @leaveblock(%struct.FuncState* %5) #11
  tail call void @luaK_finish(%struct.FuncState* %5) #9
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 16
  %12 = bitcast i32** %11 to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !73
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 8
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 4
  %16 = load i32, i32* %15, align 8, !tbaa !37
  %17 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %13, i32* nonnull %14, i32 %16, i32 4) #9
  store i8* %17, i8** %12, align 8, !tbaa !73
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 19
  %19 = load i8*, i8** %18, align 8, !tbaa !74
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 9
  %21 = load i32, i32* %15, align 8, !tbaa !37
  %22 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %19, i32* nonnull %20, i32 %21, i32 1) #9
  store i8* %22, i8** %18, align 8, !tbaa !74
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 20
  %24 = bitcast %struct.AbsLineInfo** %23 to i8**
  %25 = load i8*, i8** %24, align 8, !tbaa !75
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 12
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 9
  %28 = load i32, i32* %27, align 4, !tbaa !42
  %29 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %25, i32* nonnull %26, i32 %28, i32 8) #9
  store i8* %29, i8** %24, align 8, !tbaa !75
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 15
  %31 = bitcast %struct.TValue** %30 to i8**
  %32 = load i8*, i8** %31, align 8, !tbaa !76
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 7
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 7
  %35 = load i32, i32* %34, align 4, !tbaa !41
  %36 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %32, i32* nonnull %33, i32 %35, i32 16) #9
  store i8* %36, i8** %31, align 8, !tbaa !76
  %37 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 17
  %38 = bitcast %struct.Proto*** %37 to i8**
  %39 = load i8*, i8** %38, align 8, !tbaa !77
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 10
  %41 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 8
  %42 = load i32, i32* %41, align 8, !tbaa !43
  %43 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %39, i32* nonnull %40, i32 %42, i32 8) #9
  store i8* %43, i8** %38, align 8, !tbaa !77
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 21
  %45 = bitcast %struct.LocVar** %44 to i8**
  %46 = load i8*, i8** %45, align 8, !tbaa !78
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 11
  %48 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 12
  %49 = load i16, i16* %48, align 8, !tbaa !79
  %50 = sext i16 %49 to i32
  %51 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %46, i32* nonnull %47, i32 %50, i32 16) #9
  store i8* %51, i8** %45, align 8, !tbaa !78
  %52 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 18
  %53 = bitcast %struct.Upvaldesc** %52 to i8**
  %54 = load i8*, i8** %53, align 8, !tbaa !67
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 6
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 14
  %57 = load i8, i8* %56, align 1, !tbaa !64
  %58 = zext i8 %57 to i32
  %59 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %54, i32* nonnull %55, i32 %58, i32 16) #9
  store i8* %59, i8** %53, align 8, !tbaa !67
  %60 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 1
  %61 = bitcast %struct.FuncState** %60 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !35
  %63 = bitcast %struct.FuncState** %4 to i64*
  store i64 %62, i64* %63, align 8, !tbaa !34
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i64 0, i32 7
  %65 = load %struct.global_State*, %struct.global_State** %64, align 8, !tbaa !80
  %66 = getelementptr inbounds %struct.global_State, %struct.global_State* %65, i64 0, i32 3
  %67 = load i64, i64* %66, align 8, !tbaa !81
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %1
  tail call void @luaC_step(%struct.lua_State* %3) #9
  br label %70

; <label>:70:                                     ; preds = %69, %1
  ret void
}

; Function Attrs: optsize
declare hidden i32 @luaK_codeABCk(%struct.FuncState*, i32, i32, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32, i32*, i32, i32, i8*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @errorlimit(%struct.FuncState* nocapture readonly, i32, i8*) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %5 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 6
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8, !tbaa !19
  %10 = getelementptr inbounds %struct.Proto, %struct.Proto* %9, i64 0, i32 13
  %11 = load i32, i32* %10, align 4, !tbaa !38
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %3
  %14 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %11) #9
  br label %15

; <label>:15:                                     ; preds = %3, %13
  %16 = phi i8* [ %14, %13 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %3 ]
  %17 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %2, i32 %1, i8* %16) #9
  %18 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !36
  tail call void @luaX_syntaxerror(%struct.LexState* %18, i8* %17) #10
  unreachable
}

; Function Attrs: optsize
declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @statement(%struct.LexState*) unnamed_addr #0 {
  %2 = alloca %struct.expdesc, align 8
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca %struct.expdesc, align 8
  %6 = alloca %struct.LHS_assign, align 8
  %7 = alloca %struct.expdesc, align 8
  %8 = alloca %struct.expdesc, align 8
  %9 = alloca %struct.expdesc, align 8
  %10 = alloca %struct.expdesc, align 8
  %11 = alloca %struct.expdesc, align 8
  %12 = alloca %struct.BlockCnt, align 8
  %13 = alloca %struct.BlockCnt, align 8
  %14 = alloca %struct.expdesc, align 8
  %15 = alloca %struct.BlockCnt, align 8
  %16 = alloca %struct.BlockCnt, align 8
  %17 = alloca i32, align 4
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %19 = load i32, i32* %18, align 4, !tbaa !84
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %21 = load %struct.lua_State*, %struct.lua_State** %20, align 8, !tbaa !66
  tail call void @luaE_enterCcall(%struct.lua_State* %21) #9
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %23 = load i32, i32* %22, align 8, !tbaa !63
  switch i32 %23, label %478 [
    i32 59, label %24
    i32 267, label %25
    i32 278, label %35
    i32 259, label %70
    i32 264, label %71
    i32 273, label %169
    i32 265, label %227
    i32 269, label %239
    i32 288, label %327
    i32 274, label %370
    i32 258, label %420
    i32 266, label %431
  ]

; <label>:24:                                     ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %505

; <label>:25:                                     ; preds = %1
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %27 = load %struct.FuncState*, %struct.FuncState** %26, align 8, !tbaa !34
  %28 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #8
  store i32 -1, i32* %17, align 4, !tbaa !85
  call fastcc void @test_then_block(%struct.LexState* nonnull %0, i32* nonnull %17) #9
  br label %29

; <label>:29:                                     ; preds = %31, %25
  %30 = load i32, i32* %22, align 8, !tbaa !63
  switch i32 %30, label %33 [
    i32 261, label %31
    i32 260, label %32
  ]

; <label>:31:                                     ; preds = %29
  call fastcc void @test_then_block(%struct.LexState* nonnull %0, i32* nonnull %17) #9
  br label %29

; <label>:32:                                     ; preds = %29
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  call fastcc void @block(%struct.LexState* nonnull %0) #9
  br label %33

; <label>:33:                                     ; preds = %29, %32
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 267, i32 %19) #9
  %34 = load i32, i32* %17, align 4, !tbaa !85
  call void @luaK_patchtohere(%struct.FuncState* %27, i32 %34) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #8
  br label %505

; <label>:35:                                     ; preds = %1
  %36 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %37 = load %struct.FuncState*, %struct.FuncState** %36, align 8, !tbaa !34
  %38 = bitcast %struct.BlockCnt* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %38) #8
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %39 = tail call i32 @luaK_getlabel(%struct.FuncState* %37) #9
  %40 = tail call fastcc i32 @cond(%struct.LexState* nonnull %0) #9
  %41 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 5
  store i8 1, i8* %41, align 2, !tbaa !48
  %42 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %37, i64 0, i32 13
  %43 = load i8, i8* %42, align 2, !tbaa !72
  %44 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 3
  store i8 %43, i8* %44, align 8, !tbaa !50
  %45 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %37, i64 0, i32 2
  %46 = load %struct.LexState*, %struct.LexState** %45, align 8, !tbaa !36
  %47 = getelementptr inbounds %struct.LexState, %struct.LexState* %46, i64 0, i32 10
  %48 = load %struct.Dyndata*, %struct.Dyndata** %47, align 8, !tbaa !27
  %49 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %48, i64 0, i32 2, i32 1
  %50 = load i32, i32* %49, align 8, !tbaa !28
  %51 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 1
  store i32 %50, i32* %51, align 8, !tbaa !51
  %52 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %48, i64 0, i32 1, i32 1
  %53 = load i32, i32* %52, align 8, !tbaa !32
  %54 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 2
  store i32 %53, i32* %54, align 4, !tbaa !52
  %55 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 4
  store i8 0, i8* %55, align 1, !tbaa !53
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %37, i64 0, i32 3
  %57 = load %struct.BlockCnt*, %struct.BlockCnt** %56, align 8, !tbaa !56
  %58 = icmp eq %struct.BlockCnt* %57, null
  %59 = ptrtoint %struct.BlockCnt* %57 to i64
  br i1 %58, label %65, label %60

; <label>:60:                                     ; preds = %35
  %61 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %57, i64 0, i32 6
  %62 = load i8, i8* %61, align 1, !tbaa !54
  %63 = icmp ne i8 %62, 0
  %64 = zext i1 %63 to i8
  br label %65

; <label>:65:                                     ; preds = %35, %60
  %66 = phi i8 [ 0, %35 ], [ %64, %60 ]
  %67 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 6
  store i8 %66, i8* %67, align 1, !tbaa !54
  %68 = bitcast %struct.BlockCnt* %16 to i64*
  store i64 %59, i64* %68, align 8, !tbaa !55
  store %struct.BlockCnt* %16, %struct.BlockCnt** %56, align 8, !tbaa !56
  call fastcc void @checknext(%struct.LexState* nonnull %0, i32 259) #9
  call fastcc void @block(%struct.LexState* nonnull %0) #9
  %69 = call i32 @luaK_jump(%struct.FuncState* %37) #9
  call void @luaK_patchlist(%struct.FuncState* %37, i32 %69, i32 %39) #9
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 278, i32 %19) #9
  call fastcc void @leaveblock(%struct.FuncState* %37) #9
  call void @luaK_patchtohere(%struct.FuncState* %37, i32 %40) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %38) #8
  br label %505

; <label>:70:                                     ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  tail call fastcc void @block(%struct.LexState* nonnull %0) #11
  tail call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 259, i32 %19) #11
  br label %505

; <label>:71:                                     ; preds = %1
  %72 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %73 = load %struct.FuncState*, %struct.FuncState** %72, align 8, !tbaa !34
  %74 = bitcast %struct.BlockCnt* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %74) #8
  %75 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 5
  store i8 1, i8* %75, align 2, !tbaa !48
  %76 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %73, i64 0, i32 13
  %77 = load i8, i8* %76, align 2, !tbaa !72
  %78 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 3
  store i8 %77, i8* %78, align 8, !tbaa !50
  %79 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %73, i64 0, i32 2
  %80 = load %struct.LexState*, %struct.LexState** %79, align 8, !tbaa !36
  %81 = getelementptr inbounds %struct.LexState, %struct.LexState* %80, i64 0, i32 10
  %82 = load %struct.Dyndata*, %struct.Dyndata** %81, align 8, !tbaa !27
  %83 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %82, i64 0, i32 2, i32 1
  %84 = load i32, i32* %83, align 8, !tbaa !28
  %85 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 1
  store i32 %84, i32* %85, align 8, !tbaa !51
  %86 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %82, i64 0, i32 1, i32 1
  %87 = load i32, i32* %86, align 8, !tbaa !32
  %88 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 2
  store i32 %87, i32* %88, align 4, !tbaa !52
  %89 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 4
  store i8 0, i8* %89, align 1, !tbaa !53
  %90 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %73, i64 0, i32 3
  %91 = load %struct.BlockCnt*, %struct.BlockCnt** %90, align 8, !tbaa !56
  %92 = icmp eq %struct.BlockCnt* %91, null
  %93 = ptrtoint %struct.BlockCnt* %91 to i64
  br i1 %92, label %99, label %94

; <label>:94:                                     ; preds = %71
  %95 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %91, i64 0, i32 6
  %96 = load i8, i8* %95, align 1, !tbaa !54
  %97 = icmp ne i8 %96, 0
  %98 = zext i1 %97 to i8
  br label %99

; <label>:99:                                     ; preds = %94, %71
  %100 = phi i8 [ 0, %71 ], [ %98, %94 ]
  %101 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 6
  store i8 %100, i8* %101, align 1, !tbaa !54
  %102 = bitcast %struct.BlockCnt* %15 to i64*
  store i64 %93, i64* %102, align 8, !tbaa !55
  store %struct.BlockCnt* %15, %struct.BlockCnt** %90, align 8, !tbaa !56
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  %103 = call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #9
  %104 = load i32, i32* %22, align 8, !tbaa !63
  switch i32 %104, label %167 [
    i32 61, label %105
    i32 44, label %129
    i32 268, label %129
  ]

; <label>:105:                                    ; preds = %99
  %106 = load %struct.FuncState*, %struct.FuncState** %72, align 8, !tbaa !34
  %107 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %106, i64 0, i32 15
  %108 = load i8, i8* %107, align 4, !tbaa !86
  %109 = zext i8 %108 to i32
  %110 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i64 11) #9
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %110) #9
  %111 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i64 11) #9
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %111) #9
  %112 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i64 10) #9
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %112) #9
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %103) #9
  call fastcc void @checknext(%struct.LexState* nonnull %0, i32 61) #9
  %113 = bitcast %struct.expdesc* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %113) #8
  %114 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %5, i32 0) #9
  %115 = load %struct.FuncState*, %struct.FuncState** %72, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %115, %struct.expdesc* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %113) #8
  call fastcc void @checknext(%struct.LexState* nonnull %0, i32 44) #9
  %116 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %116) #8
  %117 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #9
  %118 = load %struct.FuncState*, %struct.FuncState** %72, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %118, %struct.expdesc* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %116) #8
  %119 = load i32, i32* %22, align 8, !tbaa !63
  %120 = icmp eq i32 %119, 44
  br i1 %120, label %121, label %125

; <label>:121:                                    ; preds = %105
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  %122 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %122) #8
  %123 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3, i32 0) #9
  %124 = load %struct.FuncState*, %struct.FuncState** %72, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %124, %struct.expdesc* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %122) #8
  br label %128

; <label>:125:                                    ; preds = %105
  %126 = load i8, i8* %107, align 4, !tbaa !86
  %127 = zext i8 %126 to i32
  call void @luaK_int(%struct.FuncState* %106, i32 %127, i64 1) #9
  call void @luaK_reserveregs(%struct.FuncState* %106, i32 1) #9
  br label %128

; <label>:128:                                    ; preds = %125, %121
  call fastcc void @adjustlocalvars(%struct.LexState* nonnull %0, i32 3) #9
  call fastcc void @forbody(%struct.LexState* nonnull %0, i32 %109, i32 %19, i32 1, i32 0) #9
  br label %168

; <label>:129:                                    ; preds = %99, %99
  %130 = load %struct.FuncState*, %struct.FuncState** %72, align 8, !tbaa !34
  %131 = bitcast %struct.expdesc* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %131) #8
  %132 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %130, i64 0, i32 15
  %133 = load i8, i8* %132, align 4, !tbaa !86
  %134 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i64 15) #9
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %134) #9
  %135 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i64 11) #9
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %135) #9
  %136 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %130, i64 0, i32 13
  %137 = load i8, i8* %136, align 2, !tbaa !72
  %138 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %130, i64 0, i32 3
  br label %139

; <label>:139:                                    ; preds = %139, %129
  %140 = phi %struct.BlockCnt** [ %138, %129 ], [ %145, %139 ]
  %141 = load %struct.BlockCnt*, %struct.BlockCnt** %140, align 8, !tbaa !87
  %142 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %141, i64 0, i32 3
  %143 = load i8, i8* %142, align 8, !tbaa !50
  %144 = icmp ugt i8 %143, %137
  %145 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %141, i64 0, i32 0
  br i1 %144, label %139, label %146

; <label>:146:                                    ; preds = %139
  %147 = zext i8 %133 to i32
  %148 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %141, i64 0, i32 4
  store i8 1, i8* %148, align 1, !tbaa !53
  %149 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %130, i64 0, i32 17
  store i8 1, i8* %149, align 2, !tbaa !88
  %150 = call %struct.TString* @luaX_newstring(%struct.LexState* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i64 13) #9
  call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %150) #9
  %151 = call %struct.TString* @luaX_newstring(%struct.LexState* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i64 13) #9
  call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %151) #9
  call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %103) #9
  %152 = load i32, i32* %22, align 8, !tbaa !63
  %153 = icmp eq i32 %152, 44
  br i1 %153, label %154, label %163

; <label>:154:                                    ; preds = %146
  br label %155

; <label>:155:                                    ; preds = %154, %155
  %156 = phi i32 [ %158, %155 ], [ 5, %154 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  %157 = call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #9
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %157) #9
  %158 = add nuw nsw i32 %156, 1
  %159 = load i32, i32* %22, align 8, !tbaa !63
  %160 = icmp eq i32 %159, 44
  br i1 %160, label %155, label %161

; <label>:161:                                    ; preds = %155
  %162 = add nsw i32 %156, -3
  br label %163

; <label>:163:                                    ; preds = %161, %146
  %164 = phi i32 [ 1, %146 ], [ %162, %161 ]
  call fastcc void @checknext(%struct.LexState* nonnull %0, i32 268) #9
  %165 = load i32, i32* %18, align 4, !tbaa !84
  %166 = call fastcc i32 @explist(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %14) #9
  call fastcc void @adjust_assign(%struct.LexState* nonnull %0, i32 4, i32 %166, %struct.expdesc* nonnull %14) #9
  call fastcc void @adjustlocalvars(%struct.LexState* nonnull %0, i32 4) #9
  call void @luaK_checkstack(%struct.FuncState* %130, i32 3) #9
  call fastcc void @forbody(%struct.LexState* nonnull %0, i32 %147, i32 %165, i32 %164, i32 1) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %131) #8
  br label %168

; <label>:167:                                    ; preds = %99
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0)) #10
  unreachable

; <label>:168:                                    ; preds = %128, %163
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 264, i32 %19) #9
  call fastcc void @leaveblock(%struct.FuncState* %73) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %74) #8
  br label %505

; <label>:169:                                    ; preds = %1
  %170 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %171 = load %struct.FuncState*, %struct.FuncState** %170, align 8, !tbaa !34
  %172 = tail call i32 @luaK_getlabel(%struct.FuncState* %171) #9
  %173 = bitcast %struct.BlockCnt* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %173) #8
  %174 = bitcast %struct.BlockCnt* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %174) #8
  %175 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %12, i64 0, i32 5
  store i8 1, i8* %175, align 2, !tbaa !48
  %176 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %171, i64 0, i32 13
  %177 = load i8, i8* %176, align 2, !tbaa !72
  %178 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %12, i64 0, i32 3
  store i8 %177, i8* %178, align 8, !tbaa !50
  %179 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %171, i64 0, i32 2
  %180 = load %struct.LexState*, %struct.LexState** %179, align 8, !tbaa !36
  %181 = getelementptr inbounds %struct.LexState, %struct.LexState* %180, i64 0, i32 10
  %182 = load %struct.Dyndata*, %struct.Dyndata** %181, align 8, !tbaa !27
  %183 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %182, i64 0, i32 2, i32 1
  %184 = load i32, i32* %183, align 8, !tbaa !28
  %185 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %12, i64 0, i32 1
  store i32 %184, i32* %185, align 8, !tbaa !51
  %186 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %182, i64 0, i32 1, i32 1
  %187 = load i32, i32* %186, align 8, !tbaa !32
  %188 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %12, i64 0, i32 2
  store i32 %187, i32* %188, align 4, !tbaa !52
  %189 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %12, i64 0, i32 4
  store i8 0, i8* %189, align 1, !tbaa !53
  %190 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %171, i64 0, i32 3
  %191 = load %struct.BlockCnt*, %struct.BlockCnt** %190, align 8, !tbaa !56
  %192 = icmp eq %struct.BlockCnt* %191, null
  %193 = ptrtoint %struct.BlockCnt* %191 to i64
  br i1 %192, label %199, label %194

; <label>:194:                                    ; preds = %169
  %195 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %191, i64 0, i32 6
  %196 = load i8, i8* %195, align 1, !tbaa !54
  %197 = icmp ne i8 %196, 0
  %198 = zext i1 %197 to i8
  br label %199

; <label>:199:                                    ; preds = %194, %169
  %200 = phi i8 [ 0, %169 ], [ %198, %194 ]
  %201 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %12, i64 0, i32 6
  store i8 %200, i8* %201, align 1, !tbaa !54
  %202 = bitcast %struct.BlockCnt* %12 to i64*
  store i64 %193, i64* %202, align 8, !tbaa !55
  %203 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %13, i64 0, i32 5
  store i8 0, i8* %203, align 2, !tbaa !48
  %204 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %13, i64 0, i32 3
  store i8 %177, i8* %204, align 8, !tbaa !50
  %205 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %13, i64 0, i32 1
  store i32 %184, i32* %205, align 8, !tbaa !51
  %206 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %13, i64 0, i32 2
  store i32 %187, i32* %206, align 4, !tbaa !52
  %207 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %13, i64 0, i32 4
  store i8 0, i8* %207, align 1, !tbaa !53
  %208 = ptrtoint %struct.BlockCnt* %12 to i64
  %209 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %13, i64 0, i32 6
  store i8 %200, i8* %209, align 1, !tbaa !54
  %210 = bitcast %struct.BlockCnt* %13 to i64*
  store i64 %208, i64* %210, align 8, !tbaa !55
  store %struct.BlockCnt* %13, %struct.BlockCnt** %190, align 8, !tbaa !56
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %211

; <label>:211:                                    ; preds = %213, %199
  %212 = load i32, i32* %22, align 8, !tbaa !63
  switch i32 %212, label %213 [
    i32 260, label %215
    i32 261, label %215
    i32 262, label %215
    i32 289, label %215
    i32 277, label %215
  ]

; <label>:213:                                    ; preds = %211
  %214 = icmp eq i32 %212, 274
  call fastcc void @statement(%struct.LexState* nonnull %0) #9
  br i1 %214, label %215, label %211

; <label>:215:                                    ; preds = %211, %211, %211, %211, %211, %213
  call fastcc void @check_match(%struct.LexState* %0, i32 277, i32 273, i32 %19) #9
  %216 = call fastcc i32 @cond(%struct.LexState* %0) #9
  call fastcc void @leaveblock(%struct.FuncState* %171) #9
  %217 = load i8, i8* %207, align 1, !tbaa !53
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %225, label %219

; <label>:219:                                    ; preds = %215
  %220 = call i32 @luaK_jump(%struct.FuncState* %171) #9
  call void @luaK_patchtohere(%struct.FuncState* %171, i32 %216) #9
  %221 = load i8, i8* %204, align 8, !tbaa !50
  %222 = zext i8 %221 to i32
  %223 = call i32 @luaK_codeABCk(%struct.FuncState* %171, i32 55, i32 %222, i32 0, i32 0, i32 0) #9
  %224 = call i32 @luaK_jump(%struct.FuncState* %171) #9
  call void @luaK_patchtohere(%struct.FuncState* %171, i32 %220) #9
  br label %225

; <label>:225:                                    ; preds = %215, %219
  %226 = phi i32 [ %224, %219 ], [ %216, %215 ]
  call void @luaK_patchlist(%struct.FuncState* %171, i32 %226, i32 %172) #9
  call fastcc void @leaveblock(%struct.FuncState* %171) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %174) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %173) #8
  br label %505

; <label>:227:                                    ; preds = %1
  %228 = bitcast %struct.expdesc* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %228) #8
  %229 = bitcast %struct.expdesc* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %229) #8
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  call fastcc void @singlevar(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %10) #9
  br label %230

; <label>:230:                                    ; preds = %232, %227
  %231 = load i32, i32* %22, align 8, !tbaa !63
  switch i32 %231, label %234 [
    i32 46, label %232
    i32 58, label %233
  ]

; <label>:232:                                    ; preds = %230
  call fastcc void @fieldsel(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %10) #9
  br label %230

; <label>:233:                                    ; preds = %230
  call fastcc void @fieldsel(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %10) #9
  br label %234

; <label>:234:                                    ; preds = %230, %233
  %235 = phi i32 [ 1, %233 ], [ 0, %230 ]
  call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %11, i32 %235, i32 %19) #9
  %236 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %237 = load %struct.FuncState*, %struct.FuncState** %236, align 8, !tbaa !34
  call void @luaK_storevar(%struct.FuncState* %237, %struct.expdesc* nonnull %10, %struct.expdesc* nonnull %11) #9
  %238 = load %struct.FuncState*, %struct.FuncState** %236, align 8, !tbaa !34
  call void @luaK_fixline(%struct.FuncState* %238, i32 %19) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %229) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %228) #8
  br label %505

; <label>:239:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %240 = load i32, i32* %22, align 8, !tbaa !63
  switch i32 %240, label %305 [
    i32 265, label %241
    i32 42, label %270
  ]

; <label>:241:                                    ; preds = %239
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %242 = bitcast %struct.expdesc* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %242) #8
  %243 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %244 = load %struct.FuncState*, %struct.FuncState** %243, align 8, !tbaa !34
  %245 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #9
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %245) #9
  tail call fastcc void @adjustlocalvars(%struct.LexState* nonnull %0, i32 1) #9
  %246 = load i32, i32* %18, align 4, !tbaa !84
  call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %9, i32 0, i32 %246) #9
  %247 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %244, i64 0, i32 4
  %248 = load i32, i32* %247, align 8, !tbaa !37
  %249 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %9, i64 0, i32 1
  %250 = bitcast %union.anon.7* %249 to i32*
  %251 = load i32, i32* %250, align 8, !tbaa !11
  %252 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %244, i64 0, i32 2
  %253 = load %struct.LexState*, %struct.LexState** %252, align 8, !tbaa !36
  %254 = getelementptr inbounds %struct.LexState, %struct.LexState* %253, i64 0, i32 10
  %255 = load %struct.Dyndata*, %struct.Dyndata** %254, align 8, !tbaa !27
  %256 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %255, i64 0, i32 0, i32 0
  %257 = load %struct.Vardesc*, %struct.Vardesc** %256, align 8, !tbaa !89
  %258 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %244, i64 0, i32 10
  %259 = load i32, i32* %258, align 8, !tbaa !44
  %260 = add nsw i32 %259, %251
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %257, i64 %261, i32 0
  %263 = load i16, i16* %262, align 2, !tbaa !90
  %264 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %244, i64 0, i32 0
  %265 = load %struct.Proto*, %struct.Proto** %264, align 8, !tbaa !19
  %266 = getelementptr inbounds %struct.Proto, %struct.Proto* %265, i64 0, i32 21
  %267 = load %struct.LocVar*, %struct.LocVar** %266, align 8, !tbaa !78
  %268 = sext i16 %263 to i64
  %269 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %267, i64 %268, i32 1
  store i32 %248, i32* %269, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %242) #8
  br label %505

; <label>:270:                                    ; preds = %239
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %271 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %272 = load %struct.FuncState*, %struct.FuncState** %271, align 8, !tbaa !34
  %273 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #9
  %274 = getelementptr inbounds %struct.TString, %struct.TString* %273, i64 1
  %275 = bitcast %struct.TString* %274 to i8*
  %276 = tail call i32 @strcmp(i8* nonnull %275, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)) #12
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %281, label %278

; <label>:278:                                    ; preds = %270
  %279 = load %struct.lua_State*, %struct.lua_State** %20, align 8, !tbaa !66
  %280 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %279, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), %struct.TString* nonnull %274) #9
  tail call void @luaK_semerror(%struct.LexState* nonnull %0, i8* %280) #10
  unreachable

; <label>:281:                                    ; preds = %270
  %282 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #9
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %282) #9
  tail call fastcc void @checknext(%struct.LexState* nonnull %0, i32 61) #9
  %283 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %283) #8
  %284 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %2, i32 0) #9
  %285 = load %struct.FuncState*, %struct.FuncState** %271, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %285, %struct.expdesc* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %283) #8
  %286 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %272, i64 0, i32 13
  %287 = load i8, i8* %286, align 2, !tbaa !72
  %288 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %272, i64 0, i32 3
  br label %289

; <label>:289:                                    ; preds = %289, %281
  %290 = phi %struct.BlockCnt** [ %288, %281 ], [ %295, %289 ]
  %291 = load %struct.BlockCnt*, %struct.BlockCnt** %290, align 8, !tbaa !87
  %292 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %291, i64 0, i32 3
  %293 = load i8, i8* %292, align 8, !tbaa !50
  %294 = icmp ugt i8 %293, %287
  %295 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %291, i64 0, i32 0
  br i1 %294, label %289, label %296

; <label>:296:                                    ; preds = %289
  %297 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %291, i64 0, i32 4
  store i8 1, i8* %297, align 1, !tbaa !53
  %298 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %272, i64 0, i32 17
  store i8 1, i8* %298, align 2, !tbaa !88
  %299 = load %struct.BlockCnt*, %struct.BlockCnt** %288, align 8, !tbaa !56
  %300 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %299, i64 0, i32 6
  store i8 1, i8* %300, align 1, !tbaa !54
  call fastcc void @adjustlocalvars(%struct.LexState* %0, i32 1) #9
  %301 = load i8, i8* %286, align 2, !tbaa !72
  %302 = zext i8 %301 to i32
  %303 = add nsw i32 %302, -1
  %304 = call i32 @luaK_codeABCk(%struct.FuncState* %272, i32 56, i32 %303, i32 0, i32 0, i32 0) #9
  br label %505

; <label>:305:                                    ; preds = %239
  %306 = bitcast %struct.expdesc* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %306) #8
  %307 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #9
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %307) #9
  %308 = load i32, i32* %22, align 8, !tbaa !63
  %309 = icmp eq i32 %308, 44
  br i1 %309, label %310, label %317

; <label>:310:                                    ; preds = %305
  br label %311

; <label>:311:                                    ; preds = %310, %311
  %312 = phi i32 [ %314, %311 ], [ 1, %310 ]
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %313 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #9
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %313) #9
  %314 = add nuw nsw i32 %312, 1
  %315 = load i32, i32* %22, align 8, !tbaa !63
  %316 = icmp eq i32 %315, 44
  br i1 %316, label %311, label %317

; <label>:317:                                    ; preds = %311, %305
  %318 = phi i32 [ %308, %305 ], [ %315, %311 ]
  %319 = phi i32 [ 1, %305 ], [ %314, %311 ]
  %320 = icmp eq i32 %318, 61
  br i1 %320, label %321, label %323

; <label>:321:                                    ; preds = %317
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %322 = call fastcc i32 @explist(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %8) #9
  br label %325

; <label>:323:                                    ; preds = %317
  %324 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 0
  store i32 0, i32* %324, align 8, !tbaa !61
  br label %325

; <label>:325:                                    ; preds = %323, %321
  %326 = phi i32 [ %322, %321 ], [ 0, %323 ]
  call fastcc void @adjust_assign(%struct.LexState* nonnull %0, i32 %319, i32 %326, %struct.expdesc* nonnull %8) #9
  call fastcc void @adjustlocalvars(%struct.LexState* nonnull %0, i32 %319) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %306) #8
  br label %505

; <label>:327:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %328 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #11
  tail call fastcc void @checknext(%struct.LexState* nonnull %0, i32 288) #9
  br label %329

; <label>:329:                                    ; preds = %331, %327
  %330 = load i32, i32* %22, align 8, !tbaa !63
  switch i32 %330, label %332 [
    i32 288, label %331
    i32 59, label %331
  ]

; <label>:331:                                    ; preds = %329, %329
  tail call fastcc void @statement(%struct.LexState* nonnull %0) #9
  br label %329

; <label>:332:                                    ; preds = %329
  %333 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %334 = load %struct.Dyndata*, %struct.Dyndata** %333, align 8, !tbaa !27
  %335 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %336 = load %struct.FuncState*, %struct.FuncState** %335, align 8, !tbaa !34
  %337 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %336, i64 0, i32 11
  %338 = load i32, i32* %337, align 4, !tbaa !45
  %339 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %334, i64 0, i32 2, i32 1
  %340 = load i32, i32* %339, align 8, !tbaa !28
  %341 = icmp slt i32 %338, %340
  br i1 %341, label %342, label %364

; <label>:342:                                    ; preds = %332
  %343 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %334, i64 0, i32 2, i32 0
  %344 = load %struct.Labeldesc*, %struct.Labeldesc** %343, align 8, !tbaa !94
  %345 = sext i32 %338 to i64
  %346 = sext i32 %340 to i64
  br label %349

; <label>:347:                                    ; preds = %349
  %348 = icmp slt i64 %355, %346
  br i1 %348, label %349, label %364

; <label>:349:                                    ; preds = %347, %342
  %350 = phi i64 [ %345, %342 ], [ %355, %347 ]
  %351 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %344, i64 %350
  %352 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %351, i64 0, i32 0
  %353 = load %struct.TString*, %struct.TString** %352, align 8, !tbaa !95
  %354 = icmp eq %struct.TString* %353, %328
  %355 = add nsw i64 %350, 1
  br i1 %354, label %356, label %347

; <label>:356:                                    ; preds = %349
  %357 = icmp eq %struct.Labeldesc* %351, null
  br i1 %357, label %364, label %358, !prof !97

; <label>:358:                                    ; preds = %356
  %359 = load %struct.lua_State*, %struct.lua_State** %20, align 8, !tbaa !66
  %360 = getelementptr inbounds %struct.TString, %struct.TString* %328, i64 1
  %361 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %344, i64 %350, i32 2
  %362 = load i32, i32* %361, align 4, !tbaa !98
  %363 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %359, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), %struct.TString* nonnull %360, i32 %362) #9
  tail call void @luaK_semerror(%struct.LexState* %0, i8* %363) #10
  unreachable

; <label>:364:                                    ; preds = %347, %356, %332
  switch i32 %330, label %366 [
    i32 260, label %367
    i32 261, label %367
    i32 262, label %367
    i32 289, label %367
    i32 277, label %365
  ]

; <label>:365:                                    ; preds = %364
  br label %367

; <label>:366:                                    ; preds = %364
  br label %367

; <label>:367:                                    ; preds = %364, %364, %364, %364, %365, %366
  %368 = phi i32 [ 0, %366 ], [ 0, %365 ], [ 1, %364 ], [ 1, %364 ], [ 1, %364 ], [ 1, %364 ]
  %369 = tail call fastcc i32 @createlabel(%struct.LexState* %0, %struct.TString* %328, i32 %19, i32 %368) #9
  br label %505

; <label>:370:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %371 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %372 = load %struct.FuncState*, %struct.FuncState** %371, align 8, !tbaa !34
  %373 = bitcast %struct.expdesc* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %373) #8
  %374 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %372, i64 0, i32 13
  %375 = load i8, i8* %374, align 2, !tbaa !72
  %376 = zext i8 %375 to i32
  %377 = load i32, i32* %22, align 8, !tbaa !63
  switch i32 %377, label %378 [
    i32 260, label %413
    i32 261, label %413
    i32 262, label %413
    i32 289, label %413
    i32 277, label %413
    i32 59, label %413
  ]

; <label>:378:                                    ; preds = %370
  %379 = call fastcc i32 @explist(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %7) #9
  %380 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i64 0, i32 0
  %381 = load i32, i32* %380, align 8, !tbaa !61
  %382 = and i32 %381, -2
  %383 = icmp eq i32 %382, 16
  br i1 %383, label %384, label %408

; <label>:384:                                    ; preds = %378
  call void @luaK_setreturns(%struct.FuncState* %372, %struct.expdesc* nonnull %7, i32 -1) #9
  %385 = load i32, i32* %380, align 8, !tbaa !61
  %386 = icmp eq i32 %385, 16
  %387 = icmp eq i32 %379, 1
  %388 = and i1 %387, %386
  br i1 %388, label %389, label %413

; <label>:389:                                    ; preds = %384
  %390 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %372, i64 0, i32 3
  %391 = load %struct.BlockCnt*, %struct.BlockCnt** %390, align 8, !tbaa !56
  %392 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %391, i64 0, i32 6
  %393 = load i8, i8* %392, align 1, !tbaa !54
  %394 = icmp eq i8 %393, 0
  br i1 %394, label %395, label %413

; <label>:395:                                    ; preds = %389
  %396 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %372, i64 0, i32 0
  %397 = load %struct.Proto*, %struct.Proto** %396, align 8, !tbaa !19
  %398 = getelementptr inbounds %struct.Proto, %struct.Proto* %397, i64 0, i32 16
  %399 = load i32*, i32** %398, align 8, !tbaa !73
  %400 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i64 0, i32 1
  %401 = bitcast %union.anon.7* %400 to i32*
  %402 = load i32, i32* %401, align 8, !tbaa !11
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %399, i64 %403
  %405 = load i32, i32* %404, align 4, !tbaa !85
  %406 = and i32 %405, -128
  %407 = or i32 %406, 70
  store i32 %407, i32* %404, align 4, !tbaa !85
  br label %413

; <label>:408:                                    ; preds = %378
  %409 = icmp eq i32 %379, 1
  br i1 %409, label %410, label %412

; <label>:410:                                    ; preds = %408
  %411 = call i32 @luaK_exp2anyreg(%struct.FuncState* %372, %struct.expdesc* nonnull %7) #9
  br label %413

; <label>:412:                                    ; preds = %408
  call void @luaK_exp2nextreg(%struct.FuncState* %372, %struct.expdesc* nonnull %7) #9
  br label %413

; <label>:413:                                    ; preds = %370, %370, %370, %370, %370, %370, %412, %410, %395, %389, %384
  %414 = phi i32 [ 1, %410 ], [ %379, %412 ], [ -1, %389 ], [ -1, %395 ], [ -1, %384 ], [ 0, %370 ], [ 0, %370 ], [ 0, %370 ], [ 0, %370 ], [ 0, %370 ], [ 0, %370 ]
  %415 = phi i32 [ %411, %410 ], [ %376, %412 ], [ %376, %389 ], [ %376, %395 ], [ %376, %384 ], [ %376, %370 ], [ %376, %370 ], [ %376, %370 ], [ %376, %370 ], [ %376, %370 ], [ %376, %370 ]
  call void @luaK_ret(%struct.FuncState* %372, i32 %415, i32 %414) #9
  %416 = load i32, i32* %22, align 8, !tbaa !63
  %417 = icmp eq i32 %416, 59
  br i1 %417, label %418, label %419

; <label>:418:                                    ; preds = %413
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %419

; <label>:419:                                    ; preds = %413, %418
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %373) #8
  br label %505

; <label>:420:                                    ; preds = %1
  %421 = load i32, i32* %18, align 4, !tbaa !84
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %422 = load %struct.lua_State*, %struct.lua_State** %20, align 8, !tbaa !66
  %423 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %422, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #9
  %424 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %425 = load %struct.FuncState*, %struct.FuncState** %424, align 8, !tbaa !34
  %426 = tail call i32 @luaK_jump(%struct.FuncState* %425) #9
  %427 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %428 = load %struct.Dyndata*, %struct.Dyndata** %427, align 8, !tbaa !27
  %429 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %428, i64 0, i32 1
  %430 = tail call fastcc i32 @newlabelentry(%struct.LexState* nonnull %0, %struct.Labellist* nonnull %429, %struct.TString* %423, i32 %421, i32 %426) #9
  br label %505

; <label>:431:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %432 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %433 = load %struct.FuncState*, %struct.FuncState** %432, align 8, !tbaa !34
  %434 = load i32, i32* %18, align 4, !tbaa !84
  %435 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #9
  %436 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %437 = load %struct.Dyndata*, %struct.Dyndata** %436, align 8, !tbaa !27
  %438 = load %struct.FuncState*, %struct.FuncState** %432, align 8, !tbaa !34
  %439 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %438, i64 0, i32 11
  %440 = load i32, i32* %439, align 4, !tbaa !45
  %441 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %437, i64 0, i32 2, i32 1
  %442 = load i32, i32* %441, align 8, !tbaa !28
  %443 = icmp slt i32 %440, %442
  br i1 %443, label %444, label %460

; <label>:444:                                    ; preds = %431
  %445 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %437, i64 0, i32 2, i32 0
  %446 = load %struct.Labeldesc*, %struct.Labeldesc** %445, align 8, !tbaa !94
  %447 = sext i32 %440 to i64
  %448 = sext i32 %442 to i64
  br label %451

; <label>:449:                                    ; preds = %451
  %450 = icmp slt i64 %457, %448
  br i1 %450, label %451, label %460

; <label>:451:                                    ; preds = %449, %444
  %452 = phi i64 [ %447, %444 ], [ %457, %449 ]
  %453 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %446, i64 %452
  %454 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %453, i64 0, i32 0
  %455 = load %struct.TString*, %struct.TString** %454, align 8, !tbaa !95
  %456 = icmp eq %struct.TString* %455, %435
  %457 = add nsw i64 %452, 1
  br i1 %456, label %458, label %449

; <label>:458:                                    ; preds = %451
  %459 = icmp eq %struct.Labeldesc* %453, null
  br i1 %459, label %460, label %465

; <label>:460:                                    ; preds = %449, %458, %431
  %461 = tail call i32 @luaK_jump(%struct.FuncState* %433) #9
  %462 = load %struct.Dyndata*, %struct.Dyndata** %436, align 8, !tbaa !27
  %463 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %462, i64 0, i32 1
  %464 = tail call fastcc i32 @newlabelentry(%struct.LexState* %0, %struct.Labellist* nonnull %463, %struct.TString* %435, i32 %434, i32 %461) #9
  br label %505

; <label>:465:                                    ; preds = %458
  %466 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %433, i64 0, i32 13
  %467 = load i8, i8* %466, align 2, !tbaa !72
  %468 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %446, i64 %452, i32 3
  %469 = load i8, i8* %468, align 8, !tbaa !99
  %470 = icmp ugt i8 %467, %469
  br i1 %470, label %471, label %474

; <label>:471:                                    ; preds = %465
  %472 = zext i8 %469 to i32
  %473 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %433, i32 55, i32 %472, i32 0, i32 0, i32 0) #9
  br label %474

; <label>:474:                                    ; preds = %471, %465
  %475 = tail call i32 @luaK_jump(%struct.FuncState* nonnull %433) #9
  %476 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %446, i64 %452, i32 1
  %477 = load i32, i32* %476, align 8, !tbaa !100
  tail call void @luaK_patchlist(%struct.FuncState* nonnull %433, i32 %475, i32 %477) #9
  br label %505

; <label>:478:                                    ; preds = %1
  %479 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %480 = load %struct.FuncState*, %struct.FuncState** %479, align 8, !tbaa !34
  %481 = bitcast %struct.LHS_assign* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %481) #8
  %482 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %6, i64 0, i32 1
  call fastcc void @suffixedexp(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %482) #9
  %483 = load i32, i32* %22, align 8, !tbaa !63
  switch i32 %483, label %486 [
    i32 61, label %484
    i32 44, label %484
  ]

; <label>:484:                                    ; preds = %478, %478
  %485 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %6, i64 0, i32 0
  store %struct.LHS_assign* null, %struct.LHS_assign** %485, align 8, !tbaa !101
  call fastcc void @restassign(%struct.LexState* nonnull %0, %struct.LHS_assign* nonnull %6, i32 1) #9
  br label %504

; <label>:486:                                    ; preds = %478
  %487 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %480, i64 0, i32 0
  %488 = load %struct.Proto*, %struct.Proto** %487, align 8, !tbaa !19
  %489 = getelementptr inbounds %struct.Proto, %struct.Proto* %488, i64 0, i32 16
  %490 = load i32*, i32** %489, align 8, !tbaa !73
  %491 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %6, i64 0, i32 1, i32 1
  %492 = bitcast %union.anon.7* %491 to i32*
  %493 = load i32, i32* %492, align 8, !tbaa !11
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i32, i32* %490, i64 %494
  %496 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %482, i64 0, i32 0
  %497 = load i32, i32* %496, align 8, !tbaa !103
  %498 = icmp eq i32 %497, 16
  br i1 %498, label %500, label %499

; <label>:499:                                    ; preds = %486
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0)) #10
  unreachable

; <label>:500:                                    ; preds = %486
  %501 = load i32, i32* %495, align 4, !tbaa !85
  %502 = and i32 %501, 16777215
  %503 = or i32 %502, 16777216
  store i32 %503, i32* %495, align 4, !tbaa !85
  br label %504

; <label>:504:                                    ; preds = %484, %500
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %481) #8
  br label %505

; <label>:505:                                    ; preds = %474, %460, %325, %296, %241, %504, %420, %419, %367, %234, %225, %168, %70, %65, %33, %24
  %506 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %507 = load %struct.FuncState*, %struct.FuncState** %506, align 8, !tbaa !34
  %508 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %507, i64 0, i32 13
  %509 = load i8, i8* %508, align 2, !tbaa !72
  %510 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %507, i64 0, i32 15
  store i8 %509, i8* %510, align 4, !tbaa !86
  %511 = load %struct.lua_State*, %struct.lua_State** %20, align 8, !tbaa !66
  %512 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %511, i64 0, i32 19
  %513 = load i32, i32* %512, align 8, !tbaa !104
  %514 = add i32 %513, -1
  store i32 %514, i32* %512, align 8, !tbaa !104
  ret void
}

; Function Attrs: optsize
declare hidden void @luaE_enterCcall(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @block(%struct.LexState*) unnamed_addr #0 {
  %2 = alloca %struct.BlockCnt, align 8
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !34
  %5 = bitcast %struct.BlockCnt* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #8
  %6 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i64 0, i32 5
  store i8 0, i8* %6, align 2, !tbaa !48
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 13
  %8 = load i8, i8* %7, align 2, !tbaa !72
  %9 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i64 0, i32 3
  store i8 %8, i8* %9, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 2
  %11 = load %struct.LexState*, %struct.LexState** %10, align 8, !tbaa !36
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i64 0, i32 10
  %13 = load %struct.Dyndata*, %struct.Dyndata** %12, align 8, !tbaa !27
  %14 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %13, i64 0, i32 2, i32 1
  %15 = load i32, i32* %14, align 8, !tbaa !28
  %16 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i64 0, i32 1
  store i32 %15, i32* %16, align 8, !tbaa !51
  %17 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %13, i64 0, i32 1, i32 1
  %18 = load i32, i32* %17, align 8, !tbaa !32
  %19 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i64 0, i32 2
  store i32 %18, i32* %19, align 4, !tbaa !52
  %20 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i64 0, i32 4
  store i8 0, i8* %20, align 1, !tbaa !53
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 3
  %22 = load %struct.BlockCnt*, %struct.BlockCnt** %21, align 8, !tbaa !56
  %23 = icmp eq %struct.BlockCnt* %22, null
  %24 = ptrtoint %struct.BlockCnt* %22 to i64
  br i1 %23, label %30, label %25

; <label>:25:                                     ; preds = %1
  %26 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %22, i64 0, i32 6
  %27 = load i8, i8* %26, align 1, !tbaa !54
  %28 = icmp ne i8 %27, 0
  %29 = zext i1 %28 to i8
  br label %30

; <label>:30:                                     ; preds = %1, %25
  %31 = phi i8 [ 0, %1 ], [ %29, %25 ]
  %32 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i64 0, i32 6
  store i8 %31, i8* %32, align 1, !tbaa !54
  %33 = bitcast %struct.BlockCnt* %2 to i64*
  store i64 %24, i64* %33, align 8, !tbaa !55
  store %struct.BlockCnt* %2, %struct.BlockCnt** %21, align 8, !tbaa !56
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  br label %35

; <label>:35:                                     ; preds = %37, %30
  %36 = load i32, i32* %34, align 8, !tbaa !63
  switch i32 %36, label %37 [
    i32 260, label %39
    i32 261, label %39
    i32 262, label %39
    i32 289, label %39
    i32 277, label %39
  ]

; <label>:37:                                     ; preds = %35
  %38 = icmp eq i32 %36, 274
  call fastcc void @statement(%struct.LexState* nonnull %0) #9
  br i1 %38, label %39, label %35

; <label>:39:                                     ; preds = %35, %35, %35, %35, %35, %37
  call fastcc void @leaveblock(%struct.FuncState* %4) #11
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @check_match(%struct.LexState*, i32, i32, i32) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %6 = load i32, i32* %5, align 8, !tbaa !63
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %19, label %8

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !84
  %11 = icmp eq i32 %10, %3
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 %1) #13
  unreachable

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8, !tbaa !66
  %16 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 %1) #9
  %17 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 %2) #9
  %18 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* %16, i8* %17, i32 %3) #9
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %18) #10
  unreachable

; <label>:19:                                     ; preds = %4
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.TString* @str_checkname(%struct.LexState*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !63
  %4 = icmp eq i32 %3, 292
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %1
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #10
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %8 = bitcast %union.SemInfo* %7 to %struct.TString**
  %9 = load %struct.TString*, %struct.TString** %8, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  ret %struct.TString* %9
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @test_then_block(%struct.LexState*, i32*) unnamed_addr #0 {
  %3 = alloca %struct.BlockCnt, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = bitcast %struct.BlockCnt* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %7 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  %8 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #8
  tail call void @luaX_next(%struct.LexState* %0) #9
  %9 = call fastcc i32 @subexpr(%struct.LexState* %0, %struct.expdesc* nonnull %4, i32 0) #9
  call fastcc void @checknext(%struct.LexState* %0, i32 275) #11
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %11 = load i32, i32* %10, align 4, !tbaa !84
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !63
  switch i32 %13, label %114 [
    i32 258, label %14
    i32 266, label %18
  ]

; <label>:14:                                     ; preds = %2
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %16 = load %struct.lua_State*, %struct.lua_State** %15, align 8, !tbaa !66
  %17 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #9
  br label %61

; <label>:18:                                     ; preds = %2
  %19 = call i32 @luaX_lookahead(%struct.LexState* nonnull %0) #9
  %20 = icmp eq i32 %19, 292
  br i1 %20, label %21, label %114

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, i32 1
  %23 = bitcast %union.SemInfo* %22 to %struct.TString**
  %24 = load %struct.TString*, %struct.TString** %23, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %26 = load %struct.Dyndata*, %struct.Dyndata** %25, align 8, !tbaa !27
  %27 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %27, i64 0, i32 11
  %29 = load i32, i32* %28, align 4, !tbaa !45
  %30 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %26, i64 0, i32 2, i32 1
  %31 = load i32, i32* %30, align 8, !tbaa !28
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %58

; <label>:33:                                     ; preds = %21
  %34 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %26, i64 0, i32 2, i32 0
  %35 = load %struct.Labeldesc*, %struct.Labeldesc** %34, align 8, !tbaa !94
  %36 = sext i32 %29 to i64
  %37 = sext i32 %31 to i64
  br label %40

; <label>:38:                                     ; preds = %40
  %39 = icmp slt i64 %46, %37
  br i1 %39, label %40, label %58

; <label>:40:                                     ; preds = %38, %33
  %41 = phi i64 [ %36, %33 ], [ %46, %38 ]
  %42 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %35, i64 %41
  %43 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %42, i64 0, i32 0
  %44 = load %struct.TString*, %struct.TString** %43, align 8, !tbaa !95
  %45 = icmp eq %struct.TString* %44, %24
  %46 = add nsw i64 %41, 1
  br i1 %45, label %47, label %38

; <label>:47:                                     ; preds = %40
  %48 = icmp eq %struct.Labeldesc* %42, null
  br i1 %48, label %58, label %49

; <label>:49:                                     ; preds = %47
  %50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %27, i64 0, i32 13
  %51 = load i8, i8* %50, align 2, !tbaa !72
  %52 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %35, i64 %41, i32 3
  %53 = load i8, i8* %52, align 8, !tbaa !99
  %54 = icmp ugt i8 %51, %53
  br i1 %54, label %114, label %55

; <label>:55:                                     ; preds = %49
  %56 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %35, i64 %41, i32 1
  %57 = load i32, i32* %56, align 8, !tbaa !100
  br label %58

; <label>:58:                                     ; preds = %38, %21, %47, %55
  %59 = phi %struct.TString* [ null, %55 ], [ %24, %47 ], [ %24, %21 ], [ %24, %38 ]
  %60 = phi i32 [ %57, %55 ], [ -1, %47 ], [ -1, %21 ], [ -1, %38 ]
  call void @luaX_next(%struct.LexState* %0) #9
  call void @luaX_next(%struct.LexState* %0) #9
  br label %61

; <label>:61:                                     ; preds = %58, %14
  %62 = phi %struct.TString* [ %59, %58 ], [ %17, %14 ]
  %63 = phi i32 [ %60, %58 ], [ -1, %14 ]
  %64 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  call void @luaK_goiffalse(%struct.FuncState* %64, %struct.expdesc* nonnull %4) #9
  %65 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 5
  store i8 0, i8* %65, align 2, !tbaa !48
  %66 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i64 0, i32 13
  %67 = load i8, i8* %66, align 2, !tbaa !72
  %68 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 3
  store i8 %67, i8* %68, align 8, !tbaa !50
  %69 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i64 0, i32 2
  %70 = load %struct.LexState*, %struct.LexState** %69, align 8, !tbaa !36
  %71 = getelementptr inbounds %struct.LexState, %struct.LexState* %70, i64 0, i32 10
  %72 = load %struct.Dyndata*, %struct.Dyndata** %71, align 8, !tbaa !27
  %73 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %72, i64 0, i32 2, i32 1
  %74 = load i32, i32* %73, align 8, !tbaa !28
  %75 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 1
  store i32 %74, i32* %75, align 8, !tbaa !51
  %76 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %72, i64 0, i32 1, i32 1
  %77 = load i32, i32* %76, align 8, !tbaa !32
  %78 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 2
  store i32 %77, i32* %78, align 4, !tbaa !52
  %79 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 4
  store i8 0, i8* %79, align 1, !tbaa !53
  %80 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i64 0, i32 3
  %81 = load %struct.BlockCnt*, %struct.BlockCnt** %80, align 8, !tbaa !56
  %82 = icmp eq %struct.BlockCnt* %81, null
  %83 = ptrtoint %struct.BlockCnt* %81 to i64
  br i1 %82, label %89, label %84

; <label>:84:                                     ; preds = %61
  %85 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %81, i64 0, i32 6
  %86 = load i8, i8* %85, align 1, !tbaa !54
  %87 = icmp ne i8 %86, 0
  %88 = zext i1 %87 to i8
  br label %89

; <label>:89:                                     ; preds = %61, %84
  %90 = phi i8 [ 0, %61 ], [ %88, %84 ]
  %91 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 6
  store i8 %90, i8* %91, align 1, !tbaa !54
  %92 = bitcast %struct.BlockCnt* %3 to i64*
  store i64 %83, i64* %92, align 8, !tbaa !55
  store %struct.BlockCnt* %3, %struct.BlockCnt** %80, align 8, !tbaa !56
  %93 = icmp eq %struct.TString* %62, null
  %94 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2
  %95 = load i32, i32* %94, align 8, !tbaa !58
  br i1 %93, label %101, label %96

; <label>:96:                                     ; preds = %89
  %97 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %98 = load %struct.Dyndata*, %struct.Dyndata** %97, align 8, !tbaa !27
  %99 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %98, i64 0, i32 1
  %100 = call fastcc i32 @newlabelentry(%struct.LexState* nonnull %0, %struct.Labellist* nonnull %99, %struct.TString* nonnull %62, i32 %11, i32 %95) #9
  br label %102

; <label>:101:                                    ; preds = %89
  call void @luaK_patchlist(%struct.FuncState* nonnull %7, i32 %95, i32 %63) #9
  br label %102

; <label>:102:                                    ; preds = %101, %96
  %103 = load i32, i32* %12, align 8, !tbaa !63
  %104 = icmp eq i32 %103, 59
  br i1 %104, label %105, label %109

; <label>:105:                                    ; preds = %102
  br label %106

; <label>:106:                                    ; preds = %105, %106
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  %107 = load i32, i32* %12, align 8, !tbaa !63
  %108 = icmp eq i32 %107, 59
  br i1 %108, label %106, label %109

; <label>:109:                                    ; preds = %106, %102
  %110 = phi i32 [ %103, %102 ], [ %107, %106 ]
  switch i32 %110, label %112 [
    i32 260, label %111
    i32 261, label %111
    i32 262, label %111
    i32 289, label %111
  ]

; <label>:111:                                    ; preds = %109, %109, %109, %109
  call fastcc void @leaveblock(%struct.FuncState* %7) #11
  br label %159

; <label>:112:                                    ; preds = %109
  %113 = call i32 @luaK_jump(%struct.FuncState* %7) #9
  br label %146

; <label>:114:                                    ; preds = %18, %49, %2
  %115 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  call void @luaK_goiftrue(%struct.FuncState* %115, %struct.expdesc* nonnull %4) #9
  %116 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 5
  store i8 0, i8* %116, align 2, !tbaa !48
  %117 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i64 0, i32 13
  %118 = load i8, i8* %117, align 2, !tbaa !72
  %119 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 3
  store i8 %118, i8* %119, align 8, !tbaa !50
  %120 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i64 0, i32 2
  %121 = load %struct.LexState*, %struct.LexState** %120, align 8, !tbaa !36
  %122 = getelementptr inbounds %struct.LexState, %struct.LexState* %121, i64 0, i32 10
  %123 = load %struct.Dyndata*, %struct.Dyndata** %122, align 8, !tbaa !27
  %124 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %123, i64 0, i32 2, i32 1
  %125 = load i32, i32* %124, align 8, !tbaa !28
  %126 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 1
  store i32 %125, i32* %126, align 8, !tbaa !51
  %127 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %123, i64 0, i32 1, i32 1
  %128 = load i32, i32* %127, align 8, !tbaa !32
  %129 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 2
  store i32 %128, i32* %129, align 4, !tbaa !52
  %130 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 4
  store i8 0, i8* %130, align 1, !tbaa !53
  %131 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i64 0, i32 3
  %132 = load %struct.BlockCnt*, %struct.BlockCnt** %131, align 8, !tbaa !56
  %133 = icmp eq %struct.BlockCnt* %132, null
  %134 = ptrtoint %struct.BlockCnt* %132 to i64
  br i1 %133, label %140, label %135

; <label>:135:                                    ; preds = %114
  %136 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %132, i64 0, i32 6
  %137 = load i8, i8* %136, align 1, !tbaa !54
  %138 = icmp ne i8 %137, 0
  %139 = zext i1 %138 to i8
  br label %140

; <label>:140:                                    ; preds = %114, %135
  %141 = phi i8 [ 0, %114 ], [ %139, %135 ]
  %142 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 6
  store i8 %141, i8* %142, align 1, !tbaa !54
  %143 = bitcast %struct.BlockCnt* %3 to i64*
  store i64 %134, i64* %143, align 8, !tbaa !55
  store %struct.BlockCnt* %3, %struct.BlockCnt** %131, align 8, !tbaa !56
  %144 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3
  %145 = load i32, i32* %144, align 4, !tbaa !60
  br label %146

; <label>:146:                                    ; preds = %140, %112
  %147 = phi i32 [ %113, %112 ], [ %145, %140 ]
  br label %148

; <label>:148:                                    ; preds = %150, %146
  %149 = load i32, i32* %12, align 8, !tbaa !63
  switch i32 %149, label %150 [
    i32 260, label %152
    i32 261, label %152
    i32 262, label %152
    i32 289, label %152
    i32 277, label %152
  ]

; <label>:150:                                    ; preds = %148
  %151 = icmp eq i32 %149, 274
  call fastcc void @statement(%struct.LexState* nonnull %0) #9
  br i1 %151, label %152, label %148

; <label>:152:                                    ; preds = %148, %148, %148, %148, %148, %150
  call fastcc void @leaveblock(%struct.FuncState* %7) #11
  %153 = load i32, i32* %12, align 8, !tbaa !63
  %154 = and i32 %153, -2
  %155 = icmp eq i32 %154, 260
  br i1 %155, label %156, label %158

; <label>:156:                                    ; preds = %152
  %157 = call i32 @luaK_jump(%struct.FuncState* %7) #9
  call void @luaK_concat(%struct.FuncState* %7, i32* %1, i32 %157) #9
  br label %158

; <label>:158:                                    ; preds = %152, %156
  call void @luaK_patchtohere(%struct.FuncState* %7, i32 %147) #9
  br label %159

; <label>:159:                                    ; preds = %158, %111
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #8
  ret void
}

; Function Attrs: optsize
declare hidden void @luaK_patchtohere(%struct.FuncState*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @checknext(%struct.LexState*, i32) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !63
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %2
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 %1) #10
  unreachable

; <label>:7:                                      ; preds = %2
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  ret void
}

; Function Attrs: optsize
declare hidden void @luaK_goiffalse(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaK_patchlist(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @leaveblock(%struct.FuncState*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3
  %3 = load %struct.BlockCnt*, %struct.BlockCnt** %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %5 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 5
  %7 = load i8, i8* %6, align 2, !tbaa !48
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 6
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !tbaa !66
  %12 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #9
  %13 = tail call fastcc i32 @createlabel(%struct.LexState* %5, %struct.TString* %12, i32 0, i32 0) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %28

; <label>:15:                                     ; preds = %9, %1
  %16 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 0
  %17 = load %struct.BlockCnt*, %struct.BlockCnt** %16, align 8, !tbaa !55
  %18 = icmp eq %struct.BlockCnt* %17, null
  br i1 %18, label %28, label %19

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 4
  %21 = load i8, i8* %20, align 1, !tbaa !53
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 3
  %25 = load i8, i8* %24, align 8, !tbaa !50
  %26 = zext i8 %25 to i32
  %27 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %0, i32 55, i32 %26, i32 0, i32 0, i32 0) #9
  br label %28

; <label>:28:                                     ; preds = %9, %19, %15, %23
  %29 = bitcast %struct.BlockCnt* %3 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !55
  %31 = bitcast %struct.BlockCnt** %2 to i64*
  store i64 %30, i64* %31, align 8, !tbaa !56
  %32 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 3
  %33 = load i8, i8* %32, align 8, !tbaa !50
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %36 = load i8, i8* %35, align 2, !tbaa !72
  %37 = zext i8 %36 to i32
  %38 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !36
  %39 = getelementptr inbounds %struct.LexState, %struct.LexState* %38, i64 0, i32 10
  %40 = load %struct.Dyndata*, %struct.Dyndata** %39, align 8, !tbaa !27
  %41 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %40, i64 0, i32 0, i32 1
  %42 = load i32, i32* %41, align 8, !tbaa !33
  %43 = sub nsw i32 %34, %37
  %44 = add i32 %43, %42
  store i32 %44, i32* %41, align 8, !tbaa !33
  %45 = icmp ult i8 %33, %36
  br i1 %45, label %46, label %71

; <label>:46:                                     ; preds = %28
  %47 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4
  %48 = load i32, i32* %47, align 8, !tbaa !37
  %49 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %40, i64 0, i32 0, i32 0
  %50 = load %struct.Vardesc*, %struct.Vardesc** %49, align 8, !tbaa !89
  %51 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 10
  %52 = load i32, i32* %51, align 8, !tbaa !44
  %53 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %54 = load %struct.Proto*, %struct.Proto** %53, align 8, !tbaa !19
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %54, i64 0, i32 21
  %56 = load %struct.LocVar*, %struct.LocVar** %55, align 8, !tbaa !78
  br label %57

; <label>:57:                                     ; preds = %57, %46
  %58 = phi i32 [ %69, %57 ], [ %37, %46 ]
  %59 = trunc i32 %58 to i8
  %60 = add i8 %59, -1
  %61 = zext i8 %60 to i32
  %62 = add nsw i32 %52, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %50, i64 %63, i32 0
  %65 = load i16, i16* %64, align 2, !tbaa !90
  %66 = sext i16 %65 to i64
  %67 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %56, i64 %66, i32 2
  store i32 %48, i32* %67, align 4, !tbaa !105
  %68 = icmp ugt i8 %60, %33
  %69 = add nsw i32 %58, -1
  br i1 %68, label %57, label %70

; <label>:70:                                     ; preds = %57
  store i8 %33, i8* %35, align 2, !tbaa !72
  br label %71

; <label>:71:                                     ; preds = %28, %70
  %72 = phi i8 [ %36, %28 ], [ %33, %70 ]
  %73 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  store i8 %72, i8* %73, align 4, !tbaa !86
  %74 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 1
  %75 = load i32, i32* %74, align 8, !tbaa !51
  %76 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 10
  %77 = load %struct.Dyndata*, %struct.Dyndata** %76, align 8, !tbaa !27
  %78 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %77, i64 0, i32 2, i32 1
  store i32 %75, i32* %78, align 8, !tbaa !28
  %79 = icmp eq i64 %30, 0
  %80 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 2
  %81 = load i32, i32* %80, align 4, !tbaa !52
  br i1 %79, label %105, label %82

; <label>:82:                                     ; preds = %71
  %83 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %40, i64 0, i32 1, i32 1
  %84 = load i32, i32* %83, align 8, !tbaa !106
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %114

; <label>:86:                                     ; preds = %82
  %87 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %40, i64 0, i32 1, i32 0
  %88 = load %struct.Labeldesc*, %struct.Labeldesc** %87, align 8, !tbaa !107
  %89 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 4
  %90 = sext i32 %81 to i64
  %91 = sext i32 %84 to i64
  br label %92

; <label>:92:                                     ; preds = %102, %86
  %93 = phi i64 [ %90, %86 ], [ %103, %102 ]
  %94 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %88, i64 %93, i32 3
  %95 = load i8, i8* %94, align 8, !tbaa !99
  %96 = icmp ugt i8 %95, %33
  br i1 %96, label %97, label %102

; <label>:97:                                     ; preds = %92
  store i8 %33, i8* %94, align 8, !tbaa !99
  %98 = load i8, i8* %89, align 1, !tbaa !53
  %99 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %88, i64 %93, i32 4
  %100 = load i8, i8* %99, align 1, !tbaa !108
  %101 = or i8 %100, %98
  store i8 %101, i8* %99, align 1, !tbaa !108
  br label %102

; <label>:102:                                    ; preds = %97, %92
  %103 = add nsw i64 %93, 1
  %104 = icmp eq i64 %103, %91
  br i1 %104, label %114, label %92

; <label>:105:                                    ; preds = %71
  %106 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %77, i64 0, i32 1, i32 1
  %107 = load i32, i32* %106, align 8, !tbaa !32
  %108 = icmp slt i32 %81, %107
  br i1 %108, label %109, label %114

; <label>:109:                                    ; preds = %105
  %110 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %77, i64 0, i32 1, i32 0
  %111 = load %struct.Labeldesc*, %struct.Labeldesc** %110, align 8, !tbaa !109
  %112 = sext i32 %81 to i64
  %113 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %111, i64 %112
  tail call fastcc void @undefgoto(%struct.LexState* nonnull %5, %struct.Labeldesc* %113) #13
  unreachable

; <label>:114:                                    ; preds = %102, %82, %105
  ret void
}

; Function Attrs: optsize
declare hidden i32 @luaK_jump(%struct.FuncState*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaK_goiftrue(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaK_concat(%struct.FuncState*, i32*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @subexpr(%struct.LexState*, %struct.expdesc*, i32) unnamed_addr #0 {
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %6 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !tbaa !66
  tail call void @luaE_enterCcall(%struct.lua_State* %6) #9
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !63
  switch i32 %8, label %89 [
    i32 271, label %12
    i32 45, label %9
    i32 126, label %10
    i32 35, label %11
    i32 290, label %19
    i32 291, label %29
    i32 293, label %39
    i32 270, label %51
    i32 276, label %57
    i32 263, label %63
    i32 281, label %69
    i32 123, label %85
    i32 265, label %86
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
  %16 = tail call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 12) #11
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %18 = load %struct.FuncState*, %struct.FuncState** %17, align 8, !tbaa !34
  tail call void @luaK_prefix(%struct.FuncState* %18, i32 %13, %struct.expdesc* %1, i32 %15) #9
  br label %91

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %20, align 8, !tbaa !58
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %21, align 4, !tbaa !60
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 5, i32* %22, align 8, !tbaa !61
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %24 = bitcast %union.anon.7* %23 to i32*
  store i32 0, i32* %24, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, i32 0
  %26 = bitcast double* %25 to i64*
  %27 = load i64, i64* %26, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  store i64 %27, i64* %28, align 8, !tbaa !11
  br label %90

; <label>:29:                                     ; preds = %3
  %30 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %30, align 8, !tbaa !58
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %31, align 4, !tbaa !60
  %32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 6, i32* %32, align 8, !tbaa !61
  %33 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %34 = bitcast %union.anon.7* %33 to i32*
  store i32 0, i32* %34, align 8, !tbaa !11
  %35 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %36 = bitcast %union.SemInfo* %35 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !11
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, i32 0
  store i64 %37, i64* %38, align 8, !tbaa !11
  br label %90

; <label>:39:                                     ; preds = %3
  %40 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %41 = bitcast %union.SemInfo* %40 to %struct.TString**
  %42 = load %struct.TString*, %struct.TString** %41, align 8, !tbaa !11
  %43 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %44 = load %struct.FuncState*, %struct.FuncState** %43, align 8, !tbaa !34
  %45 = tail call i32 @luaK_stringK(%struct.FuncState* %44, %struct.TString* %42) #9
  %46 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %46, align 8, !tbaa !58
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %47, align 4, !tbaa !60
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 4, i32* %48, align 8, !tbaa !61
  %49 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %50 = bitcast %union.anon.7* %49 to i32*
  store i32 %45, i32* %50, align 8, !tbaa !11
  br label %90

; <label>:51:                                     ; preds = %3
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %52, align 8, !tbaa !58
  %53 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %53, align 4, !tbaa !60
  %54 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 1, i32* %54, align 8, !tbaa !61
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %56 = bitcast %union.anon.7* %55 to i32*
  store i32 0, i32* %56, align 8, !tbaa !11
  br label %90

; <label>:57:                                     ; preds = %3
  %58 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %58, align 8, !tbaa !58
  %59 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %59, align 4, !tbaa !60
  %60 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 2, i32* %60, align 8, !tbaa !61
  %61 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %62 = bitcast %union.anon.7* %61 to i32*
  store i32 0, i32* %62, align 8, !tbaa !11
  br label %90

; <label>:63:                                     ; preds = %3
  %64 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %64, align 8, !tbaa !58
  %65 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %65, align 4, !tbaa !60
  %66 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 3, i32* %66, align 8, !tbaa !61
  %67 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %68 = bitcast %union.anon.7* %67 to i32*
  store i32 0, i32* %68, align 8, !tbaa !11
  br label %90

; <label>:69:                                     ; preds = %3
  %70 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %71 = load %struct.FuncState*, %struct.FuncState** %70, align 8, !tbaa !34
  %72 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %71, i64 0, i32 0
  %73 = load %struct.Proto*, %struct.Proto** %72, align 8, !tbaa !19
  %74 = getelementptr inbounds %struct.Proto, %struct.Proto* %73, i64 0, i32 4
  %75 = load i8, i8* %74, align 1, !tbaa !57
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %78

; <label>:77:                                     ; preds = %69
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0)) #10
  unreachable

; <label>:78:                                     ; preds = %69
  %79 = tail call i32 @luaK_codeABCk(%struct.FuncState* %71, i32 81, i32 0, i32 0, i32 1, i32 0) #9
  %80 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %80, align 8, !tbaa !58
  %81 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %81, align 4, !tbaa !60
  %82 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 17, i32* %82, align 8, !tbaa !61
  %83 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %84 = bitcast %union.anon.7* %83 to i32*
  store i32 %79, i32* %84, align 8, !tbaa !11
  br label %90

; <label>:85:                                     ; preds = %3
  tail call fastcc void @constructor(%struct.LexState* nonnull %0, %struct.expdesc* %1) #9
  br label %91

; <label>:86:                                     ; preds = %3
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %87 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %88 = load i32, i32* %87, align 4, !tbaa !84
  tail call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 0, i32 %88) #9
  br label %91

; <label>:89:                                     ; preds = %3
  tail call fastcc void @suffixedexp(%struct.LexState* nonnull %0, %struct.expdesc* %1) #9
  br label %91

; <label>:90:                                     ; preds = %78, %63, %57, %51, %39, %29, %19
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %91

; <label>:91:                                     ; preds = %90, %89, %86, %85, %12
  %92 = load i32, i32* %7, align 8, !tbaa !63
  switch i32 %92, label %134 [
    i32 43, label %113
    i32 45, label %93
    i32 42, label %94
    i32 37, label %95
    i32 94, label %96
    i32 47, label %97
    i32 279, label %98
    i32 38, label %99
    i32 124, label %100
    i32 126, label %101
    i32 286, label %102
    i32 287, label %103
    i32 280, label %104
    i32 285, label %105
    i32 282, label %106
    i32 60, label %107
    i32 284, label %108
    i32 62, label %109
    i32 283, label %110
    i32 257, label %111
    i32 272, label %112
  ]

; <label>:93:                                     ; preds = %91
  br label %113

; <label>:94:                                     ; preds = %91
  br label %113

; <label>:95:                                     ; preds = %91
  br label %113

; <label>:96:                                     ; preds = %91
  br label %113

; <label>:97:                                     ; preds = %91
  br label %113

; <label>:98:                                     ; preds = %91
  br label %113

; <label>:99:                                     ; preds = %91
  br label %113

; <label>:100:                                    ; preds = %91
  br label %113

; <label>:101:                                    ; preds = %91
  br label %113

; <label>:102:                                    ; preds = %91
  br label %113

; <label>:103:                                    ; preds = %91
  br label %113

; <label>:104:                                    ; preds = %91
  br label %113

; <label>:105:                                    ; preds = %91
  br label %113

; <label>:106:                                    ; preds = %91
  br label %113

; <label>:107:                                    ; preds = %91
  br label %113

; <label>:108:                                    ; preds = %91
  br label %113

; <label>:109:                                    ; preds = %91
  br label %113

; <label>:110:                                    ; preds = %91
  br label %113

; <label>:111:                                    ; preds = %91
  br label %113

; <label>:112:                                    ; preds = %91
  br label %113

; <label>:113:                                    ; preds = %112, %111, %110, %109, %108, %107, %106, %105, %104, %103, %102, %101, %100, %99, %98, %97, %96, %95, %94, %93, %91
  %114 = phi i32 [ 0, %91 ], [ 1, %93 ], [ 2, %94 ], [ 3, %95 ], [ 4, %96 ], [ 5, %97 ], [ 6, %98 ], [ 7, %99 ], [ 8, %100 ], [ 9, %101 ], [ 10, %102 ], [ 11, %103 ], [ 12, %104 ], [ 16, %105 ], [ 13, %106 ], [ 14, %107 ], [ 15, %108 ], [ 17, %109 ], [ 18, %110 ], [ 19, %111 ], [ 20, %112 ]
  %115 = bitcast %struct.expdesc* %4 to i8*
  %116 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %117 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %118

; <label>:118:                                    ; preds = %113, %125
  %119 = phi i32 [ %114, %113 ], [ %131, %125 ]
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds [21 x %struct.anon.9], [21 x %struct.anon.9]* @priority, i64 0, i64 %120, i32 0
  %122 = load i8, i8* %121, align 2, !tbaa !110
  %123 = zext i8 %122 to i32
  %124 = icmp sgt i32 %123, %2
  br i1 %124, label %125, label %134

; <label>:125:                                    ; preds = %118
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %115) #8
  %126 = load i32, i32* %116, align 4, !tbaa !84
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  %127 = load %struct.FuncState*, %struct.FuncState** %117, align 8, !tbaa !34
  call void @luaK_infix(%struct.FuncState* %127, i32 %119, %struct.expdesc* %1) #9
  %128 = getelementptr inbounds [21 x %struct.anon.9], [21 x %struct.anon.9]* @priority, i64 0, i64 %120, i32 1
  %129 = load i8, i8* %128, align 1, !tbaa !112
  %130 = zext i8 %129 to i32
  %131 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 %130) #11
  %132 = load %struct.FuncState*, %struct.FuncState** %117, align 8, !tbaa !34
  call void @luaK_posfix(%struct.FuncState* %132, i32 %119, %struct.expdesc* %1, %struct.expdesc* nonnull %4, i32 %126) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %115) #8
  %133 = icmp eq i32 %131, 21
  br i1 %133, label %134, label %118

; <label>:134:                                    ; preds = %118, %125, %91
  %135 = phi i32 [ 21, %91 ], [ 21, %125 ], [ %119, %118 ]
  %136 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !tbaa !66
  %137 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %136, i64 0, i32 19
  %138 = load i32, i32* %137, align 8, !tbaa !104
  %139 = add i32 %138, -1
  store i32 %139, i32* %137, align 8, !tbaa !104
  ret i32 %135
}

; Function Attrs: optsize
declare hidden void @luaK_prefix(%struct.FuncState*, i32, %struct.expdesc*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaK_infix(%struct.FuncState*, i32, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaK_posfix(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @constructor(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = alloca %struct.ConsControl, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %7 = load i32, i32* %6, align 4, !tbaa !84
  %8 = tail call i32 @luaK_codeABCk(%struct.FuncState* %5, i32 17, i32 0, i32 0, i32 0, i32 0) #9
  %9 = bitcast %struct.ConsControl* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #8
  %10 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 4
  store i32 0, i32* %10, align 8, !tbaa !113
  %11 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 2
  store i32 0, i32* %11, align 8, !tbaa !115
  %12 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 3
  store i32 0, i32* %12, align 4, !tbaa !116
  %13 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 1
  store %struct.expdesc* %1, %struct.expdesc** %13, align 8, !tbaa !117
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %14, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %15, align 4, !tbaa !60
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 15, i32* %16, align 8, !tbaa !61
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %18 = bitcast %union.anon.7* %17 to i32*
  store i32 %8, i32* %18, align 8, !tbaa !11
  %19 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0
  %20 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 2
  store i32 -1, i32* %20, align 8, !tbaa !58
  %21 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 3
  store i32 -1, i32* %21, align 4, !tbaa !60
  %22 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 0
  store i32 0, i32* %22, align 8, !tbaa !61
  %23 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 1
  %24 = bitcast %union.anon.7* %23 to i32*
  store i32 0, i32* %24, align 8, !tbaa !11
  %25 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !34
  tail call void @luaK_exp2nextreg(%struct.FuncState* %25, %struct.expdesc* %1) #9
  tail call fastcc void @checknext(%struct.LexState* %0, i32 123) #11
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %27 = load i32, i32* %26, align 8, !tbaa !63
  %28 = icmp eq i32 %27, 125
  br i1 %28, label %70, label %29

; <label>:29:                                     ; preds = %2
  br label %36

; <label>:30:                                     ; preds = %67
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %31

; <label>:31:                                     ; preds = %30, %69
  %32 = load i32, i32* %26, align 8, !tbaa !63
  %33 = icmp eq i32 %32, 125
  br i1 %33, label %70, label %34

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %22, align 8, !tbaa !118
  br label %36

; <label>:36:                                     ; preds = %29, %34
  %37 = phi i32 [ %35, %34 ], [ 0, %29 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

; <label>:39:                                     ; preds = %36
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %19) #9
  store i32 0, i32* %22, align 8, !tbaa !118
  %40 = load i32, i32* %10, align 8, !tbaa !113
  %41 = icmp eq i32 %40, 50
  br i1 %41, label %42, label %48

; <label>:42:                                     ; preds = %39
  %43 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !tbaa !117
  %44 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %43, i64 0, i32 1
  %45 = bitcast %union.anon.7* %44 to i32*
  %46 = load i32, i32* %45, align 8, !tbaa !11
  %47 = load i32, i32* %12, align 4, !tbaa !116
  call void @luaK_setlist(%struct.FuncState* %5, i32 %46, i32 %47, i32 50) #9
  store i32 0, i32* %10, align 8, !tbaa !113
  br label %48

; <label>:48:                                     ; preds = %36, %39, %42
  %49 = load i32, i32* %26, align 8, !tbaa !63
  switch i32 %49, label %61 [
    i32 292, label %50
    i32 91, label %60
  ]

; <label>:50:                                     ; preds = %48
  %51 = call i32 @luaX_lookahead(%struct.LexState* nonnull %0) #9
  %52 = icmp eq i32 %51, 61
  br i1 %52, label %59, label %53

; <label>:53:                                     ; preds = %50
  %54 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %19, i32 0) #9
  %55 = load i32, i32* %12, align 4, !tbaa !116
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4, !tbaa !116
  %57 = load i32, i32* %10, align 8, !tbaa !113
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 8, !tbaa !113
  br label %67

; <label>:59:                                     ; preds = %50
  call fastcc void @recfield(%struct.LexState* nonnull %0, %struct.ConsControl* nonnull %3) #9
  br label %67

; <label>:60:                                     ; preds = %48
  call fastcc void @recfield(%struct.LexState* nonnull %0, %struct.ConsControl* nonnull %3) #9
  br label %67

; <label>:61:                                     ; preds = %48
  %62 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %19, i32 0) #9
  %63 = load i32, i32* %12, align 4, !tbaa !116
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4, !tbaa !116
  %65 = load i32, i32* %10, align 8, !tbaa !113
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 8, !tbaa !113
  br label %67

; <label>:67:                                     ; preds = %53, %59, %60, %61
  %68 = load i32, i32* %26, align 8, !tbaa !63
  switch i32 %68, label %70 [
    i32 44, label %30
    i32 59, label %69
  ]

; <label>:69:                                     ; preds = %67
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %31

; <label>:70:                                     ; preds = %31, %67, %2
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 125, i32 123, i32 %7) #11
  %71 = load i32, i32* %10, align 8, !tbaa !113
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %92, label %73

; <label>:73:                                     ; preds = %70
  %74 = load i32, i32* %22, align 8, !tbaa !118
  switch i32 %74, label %83 [
    i32 16, label %75
    i32 17, label %75
    i32 0, label %85
  ]

; <label>:75:                                     ; preds = %73, %73
  call void @luaK_setreturns(%struct.FuncState* %5, %struct.expdesc* nonnull %19, i32 -1) #9
  %76 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !tbaa !117
  %77 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %76, i64 0, i32 1
  %78 = bitcast %union.anon.7* %77 to i32*
  %79 = load i32, i32* %78, align 8, !tbaa !11
  %80 = load i32, i32* %12, align 4, !tbaa !116
  call void @luaK_setlist(%struct.FuncState* %5, i32 %79, i32 %80, i32 -1) #9
  %81 = load i32, i32* %12, align 4, !tbaa !116
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %12, align 4, !tbaa !116
  br label %92

; <label>:83:                                     ; preds = %73
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %19) #9
  %84 = load i32, i32* %10, align 8, !tbaa !113
  br label %85

; <label>:85:                                     ; preds = %83, %73
  %86 = phi i32 [ %71, %73 ], [ %84, %83 ]
  %87 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !tbaa !117
  %88 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %87, i64 0, i32 1
  %89 = bitcast %union.anon.7* %88 to i32*
  %90 = load i32, i32* %89, align 8, !tbaa !11
  %91 = load i32, i32* %12, align 4, !tbaa !116
  call void @luaK_setlist(%struct.FuncState* %5, i32 %90, i32 %91, i32 %86) #9
  br label %92

; <label>:92:                                     ; preds = %70, %75, %85
  %93 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0
  %94 = load %struct.Proto*, %struct.Proto** %93, align 8, !tbaa !19
  %95 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i64 0, i32 16
  %96 = load i32*, i32** %95, align 8, !tbaa !73
  %97 = sext i32 %8 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4, !tbaa !85
  %100 = and i32 %99, -16711681
  %101 = load i32, i32* %12, align 4, !tbaa !116
  %102 = call i32 @luaO_int2fb(i32 %101) #9
  %103 = shl i32 %102, 16
  %104 = and i32 %103, 16711680
  %105 = or i32 %104, %100
  %106 = load %struct.Proto*, %struct.Proto** %93, align 8, !tbaa !19
  %107 = getelementptr inbounds %struct.Proto, %struct.Proto* %106, i64 0, i32 16
  %108 = load i32*, i32** %107, align 8, !tbaa !73
  %109 = getelementptr inbounds i32, i32* %108, i64 %97
  store i32 %105, i32* %109, align 4, !tbaa !85
  %110 = and i32 %105, 16777215
  %111 = load i32, i32* %11, align 8, !tbaa !115
  %112 = call i32 @luaO_int2fb(i32 %111) #9
  %113 = shl i32 %112, 24
  %114 = or i32 %113, %110
  %115 = load %struct.Proto*, %struct.Proto** %93, align 8, !tbaa !19
  %116 = getelementptr inbounds %struct.Proto, %struct.Proto* %115, i64 0, i32 16
  %117 = load i32*, i32** %116, align 8, !tbaa !73
  %118 = getelementptr inbounds i32, i32* %117, i64 %97
  store i32 %114, i32* %118, align 4, !tbaa !85
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @body(%struct.LexState*, %struct.expdesc*, i32, i32) unnamed_addr #0 {
  %5 = alloca %struct.FuncState, align 8
  %6 = alloca %struct.BlockCnt, align 8
  %7 = bitcast %struct.FuncState* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %7) #8
  %8 = bitcast %struct.BlockCnt* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #8
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %10 = load %struct.lua_State*, %struct.lua_State** %9, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %12 = load %struct.FuncState*, %struct.FuncState** %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i64 0, i32 0
  %14 = load %struct.Proto*, %struct.Proto** %13, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i64 0, i32 8
  %16 = load i32, i32* %15, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i64 0, i32 10
  %18 = load i32, i32* %17, align 8, !tbaa !119
  %19 = icmp slt i32 %16, %18
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i64 0, i32 17
  br i1 %19, label %41, label %21

; <label>:21:                                     ; preds = %4
  %22 = bitcast %struct.Proto*** %20 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !77
  %24 = tail call i8* @luaM_growaux_(%struct.lua_State* %10, i8* %23, i32 %16, i32* nonnull %17, i32 8, i32 131071, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #9
  store i8* %24, i8** %22, align 8, !tbaa !77
  %25 = load i32, i32* %17, align 8, !tbaa !119
  %26 = icmp slt i32 %18, %25
  br i1 %26, label %27, label %41

; <label>:27:                                     ; preds = %21
  %28 = bitcast i8* %24 to %struct.Proto**
  %29 = sext i32 %18 to i64
  %30 = sext i32 %25 to i64
  %31 = add nsw i64 %29, 1
  %32 = getelementptr inbounds %struct.Proto*, %struct.Proto** %28, i64 %29
  store %struct.Proto* null, %struct.Proto** %32, align 8, !tbaa !87
  %33 = icmp slt i64 %31, %30
  br i1 %33, label %34, label %41

; <label>:34:                                     ; preds = %27
  br label %35

; <label>:35:                                     ; preds = %34, %35
  %36 = phi i64 [ %38, %35 ], [ %31, %34 ]
  %37 = load %struct.Proto**, %struct.Proto*** %20, align 8, !tbaa !77
  %38 = add nsw i64 %36, 1
  %39 = getelementptr inbounds %struct.Proto*, %struct.Proto** %37, i64 %36
  store %struct.Proto* null, %struct.Proto** %39, align 8, !tbaa !87
  %40 = icmp eq i64 %38, %30
  br i1 %40, label %41, label %35

; <label>:41:                                     ; preds = %35, %27, %21, %4
  %42 = tail call %struct.Proto* @luaF_newproto(%struct.lua_State* %10) #9
  %43 = load %struct.Proto**, %struct.Proto*** %20, align 8, !tbaa !77
  %44 = load i32, i32* %15, align 8, !tbaa !43
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %15, align 8, !tbaa !43
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds %struct.Proto*, %struct.Proto** %43, i64 %46
  store %struct.Proto* %42, %struct.Proto** %47, align 8, !tbaa !87
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i64 0, i32 2
  %49 = load i8, i8* %48, align 1, !tbaa !23
  %50 = and i8 %49, 32
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %60, label %52

; <label>:52:                                     ; preds = %41
  %53 = getelementptr inbounds %struct.Proto, %struct.Proto* %42, i64 0, i32 2
  %54 = load i8, i8* %53, align 1, !tbaa !23
  %55 = and i8 %54, 24
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %60, label %57

; <label>:57:                                     ; preds = %52
  %58 = bitcast %struct.Proto* %14 to %struct.GCObject*
  %59 = bitcast %struct.Proto* %42 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* %10, %struct.GCObject* %58, %struct.GCObject* %59) #9
  br label %60

; <label>:60:                                     ; preds = %41, %52, %57
  %61 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0
  store %struct.Proto* %42, %struct.Proto** %61, align 8, !tbaa !19
  %62 = getelementptr inbounds %struct.Proto, %struct.Proto* %42, i64 0, i32 13
  store i32 %3, i32* %62, align 4, !tbaa !38
  %63 = bitcast %struct.FuncState** %11 to i64*
  %64 = load i64, i64* %63, align 8, !tbaa !34
  %65 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 1
  %66 = bitcast %struct.FuncState** %65 to i64*
  store i64 %64, i64* %66, align 8, !tbaa !35
  %67 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 2
  store %struct.LexState* %0, %struct.LexState** %67, align 8, !tbaa !36
  store %struct.FuncState* %5, %struct.FuncState** %11, align 8, !tbaa !34
  %68 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 4
  store i32 0, i32* %68, align 8, !tbaa !37
  %69 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 6
  store i32 %3, i32* %69, align 8, !tbaa !39
  %70 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 5
  store i32 0, i32* %70, align 4, !tbaa !40
  %71 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 7
  store i32 0, i32* %71, align 4, !tbaa !41
  %72 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 9
  store i32 0, i32* %72, align 4, !tbaa !42
  %73 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 8
  store i32 0, i32* %73, align 8, !tbaa !43
  %74 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 12
  %75 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %76 = bitcast i16* %74 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %76, i8 0, i64 7, i32 8, i1 false) #8
  %77 = load %struct.Dyndata*, %struct.Dyndata** %75, align 8, !tbaa !27
  %78 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %77, i64 0, i32 0, i32 1
  %79 = load i32, i32* %78, align 8, !tbaa !33
  %80 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 10
  store i32 %79, i32* %80, align 8, !tbaa !44
  %81 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %77, i64 0, i32 2, i32 1
  %82 = load i32, i32* %81, align 8, !tbaa !28
  %83 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 11
  store i32 %82, i32* %83, align 4, !tbaa !45
  %84 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 3
  %85 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 11
  %86 = bitcast %struct.TString** %85 to i64*
  %87 = load i64, i64* %86, align 8, !tbaa !46
  %88 = getelementptr inbounds %struct.Proto, %struct.Proto* %42, i64 0, i32 22
  %89 = bitcast %struct.TString** %88 to i64*
  store i64 %87, i64* %89, align 8, !tbaa !21
  %90 = getelementptr inbounds %struct.Proto, %struct.Proto* %42, i64 0, i32 5
  store i8 2, i8* %90, align 4, !tbaa !47
  %91 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 5
  store i8 0, i8* %91, align 2, !tbaa !48
  %92 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 3
  store i8 0, i8* %92, align 8, !tbaa !50
  %93 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 1
  store i32 %82, i32* %93, align 8, !tbaa !51
  %94 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %77, i64 0, i32 1, i32 1
  %95 = load i32, i32* %94, align 8, !tbaa !32
  %96 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 2
  store i32 %95, i32* %96, align 4, !tbaa !52
  %97 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 4
  store i8 0, i8* %97, align 1, !tbaa !53
  %98 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 6
  store i8 0, i8* %98, align 1, !tbaa !54
  %99 = bitcast %struct.BlockCnt* %6 to i64*
  store i64 0, i64* %99, align 8, !tbaa !55
  store %struct.BlockCnt* %6, %struct.BlockCnt** %84, align 8, !tbaa !56
  call fastcc void @checknext(%struct.LexState* %0, i32 40) #11
  %100 = icmp eq i32 %2, 0
  br i1 %100, label %103, label %101

; <label>:101:                                    ; preds = %60
  %102 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 4) #9
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %102) #11
  call fastcc void @adjustlocalvars(%struct.LexState* nonnull %0, i32 1) #11
  br label %103

; <label>:103:                                    ; preds = %60, %101
  %104 = load %struct.FuncState*, %struct.FuncState** %11, align 8, !tbaa !34
  %105 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %104, i64 0, i32 0
  %106 = load %struct.Proto*, %struct.Proto** %105, align 8, !tbaa !19
  %107 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %108 = load i32, i32* %107, align 8, !tbaa !63
  %109 = icmp eq i32 %108, 41
  br i1 %109, label %123, label %110

; <label>:110:                                    ; preds = %103
  br label %113

; <label>:111:                                    ; preds = %118
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  %112 = load i32, i32* %107, align 8, !tbaa !63
  br label %113

; <label>:113:                                    ; preds = %110, %111
  %114 = phi i32 [ %112, %111 ], [ %108, %110 ]
  %115 = phi i32 [ %120, %111 ], [ 0, %110 ]
  switch i32 %114, label %116 [
    i32 292, label %118
    i32 281, label %117
  ]

; <label>:116:                                    ; preds = %113
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0)) #10
  unreachable

; <label>:117:                                    ; preds = %113
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %123

; <label>:118:                                    ; preds = %113
  %119 = call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #9
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %119) #9
  %120 = add nuw nsw i32 %115, 1
  %121 = load i32, i32* %107, align 8, !tbaa !63
  %122 = icmp eq i32 %121, 44
  br i1 %122, label %111, label %123

; <label>:123:                                    ; preds = %118, %117, %103
  %124 = phi i32 [ %115, %117 ], [ 0, %103 ], [ %120, %118 ]
  %125 = phi i1 [ false, %117 ], [ true, %103 ], [ true, %118 ]
  call fastcc void @adjustlocalvars(%struct.LexState* nonnull %0, i32 %124) #9
  %126 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %104, i64 0, i32 13
  %127 = load i8, i8* %126, align 2, !tbaa !72
  %128 = getelementptr inbounds %struct.Proto, %struct.Proto* %106, i64 0, i32 3
  store i8 %127, i8* %128, align 2, !tbaa !120
  br i1 %125, label %135, label %129

; <label>:129:                                    ; preds = %123
  %130 = zext i8 %127 to i32
  %131 = load %struct.Proto*, %struct.Proto** %105, align 8, !tbaa !19
  %132 = getelementptr inbounds %struct.Proto, %struct.Proto* %131, i64 0, i32 4
  store i8 1, i8* %132, align 1, !tbaa !57
  %133 = call i32 @luaK_codeABCk(%struct.FuncState* nonnull %104, i32 82, i32 %130, i32 0, i32 0, i32 0) #9
  %134 = load i8, i8* %126, align 2, !tbaa !72
  br label %135

; <label>:135:                                    ; preds = %123, %129
  %136 = phi i8 [ %127, %123 ], [ %134, %129 ]
  %137 = zext i8 %136 to i32
  call void @luaK_reserveregs(%struct.FuncState* nonnull %104, i32 %137) #9
  call fastcc void @checknext(%struct.LexState* nonnull %0, i32 41) #11
  br label %138

; <label>:138:                                    ; preds = %140, %135
  %139 = load i32, i32* %107, align 8, !tbaa !63
  switch i32 %139, label %140 [
    i32 260, label %142
    i32 261, label %142
    i32 262, label %142
    i32 289, label %142
    i32 277, label %142
  ]

; <label>:140:                                    ; preds = %138
  %141 = icmp eq i32 %139, 274
  call fastcc void @statement(%struct.LexState* nonnull %0) #9
  br i1 %141, label %142, label %138

; <label>:142:                                    ; preds = %138, %138, %138, %138, %138, %140
  %143 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %144 = load i32, i32* %143, align 4, !tbaa !84
  %145 = load %struct.Proto*, %struct.Proto** %61, align 8, !tbaa !19
  %146 = getelementptr inbounds %struct.Proto, %struct.Proto* %145, i64 0, i32 14
  store i32 %144, i32* %146, align 8, !tbaa !121
  call fastcc void @check_match(%struct.LexState* %0, i32 262, i32 265, i32 %3) #11
  %147 = load %struct.FuncState*, %struct.FuncState** %11, align 8, !tbaa !34
  %148 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %147, i64 0, i32 1
  %149 = load %struct.FuncState*, %struct.FuncState** %148, align 8, !tbaa !35
  %150 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %149, i64 0, i32 8
  %151 = load i32, i32* %150, align 8, !tbaa !43
  %152 = add nsw i32 %151, -1
  %153 = call i32 @luaK_codeABx(%struct.FuncState* %149, i32 80, i32 0, i32 %152) #9
  %154 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %154, align 8, !tbaa !58
  %155 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %155, align 4, !tbaa !60
  %156 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 15, i32* %156, align 8, !tbaa !61
  %157 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %158 = bitcast %union.anon.7* %157 to i32*
  store i32 %153, i32* %158, align 8, !tbaa !11
  call void @luaK_exp2nextreg(%struct.FuncState* %149, %struct.expdesc* %1) #9
  call fastcc void @close_func(%struct.LexState* %0) #11
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #8
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %7) #8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @suffixedexp(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %8 = load i32, i32* %7, align 4, !tbaa !84
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !63
  switch i32 %10, label %15 [
    i32 40, label %11
    i32 292, label %14
  ]

; <label>:11:                                     ; preds = %2
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %12 = tail call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 0) #9
  tail call fastcc void @check_match(%struct.LexState* nonnull %0, i32 41, i32 40, i32 %8) #9
  %13 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  tail call void @luaK_dischargevars(%struct.FuncState* %13, %struct.expdesc* %1) #9
  br label %16

; <label>:14:                                     ; preds = %2
  tail call fastcc void @singlevar(%struct.LexState* nonnull %0, %struct.expdesc* %1) #9
  br label %16

; <label>:15:                                     ; preds = %2
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0)) #10
  unreachable

; <label>:16:                                     ; preds = %11, %14
  %17 = bitcast %struct.expdesc* %3 to i8*
  %18 = bitcast %struct.expdesc* %4 to i8*
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1
  %23 = bitcast %union.anon.7* %22 to i32*
  br label %24

; <label>:24:                                     ; preds = %33, %16
  %25 = load i32, i32* %9, align 8, !tbaa !63
  switch i32 %25, label %34 [
    i32 46, label %26
    i32 91, label %27
    i32 58, label %28
    i32 40, label %32
    i32 293, label %32
    i32 123, label %32
  ]

; <label>:26:                                     ; preds = %24
  call fastcc void @fieldsel(%struct.LexState* nonnull %0, %struct.expdesc* %1) #11
  br label %33

; <label>:27:                                     ; preds = %24
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %17) #8
  call void @luaK_exp2anyregup(%struct.FuncState* %6, %struct.expdesc* %1) #9
  call fastcc void @yindex(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3) #11
  call void @luaK_indexed(%struct.FuncState* %6, %struct.expdesc* %1, %struct.expdesc* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #8
  br label %33

; <label>:28:                                     ; preds = %24
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %18) #8
  call void @luaX_next(%struct.LexState* nonnull %0) #9
  %29 = call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #9
  %30 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  %31 = call i32 @luaK_stringK(%struct.FuncState* %30, %struct.TString* %29) #9
  store i32 -1, i32* %19, align 8, !tbaa !58
  store i32 -1, i32* %20, align 4, !tbaa !60
  store i32 4, i32* %21, align 8, !tbaa !61
  store i32 %31, i32* %23, align 8, !tbaa !11
  call void @luaK_self(%struct.FuncState* %6, %struct.expdesc* %1, %struct.expdesc* nonnull %4) #9
  call fastcc void @funcargs(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 %8) #11
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %18) #8
  br label %33

; <label>:32:                                     ; preds = %24, %24, %24
  call void @luaK_exp2nextreg(%struct.FuncState* %6, %struct.expdesc* %1) #9
  call fastcc void @funcargs(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 %8) #11
  br label %33

; <label>:33:                                     ; preds = %32, %28, %27, %26
  br label %24

; <label>:34:                                     ; preds = %24
  ret void
}

; Function Attrs: optsize
declare hidden i32 @luaK_stringK(%struct.FuncState*, %struct.TString*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaK_exp2nextreg(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden i32 @luaO_int2fb(i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaK_setlist(%struct.FuncState*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden i32 @luaX_lookahead(%struct.LexState*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @recfield(%struct.LexState*, %struct.ConsControl* nocapture) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca %struct.expdesc, align 8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %7 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
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
  br i1 %15, label %16, label %25

; <label>:16:                                     ; preds = %2
  %17 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* nonnull %0) #9
  %18 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  %19 = tail call i32 @luaK_stringK(%struct.FuncState* %18, %struct.TString* %17) #9
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2
  store i32 -1, i32* %20, align 8, !tbaa !58
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3
  store i32 -1, i32* %21, align 4, !tbaa !60
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  store i32 4, i32* %22, align 8, !tbaa !61
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1
  %24 = bitcast %union.anon.7* %23 to i32*
  store i32 %19, i32* %24, align 8, !tbaa !11
  br label %26

; <label>:25:                                     ; preds = %2
  call fastcc void @yindex(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4) #11
  br label %26

; <label>:26:                                     ; preds = %25, %16
  %27 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 2
  %28 = load i32, i32* %27, align 8, !tbaa !115
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8, !tbaa !115
  call fastcc void @checknext(%struct.LexState* nonnull %0, i32 61) #11
  %30 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 1
  %31 = bitcast %struct.expdesc** %30 to i8**
  %32 = load i8*, i8** %31, align 8, !tbaa !117
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %10, i8* %32, i64 24, i32 8, i1 false), !tbaa.struct !122
  call void @luaK_indexed(%struct.FuncState* %7, %struct.expdesc* nonnull %3, %struct.expdesc* nonnull %4) #9
  %33 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %5, i32 0) #9
  call void @luaK_storevar(%struct.FuncState* %7, %struct.expdesc* nonnull %3, %struct.expdesc* nonnull %5) #9
  store i8 %9, i8* %8, align 4, !tbaa !86
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @yindex(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  tail call void @luaX_next(%struct.LexState* %0) #9
  %3 = tail call fastcc i32 @subexpr(%struct.LexState* %0, %struct.expdesc* %1, i32 0) #9
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !34
  tail call void @luaK_exp2val(%struct.FuncState* %5, %struct.expdesc* %1) #9
  tail call fastcc void @checknext(%struct.LexState* %0, i32 93) #11
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: optsize
declare hidden void @luaK_indexed(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaK_storevar(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaK_exp2val(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaK_setreturns(%struct.FuncState*, %struct.expdesc*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @new_localvar(%struct.LexState* nocapture readonly, %struct.TString*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %6 = load %struct.Dyndata*, %struct.Dyndata** %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 0
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 11
  %10 = load i32, i32* %9, align 4, !tbaa !128
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %12 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 21
  %14 = bitcast %struct.LocVar** %13 to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !78
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 12
  %17 = load i16, i16* %16, align 8, !tbaa !79
  %18 = sext i16 %17 to i32
  %19 = tail call i8* @luaM_growaux_(%struct.lua_State* %12, i8* %15, i32 %18, i32* nonnull %9, i32 16, i32 32767, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #9
  store i8* %19, i8** %14, align 8, !tbaa !78
  %20 = load i32, i32* %9, align 4, !tbaa !128
  %21 = icmp slt i32 %10, %20
  %22 = bitcast i8* %19 to %struct.LocVar*
  br i1 %21, label %23, label %31

; <label>:23:                                     ; preds = %2
  %24 = sext i32 %10 to i64
  %25 = sext i32 %20 to i64
  br label %26

; <label>:26:                                     ; preds = %26, %23
  %27 = phi i64 [ %24, %23 ], [ %28, %26 ]
  %28 = add nsw i64 %27, 1
  %29 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %22, i64 %27, i32 0
  store %struct.TString* null, %struct.TString** %29, align 8, !tbaa !129
  %30 = icmp eq i64 %28, %25
  br i1 %30, label %31, label %26

; <label>:31:                                     ; preds = %26, %2
  %32 = load i16, i16* %16, align 8, !tbaa !79
  %33 = sext i16 %32 to i64
  %34 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %22, i64 %33, i32 0
  store %struct.TString* %1, %struct.TString** %34, align 8, !tbaa !129
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 2
  %36 = load i8, i8* %35, align 1, !tbaa !23
  %37 = and i8 %36, 32
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %49, label %39

; <label>:39:                                     ; preds = %31
  %40 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 2
  %41 = load i8, i8* %40, align 1, !tbaa !24
  %42 = and i8 %41, 24
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %49, label %44

; <label>:44:                                     ; preds = %39
  %45 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !66
  %46 = bitcast %struct.Proto* %8 to %struct.GCObject*
  %47 = bitcast %struct.TString* %1 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* %45, %struct.GCObject* %46, %struct.GCObject* %47) #9
  %48 = load i16, i16* %16, align 8, !tbaa !79
  br label %49

; <label>:49:                                     ; preds = %31, %39, %44
  %50 = phi i16 [ %32, %39 ], [ %32, %31 ], [ %48, %44 ]
  %51 = add i16 %50, 1
  store i16 %51, i16* %16, align 8, !tbaa !79
  %52 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %6, i64 0, i32 0, i32 1
  %53 = load i32, i32* %52, align 8, !tbaa !33
  %54 = add nsw i32 %53, 1
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 10
  %56 = load i32, i32* %55, align 8, !tbaa !44
  %57 = sub nsw i32 %54, %56
  %58 = icmp sgt i32 %57, 200
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %49
  tail call fastcc void @errorlimit(%struct.FuncState* nonnull %4, i32 200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #10
  unreachable

; <label>:60:                                     ; preds = %49
  %61 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !66
  %62 = bitcast %struct.Dyndata* %6 to i8**
  %63 = load i8*, i8** %62, align 8, !tbaa !89
  %64 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %6, i64 0, i32 0, i32 2
  %65 = tail call i8* @luaM_growaux_(%struct.lua_State* %61, i8* %63, i32 %54, i32* nonnull %64, i32 2, i32 2147483647, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #9
  %66 = bitcast i8* %65 to %struct.Vardesc*
  store i8* %65, i8** %62, align 8, !tbaa !89
  %67 = load i32, i32* %52, align 8, !tbaa !33
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %52, align 8, !tbaa !33
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %66, i64 %69, i32 0
  store i16 %50, i16* %70, align 2, !tbaa !90
  ret void
}

; Function Attrs: optsize
declare hidden %struct.TString* @luaX_newstring(%struct.LexState*, i8*, i64) local_unnamed_addr #2

; Function Attrs: norecurse nounwind optsize uwtable
define internal fastcc void @adjustlocalvars(%struct.LexState* nocapture readonly, i32) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 13
  %6 = load i8, i8* %5, align 2, !tbaa !72
  %7 = trunc i32 %1 to i8
  %8 = add i8 %6, %7
  store i8 %8, i8* %5, align 2, !tbaa !72
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %40, label %10

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 4
  %12 = load i32, i32* %11, align 8, !tbaa !37
  %13 = zext i8 %8 to i32
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 2
  %15 = load %struct.LexState*, %struct.LexState** %14, align 8, !tbaa !36
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i64 0, i32 10
  %17 = load %struct.Dyndata*, %struct.Dyndata** %16, align 8, !tbaa !27
  %18 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %17, i64 0, i32 0, i32 0
  %19 = load %struct.Vardesc*, %struct.Vardesc** %18, align 8, !tbaa !89
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 10
  %21 = load i32, i32* %20, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 0
  %23 = load %struct.Proto*, %struct.Proto** %22, align 8, !tbaa !19
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %23, i64 0, i32 21
  %25 = load %struct.LocVar*, %struct.LocVar** %24, align 8, !tbaa !78
  %26 = sext i32 %1 to i64
  br label %27

; <label>:27:                                     ; preds = %10, %27
  %28 = phi i64 [ %26, %10 ], [ %37, %27 ]
  %29 = trunc i64 %28 to i32
  %30 = sub i32 %13, %29
  %31 = add nsw i32 %30, %21
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %19, i64 %32, i32 0
  %34 = load i16, i16* %33, align 2, !tbaa !90
  %35 = sext i16 %34 to i64
  %36 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %25, i64 %35, i32 1
  store i32 %12, i32* %36, align 8, !tbaa !92
  %37 = add nsw i64 %28, -1
  %38 = trunc i64 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %27

; <label>:40:                                     ; preds = %27, %2
  ret void
}

; Function Attrs: norecurse nounwind optsize readonly uwtable
define internal fastcc %struct.LocVar* @getlocvar(%struct.FuncState* nocapture readonly, i32) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %4 = load %struct.LexState*, %struct.LexState** %3, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i64 0, i32 10
  %6 = load %struct.Dyndata*, %struct.Dyndata** %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %6, i64 0, i32 0, i32 0
  %8 = load %struct.Vardesc*, %struct.Vardesc** %7, align 8, !tbaa !89
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 10
  %10 = load i32, i32* %9, align 8, !tbaa !44
  %11 = add nsw i32 %10, %1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %8, i64 %12, i32 0
  %14 = load i16, i16* %13, align 2, !tbaa !90
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %16 = load %struct.Proto*, %struct.Proto** %15, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 21
  %18 = load %struct.LocVar*, %struct.LocVar** %17, align 8, !tbaa !78
  %19 = sext i16 %14 to i64
  %20 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %18, i64 %19
  ret %struct.LocVar* %20
}

; Function Attrs: optsize
declare hidden void @luaK_reserveregs(%struct.FuncState*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden i32 @luaK_codeABx(%struct.FuncState*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @fieldsel(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !34
  %6 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8
  tail call void @luaK_exp2anyregup(%struct.FuncState* %5, %struct.expdesc* %1) #9
  tail call void @luaX_next(%struct.LexState* %0) #9
  %7 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* %0) #9
  %8 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !34
  %9 = tail call i32 @luaK_stringK(%struct.FuncState* %8, %struct.TString* %7) #9
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  store i32 -1, i32* %10, align 8, !tbaa !58
  %11 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  store i32 -1, i32* %11, align 4, !tbaa !60
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  store i32 4, i32* %12, align 8, !tbaa !61
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %14 = bitcast %union.anon.7* %13 to i32*
  store i32 %9, i32* %14, align 8, !tbaa !11
  call void @luaK_indexed(%struct.FuncState* %5, %struct.expdesc* %1, %struct.expdesc* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8
  ret void
}

; Function Attrs: optsize
declare hidden void @luaK_exp2anyregup(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaK_self(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @funcargs(%struct.LexState*, %struct.expdesc* nocapture, i32) unnamed_addr #0 {
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
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
  store i32 0, i32* %14, align 8, !tbaa !61
  br label %17

; <label>:15:                                     ; preds = %10
  %16 = call fastcc i32 @explist(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4) #11
  call void @luaK_setreturns(%struct.FuncState* %6, %struct.expdesc* nonnull %4, i32 -1) #9
  br label %17

; <label>:17:                                     ; preds = %15, %13
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 41, i32 40, i32 %2) #11
  br label %30

; <label>:18:                                     ; preds = %3
  call fastcc void @constructor(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4) #11
  br label %30

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %21 = bitcast %union.SemInfo* %20 to %struct.TString**
  %22 = load %struct.TString*, %struct.TString** %21, align 8, !tbaa !11
  %23 = tail call i32 @luaK_stringK(%struct.FuncState* %6, %struct.TString* %22) #9
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2
  store i32 -1, i32* %24, align 8, !tbaa !58
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3
  store i32 -1, i32* %25, align 4, !tbaa !60
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  store i32 4, i32* %26, align 8, !tbaa !61
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1
  %28 = bitcast %union.anon.7* %27 to i32*
  store i32 %23, i32* %28, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  br label %30

; <label>:29:                                     ; preds = %3
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0)) #10
  unreachable

; <label>:30:                                     ; preds = %19, %18, %17
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %32 = bitcast %union.anon.7* %31 to i32*
  %33 = load i32, i32* %32, align 8, !tbaa !11
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  %35 = load i32, i32* %34, align 8, !tbaa !61
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
  store i32 -1, i32* %45, align 8, !tbaa !58
  %46 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %46, align 4, !tbaa !60
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 16, i32* %47, align 8, !tbaa !61
  store i32 %44, i32* %32, align 8, !tbaa !11
  call void @luaK_fixline(%struct.FuncState* %6, i32 %2) #9
  %48 = trunc i32 %33 to i8
  %49 = add i8 %48, 1
  %50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 15
  store i8 %49, i8* %50, align 4, !tbaa !86
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #8
  ret void
}

; Function Attrs: optsize
declare hidden void @luaK_dischargevars(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @singlevar(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = tail call fastcc %struct.TString* @str_checkname(%struct.LexState* %0) #11
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  tail call fastcc void @singlevaraux(%struct.FuncState* %6, %struct.TString* %4, %struct.expdesc* %1, i32 1) #11
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !61
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

; <label>:10:                                     ; preds = %2
  %11 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 12
  %13 = load %struct.TString*, %struct.TString** %12, align 8, !tbaa !62
  tail call fastcc void @singlevaraux(%struct.FuncState* %6, %struct.TString* %13, %struct.expdesc* nonnull %1, i32 1) #11
  %14 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  %15 = tail call i32 @luaK_stringK(%struct.FuncState* %14, %struct.TString* %4) #9
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  store i32 -1, i32* %16, align 8, !tbaa !58
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  store i32 -1, i32* %17, align 4, !tbaa !60
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  store i32 4, i32* %18, align 8, !tbaa !61
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %20 = bitcast %union.anon.7* %19 to i32*
  store i32 %15, i32* %20, align 8, !tbaa !11
  call void @luaK_indexed(%struct.FuncState* %6, %struct.expdesc* nonnull %1, %struct.expdesc* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #8
  br label %21

; <label>:21:                                     ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @singlevaraux(%struct.FuncState*, %struct.TString*, %struct.expdesc* nocapture, i32) unnamed_addr #0 {
  %5 = icmp eq %struct.FuncState* %0, null
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  store i32 -1, i32* %7, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  store i32 -1, i32* %8, align 4, !tbaa !60
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  store i32 0, i32* %9, align 8, !tbaa !61
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %11 = bitcast %union.anon.7* %10 to i32*
  store i32 0, i32* %11, align 8, !tbaa !11
  ret void

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13
  %14 = load i8, i8* %13, align 2, !tbaa !72
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %18 = load %struct.Proto*, %struct.Proto** %17, align 8, !tbaa !19
  br label %69

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %21 = load %struct.LexState*, %struct.LexState** %20, align 8, !tbaa !36
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %21, i64 0, i32 10
  %23 = load %struct.Dyndata*, %struct.Dyndata** %22, align 8, !tbaa !27
  %24 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %23, i64 0, i32 0, i32 0
  %25 = load %struct.Vardesc*, %struct.Vardesc** %24, align 8, !tbaa !89
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 10
  %27 = load i32, i32* %26, align 8, !tbaa !44
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %29 = load %struct.Proto*, %struct.Proto** %28, align 8, !tbaa !19
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %29, i64 0, i32 21
  %31 = load %struct.LocVar*, %struct.LocVar** %30, align 8, !tbaa !78
  %32 = zext i8 %14 to i64
  %33 = sext i32 %27 to i64
  br label %36

; <label>:34:                                     ; preds = %36
  %35 = icmp sgt i64 %37, 1
  br i1 %35, label %36, label %69

; <label>:36:                                     ; preds = %34, %19
  %37 = phi i64 [ %32, %19 ], [ %38, %34 ]
  %38 = add nsw i64 %37, -1
  %39 = add nsw i64 %38, %33
  %40 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %25, i64 %39, i32 0
  %41 = load i16, i16* %40, align 2, !tbaa !90
  %42 = sext i16 %41 to i64
  %43 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %31, i64 %42, i32 0
  %44 = load %struct.TString*, %struct.TString** %43, align 8, !tbaa !129
  %45 = icmp eq %struct.TString* %44, %1
  br i1 %45, label %46, label %34

; <label>:46:                                     ; preds = %36
  %47 = trunc i64 %38 to i32
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %49, label %69

; <label>:49:                                     ; preds = %46
  %50 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  store i32 -1, i32* %50, align 8, !tbaa !58
  %51 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  store i32 -1, i32* %51, align 4, !tbaa !60
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  store i32 8, i32* %52, align 8, !tbaa !61
  %53 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %54 = bitcast %union.anon.7* %53 to i32*
  store i32 %47, i32* %54, align 8, !tbaa !11
  %55 = icmp eq i32 %3, 0
  br i1 %55, label %56, label %106

; <label>:56:                                     ; preds = %49
  %57 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3
  br label %58

; <label>:58:                                     ; preds = %58, %56
  %59 = phi %struct.BlockCnt** [ %57, %56 ], [ %65, %58 ]
  %60 = load %struct.BlockCnt*, %struct.BlockCnt** %59, align 8, !tbaa !87
  %61 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %60, i64 0, i32 3
  %62 = load i8, i8* %61, align 8, !tbaa !50
  %63 = zext i8 %62 to i32
  %64 = icmp sgt i32 %63, %47
  %65 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %60, i64 0, i32 0
  br i1 %64, label %58, label %66

; <label>:66:                                     ; preds = %58
  %67 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %60, i64 0, i32 4
  store i8 1, i8* %67, align 1, !tbaa !53
  %68 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 17
  store i8 1, i8* %68, align 2, !tbaa !88
  br label %106

; <label>:69:                                     ; preds = %34, %16, %46
  %70 = phi %struct.Proto* [ %18, %16 ], [ %29, %46 ], [ %29, %34 ]
  %71 = getelementptr inbounds %struct.Proto, %struct.Proto* %70, i64 0, i32 18
  %72 = load %struct.Upvaldesc*, %struct.Upvaldesc** %71, align 8, !tbaa !67
  %73 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14
  %74 = load i8, i8* %73, align 1, !tbaa !64
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %91, label %76

; <label>:76:                                     ; preds = %69
  %77 = zext i8 %74 to i64
  br label %78

; <label>:78:                                     ; preds = %83, %76
  %79 = phi i64 [ 0, %76 ], [ %84, %83 ]
  %80 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %72, i64 %79, i32 0
  %81 = load %struct.TString*, %struct.TString** %80, align 8, !tbaa !68
  %82 = icmp eq %struct.TString* %81, %1
  br i1 %82, label %86, label %83

; <label>:83:                                     ; preds = %78
  %84 = add nuw nsw i64 %79, 1
  %85 = icmp ult i64 %84, %77
  br i1 %85, label %78, label %91

; <label>:86:                                     ; preds = %78
  %87 = trunc i64 %79 to i32
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %91, label %89

; <label>:89:                                     ; preds = %86
  %90 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  br label %99

; <label>:91:                                     ; preds = %83, %69, %86
  %92 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 1
  %93 = load %struct.FuncState*, %struct.FuncState** %92, align 8, !tbaa !35
  tail call fastcc void @singlevaraux(%struct.FuncState* %93, %struct.TString* %1, %struct.expdesc* %2, i32 0) #11
  %94 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %95 = load i32, i32* %94, align 8, !tbaa !61
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %106, label %97

; <label>:97:                                     ; preds = %91
  %98 = tail call fastcc i32 @newupvalue(%struct.FuncState* nonnull %0, %struct.TString* %1, %struct.expdesc* nonnull %2) #11
  br label %99

; <label>:99:                                     ; preds = %89, %97
  %100 = phi i32* [ %90, %89 ], [ %94, %97 ]
  %101 = phi i32 [ %87, %89 ], [ %98, %97 ]
  %102 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  store i32 -1, i32* %102, align 8, !tbaa !58
  %103 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  store i32 -1, i32* %103, align 4, !tbaa !60
  store i32 9, i32* %100, align 8, !tbaa !61
  %104 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %105 = bitcast %union.anon.7* %104 to i32*
  store i32 %101, i32* %105, align 8, !tbaa !11
  br label %106

; <label>:106:                                    ; preds = %66, %49, %99, %91
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @explist(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = tail call fastcc i32 @subexpr(%struct.LexState* %0, %struct.expdesc* %1, i32 0) #9
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !63
  %6 = icmp eq i32 %5, 44
  br i1 %6, label %7, label %16

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %9

; <label>:9:                                      ; preds = %7, %9
  %10 = phi i32 [ 1, %7 ], [ %13, %9 ]
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %11 = load %struct.FuncState*, %struct.FuncState** %8, align 8, !tbaa !34
  tail call void @luaK_exp2nextreg(%struct.FuncState* %11, %struct.expdesc* %1) #9
  %12 = tail call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 0) #9
  %13 = add nuw nsw i32 %10, 1
  %14 = load i32, i32* %4, align 8, !tbaa !63
  %15 = icmp eq i32 %14, 44
  br i1 %15, label %9, label %16

; <label>:16:                                     ; preds = %9, %2
  %17 = phi i32 [ 1, %2 ], [ %13, %9 ]
  ret i32 %17
}

; Function Attrs: optsize
declare hidden void @luaK_fixline(%struct.FuncState*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @newlabelentry(%struct.LexState* nocapture readonly, %struct.Labellist*, %struct.TString*, i32, i32) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %1, i64 0, i32 1
  %7 = load i32, i32* %6, align 8, !tbaa !106
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %9 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !tbaa !66
  %10 = bitcast %struct.Labellist* %1 to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !107
  %12 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %1, i64 0, i32 2
  %13 = tail call i8* @luaM_growaux_(%struct.lua_State* %9, i8* %11, i32 %7, i32* nonnull %12, i32 24, i32 32767, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #9
  %14 = bitcast i8* %13 to %struct.Labeldesc*
  store i8* %13, i8** %10, align 8, !tbaa !107
  %15 = sext i32 %7 to i64
  %16 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %14, i64 %15, i32 0
  store %struct.TString* %2, %struct.TString** %16, align 8, !tbaa !95
  %17 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %14, i64 %15, i32 2
  store i32 %3, i32* %17, align 4, !tbaa !98
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %19 = load %struct.FuncState*, %struct.FuncState** %18, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %19, i64 0, i32 13
  %21 = load i8, i8* %20, align 2, !tbaa !72
  %22 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %14, i64 %15, i32 3
  store i8 %21, i8* %22, align 8, !tbaa !99
  %23 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %14, i64 %15, i32 4
  store i8 0, i8* %23, align 1, !tbaa !108
  %24 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %14, i64 %15, i32 1
  store i32 %4, i32* %24, align 8, !tbaa !100
  %25 = add nsw i32 %7, 1
  store i32 %25, i32* %6, align 8, !tbaa !106
  ret i32 %7
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @createlabel(%struct.LexState*, %struct.TString*, i32, i32) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %8 = load %struct.Dyndata*, %struct.Dyndata** %7, align 8, !tbaa !27
  %9 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %8, i64 0, i32 2
  %10 = tail call i32 @luaK_getlabel(%struct.FuncState* %6) #9
  %11 = tail call fastcc i32 @newlabelentry(%struct.LexState* %0, %struct.Labellist* nonnull %9, %struct.TString* %1, i32 %2, i32 %10) #11
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %4
  %14 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %9, i64 0, i32 0
  %15 = load %struct.Labeldesc*, %struct.Labeldesc** %14, align 8, !tbaa !107
  %16 = sext i32 %11 to i64
  br label %26

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 3
  %19 = load %struct.BlockCnt*, %struct.BlockCnt** %18, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %19, i64 0, i32 3
  %21 = load i8, i8* %20, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %9, i64 0, i32 0
  %23 = load %struct.Labeldesc*, %struct.Labeldesc** %22, align 8, !tbaa !107
  %24 = sext i32 %11 to i64
  %25 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %23, i64 %24, i32 3
  store i8 %21, i8* %25, align 8, !tbaa !99
  br label %26

; <label>:26:                                     ; preds = %13, %17
  %27 = phi i64 [ %16, %13 ], [ %24, %17 ]
  %28 = phi %struct.Labeldesc* [ %15, %13 ], [ %23, %17 ]
  %29 = load %struct.Dyndata*, %struct.Dyndata** %7, align 8, !tbaa !27
  %30 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %30, i64 0, i32 3
  %32 = load %struct.BlockCnt*, %struct.BlockCnt** %31, align 8, !tbaa !56
  %33 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %32, i64 0, i32 2
  %34 = load i32, i32* %33, align 4, !tbaa !52
  %35 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %29, i64 0, i32 1, i32 1
  %36 = load i32, i32* %35, align 8, !tbaa !106
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %106

; <label>:38:                                     ; preds = %26
  %39 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %29, i64 0, i32 1, i32 0
  %40 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %28, i64 %27, i32 0
  %41 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %28, i64 %27, i32 3
  %42 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %28, i64 %27, i32 1
  br label %43

; <label>:43:                                     ; preds = %94, %38
  %44 = phi i32 [ %36, %38 ], [ %95, %94 ]
  %45 = phi i32 [ 0, %38 ], [ %97, %94 ]
  %46 = phi i32 [ %34, %38 ], [ %96, %94 ]
  %47 = load %struct.Labeldesc*, %struct.Labeldesc** %39, align 8, !tbaa !107
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %47, i64 %48, i32 0
  %50 = load %struct.TString*, %struct.TString** %49, align 8, !tbaa !95
  %51 = load %struct.TString*, %struct.TString** %40, align 8, !tbaa !95
  %52 = icmp eq %struct.TString* %50, %51
  br i1 %52, label %53, label %92

; <label>:53:                                     ; preds = %43
  %54 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %47, i64 %48, i32 4
  %55 = load i8, i8* %54, align 1, !tbaa !108
  %56 = zext i8 %55 to i32
  %57 = or i32 %45, %56
  %58 = load %struct.Dyndata*, %struct.Dyndata** %7, align 8, !tbaa !27
  %59 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %58, i64 0, i32 1, i32 0
  %60 = load %struct.Labeldesc*, %struct.Labeldesc** %59, align 8, !tbaa !107
  %61 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %60, i64 %48, i32 3
  %62 = load i8, i8* %61, align 8, !tbaa !99
  %63 = load i8, i8* %41, align 8, !tbaa !99
  %64 = icmp ult i8 %62, %63
  br i1 %64, label %65, label %67, !prof !130

; <label>:65:                                     ; preds = %53
  %66 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %60, i64 %48
  tail call fastcc void @jumpscopeerror(%struct.LexState* nonnull %0, %struct.Labeldesc* %66) #10
  unreachable

; <label>:67:                                     ; preds = %53
  %68 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %60, i64 %48, i32 1
  %70 = load i32, i32* %69, align 8, !tbaa !100
  %71 = load i32, i32* %42, align 8, !tbaa !100
  tail call void @luaK_patchlist(%struct.FuncState* %68, i32 %70, i32 %71) #9
  %72 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %58, i64 0, i32 1, i32 1
  %73 = load i32, i32* %72, align 8, !tbaa !106
  %74 = add nsw i32 %73, -1
  %75 = icmp sgt i32 %74, %46
  br i1 %75, label %76, label %89

; <label>:76:                                     ; preds = %67
  br label %77

; <label>:77:                                     ; preds = %76, %77
  %78 = phi i64 [ %81, %77 ], [ %48, %76 ]
  %79 = load %struct.Labeldesc*, %struct.Labeldesc** %59, align 8, !tbaa !107
  %80 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %79, i64 %78
  %81 = add nsw i64 %78, 1
  %82 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %79, i64 %81
  %83 = bitcast %struct.Labeldesc* %80 to i8*
  %84 = bitcast %struct.Labeldesc* %82 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %84, i64 24, i32 8, i1 false) #8, !tbaa.struct !131
  %85 = load i32, i32* %72, align 8, !tbaa !106
  %86 = add nsw i32 %85, -1
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %81, %87
  br i1 %88, label %77, label %89

; <label>:89:                                     ; preds = %77, %67
  %90 = phi i32 [ %74, %67 ], [ %86, %77 ]
  store i32 %90, i32* %72, align 8, !tbaa !106
  %91 = load i32, i32* %35, align 8, !tbaa !106
  br label %94

; <label>:92:                                     ; preds = %43
  %93 = add nsw i32 %46, 1
  br label %94

; <label>:94:                                     ; preds = %92, %89
  %95 = phi i32 [ %91, %89 ], [ %44, %92 ]
  %96 = phi i32 [ %46, %89 ], [ %93, %92 ]
  %97 = phi i32 [ %57, %89 ], [ %45, %92 ]
  %98 = icmp slt i32 %96, %95
  br i1 %98, label %43, label %99

; <label>:99:                                     ; preds = %94
  %100 = icmp eq i32 %97, 0
  br i1 %100, label %106, label %101

; <label>:101:                                    ; preds = %99
  %102 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 13
  %103 = load i8, i8* %102, align 2, !tbaa !72
  %104 = zext i8 %103 to i32
  %105 = tail call i32 @luaK_codeABCk(%struct.FuncState* %6, i32 55, i32 %104, i32 0, i32 0, i32 0) #9
  br label %106

; <label>:106:                                    ; preds = %26, %99, %101
  %107 = phi i32 [ 1, %101 ], [ 0, %99 ], [ 0, %26 ]
  ret i32 %107
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @undefgoto(%struct.LexState*, %struct.Labeldesc* nocapture readonly) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 0
  %4 = load %struct.TString*, %struct.TString** %3, align 8, !tbaa !95
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %6 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !tbaa !66
  %7 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #9
  %8 = icmp eq %struct.TString* %4, %7
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !tbaa !66
  br i1 %8, label %10, label %14

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 2
  %12 = load i32, i32* %11, align 4, !tbaa !98
  %13 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %12) #9
  br label %21

; <label>:14:                                     ; preds = %2
  %15 = bitcast %struct.Labeldesc* %1 to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !95
  %17 = getelementptr inbounds i8, i8* %16, i64 24
  %18 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 2
  %19 = load i32, i32* %18, align 4, !tbaa !98
  %20 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i8* nonnull %17, i32 %19) #9
  br label %21

; <label>:21:                                     ; preds = %14, %10
  %22 = phi i8* [ %13, %10 ], [ %20, %14 ]
  tail call void @luaK_semerror(%struct.LexState* nonnull %0, i8* %22) #10
  unreachable
}

; Function Attrs: optsize
declare hidden i32 @luaK_getlabel(%struct.FuncState*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @jumpscopeerror(%struct.LexState*, %struct.Labeldesc* nocapture readonly) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 3
  %6 = load i8, i8* %5, align 8, !tbaa !99
  %7 = zext i8 %6 to i32
  %8 = tail call fastcc %struct.LocVar* @getlocvar(%struct.FuncState* %4, i32 %7) #11
  %9 = bitcast %struct.LocVar* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !129
  %11 = getelementptr inbounds i8, i8* %10, i64 24
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %13 = load %struct.lua_State*, %struct.lua_State** %12, align 8, !tbaa !66
  %14 = bitcast %struct.Labeldesc* %1 to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !95
  %16 = getelementptr inbounds i8, i8* %15, i64 24
  %17 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 2
  %18 = load i32, i32* %17, align 4, !tbaa !98
  %19 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %13, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %16, i32 %18, i8* nonnull %11) #9
  tail call void @luaK_semerror(%struct.LexState* %0, i8* %19) #10
  unreachable
}

; Function Attrs: noreturn optsize
declare hidden void @luaK_semerror(%struct.LexState*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @cond(%struct.LexState*) unnamed_addr #0 {
  %2 = alloca %struct.expdesc, align 8
  %3 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8
  %4 = call fastcc i32 @subexpr(%struct.LexState* %0, %struct.expdesc* nonnull %2, i32 0) #9
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %6 = load i32, i32* %5, align 8, !tbaa !61
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  store i32 3, i32* %5, align 8, !tbaa !61
  br label %9

; <label>:9:                                      ; preds = %8, %1
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %11 = load %struct.FuncState*, %struct.FuncState** %10, align 8, !tbaa !34
  call void @luaK_goiftrue(%struct.FuncState* %11, %struct.expdesc* nonnull %2) #9
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  %13 = load i32, i32* %12, align 4, !tbaa !60
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8
  ret i32 %13
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @error_expected(%struct.LexState*, i32) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !tbaa !66
  %5 = tail call i8* @luaX_token2str(%struct.LexState* %0, i32 %1) #9
  %6 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* %5) #9
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* %6) #10
  unreachable
}

; Function Attrs: optsize
declare hidden i8* @luaX_token2str(%struct.LexState*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaK_int(%struct.FuncState*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @forbody(%struct.LexState*, i32, i32, i32, i32) unnamed_addr #0 {
  %6 = alloca %struct.BlockCnt, align 8
  %7 = bitcast %struct.BlockCnt* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #8
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %9 = load %struct.FuncState*, %struct.FuncState** %8, align 8, !tbaa !34
  tail call fastcc void @checknext(%struct.LexState* %0, i32 259) #11
  %10 = sext i32 %4 to i64
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* @forbody.forprep, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !11
  %13 = tail call i32 @luaK_codeABx(%struct.FuncState* %9, i32 %12, i32 %1, i32 0) #9
  %14 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 5
  store i8 0, i8* %14, align 2, !tbaa !48
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 13
  %16 = load i8, i8* %15, align 2, !tbaa !72
  %17 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 3
  store i8 %16, i8* %17, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 2
  %19 = load %struct.LexState*, %struct.LexState** %18, align 8, !tbaa !36
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %19, i64 0, i32 10
  %21 = load %struct.Dyndata*, %struct.Dyndata** %20, align 8, !tbaa !27
  %22 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %21, i64 0, i32 2, i32 1
  %23 = load i32, i32* %22, align 8, !tbaa !28
  %24 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 1
  store i32 %23, i32* %24, align 8, !tbaa !51
  %25 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %21, i64 0, i32 1, i32 1
  %26 = load i32, i32* %25, align 8, !tbaa !32
  %27 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 2
  store i32 %26, i32* %27, align 4, !tbaa !52
  %28 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 4
  store i8 0, i8* %28, align 1, !tbaa !53
  %29 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 3
  %30 = load %struct.BlockCnt*, %struct.BlockCnt** %29, align 8, !tbaa !56
  %31 = icmp eq %struct.BlockCnt* %30, null
  %32 = ptrtoint %struct.BlockCnt* %30 to i64
  br i1 %31, label %38, label %33

; <label>:33:                                     ; preds = %5
  %34 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %30, i64 0, i32 6
  %35 = load i8, i8* %34, align 1, !tbaa !54
  %36 = icmp ne i8 %35, 0
  %37 = zext i1 %36 to i8
  br label %38

; <label>:38:                                     ; preds = %5, %33
  %39 = phi i8 [ 0, %5 ], [ %37, %33 ]
  %40 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 6
  store i8 %39, i8* %40, align 1, !tbaa !54
  %41 = bitcast %struct.BlockCnt* %6 to i64*
  store i64 %32, i64* %41, align 8, !tbaa !55
  store %struct.BlockCnt* %6, %struct.BlockCnt** %29, align 8, !tbaa !56
  call fastcc void @adjustlocalvars(%struct.LexState* nonnull %0, i32 %3) #11
  call void @luaK_reserveregs(%struct.FuncState* %9, i32 %3) #9
  call fastcc void @block(%struct.LexState* nonnull %0) #11
  call fastcc void @leaveblock(%struct.FuncState* %9) #11
  %42 = call i32 @luaK_getlabel(%struct.FuncState* %9) #9
  call fastcc void @fixforjump(%struct.FuncState* %9, i32 %13, i32 %42, i32 0) #11
  %43 = icmp eq i32 %4, 0
  br i1 %43, label %47, label %44

; <label>:44:                                     ; preds = %38
  %45 = call i32 @luaK_codeABCk(%struct.FuncState* nonnull %9, i32 77, i32 %1, i32 0, i32 %3, i32 0) #9
  call void @luaK_fixline(%struct.FuncState* nonnull %9, i32 %2) #9
  %46 = add nsw i32 %1, 2
  br label %47

; <label>:47:                                     ; preds = %38, %44
  %48 = phi i32 [ %46, %44 ], [ %1, %38 ]
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* @forbody.forloop, i64 0, i64 %10
  %50 = load i32, i32* %49, align 4, !tbaa !11
  %51 = call i32 @luaK_codeABx(%struct.FuncState* nonnull %9, i32 %50, i32 %48, i32 0) #9
  %52 = add nsw i32 %13, 1
  call fastcc void @fixforjump(%struct.FuncState* nonnull %9, i32 %51, i32 %52, i32 1) #11
  call void @luaK_fixline(%struct.FuncState* nonnull %9, i32 %2) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @fixforjump(%struct.FuncState* nocapture readonly, i32, i32, i32) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %6 = load %struct.Proto*, %struct.Proto** %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i64 0, i32 16
  %8 = load i32*, i32** %7, align 8, !tbaa !73
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = xor i32 %1, -1
  %12 = add i32 %11, %2
  %13 = icmp eq i32 %3, 0
  %14 = sub nsw i32 0, %12
  %15 = select i1 %13, i32 %12, i32 %14
  %16 = icmp sgt i32 %15, 131071
  br i1 %16, label %17, label %20, !prof !130

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %19 = load %struct.LexState*, %struct.LexState** %18, align 8, !tbaa !36
  tail call void @luaX_syntaxerror(%struct.LexState* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0)) #10
  unreachable

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %10, align 4, !tbaa !85
  %22 = and i32 %21, 32767
  %23 = shl i32 %15, 15
  %24 = or i32 %22, %23
  store i32 %24, i32* %10, align 4, !tbaa !85
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @adjust_assign(%struct.LexState* nocapture readonly, i32, i32, %struct.expdesc*) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  %7 = sub nsw i32 %1, %2
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !61
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

; Function Attrs: optsize
declare hidden void @luaK_checkstack(%struct.FuncState*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaK_nil(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #7

; Function Attrs: optsize
declare hidden i32 @luaK_exp2anyreg(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaK_ret(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @restassign(%struct.LexState*, %struct.LHS_assign*, i32) unnamed_addr #0 {
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca %struct.LHS_assign, align 8
  %6 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8
  %7 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !103
  %10 = add i32 %9, -8
  %11 = icmp ult i32 %10, 6
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %3
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0)) #10
  unreachable

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %15 = load i32, i32* %14, align 8, !tbaa !63
  %16 = icmp eq i32 %15, 44
  br i1 %16, label %17, label %100

; <label>:17:                                     ; preds = %13
  tail call void @luaX_next(%struct.LexState* nonnull %0) #9
  %18 = bitcast %struct.LHS_assign* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %18) #8
  %19 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 0
  store %struct.LHS_assign* %1, %struct.LHS_assign** %19, align 8, !tbaa !101
  %20 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1
  call fastcc void @suffixedexp(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %20) #11
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %20, i64 0, i32 0
  %22 = load i32, i32* %21, align 8, !tbaa !103
  %23 = add i32 %22, -10
  %24 = icmp ult i32 %23, 4
  br i1 %24, label %92, label %25

; <label>:25:                                     ; preds = %17
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %27 = load %struct.FuncState*, %struct.FuncState** %26, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %27, i64 0, i32 15
  %29 = load i8, i8* %28, align 4, !tbaa !86
  %30 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1, i32 1
  %31 = bitcast %union.anon.7* %30 to i32*
  %32 = zext i8 %29 to i16
  br label %33

; <label>:33:                                     ; preds = %78, %25
  %34 = phi %struct.LHS_assign* [ %1, %25 ], [ %81, %78 ]
  %35 = phi i32 [ 0, %25 ], [ %79, %78 ]
  %36 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %34, i64 0, i32 1, i32 0
  %37 = load i32, i32* %36, align 8, !tbaa !103
  %38 = add i32 %37, -10
  %39 = icmp ult i32 %38, 4
  br i1 %39, label %40, label %78

; <label>:40:                                     ; preds = %33
  %41 = icmp eq i32 %37, 11
  %42 = load i32, i32* %21, align 8, !tbaa !61
  br i1 %41, label %43, label %54

; <label>:43:                                     ; preds = %40
  %44 = icmp eq i32 %42, 9
  br i1 %44, label %45, label %78

; <label>:45:                                     ; preds = %43
  %46 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %34, i64 0, i32 1, i32 1
  %47 = bitcast %union.anon.7* %46 to %struct.anon.8*
  %48 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %47, i64 0, i32 1
  %49 = load i8, i8* %48, align 2, !tbaa !11
  %50 = zext i8 %49 to i32
  %51 = load i32, i32* %31, align 8, !tbaa !11
  %52 = icmp eq i32 %51, %50
  br i1 %52, label %53, label %78

; <label>:53:                                     ; preds = %45
  store i32 13, i32* %36, align 8, !tbaa !103
  store i8 %29, i8* %48, align 2, !tbaa !11
  br label %78

; <label>:54:                                     ; preds = %40
  %55 = icmp eq i32 %42, 8
  br i1 %55, label %56, label %78

; <label>:56:                                     ; preds = %54
  %57 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %34, i64 0, i32 1, i32 1
  %58 = bitcast %union.anon.7* %57 to %struct.anon.8*
  %59 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %58, i64 0, i32 1
  %60 = load i8, i8* %59, align 2, !tbaa !11
  %61 = zext i8 %60 to i32
  %62 = load i32, i32* %31, align 8, !tbaa !11
  %63 = icmp eq i32 %62, %61
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %56
  store i8 %29, i8* %59, align 2, !tbaa !11
  br label %65

; <label>:65:                                     ; preds = %64, %56
  %66 = phi i32 [ 1, %64 ], [ %35, %56 ]
  %67 = icmp ne i32 %37, 10
  %68 = xor i1 %55, true
  %69 = or i1 %67, %68
  br i1 %69, label %78, label %70

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %34, i64 0, i32 1, i32 1
  %72 = bitcast %union.anon.7* %71 to i16*
  %73 = load i16, i16* %72, align 8, !tbaa !11
  %74 = sext i16 %73 to i32
  %75 = load i32, i32* %31, align 8, !tbaa !11
  %76 = icmp eq i32 %75, %74
  br i1 %76, label %77, label %78

; <label>:77:                                     ; preds = %70
  store i16 %32, i16* %72, align 8, !tbaa !11
  br label %78

; <label>:78:                                     ; preds = %54, %65, %77, %70, %53, %45, %43, %33
  %79 = phi i32 [ 1, %53 ], [ %35, %45 ], [ %35, %43 ], [ 1, %77 ], [ %66, %70 ], [ %66, %65 ], [ %35, %33 ], [ %35, %54 ]
  %80 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %34, i64 0, i32 0
  %81 = load %struct.LHS_assign*, %struct.LHS_assign** %80, align 8, !tbaa !101
  %82 = icmp eq %struct.LHS_assign* %81, null
  br i1 %82, label %83, label %33

; <label>:83:                                     ; preds = %78
  %84 = icmp eq i32 %79, 0
  br i1 %84, label %92, label %85

; <label>:85:                                     ; preds = %83
  %86 = zext i8 %29 to i32
  %87 = load i32, i32* %21, align 8, !tbaa !61
  %88 = icmp eq i32 %87, 8
  %89 = select i1 %88, i32 0, i32 7
  %90 = load i32, i32* %31, align 8, !tbaa !11
  %91 = call i32 @luaK_codeABCk(%struct.FuncState* %27, i32 %89, i32 %86, i32 %90, i32 0, i32 0) #9
  call void @luaK_reserveregs(%struct.FuncState* %27, i32 1) #9
  br label %92

; <label>:92:                                     ; preds = %85, %83, %17
  %93 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %94 = load %struct.lua_State*, %struct.lua_State** %93, align 8, !tbaa !66
  call void @luaE_enterCcall(%struct.lua_State* %94) #9
  %95 = add nsw i32 %2, 1
  call fastcc void @restassign(%struct.LexState* %0, %struct.LHS_assign* nonnull %5, i32 %95) #11
  %96 = load %struct.lua_State*, %struct.lua_State** %93, align 8, !tbaa !66
  %97 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %96, i64 0, i32 19
  %98 = load i32, i32* %97, align 8, !tbaa !104
  %99 = add i32 %98, -1
  store i32 %99, i32* %97, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %18) #8
  br label %108

; <label>:100:                                    ; preds = %13
  tail call fastcc void @checknext(%struct.LexState* nonnull %0, i32 61) #11
  %101 = call fastcc i32 @explist(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4) #11
  %102 = icmp eq i32 %101, %2
  br i1 %102, label %104, label %103

; <label>:103:                                    ; preds = %100
  call fastcc void @adjust_assign(%struct.LexState* nonnull %0, i32 %2, i32 %101, %struct.expdesc* nonnull %4) #11
  br label %108

; <label>:104:                                    ; preds = %100
  %105 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %106 = load %struct.FuncState*, %struct.FuncState** %105, align 8, !tbaa !34
  call void @luaK_setoneret(%struct.FuncState* %106, %struct.expdesc* nonnull %4) #9
  %107 = load %struct.FuncState*, %struct.FuncState** %105, align 8, !tbaa !34
  call void @luaK_storevar(%struct.FuncState* %107, %struct.expdesc* nonnull %7, %struct.expdesc* nonnull %4) #9
  br label %120

; <label>:108:                                    ; preds = %103, %92
  %109 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %110 = load %struct.FuncState*, %struct.FuncState** %109, align 8, !tbaa !34
  %111 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %110, i64 0, i32 15
  %112 = load i8, i8* %111, align 4, !tbaa !86
  %113 = zext i8 %112 to i32
  %114 = add nsw i32 %113, -1
  %115 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2
  store i32 -1, i32* %115, align 8, !tbaa !58
  %116 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3
  store i32 -1, i32* %116, align 4, !tbaa !60
  %117 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  store i32 7, i32* %117, align 8, !tbaa !61
  %118 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1
  %119 = bitcast %union.anon.7* %118 to i32*
  store i32 %114, i32* %119, align 8, !tbaa !11
  call void @luaK_storevar(%struct.FuncState* %110, %struct.expdesc* nonnull %7, %struct.expdesc* nonnull %4) #9
  br label %120

; <label>:120:                                    ; preds = %104, %108
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8
  ret void
}

; Function Attrs: optsize
declare hidden void @luaK_setoneret(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaK_finish(%struct.FuncState*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden i8* @luaM_shrinkvector_(%struct.lua_State*, i8*, i32*, i32, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { noreturn nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize readonly }
attributes #13 = { noreturn optsize }

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
!34 = !{!15, !4, i64 48}
!35 = !{!20, !4, i64 8}
!36 = !{!20, !4, i64 16}
!37 = !{!20, !10, i64 32}
!38 = !{!22, !10, i64 44}
!39 = !{!20, !10, i64 40}
!40 = !{!20, !10, i64 36}
!41 = !{!20, !10, i64 44}
!42 = !{!20, !10, i64 52}
!43 = !{!20, !10, i64 48}
!44 = !{!20, !10, i64 56}
!45 = !{!20, !10, i64 60}
!46 = !{!15, !4, i64 96}
!47 = !{!22, !5, i64 12}
!48 = !{!49, !5, i64 18}
!49 = !{!"BlockCnt", !4, i64 0, !10, i64 8, !10, i64 12, !5, i64 16, !5, i64 17, !5, i64 18, !5, i64 19}
!50 = !{!49, !5, i64 16}
!51 = !{!49, !10, i64 8}
!52 = !{!49, !10, i64 12}
!53 = !{!49, !5, i64 17}
!54 = !{!49, !5, i64 19}
!55 = !{!49, !4, i64 0}
!56 = !{!20, !4, i64 24}
!57 = !{!22, !5, i64 11}
!58 = !{!59, !10, i64 16}
!59 = !{!"expdesc", !5, i64 0, !5, i64 8, !10, i64 16, !10, i64 20}
!60 = !{!59, !10, i64 20}
!61 = !{!59, !5, i64 0}
!62 = !{!15, !4, i64 104}
!63 = !{!15, !10, i64 16}
!64 = !{!20, !5, i64 67}
!65 = !{!22, !10, i64 16}
!66 = !{!15, !4, i64 56}
!67 = !{!22, !4, i64 80}
!68 = !{!69, !4, i64 0}
!69 = !{!"Upvaldesc", !4, i64 0, !5, i64 8, !5, i64 9}
!70 = !{!69, !5, i64 8}
!71 = !{!69, !5, i64 9}
!72 = !{!20, !5, i64 66}
!73 = !{!22, !4, i64 64}
!74 = !{!22, !4, i64 88}
!75 = !{!22, !4, i64 96}
!76 = !{!22, !4, i64 56}
!77 = !{!22, !4, i64 72}
!78 = !{!22, !4, i64 104}
!79 = !{!20, !7, i64 64}
!80 = !{!3, !4, i64 24}
!81 = !{!82, !9, i64 24}
!82 = !{!"global_State", !4, i64 0, !4, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !83, i64 48, !13, i64 64, !13, i64 80, !10, i64 96, !5, i64 100, !5, i64 101, !5, i64 102, !5, i64 103, !5, i64 104, !5, i64 105, !5, i64 106, !5, i64 107, !5, i64 108, !5, i64 109, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168, !4, i64 176, !4, i64 184, !4, i64 192, !4, i64 200, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256, !4, i64 264, !5, i64 272, !5, i64 472, !5, i64 544, !4, i64 1392, !4, i64 1400}
!83 = !{!"stringtable", !4, i64 0, !10, i64 8, !10, i64 12}
!84 = !{!15, !10, i64 4}
!85 = !{!10, !10, i64 0}
!86 = !{!20, !5, i64 68}
!87 = !{!4, !4, i64 0}
!88 = !{!20, !5, i64 70}
!89 = !{!29, !4, i64 0}
!90 = !{!91, !7, i64 0}
!91 = !{!"Vardesc", !7, i64 0}
!92 = !{!93, !10, i64 8}
!93 = !{!"LocVar", !4, i64 0, !10, i64 8, !10, i64 12}
!94 = !{!29, !4, i64 32}
!95 = !{!96, !4, i64 0}
!96 = !{!"Labeldesc", !4, i64 0, !10, i64 8, !10, i64 12, !5, i64 16, !5, i64 17}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{!96, !10, i64 12}
!99 = !{!96, !5, i64 16}
!100 = !{!96, !10, i64 8}
!101 = !{!102, !4, i64 0}
!102 = !{!"LHS_assign", !4, i64 0, !59, i64 8}
!103 = !{!102, !5, i64 8}
!104 = !{!3, !10, i64 176}
!105 = !{!93, !10, i64 12}
!106 = !{!31, !10, i64 8}
!107 = !{!31, !4, i64 0}
!108 = !{!96, !5, i64 17}
!109 = !{!29, !4, i64 16}
!110 = !{!111, !5, i64 0}
!111 = !{!"", !5, i64 0, !5, i64 1}
!112 = !{!111, !5, i64 1}
!113 = !{!114, !10, i64 40}
!114 = !{!"ConsControl", !59, i64 0, !4, i64 24, !10, i64 32, !10, i64 36, !10, i64 40}
!115 = !{!114, !10, i64 32}
!116 = !{!114, !10, i64 36}
!117 = !{!114, !4, i64 24}
!118 = !{!114, !5, i64 0}
!119 = !{!22, !10, i64 32}
!120 = !{!22, !5, i64 10}
!121 = !{!22, !10, i64 48}
!122 = !{i64 0, i64 4, !11, i64 8, i64 8, !123, i64 8, i64 8, !125, i64 8, i64 4, !85, i64 8, i64 2, !127, i64 10, i64 1, !11, i64 16, i64 4, !85, i64 20, i64 4, !85}
!123 = !{!124, !124, i64 0}
!124 = !{!"long long", !5, i64 0}
!125 = !{!126, !126, i64 0}
!126 = !{!"double", !5, i64 0}
!127 = !{!7, !7, i64 0}
!128 = !{!22, !10, i64 36}
!129 = !{!93, !4, i64 0}
!130 = !{!"branch_weights", i32 1, i32 2000}
!131 = !{i64 0, i64 8, !87, i64 8, i64 4, !85, i64 12, i64 4, !85, i64 16, i64 1, !11, i64 17, i64 1, !11}
