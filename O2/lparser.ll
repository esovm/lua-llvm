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

; Function Attrs: nounwind uwtable
define hidden %struct.LClosure* @luaY_parser(%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Dyndata*, i8*, i32) local_unnamed_addr #0 {
  %7 = alloca %struct.BlockCnt, align 8
  %8 = alloca %struct.expdesc, align 8
  %9 = alloca %struct.LexState, align 8
  %10 = alloca %struct.FuncState, align 8
  %11 = bitcast %struct.LexState* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #7
  %12 = bitcast %struct.FuncState* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %12) #7
  %13 = tail call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %0, i32 1) #7
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %15 = bitcast %union.StackValue** %14 to %struct.TValue**
  %16 = load %struct.TValue*, %struct.TValue** %15, align 8, !tbaa !2
  %17 = bitcast %struct.TValue* %16 to %struct.LClosure**
  store %struct.LClosure* %13, %struct.LClosure** %17, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i64 0, i32 1
  store i8 86, i8* %18, align 8, !tbaa !12
  tail call void @luaD_inctop(%struct.lua_State* %0) #7
  %19 = tail call %struct.Table* @luaH_new(%struct.lua_State* %0) #7
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i64 0, i32 9
  store %struct.Table* %19, %struct.Table** %20, align 8, !tbaa !14
  %21 = load %struct.TValue*, %struct.TValue** %15, align 8, !tbaa !2
  %22 = bitcast %struct.TValue* %21 to %struct.Table**
  store %struct.Table* %19, %struct.Table** %22, align 8, !tbaa !11
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %21, i64 0, i32 1
  store i8 69, i8* %23, align 8, !tbaa !12
  tail call void @luaD_inctop(%struct.lua_State* %0) #7
  %24 = tail call %struct.Proto* @luaF_newproto(%struct.lua_State* %0) #7
  %25 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %13, i64 0, i32 5
  store %struct.Proto* %24, %struct.Proto** %25, align 8, !tbaa !17
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 0
  store %struct.Proto* %24, %struct.Proto** %26, align 8, !tbaa !19
  %27 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* %4) #7
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
  tail call void @luaC_barrier_(%struct.lua_State* nonnull %0, %struct.GCObject* %39, %struct.GCObject* %40) #7
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
  call void @luaX_setinput(%struct.lua_State* nonnull %0, %struct.LexState* nonnull %9, %struct.Zio* %1, %struct.TString* %43, i32 %5) #7
  %49 = bitcast %struct.BlockCnt* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %49) #7
  %50 = bitcast %struct.expdesc* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %50) #7
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
  call void @llvm.memset.p0i8.i64(i8* nonnull %66, i8 0, i64 7, i32 8, i1 false) #7
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
  %90 = call i32 @luaK_codeABCk(%struct.FuncState* nonnull %10, i32 82, i32 0, i32 0, i32 0, i32 0) #7
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
  %98 = call fastcc i32 @newupvalue(%struct.FuncState* nonnull %10, %struct.TString* %97, %struct.expdesc* nonnull %8) #7
  call void @luaX_next(%struct.LexState* nonnull %9) #7
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
  call fastcc void @statement(%struct.LexState* nonnull %9) #7
  br i1 %103, label %104, label %100

; <label>:104:                                    ; preds = %102
  %105 = load i32, i32* %99, align 8, !tbaa !63
  br label %106

; <label>:106:                                    ; preds = %100, %100, %100, %100, %100, %104
  %107 = phi i32 [ %105, %104 ], [ %101, %100 ], [ %101, %100 ], [ %101, %100 ], [ %101, %100 ], [ %101, %100 ]
  %108 = icmp eq i32 %107, 289
  br i1 %108, label %110, label %109

; <label>:109:                                    ; preds = %106
  call fastcc void @error_expected(%struct.LexState* nonnull %9, i32 289) #8
  unreachable

; <label>:110:                                    ; preds = %106
  call fastcc void @close_func(%struct.LexState* nonnull %9) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %50) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %49) #7
  %111 = load %union.StackValue*, %union.StackValue** %14, align 8, !tbaa !2
  %112 = getelementptr inbounds %union.StackValue, %union.StackValue* %111, i64 -1
  store %union.StackValue* %112, %union.StackValue** %14, align 8, !tbaa !2
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %12) #7
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #7
  ret %struct.LClosure* %13
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
define internal fastcc i32 @newupvalue(%struct.FuncState* nocapture, %struct.TString*, %struct.expdesc* nocapture readonly) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %5 = load %struct.Proto*, %struct.Proto** %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 6
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14
  %8 = load i8, i8* %7, align 1, !tbaa !64
  %9 = icmp eq i8 %8, -1
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call fastcc void @errorlimit(%struct.FuncState* nonnull %0, i32 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #8
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
  %21 = tail call i8* @luaM_growaux_(%struct.lua_State* %17, i8* %20, i32 %12, i32* nonnull %6, i32 16, i32 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #7
  store i8* %21, i8** %19, align 8, !tbaa !67
  %22 = load i32, i32* %6, align 8, !tbaa !65
  %23 = icmp slt i32 %13, %22
  %24 = bitcast i8* %21 to %struct.Upvaldesc*
  br i1 %23, label %25, label %56

; <label>:25:                                     ; preds = %11
  %26 = sext i32 %13 to i64
  %27 = sext i32 %22 to i64
  %28 = sub nsw i64 %27, %26
  %29 = add nsw i64 %27, -1
  %30 = sub nsw i64 %29, %26
  %31 = and i64 %28, 3
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %41, label %33

; <label>:33:                                     ; preds = %25
  br label %34

; <label>:34:                                     ; preds = %34, %33
  %35 = phi i64 [ %26, %33 ], [ %37, %34 ]
  %36 = phi i64 [ %31, %33 ], [ %39, %34 ]
  %37 = add nsw i64 %35, 1
  %38 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %24, i64 %35, i32 0
  store %struct.TString* null, %struct.TString** %38, align 8, !tbaa !68
  %39 = add i64 %36, -1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %34, !llvm.loop !70

; <label>:41:                                     ; preds = %34, %25
  %42 = phi i64 [ %26, %25 ], [ %37, %34 ]
  %43 = icmp ult i64 %30, 3
  br i1 %43, label %56, label %44

; <label>:44:                                     ; preds = %41
  br label %45

; <label>:45:                                     ; preds = %45, %44
  %46 = phi i64 [ %42, %44 ], [ %53, %45 ]
  %47 = add nsw i64 %46, 1
  %48 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %24, i64 %46, i32 0
  store %struct.TString* null, %struct.TString** %48, align 8, !tbaa !68
  %49 = add nsw i64 %46, 2
  %50 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %24, i64 %47, i32 0
  store %struct.TString* null, %struct.TString** %50, align 8, !tbaa !68
  %51 = add nsw i64 %46, 3
  %52 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %24, i64 %49, i32 0
  store %struct.TString* null, %struct.TString** %52, align 8, !tbaa !68
  %53 = add nsw i64 %46, 4
  %54 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %24, i64 %51, i32 0
  store %struct.TString* null, %struct.TString** %54, align 8, !tbaa !68
  %55 = icmp slt i64 %53, %27
  br i1 %55, label %45, label %56

; <label>:56:                                     ; preds = %41, %45, %11
  %57 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %58 = load i32, i32* %57, align 8, !tbaa !61
  %59 = icmp eq i32 %58, 8
  %60 = zext i1 %59 to i8
  %61 = load i8, i8* %7, align 1, !tbaa !64
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %24, i64 %62, i32 1
  store i8 %60, i8* %63, align 8, !tbaa !72
  %64 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %65 = bitcast %union.anon.7* %64 to i32*
  %66 = load i32, i32* %65, align 8, !tbaa !11
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %24, i64 %62, i32 2
  store i8 %67, i8* %68, align 1, !tbaa !73
  %69 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %24, i64 %62, i32 0
  store %struct.TString* %1, %struct.TString** %69, align 8, !tbaa !68
  %70 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 2
  %71 = load i8, i8* %70, align 1, !tbaa !23
  %72 = and i8 %71, 32
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %86, label %74

; <label>:74:                                     ; preds = %56
  %75 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 2
  %76 = load i8, i8* %75, align 1, !tbaa !24
  %77 = and i8 %76, 24
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %86, label %79

; <label>:79:                                     ; preds = %74
  %80 = load %struct.LexState*, %struct.LexState** %14, align 8, !tbaa !36
  %81 = getelementptr inbounds %struct.LexState, %struct.LexState* %80, i64 0, i32 6
  %82 = load %struct.lua_State*, %struct.lua_State** %81, align 8, !tbaa !66
  %83 = bitcast %struct.Proto* %5 to %struct.GCObject*
  %84 = bitcast %struct.TString* %1 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* %82, %struct.GCObject* %83, %struct.GCObject* %84) #7
  %85 = load i8, i8* %7, align 1, !tbaa !64
  br label %86

; <label>:86:                                     ; preds = %74, %56, %79
  %87 = phi i8 [ %61, %74 ], [ %61, %56 ], [ %85, %79 ]
  %88 = add i8 %87, 1
  store i8 %88, i8* %7, align 1, !tbaa !64
  %89 = zext i8 %87 to i32
  ret i32 %89
}

declare hidden void @luaX_next(%struct.LexState*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @close_func(%struct.LexState* nocapture) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 13
  %9 = load i8, i8* %8, align 2, !tbaa !74
  %10 = zext i8 %9 to i32
  tail call void @luaK_ret(%struct.FuncState* %5, i32 %10, i32 0) #7
  tail call fastcc void @leaveblock(%struct.FuncState* %5)
  tail call void @luaK_finish(%struct.FuncState* %5) #7
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 16
  %12 = bitcast i32** %11 to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 8
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 4
  %16 = load i32, i32* %15, align 8, !tbaa !37
  %17 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %13, i32* nonnull %14, i32 %16, i32 4) #7
  store i8* %17, i8** %12, align 8, !tbaa !75
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 19
  %19 = load i8*, i8** %18, align 8, !tbaa !76
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 9
  %21 = load i32, i32* %15, align 8, !tbaa !37
  %22 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %19, i32* nonnull %20, i32 %21, i32 1) #7
  store i8* %22, i8** %18, align 8, !tbaa !76
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 20
  %24 = bitcast %struct.AbsLineInfo** %23 to i8**
  %25 = load i8*, i8** %24, align 8, !tbaa !77
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 12
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 9
  %28 = load i32, i32* %27, align 4, !tbaa !42
  %29 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %25, i32* nonnull %26, i32 %28, i32 8) #7
  store i8* %29, i8** %24, align 8, !tbaa !77
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 15
  %31 = bitcast %struct.TValue** %30 to i8**
  %32 = load i8*, i8** %31, align 8, !tbaa !78
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 7
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 7
  %35 = load i32, i32* %34, align 4, !tbaa !41
  %36 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %32, i32* nonnull %33, i32 %35, i32 16) #7
  store i8* %36, i8** %31, align 8, !tbaa !78
  %37 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 17
  %38 = bitcast %struct.Proto*** %37 to i8**
  %39 = load i8*, i8** %38, align 8, !tbaa !79
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 10
  %41 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 8
  %42 = load i32, i32* %41, align 8, !tbaa !43
  %43 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %39, i32* nonnull %40, i32 %42, i32 8) #7
  store i8* %43, i8** %38, align 8, !tbaa !79
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 21
  %45 = bitcast %struct.LocVar** %44 to i8**
  %46 = load i8*, i8** %45, align 8, !tbaa !80
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 11
  %48 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 12
  %49 = load i16, i16* %48, align 8, !tbaa !81
  %50 = sext i16 %49 to i32
  %51 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %46, i32* nonnull %47, i32 %50, i32 16) #7
  store i8* %51, i8** %45, align 8, !tbaa !80
  %52 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 18
  %53 = bitcast %struct.Upvaldesc** %52 to i8**
  %54 = load i8*, i8** %53, align 8, !tbaa !67
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 6
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 14
  %57 = load i8, i8* %56, align 1, !tbaa !64
  %58 = zext i8 %57 to i32
  %59 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %54, i32* nonnull %55, i32 %58, i32 16) #7
  store i8* %59, i8** %53, align 8, !tbaa !67
  %60 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 1
  %61 = bitcast %struct.FuncState** %60 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !35
  %63 = bitcast %struct.FuncState** %4 to i64*
  store i64 %62, i64* %63, align 8, !tbaa !34
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i64 0, i32 7
  %65 = load %struct.global_State*, %struct.global_State** %64, align 8, !tbaa !82
  %66 = getelementptr inbounds %struct.global_State, %struct.global_State* %65, i64 0, i32 3
  %67 = load i64, i64* %66, align 8, !tbaa !83
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %1
  tail call void @luaC_step(%struct.lua_State* %3) #7
  br label %70

; <label>:70:                                     ; preds = %69, %1
  ret void
}

declare hidden i32 @luaK_codeABCk(%struct.FuncState*, i32, i32, i32, i32, i32) local_unnamed_addr #2

declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32, i32*, i32, i32, i8*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
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
  %14 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %11) #7
  br label %15

; <label>:15:                                     ; preds = %3, %13
  %16 = phi i8* [ %14, %13 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %3 ]
  %17 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %2, i32 %1, i8* %16) #7
  %18 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !36
  tail call void @luaX_syntaxerror(%struct.LexState* %18, i8* %17) #8
  unreachable
}

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noreturn
declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
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
  %12 = alloca %struct.expdesc, align 8
  %13 = alloca %struct.BlockCnt, align 8
  %14 = alloca %struct.BlockCnt, align 8
  %15 = alloca %struct.expdesc, align 8
  %16 = alloca %struct.BlockCnt, align 8
  %17 = alloca %struct.BlockCnt, align 8
  %18 = alloca %struct.expdesc, align 8
  %19 = alloca %struct.BlockCnt, align 8
  %20 = alloca %struct.BlockCnt, align 8
  %21 = alloca %struct.BlockCnt, align 8
  %22 = alloca i32, align 4
  %23 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %24 = load i32, i32* %23, align 4, !tbaa !86
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %26 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !tbaa !66
  tail call void @luaE_enterCcall(%struct.lua_State* %26) #7
  %27 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %28 = load i32, i32* %27, align 8, !tbaa !63
  switch i32 %28, label %930 [
    i32 59, label %29
    i32 267, label %31
    i32 278, label %76
    i32 259, label %159
    i32 264, label %196
    i32 273, label %410
    i32 265, label %477
    i32 269, label %489
    i32 288, label %717
    i32 274, label %770
    i32 258, label %832
    i32 266, label %860
  ]

; <label>:29:                                     ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %30 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %957

; <label>:31:                                     ; preds = %1
  %32 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %33 = load %struct.FuncState*, %struct.FuncState** %32, align 8, !tbaa !34
  %34 = bitcast i32* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %34) #7
  store i32 -1, i32* %22, align 4, !tbaa !87
  call fastcc void @test_then_block(%struct.LexState* nonnull %0, i32* nonnull %22) #7
  br label %35

; <label>:35:                                     ; preds = %37, %31
  %36 = load i32, i32* %27, align 8, !tbaa !63
  switch i32 %36, label %74 [
    i32 261, label %37
    i32 260, label %38
  ]

; <label>:37:                                     ; preds = %35
  call fastcc void @test_then_block(%struct.LexState* nonnull %0, i32* nonnull %22) #7
  br label %35

; <label>:38:                                     ; preds = %35
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %39 = load %struct.FuncState*, %struct.FuncState** %32, align 8, !tbaa !34
  %40 = bitcast %struct.BlockCnt* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %40) #7
  %41 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %21, i64 0, i32 5
  store i8 0, i8* %41, align 2, !tbaa !48
  %42 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %39, i64 0, i32 13
  %43 = load i8, i8* %42, align 2, !tbaa !74
  %44 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %21, i64 0, i32 3
  store i8 %43, i8* %44, align 8, !tbaa !50
  %45 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %39, i64 0, i32 2
  %46 = load %struct.LexState*, %struct.LexState** %45, align 8, !tbaa !36
  %47 = getelementptr inbounds %struct.LexState, %struct.LexState* %46, i64 0, i32 10
  %48 = load %struct.Dyndata*, %struct.Dyndata** %47, align 8, !tbaa !27
  %49 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %48, i64 0, i32 2, i32 1
  %50 = load i32, i32* %49, align 8, !tbaa !28
  %51 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %21, i64 0, i32 1
  store i32 %50, i32* %51, align 8, !tbaa !51
  %52 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %48, i64 0, i32 1, i32 1
  %53 = load i32, i32* %52, align 8, !tbaa !32
  %54 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %21, i64 0, i32 2
  store i32 %53, i32* %54, align 4, !tbaa !52
  %55 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %21, i64 0, i32 4
  store i8 0, i8* %55, align 1, !tbaa !53
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %39, i64 0, i32 3
  %57 = load %struct.BlockCnt*, %struct.BlockCnt** %56, align 8, !tbaa !56
  %58 = icmp eq %struct.BlockCnt* %57, null
  %59 = ptrtoint %struct.BlockCnt* %57 to i64
  br i1 %58, label %65, label %60

; <label>:60:                                     ; preds = %38
  %61 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %57, i64 0, i32 6
  %62 = load i8, i8* %61, align 1, !tbaa !54
  %63 = icmp ne i8 %62, 0
  %64 = zext i1 %63 to i8
  br label %65

; <label>:65:                                     ; preds = %60, %38
  %66 = phi i8 [ 0, %38 ], [ %64, %60 ]
  %67 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %21, i64 0, i32 6
  store i8 %66, i8* %67, align 1, !tbaa !54
  %68 = bitcast %struct.BlockCnt* %21 to i64*
  store i64 %59, i64* %68, align 8, !tbaa !55
  store %struct.BlockCnt* %21, %struct.BlockCnt** %56, align 8, !tbaa !56
  br label %69

; <label>:69:                                     ; preds = %71, %65
  %70 = load i32, i32* %27, align 8, !tbaa !63
  switch i32 %70, label %71 [
    i32 260, label %73
    i32 261, label %73
    i32 262, label %73
    i32 289, label %73
    i32 277, label %73
  ]

; <label>:71:                                     ; preds = %69
  %72 = icmp eq i32 %70, 274
  call fastcc void @statement(%struct.LexState* nonnull %0) #7
  br i1 %72, label %73, label %69

; <label>:73:                                     ; preds = %69, %69, %69, %69, %69, %71
  call fastcc void @leaveblock(%struct.FuncState* %39) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %40) #7
  br label %74

; <label>:74:                                     ; preds = %35, %73
  call fastcc void @check_match(%struct.LexState* %0, i32 262, i32 267, i32 %24) #7
  %75 = load i32, i32* %22, align 4, !tbaa !87
  call void @luaK_patchtohere(%struct.FuncState* %33, i32 %75) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %34) #7
  br label %957

; <label>:76:                                     ; preds = %1
  %77 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %78 = load %struct.FuncState*, %struct.FuncState** %77, align 8, !tbaa !34
  %79 = bitcast %struct.BlockCnt* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %79) #7
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %80 = tail call i32 @luaK_getlabel(%struct.FuncState* %78) #7
  %81 = bitcast %struct.expdesc* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %81) #7
  %82 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %18, i32 0) #7
  %83 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %18, i64 0, i32 0
  %84 = load i32, i32* %83, align 8, !tbaa !61
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %76
  store i32 3, i32* %83, align 8, !tbaa !61
  br label %87

; <label>:87:                                     ; preds = %86, %76
  %88 = load %struct.FuncState*, %struct.FuncState** %77, align 8, !tbaa !34
  call void @luaK_goiftrue(%struct.FuncState* %88, %struct.expdesc* nonnull %18) #7
  %89 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %18, i64 0, i32 3
  %90 = load i32, i32* %89, align 4, !tbaa !60
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %81) #7
  %91 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 5
  store i8 1, i8* %91, align 2, !tbaa !48
  %92 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %78, i64 0, i32 13
  %93 = load i8, i8* %92, align 2, !tbaa !74
  %94 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 3
  store i8 %93, i8* %94, align 8, !tbaa !50
  %95 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %78, i64 0, i32 2
  %96 = load %struct.LexState*, %struct.LexState** %95, align 8, !tbaa !36
  %97 = getelementptr inbounds %struct.LexState, %struct.LexState* %96, i64 0, i32 10
  %98 = load %struct.Dyndata*, %struct.Dyndata** %97, align 8, !tbaa !27
  %99 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %98, i64 0, i32 2, i32 1
  %100 = load i32, i32* %99, align 8, !tbaa !28
  %101 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 1
  store i32 %100, i32* %101, align 8, !tbaa !51
  %102 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %98, i64 0, i32 1, i32 1
  %103 = load i32, i32* %102, align 8, !tbaa !32
  %104 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 2
  store i32 %103, i32* %104, align 4, !tbaa !52
  %105 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 4
  store i8 0, i8* %105, align 1, !tbaa !53
  %106 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %78, i64 0, i32 3
  %107 = load %struct.BlockCnt*, %struct.BlockCnt** %106, align 8, !tbaa !56
  %108 = icmp eq %struct.BlockCnt* %107, null
  %109 = ptrtoint %struct.BlockCnt* %107 to i64
  br i1 %108, label %115, label %110

; <label>:110:                                    ; preds = %87
  %111 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %107, i64 0, i32 6
  %112 = load i8, i8* %111, align 1, !tbaa !54
  %113 = icmp ne i8 %112, 0
  %114 = zext i1 %113 to i8
  br label %115

; <label>:115:                                    ; preds = %110, %87
  %116 = phi i8 [ 0, %87 ], [ %114, %110 ]
  %117 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 6
  store i8 %116, i8* %117, align 1, !tbaa !54
  %118 = bitcast %struct.BlockCnt* %20 to i64*
  store i64 %109, i64* %118, align 8, !tbaa !55
  store %struct.BlockCnt* %20, %struct.BlockCnt** %106, align 8, !tbaa !56
  %119 = load i32, i32* %27, align 8, !tbaa !63
  %120 = icmp eq i32 %119, 259
  br i1 %120, label %122, label %121

; <label>:121:                                    ; preds = %115
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 259) #8
  unreachable

; <label>:122:                                    ; preds = %115
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %123 = load %struct.FuncState*, %struct.FuncState** %77, align 8, !tbaa !34
  %124 = bitcast %struct.BlockCnt* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %124) #7
  %125 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %19, i64 0, i32 5
  store i8 0, i8* %125, align 2, !tbaa !48
  %126 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %123, i64 0, i32 13
  %127 = load i8, i8* %126, align 2, !tbaa !74
  %128 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %19, i64 0, i32 3
  store i8 %127, i8* %128, align 8, !tbaa !50
  %129 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %123, i64 0, i32 2
  %130 = load %struct.LexState*, %struct.LexState** %129, align 8, !tbaa !36
  %131 = getelementptr inbounds %struct.LexState, %struct.LexState* %130, i64 0, i32 10
  %132 = load %struct.Dyndata*, %struct.Dyndata** %131, align 8, !tbaa !27
  %133 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %132, i64 0, i32 2, i32 1
  %134 = load i32, i32* %133, align 8, !tbaa !28
  %135 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %19, i64 0, i32 1
  store i32 %134, i32* %135, align 8, !tbaa !51
  %136 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %132, i64 0, i32 1, i32 1
  %137 = load i32, i32* %136, align 8, !tbaa !32
  %138 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %19, i64 0, i32 2
  store i32 %137, i32* %138, align 4, !tbaa !52
  %139 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %19, i64 0, i32 4
  store i8 0, i8* %139, align 1, !tbaa !53
  %140 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %123, i64 0, i32 3
  %141 = load %struct.BlockCnt*, %struct.BlockCnt** %140, align 8, !tbaa !56
  %142 = icmp eq %struct.BlockCnt* %141, null
  %143 = ptrtoint %struct.BlockCnt* %141 to i64
  br i1 %142, label %149, label %144

; <label>:144:                                    ; preds = %122
  %145 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %141, i64 0, i32 6
  %146 = load i8, i8* %145, align 1, !tbaa !54
  %147 = icmp ne i8 %146, 0
  %148 = zext i1 %147 to i8
  br label %149

; <label>:149:                                    ; preds = %144, %122
  %150 = phi i8 [ 0, %122 ], [ %148, %144 ]
  %151 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %19, i64 0, i32 6
  store i8 %150, i8* %151, align 1, !tbaa !54
  %152 = bitcast %struct.BlockCnt* %19 to i64*
  store i64 %143, i64* %152, align 8, !tbaa !55
  store %struct.BlockCnt* %19, %struct.BlockCnt** %140, align 8, !tbaa !56
  br label %153

; <label>:153:                                    ; preds = %155, %149
  %154 = load i32, i32* %27, align 8, !tbaa !63
  switch i32 %154, label %155 [
    i32 260, label %157
    i32 261, label %157
    i32 262, label %157
    i32 289, label %157
    i32 277, label %157
  ]

; <label>:155:                                    ; preds = %153
  %156 = icmp eq i32 %154, 274
  call fastcc void @statement(%struct.LexState* nonnull %0) #7
  br i1 %156, label %157, label %153

; <label>:157:                                    ; preds = %153, %153, %153, %153, %153, %155
  call fastcc void @leaveblock(%struct.FuncState* %123) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %124) #7
  %158 = call i32 @luaK_jump(%struct.FuncState* %78) #7
  call void @luaK_patchlist(%struct.FuncState* %78, i32 %158, i32 %80) #7
  call fastcc void @check_match(%struct.LexState* %0, i32 262, i32 278, i32 %24) #7
  call fastcc void @leaveblock(%struct.FuncState* %78) #7
  call void @luaK_patchtohere(%struct.FuncState* %78, i32 %90) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %79) #7
  br label %957

; <label>:159:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %160 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %161 = load %struct.FuncState*, %struct.FuncState** %160, align 8, !tbaa !34
  %162 = bitcast %struct.BlockCnt* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %162) #7
  %163 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %17, i64 0, i32 5
  store i8 0, i8* %163, align 2, !tbaa !48
  %164 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %161, i64 0, i32 13
  %165 = load i8, i8* %164, align 2, !tbaa !74
  %166 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %17, i64 0, i32 3
  store i8 %165, i8* %166, align 8, !tbaa !50
  %167 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %161, i64 0, i32 2
  %168 = load %struct.LexState*, %struct.LexState** %167, align 8, !tbaa !36
  %169 = getelementptr inbounds %struct.LexState, %struct.LexState* %168, i64 0, i32 10
  %170 = load %struct.Dyndata*, %struct.Dyndata** %169, align 8, !tbaa !27
  %171 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %170, i64 0, i32 2, i32 1
  %172 = load i32, i32* %171, align 8, !tbaa !28
  %173 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %17, i64 0, i32 1
  store i32 %172, i32* %173, align 8, !tbaa !51
  %174 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %170, i64 0, i32 1, i32 1
  %175 = load i32, i32* %174, align 8, !tbaa !32
  %176 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %17, i64 0, i32 2
  store i32 %175, i32* %176, align 4, !tbaa !52
  %177 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %17, i64 0, i32 4
  store i8 0, i8* %177, align 1, !tbaa !53
  %178 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %161, i64 0, i32 3
  %179 = load %struct.BlockCnt*, %struct.BlockCnt** %178, align 8, !tbaa !56
  %180 = icmp eq %struct.BlockCnt* %179, null
  %181 = ptrtoint %struct.BlockCnt* %179 to i64
  br i1 %180, label %187, label %182

; <label>:182:                                    ; preds = %159
  %183 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %179, i64 0, i32 6
  %184 = load i8, i8* %183, align 1, !tbaa !54
  %185 = icmp ne i8 %184, 0
  %186 = zext i1 %185 to i8
  br label %187

; <label>:187:                                    ; preds = %182, %159
  %188 = phi i8 [ 0, %159 ], [ %186, %182 ]
  %189 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %17, i64 0, i32 6
  store i8 %188, i8* %189, align 1, !tbaa !54
  %190 = bitcast %struct.BlockCnt* %17 to i64*
  store i64 %181, i64* %190, align 8, !tbaa !55
  store %struct.BlockCnt* %17, %struct.BlockCnt** %178, align 8, !tbaa !56
  br label %191

; <label>:191:                                    ; preds = %193, %187
  %192 = load i32, i32* %27, align 8, !tbaa !63
  switch i32 %192, label %193 [
    i32 260, label %195
    i32 261, label %195
    i32 262, label %195
    i32 289, label %195
    i32 277, label %195
  ]

; <label>:193:                                    ; preds = %191
  %194 = icmp eq i32 %192, 274
  call fastcc void @statement(%struct.LexState* nonnull %0) #7
  br i1 %194, label %195, label %191

; <label>:195:                                    ; preds = %191, %191, %191, %191, %191, %193
  call fastcc void @leaveblock(%struct.FuncState* %161) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %162) #7
  call fastcc void @check_match(%struct.LexState* %0, i32 262, i32 259, i32 %24)
  br label %957

; <label>:196:                                    ; preds = %1
  %197 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %198 = load %struct.FuncState*, %struct.FuncState** %197, align 8, !tbaa !34
  %199 = bitcast %struct.BlockCnt* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %199) #7
  %200 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 5
  store i8 1, i8* %200, align 2, !tbaa !48
  %201 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %198, i64 0, i32 13
  %202 = load i8, i8* %201, align 2, !tbaa !74
  %203 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 3
  store i8 %202, i8* %203, align 8, !tbaa !50
  %204 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %198, i64 0, i32 2
  %205 = load %struct.LexState*, %struct.LexState** %204, align 8, !tbaa !36
  %206 = getelementptr inbounds %struct.LexState, %struct.LexState* %205, i64 0, i32 10
  %207 = load %struct.Dyndata*, %struct.Dyndata** %206, align 8, !tbaa !27
  %208 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %207, i64 0, i32 2, i32 1
  %209 = load i32, i32* %208, align 8, !tbaa !28
  %210 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 1
  store i32 %209, i32* %210, align 8, !tbaa !51
  %211 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %207, i64 0, i32 1, i32 1
  %212 = load i32, i32* %211, align 8, !tbaa !32
  %213 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 2
  store i32 %212, i32* %213, align 4, !tbaa !52
  %214 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 4
  store i8 0, i8* %214, align 1, !tbaa !53
  %215 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %198, i64 0, i32 3
  %216 = load %struct.BlockCnt*, %struct.BlockCnt** %215, align 8, !tbaa !56
  %217 = icmp eq %struct.BlockCnt* %216, null
  %218 = ptrtoint %struct.BlockCnt* %216 to i64
  br i1 %217, label %224, label %219

; <label>:219:                                    ; preds = %196
  %220 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %216, i64 0, i32 6
  %221 = load i8, i8* %220, align 1, !tbaa !54
  %222 = icmp ne i8 %221, 0
  %223 = zext i1 %222 to i8
  br label %224

; <label>:224:                                    ; preds = %219, %196
  %225 = phi i8 [ 0, %196 ], [ %223, %219 ]
  %226 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 6
  store i8 %225, i8* %226, align 1, !tbaa !54
  %227 = bitcast %struct.BlockCnt* %16 to i64*
  store i64 %218, i64* %227, align 8, !tbaa !55
  store %struct.BlockCnt* %16, %struct.BlockCnt** %215, align 8, !tbaa !56
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %228 = load i32, i32* %27, align 8, !tbaa !63
  %229 = icmp eq i32 %228, 292
  br i1 %229, label %231, label %230

; <label>:230:                                    ; preds = %224
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #8
  unreachable

; <label>:231:                                    ; preds = %224
  %232 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %233 = bitcast %union.SemInfo* %232 to %struct.TString**
  %234 = load %struct.TString*, %struct.TString** %233, align 8, !tbaa !11
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %235 = load i32, i32* %27, align 8, !tbaa !63
  switch i32 %235, label %408 [
    i32 61, label %236
    i32 44, label %306
    i32 268, label %306
  ]

; <label>:236:                                    ; preds = %231
  %237 = load %struct.FuncState*, %struct.FuncState** %197, align 8, !tbaa !34
  %238 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %237, i64 0, i32 15
  %239 = load i8, i8* %238, align 4, !tbaa !88
  %240 = zext i8 %239 to i32
  %241 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i64 11) #7
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %241) #7
  %242 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i64 11) #7
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %242) #7
  %243 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i64 10) #7
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %243) #7
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %234) #7
  %244 = load i32, i32* %27, align 8, !tbaa !63
  %245 = icmp eq i32 %244, 61
  br i1 %245, label %247, label %246

; <label>:246:                                    ; preds = %236
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 61) #8
  unreachable

; <label>:247:                                    ; preds = %236
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %248 = bitcast %struct.expdesc* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %248) #7
  %249 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %5, i32 0) #7
  %250 = load %struct.FuncState*, %struct.FuncState** %197, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %250, %struct.expdesc* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %248) #7
  %251 = load i32, i32* %27, align 8, !tbaa !63
  %252 = icmp eq i32 %251, 44
  br i1 %252, label %254, label %253

; <label>:253:                                    ; preds = %247
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 44) #8
  unreachable

; <label>:254:                                    ; preds = %247
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %255 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %255) #7
  %256 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #7
  %257 = load %struct.FuncState*, %struct.FuncState** %197, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %257, %struct.expdesc* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %255) #7
  %258 = load i32, i32* %27, align 8, !tbaa !63
  %259 = icmp eq i32 %258, 44
  br i1 %259, label %260, label %264

; <label>:260:                                    ; preds = %254
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %261 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %261) #7
  %262 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3, i32 0) #7
  %263 = load %struct.FuncState*, %struct.FuncState** %197, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %263, %struct.expdesc* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %261) #7
  br label %267

; <label>:264:                                    ; preds = %254
  %265 = load i8, i8* %238, align 4, !tbaa !88
  %266 = zext i8 %265 to i32
  call void @luaK_int(%struct.FuncState* %237, i32 %266, i64 1) #7
  call void @luaK_reserveregs(%struct.FuncState* %237, i32 1) #7
  br label %267

; <label>:267:                                    ; preds = %264, %260
  %268 = load %struct.FuncState*, %struct.FuncState** %197, align 8, !tbaa !34
  %269 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %268, i64 0, i32 13
  %270 = load i8, i8* %269, align 2, !tbaa !74
  %271 = add i8 %270, 3
  store i8 %271, i8* %269, align 2, !tbaa !74
  %272 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %268, i64 0, i32 4
  %273 = load i32, i32* %272, align 8, !tbaa !37
  %274 = zext i8 %271 to i32
  %275 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %268, i64 0, i32 2
  %276 = load %struct.LexState*, %struct.LexState** %275, align 8, !tbaa !36
  %277 = getelementptr inbounds %struct.LexState, %struct.LexState* %276, i64 0, i32 10
  %278 = load %struct.Dyndata*, %struct.Dyndata** %277, align 8, !tbaa !27
  %279 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %278, i64 0, i32 0, i32 0
  %280 = load %struct.Vardesc*, %struct.Vardesc** %279, align 8, !tbaa !89
  %281 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %268, i64 0, i32 10
  %282 = load i32, i32* %281, align 8, !tbaa !44
  %283 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %268, i64 0, i32 0
  %284 = load %struct.Proto*, %struct.Proto** %283, align 8, !tbaa !19
  %285 = getelementptr inbounds %struct.Proto, %struct.Proto* %284, i64 0, i32 21
  %286 = load %struct.LocVar*, %struct.LocVar** %285, align 8, !tbaa !80
  %287 = add i32 %282, %274
  %288 = add i32 %287, -3
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %280, i64 %289, i32 0
  %291 = load i16, i16* %290, align 2, !tbaa !90
  %292 = sext i16 %291 to i64
  %293 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %286, i64 %292, i32 1
  store i32 %273, i32* %293, align 8, !tbaa !92
  %294 = add i32 %287, -2
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %280, i64 %295, i32 0
  %297 = load i16, i16* %296, align 2, !tbaa !90
  %298 = sext i16 %297 to i64
  %299 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %286, i64 %298, i32 1
  store i32 %273, i32* %299, align 8, !tbaa !92
  %300 = add i32 %287, -1
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %280, i64 %301, i32 0
  %303 = load i16, i16* %302, align 2, !tbaa !90
  %304 = sext i16 %303 to i64
  %305 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %286, i64 %304, i32 1
  store i32 %273, i32* %305, align 8, !tbaa !92
  call fastcc void @forbody(%struct.LexState* nonnull %0, i32 %240, i32 %24, i32 1, i32 0) #7
  br label %409

; <label>:306:                                    ; preds = %231, %231
  %307 = load %struct.FuncState*, %struct.FuncState** %197, align 8, !tbaa !34
  %308 = bitcast %struct.expdesc* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %308) #7
  %309 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %307, i64 0, i32 15
  %310 = load i8, i8* %309, align 4, !tbaa !88
  %311 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i64 15) #7
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %311) #7
  %312 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i64 11) #7
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %312) #7
  %313 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %307, i64 0, i32 13
  %314 = load i8, i8* %313, align 2, !tbaa !74
  %315 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %307, i64 0, i32 3
  br label %316

; <label>:316:                                    ; preds = %316, %306
  %317 = phi %struct.BlockCnt** [ %315, %306 ], [ %322, %316 ]
  %318 = load %struct.BlockCnt*, %struct.BlockCnt** %317, align 8, !tbaa !94
  %319 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %318, i64 0, i32 3
  %320 = load i8, i8* %319, align 8, !tbaa !50
  %321 = icmp ugt i8 %320, %314
  %322 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %318, i64 0, i32 0
  br i1 %321, label %316, label %323

; <label>:323:                                    ; preds = %316
  %324 = zext i8 %310 to i32
  %325 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %318, i64 0, i32 4
  store i8 1, i8* %325, align 1, !tbaa !53
  %326 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %307, i64 0, i32 17
  store i8 1, i8* %326, align 2, !tbaa !95
  %327 = call %struct.TString* @luaX_newstring(%struct.LexState* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i64 13) #7
  call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %327) #7
  %328 = call %struct.TString* @luaX_newstring(%struct.LexState* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i64 13) #7
  call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %328) #7
  call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %234) #7
  %329 = load i32, i32* %27, align 8, !tbaa !63
  %330 = icmp eq i32 %329, 44
  br i1 %330, label %331, label %344

; <label>:331:                                    ; preds = %323
  br label %332

; <label>:332:                                    ; preds = %331, %337
  %333 = phi i32 [ %339, %337 ], [ 5, %331 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %334 = load i32, i32* %27, align 8, !tbaa !63
  %335 = icmp eq i32 %334, 292
  br i1 %335, label %337, label %336

; <label>:336:                                    ; preds = %332
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #8
  unreachable

; <label>:337:                                    ; preds = %332
  %338 = load %struct.TString*, %struct.TString** %233, align 8, !tbaa !11
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %338) #7
  %339 = add nuw nsw i32 %333, 1
  %340 = load i32, i32* %27, align 8, !tbaa !63
  %341 = icmp eq i32 %340, 44
  br i1 %341, label %332, label %342

; <label>:342:                                    ; preds = %337
  %343 = add nsw i32 %333, -3
  br label %344

; <label>:344:                                    ; preds = %342, %323
  %345 = phi i32 [ %329, %323 ], [ %340, %342 ]
  %346 = phi i32 [ 1, %323 ], [ %343, %342 ]
  %347 = icmp eq i32 %345, 268
  br i1 %347, label %349, label %348

; <label>:348:                                    ; preds = %344
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 268) #8
  unreachable

; <label>:349:                                    ; preds = %344
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %350 = load i32, i32* %23, align 4, !tbaa !86
  %351 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %15, i32 0) #7
  %352 = load i32, i32* %27, align 8, !tbaa !63
  %353 = icmp eq i32 %352, 44
  br i1 %353, label %354, label %362

; <label>:354:                                    ; preds = %349
  br label %355

; <label>:355:                                    ; preds = %354, %355
  %356 = phi i32 [ %359, %355 ], [ 1, %354 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %357 = load %struct.FuncState*, %struct.FuncState** %197, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %357, %struct.expdesc* nonnull %15) #7
  %358 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %15, i32 0) #7
  %359 = add nuw nsw i32 %356, 1
  %360 = load i32, i32* %27, align 8, !tbaa !63
  %361 = icmp eq i32 %360, 44
  br i1 %361, label %355, label %362

; <label>:362:                                    ; preds = %355, %349
  %363 = phi i32 [ 1, %349 ], [ %359, %355 ]
  call fastcc void @adjust_assign(%struct.LexState* nonnull %0, i32 4, i32 %363, %struct.expdesc* nonnull %15) #7
  %364 = load %struct.FuncState*, %struct.FuncState** %197, align 8, !tbaa !34
  %365 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %364, i64 0, i32 13
  %366 = load i8, i8* %365, align 2, !tbaa !74
  %367 = add i8 %366, 4
  store i8 %367, i8* %365, align 2, !tbaa !74
  %368 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %364, i64 0, i32 4
  %369 = load i32, i32* %368, align 8, !tbaa !37
  %370 = zext i8 %367 to i32
  %371 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %364, i64 0, i32 2
  %372 = load %struct.LexState*, %struct.LexState** %371, align 8, !tbaa !36
  %373 = getelementptr inbounds %struct.LexState, %struct.LexState* %372, i64 0, i32 10
  %374 = load %struct.Dyndata*, %struct.Dyndata** %373, align 8, !tbaa !27
  %375 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %374, i64 0, i32 0, i32 0
  %376 = load %struct.Vardesc*, %struct.Vardesc** %375, align 8, !tbaa !89
  %377 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %364, i64 0, i32 10
  %378 = load i32, i32* %377, align 8, !tbaa !44
  %379 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %364, i64 0, i32 0
  %380 = load %struct.Proto*, %struct.Proto** %379, align 8, !tbaa !19
  %381 = getelementptr inbounds %struct.Proto, %struct.Proto* %380, i64 0, i32 21
  %382 = load %struct.LocVar*, %struct.LocVar** %381, align 8, !tbaa !80
  %383 = add i32 %378, %370
  %384 = add i32 %383, -4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %376, i64 %385, i32 0
  %387 = load i16, i16* %386, align 2, !tbaa !90
  %388 = sext i16 %387 to i64
  %389 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %382, i64 %388, i32 1
  store i32 %369, i32* %389, align 8, !tbaa !92
  %390 = add i32 %383, -3
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %376, i64 %391, i32 0
  %393 = load i16, i16* %392, align 2, !tbaa !90
  %394 = sext i16 %393 to i64
  %395 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %382, i64 %394, i32 1
  store i32 %369, i32* %395, align 8, !tbaa !92
  %396 = add i32 %383, -2
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %376, i64 %397, i32 0
  %399 = load i16, i16* %398, align 2, !tbaa !90
  %400 = sext i16 %399 to i64
  %401 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %382, i64 %400, i32 1
  store i32 %369, i32* %401, align 8, !tbaa !92
  %402 = add i32 %383, -1
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %376, i64 %403, i32 0
  %405 = load i16, i16* %404, align 2, !tbaa !90
  %406 = sext i16 %405 to i64
  %407 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %382, i64 %406, i32 1
  store i32 %369, i32* %407, align 8, !tbaa !92
  call void @luaK_checkstack(%struct.FuncState* %307, i32 3) #7
  call fastcc void @forbody(%struct.LexState* nonnull %0, i32 %324, i32 %350, i32 %346, i32 1) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %308) #7
  br label %409

; <label>:408:                                    ; preds = %231
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0)) #8
  unreachable

; <label>:409:                                    ; preds = %267, %362
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 264, i32 %24) #7
  call fastcc void @leaveblock(%struct.FuncState* %198) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %199) #7
  br label %957

; <label>:410:                                    ; preds = %1
  %411 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %412 = load %struct.FuncState*, %struct.FuncState** %411, align 8, !tbaa !34
  %413 = tail call i32 @luaK_getlabel(%struct.FuncState* %412) #7
  %414 = bitcast %struct.BlockCnt* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %414) #7
  %415 = bitcast %struct.BlockCnt* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %415) #7
  %416 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %13, i64 0, i32 5
  store i8 1, i8* %416, align 2, !tbaa !48
  %417 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %412, i64 0, i32 13
  %418 = load i8, i8* %417, align 2, !tbaa !74
  %419 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %13, i64 0, i32 3
  store i8 %418, i8* %419, align 8, !tbaa !50
  %420 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %412, i64 0, i32 2
  %421 = load %struct.LexState*, %struct.LexState** %420, align 8, !tbaa !36
  %422 = getelementptr inbounds %struct.LexState, %struct.LexState* %421, i64 0, i32 10
  %423 = load %struct.Dyndata*, %struct.Dyndata** %422, align 8, !tbaa !27
  %424 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %423, i64 0, i32 2, i32 1
  %425 = load i32, i32* %424, align 8, !tbaa !28
  %426 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %13, i64 0, i32 1
  store i32 %425, i32* %426, align 8, !tbaa !51
  %427 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %423, i64 0, i32 1, i32 1
  %428 = load i32, i32* %427, align 8, !tbaa !32
  %429 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %13, i64 0, i32 2
  store i32 %428, i32* %429, align 4, !tbaa !52
  %430 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %13, i64 0, i32 4
  store i8 0, i8* %430, align 1, !tbaa !53
  %431 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %412, i64 0, i32 3
  %432 = load %struct.BlockCnt*, %struct.BlockCnt** %431, align 8, !tbaa !56
  %433 = icmp eq %struct.BlockCnt* %432, null
  %434 = ptrtoint %struct.BlockCnt* %432 to i64
  br i1 %433, label %440, label %435

; <label>:435:                                    ; preds = %410
  %436 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %432, i64 0, i32 6
  %437 = load i8, i8* %436, align 1, !tbaa !54
  %438 = icmp ne i8 %437, 0
  %439 = zext i1 %438 to i8
  br label %440

; <label>:440:                                    ; preds = %435, %410
  %441 = phi i8 [ 0, %410 ], [ %439, %435 ]
  %442 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %13, i64 0, i32 6
  store i8 %441, i8* %442, align 1, !tbaa !54
  %443 = bitcast %struct.BlockCnt* %13 to i64*
  store i64 %434, i64* %443, align 8, !tbaa !55
  %444 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %14, i64 0, i32 5
  store i8 0, i8* %444, align 2, !tbaa !48
  %445 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %14, i64 0, i32 3
  store i8 %418, i8* %445, align 8, !tbaa !50
  %446 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %14, i64 0, i32 1
  store i32 %425, i32* %446, align 8, !tbaa !51
  %447 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %14, i64 0, i32 2
  store i32 %428, i32* %447, align 4, !tbaa !52
  %448 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %14, i64 0, i32 4
  store i8 0, i8* %448, align 1, !tbaa !53
  %449 = ptrtoint %struct.BlockCnt* %13 to i64
  %450 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %14, i64 0, i32 6
  store i8 %441, i8* %450, align 1, !tbaa !54
  %451 = bitcast %struct.BlockCnt* %14 to i64*
  store i64 %449, i64* %451, align 8, !tbaa !55
  store %struct.BlockCnt* %14, %struct.BlockCnt** %431, align 8, !tbaa !56
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  br label %452

; <label>:452:                                    ; preds = %454, %440
  %453 = load i32, i32* %27, align 8, !tbaa !63
  switch i32 %453, label %454 [
    i32 260, label %456
    i32 261, label %456
    i32 262, label %456
    i32 289, label %456
    i32 277, label %456
  ]

; <label>:454:                                    ; preds = %452
  %455 = icmp eq i32 %453, 274
  call fastcc void @statement(%struct.LexState* nonnull %0) #7
  br i1 %455, label %456, label %452

; <label>:456:                                    ; preds = %452, %452, %452, %452, %452, %454
  call fastcc void @check_match(%struct.LexState* %0, i32 277, i32 273, i32 %24) #7
  %457 = bitcast %struct.expdesc* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %457) #7
  %458 = call fastcc i32 @subexpr(%struct.LexState* %0, %struct.expdesc* nonnull %12, i32 0) #7
  %459 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i64 0, i32 0
  %460 = load i32, i32* %459, align 8, !tbaa !61
  %461 = icmp eq i32 %460, 1
  br i1 %461, label %462, label %463

; <label>:462:                                    ; preds = %456
  store i32 3, i32* %459, align 8, !tbaa !61
  br label %463

; <label>:463:                                    ; preds = %462, %456
  %464 = load %struct.FuncState*, %struct.FuncState** %411, align 8, !tbaa !34
  call void @luaK_goiftrue(%struct.FuncState* %464, %struct.expdesc* nonnull %12) #7
  %465 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i64 0, i32 3
  %466 = load i32, i32* %465, align 4, !tbaa !60
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %457) #7
  call fastcc void @leaveblock(%struct.FuncState* %412) #7
  %467 = load i8, i8* %448, align 1, !tbaa !53
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %475, label %469

; <label>:469:                                    ; preds = %463
  %470 = call i32 @luaK_jump(%struct.FuncState* %412) #7
  call void @luaK_patchtohere(%struct.FuncState* %412, i32 %466) #7
  %471 = load i8, i8* %445, align 8, !tbaa !50
  %472 = zext i8 %471 to i32
  %473 = call i32 @luaK_codeABCk(%struct.FuncState* %412, i32 55, i32 %472, i32 0, i32 0, i32 0) #7
  %474 = call i32 @luaK_jump(%struct.FuncState* %412) #7
  call void @luaK_patchtohere(%struct.FuncState* %412, i32 %470) #7
  br label %475

; <label>:475:                                    ; preds = %463, %469
  %476 = phi i32 [ %474, %469 ], [ %466, %463 ]
  call void @luaK_patchlist(%struct.FuncState* %412, i32 %476, i32 %413) #7
  call fastcc void @leaveblock(%struct.FuncState* %412) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %415) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %414) #7
  br label %957

; <label>:477:                                    ; preds = %1
  %478 = bitcast %struct.expdesc* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %478) #7
  %479 = bitcast %struct.expdesc* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %479) #7
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  call fastcc void @singlevar(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %10) #7
  br label %480

; <label>:480:                                    ; preds = %482, %477
  %481 = load i32, i32* %27, align 8, !tbaa !63
  switch i32 %481, label %484 [
    i32 46, label %482
    i32 58, label %483
  ]

; <label>:482:                                    ; preds = %480
  call fastcc void @fieldsel(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %10) #7
  br label %480

; <label>:483:                                    ; preds = %480
  call fastcc void @fieldsel(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %10) #7
  br label %484

; <label>:484:                                    ; preds = %480, %483
  %485 = phi i32 [ 1, %483 ], [ 0, %480 ]
  call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %11, i32 %485, i32 %24) #7
  %486 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %487 = load %struct.FuncState*, %struct.FuncState** %486, align 8, !tbaa !34
  call void @luaK_storevar(%struct.FuncState* %487, %struct.expdesc* nonnull %10, %struct.expdesc* nonnull %11) #7
  %488 = load %struct.FuncState*, %struct.FuncState** %486, align 8, !tbaa !34
  call void @luaK_fixline(%struct.FuncState* %488, i32 %24) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %479) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %478) #7
  br label %957

; <label>:489:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %490 = load i32, i32* %27, align 8, !tbaa !63
  switch i32 %490, label %627 [
    i32 265, label %491
    i32 42, label %552
  ]

; <label>:491:                                    ; preds = %489
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %492 = bitcast %struct.expdesc* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %492) #7
  %493 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %494 = load %struct.FuncState*, %struct.FuncState** %493, align 8, !tbaa !34
  %495 = load i32, i32* %27, align 8, !tbaa !63
  %496 = icmp eq i32 %495, 292
  br i1 %496, label %498, label %497

; <label>:497:                                    ; preds = %491
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #8
  unreachable

; <label>:498:                                    ; preds = %491
  %499 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %500 = bitcast %union.SemInfo* %499 to %struct.TString**
  %501 = load %struct.TString*, %struct.TString** %500, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %501) #7
  %502 = load %struct.FuncState*, %struct.FuncState** %493, align 8, !tbaa !34
  %503 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %502, i64 0, i32 13
  %504 = load i8, i8* %503, align 2, !tbaa !74
  %505 = add i8 %504, 1
  store i8 %505, i8* %503, align 2, !tbaa !74
  %506 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %502, i64 0, i32 4
  %507 = load i32, i32* %506, align 8, !tbaa !37
  %508 = zext i8 %505 to i32
  %509 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %502, i64 0, i32 2
  %510 = load %struct.LexState*, %struct.LexState** %509, align 8, !tbaa !36
  %511 = getelementptr inbounds %struct.LexState, %struct.LexState* %510, i64 0, i32 10
  %512 = load %struct.Dyndata*, %struct.Dyndata** %511, align 8, !tbaa !27
  %513 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %512, i64 0, i32 0, i32 0
  %514 = load %struct.Vardesc*, %struct.Vardesc** %513, align 8, !tbaa !89
  %515 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %502, i64 0, i32 10
  %516 = load i32, i32* %515, align 8, !tbaa !44
  %517 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %502, i64 0, i32 0
  %518 = load %struct.Proto*, %struct.Proto** %517, align 8, !tbaa !19
  %519 = getelementptr inbounds %struct.Proto, %struct.Proto* %518, i64 0, i32 21
  %520 = load %struct.LocVar*, %struct.LocVar** %519, align 8, !tbaa !80
  %521 = add i32 %516, %508
  %522 = add i32 %521, -1
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %514, i64 %523, i32 0
  %525 = load i16, i16* %524, align 2, !tbaa !90
  %526 = sext i16 %525 to i64
  %527 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %520, i64 %526, i32 1
  store i32 %507, i32* %527, align 8, !tbaa !92
  %528 = load i32, i32* %23, align 4, !tbaa !86
  call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %9, i32 0, i32 %528) #7
  %529 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %494, i64 0, i32 4
  %530 = load i32, i32* %529, align 8, !tbaa !37
  %531 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %9, i64 0, i32 1
  %532 = bitcast %union.anon.7* %531 to i32*
  %533 = load i32, i32* %532, align 8, !tbaa !11
  %534 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %494, i64 0, i32 2
  %535 = load %struct.LexState*, %struct.LexState** %534, align 8, !tbaa !36
  %536 = getelementptr inbounds %struct.LexState, %struct.LexState* %535, i64 0, i32 10
  %537 = load %struct.Dyndata*, %struct.Dyndata** %536, align 8, !tbaa !27
  %538 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %537, i64 0, i32 0, i32 0
  %539 = load %struct.Vardesc*, %struct.Vardesc** %538, align 8, !tbaa !89
  %540 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %494, i64 0, i32 10
  %541 = load i32, i32* %540, align 8, !tbaa !44
  %542 = add nsw i32 %541, %533
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %539, i64 %543, i32 0
  %545 = load i16, i16* %544, align 2, !tbaa !90
  %546 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %494, i64 0, i32 0
  %547 = load %struct.Proto*, %struct.Proto** %546, align 8, !tbaa !19
  %548 = getelementptr inbounds %struct.Proto, %struct.Proto* %547, i64 0, i32 21
  %549 = load %struct.LocVar*, %struct.LocVar** %548, align 8, !tbaa !80
  %550 = sext i16 %545 to i64
  %551 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %549, i64 %550, i32 1
  store i32 %530, i32* %551, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %492) #7
  br label %957

; <label>:552:                                    ; preds = %489
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %553 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %554 = load %struct.FuncState*, %struct.FuncState** %553, align 8, !tbaa !34
  %555 = load i32, i32* %27, align 8, !tbaa !63
  %556 = icmp eq i32 %555, 292
  br i1 %556, label %558, label %557

; <label>:557:                                    ; preds = %552
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #8
  unreachable

; <label>:558:                                    ; preds = %552
  %559 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %560 = bitcast %union.SemInfo* %559 to %struct.TString**
  %561 = load %struct.TString*, %struct.TString** %560, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %562 = getelementptr inbounds %struct.TString, %struct.TString* %561, i64 1
  %563 = bitcast %struct.TString* %562 to i8*
  %564 = tail call i32 @strcmp(i8* nonnull %563, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)) #9
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %569, label %566

; <label>:566:                                    ; preds = %558
  %567 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !tbaa !66
  %568 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %567, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), %struct.TString* nonnull %562) #7
  tail call void @luaK_semerror(%struct.LexState* nonnull %0, i8* %568) #8
  unreachable

; <label>:569:                                    ; preds = %558
  %570 = load i32, i32* %27, align 8, !tbaa !63
  %571 = icmp eq i32 %570, 292
  br i1 %571, label %573, label %572

; <label>:572:                                    ; preds = %569
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #8
  unreachable

; <label>:573:                                    ; preds = %569
  %574 = load %struct.TString*, %struct.TString** %560, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %574) #7
  %575 = load i32, i32* %27, align 8, !tbaa !63
  %576 = icmp eq i32 %575, 61
  br i1 %576, label %578, label %577

; <label>:577:                                    ; preds = %573
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 61) #8
  unreachable

; <label>:578:                                    ; preds = %573
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %579 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %579) #7
  %580 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %2, i32 0) #7
  %581 = load %struct.FuncState*, %struct.FuncState** %553, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %581, %struct.expdesc* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %579) #7
  %582 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %554, i64 0, i32 13
  %583 = load i8, i8* %582, align 2, !tbaa !74
  %584 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %554, i64 0, i32 3
  br label %585

; <label>:585:                                    ; preds = %585, %578
  %586 = phi %struct.BlockCnt** [ %584, %578 ], [ %591, %585 ]
  %587 = load %struct.BlockCnt*, %struct.BlockCnt** %586, align 8, !tbaa !94
  %588 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %587, i64 0, i32 3
  %589 = load i8, i8* %588, align 8, !tbaa !50
  %590 = icmp ugt i8 %589, %583
  %591 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %587, i64 0, i32 0
  br i1 %590, label %585, label %592

; <label>:592:                                    ; preds = %585
  %593 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %587, i64 0, i32 4
  store i8 1, i8* %593, align 1, !tbaa !53
  %594 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %554, i64 0, i32 17
  store i8 1, i8* %594, align 2, !tbaa !95
  %595 = load %struct.BlockCnt*, %struct.BlockCnt** %584, align 8, !tbaa !56
  %596 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %595, i64 0, i32 6
  store i8 1, i8* %596, align 1, !tbaa !54
  %597 = load %struct.FuncState*, %struct.FuncState** %553, align 8, !tbaa !34
  %598 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %597, i64 0, i32 13
  %599 = load i8, i8* %598, align 2, !tbaa !74
  %600 = add i8 %599, 1
  store i8 %600, i8* %598, align 2, !tbaa !74
  %601 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %597, i64 0, i32 4
  %602 = load i32, i32* %601, align 8, !tbaa !37
  %603 = zext i8 %600 to i32
  %604 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %597, i64 0, i32 2
  %605 = load %struct.LexState*, %struct.LexState** %604, align 8, !tbaa !36
  %606 = getelementptr inbounds %struct.LexState, %struct.LexState* %605, i64 0, i32 10
  %607 = load %struct.Dyndata*, %struct.Dyndata** %606, align 8, !tbaa !27
  %608 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %607, i64 0, i32 0, i32 0
  %609 = load %struct.Vardesc*, %struct.Vardesc** %608, align 8, !tbaa !89
  %610 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %597, i64 0, i32 10
  %611 = load i32, i32* %610, align 8, !tbaa !44
  %612 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %597, i64 0, i32 0
  %613 = load %struct.Proto*, %struct.Proto** %612, align 8, !tbaa !19
  %614 = getelementptr inbounds %struct.Proto, %struct.Proto* %613, i64 0, i32 21
  %615 = load %struct.LocVar*, %struct.LocVar** %614, align 8, !tbaa !80
  %616 = add i32 %611, %603
  %617 = add i32 %616, -1
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %609, i64 %618, i32 0
  %620 = load i16, i16* %619, align 2, !tbaa !90
  %621 = sext i16 %620 to i64
  %622 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %615, i64 %621, i32 1
  store i32 %602, i32* %622, align 8, !tbaa !92
  %623 = load i8, i8* %582, align 2, !tbaa !74
  %624 = zext i8 %623 to i32
  %625 = add nsw i32 %624, -1
  %626 = call i32 @luaK_codeABCk(%struct.FuncState* %554, i32 56, i32 %625, i32 0, i32 0, i32 0) #7
  br label %957

; <label>:627:                                    ; preds = %489
  %628 = bitcast %struct.expdesc* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %628) #7
  %629 = icmp eq i32 %490, 292
  br i1 %629, label %630, label %636

; <label>:630:                                    ; preds = %627
  %631 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %632 = bitcast %union.SemInfo* %631 to %struct.TString**
  br label %637

; <label>:633:                                    ; preds = %637
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %634 = load i32, i32* %27, align 8, !tbaa !63
  %635 = icmp eq i32 %634, 292
  br i1 %635, label %637, label %636

; <label>:636:                                    ; preds = %633, %627
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #8
  unreachable

; <label>:637:                                    ; preds = %630, %633
  %638 = phi i32 [ 0, %630 ], [ %640, %633 ]
  %639 = load %struct.TString*, %struct.TString** %632, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %639) #7
  %640 = add nuw nsw i32 %638, 1
  %641 = load i32, i32* %27, align 8, !tbaa !63
  switch i32 %641, label %655 [
    i32 44, label %633
    i32 61, label %642
  ]

; <label>:642:                                    ; preds = %637
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %643 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %8, i32 0) #7
  %644 = load i32, i32* %27, align 8, !tbaa !63
  %645 = icmp eq i32 %644, 44
  br i1 %645, label %646, label %657

; <label>:646:                                    ; preds = %642
  %647 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %648

; <label>:648:                                    ; preds = %646, %648
  %649 = phi i32 [ 1, %646 ], [ %652, %648 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %650 = load %struct.FuncState*, %struct.FuncState** %647, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %650, %struct.expdesc* nonnull %8) #7
  %651 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %8, i32 0) #7
  %652 = add nuw nsw i32 %649, 1
  %653 = load i32, i32* %27, align 8, !tbaa !63
  %654 = icmp eq i32 %653, 44
  br i1 %654, label %648, label %657

; <label>:655:                                    ; preds = %637
  %656 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 0
  store i32 0, i32* %656, align 8, !tbaa !61
  br label %657

; <label>:657:                                    ; preds = %648, %642, %655
  %658 = phi i32 [ 0, %655 ], [ 1, %642 ], [ %652, %648 ]
  call fastcc void @adjust_assign(%struct.LexState* nonnull %0, i32 %640, i32 %658, %struct.expdesc* nonnull %8) #7
  %659 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %660 = load %struct.FuncState*, %struct.FuncState** %659, align 8, !tbaa !34
  %661 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %660, i64 0, i32 13
  %662 = load i8, i8* %661, align 2, !tbaa !74
  %663 = trunc i32 %640 to i8
  %664 = add i8 %662, %663
  store i8 %664, i8* %661, align 2, !tbaa !74
  %665 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %660, i64 0, i32 4
  %666 = load i32, i32* %665, align 8, !tbaa !37
  %667 = zext i8 %664 to i32
  %668 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %660, i64 0, i32 2
  %669 = load %struct.LexState*, %struct.LexState** %668, align 8, !tbaa !36
  %670 = getelementptr inbounds %struct.LexState, %struct.LexState* %669, i64 0, i32 10
  %671 = load %struct.Dyndata*, %struct.Dyndata** %670, align 8, !tbaa !27
  %672 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %671, i64 0, i32 0, i32 0
  %673 = load %struct.Vardesc*, %struct.Vardesc** %672, align 8, !tbaa !89
  %674 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %660, i64 0, i32 10
  %675 = load i32, i32* %674, align 8, !tbaa !44
  %676 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %660, i64 0, i32 0
  %677 = load %struct.Proto*, %struct.Proto** %676, align 8, !tbaa !19
  %678 = getelementptr inbounds %struct.Proto, %struct.Proto* %677, i64 0, i32 21
  %679 = load %struct.LocVar*, %struct.LocVar** %678, align 8, !tbaa !80
  %680 = zext i32 %640 to i64
  %681 = add i32 %675, %667
  %682 = and i32 %640, 1
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %692, label %684

; <label>:684:                                    ; preds = %657
  %685 = sub i32 %681, %640
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %673, i64 %686, i32 0
  %688 = load i16, i16* %687, align 2, !tbaa !90
  %689 = sext i16 %688 to i64
  %690 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %679, i64 %689, i32 1
  store i32 %666, i32* %690, align 8, !tbaa !92
  %691 = add nsw i64 %680, -1
  br label %692

; <label>:692:                                    ; preds = %657, %684
  %693 = phi i64 [ %680, %657 ], [ %691, %684 ]
  %694 = icmp eq i32 %638, 0
  br i1 %694, label %716, label %695

; <label>:695:                                    ; preds = %692
  br label %696

; <label>:696:                                    ; preds = %696, %695
  %697 = phi i64 [ %693, %695 ], [ %713, %696 ]
  %698 = trunc i64 %697 to i32
  %699 = sub i32 %681, %698
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %673, i64 %700, i32 0
  %702 = load i16, i16* %701, align 2, !tbaa !90
  %703 = sext i16 %702 to i64
  %704 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %679, i64 %703, i32 1
  store i32 %666, i32* %704, align 8, !tbaa !92
  %705 = trunc i64 %697 to i32
  %706 = add i32 %705, -1
  %707 = sub i32 %681, %706
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %673, i64 %708, i32 0
  %710 = load i16, i16* %709, align 2, !tbaa !90
  %711 = sext i16 %710 to i64
  %712 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %679, i64 %711, i32 1
  store i32 %666, i32* %712, align 8, !tbaa !92
  %713 = add nsw i64 %697, -2
  %714 = trunc i64 %713 to i32
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %716, label %696

; <label>:716:                                    ; preds = %696, %692
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %628) #7
  br label %957

; <label>:717:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %718 = load i32, i32* %27, align 8, !tbaa !63
  %719 = icmp eq i32 %718, 292
  br i1 %719, label %721, label %720

; <label>:720:                                    ; preds = %717
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #8
  unreachable

; <label>:721:                                    ; preds = %717
  %722 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %723 = bitcast %union.SemInfo* %722 to %struct.TString**
  %724 = load %struct.TString*, %struct.TString** %723, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %725 = load i32, i32* %27, align 8, !tbaa !63
  %726 = icmp eq i32 %725, 288
  br i1 %726, label %728, label %727

; <label>:727:                                    ; preds = %721
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 288) #8
  unreachable

; <label>:728:                                    ; preds = %721
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  br label %729

; <label>:729:                                    ; preds = %731, %728
  %730 = load i32, i32* %27, align 8, !tbaa !63
  switch i32 %730, label %732 [
    i32 288, label %731
    i32 59, label %731
  ]

; <label>:731:                                    ; preds = %729, %729
  tail call fastcc void @statement(%struct.LexState* nonnull %0) #7
  br label %729

; <label>:732:                                    ; preds = %729
  %733 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %734 = load %struct.Dyndata*, %struct.Dyndata** %733, align 8, !tbaa !27
  %735 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %736 = load %struct.FuncState*, %struct.FuncState** %735, align 8, !tbaa !34
  %737 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %736, i64 0, i32 11
  %738 = load i32, i32* %737, align 4, !tbaa !45
  %739 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %734, i64 0, i32 2, i32 1
  %740 = load i32, i32* %739, align 8, !tbaa !28
  %741 = icmp slt i32 %738, %740
  br i1 %741, label %742, label %764

; <label>:742:                                    ; preds = %732
  %743 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %734, i64 0, i32 2, i32 0
  %744 = load %struct.Labeldesc*, %struct.Labeldesc** %743, align 8, !tbaa !96
  %745 = sext i32 %738 to i64
  %746 = sext i32 %740 to i64
  br label %749

; <label>:747:                                    ; preds = %749
  %748 = icmp slt i64 %755, %746
  br i1 %748, label %749, label %764

; <label>:749:                                    ; preds = %747, %742
  %750 = phi i64 [ %745, %742 ], [ %755, %747 ]
  %751 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %744, i64 %750
  %752 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %751, i64 0, i32 0
  %753 = load %struct.TString*, %struct.TString** %752, align 8, !tbaa !97
  %754 = icmp eq %struct.TString* %753, %724
  %755 = add nsw i64 %750, 1
  br i1 %754, label %756, label %747

; <label>:756:                                    ; preds = %749
  %757 = icmp eq %struct.Labeldesc* %751, null
  br i1 %757, label %764, label %758, !prof !99

; <label>:758:                                    ; preds = %756
  %759 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !tbaa !66
  %760 = getelementptr inbounds %struct.TString, %struct.TString* %724, i64 1
  %761 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %744, i64 %750, i32 2
  %762 = load i32, i32* %761, align 4, !tbaa !100
  %763 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %759, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), %struct.TString* nonnull %760, i32 %762) #7
  tail call void @luaK_semerror(%struct.LexState* %0, i8* %763) #8
  unreachable

; <label>:764:                                    ; preds = %747, %756, %732
  switch i32 %730, label %766 [
    i32 260, label %767
    i32 261, label %767
    i32 262, label %767
    i32 289, label %767
    i32 277, label %765
  ]

; <label>:765:                                    ; preds = %764
  br label %767

; <label>:766:                                    ; preds = %764
  br label %767

; <label>:767:                                    ; preds = %764, %764, %764, %764, %765, %766
  %768 = phi i32 [ 0, %766 ], [ 0, %765 ], [ 1, %764 ], [ 1, %764 ], [ 1, %764 ], [ 1, %764 ]
  %769 = tail call fastcc i32 @createlabel(%struct.LexState* %0, %struct.TString* %724, i32 %24, i32 %768) #7
  br label %957

; <label>:770:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %771 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %772 = load %struct.FuncState*, %struct.FuncState** %771, align 8, !tbaa !34
  %773 = bitcast %struct.expdesc* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %773) #7
  %774 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %772, i64 0, i32 13
  %775 = load i8, i8* %774, align 2, !tbaa !74
  %776 = zext i8 %775 to i32
  %777 = load i32, i32* %27, align 8, !tbaa !63
  switch i32 %777, label %778 [
    i32 260, label %825
    i32 261, label %825
    i32 262, label %825
    i32 289, label %825
    i32 277, label %825
    i32 59, label %825
  ]

; <label>:778:                                    ; preds = %770
  %779 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %7, i32 0) #7
  %780 = load i32, i32* %27, align 8, !tbaa !63
  %781 = icmp eq i32 %780, 44
  br i1 %781, label %782, label %790

; <label>:782:                                    ; preds = %778
  br label %783

; <label>:783:                                    ; preds = %782, %783
  %784 = phi i32 [ %787, %783 ], [ 1, %782 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %785 = load %struct.FuncState*, %struct.FuncState** %771, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %785, %struct.expdesc* nonnull %7) #7
  %786 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %7, i32 0) #7
  %787 = add nuw nsw i32 %784, 1
  %788 = load i32, i32* %27, align 8, !tbaa !63
  %789 = icmp eq i32 %788, 44
  br i1 %789, label %783, label %790

; <label>:790:                                    ; preds = %783, %778
  %791 = phi i32 [ 1, %778 ], [ %787, %783 ]
  %792 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i64 0, i32 0
  %793 = load i32, i32* %792, align 8, !tbaa !61
  %794 = and i32 %793, -2
  %795 = icmp eq i32 %794, 16
  br i1 %795, label %796, label %820

; <label>:796:                                    ; preds = %790
  call void @luaK_setreturns(%struct.FuncState* %772, %struct.expdesc* nonnull %7, i32 -1) #7
  %797 = load i32, i32* %792, align 8, !tbaa !61
  %798 = icmp eq i32 %797, 16
  %799 = icmp eq i32 %791, 1
  %800 = and i1 %799, %798
  br i1 %800, label %801, label %825

; <label>:801:                                    ; preds = %796
  %802 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %772, i64 0, i32 3
  %803 = load %struct.BlockCnt*, %struct.BlockCnt** %802, align 8, !tbaa !56
  %804 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %803, i64 0, i32 6
  %805 = load i8, i8* %804, align 1, !tbaa !54
  %806 = icmp eq i8 %805, 0
  br i1 %806, label %807, label %825

; <label>:807:                                    ; preds = %801
  %808 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %772, i64 0, i32 0
  %809 = load %struct.Proto*, %struct.Proto** %808, align 8, !tbaa !19
  %810 = getelementptr inbounds %struct.Proto, %struct.Proto* %809, i64 0, i32 16
  %811 = load i32*, i32** %810, align 8, !tbaa !75
  %812 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i64 0, i32 1
  %813 = bitcast %union.anon.7* %812 to i32*
  %814 = load i32, i32* %813, align 8, !tbaa !11
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds i32, i32* %811, i64 %815
  %817 = load i32, i32* %816, align 4, !tbaa !87
  %818 = and i32 %817, -128
  %819 = or i32 %818, 70
  store i32 %819, i32* %816, align 4, !tbaa !87
  br label %825

; <label>:820:                                    ; preds = %790
  %821 = icmp eq i32 %791, 1
  br i1 %821, label %822, label %824

; <label>:822:                                    ; preds = %820
  %823 = call i32 @luaK_exp2anyreg(%struct.FuncState* %772, %struct.expdesc* nonnull %7) #7
  br label %825

; <label>:824:                                    ; preds = %820
  call void @luaK_exp2nextreg(%struct.FuncState* %772, %struct.expdesc* nonnull %7) #7
  br label %825

; <label>:825:                                    ; preds = %770, %770, %770, %770, %770, %770, %824, %822, %807, %801, %796
  %826 = phi i32 [ 1, %822 ], [ %791, %824 ], [ -1, %801 ], [ -1, %807 ], [ -1, %796 ], [ 0, %770 ], [ 0, %770 ], [ 0, %770 ], [ 0, %770 ], [ 0, %770 ], [ 0, %770 ]
  %827 = phi i32 [ %823, %822 ], [ %776, %824 ], [ %776, %801 ], [ %776, %807 ], [ %776, %796 ], [ %776, %770 ], [ %776, %770 ], [ %776, %770 ], [ %776, %770 ], [ %776, %770 ], [ %776, %770 ]
  call void @luaK_ret(%struct.FuncState* %772, i32 %827, i32 %826) #7
  %828 = load i32, i32* %27, align 8, !tbaa !63
  %829 = icmp eq i32 %828, 59
  br i1 %829, label %830, label %831

; <label>:830:                                    ; preds = %825
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  br label %831

; <label>:831:                                    ; preds = %825, %830
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %773) #7
  br label %957

; <label>:832:                                    ; preds = %1
  %833 = load i32, i32* %23, align 4, !tbaa !86
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %834 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !tbaa !66
  %835 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %834, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #7
  %836 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %837 = load %struct.FuncState*, %struct.FuncState** %836, align 8, !tbaa !34
  %838 = tail call i32 @luaK_jump(%struct.FuncState* %837) #7
  %839 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %840 = load %struct.Dyndata*, %struct.Dyndata** %839, align 8, !tbaa !27
  %841 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %840, i64 0, i32 1
  %842 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %840, i64 0, i32 1, i32 1
  %843 = load i32, i32* %842, align 8, !tbaa !101
  %844 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !tbaa !66
  %845 = bitcast %struct.Labellist* %841 to i8**
  %846 = load i8*, i8** %845, align 8, !tbaa !102
  %847 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %840, i64 0, i32 1, i32 2
  %848 = tail call i8* @luaM_growaux_(%struct.lua_State* %844, i8* %846, i32 %843, i32* nonnull %847, i32 24, i32 32767, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #7
  %849 = bitcast i8* %848 to %struct.Labeldesc*
  store i8* %848, i8** %845, align 8, !tbaa !102
  %850 = sext i32 %843 to i64
  %851 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %849, i64 %850, i32 0
  store %struct.TString* %835, %struct.TString** %851, align 8, !tbaa !97
  %852 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %849, i64 %850, i32 2
  store i32 %833, i32* %852, align 4, !tbaa !100
  %853 = load %struct.FuncState*, %struct.FuncState** %836, align 8, !tbaa !34
  %854 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %853, i64 0, i32 13
  %855 = load i8, i8* %854, align 2, !tbaa !74
  %856 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %849, i64 %850, i32 3
  store i8 %855, i8* %856, align 8, !tbaa !103
  %857 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %849, i64 %850, i32 4
  store i8 0, i8* %857, align 1, !tbaa !104
  %858 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %849, i64 %850, i32 1
  store i32 %838, i32* %858, align 8, !tbaa !105
  %859 = add nsw i32 %843, 1
  store i32 %859, i32* %842, align 8, !tbaa !101
  br label %957

; <label>:860:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %861 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %862 = load %struct.FuncState*, %struct.FuncState** %861, align 8, !tbaa !34
  %863 = load i32, i32* %23, align 4, !tbaa !86
  %864 = load i32, i32* %27, align 8, !tbaa !63
  %865 = icmp eq i32 %864, 292
  br i1 %865, label %867, label %866

; <label>:866:                                    ; preds = %860
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #8
  unreachable

; <label>:867:                                    ; preds = %860
  %868 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %869 = bitcast %union.SemInfo* %868 to %struct.TString**
  %870 = load %struct.TString*, %struct.TString** %869, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %871 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %872 = load %struct.Dyndata*, %struct.Dyndata** %871, align 8, !tbaa !27
  %873 = load %struct.FuncState*, %struct.FuncState** %861, align 8, !tbaa !34
  %874 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %873, i64 0, i32 11
  %875 = load i32, i32* %874, align 4, !tbaa !45
  %876 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %872, i64 0, i32 2, i32 1
  %877 = load i32, i32* %876, align 8, !tbaa !28
  %878 = icmp slt i32 %875, %877
  br i1 %878, label %879, label %895

; <label>:879:                                    ; preds = %867
  %880 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %872, i64 0, i32 2, i32 0
  %881 = load %struct.Labeldesc*, %struct.Labeldesc** %880, align 8, !tbaa !96
  %882 = sext i32 %875 to i64
  %883 = sext i32 %877 to i64
  br label %886

; <label>:884:                                    ; preds = %886
  %885 = icmp slt i64 %892, %883
  br i1 %885, label %886, label %895

; <label>:886:                                    ; preds = %884, %879
  %887 = phi i64 [ %882, %879 ], [ %892, %884 ]
  %888 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %881, i64 %887
  %889 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %888, i64 0, i32 0
  %890 = load %struct.TString*, %struct.TString** %889, align 8, !tbaa !97
  %891 = icmp eq %struct.TString* %890, %870
  %892 = add nsw i64 %887, 1
  br i1 %891, label %893, label %884

; <label>:893:                                    ; preds = %886
  %894 = icmp eq %struct.Labeldesc* %888, null
  br i1 %894, label %895, label %917

; <label>:895:                                    ; preds = %884, %893, %867
  %896 = tail call i32 @luaK_jump(%struct.FuncState* %862) #7
  %897 = load %struct.Dyndata*, %struct.Dyndata** %871, align 8, !tbaa !27
  %898 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %897, i64 0, i32 1
  %899 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %897, i64 0, i32 1, i32 1
  %900 = load i32, i32* %899, align 8, !tbaa !101
  %901 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !tbaa !66
  %902 = bitcast %struct.Labellist* %898 to i8**
  %903 = load i8*, i8** %902, align 8, !tbaa !102
  %904 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %897, i64 0, i32 1, i32 2
  %905 = tail call i8* @luaM_growaux_(%struct.lua_State* %901, i8* %903, i32 %900, i32* nonnull %904, i32 24, i32 32767, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #7
  %906 = bitcast i8* %905 to %struct.Labeldesc*
  store i8* %905, i8** %902, align 8, !tbaa !102
  %907 = sext i32 %900 to i64
  %908 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %906, i64 %907, i32 0
  store %struct.TString* %870, %struct.TString** %908, align 8, !tbaa !97
  %909 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %906, i64 %907, i32 2
  store i32 %863, i32* %909, align 4, !tbaa !100
  %910 = load %struct.FuncState*, %struct.FuncState** %861, align 8, !tbaa !34
  %911 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %910, i64 0, i32 13
  %912 = load i8, i8* %911, align 2, !tbaa !74
  %913 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %906, i64 %907, i32 3
  store i8 %912, i8* %913, align 8, !tbaa !103
  %914 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %906, i64 %907, i32 4
  store i8 0, i8* %914, align 1, !tbaa !104
  %915 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %906, i64 %907, i32 1
  store i32 %896, i32* %915, align 8, !tbaa !105
  %916 = add nsw i32 %900, 1
  store i32 %916, i32* %899, align 8, !tbaa !101
  br label %957

; <label>:917:                                    ; preds = %893
  %918 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %862, i64 0, i32 13
  %919 = load i8, i8* %918, align 2, !tbaa !74
  %920 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %881, i64 %887, i32 3
  %921 = load i8, i8* %920, align 8, !tbaa !103
  %922 = icmp ugt i8 %919, %921
  br i1 %922, label %923, label %926

; <label>:923:                                    ; preds = %917
  %924 = zext i8 %921 to i32
  %925 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %862, i32 55, i32 %924, i32 0, i32 0, i32 0) #7
  br label %926

; <label>:926:                                    ; preds = %923, %917
  %927 = tail call i32 @luaK_jump(%struct.FuncState* nonnull %862) #7
  %928 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %881, i64 %887, i32 1
  %929 = load i32, i32* %928, align 8, !tbaa !105
  tail call void @luaK_patchlist(%struct.FuncState* nonnull %862, i32 %927, i32 %929) #7
  br label %957

; <label>:930:                                    ; preds = %1
  %931 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %932 = load %struct.FuncState*, %struct.FuncState** %931, align 8, !tbaa !34
  %933 = bitcast %struct.LHS_assign* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %933) #7
  %934 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %6, i64 0, i32 1
  call fastcc void @suffixedexp(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %934) #7
  %935 = load i32, i32* %27, align 8, !tbaa !63
  switch i32 %935, label %938 [
    i32 61, label %936
    i32 44, label %936
  ]

; <label>:936:                                    ; preds = %930, %930
  %937 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %6, i64 0, i32 0
  store %struct.LHS_assign* null, %struct.LHS_assign** %937, align 8, !tbaa !106
  call fastcc void @restassign(%struct.LexState* nonnull %0, %struct.LHS_assign* nonnull %6, i32 1) #7
  br label %956

; <label>:938:                                    ; preds = %930
  %939 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %932, i64 0, i32 0
  %940 = load %struct.Proto*, %struct.Proto** %939, align 8, !tbaa !19
  %941 = getelementptr inbounds %struct.Proto, %struct.Proto* %940, i64 0, i32 16
  %942 = load i32*, i32** %941, align 8, !tbaa !75
  %943 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %6, i64 0, i32 1, i32 1
  %944 = bitcast %union.anon.7* %943 to i32*
  %945 = load i32, i32* %944, align 8, !tbaa !11
  %946 = sext i32 %945 to i64
  %947 = getelementptr inbounds i32, i32* %942, i64 %946
  %948 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %934, i64 0, i32 0
  %949 = load i32, i32* %948, align 8, !tbaa !108
  %950 = icmp eq i32 %949, 16
  br i1 %950, label %952, label %951

; <label>:951:                                    ; preds = %938
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0)) #8
  unreachable

; <label>:952:                                    ; preds = %938
  %953 = load i32, i32* %947, align 4, !tbaa !87
  %954 = and i32 %953, 16777215
  %955 = or i32 %954, 16777216
  store i32 %955, i32* %947, align 4, !tbaa !87
  br label %956

; <label>:956:                                    ; preds = %936, %952
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %933) #7
  br label %957

; <label>:957:                                    ; preds = %926, %895, %716, %592, %498, %956, %832, %831, %767, %484, %475, %409, %195, %157, %74, %29
  %958 = phi %struct.FuncState** [ %861, %926 ], [ %861, %895 ], [ %659, %716 ], [ %553, %592 ], [ %493, %498 ], [ %931, %956 ], [ %836, %832 ], [ %771, %831 ], [ %735, %767 ], [ %486, %484 ], [ %411, %475 ], [ %197, %409 ], [ %160, %195 ], [ %77, %157 ], [ %32, %74 ], [ %30, %29 ]
  %959 = load %struct.FuncState*, %struct.FuncState** %958, align 8, !tbaa !34
  %960 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %959, i64 0, i32 13
  %961 = load i8, i8* %960, align 2, !tbaa !74
  %962 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %959, i64 0, i32 15
  store i8 %961, i8* %962, align 4, !tbaa !88
  %963 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !tbaa !66
  %964 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %963, i64 0, i32 19
  %965 = load i32, i32* %964, align 8, !tbaa !109
  %966 = add i32 %965, -1
  store i32 %966, i32* %964, align 8, !tbaa !109
  ret void
}

declare hidden void @luaE_enterCcall(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @check_match(%struct.LexState*, i32, i32, i32) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %6 = load i32, i32* %5, align 8, !tbaa !63
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %19, label %8

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !86
  %11 = icmp eq i32 %10, %3
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 %1) #10
  unreachable

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8, !tbaa !66
  %16 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 %1) #7
  %17 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 %2) #7
  %18 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* %16, i8* %17, i32 %3) #7
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %18) #8
  unreachable

; <label>:19:                                     ; preds = %4
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @test_then_block(%struct.LexState*, i32*) unnamed_addr #0 {
  %3 = alloca %struct.BlockCnt, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = bitcast %struct.BlockCnt* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %7 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  %8 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #7
  tail call void @luaX_next(%struct.LexState* %0) #7
  %9 = call fastcc i32 @subexpr(%struct.LexState* %0, %struct.expdesc* nonnull %4, i32 0) #7
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %11 = load i32, i32* %10, align 8, !tbaa !63
  %12 = icmp eq i32 %11, 275
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %2
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 275) #8
  unreachable

; <label>:14:                                     ; preds = %2
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %16 = load i32, i32* %15, align 4, !tbaa !86
  %17 = load i32, i32* %10, align 8, !tbaa !63
  switch i32 %17, label %136 [
    i32 258, label %18
    i32 266, label %22
  ]

; <label>:18:                                     ; preds = %14
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %19 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %20 = load %struct.lua_State*, %struct.lua_State** %19, align 8, !tbaa !66
  %21 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #7
  br label %65

; <label>:22:                                     ; preds = %14
  %23 = call i32 @luaX_lookahead(%struct.LexState* nonnull %0) #7
  %24 = icmp eq i32 %23, 292
  br i1 %24, label %25, label %136

; <label>:25:                                     ; preds = %22
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, i32 1
  %27 = bitcast %union.SemInfo* %26 to %struct.TString**
  %28 = load %struct.TString*, %struct.TString** %27, align 8, !tbaa !11
  %29 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %30 = load %struct.Dyndata*, %struct.Dyndata** %29, align 8, !tbaa !27
  %31 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %31, i64 0, i32 11
  %33 = load i32, i32* %32, align 4, !tbaa !45
  %34 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %30, i64 0, i32 2, i32 1
  %35 = load i32, i32* %34, align 8, !tbaa !28
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %62

; <label>:37:                                     ; preds = %25
  %38 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %30, i64 0, i32 2, i32 0
  %39 = load %struct.Labeldesc*, %struct.Labeldesc** %38, align 8, !tbaa !96
  %40 = sext i32 %33 to i64
  %41 = sext i32 %35 to i64
  br label %44

; <label>:42:                                     ; preds = %44
  %43 = icmp slt i64 %50, %41
  br i1 %43, label %44, label %62

; <label>:44:                                     ; preds = %42, %37
  %45 = phi i64 [ %40, %37 ], [ %50, %42 ]
  %46 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %39, i64 %45
  %47 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %46, i64 0, i32 0
  %48 = load %struct.TString*, %struct.TString** %47, align 8, !tbaa !97
  %49 = icmp eq %struct.TString* %48, %28
  %50 = add nsw i64 %45, 1
  br i1 %49, label %51, label %42

; <label>:51:                                     ; preds = %44
  %52 = icmp eq %struct.Labeldesc* %46, null
  br i1 %52, label %62, label %53

; <label>:53:                                     ; preds = %51
  %54 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %31, i64 0, i32 13
  %55 = load i8, i8* %54, align 2, !tbaa !74
  %56 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %39, i64 %45, i32 3
  %57 = load i8, i8* %56, align 8, !tbaa !103
  %58 = icmp ugt i8 %55, %57
  br i1 %58, label %136, label %59

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %39, i64 %45, i32 1
  %61 = load i32, i32* %60, align 8, !tbaa !105
  br label %62

; <label>:62:                                     ; preds = %42, %25, %51, %59
  %63 = phi %struct.TString* [ null, %59 ], [ %28, %51 ], [ %28, %25 ], [ %28, %42 ]
  %64 = phi i32 [ %61, %59 ], [ -1, %51 ], [ -1, %25 ], [ -1, %42 ]
  call void @luaX_next(%struct.LexState* %0) #7
  call void @luaX_next(%struct.LexState* %0) #7
  br label %65

; <label>:65:                                     ; preds = %62, %18
  %66 = phi %struct.TString* [ %63, %62 ], [ %21, %18 ]
  %67 = phi i32 [ %64, %62 ], [ -1, %18 ]
  %68 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  call void @luaK_goiffalse(%struct.FuncState* %68, %struct.expdesc* nonnull %4) #7
  %69 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 5
  store i8 0, i8* %69, align 2, !tbaa !48
  %70 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i64 0, i32 13
  %71 = load i8, i8* %70, align 2, !tbaa !74
  %72 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 3
  store i8 %71, i8* %72, align 8, !tbaa !50
  %73 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i64 0, i32 2
  %74 = load %struct.LexState*, %struct.LexState** %73, align 8, !tbaa !36
  %75 = getelementptr inbounds %struct.LexState, %struct.LexState* %74, i64 0, i32 10
  %76 = load %struct.Dyndata*, %struct.Dyndata** %75, align 8, !tbaa !27
  %77 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %76, i64 0, i32 2, i32 1
  %78 = load i32, i32* %77, align 8, !tbaa !28
  %79 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 1
  store i32 %78, i32* %79, align 8, !tbaa !51
  %80 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %76, i64 0, i32 1, i32 1
  %81 = load i32, i32* %80, align 8, !tbaa !32
  %82 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 2
  store i32 %81, i32* %82, align 4, !tbaa !52
  %83 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 4
  store i8 0, i8* %83, align 1, !tbaa !53
  %84 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i64 0, i32 3
  %85 = load %struct.BlockCnt*, %struct.BlockCnt** %84, align 8, !tbaa !56
  %86 = icmp eq %struct.BlockCnt* %85, null
  %87 = ptrtoint %struct.BlockCnt* %85 to i64
  br i1 %86, label %93, label %88

; <label>:88:                                     ; preds = %65
  %89 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %85, i64 0, i32 6
  %90 = load i8, i8* %89, align 1, !tbaa !54
  %91 = icmp ne i8 %90, 0
  %92 = zext i1 %91 to i8
  br label %93

; <label>:93:                                     ; preds = %65, %88
  %94 = phi i8 [ 0, %65 ], [ %92, %88 ]
  %95 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 6
  store i8 %94, i8* %95, align 1, !tbaa !54
  %96 = bitcast %struct.BlockCnt* %3 to i64*
  store i64 %87, i64* %96, align 8, !tbaa !55
  store %struct.BlockCnt* %3, %struct.BlockCnt** %84, align 8, !tbaa !56
  %97 = icmp eq %struct.TString* %66, null
  %98 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2
  %99 = load i32, i32* %98, align 8, !tbaa !58
  br i1 %97, label %123, label %100

; <label>:100:                                    ; preds = %93
  %101 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %102 = load %struct.Dyndata*, %struct.Dyndata** %101, align 8, !tbaa !27
  %103 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %102, i64 0, i32 1
  %104 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %102, i64 0, i32 1, i32 1
  %105 = load i32, i32* %104, align 8, !tbaa !101
  %106 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %107 = load %struct.lua_State*, %struct.lua_State** %106, align 8, !tbaa !66
  %108 = bitcast %struct.Labellist* %103 to i8**
  %109 = load i8*, i8** %108, align 8, !tbaa !102
  %110 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %102, i64 0, i32 1, i32 2
  %111 = call i8* @luaM_growaux_(%struct.lua_State* %107, i8* %109, i32 %105, i32* nonnull %110, i32 24, i32 32767, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #7
  %112 = bitcast i8* %111 to %struct.Labeldesc*
  store i8* %111, i8** %108, align 8, !tbaa !102
  %113 = sext i32 %105 to i64
  %114 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %112, i64 %113, i32 0
  store %struct.TString* %66, %struct.TString** %114, align 8, !tbaa !97
  %115 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %112, i64 %113, i32 2
  store i32 %16, i32* %115, align 4, !tbaa !100
  %116 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  %117 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %116, i64 0, i32 13
  %118 = load i8, i8* %117, align 2, !tbaa !74
  %119 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %112, i64 %113, i32 3
  store i8 %118, i8* %119, align 8, !tbaa !103
  %120 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %112, i64 %113, i32 4
  store i8 0, i8* %120, align 1, !tbaa !104
  %121 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %112, i64 %113, i32 1
  store i32 %99, i32* %121, align 8, !tbaa !105
  %122 = add nsw i32 %105, 1
  store i32 %122, i32* %104, align 8, !tbaa !101
  br label %124

; <label>:123:                                    ; preds = %93
  call void @luaK_patchlist(%struct.FuncState* nonnull %7, i32 %99, i32 %67) #7
  br label %124

; <label>:124:                                    ; preds = %123, %100
  %125 = load i32, i32* %10, align 8, !tbaa !63
  %126 = icmp eq i32 %125, 59
  br i1 %126, label %127, label %131

; <label>:127:                                    ; preds = %124
  br label %128

; <label>:128:                                    ; preds = %127, %128
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %129 = load i32, i32* %10, align 8, !tbaa !63
  %130 = icmp eq i32 %129, 59
  br i1 %130, label %128, label %131

; <label>:131:                                    ; preds = %128, %124
  %132 = phi i32 [ %125, %124 ], [ %129, %128 ]
  switch i32 %132, label %134 [
    i32 260, label %133
    i32 261, label %133
    i32 262, label %133
    i32 289, label %133
  ]

; <label>:133:                                    ; preds = %131, %131, %131, %131
  call fastcc void @leaveblock(%struct.FuncState* %7)
  br label %181

; <label>:134:                                    ; preds = %131
  %135 = call i32 @luaK_jump(%struct.FuncState* %7) #7
  br label %168

; <label>:136:                                    ; preds = %22, %53, %14
  %137 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  call void @luaK_goiftrue(%struct.FuncState* %137, %struct.expdesc* nonnull %4) #7
  %138 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 5
  store i8 0, i8* %138, align 2, !tbaa !48
  %139 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i64 0, i32 13
  %140 = load i8, i8* %139, align 2, !tbaa !74
  %141 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 3
  store i8 %140, i8* %141, align 8, !tbaa !50
  %142 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i64 0, i32 2
  %143 = load %struct.LexState*, %struct.LexState** %142, align 8, !tbaa !36
  %144 = getelementptr inbounds %struct.LexState, %struct.LexState* %143, i64 0, i32 10
  %145 = load %struct.Dyndata*, %struct.Dyndata** %144, align 8, !tbaa !27
  %146 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %145, i64 0, i32 2, i32 1
  %147 = load i32, i32* %146, align 8, !tbaa !28
  %148 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 1
  store i32 %147, i32* %148, align 8, !tbaa !51
  %149 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %145, i64 0, i32 1, i32 1
  %150 = load i32, i32* %149, align 8, !tbaa !32
  %151 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 2
  store i32 %150, i32* %151, align 4, !tbaa !52
  %152 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 4
  store i8 0, i8* %152, align 1, !tbaa !53
  %153 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i64 0, i32 3
  %154 = load %struct.BlockCnt*, %struct.BlockCnt** %153, align 8, !tbaa !56
  %155 = icmp eq %struct.BlockCnt* %154, null
  %156 = ptrtoint %struct.BlockCnt* %154 to i64
  br i1 %155, label %162, label %157

; <label>:157:                                    ; preds = %136
  %158 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %154, i64 0, i32 6
  %159 = load i8, i8* %158, align 1, !tbaa !54
  %160 = icmp ne i8 %159, 0
  %161 = zext i1 %160 to i8
  br label %162

; <label>:162:                                    ; preds = %136, %157
  %163 = phi i8 [ 0, %136 ], [ %161, %157 ]
  %164 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 6
  store i8 %163, i8* %164, align 1, !tbaa !54
  %165 = bitcast %struct.BlockCnt* %3 to i64*
  store i64 %156, i64* %165, align 8, !tbaa !55
  store %struct.BlockCnt* %3, %struct.BlockCnt** %153, align 8, !tbaa !56
  %166 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3
  %167 = load i32, i32* %166, align 4, !tbaa !60
  br label %168

; <label>:168:                                    ; preds = %162, %134
  %169 = phi i32 [ %135, %134 ], [ %167, %162 ]
  br label %170

; <label>:170:                                    ; preds = %172, %168
  %171 = load i32, i32* %10, align 8, !tbaa !63
  switch i32 %171, label %172 [
    i32 260, label %174
    i32 261, label %174
    i32 262, label %174
    i32 289, label %174
    i32 277, label %174
  ]

; <label>:172:                                    ; preds = %170
  %173 = icmp eq i32 %171, 274
  call fastcc void @statement(%struct.LexState* nonnull %0) #7
  br i1 %173, label %174, label %170

; <label>:174:                                    ; preds = %170, %170, %170, %170, %170, %172
  call fastcc void @leaveblock(%struct.FuncState* %7)
  %175 = load i32, i32* %10, align 8, !tbaa !63
  %176 = and i32 %175, -2
  %177 = icmp eq i32 %176, 260
  br i1 %177, label %178, label %180

; <label>:178:                                    ; preds = %174
  %179 = call i32 @luaK_jump(%struct.FuncState* %7) #7
  call void @luaK_concat(%struct.FuncState* %7, i32* %1, i32 %179) #7
  br label %180

; <label>:180:                                    ; preds = %174, %178
  call void @luaK_patchtohere(%struct.FuncState* %7, i32 %169) #7
  br label %181

; <label>:181:                                    ; preds = %180, %133
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7
  ret void
}

declare hidden void @luaK_patchtohere(%struct.FuncState*, i32) local_unnamed_addr #2

declare hidden void @luaK_goiffalse(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_patchlist(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  %12 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #7
  %13 = tail call fastcc i32 @createlabel(%struct.LexState* %5, %struct.TString* %12, i32 0, i32 0)
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
  %27 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %0, i32 55, i32 %26, i32 0, i32 0, i32 0) #7
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
  %36 = load i8, i8* %35, align 2, !tbaa !74
  %37 = zext i8 %36 to i32
  %38 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !36
  %39 = getelementptr inbounds %struct.LexState, %struct.LexState* %38, i64 0, i32 10
  %40 = load %struct.Dyndata*, %struct.Dyndata** %39, align 8, !tbaa !27
  %41 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %40, i64 0, i32 0, i32 1
  %42 = load i32, i32* %41, align 8, !tbaa !33
  %43 = sub nsw i32 %34, %37
  %44 = add i32 %43, %42
  store i32 %44, i32* %41, align 8, !tbaa !33
  %45 = icmp ugt i8 %36, %33
  br i1 %45, label %46, label %96

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
  %56 = load %struct.LocVar*, %struct.LocVar** %55, align 8, !tbaa !80
  %57 = sub i8 %36, %33
  %58 = add i8 %36, -1
  %59 = and i8 %57, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %70, label %61

; <label>:61:                                     ; preds = %46
  %62 = zext i8 %58 to i32
  %63 = add nsw i32 %52, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %50, i64 %64, i32 0
  %66 = load i16, i16* %65, align 2, !tbaa !90
  %67 = sext i16 %66 to i64
  %68 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %56, i64 %67, i32 2
  store i32 %48, i32* %68, align 4, !tbaa !110
  %69 = add nsw i32 %37, -1
  br label %70

; <label>:70:                                     ; preds = %46, %61
  %71 = phi i32 [ %37, %46 ], [ %69, %61 ]
  %72 = icmp eq i8 %58, %33
  br i1 %72, label %95, label %73

; <label>:73:                                     ; preds = %70
  br label %74

; <label>:74:                                     ; preds = %74, %73
  %75 = phi i32 [ %71, %73 ], [ %94, %74 ]
  %76 = add i32 %75, 255
  %77 = and i32 %76, 255
  %78 = add nsw i32 %52, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %50, i64 %79, i32 0
  %81 = load i16, i16* %80, align 2, !tbaa !90
  %82 = sext i16 %81 to i64
  %83 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %56, i64 %82, i32 2
  store i32 %48, i32* %83, align 4, !tbaa !110
  %84 = trunc i32 %75 to i8
  %85 = add i8 %84, -2
  %86 = zext i8 %85 to i32
  %87 = add nsw i32 %52, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %50, i64 %88, i32 0
  %90 = load i16, i16* %89, align 2, !tbaa !90
  %91 = sext i16 %90 to i64
  %92 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %56, i64 %91, i32 2
  store i32 %48, i32* %92, align 4, !tbaa !110
  %93 = icmp ugt i8 %85, %33
  %94 = add nsw i32 %75, -2
  br i1 %93, label %74, label %95

; <label>:95:                                     ; preds = %74, %70
  store i8 %33, i8* %35, align 2, !tbaa !74
  br label %96

; <label>:96:                                     ; preds = %28, %95
  %97 = phi i8 [ %36, %28 ], [ %33, %95 ]
  %98 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15
  store i8 %97, i8* %98, align 4, !tbaa !88
  %99 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 1
  %100 = load i32, i32* %99, align 8, !tbaa !51
  %101 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 10
  %102 = load %struct.Dyndata*, %struct.Dyndata** %101, align 8, !tbaa !27
  %103 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %102, i64 0, i32 2, i32 1
  store i32 %100, i32* %103, align 8, !tbaa !28
  %104 = icmp eq i64 %30, 0
  %105 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 2
  %106 = load i32, i32* %105, align 4, !tbaa !52
  br i1 %104, label %130, label %107

; <label>:107:                                    ; preds = %96
  %108 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %40, i64 0, i32 1, i32 1
  %109 = load i32, i32* %108, align 8, !tbaa !101
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %139

; <label>:111:                                    ; preds = %107
  %112 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %40, i64 0, i32 1, i32 0
  %113 = load %struct.Labeldesc*, %struct.Labeldesc** %112, align 8, !tbaa !102
  %114 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 4
  %115 = sext i32 %106 to i64
  %116 = sext i32 %109 to i64
  br label %117

; <label>:117:                                    ; preds = %127, %111
  %118 = phi i64 [ %115, %111 ], [ %128, %127 ]
  %119 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %113, i64 %118, i32 3
  %120 = load i8, i8* %119, align 8, !tbaa !103
  %121 = icmp ugt i8 %120, %33
  br i1 %121, label %122, label %127

; <label>:122:                                    ; preds = %117
  store i8 %33, i8* %119, align 8, !tbaa !103
  %123 = load i8, i8* %114, align 1, !tbaa !53
  %124 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %113, i64 %118, i32 4
  %125 = load i8, i8* %124, align 1, !tbaa !104
  %126 = or i8 %125, %123
  store i8 %126, i8* %124, align 1, !tbaa !104
  br label %127

; <label>:127:                                    ; preds = %122, %117
  %128 = add nsw i64 %118, 1
  %129 = icmp eq i64 %128, %116
  br i1 %129, label %139, label %117

; <label>:130:                                    ; preds = %96
  %131 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %102, i64 0, i32 1, i32 1
  %132 = load i32, i32* %131, align 8, !tbaa !32
  %133 = icmp slt i32 %106, %132
  br i1 %133, label %134, label %139

; <label>:134:                                    ; preds = %130
  %135 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %102, i64 0, i32 1, i32 0
  %136 = load %struct.Labeldesc*, %struct.Labeldesc** %135, align 8, !tbaa !111
  %137 = sext i32 %106 to i64
  %138 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %136, i64 %137
  tail call fastcc void @undefgoto(%struct.LexState* nonnull %5, %struct.Labeldesc* %138) #10
  unreachable

; <label>:139:                                    ; preds = %127, %107, %130
  ret void
}

declare hidden i32 @luaK_jump(%struct.FuncState*) local_unnamed_addr #2

declare hidden void @luaK_goiftrue(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_concat(%struct.FuncState*, i32*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @subexpr(%struct.LexState*, %struct.expdesc*, i32) unnamed_addr #0 {
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %6 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !tbaa !66
  tail call void @luaE_enterCcall(%struct.lua_State* %6) #7
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
  %15 = load i32, i32* %14, align 4, !tbaa !86
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %16 = tail call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 12)
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %18 = load %struct.FuncState*, %struct.FuncState** %17, align 8, !tbaa !34
  tail call void @luaK_prefix(%struct.FuncState* %18, i32 %13, %struct.expdesc* %1, i32 %15) #7
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
  %45 = tail call i32 @luaK_stringK(%struct.FuncState* %44, %struct.TString* %42) #7
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
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0)) #8
  unreachable

; <label>:78:                                     ; preds = %69
  %79 = tail call i32 @luaK_codeABCk(%struct.FuncState* %71, i32 81, i32 0, i32 0, i32 1, i32 0) #7
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
  tail call fastcc void @constructor(%struct.LexState* nonnull %0, %struct.expdesc* %1) #7
  br label %91

; <label>:86:                                     ; preds = %3
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %87 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %88 = load i32, i32* %87, align 4, !tbaa !86
  tail call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 0, i32 %88) #7
  br label %91

; <label>:89:                                     ; preds = %3
  tail call fastcc void @suffixedexp(%struct.LexState* nonnull %0, %struct.expdesc* %1) #7
  br label %91

; <label>:90:                                     ; preds = %78, %63, %57, %51, %39, %29, %19
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
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
  %122 = load i8, i8* %121, align 2, !tbaa !112
  %123 = zext i8 %122 to i32
  %124 = icmp sgt i32 %123, %2
  br i1 %124, label %125, label %134

; <label>:125:                                    ; preds = %118
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %115) #7
  %126 = load i32, i32* %116, align 4, !tbaa !86
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %127 = load %struct.FuncState*, %struct.FuncState** %117, align 8, !tbaa !34
  call void @luaK_infix(%struct.FuncState* %127, i32 %119, %struct.expdesc* %1) #7
  %128 = getelementptr inbounds [21 x %struct.anon.9], [21 x %struct.anon.9]* @priority, i64 0, i64 %120, i32 1
  %129 = load i8, i8* %128, align 1, !tbaa !114
  %130 = zext i8 %129 to i32
  %131 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 %130)
  %132 = load %struct.FuncState*, %struct.FuncState** %117, align 8, !tbaa !34
  call void @luaK_posfix(%struct.FuncState* %132, i32 %119, %struct.expdesc* %1, %struct.expdesc* nonnull %4, i32 %126) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %115) #7
  %133 = icmp eq i32 %131, 21
  br i1 %133, label %134, label %118

; <label>:134:                                    ; preds = %118, %125, %91
  %135 = phi i32 [ 21, %91 ], [ 21, %125 ], [ %119, %118 ]
  %136 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !tbaa !66
  %137 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %136, i64 0, i32 19
  %138 = load i32, i32* %137, align 8, !tbaa !109
  %139 = add i32 %138, -1
  store i32 %139, i32* %137, align 8, !tbaa !109
  ret i32 %135
}

declare hidden void @luaK_prefix(%struct.FuncState*, i32, %struct.expdesc*, i32) local_unnamed_addr #2

declare hidden void @luaK_infix(%struct.FuncState*, i32, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_posfix(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @constructor(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = alloca %struct.ConsControl, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %7 = load i32, i32* %6, align 4, !tbaa !86
  %8 = tail call i32 @luaK_codeABCk(%struct.FuncState* %5, i32 17, i32 0, i32 0, i32 0, i32 0) #7
  %9 = bitcast %struct.ConsControl* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #7
  %10 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 4
  store i32 0, i32* %10, align 8, !tbaa !115
  %11 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 2
  store i32 0, i32* %11, align 8, !tbaa !117
  %12 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 3
  store i32 0, i32* %12, align 4, !tbaa !118
  %13 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 1
  store %struct.expdesc* %1, %struct.expdesc** %13, align 8, !tbaa !119
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
  tail call void @luaK_exp2nextreg(%struct.FuncState* %25, %struct.expdesc* %1) #7
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %27 = load i32, i32* %26, align 8, !tbaa !63
  %28 = icmp eq i32 %27, 123
  br i1 %28, label %30, label %29

; <label>:29:                                     ; preds = %2
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 123) #8
  unreachable

; <label>:30:                                     ; preds = %2
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %31 = load i32, i32* %26, align 8, !tbaa !63
  %32 = icmp eq i32 %31, 125
  br i1 %32, label %74, label %33

; <label>:33:                                     ; preds = %30
  br label %40

; <label>:34:                                     ; preds = %71
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  br label %35

; <label>:35:                                     ; preds = %34, %73
  %36 = load i32, i32* %26, align 8, !tbaa !63
  %37 = icmp eq i32 %36, 125
  br i1 %37, label %74, label %38

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %22, align 8, !tbaa !120
  br label %40

; <label>:40:                                     ; preds = %33, %38
  %41 = phi i32 [ %39, %38 ], [ 0, %33 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

; <label>:43:                                     ; preds = %40
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %19) #7
  store i32 0, i32* %22, align 8, !tbaa !120
  %44 = load i32, i32* %10, align 8, !tbaa !115
  %45 = icmp eq i32 %44, 50
  br i1 %45, label %46, label %52

; <label>:46:                                     ; preds = %43
  %47 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !tbaa !119
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %47, i64 0, i32 1
  %49 = bitcast %union.anon.7* %48 to i32*
  %50 = load i32, i32* %49, align 8, !tbaa !11
  %51 = load i32, i32* %12, align 4, !tbaa !118
  call void @luaK_setlist(%struct.FuncState* %5, i32 %50, i32 %51, i32 50) #7
  store i32 0, i32* %10, align 8, !tbaa !115
  br label %52

; <label>:52:                                     ; preds = %40, %43, %46
  %53 = load i32, i32* %26, align 8, !tbaa !63
  switch i32 %53, label %65 [
    i32 292, label %54
    i32 91, label %64
  ]

; <label>:54:                                     ; preds = %52
  %55 = call i32 @luaX_lookahead(%struct.LexState* nonnull %0) #7
  %56 = icmp eq i32 %55, 61
  br i1 %56, label %63, label %57

; <label>:57:                                     ; preds = %54
  %58 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %19, i32 0) #7
  %59 = load i32, i32* %12, align 4, !tbaa !118
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4, !tbaa !118
  %61 = load i32, i32* %10, align 8, !tbaa !115
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 8, !tbaa !115
  br label %71

; <label>:63:                                     ; preds = %54
  call fastcc void @recfield(%struct.LexState* nonnull %0, %struct.ConsControl* nonnull %3) #7
  br label %71

; <label>:64:                                     ; preds = %52
  call fastcc void @recfield(%struct.LexState* nonnull %0, %struct.ConsControl* nonnull %3) #7
  br label %71

; <label>:65:                                     ; preds = %52
  %66 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %19, i32 0) #7
  %67 = load i32, i32* %12, align 4, !tbaa !118
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4, !tbaa !118
  %69 = load i32, i32* %10, align 8, !tbaa !115
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 8, !tbaa !115
  br label %71

; <label>:71:                                     ; preds = %57, %63, %64, %65
  %72 = load i32, i32* %26, align 8, !tbaa !63
  switch i32 %72, label %74 [
    i32 44, label %34
    i32 59, label %73
  ]

; <label>:73:                                     ; preds = %71
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  br label %35

; <label>:74:                                     ; preds = %35, %71, %30
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 125, i32 123, i32 %7)
  %75 = load i32, i32* %10, align 8, !tbaa !115
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %96, label %77

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* %22, align 8, !tbaa !120
  switch i32 %78, label %87 [
    i32 16, label %79
    i32 17, label %79
    i32 0, label %89
  ]

; <label>:79:                                     ; preds = %77, %77
  call void @luaK_setreturns(%struct.FuncState* %5, %struct.expdesc* nonnull %19, i32 -1) #7
  %80 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !tbaa !119
  %81 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %80, i64 0, i32 1
  %82 = bitcast %union.anon.7* %81 to i32*
  %83 = load i32, i32* %82, align 8, !tbaa !11
  %84 = load i32, i32* %12, align 4, !tbaa !118
  call void @luaK_setlist(%struct.FuncState* %5, i32 %83, i32 %84, i32 -1) #7
  %85 = load i32, i32* %12, align 4, !tbaa !118
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %12, align 4, !tbaa !118
  br label %96

; <label>:87:                                     ; preds = %77
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %19) #7
  %88 = load i32, i32* %10, align 8, !tbaa !115
  br label %89

; <label>:89:                                     ; preds = %87, %77
  %90 = phi i32 [ %75, %77 ], [ %88, %87 ]
  %91 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !tbaa !119
  %92 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %91, i64 0, i32 1
  %93 = bitcast %union.anon.7* %92 to i32*
  %94 = load i32, i32* %93, align 8, !tbaa !11
  %95 = load i32, i32* %12, align 4, !tbaa !118
  call void @luaK_setlist(%struct.FuncState* %5, i32 %94, i32 %95, i32 %90) #7
  br label %96

; <label>:96:                                     ; preds = %74, %79, %89
  %97 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0
  %98 = load %struct.Proto*, %struct.Proto** %97, align 8, !tbaa !19
  %99 = getelementptr inbounds %struct.Proto, %struct.Proto* %98, i64 0, i32 16
  %100 = load i32*, i32** %99, align 8, !tbaa !75
  %101 = sext i32 %8 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4, !tbaa !87
  %104 = and i32 %103, -16711681
  %105 = load i32, i32* %12, align 4, !tbaa !118
  %106 = call i32 @luaO_int2fb(i32 %105) #7
  %107 = shl i32 %106, 16
  %108 = and i32 %107, 16711680
  %109 = or i32 %108, %104
  %110 = load %struct.Proto*, %struct.Proto** %97, align 8, !tbaa !19
  %111 = getelementptr inbounds %struct.Proto, %struct.Proto* %110, i64 0, i32 16
  %112 = load i32*, i32** %111, align 8, !tbaa !75
  %113 = getelementptr inbounds i32, i32* %112, i64 %101
  store i32 %109, i32* %113, align 4, !tbaa !87
  %114 = and i32 %109, 16777215
  %115 = load i32, i32* %11, align 8, !tbaa !117
  %116 = call i32 @luaO_int2fb(i32 %115) #7
  %117 = shl i32 %116, 24
  %118 = or i32 %117, %114
  %119 = load %struct.Proto*, %struct.Proto** %97, align 8, !tbaa !19
  %120 = getelementptr inbounds %struct.Proto, %struct.Proto* %119, i64 0, i32 16
  %121 = load i32*, i32** %120, align 8, !tbaa !75
  %122 = getelementptr inbounds i32, i32* %121, i64 %101
  store i32 %118, i32* %122, align 4, !tbaa !87
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @body(%struct.LexState*, %struct.expdesc*, i32, i32) unnamed_addr #0 {
  %5 = alloca %struct.FuncState, align 8
  %6 = alloca %struct.BlockCnt, align 8
  %7 = bitcast %struct.FuncState* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %7) #7
  %8 = bitcast %struct.BlockCnt* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #7
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %10 = load %struct.lua_State*, %struct.lua_State** %9, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %12 = load %struct.FuncState*, %struct.FuncState** %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i64 0, i32 0
  %14 = load %struct.Proto*, %struct.Proto** %13, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i64 0, i32 8
  %16 = load i32, i32* %15, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i64 0, i32 10
  %18 = load i32, i32* %17, align 8, !tbaa !121
  %19 = icmp slt i32 %16, %18
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i64 0, i32 17
  br i1 %19, label %69, label %21

; <label>:21:                                     ; preds = %4
  %22 = bitcast %struct.Proto*** %20 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !79
  %24 = tail call i8* @luaM_growaux_(%struct.lua_State* %10, i8* %23, i32 %16, i32* nonnull %17, i32 8, i32 131071, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #7
  store i8* %24, i8** %22, align 8, !tbaa !79
  %25 = load i32, i32* %17, align 8, !tbaa !121
  %26 = icmp slt i32 %18, %25
  br i1 %26, label %27, label %69

; <label>:27:                                     ; preds = %21
  %28 = bitcast i8* %24 to %struct.Proto**
  %29 = sext i32 %18 to i64
  %30 = sext i32 %25 to i64
  %31 = add nsw i64 %29, 1
  %32 = getelementptr inbounds %struct.Proto*, %struct.Proto** %28, i64 %29
  store %struct.Proto* null, %struct.Proto** %32, align 8, !tbaa !94
  %33 = icmp slt i64 %31, %30
  br i1 %33, label %34, label %69

; <label>:34:                                     ; preds = %27
  %35 = add nsw i64 %30, 3
  %36 = sub nsw i64 %35, %29
  %37 = add nsw i64 %30, -2
  %38 = sub nsw i64 %37, %29
  %39 = and i64 %36, 3
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %50, label %41

; <label>:41:                                     ; preds = %34
  br label %42

; <label>:42:                                     ; preds = %42, %41
  %43 = phi i64 [ %46, %42 ], [ %31, %41 ]
  %44 = phi i64 [ %48, %42 ], [ %39, %41 ]
  %45 = load %struct.Proto**, %struct.Proto*** %20, align 8, !tbaa !79
  %46 = add nsw i64 %43, 1
  %47 = getelementptr inbounds %struct.Proto*, %struct.Proto** %45, i64 %43
  store %struct.Proto* null, %struct.Proto** %47, align 8, !tbaa !94
  %48 = add i64 %44, -1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %42, !llvm.loop !122

; <label>:50:                                     ; preds = %42, %34
  %51 = phi i64 [ %31, %34 ], [ %46, %42 ]
  %52 = icmp ult i64 %38, 3
  br i1 %52, label %69, label %53

; <label>:53:                                     ; preds = %50
  br label %54

; <label>:54:                                     ; preds = %54, %53
  %55 = phi i64 [ %51, %53 ], [ %66, %54 ]
  %56 = load %struct.Proto**, %struct.Proto*** %20, align 8, !tbaa !79
  %57 = add nsw i64 %55, 1
  %58 = getelementptr inbounds %struct.Proto*, %struct.Proto** %56, i64 %55
  store %struct.Proto* null, %struct.Proto** %58, align 8, !tbaa !94
  %59 = load %struct.Proto**, %struct.Proto*** %20, align 8, !tbaa !79
  %60 = add nsw i64 %55, 2
  %61 = getelementptr inbounds %struct.Proto*, %struct.Proto** %59, i64 %57
  store %struct.Proto* null, %struct.Proto** %61, align 8, !tbaa !94
  %62 = load %struct.Proto**, %struct.Proto*** %20, align 8, !tbaa !79
  %63 = add nsw i64 %55, 3
  %64 = getelementptr inbounds %struct.Proto*, %struct.Proto** %62, i64 %60
  store %struct.Proto* null, %struct.Proto** %64, align 8, !tbaa !94
  %65 = load %struct.Proto**, %struct.Proto*** %20, align 8, !tbaa !79
  %66 = add nsw i64 %55, 4
  %67 = getelementptr inbounds %struct.Proto*, %struct.Proto** %65, i64 %63
  store %struct.Proto* null, %struct.Proto** %67, align 8, !tbaa !94
  %68 = icmp eq i64 %66, %30
  br i1 %68, label %69, label %54

; <label>:69:                                     ; preds = %50, %54, %27, %21, %4
  %70 = tail call %struct.Proto* @luaF_newproto(%struct.lua_State* %10) #7
  %71 = load %struct.Proto**, %struct.Proto*** %20, align 8, !tbaa !79
  %72 = load i32, i32* %15, align 8, !tbaa !43
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %15, align 8, !tbaa !43
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds %struct.Proto*, %struct.Proto** %71, i64 %74
  store %struct.Proto* %70, %struct.Proto** %75, align 8, !tbaa !94
  %76 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i64 0, i32 2
  %77 = load i8, i8* %76, align 1, !tbaa !23
  %78 = and i8 %77, 32
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %88, label %80

; <label>:80:                                     ; preds = %69
  %81 = getelementptr inbounds %struct.Proto, %struct.Proto* %70, i64 0, i32 2
  %82 = load i8, i8* %81, align 1, !tbaa !23
  %83 = and i8 %82, 24
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %88, label %85

; <label>:85:                                     ; preds = %80
  %86 = bitcast %struct.Proto* %14 to %struct.GCObject*
  %87 = bitcast %struct.Proto* %70 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* %10, %struct.GCObject* %86, %struct.GCObject* %87) #7
  br label %88

; <label>:88:                                     ; preds = %69, %80, %85
  %89 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0
  store %struct.Proto* %70, %struct.Proto** %89, align 8, !tbaa !19
  %90 = getelementptr inbounds %struct.Proto, %struct.Proto* %70, i64 0, i32 13
  store i32 %3, i32* %90, align 4, !tbaa !38
  %91 = bitcast %struct.FuncState** %11 to i64*
  %92 = load i64, i64* %91, align 8, !tbaa !34
  %93 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 1
  %94 = bitcast %struct.FuncState** %93 to i64*
  store i64 %92, i64* %94, align 8, !tbaa !35
  %95 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 2
  store %struct.LexState* %0, %struct.LexState** %95, align 8, !tbaa !36
  store %struct.FuncState* %5, %struct.FuncState** %11, align 8, !tbaa !34
  %96 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 4
  store i32 0, i32* %96, align 8, !tbaa !37
  %97 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 6
  store i32 %3, i32* %97, align 8, !tbaa !39
  %98 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 5
  store i32 0, i32* %98, align 4, !tbaa !40
  %99 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 7
  store i32 0, i32* %99, align 4, !tbaa !41
  %100 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 9
  store i32 0, i32* %100, align 4, !tbaa !42
  %101 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 8
  store i32 0, i32* %101, align 8, !tbaa !43
  %102 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 12
  %103 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %104 = bitcast i16* %102 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %104, i8 0, i64 7, i32 8, i1 false) #7
  %105 = load %struct.Dyndata*, %struct.Dyndata** %103, align 8, !tbaa !27
  %106 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %105, i64 0, i32 0, i32 1
  %107 = load i32, i32* %106, align 8, !tbaa !33
  %108 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 10
  store i32 %107, i32* %108, align 8, !tbaa !44
  %109 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %105, i64 0, i32 2, i32 1
  %110 = load i32, i32* %109, align 8, !tbaa !28
  %111 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 11
  store i32 %110, i32* %111, align 4, !tbaa !45
  %112 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 3
  %113 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 11
  %114 = bitcast %struct.TString** %113 to i64*
  %115 = load i64, i64* %114, align 8, !tbaa !46
  %116 = getelementptr inbounds %struct.Proto, %struct.Proto* %70, i64 0, i32 22
  %117 = bitcast %struct.TString** %116 to i64*
  store i64 %115, i64* %117, align 8, !tbaa !21
  %118 = getelementptr inbounds %struct.Proto, %struct.Proto* %70, i64 0, i32 5
  store i8 2, i8* %118, align 4, !tbaa !47
  %119 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 5
  store i8 0, i8* %119, align 2, !tbaa !48
  %120 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 3
  store i8 0, i8* %120, align 8, !tbaa !50
  %121 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 1
  store i32 %110, i32* %121, align 8, !tbaa !51
  %122 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %105, i64 0, i32 1, i32 1
  %123 = load i32, i32* %122, align 8, !tbaa !32
  %124 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 2
  store i32 %123, i32* %124, align 4, !tbaa !52
  %125 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 4
  store i8 0, i8* %125, align 1, !tbaa !53
  %126 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 6
  store i8 0, i8* %126, align 1, !tbaa !54
  %127 = bitcast %struct.BlockCnt* %6 to i64*
  store i64 0, i64* %127, align 8, !tbaa !55
  store %struct.BlockCnt* %6, %struct.BlockCnt** %112, align 8, !tbaa !56
  %128 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %129 = load i32, i32* %128, align 8, !tbaa !63
  %130 = icmp eq i32 %129, 40
  br i1 %130, label %132, label %131

; <label>:131:                                    ; preds = %88
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 40) #8
  unreachable

; <label>:132:                                    ; preds = %88
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %133 = icmp eq i32 %2, 0
  br i1 %133, label %134, label %138

; <label>:134:                                    ; preds = %132
  %135 = load %struct.FuncState*, %struct.FuncState** %11, align 8, !tbaa !34
  %136 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %135, i64 0, i32 0
  %137 = load %struct.Proto*, %struct.Proto** %136, align 8, !tbaa !19
  br label %166

; <label>:138:                                    ; preds = %132
  %139 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 4) #7
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %139)
  %140 = load %struct.FuncState*, %struct.FuncState** %11, align 8, !tbaa !34
  %141 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %140, i64 0, i32 13
  %142 = load i8, i8* %141, align 2, !tbaa !74
  %143 = add i8 %142, 1
  store i8 %143, i8* %141, align 2, !tbaa !74
  %144 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %140, i64 0, i32 4
  %145 = load i32, i32* %144, align 8, !tbaa !37
  %146 = zext i8 %143 to i32
  %147 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %140, i64 0, i32 2
  %148 = load %struct.LexState*, %struct.LexState** %147, align 8, !tbaa !36
  %149 = getelementptr inbounds %struct.LexState, %struct.LexState* %148, i64 0, i32 10
  %150 = load %struct.Dyndata*, %struct.Dyndata** %149, align 8, !tbaa !27
  %151 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %150, i64 0, i32 0, i32 0
  %152 = load %struct.Vardesc*, %struct.Vardesc** %151, align 8, !tbaa !89
  %153 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %140, i64 0, i32 10
  %154 = load i32, i32* %153, align 8, !tbaa !44
  %155 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %140, i64 0, i32 0
  %156 = load %struct.Proto*, %struct.Proto** %155, align 8, !tbaa !19
  %157 = getelementptr inbounds %struct.Proto, %struct.Proto* %156, i64 0, i32 21
  %158 = load %struct.LocVar*, %struct.LocVar** %157, align 8, !tbaa !80
  %159 = add i32 %154, %146
  %160 = add i32 %159, -1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %152, i64 %161, i32 0
  %163 = load i16, i16* %162, align 2, !tbaa !90
  %164 = sext i16 %163 to i64
  %165 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %158, i64 %164, i32 1
  store i32 %145, i32* %165, align 8, !tbaa !92
  br label %166

; <label>:166:                                    ; preds = %134, %138
  %167 = phi %struct.Proto** [ %136, %134 ], [ %155, %138 ]
  %168 = phi %struct.Proto* [ %137, %134 ], [ %156, %138 ]
  %169 = phi %struct.FuncState* [ %135, %134 ], [ %140, %138 ]
  %170 = load i32, i32* %128, align 8, !tbaa !63
  %171 = icmp eq i32 %170, 41
  br i1 %171, label %187, label %172

; <label>:172:                                    ; preds = %166
  %173 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %174 = bitcast %union.SemInfo* %173 to %struct.TString**
  br label %177

; <label>:175:                                    ; preds = %182
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %176 = load i32, i32* %128, align 8, !tbaa !63
  br label %177

; <label>:177:                                    ; preds = %175, %172
  %178 = phi i32 [ %176, %175 ], [ %170, %172 ]
  %179 = phi i32 [ %184, %175 ], [ 0, %172 ]
  switch i32 %178, label %180 [
    i32 292, label %182
    i32 281, label %181
  ]

; <label>:180:                                    ; preds = %177
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0)) #8
  unreachable

; <label>:181:                                    ; preds = %177
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  br label %187

; <label>:182:                                    ; preds = %177
  %183 = load %struct.TString*, %struct.TString** %174, align 8, !tbaa !11
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %183) #7
  %184 = add nuw nsw i32 %179, 1
  %185 = load i32, i32* %128, align 8, !tbaa !63
  %186 = icmp eq i32 %185, 44
  br i1 %186, label %175, label %187

; <label>:187:                                    ; preds = %182, %181, %166
  %188 = phi i32 [ %179, %181 ], [ 0, %166 ], [ %184, %182 ]
  %189 = phi i32 [ 1, %181 ], [ 0, %166 ], [ 0, %182 ]
  %190 = load %struct.FuncState*, %struct.FuncState** %11, align 8, !tbaa !34
  %191 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %190, i64 0, i32 13
  %192 = load i8, i8* %191, align 2, !tbaa !74
  %193 = trunc i32 %188 to i8
  %194 = add i8 %192, %193
  store i8 %194, i8* %191, align 2, !tbaa !74
  %195 = icmp eq i32 %188, 0
  br i1 %195, label %248, label %196

; <label>:196:                                    ; preds = %187
  %197 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %190, i64 0, i32 4
  %198 = load i32, i32* %197, align 8, !tbaa !37
  %199 = zext i8 %194 to i32
  %200 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %190, i64 0, i32 2
  %201 = load %struct.LexState*, %struct.LexState** %200, align 8, !tbaa !36
  %202 = getelementptr inbounds %struct.LexState, %struct.LexState* %201, i64 0, i32 10
  %203 = load %struct.Dyndata*, %struct.Dyndata** %202, align 8, !tbaa !27
  %204 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %203, i64 0, i32 0, i32 0
  %205 = load %struct.Vardesc*, %struct.Vardesc** %204, align 8, !tbaa !89
  %206 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %190, i64 0, i32 10
  %207 = load i32, i32* %206, align 8, !tbaa !44
  %208 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %190, i64 0, i32 0
  %209 = load %struct.Proto*, %struct.Proto** %208, align 8, !tbaa !19
  %210 = getelementptr inbounds %struct.Proto, %struct.Proto* %209, i64 0, i32 21
  %211 = load %struct.LocVar*, %struct.LocVar** %210, align 8, !tbaa !80
  %212 = sext i32 %188 to i64
  %213 = add i32 %207, %199
  %214 = and i32 %188, 1
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %224, label %216

; <label>:216:                                    ; preds = %196
  %217 = sub i32 %213, %188
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %205, i64 %218, i32 0
  %220 = load i16, i16* %219, align 2, !tbaa !90
  %221 = sext i16 %220 to i64
  %222 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %211, i64 %221, i32 1
  store i32 %198, i32* %222, align 8, !tbaa !92
  %223 = add nsw i64 %212, -1
  br label %224

; <label>:224:                                    ; preds = %196, %216
  %225 = phi i64 [ %212, %196 ], [ %223, %216 ]
  %226 = icmp eq i32 %188, 1
  br i1 %226, label %248, label %227

; <label>:227:                                    ; preds = %224
  br label %228

; <label>:228:                                    ; preds = %228, %227
  %229 = phi i64 [ %225, %227 ], [ %245, %228 ]
  %230 = trunc i64 %229 to i32
  %231 = sub i32 %213, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %205, i64 %232, i32 0
  %234 = load i16, i16* %233, align 2, !tbaa !90
  %235 = sext i16 %234 to i64
  %236 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %211, i64 %235, i32 1
  store i32 %198, i32* %236, align 8, !tbaa !92
  %237 = trunc i64 %229 to i32
  %238 = add i32 %237, -1
  %239 = sub i32 %213, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %205, i64 %240, i32 0
  %242 = load i16, i16* %241, align 2, !tbaa !90
  %243 = sext i16 %242 to i64
  %244 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %211, i64 %243, i32 1
  store i32 %198, i32* %244, align 8, !tbaa !92
  %245 = add nsw i64 %229, -2
  %246 = trunc i64 %245 to i32
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %228

; <label>:248:                                    ; preds = %224, %228, %187
  %249 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %169, i64 0, i32 13
  %250 = load i8, i8* %249, align 2, !tbaa !74
  %251 = getelementptr inbounds %struct.Proto, %struct.Proto* %168, i64 0, i32 3
  store i8 %250, i8* %251, align 2, !tbaa !123
  %252 = icmp eq i32 %189, 0
  br i1 %252, label %259, label %253

; <label>:253:                                    ; preds = %248
  %254 = zext i8 %250 to i32
  %255 = load %struct.Proto*, %struct.Proto** %167, align 8, !tbaa !19
  %256 = getelementptr inbounds %struct.Proto, %struct.Proto* %255, i64 0, i32 4
  store i8 1, i8* %256, align 1, !tbaa !57
  %257 = call i32 @luaK_codeABCk(%struct.FuncState* nonnull %169, i32 82, i32 %254, i32 0, i32 0, i32 0) #7
  %258 = load i8, i8* %249, align 2, !tbaa !74
  br label %259

; <label>:259:                                    ; preds = %248, %253
  %260 = phi i8 [ %250, %248 ], [ %258, %253 ]
  %261 = zext i8 %260 to i32
  call void @luaK_reserveregs(%struct.FuncState* nonnull %169, i32 %261) #7
  %262 = load i32, i32* %128, align 8, !tbaa !63
  %263 = icmp eq i32 %262, 41
  br i1 %263, label %265, label %264

; <label>:264:                                    ; preds = %259
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 41) #8
  unreachable

; <label>:265:                                    ; preds = %259
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  br label %266

; <label>:266:                                    ; preds = %268, %265
  %267 = load i32, i32* %128, align 8, !tbaa !63
  switch i32 %267, label %268 [
    i32 260, label %270
    i32 261, label %270
    i32 262, label %270
    i32 289, label %270
    i32 277, label %270
  ]

; <label>:268:                                    ; preds = %266
  %269 = icmp eq i32 %267, 274
  call fastcc void @statement(%struct.LexState* nonnull %0) #7
  br i1 %269, label %270, label %266

; <label>:270:                                    ; preds = %266, %266, %266, %266, %266, %268
  %271 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %272 = load i32, i32* %271, align 4, !tbaa !86
  %273 = load %struct.Proto*, %struct.Proto** %89, align 8, !tbaa !19
  %274 = getelementptr inbounds %struct.Proto, %struct.Proto* %273, i64 0, i32 14
  store i32 %272, i32* %274, align 8, !tbaa !124
  call fastcc void @check_match(%struct.LexState* %0, i32 262, i32 265, i32 %3)
  %275 = load %struct.FuncState*, %struct.FuncState** %11, align 8, !tbaa !34
  %276 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %275, i64 0, i32 1
  %277 = load %struct.FuncState*, %struct.FuncState** %276, align 8, !tbaa !35
  %278 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %277, i64 0, i32 8
  %279 = load i32, i32* %278, align 8, !tbaa !43
  %280 = add nsw i32 %279, -1
  %281 = call i32 @luaK_codeABx(%struct.FuncState* %277, i32 80, i32 0, i32 %280) #7
  %282 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %282, align 8, !tbaa !58
  %283 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %283, align 4, !tbaa !60
  %284 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 15, i32* %284, align 8, !tbaa !61
  %285 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %286 = bitcast %union.anon.7* %285 to i32*
  store i32 %281, i32* %286, align 8, !tbaa !11
  call void @luaK_exp2nextreg(%struct.FuncState* %277, %struct.expdesc* %1) #7
  call fastcc void @close_func(%struct.LexState* %0)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %7) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @suffixedexp(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %8 = load i32, i32* %7, align 4, !tbaa !86
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !63
  switch i32 %10, label %15 [
    i32 40, label %11
    i32 292, label %14
  ]

; <label>:11:                                     ; preds = %2
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %12 = tail call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 0) #7
  tail call fastcc void @check_match(%struct.LexState* nonnull %0, i32 41, i32 40, i32 %8) #7
  %13 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  tail call void @luaK_dischargevars(%struct.FuncState* %13, %struct.expdesc* %1) #7
  br label %16

; <label>:14:                                     ; preds = %2
  tail call fastcc void @singlevar(%struct.LexState* nonnull %0, %struct.expdesc* %1) #7
  br label %16

; <label>:15:                                     ; preds = %2
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0)) #8
  unreachable

; <label>:16:                                     ; preds = %11, %14
  %17 = bitcast %struct.expdesc* %3 to i8*
  %18 = bitcast %struct.expdesc* %4 to i8*
  %19 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %20 = bitcast %union.SemInfo* %19 to %struct.TString**
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1
  %25 = bitcast %union.anon.7* %24 to i32*
  br label %26

; <label>:26:                                     ; preds = %45, %16
  %27 = load i32, i32* %9, align 8, !tbaa !63
  switch i32 %27, label %46 [
    i32 46, label %28
    i32 91, label %29
    i32 58, label %36
    i32 40, label %44
    i32 293, label %44
    i32 123, label %44
  ]

; <label>:28:                                     ; preds = %26
  call fastcc void @fieldsel(%struct.LexState* nonnull %0, %struct.expdesc* %1)
  br label %45

; <label>:29:                                     ; preds = %26
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %17) #7
  call void @luaK_exp2anyregup(%struct.FuncState* %6, %struct.expdesc* %1) #7
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %30 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3, i32 0) #7
  %31 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  call void @luaK_exp2val(%struct.FuncState* %31, %struct.expdesc* nonnull %3) #7
  %32 = load i32, i32* %9, align 8, !tbaa !63
  %33 = icmp eq i32 %32, 93
  br i1 %33, label %35, label %34

; <label>:34:                                     ; preds = %29
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 93) #8
  unreachable

; <label>:35:                                     ; preds = %29
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  call void @luaK_indexed(%struct.FuncState* %6, %struct.expdesc* %1, %struct.expdesc* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #7
  br label %45

; <label>:36:                                     ; preds = %26
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %18) #7
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %37 = load i32, i32* %9, align 8, !tbaa !63
  %38 = icmp eq i32 %37, 292
  br i1 %38, label %40, label %39

; <label>:39:                                     ; preds = %36
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #8
  unreachable

; <label>:40:                                     ; preds = %36
  %41 = load %struct.TString*, %struct.TString** %20, align 8, !tbaa !11
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %42 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  %43 = call i32 @luaK_stringK(%struct.FuncState* %42, %struct.TString* %41) #7
  store i32 -1, i32* %21, align 8, !tbaa !58
  store i32 -1, i32* %22, align 4, !tbaa !60
  store i32 4, i32* %23, align 8, !tbaa !61
  store i32 %43, i32* %25, align 8, !tbaa !11
  call void @luaK_self(%struct.FuncState* %6, %struct.expdesc* %1, %struct.expdesc* nonnull %4) #7
  call fastcc void @funcargs(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 %8)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %18) #7
  br label %45

; <label>:44:                                     ; preds = %26, %26, %26
  call void @luaK_exp2nextreg(%struct.FuncState* %6, %struct.expdesc* %1) #7
  call fastcc void @funcargs(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 %8)
  br label %45

; <label>:45:                                     ; preds = %44, %40, %35, %28
  br label %26

; <label>:46:                                     ; preds = %26
  ret void
}

declare hidden i32 @luaK_stringK(%struct.FuncState*, %struct.TString*) local_unnamed_addr #2

declare hidden void @luaK_exp2nextreg(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

declare hidden i32 @luaO_int2fb(i32) local_unnamed_addr #2

declare hidden void @luaK_setlist(%struct.FuncState*, i32, i32, i32) local_unnamed_addr #2

declare hidden i32 @luaX_lookahead(%struct.LexState*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @recfield(%struct.LexState*, %struct.ConsControl* nocapture) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca %struct.expdesc, align 8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %7 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i64 0, i32 15
  %9 = load i8, i8* %8, align 4, !tbaa !88
  %10 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #7
  %11 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #7
  %12 = bitcast %struct.expdesc* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #7
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %14 = load i32, i32* %13, align 8, !tbaa !63
  %15 = icmp eq i32 %14, 292
  br i1 %15, label %16, label %27

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %18 = bitcast %union.SemInfo* %17 to %struct.TString**
  %19 = load %struct.TString*, %struct.TString** %18, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %20 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  %21 = tail call i32 @luaK_stringK(%struct.FuncState* %20, %struct.TString* %19) #7
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2
  store i32 -1, i32* %22, align 8, !tbaa !58
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3
  store i32 -1, i32* %23, align 4, !tbaa !60
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  store i32 4, i32* %24, align 8, !tbaa !61
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1
  %26 = bitcast %union.anon.7* %25 to i32*
  store i32 %21, i32* %26, align 8, !tbaa !11
  br label %34

; <label>:27:                                     ; preds = %2
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %28 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #7
  %29 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  call void @luaK_exp2val(%struct.FuncState* %29, %struct.expdesc* nonnull %4) #7
  %30 = load i32, i32* %13, align 8, !tbaa !63
  %31 = icmp eq i32 %30, 93
  br i1 %31, label %33, label %32

; <label>:32:                                     ; preds = %27
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 93) #8
  unreachable

; <label>:33:                                     ; preds = %27
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  br label %34

; <label>:34:                                     ; preds = %33, %16
  %35 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 2
  %36 = load i32, i32* %35, align 8, !tbaa !117
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8, !tbaa !117
  %38 = load i32, i32* %13, align 8, !tbaa !63
  %39 = icmp eq i32 %38, 61
  br i1 %39, label %41, label %40

; <label>:40:                                     ; preds = %34
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 61) #8
  unreachable

; <label>:41:                                     ; preds = %34
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %42 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 1
  %43 = bitcast %struct.expdesc** %42 to i8**
  %44 = load i8*, i8** %43, align 8, !tbaa !119
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %10, i8* %44, i64 24, i32 8, i1 false), !tbaa.struct !125
  call void @luaK_indexed(%struct.FuncState* %7, %struct.expdesc* nonnull %3, %struct.expdesc* nonnull %4) #7
  %45 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %5, i32 0) #7
  call void @luaK_storevar(%struct.FuncState* %7, %struct.expdesc* nonnull %3, %struct.expdesc* nonnull %5) #7
  store i8 %9, i8* %8, align 4, !tbaa !88
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #7
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

declare hidden void @luaK_indexed(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_storevar(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_exp2val(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_setreturns(%struct.FuncState*, %struct.expdesc*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @new_localvar(%struct.LexState* nocapture readonly, %struct.TString*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %6 = load %struct.Dyndata*, %struct.Dyndata** %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 0
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 11
  %10 = load i32, i32* %9, align 4, !tbaa !131
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %12 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 21
  %14 = bitcast %struct.LocVar** %13 to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !80
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 12
  %17 = load i16, i16* %16, align 8, !tbaa !81
  %18 = sext i16 %17 to i32
  %19 = tail call i8* @luaM_growaux_(%struct.lua_State* %12, i8* %15, i32 %18, i32* nonnull %9, i32 16, i32 32767, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #7
  store i8* %19, i8** %14, align 8, !tbaa !80
  %20 = load i32, i32* %9, align 4, !tbaa !131
  %21 = icmp slt i32 %10, %20
  %22 = bitcast i8* %19 to %struct.LocVar*
  br i1 %21, label %23, label %35

; <label>:23:                                     ; preds = %2
  %24 = sext i32 %10 to i64
  %25 = sext i32 %20 to i64
  %26 = add nsw i64 %24, 1
  %27 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %22, i64 %24, i32 0
  store %struct.TString* null, %struct.TString** %27, align 8, !tbaa !132
  %28 = icmp slt i64 %26, %25
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %23
  br label %30

; <label>:30:                                     ; preds = %29, %30
  %31 = phi i64 [ %32, %30 ], [ %26, %29 ]
  %32 = add nsw i64 %31, 1
  %33 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %22, i64 %31, i32 0
  store %struct.TString* null, %struct.TString** %33, align 8, !tbaa !132
  %34 = icmp eq i64 %32, %25
  br i1 %34, label %35, label %30, !llvm.loop !133

; <label>:35:                                     ; preds = %30, %23, %2
  %36 = load i16, i16* %16, align 8, !tbaa !81
  %37 = sext i16 %36 to i64
  %38 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %22, i64 %37, i32 0
  store %struct.TString* %1, %struct.TString** %38, align 8, !tbaa !132
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 2
  %40 = load i8, i8* %39, align 1, !tbaa !23
  %41 = and i8 %40, 32
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %53, label %43

; <label>:43:                                     ; preds = %35
  %44 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 2
  %45 = load i8, i8* %44, align 1, !tbaa !24
  %46 = and i8 %45, 24
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %53, label %48

; <label>:48:                                     ; preds = %43
  %49 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !66
  %50 = bitcast %struct.Proto* %8 to %struct.GCObject*
  %51 = bitcast %struct.TString* %1 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* %49, %struct.GCObject* %50, %struct.GCObject* %51) #7
  %52 = load i16, i16* %16, align 8, !tbaa !81
  br label %53

; <label>:53:                                     ; preds = %35, %43, %48
  %54 = phi i16 [ %36, %43 ], [ %36, %35 ], [ %52, %48 ]
  %55 = add i16 %54, 1
  store i16 %55, i16* %16, align 8, !tbaa !81
  %56 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %6, i64 0, i32 0, i32 1
  %57 = load i32, i32* %56, align 8, !tbaa !33
  %58 = add nsw i32 %57, 1
  %59 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 10
  %60 = load i32, i32* %59, align 8, !tbaa !44
  %61 = sub nsw i32 %58, %60
  %62 = icmp sgt i32 %61, 200
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %53
  tail call fastcc void @errorlimit(%struct.FuncState* nonnull %4, i32 200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #8
  unreachable

; <label>:64:                                     ; preds = %53
  %65 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !66
  %66 = bitcast %struct.Dyndata* %6 to i8**
  %67 = load i8*, i8** %66, align 8, !tbaa !89
  %68 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %6, i64 0, i32 0, i32 2
  %69 = tail call i8* @luaM_growaux_(%struct.lua_State* %65, i8* %67, i32 %58, i32* nonnull %68, i32 2, i32 2147483647, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #7
  %70 = bitcast i8* %69 to %struct.Vardesc*
  store i8* %69, i8** %66, align 8, !tbaa !89
  %71 = load i32, i32* %56, align 8, !tbaa !33
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %56, align 8, !tbaa !33
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %70, i64 %73, i32 0
  store i16 %54, i16* %74, align 2, !tbaa !90
  ret void
}

declare hidden %struct.TString* @luaX_newstring(%struct.LexState*, i8*, i64) local_unnamed_addr #2

; Function Attrs: norecurse nounwind readonly uwtable
define internal fastcc %struct.LocVar* @getlocvar(%struct.FuncState* nocapture readonly, i32) unnamed_addr #5 {
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
  %18 = load %struct.LocVar*, %struct.LocVar** %17, align 8, !tbaa !80
  %19 = sext i16 %14 to i64
  %20 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %18, i64 %19
  ret %struct.LocVar* %20
}

declare hidden void @luaK_reserveregs(%struct.FuncState*, i32) local_unnamed_addr #2

declare hidden i32 @luaK_codeABx(%struct.FuncState*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @fieldsel(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !34
  %6 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #7
  tail call void @luaK_exp2anyregup(%struct.FuncState* %5, %struct.expdesc* %1) #7
  tail call void @luaX_next(%struct.LexState* %0) #7
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !63
  %9 = icmp eq i32 %8, 292
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %2
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #8
  unreachable

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %13 = bitcast %union.SemInfo* %12 to %struct.TString**
  %14 = load %struct.TString*, %struct.TString** %13, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %15 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !34
  %16 = tail call i32 @luaK_stringK(%struct.FuncState* %15, %struct.TString* %14) #7
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  store i32 -1, i32* %17, align 8, !tbaa !58
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  store i32 -1, i32* %18, align 4, !tbaa !60
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  store i32 4, i32* %19, align 8, !tbaa !61
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %21 = bitcast %union.anon.7* %20 to i32*
  store i32 %16, i32* %21, align 8, !tbaa !11
  call void @luaK_indexed(%struct.FuncState* %5, %struct.expdesc* %1, %struct.expdesc* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #7
  ret void
}

declare hidden void @luaK_exp2anyregup(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_self(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @funcargs(%struct.LexState*, %struct.expdesc* nocapture, i32) unnamed_addr #0 {
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  %7 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #7
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !63
  switch i32 %9, label %38 [
    i32 40, label %10
    i32 123, label %27
    i32 293, label %28
  ]

; <label>:10:                                     ; preds = %3
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %11 = load i32, i32* %8, align 8, !tbaa !63
  %12 = icmp eq i32 %11, 41
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  store i32 0, i32* %14, align 8, !tbaa !61
  br label %26

; <label>:15:                                     ; preds = %10
  %16 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #7
  %17 = load i32, i32* %8, align 8, !tbaa !63
  %18 = icmp eq i32 %17, 44
  br i1 %18, label %19, label %25

; <label>:19:                                     ; preds = %15
  br label %20

; <label>:20:                                     ; preds = %19, %20
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %21 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %21, %struct.expdesc* nonnull %4) #7
  %22 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #7
  %23 = load i32, i32* %8, align 8, !tbaa !63
  %24 = icmp eq i32 %23, 44
  br i1 %24, label %20, label %25

; <label>:25:                                     ; preds = %20, %15
  call void @luaK_setreturns(%struct.FuncState* %6, %struct.expdesc* nonnull %4, i32 -1) #7
  br label %26

; <label>:26:                                     ; preds = %25, %13
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 41, i32 40, i32 %2)
  br label %39

; <label>:27:                                     ; preds = %3
  call fastcc void @constructor(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4)
  br label %39

; <label>:28:                                     ; preds = %3
  %29 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %30 = bitcast %union.SemInfo* %29 to %struct.TString**
  %31 = load %struct.TString*, %struct.TString** %30, align 8, !tbaa !11
  %32 = tail call i32 @luaK_stringK(%struct.FuncState* %6, %struct.TString* %31) #7
  %33 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2
  store i32 -1, i32* %33, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3
  store i32 -1, i32* %34, align 4, !tbaa !60
  %35 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  store i32 4, i32* %35, align 8, !tbaa !61
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1
  %37 = bitcast %union.anon.7* %36 to i32*
  store i32 %32, i32* %37, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  br label %39

; <label>:38:                                     ; preds = %3
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0)) #8
  unreachable

; <label>:39:                                     ; preds = %28, %27, %26
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %41 = bitcast %union.anon.7* %40 to i32*
  %42 = load i32, i32* %41, align 8, !tbaa !11
  %43 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  %44 = load i32, i32* %43, align 8, !tbaa !61
  switch i32 %44, label %45 [
    i32 16, label %51
    i32 17, label %51
    i32 0, label %46
  ]

; <label>:45:                                     ; preds = %39
  call void @luaK_exp2nextreg(%struct.FuncState* %6, %struct.expdesc* nonnull %4) #7
  br label %46

; <label>:46:                                     ; preds = %39, %45
  %47 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 15
  %48 = load i8, i8* %47, align 4, !tbaa !88
  %49 = zext i8 %48 to i32
  %50 = sub i32 %49, %42
  br label %51

; <label>:51:                                     ; preds = %39, %39, %46
  %52 = phi i32 [ %50, %46 ], [ 0, %39 ], [ 0, %39 ]
  %53 = call i32 @luaK_codeABCk(%struct.FuncState* %6, i32 69, i32 %42, i32 %52, i32 2, i32 0) #7
  %54 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %54, align 8, !tbaa !58
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %55, align 4, !tbaa !60
  %56 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 16, i32* %56, align 8, !tbaa !61
  store i32 %53, i32* %41, align 8, !tbaa !11
  call void @luaK_fixline(%struct.FuncState* %6, i32 %2) #7
  %57 = trunc i32 %42 to i8
  %58 = add i8 %57, 1
  %59 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 15
  store i8 %58, i8* %59, align 4, !tbaa !88
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #7
  ret void
}

declare hidden void @luaK_dischargevars(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @singlevar(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !63
  %6 = icmp eq i32 %5, 292
  br i1 %6, label %8, label %7

; <label>:7:                                      ; preds = %2
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #8
  unreachable

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %10 = bitcast %union.SemInfo* %9 to %struct.TString**
  %11 = load %struct.TString*, %struct.TString** %10, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %13 = load %struct.FuncState*, %struct.FuncState** %12, align 8, !tbaa !34
  tail call fastcc void @singlevaraux(%struct.FuncState* %13, %struct.TString* %11, %struct.expdesc* %1, i32 1)
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %15 = load i32, i32* %14, align 8, !tbaa !61
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

; <label>:17:                                     ; preds = %8
  %18 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %18) #7
  %19 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 12
  %20 = load %struct.TString*, %struct.TString** %19, align 8, !tbaa !62
  tail call fastcc void @singlevaraux(%struct.FuncState* %13, %struct.TString* %20, %struct.expdesc* nonnull %1, i32 1)
  %21 = load %struct.FuncState*, %struct.FuncState** %12, align 8, !tbaa !34
  %22 = tail call i32 @luaK_stringK(%struct.FuncState* %21, %struct.TString* %11) #7
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  store i32 -1, i32* %23, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  store i32 -1, i32* %24, align 4, !tbaa !60
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  store i32 4, i32* %25, align 8, !tbaa !61
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %27 = bitcast %union.anon.7* %26 to i32*
  store i32 %22, i32* %27, align 8, !tbaa !11
  call void @luaK_indexed(%struct.FuncState* %13, %struct.expdesc* nonnull %1, %struct.expdesc* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %18) #7
  br label %28

; <label>:28:                                     ; preds = %17, %8
  ret void
}

; Function Attrs: nounwind uwtable
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
  %14 = load i8, i8* %13, align 2, !tbaa !74
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
  %31 = load %struct.LocVar*, %struct.LocVar** %30, align 8, !tbaa !80
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
  %44 = load %struct.TString*, %struct.TString** %43, align 8, !tbaa !132
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
  %60 = load %struct.BlockCnt*, %struct.BlockCnt** %59, align 8, !tbaa !94
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
  store i8 1, i8* %68, align 2, !tbaa !95
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
  tail call fastcc void @singlevaraux(%struct.FuncState* %93, %struct.TString* %1, %struct.expdesc* %2, i32 0)
  %94 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %95 = load i32, i32* %94, align 8, !tbaa !61
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %106, label %97

; <label>:97:                                     ; preds = %91
  %98 = tail call fastcc i32 @newupvalue(%struct.FuncState* nonnull %0, %struct.TString* %1, %struct.expdesc* nonnull %2)
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

declare hidden void @luaK_fixline(%struct.FuncState*, i32) local_unnamed_addr #2

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @createlabel(%struct.LexState*, %struct.TString*, i32, i32) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %8 = load %struct.Dyndata*, %struct.Dyndata** %7, align 8, !tbaa !27
  %9 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %8, i64 0, i32 2
  %10 = tail call i32 @luaK_getlabel(%struct.FuncState* %6) #7
  %11 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %8, i64 0, i32 2, i32 1
  %12 = load i32, i32* %11, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %14 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !tbaa !66
  %15 = bitcast %struct.Labellist* %9 to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !102
  %17 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %8, i64 0, i32 2, i32 2
  %18 = tail call i8* @luaM_growaux_(%struct.lua_State* %14, i8* %16, i32 %12, i32* nonnull %17, i32 24, i32 32767, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #7
  %19 = bitcast i8* %18 to %struct.Labeldesc*
  store i8* %18, i8** %15, align 8, !tbaa !102
  %20 = sext i32 %12 to i64
  %21 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %19, i64 %20, i32 0
  store %struct.TString* %1, %struct.TString** %21, align 8, !tbaa !97
  %22 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %19, i64 %20, i32 2
  store i32 %2, i32* %22, align 4, !tbaa !100
  %23 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %23, i64 0, i32 13
  %25 = load i8, i8* %24, align 2, !tbaa !74
  %26 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %19, i64 %20, i32 3
  store i8 %25, i8* %26, align 8, !tbaa !103
  %27 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %19, i64 %20, i32 4
  store i8 0, i8* %27, align 1, !tbaa !104
  %28 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %19, i64 %20, i32 1
  store i32 %10, i32* %28, align 8, !tbaa !105
  %29 = add nsw i32 %12, 1
  store i32 %29, i32* %11, align 8, !tbaa !101
  %30 = icmp eq i32 %3, 0
  br i1 %30, label %36, label %31

; <label>:31:                                     ; preds = %4
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 3
  %33 = load %struct.BlockCnt*, %struct.BlockCnt** %32, align 8, !tbaa !56
  %34 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %33, i64 0, i32 3
  %35 = load i8, i8* %34, align 8, !tbaa !50
  store i8 %35, i8* %26, align 8, !tbaa !103
  br label %36

; <label>:36:                                     ; preds = %4, %31
  %37 = load %struct.Dyndata*, %struct.Dyndata** %7, align 8, !tbaa !27
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %23, i64 0, i32 3
  %39 = load %struct.BlockCnt*, %struct.BlockCnt** %38, align 8, !tbaa !56
  %40 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %39, i64 0, i32 2
  %41 = load i32, i32* %40, align 4, !tbaa !52
  %42 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %37, i64 0, i32 1, i32 1
  %43 = load i32, i32* %42, align 8, !tbaa !101
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %112

; <label>:45:                                     ; preds = %36
  %46 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %37, i64 0, i32 1, i32 0
  br label %47

; <label>:47:                                     ; preds = %103, %45
  %48 = phi %struct.TString* [ %1, %45 ], [ %104, %103 ]
  %49 = phi i32 [ %43, %45 ], [ %99, %103 ]
  %50 = phi i32 [ 0, %45 ], [ %101, %103 ]
  %51 = phi i32 [ %41, %45 ], [ %100, %103 ]
  %52 = load %struct.Labeldesc*, %struct.Labeldesc** %46, align 8, !tbaa !102
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %52, i64 %53, i32 0
  %55 = load %struct.TString*, %struct.TString** %54, align 8, !tbaa !97
  %56 = icmp eq %struct.TString* %55, %48
  br i1 %56, label %57, label %96

; <label>:57:                                     ; preds = %47
  %58 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %52, i64 %53, i32 4
  %59 = load i8, i8* %58, align 1, !tbaa !104
  %60 = zext i8 %59 to i32
  %61 = or i32 %50, %60
  %62 = load %struct.Dyndata*, %struct.Dyndata** %7, align 8, !tbaa !27
  %63 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %62, i64 0, i32 1, i32 0
  %64 = load %struct.Labeldesc*, %struct.Labeldesc** %63, align 8, !tbaa !102
  %65 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %64, i64 %53, i32 3
  %66 = load i8, i8* %65, align 8, !tbaa !103
  %67 = load i8, i8* %26, align 8, !tbaa !103
  %68 = icmp ult i8 %66, %67
  br i1 %68, label %69, label %71, !prof !134

; <label>:69:                                     ; preds = %57
  %70 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %64, i64 %53
  tail call fastcc void @jumpscopeerror(%struct.LexState* nonnull %0, %struct.Labeldesc* %70) #8
  unreachable

; <label>:71:                                     ; preds = %57
  %72 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  %73 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %64, i64 %53, i32 1
  %74 = load i32, i32* %73, align 8, !tbaa !105
  %75 = load i32, i32* %28, align 8, !tbaa !105
  tail call void @luaK_patchlist(%struct.FuncState* %72, i32 %74, i32 %75) #7
  %76 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %62, i64 0, i32 1, i32 1
  %77 = load i32, i32* %76, align 8, !tbaa !101
  %78 = add nsw i32 %77, -1
  %79 = icmp sgt i32 %78, %51
  br i1 %79, label %80, label %93

; <label>:80:                                     ; preds = %71
  br label %81

; <label>:81:                                     ; preds = %80, %81
  %82 = phi i64 [ %85, %81 ], [ %53, %80 ]
  %83 = load %struct.Labeldesc*, %struct.Labeldesc** %63, align 8, !tbaa !102
  %84 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %83, i64 %82
  %85 = add nsw i64 %82, 1
  %86 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %83, i64 %85
  %87 = bitcast %struct.Labeldesc* %84 to i8*
  %88 = bitcast %struct.Labeldesc* %86 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 24, i32 8, i1 false) #7, !tbaa.struct !135
  %89 = load i32, i32* %76, align 8, !tbaa !101
  %90 = add nsw i32 %89, -1
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %85, %91
  br i1 %92, label %81, label %93

; <label>:93:                                     ; preds = %81, %71
  %94 = phi i32 [ %78, %71 ], [ %90, %81 ]
  store i32 %94, i32* %76, align 8, !tbaa !101
  %95 = load i32, i32* %42, align 8, !tbaa !101
  br label %98

; <label>:96:                                     ; preds = %47
  %97 = add nsw i32 %51, 1
  br label %98

; <label>:98:                                     ; preds = %96, %93
  %99 = phi i32 [ %95, %93 ], [ %49, %96 ]
  %100 = phi i32 [ %51, %93 ], [ %97, %96 ]
  %101 = phi i32 [ %61, %93 ], [ %50, %96 ]
  %102 = icmp slt i32 %100, %99
  br i1 %102, label %103, label %105

; <label>:103:                                    ; preds = %98
  %104 = load %struct.TString*, %struct.TString** %21, align 8, !tbaa !97
  br label %47

; <label>:105:                                    ; preds = %98
  %106 = icmp eq i32 %101, 0
  br i1 %106, label %112, label %107

; <label>:107:                                    ; preds = %105
  %108 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 13
  %109 = load i8, i8* %108, align 2, !tbaa !74
  %110 = zext i8 %109 to i32
  %111 = tail call i32 @luaK_codeABCk(%struct.FuncState* %6, i32 55, i32 %110, i32 0, i32 0, i32 0) #7
  br label %112

; <label>:112:                                    ; preds = %36, %105, %107
  %113 = phi i32 [ 1, %107 ], [ 0, %105 ], [ 0, %36 ]
  ret i32 %113
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @undefgoto(%struct.LexState*, %struct.Labeldesc* nocapture readonly) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 0
  %4 = load %struct.TString*, %struct.TString** %3, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %6 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !tbaa !66
  %7 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #7
  %8 = icmp eq %struct.TString* %4, %7
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !tbaa !66
  br i1 %8, label %10, label %14

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 2
  %12 = load i32, i32* %11, align 4, !tbaa !100
  %13 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %12) #7
  br label %21

; <label>:14:                                     ; preds = %2
  %15 = bitcast %struct.Labeldesc* %1 to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !97
  %17 = getelementptr inbounds i8, i8* %16, i64 24
  %18 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 2
  %19 = load i32, i32* %18, align 4, !tbaa !100
  %20 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i8* nonnull %17, i32 %19) #7
  br label %21

; <label>:21:                                     ; preds = %14, %10
  %22 = phi i8* [ %13, %10 ], [ %20, %14 ]
  tail call void @luaK_semerror(%struct.LexState* nonnull %0, i8* %22) #8
  unreachable
}

declare hidden i32 @luaK_getlabel(%struct.FuncState*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @jumpscopeerror(%struct.LexState*, %struct.Labeldesc* nocapture readonly) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 3
  %6 = load i8, i8* %5, align 8, !tbaa !103
  %7 = zext i8 %6 to i32
  %8 = tail call fastcc %struct.LocVar* @getlocvar(%struct.FuncState* %4, i32 %7)
  %9 = bitcast %struct.LocVar* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !132
  %11 = getelementptr inbounds i8, i8* %10, i64 24
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %13 = load %struct.lua_State*, %struct.lua_State** %12, align 8, !tbaa !66
  %14 = bitcast %struct.Labeldesc* %1 to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !97
  %16 = getelementptr inbounds i8, i8* %15, i64 24
  %17 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 2
  %18 = load i32, i32* %17, align 4, !tbaa !100
  %19 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %13, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %16, i32 %18, i8* nonnull %11) #7
  tail call void @luaK_semerror(%struct.LexState* %0, i8* %19) #8
  unreachable
}

; Function Attrs: noreturn
declare hidden void @luaK_semerror(%struct.LexState*, i8*) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @error_expected(%struct.LexState*, i32) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !tbaa !66
  %5 = tail call i8* @luaX_token2str(%struct.LexState* %0, i32 %1) #7
  %6 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* %5) #7
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* %6) #8
  unreachable
}

declare hidden i8* @luaX_token2str(%struct.LexState*, i32) local_unnamed_addr #2

declare hidden void @luaK_int(%struct.FuncState*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @forbody(%struct.LexState*, i32, i32, i32, i32) unnamed_addr #0 {
  %6 = alloca %struct.BlockCnt, align 8
  %7 = alloca %struct.BlockCnt, align 8
  %8 = bitcast %struct.BlockCnt* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #7
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %10 = load %struct.FuncState*, %struct.FuncState** %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !63
  %13 = icmp eq i32 %12, 259
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %5
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 259) #8
  unreachable

; <label>:15:                                     ; preds = %5
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %16 = sext i32 %4 to i64
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* @forbody.forprep, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !11
  %19 = tail call i32 @luaK_codeABx(%struct.FuncState* %10, i32 %18, i32 %1, i32 0) #7
  %20 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %7, i64 0, i32 5
  store i8 0, i8* %20, align 2, !tbaa !48
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 13
  %22 = load i8, i8* %21, align 2, !tbaa !74
  %23 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %7, i64 0, i32 3
  store i8 %22, i8* %23, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 2
  %25 = load %struct.LexState*, %struct.LexState** %24, align 8, !tbaa !36
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %25, i64 0, i32 10
  %27 = load %struct.Dyndata*, %struct.Dyndata** %26, align 8, !tbaa !27
  %28 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %27, i64 0, i32 2, i32 1
  %29 = load i32, i32* %28, align 8, !tbaa !28
  %30 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %7, i64 0, i32 1
  store i32 %29, i32* %30, align 8, !tbaa !51
  %31 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %27, i64 0, i32 1, i32 1
  %32 = load i32, i32* %31, align 8, !tbaa !32
  %33 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %7, i64 0, i32 2
  store i32 %32, i32* %33, align 4, !tbaa !52
  %34 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %7, i64 0, i32 4
  store i8 0, i8* %34, align 1, !tbaa !53
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 3
  %36 = load %struct.BlockCnt*, %struct.BlockCnt** %35, align 8, !tbaa !56
  %37 = icmp eq %struct.BlockCnt* %36, null
  %38 = ptrtoint %struct.BlockCnt* %36 to i64
  br i1 %37, label %44, label %39

; <label>:39:                                     ; preds = %15
  %40 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %36, i64 0, i32 6
  %41 = load i8, i8* %40, align 1, !tbaa !54
  %42 = icmp ne i8 %41, 0
  %43 = zext i1 %42 to i8
  br label %44

; <label>:44:                                     ; preds = %15, %39
  %45 = phi i8 [ 0, %15 ], [ %43, %39 ]
  %46 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %7, i64 0, i32 6
  store i8 %45, i8* %46, align 1, !tbaa !54
  %47 = bitcast %struct.BlockCnt* %7 to i64*
  store i64 %38, i64* %47, align 8, !tbaa !55
  store %struct.BlockCnt* %7, %struct.BlockCnt** %35, align 8, !tbaa !56
  %48 = load %struct.FuncState*, %struct.FuncState** %9, align 8, !tbaa !34
  %49 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %48, i64 0, i32 13
  %50 = load i8, i8* %49, align 2, !tbaa !74
  %51 = trunc i32 %3 to i8
  %52 = add i8 %50, %51
  store i8 %52, i8* %49, align 2, !tbaa !74
  %53 = icmp eq i32 %3, 0
  br i1 %53, label %106, label %54

; <label>:54:                                     ; preds = %44
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %48, i64 0, i32 4
  %56 = load i32, i32* %55, align 8, !tbaa !37
  %57 = zext i8 %52 to i32
  %58 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %48, i64 0, i32 2
  %59 = load %struct.LexState*, %struct.LexState** %58, align 8, !tbaa !36
  %60 = getelementptr inbounds %struct.LexState, %struct.LexState* %59, i64 0, i32 10
  %61 = load %struct.Dyndata*, %struct.Dyndata** %60, align 8, !tbaa !27
  %62 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %61, i64 0, i32 0, i32 0
  %63 = load %struct.Vardesc*, %struct.Vardesc** %62, align 8, !tbaa !89
  %64 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %48, i64 0, i32 10
  %65 = load i32, i32* %64, align 8, !tbaa !44
  %66 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %48, i64 0, i32 0
  %67 = load %struct.Proto*, %struct.Proto** %66, align 8, !tbaa !19
  %68 = getelementptr inbounds %struct.Proto, %struct.Proto* %67, i64 0, i32 21
  %69 = load %struct.LocVar*, %struct.LocVar** %68, align 8, !tbaa !80
  %70 = sext i32 %3 to i64
  %71 = add i32 %65, %57
  %72 = and i32 %3, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %82, label %74

; <label>:74:                                     ; preds = %54
  %75 = sub i32 %71, %3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %63, i64 %76, i32 0
  %78 = load i16, i16* %77, align 2, !tbaa !90
  %79 = sext i16 %78 to i64
  %80 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %69, i64 %79, i32 1
  store i32 %56, i32* %80, align 8, !tbaa !92
  %81 = add nsw i64 %70, -1
  br label %82

; <label>:82:                                     ; preds = %54, %74
  %83 = phi i64 [ %70, %54 ], [ %81, %74 ]
  %84 = icmp eq i32 %3, 1
  br i1 %84, label %106, label %85

; <label>:85:                                     ; preds = %82
  br label %86

; <label>:86:                                     ; preds = %86, %85
  %87 = phi i64 [ %83, %85 ], [ %103, %86 ]
  %88 = trunc i64 %87 to i32
  %89 = sub i32 %71, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %63, i64 %90, i32 0
  %92 = load i16, i16* %91, align 2, !tbaa !90
  %93 = sext i16 %92 to i64
  %94 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %69, i64 %93, i32 1
  store i32 %56, i32* %94, align 8, !tbaa !92
  %95 = trunc i64 %87 to i32
  %96 = add i32 %95, -1
  %97 = sub i32 %71, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %63, i64 %98, i32 0
  %100 = load i16, i16* %99, align 2, !tbaa !90
  %101 = sext i16 %100 to i64
  %102 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %69, i64 %101, i32 1
  store i32 %56, i32* %102, align 8, !tbaa !92
  %103 = add nsw i64 %87, -2
  %104 = trunc i64 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %86

; <label>:106:                                    ; preds = %82, %86, %44
  call void @luaK_reserveregs(%struct.FuncState* %10, i32 %3) #7
  %107 = load %struct.FuncState*, %struct.FuncState** %9, align 8, !tbaa !34
  %108 = bitcast %struct.BlockCnt* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %108) #7
  %109 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 5
  store i8 0, i8* %109, align 2, !tbaa !48
  %110 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %107, i64 0, i32 13
  %111 = load i8, i8* %110, align 2, !tbaa !74
  %112 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 3
  store i8 %111, i8* %112, align 8, !tbaa !50
  %113 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %107, i64 0, i32 2
  %114 = load %struct.LexState*, %struct.LexState** %113, align 8, !tbaa !36
  %115 = getelementptr inbounds %struct.LexState, %struct.LexState* %114, i64 0, i32 10
  %116 = load %struct.Dyndata*, %struct.Dyndata** %115, align 8, !tbaa !27
  %117 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %116, i64 0, i32 2, i32 1
  %118 = load i32, i32* %117, align 8, !tbaa !28
  %119 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 1
  store i32 %118, i32* %119, align 8, !tbaa !51
  %120 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %116, i64 0, i32 1, i32 1
  %121 = load i32, i32* %120, align 8, !tbaa !32
  %122 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 2
  store i32 %121, i32* %122, align 4, !tbaa !52
  %123 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 4
  store i8 0, i8* %123, align 1, !tbaa !53
  %124 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %107, i64 0, i32 3
  %125 = load %struct.BlockCnt*, %struct.BlockCnt** %124, align 8, !tbaa !56
  %126 = icmp eq %struct.BlockCnt* %125, null
  %127 = ptrtoint %struct.BlockCnt* %125 to i64
  br i1 %126, label %133, label %128

; <label>:128:                                    ; preds = %106
  %129 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %125, i64 0, i32 6
  %130 = load i8, i8* %129, align 1, !tbaa !54
  %131 = icmp ne i8 %130, 0
  %132 = zext i1 %131 to i8
  br label %133

; <label>:133:                                    ; preds = %128, %106
  %134 = phi i8 [ 0, %106 ], [ %132, %128 ]
  %135 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 6
  store i8 %134, i8* %135, align 1, !tbaa !54
  %136 = bitcast %struct.BlockCnt* %6 to i64*
  store i64 %127, i64* %136, align 8, !tbaa !55
  store %struct.BlockCnt* %6, %struct.BlockCnt** %124, align 8, !tbaa !56
  br label %137

; <label>:137:                                    ; preds = %139, %133
  %138 = load i32, i32* %11, align 8, !tbaa !63
  switch i32 %138, label %139 [
    i32 260, label %141
    i32 261, label %141
    i32 262, label %141
    i32 289, label %141
    i32 277, label %141
  ]

; <label>:139:                                    ; preds = %137
  %140 = icmp eq i32 %138, 274
  call fastcc void @statement(%struct.LexState* nonnull %0) #7
  br i1 %140, label %141, label %137

; <label>:141:                                    ; preds = %137, %137, %137, %137, %137, %139
  call fastcc void @leaveblock(%struct.FuncState* %107) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %108) #7
  call fastcc void @leaveblock(%struct.FuncState* %10)
  %142 = call i32 @luaK_getlabel(%struct.FuncState* %10) #7
  %143 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 0
  %144 = load %struct.Proto*, %struct.Proto** %143, align 8, !tbaa !19
  %145 = getelementptr inbounds %struct.Proto, %struct.Proto* %144, i64 0, i32 16
  %146 = load i32*, i32** %145, align 8, !tbaa !75
  %147 = sext i32 %19 to i64
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = xor i32 %19, -1
  %150 = add i32 %142, %149
  %151 = icmp sgt i32 %150, 131071
  br i1 %151, label %152, label %154, !prof !134

; <label>:152:                                    ; preds = %141
  %153 = load %struct.LexState*, %struct.LexState** %24, align 8, !tbaa !36
  call void @luaX_syntaxerror(%struct.LexState* %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0)) #8
  unreachable

; <label>:154:                                    ; preds = %141
  %155 = load i32, i32* %148, align 4, !tbaa !87
  %156 = and i32 %155, 32767
  %157 = shl i32 %150, 15
  %158 = or i32 %156, %157
  store i32 %158, i32* %148, align 4, !tbaa !87
  %159 = icmp eq i32 %4, 0
  br i1 %159, label %163, label %160

; <label>:160:                                    ; preds = %154
  %161 = call i32 @luaK_codeABCk(%struct.FuncState* nonnull %10, i32 77, i32 %1, i32 0, i32 %3, i32 0) #7
  call void @luaK_fixline(%struct.FuncState* nonnull %10, i32 %2) #7
  %162 = add nsw i32 %1, 2
  br label %163

; <label>:163:                                    ; preds = %154, %160
  %164 = phi i32 [ %162, %160 ], [ %1, %154 ]
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* @forbody.forloop, i64 0, i64 %16
  %166 = load i32, i32* %165, align 4, !tbaa !11
  %167 = call i32 @luaK_codeABx(%struct.FuncState* nonnull %10, i32 %166, i32 %164, i32 0) #7
  %168 = add nsw i32 %19, 1
  %169 = load %struct.Proto*, %struct.Proto** %143, align 8, !tbaa !19
  %170 = getelementptr inbounds %struct.Proto, %struct.Proto* %169, i64 0, i32 16
  %171 = load i32*, i32** %170, align 8, !tbaa !75
  %172 = sext i32 %167 to i64
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = xor i32 %167, -1
  %175 = add i32 %168, %174
  %176 = icmp slt i32 %175, -131071
  br i1 %176, label %177, label %179, !prof !134

; <label>:177:                                    ; preds = %163
  %178 = load %struct.LexState*, %struct.LexState** %24, align 8, !tbaa !36
  call void @luaX_syntaxerror(%struct.LexState* %178, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0)) #8
  unreachable

; <label>:179:                                    ; preds = %163
  %180 = load i32, i32* %173, align 4, !tbaa !87
  %181 = and i32 %180, 32767
  %182 = shl i32 %175, 15
  %183 = sub i32 0, %182
  %184 = or i32 %181, %183
  store i32 %184, i32* %173, align 4, !tbaa !87
  call void @luaK_fixline(%struct.FuncState* nonnull %10, i32 %2) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7
  ret void
}

; Function Attrs: nounwind uwtable
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
  tail call void @luaK_exp2nextreg(%struct.FuncState* %6, %struct.expdesc* nonnull %3) #7
  br label %11

; <label>:11:                                     ; preds = %4, %10
  %12 = icmp sgt i32 %7, 0
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 15
  %15 = load i8, i8* %14, align 4, !tbaa !88
  %16 = zext i8 %15 to i32
  tail call void @luaK_nil(%struct.FuncState* %6, i32 %16, i32 %7) #7
  br label %22

; <label>:17:                                     ; preds = %4, %4
  %18 = add nsw i32 %7, 1
  %19 = icmp sgt i32 %18, 0
  %20 = select i1 %19, i32 %18, i32 0
  tail call void @luaK_setreturns(%struct.FuncState* %6, %struct.expdesc* nonnull %3, i32 %20) #7
  %21 = icmp sgt i32 %7, 0
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %13, %17
  tail call void @luaK_reserveregs(%struct.FuncState* %6, i32 %7) #7
  br label %28

; <label>:23:                                     ; preds = %11, %17
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 15
  %25 = load i8, i8* %24, align 4, !tbaa !88
  %26 = trunc i32 %7 to i8
  %27 = add i8 %25, %26
  store i8 %27, i8* %24, align 4, !tbaa !88
  br label %28

; <label>:28:                                     ; preds = %23, %22
  ret void
}

declare hidden void @luaK_checkstack(%struct.FuncState*, i32) local_unnamed_addr #2

declare hidden void @luaK_nil(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

declare hidden i32 @luaK_exp2anyreg(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_ret(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @restassign(%struct.LexState*, %struct.LHS_assign*, i32) unnamed_addr #0 {
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca %struct.LHS_assign, align 8
  %6 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #7
  %7 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !108
  %10 = add i32 %9, -8
  %11 = icmp ult i32 %10, 6
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %3
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0)) #8
  unreachable

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %15 = load i32, i32* %14, align 8, !tbaa !63
  switch i32 %15, label %99 [
    i32 44, label %16
    i32 61, label %100
  ]

; <label>:16:                                     ; preds = %13
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %17 = bitcast %struct.LHS_assign* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #7
  %18 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 0
  store %struct.LHS_assign* %1, %struct.LHS_assign** %18, align 8, !tbaa !106
  %19 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1
  call fastcc void @suffixedexp(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %19)
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i64 0, i32 0
  %21 = load i32, i32* %20, align 8, !tbaa !108
  %22 = add i32 %21, -10
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %91, label %24

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %26 = load %struct.FuncState*, %struct.FuncState** %25, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %26, i64 0, i32 15
  %28 = load i8, i8* %27, align 4, !tbaa !88
  %29 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1, i32 1
  %30 = bitcast %union.anon.7* %29 to i32*
  %31 = zext i8 %28 to i16
  br label %32

; <label>:32:                                     ; preds = %77, %24
  %33 = phi %struct.LHS_assign* [ %1, %24 ], [ %80, %77 ]
  %34 = phi i32 [ 0, %24 ], [ %78, %77 ]
  %35 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %33, i64 0, i32 1, i32 0
  %36 = load i32, i32* %35, align 8, !tbaa !108
  %37 = add i32 %36, -10
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %39, label %77

; <label>:39:                                     ; preds = %32
  %40 = icmp eq i32 %36, 11
  %41 = load i32, i32* %20, align 8, !tbaa !61
  br i1 %40, label %42, label %53

; <label>:42:                                     ; preds = %39
  %43 = icmp eq i32 %41, 9
  br i1 %43, label %44, label %77

; <label>:44:                                     ; preds = %42
  %45 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %33, i64 0, i32 1, i32 1
  %46 = bitcast %union.anon.7* %45 to %struct.anon.8*
  %47 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %46, i64 0, i32 1
  %48 = load i8, i8* %47, align 2, !tbaa !11
  %49 = zext i8 %48 to i32
  %50 = load i32, i32* %30, align 8, !tbaa !11
  %51 = icmp eq i32 %50, %49
  br i1 %51, label %52, label %77

; <label>:52:                                     ; preds = %44
  store i32 13, i32* %35, align 8, !tbaa !108
  store i8 %28, i8* %47, align 2, !tbaa !11
  br label %77

; <label>:53:                                     ; preds = %39
  %54 = icmp eq i32 %41, 8
  br i1 %54, label %55, label %77

; <label>:55:                                     ; preds = %53
  %56 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %33, i64 0, i32 1, i32 1
  %57 = bitcast %union.anon.7* %56 to %struct.anon.8*
  %58 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %57, i64 0, i32 1
  %59 = load i8, i8* %58, align 2, !tbaa !11
  %60 = zext i8 %59 to i32
  %61 = load i32, i32* %30, align 8, !tbaa !11
  %62 = icmp eq i32 %61, %60
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %55
  store i8 %28, i8* %58, align 2, !tbaa !11
  br label %64

; <label>:64:                                     ; preds = %63, %55
  %65 = phi i32 [ 1, %63 ], [ %34, %55 ]
  %66 = icmp ne i32 %36, 10
  %67 = xor i1 %54, true
  %68 = or i1 %66, %67
  br i1 %68, label %77, label %69

; <label>:69:                                     ; preds = %64
  %70 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %33, i64 0, i32 1, i32 1
  %71 = bitcast %union.anon.7* %70 to i16*
  %72 = load i16, i16* %71, align 8, !tbaa !11
  %73 = sext i16 %72 to i32
  %74 = load i32, i32* %30, align 8, !tbaa !11
  %75 = icmp eq i32 %74, %73
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %69
  store i16 %31, i16* %71, align 8, !tbaa !11
  br label %77

; <label>:77:                                     ; preds = %53, %64, %76, %69, %52, %44, %42, %32
  %78 = phi i32 [ 1, %52 ], [ %34, %44 ], [ %34, %42 ], [ 1, %76 ], [ %65, %69 ], [ %65, %64 ], [ %34, %32 ], [ %34, %53 ]
  %79 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %33, i64 0, i32 0
  %80 = load %struct.LHS_assign*, %struct.LHS_assign** %79, align 8, !tbaa !106
  %81 = icmp eq %struct.LHS_assign* %80, null
  br i1 %81, label %82, label %32

; <label>:82:                                     ; preds = %77
  %83 = icmp eq i32 %78, 0
  br i1 %83, label %91, label %84

; <label>:84:                                     ; preds = %82
  %85 = zext i8 %28 to i32
  %86 = load i32, i32* %20, align 8, !tbaa !61
  %87 = icmp eq i32 %86, 8
  %88 = select i1 %87, i32 0, i32 7
  %89 = load i32, i32* %30, align 8, !tbaa !11
  %90 = call i32 @luaK_codeABCk(%struct.FuncState* %26, i32 %88, i32 %85, i32 %89, i32 0, i32 0) #7
  call void @luaK_reserveregs(%struct.FuncState* %26, i32 1) #7
  br label %91

; <label>:91:                                     ; preds = %84, %82, %16
  %92 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %93 = load %struct.lua_State*, %struct.lua_State** %92, align 8, !tbaa !66
  call void @luaE_enterCcall(%struct.lua_State* %93) #7
  %94 = add nsw i32 %2, 1
  call fastcc void @restassign(%struct.LexState* %0, %struct.LHS_assign* nonnull %5, i32 %94)
  %95 = load %struct.lua_State*, %struct.lua_State** %92, align 8, !tbaa !66
  %96 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %95, i64 0, i32 19
  %97 = load i32, i32* %96, align 8, !tbaa !109
  %98 = add i32 %97, -1
  store i32 %98, i32* %96, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #7
  br label %121

; <label>:99:                                     ; preds = %13
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 61) #8
  unreachable

; <label>:100:                                    ; preds = %13
  tail call void @luaX_next(%struct.LexState* nonnull %0) #7
  %101 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #7
  %102 = load i32, i32* %14, align 8, !tbaa !63
  %103 = icmp eq i32 %102, 44
  br i1 %103, label %104, label %113

; <label>:104:                                    ; preds = %100
  %105 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %106

; <label>:106:                                    ; preds = %104, %106
  %107 = phi i32 [ 1, %104 ], [ %110, %106 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #7
  %108 = load %struct.FuncState*, %struct.FuncState** %105, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %108, %struct.expdesc* nonnull %4) #7
  %109 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #7
  %110 = add nuw nsw i32 %107, 1
  %111 = load i32, i32* %14, align 8, !tbaa !63
  %112 = icmp eq i32 %111, 44
  br i1 %112, label %106, label %113

; <label>:113:                                    ; preds = %106, %100
  %114 = phi i32 [ 1, %100 ], [ %110, %106 ]
  %115 = icmp eq i32 %114, %2
  br i1 %115, label %117, label %116

; <label>:116:                                    ; preds = %113
  call fastcc void @adjust_assign(%struct.LexState* nonnull %0, i32 %2, i32 %114, %struct.expdesc* nonnull %4)
  br label %121

; <label>:117:                                    ; preds = %113
  %118 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %119 = load %struct.FuncState*, %struct.FuncState** %118, align 8, !tbaa !34
  call void @luaK_setoneret(%struct.FuncState* %119, %struct.expdesc* nonnull %4) #7
  %120 = load %struct.FuncState*, %struct.FuncState** %118, align 8, !tbaa !34
  call void @luaK_storevar(%struct.FuncState* %120, %struct.expdesc* nonnull %7, %struct.expdesc* nonnull %4) #7
  br label %133

; <label>:121:                                    ; preds = %116, %91
  %122 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %123 = load %struct.FuncState*, %struct.FuncState** %122, align 8, !tbaa !34
  %124 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %123, i64 0, i32 15
  %125 = load i8, i8* %124, align 4, !tbaa !88
  %126 = zext i8 %125 to i32
  %127 = add nsw i32 %126, -1
  %128 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2
  store i32 -1, i32* %128, align 8, !tbaa !58
  %129 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3
  store i32 -1, i32* %129, align 4, !tbaa !60
  %130 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  store i32 7, i32* %130, align 8, !tbaa !61
  %131 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1
  %132 = bitcast %union.anon.7* %131 to i32*
  store i32 %127, i32* %132, align 8, !tbaa !11
  call void @luaK_storevar(%struct.FuncState* %123, %struct.expdesc* nonnull %7, %struct.expdesc* nonnull %4) #7
  br label %133

; <label>:133:                                    ; preds = %117, %121
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #7
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
attributes #3 = { noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

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
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!69, !5, i64 8}
!73 = !{!69, !5, i64 9}
!74 = !{!20, !5, i64 66}
!75 = !{!22, !4, i64 64}
!76 = !{!22, !4, i64 88}
!77 = !{!22, !4, i64 96}
!78 = !{!22, !4, i64 56}
!79 = !{!22, !4, i64 72}
!80 = !{!22, !4, i64 104}
!81 = !{!20, !7, i64 64}
!82 = !{!3, !4, i64 24}
!83 = !{!84, !9, i64 24}
!84 = !{!"global_State", !4, i64 0, !4, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !85, i64 48, !13, i64 64, !13, i64 80, !10, i64 96, !5, i64 100, !5, i64 101, !5, i64 102, !5, i64 103, !5, i64 104, !5, i64 105, !5, i64 106, !5, i64 107, !5, i64 108, !5, i64 109, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168, !4, i64 176, !4, i64 184, !4, i64 192, !4, i64 200, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256, !4, i64 264, !5, i64 272, !5, i64 472, !5, i64 544, !4, i64 1392, !4, i64 1400}
!85 = !{!"stringtable", !4, i64 0, !10, i64 8, !10, i64 12}
!86 = !{!15, !10, i64 4}
!87 = !{!10, !10, i64 0}
!88 = !{!20, !5, i64 68}
!89 = !{!29, !4, i64 0}
!90 = !{!91, !7, i64 0}
!91 = !{!"Vardesc", !7, i64 0}
!92 = !{!93, !10, i64 8}
!93 = !{!"LocVar", !4, i64 0, !10, i64 8, !10, i64 12}
!94 = !{!4, !4, i64 0}
!95 = !{!20, !5, i64 70}
!96 = !{!29, !4, i64 32}
!97 = !{!98, !4, i64 0}
!98 = !{!"Labeldesc", !4, i64 0, !10, i64 8, !10, i64 12, !5, i64 16, !5, i64 17}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{!98, !10, i64 12}
!101 = !{!31, !10, i64 8}
!102 = !{!31, !4, i64 0}
!103 = !{!98, !5, i64 16}
!104 = !{!98, !5, i64 17}
!105 = !{!98, !10, i64 8}
!106 = !{!107, !4, i64 0}
!107 = !{!"LHS_assign", !4, i64 0, !59, i64 8}
!108 = !{!107, !5, i64 8}
!109 = !{!3, !10, i64 176}
!110 = !{!93, !10, i64 12}
!111 = !{!29, !4, i64 16}
!112 = !{!113, !5, i64 0}
!113 = !{!"", !5, i64 0, !5, i64 1}
!114 = !{!113, !5, i64 1}
!115 = !{!116, !10, i64 40}
!116 = !{!"ConsControl", !59, i64 0, !4, i64 24, !10, i64 32, !10, i64 36, !10, i64 40}
!117 = !{!116, !10, i64 32}
!118 = !{!116, !10, i64 36}
!119 = !{!116, !4, i64 24}
!120 = !{!116, !5, i64 0}
!121 = !{!22, !10, i64 32}
!122 = distinct !{!122, !71}
!123 = !{!22, !5, i64 10}
!124 = !{!22, !10, i64 48}
!125 = !{i64 0, i64 4, !11, i64 8, i64 8, !126, i64 8, i64 8, !128, i64 8, i64 4, !87, i64 8, i64 2, !130, i64 10, i64 1, !11, i64 16, i64 4, !87, i64 20, i64 4, !87}
!126 = !{!127, !127, i64 0}
!127 = !{!"long long", !5, i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"double", !5, i64 0}
!130 = !{!7, !7, i64 0}
!131 = !{!22, !10, i64 36}
!132 = !{!93, !4, i64 0}
!133 = distinct !{!133, !71}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{i64 0, i64 8, !94, i64 8, i64 4, !87, i64 12, i64 4, !87, i64 16, i64 1, !11, i64 17, i64 1, !11}
