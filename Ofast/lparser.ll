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
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #6
  %12 = bitcast %struct.FuncState* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %12) #6
  %13 = tail call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %0, i32 1) #6
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %15 = bitcast %union.StackValue** %14 to %struct.TValue**
  %16 = load %struct.TValue*, %struct.TValue** %15, align 8, !tbaa !2
  %17 = bitcast %struct.TValue* %16 to %struct.LClosure**
  store %struct.LClosure* %13, %struct.LClosure** %17, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i64 0, i32 1
  store i8 86, i8* %18, align 8, !tbaa !12
  tail call void @luaD_inctop(%struct.lua_State* %0) #6
  %19 = tail call %struct.Table* @luaH_new(%struct.lua_State* %0) #6
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i64 0, i32 9
  store %struct.Table* %19, %struct.Table** %20, align 8, !tbaa !14
  %21 = load %struct.TValue*, %struct.TValue** %15, align 8, !tbaa !2
  %22 = bitcast %struct.TValue* %21 to %struct.Table**
  store %struct.Table* %19, %struct.Table** %22, align 8, !tbaa !11
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %21, i64 0, i32 1
  store i8 69, i8* %23, align 8, !tbaa !12
  tail call void @luaD_inctop(%struct.lua_State* %0) #6
  %24 = tail call %struct.Proto* @luaF_newproto(%struct.lua_State* %0) #6
  %25 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %13, i64 0, i32 5
  store %struct.Proto* %24, %struct.Proto** %25, align 8, !tbaa !17
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 0
  store %struct.Proto* %24, %struct.Proto** %26, align 8, !tbaa !19
  %27 = tail call %struct.TString* @luaS_new(%struct.lua_State* %0, i8* %4) #6
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
  tail call void @luaC_barrier_(%struct.lua_State* nonnull %0, %struct.GCObject* %39, %struct.GCObject* %40) #6
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
  call void @luaX_setinput(%struct.lua_State* nonnull %0, %struct.LexState* nonnull %9, %struct.Zio* %1, %struct.TString* %43, i32 %5) #6
  %49 = bitcast %struct.BlockCnt* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %49) #6
  %50 = bitcast %struct.expdesc* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %50) #6
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
  call void @llvm.memset.p0i8.i64(i8* nonnull %66, i8 0, i64 7, i32 8, i1 false) #6
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
  %90 = call i32 @luaK_codeABCk(%struct.FuncState* nonnull %10, i32 82, i32 0, i32 0, i32 0, i32 0) #6
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
  %98 = call fastcc i32 @newupvalue(%struct.FuncState* nonnull %10, %struct.TString* %97, %struct.expdesc* nonnull %8) #6
  call void @luaX_next(%struct.LexState* nonnull %9) #6
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
  call fastcc void @statement(%struct.LexState* nonnull %9) #6
  br i1 %103, label %104, label %100

; <label>:104:                                    ; preds = %102
  %105 = load i32, i32* %99, align 8, !tbaa !63
  br label %106

; <label>:106:                                    ; preds = %100, %100, %100, %100, %100, %104
  %107 = phi i32 [ %105, %104 ], [ %101, %100 ], [ %101, %100 ], [ %101, %100 ], [ %101, %100 ], [ %101, %100 ]
  %108 = icmp eq i32 %107, 289
  br i1 %108, label %110, label %109

; <label>:109:                                    ; preds = %106
  call fastcc void @error_expected(%struct.LexState* nonnull %9, i32 289) #7
  unreachable

; <label>:110:                                    ; preds = %106
  call fastcc void @close_func(%struct.LexState* nonnull %9) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %50) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %49) #6
  %111 = load %union.StackValue*, %union.StackValue** %14, align 8, !tbaa !2
  %112 = getelementptr inbounds %union.StackValue, %union.StackValue* %111, i64 -1
  store %union.StackValue* %112, %union.StackValue** %14, align 8, !tbaa !2
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %12) #6
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #6
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
  tail call fastcc void @errorlimit(%struct.FuncState* nonnull %0, i32 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #7
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
  %21 = tail call i8* @luaM_growaux_(%struct.lua_State* %17, i8* %20, i32 %12, i32* nonnull %6, i32 16, i32 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #6
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
  tail call void @luaC_barrier_(%struct.lua_State* %82, %struct.GCObject* %83, %struct.GCObject* %84) #6
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
  tail call void @luaK_ret(%struct.FuncState* %5, i32 %10, i32 0) #6
  tail call fastcc void @leaveblock(%struct.FuncState* %5)
  tail call void @luaK_finish(%struct.FuncState* %5) #6
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 16
  %12 = bitcast i32** %11 to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 8
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 4
  %16 = load i32, i32* %15, align 8, !tbaa !37
  %17 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %13, i32* nonnull %14, i32 %16, i32 4) #6
  store i8* %17, i8** %12, align 8, !tbaa !75
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 19
  %19 = load i8*, i8** %18, align 8, !tbaa !76
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 9
  %21 = load i32, i32* %15, align 8, !tbaa !37
  %22 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %19, i32* nonnull %20, i32 %21, i32 1) #6
  store i8* %22, i8** %18, align 8, !tbaa !76
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 20
  %24 = bitcast %struct.AbsLineInfo** %23 to i8**
  %25 = load i8*, i8** %24, align 8, !tbaa !77
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 12
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 9
  %28 = load i32, i32* %27, align 4, !tbaa !42
  %29 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %25, i32* nonnull %26, i32 %28, i32 8) #6
  store i8* %29, i8** %24, align 8, !tbaa !77
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 15
  %31 = bitcast %struct.TValue** %30 to i8**
  %32 = load i8*, i8** %31, align 8, !tbaa !78
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 7
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 7
  %35 = load i32, i32* %34, align 4, !tbaa !41
  %36 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %32, i32* nonnull %33, i32 %35, i32 16) #6
  store i8* %36, i8** %31, align 8, !tbaa !78
  %37 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 17
  %38 = bitcast %struct.Proto*** %37 to i8**
  %39 = load i8*, i8** %38, align 8, !tbaa !79
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 10
  %41 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 8
  %42 = load i32, i32* %41, align 8, !tbaa !43
  %43 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %39, i32* nonnull %40, i32 %42, i32 8) #6
  store i8* %43, i8** %38, align 8, !tbaa !79
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 21
  %45 = bitcast %struct.LocVar** %44 to i8**
  %46 = load i8*, i8** %45, align 8, !tbaa !80
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 11
  %48 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 12
  %49 = load i16, i16* %48, align 8, !tbaa !81
  %50 = sext i16 %49 to i32
  %51 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %46, i32* nonnull %47, i32 %50, i32 16) #6
  store i8* %51, i8** %45, align 8, !tbaa !80
  %52 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 18
  %53 = bitcast %struct.Upvaldesc** %52 to i8**
  %54 = load i8*, i8** %53, align 8, !tbaa !67
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 6
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 14
  %57 = load i8, i8* %56, align 1, !tbaa !64
  %58 = zext i8 %57 to i32
  %59 = tail call i8* @luaM_shrinkvector_(%struct.lua_State* %3, i8* %54, i32* nonnull %55, i32 %58, i32 16) #6
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
  tail call void @luaC_step(%struct.lua_State* %3) #6
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
  %14 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %11) #6
  br label %15

; <label>:15:                                     ; preds = %3, %13
  %16 = phi i8* [ %14, %13 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %3 ]
  %17 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %2, i32 %1, i8* %16) #6
  %18 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !36
  tail call void @luaX_syntaxerror(%struct.LexState* %18, i8* %17) #7
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
  %13 = alloca %struct.expdesc, align 8
  %14 = alloca %struct.BlockCnt, align 8
  %15 = alloca %struct.BlockCnt, align 8
  %16 = alloca %struct.expdesc, align 8
  %17 = alloca %struct.BlockCnt, align 8
  %18 = alloca %struct.BlockCnt, align 8
  %19 = alloca %struct.expdesc, align 8
  %20 = alloca %struct.BlockCnt, align 8
  %21 = alloca %struct.BlockCnt, align 8
  %22 = alloca %struct.BlockCnt, align 8
  %23 = alloca i32, align 4
  %24 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %25 = load i32, i32* %24, align 4, !tbaa !86
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %27 = load %struct.lua_State*, %struct.lua_State** %26, align 8, !tbaa !66
  tail call void @luaE_enterCcall(%struct.lua_State* %27) #6
  %28 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %29 = load i32, i32* %28, align 8, !tbaa !63
  switch i32 %29, label %1064 [
    i32 59, label %30
    i32 267, label %32
    i32 278, label %90
    i32 259, label %185
    i32 264, label %234
    i32 273, label %484
    i32 265, label %565
    i32 269, label %600
    i32 288, label %851
    i32 274, label %904
    i32 258, label %966
    i32 266, label %994
  ]

; <label>:30:                                     ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %31 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %1091

; <label>:32:                                     ; preds = %1
  %33 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %34 = load %struct.FuncState*, %struct.FuncState** %33, align 8, !tbaa !34
  %35 = bitcast i32* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %35) #6
  store i32 -1, i32* %23, align 4, !tbaa !87
  call fastcc void @test_then_block(%struct.LexState* nonnull %0, i32* nonnull %23) #6
  br label %36

; <label>:36:                                     ; preds = %38, %32
  %37 = load i32, i32* %28, align 8, !tbaa !63
  switch i32 %37, label %76 [
    i32 261, label %38
    i32 260, label %39
  ]

; <label>:38:                                     ; preds = %36
  call fastcc void @test_then_block(%struct.LexState* nonnull %0, i32* nonnull %23) #6
  br label %36

; <label>:39:                                     ; preds = %36
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %40 = load %struct.FuncState*, %struct.FuncState** %33, align 8, !tbaa !34
  %41 = bitcast %struct.BlockCnt* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %41) #6
  %42 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %22, i64 0, i32 5
  store i8 0, i8* %42, align 2, !tbaa !48
  %43 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %40, i64 0, i32 13
  %44 = load i8, i8* %43, align 2, !tbaa !74
  %45 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %22, i64 0, i32 3
  store i8 %44, i8* %45, align 8, !tbaa !50
  %46 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %40, i64 0, i32 2
  %47 = load %struct.LexState*, %struct.LexState** %46, align 8, !tbaa !36
  %48 = getelementptr inbounds %struct.LexState, %struct.LexState* %47, i64 0, i32 10
  %49 = load %struct.Dyndata*, %struct.Dyndata** %48, align 8, !tbaa !27
  %50 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %49, i64 0, i32 2, i32 1
  %51 = load i32, i32* %50, align 8, !tbaa !28
  %52 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %22, i64 0, i32 1
  store i32 %51, i32* %52, align 8, !tbaa !51
  %53 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %49, i64 0, i32 1, i32 1
  %54 = load i32, i32* %53, align 8, !tbaa !32
  %55 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %22, i64 0, i32 2
  store i32 %54, i32* %55, align 4, !tbaa !52
  %56 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %22, i64 0, i32 4
  store i8 0, i8* %56, align 1, !tbaa !53
  %57 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %40, i64 0, i32 3
  %58 = load %struct.BlockCnt*, %struct.BlockCnt** %57, align 8, !tbaa !56
  %59 = icmp eq %struct.BlockCnt* %58, null
  %60 = ptrtoint %struct.BlockCnt* %58 to i64
  br i1 %59, label %66, label %61

; <label>:61:                                     ; preds = %39
  %62 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %58, i64 0, i32 6
  %63 = load i8, i8* %62, align 1, !tbaa !54
  %64 = icmp ne i8 %63, 0
  %65 = zext i1 %64 to i8
  br label %66

; <label>:66:                                     ; preds = %61, %39
  %67 = phi i8 [ 0, %39 ], [ %65, %61 ]
  %68 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %22, i64 0, i32 6
  store i8 %67, i8* %68, align 1, !tbaa !54
  %69 = bitcast %struct.BlockCnt* %22 to i64*
  store i64 %60, i64* %69, align 8, !tbaa !55
  store %struct.BlockCnt* %22, %struct.BlockCnt** %57, align 8, !tbaa !56
  br label %70

; <label>:70:                                     ; preds = %72, %66
  %71 = load i32, i32* %28, align 8, !tbaa !63
  switch i32 %71, label %72 [
    i32 260, label %74
    i32 261, label %74
    i32 262, label %74
    i32 289, label %74
    i32 277, label %74
  ]

; <label>:72:                                     ; preds = %70
  %73 = icmp eq i32 %71, 274
  call fastcc void @statement(%struct.LexState* nonnull %0) #6
  br i1 %73, label %74, label %70

; <label>:74:                                     ; preds = %70, %70, %70, %70, %70, %72
  call fastcc void @leaveblock(%struct.FuncState* %40) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %41) #6
  %75 = load i32, i32* %28, align 8, !tbaa !63
  br label %76

; <label>:76:                                     ; preds = %36, %74
  %77 = phi i32 [ %75, %74 ], [ %37, %36 ]
  %78 = icmp eq i32 %77, 262
  br i1 %78, label %88, label %79

; <label>:79:                                     ; preds = %76
  %80 = load i32, i32* %24, align 4, !tbaa !86
  %81 = icmp eq i32 %80, %25
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %79
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 262) #7
  unreachable

; <label>:83:                                     ; preds = %79
  %84 = load %struct.lua_State*, %struct.lua_State** %26, align 8, !tbaa !66
  %85 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 262) #6
  %86 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 267) #6
  %87 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* %85, i8* %86, i32 %25) #6
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %87) #7
  unreachable

; <label>:88:                                     ; preds = %76
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %89 = load i32, i32* %23, align 4, !tbaa !87
  call void @luaK_patchtohere(%struct.FuncState* %34, i32 %89) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %35) #6
  br label %1091

; <label>:90:                                     ; preds = %1
  %91 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %92 = load %struct.FuncState*, %struct.FuncState** %91, align 8, !tbaa !34
  %93 = bitcast %struct.BlockCnt* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %93) #6
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %94 = tail call i32 @luaK_getlabel(%struct.FuncState* %92) #6
  %95 = bitcast %struct.expdesc* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %95) #6
  %96 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %19, i32 0) #6
  %97 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i64 0, i32 0
  %98 = load i32, i32* %97, align 8, !tbaa !61
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %101

; <label>:100:                                    ; preds = %90
  store i32 3, i32* %97, align 8, !tbaa !61
  br label %101

; <label>:101:                                    ; preds = %100, %90
  %102 = load %struct.FuncState*, %struct.FuncState** %91, align 8, !tbaa !34
  call void @luaK_goiftrue(%struct.FuncState* %102, %struct.expdesc* nonnull %19) #6
  %103 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i64 0, i32 3
  %104 = load i32, i32* %103, align 4, !tbaa !60
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %95) #6
  %105 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %21, i64 0, i32 5
  store i8 1, i8* %105, align 2, !tbaa !48
  %106 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %92, i64 0, i32 13
  %107 = load i8, i8* %106, align 2, !tbaa !74
  %108 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %21, i64 0, i32 3
  store i8 %107, i8* %108, align 8, !tbaa !50
  %109 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %92, i64 0, i32 2
  %110 = load %struct.LexState*, %struct.LexState** %109, align 8, !tbaa !36
  %111 = getelementptr inbounds %struct.LexState, %struct.LexState* %110, i64 0, i32 10
  %112 = load %struct.Dyndata*, %struct.Dyndata** %111, align 8, !tbaa !27
  %113 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %112, i64 0, i32 2, i32 1
  %114 = load i32, i32* %113, align 8, !tbaa !28
  %115 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %21, i64 0, i32 1
  store i32 %114, i32* %115, align 8, !tbaa !51
  %116 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %112, i64 0, i32 1, i32 1
  %117 = load i32, i32* %116, align 8, !tbaa !32
  %118 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %21, i64 0, i32 2
  store i32 %117, i32* %118, align 4, !tbaa !52
  %119 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %21, i64 0, i32 4
  store i8 0, i8* %119, align 1, !tbaa !53
  %120 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %92, i64 0, i32 3
  %121 = load %struct.BlockCnt*, %struct.BlockCnt** %120, align 8, !tbaa !56
  %122 = icmp eq %struct.BlockCnt* %121, null
  %123 = ptrtoint %struct.BlockCnt* %121 to i64
  br i1 %122, label %129, label %124

; <label>:124:                                    ; preds = %101
  %125 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %121, i64 0, i32 6
  %126 = load i8, i8* %125, align 1, !tbaa !54
  %127 = icmp ne i8 %126, 0
  %128 = zext i1 %127 to i8
  br label %129

; <label>:129:                                    ; preds = %124, %101
  %130 = phi i8 [ 0, %101 ], [ %128, %124 ]
  %131 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %21, i64 0, i32 6
  store i8 %130, i8* %131, align 1, !tbaa !54
  %132 = bitcast %struct.BlockCnt* %21 to i64*
  store i64 %123, i64* %132, align 8, !tbaa !55
  store %struct.BlockCnt* %21, %struct.BlockCnt** %120, align 8, !tbaa !56
  %133 = load i32, i32* %28, align 8, !tbaa !63
  %134 = icmp eq i32 %133, 259
  br i1 %134, label %136, label %135

; <label>:135:                                    ; preds = %129
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 259) #7
  unreachable

; <label>:136:                                    ; preds = %129
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %137 = load %struct.FuncState*, %struct.FuncState** %91, align 8, !tbaa !34
  %138 = bitcast %struct.BlockCnt* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %138) #6
  %139 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 5
  store i8 0, i8* %139, align 2, !tbaa !48
  %140 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %137, i64 0, i32 13
  %141 = load i8, i8* %140, align 2, !tbaa !74
  %142 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 3
  store i8 %141, i8* %142, align 8, !tbaa !50
  %143 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %137, i64 0, i32 2
  %144 = load %struct.LexState*, %struct.LexState** %143, align 8, !tbaa !36
  %145 = getelementptr inbounds %struct.LexState, %struct.LexState* %144, i64 0, i32 10
  %146 = load %struct.Dyndata*, %struct.Dyndata** %145, align 8, !tbaa !27
  %147 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %146, i64 0, i32 2, i32 1
  %148 = load i32, i32* %147, align 8, !tbaa !28
  %149 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 1
  store i32 %148, i32* %149, align 8, !tbaa !51
  %150 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %146, i64 0, i32 1, i32 1
  %151 = load i32, i32* %150, align 8, !tbaa !32
  %152 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 2
  store i32 %151, i32* %152, align 4, !tbaa !52
  %153 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 4
  store i8 0, i8* %153, align 1, !tbaa !53
  %154 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %137, i64 0, i32 3
  %155 = load %struct.BlockCnt*, %struct.BlockCnt** %154, align 8, !tbaa !56
  %156 = icmp eq %struct.BlockCnt* %155, null
  %157 = ptrtoint %struct.BlockCnt* %155 to i64
  br i1 %156, label %163, label %158

; <label>:158:                                    ; preds = %136
  %159 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %155, i64 0, i32 6
  %160 = load i8, i8* %159, align 1, !tbaa !54
  %161 = icmp ne i8 %160, 0
  %162 = zext i1 %161 to i8
  br label %163

; <label>:163:                                    ; preds = %158, %136
  %164 = phi i8 [ 0, %136 ], [ %162, %158 ]
  %165 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 6
  store i8 %164, i8* %165, align 1, !tbaa !54
  %166 = bitcast %struct.BlockCnt* %20 to i64*
  store i64 %157, i64* %166, align 8, !tbaa !55
  store %struct.BlockCnt* %20, %struct.BlockCnt** %154, align 8, !tbaa !56
  br label %167

; <label>:167:                                    ; preds = %169, %163
  %168 = load i32, i32* %28, align 8, !tbaa !63
  switch i32 %168, label %169 [
    i32 260, label %171
    i32 261, label %171
    i32 262, label %171
    i32 289, label %171
    i32 277, label %171
  ]

; <label>:169:                                    ; preds = %167
  %170 = icmp eq i32 %168, 274
  call fastcc void @statement(%struct.LexState* nonnull %0) #6
  br i1 %170, label %171, label %167

; <label>:171:                                    ; preds = %167, %167, %167, %167, %167, %169
  call fastcc void @leaveblock(%struct.FuncState* %137) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %138) #6
  %172 = call i32 @luaK_jump(%struct.FuncState* %92) #6
  call void @luaK_patchlist(%struct.FuncState* %92, i32 %172, i32 %94) #6
  %173 = load i32, i32* %28, align 8, !tbaa !63
  %174 = icmp eq i32 %173, 262
  br i1 %174, label %184, label %175

; <label>:175:                                    ; preds = %171
  %176 = load i32, i32* %24, align 4, !tbaa !86
  %177 = icmp eq i32 %176, %25
  br i1 %177, label %178, label %179

; <label>:178:                                    ; preds = %175
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 262) #7
  unreachable

; <label>:179:                                    ; preds = %175
  %180 = load %struct.lua_State*, %struct.lua_State** %26, align 8, !tbaa !66
  %181 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 262) #6
  %182 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 278) #6
  %183 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %180, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* %181, i8* %182, i32 %25) #6
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %183) #7
  unreachable

; <label>:184:                                    ; preds = %171
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  call fastcc void @leaveblock(%struct.FuncState* %92) #6
  call void @luaK_patchtohere(%struct.FuncState* %92, i32 %104) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %93) #6
  br label %1091

; <label>:185:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %186 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %187 = load %struct.FuncState*, %struct.FuncState** %186, align 8, !tbaa !34
  %188 = bitcast %struct.BlockCnt* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %188) #6
  %189 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i64 0, i32 5
  store i8 0, i8* %189, align 2, !tbaa !48
  %190 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %187, i64 0, i32 13
  %191 = load i8, i8* %190, align 2, !tbaa !74
  %192 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i64 0, i32 3
  store i8 %191, i8* %192, align 8, !tbaa !50
  %193 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %187, i64 0, i32 2
  %194 = load %struct.LexState*, %struct.LexState** %193, align 8, !tbaa !36
  %195 = getelementptr inbounds %struct.LexState, %struct.LexState* %194, i64 0, i32 10
  %196 = load %struct.Dyndata*, %struct.Dyndata** %195, align 8, !tbaa !27
  %197 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %196, i64 0, i32 2, i32 1
  %198 = load i32, i32* %197, align 8, !tbaa !28
  %199 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i64 0, i32 1
  store i32 %198, i32* %199, align 8, !tbaa !51
  %200 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %196, i64 0, i32 1, i32 1
  %201 = load i32, i32* %200, align 8, !tbaa !32
  %202 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i64 0, i32 2
  store i32 %201, i32* %202, align 4, !tbaa !52
  %203 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i64 0, i32 4
  store i8 0, i8* %203, align 1, !tbaa !53
  %204 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %187, i64 0, i32 3
  %205 = load %struct.BlockCnt*, %struct.BlockCnt** %204, align 8, !tbaa !56
  %206 = icmp eq %struct.BlockCnt* %205, null
  %207 = ptrtoint %struct.BlockCnt* %205 to i64
  br i1 %206, label %213, label %208

; <label>:208:                                    ; preds = %185
  %209 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %205, i64 0, i32 6
  %210 = load i8, i8* %209, align 1, !tbaa !54
  %211 = icmp ne i8 %210, 0
  %212 = zext i1 %211 to i8
  br label %213

; <label>:213:                                    ; preds = %208, %185
  %214 = phi i8 [ 0, %185 ], [ %212, %208 ]
  %215 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i64 0, i32 6
  store i8 %214, i8* %215, align 1, !tbaa !54
  %216 = bitcast %struct.BlockCnt* %18 to i64*
  store i64 %207, i64* %216, align 8, !tbaa !55
  store %struct.BlockCnt* %18, %struct.BlockCnt** %204, align 8, !tbaa !56
  br label %217

; <label>:217:                                    ; preds = %219, %213
  %218 = load i32, i32* %28, align 8, !tbaa !63
  switch i32 %218, label %219 [
    i32 260, label %221
    i32 261, label %221
    i32 262, label %221
    i32 289, label %221
    i32 277, label %221
  ]

; <label>:219:                                    ; preds = %217
  %220 = icmp eq i32 %218, 274
  call fastcc void @statement(%struct.LexState* nonnull %0) #6
  br i1 %220, label %221, label %217

; <label>:221:                                    ; preds = %217, %217, %217, %217, %217, %219
  call fastcc void @leaveblock(%struct.FuncState* %187) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %188) #6
  %222 = load i32, i32* %28, align 8, !tbaa !63
  %223 = icmp eq i32 %222, 262
  br i1 %223, label %233, label %224

; <label>:224:                                    ; preds = %221
  %225 = load i32, i32* %24, align 4, !tbaa !86
  %226 = icmp eq i32 %225, %25
  br i1 %226, label %227, label %228

; <label>:227:                                    ; preds = %224
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 262) #7
  unreachable

; <label>:228:                                    ; preds = %224
  %229 = load %struct.lua_State*, %struct.lua_State** %26, align 8, !tbaa !66
  %230 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 262) #6
  %231 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 259) #6
  %232 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %229, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* %230, i8* %231, i32 %25) #6
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %232) #7
  unreachable

; <label>:233:                                    ; preds = %221
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  br label %1091

; <label>:234:                                    ; preds = %1
  %235 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %236 = load %struct.FuncState*, %struct.FuncState** %235, align 8, !tbaa !34
  %237 = bitcast %struct.BlockCnt* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %237) #6
  %238 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %17, i64 0, i32 5
  store i8 1, i8* %238, align 2, !tbaa !48
  %239 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %236, i64 0, i32 13
  %240 = load i8, i8* %239, align 2, !tbaa !74
  %241 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %17, i64 0, i32 3
  store i8 %240, i8* %241, align 8, !tbaa !50
  %242 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %236, i64 0, i32 2
  %243 = load %struct.LexState*, %struct.LexState** %242, align 8, !tbaa !36
  %244 = getelementptr inbounds %struct.LexState, %struct.LexState* %243, i64 0, i32 10
  %245 = load %struct.Dyndata*, %struct.Dyndata** %244, align 8, !tbaa !27
  %246 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %245, i64 0, i32 2, i32 1
  %247 = load i32, i32* %246, align 8, !tbaa !28
  %248 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %17, i64 0, i32 1
  store i32 %247, i32* %248, align 8, !tbaa !51
  %249 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %245, i64 0, i32 1, i32 1
  %250 = load i32, i32* %249, align 8, !tbaa !32
  %251 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %17, i64 0, i32 2
  store i32 %250, i32* %251, align 4, !tbaa !52
  %252 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %17, i64 0, i32 4
  store i8 0, i8* %252, align 1, !tbaa !53
  %253 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %236, i64 0, i32 3
  %254 = load %struct.BlockCnt*, %struct.BlockCnt** %253, align 8, !tbaa !56
  %255 = icmp eq %struct.BlockCnt* %254, null
  %256 = ptrtoint %struct.BlockCnt* %254 to i64
  br i1 %255, label %262, label %257

; <label>:257:                                    ; preds = %234
  %258 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %254, i64 0, i32 6
  %259 = load i8, i8* %258, align 1, !tbaa !54
  %260 = icmp ne i8 %259, 0
  %261 = zext i1 %260 to i8
  br label %262

; <label>:262:                                    ; preds = %257, %234
  %263 = phi i8 [ 0, %234 ], [ %261, %257 ]
  %264 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %17, i64 0, i32 6
  store i8 %263, i8* %264, align 1, !tbaa !54
  %265 = bitcast %struct.BlockCnt* %17 to i64*
  store i64 %256, i64* %265, align 8, !tbaa !55
  store %struct.BlockCnt* %17, %struct.BlockCnt** %253, align 8, !tbaa !56
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %266 = load i32, i32* %28, align 8, !tbaa !63
  %267 = icmp eq i32 %266, 292
  br i1 %267, label %269, label %268

; <label>:268:                                    ; preds = %262
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #7
  unreachable

; <label>:269:                                    ; preds = %262
  %270 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %271 = bitcast %union.SemInfo* %270 to %struct.TString**
  %272 = load %struct.TString*, %struct.TString** %271, align 8, !tbaa !11
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %273 = load i32, i32* %28, align 8, !tbaa !63
  switch i32 %273, label %470 [
    i32 61, label %274
    i32 44, label %344
    i32 268, label %344
  ]

; <label>:274:                                    ; preds = %269
  %275 = load %struct.FuncState*, %struct.FuncState** %235, align 8, !tbaa !34
  %276 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %275, i64 0, i32 15
  %277 = load i8, i8* %276, align 4, !tbaa !88
  %278 = zext i8 %277 to i32
  %279 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i64 11) #6
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %279) #6
  %280 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i64 11) #6
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %280) #6
  %281 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i64 10) #6
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %281) #6
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %272) #6
  %282 = load i32, i32* %28, align 8, !tbaa !63
  %283 = icmp eq i32 %282, 61
  br i1 %283, label %285, label %284

; <label>:284:                                    ; preds = %274
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 61) #7
  unreachable

; <label>:285:                                    ; preds = %274
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %286 = bitcast %struct.expdesc* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %286) #6
  %287 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %5, i32 0) #6
  %288 = load %struct.FuncState*, %struct.FuncState** %235, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %288, %struct.expdesc* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %286) #6
  %289 = load i32, i32* %28, align 8, !tbaa !63
  %290 = icmp eq i32 %289, 44
  br i1 %290, label %292, label %291

; <label>:291:                                    ; preds = %285
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 44) #7
  unreachable

; <label>:292:                                    ; preds = %285
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %293 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %293) #6
  %294 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #6
  %295 = load %struct.FuncState*, %struct.FuncState** %235, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %295, %struct.expdesc* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %293) #6
  %296 = load i32, i32* %28, align 8, !tbaa !63
  %297 = icmp eq i32 %296, 44
  br i1 %297, label %298, label %302

; <label>:298:                                    ; preds = %292
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %299 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %299) #6
  %300 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3, i32 0) #6
  %301 = load %struct.FuncState*, %struct.FuncState** %235, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %301, %struct.expdesc* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %299) #6
  br label %305

; <label>:302:                                    ; preds = %292
  %303 = load i8, i8* %276, align 4, !tbaa !88
  %304 = zext i8 %303 to i32
  call void @luaK_int(%struct.FuncState* %275, i32 %304, i64 1) #6
  call void @luaK_reserveregs(%struct.FuncState* %275, i32 1) #6
  br label %305

; <label>:305:                                    ; preds = %302, %298
  %306 = load %struct.FuncState*, %struct.FuncState** %235, align 8, !tbaa !34
  %307 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %306, i64 0, i32 13
  %308 = load i8, i8* %307, align 2, !tbaa !74
  %309 = add i8 %308, 3
  store i8 %309, i8* %307, align 2, !tbaa !74
  %310 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %306, i64 0, i32 4
  %311 = load i32, i32* %310, align 8, !tbaa !37
  %312 = zext i8 %309 to i32
  %313 = getelementptr %struct.FuncState, %struct.FuncState* %306, i64 0, i32 0
  %314 = load %struct.Proto*, %struct.Proto** %313, align 8, !tbaa !19
  %315 = getelementptr %struct.FuncState, %struct.FuncState* %306, i64 0, i32 2
  %316 = load %struct.LexState*, %struct.LexState** %315, align 8, !tbaa !36
  %317 = getelementptr %struct.FuncState, %struct.FuncState* %306, i64 0, i32 10
  %318 = load i32, i32* %317, align 8, !tbaa !44
  %319 = getelementptr %struct.Proto, %struct.Proto* %314, i64 0, i32 21
  %320 = load %struct.LocVar*, %struct.LocVar** %319, align 8, !tbaa !80
  %321 = getelementptr %struct.LexState, %struct.LexState* %316, i64 0, i32 10
  %322 = load %struct.Dyndata*, %struct.Dyndata** %321, align 8, !tbaa !27
  %323 = getelementptr %struct.Dyndata, %struct.Dyndata* %322, i64 0, i32 0, i32 0
  %324 = load %struct.Vardesc*, %struct.Vardesc** %323, align 8, !tbaa !89
  %325 = add i32 %318, %312
  %326 = add i32 %325, -3
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %324, i64 %327, i32 0
  %329 = load i16, i16* %328, align 2, !tbaa !90
  %330 = sext i16 %329 to i64
  %331 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %320, i64 %330, i32 1
  store i32 %311, i32* %331, align 8, !tbaa !92
  %332 = add i32 %325, -2
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %324, i64 %333, i32 0
  %335 = load i16, i16* %334, align 2, !tbaa !90
  %336 = sext i16 %335 to i64
  %337 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %320, i64 %336, i32 1
  store i32 %311, i32* %337, align 8, !tbaa !92
  %338 = add i32 %325, -1
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %324, i64 %339, i32 0
  %341 = load i16, i16* %340, align 2, !tbaa !90
  %342 = sext i16 %341 to i64
  %343 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %320, i64 %342, i32 1
  store i32 %311, i32* %343, align 8, !tbaa !92
  call fastcc void @forbody(%struct.LexState* nonnull %0, i32 %278, i32 %25, i32 1, i32 0) #6
  br label %471

; <label>:344:                                    ; preds = %269, %269
  %345 = load %struct.FuncState*, %struct.FuncState** %235, align 8, !tbaa !34
  %346 = bitcast %struct.expdesc* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %346) #6
  %347 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %345, i64 0, i32 15
  %348 = load i8, i8* %347, align 4, !tbaa !88
  %349 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i64 15) #6
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %349) #6
  %350 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i64 11) #6
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %350) #6
  %351 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %345, i64 0, i32 13
  %352 = load i8, i8* %351, align 2, !tbaa !74
  %353 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %345, i64 0, i32 3
  br label %354

; <label>:354:                                    ; preds = %354, %344
  %355 = phi %struct.BlockCnt** [ %353, %344 ], [ %360, %354 ]
  %356 = load %struct.BlockCnt*, %struct.BlockCnt** %355, align 8, !tbaa !94
  %357 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %356, i64 0, i32 3
  %358 = load i8, i8* %357, align 8, !tbaa !50
  %359 = icmp ugt i8 %358, %352
  %360 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %356, i64 0, i32 0
  br i1 %359, label %354, label %361

; <label>:361:                                    ; preds = %354
  %362 = zext i8 %348 to i32
  %363 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %356, i64 0, i32 4
  store i8 1, i8* %363, align 1, !tbaa !53
  %364 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %345, i64 0, i32 17
  store i8 1, i8* %364, align 2, !tbaa !95
  %365 = call %struct.TString* @luaX_newstring(%struct.LexState* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i64 13) #6
  call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %365) #6
  %366 = call %struct.TString* @luaX_newstring(%struct.LexState* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i64 13) #6
  call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %366) #6
  call fastcc void @new_localvar(%struct.LexState* %0, %struct.TString* %272) #6
  %367 = load i32, i32* %28, align 8, !tbaa !63
  %368 = icmp eq i32 %367, 44
  br i1 %368, label %369, label %382

; <label>:369:                                    ; preds = %361
  br label %370

; <label>:370:                                    ; preds = %369, %375
  %371 = phi i32 [ %377, %375 ], [ 5, %369 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %372 = load i32, i32* %28, align 8, !tbaa !63
  %373 = icmp eq i32 %372, 292
  br i1 %373, label %375, label %374

; <label>:374:                                    ; preds = %370
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #7
  unreachable

; <label>:375:                                    ; preds = %370
  %376 = load %struct.TString*, %struct.TString** %271, align 8, !tbaa !11
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %376) #6
  %377 = add nuw nsw i32 %371, 1
  %378 = load i32, i32* %28, align 8, !tbaa !63
  %379 = icmp eq i32 %378, 44
  br i1 %379, label %370, label %380

; <label>:380:                                    ; preds = %375
  %381 = add nsw i32 %371, -3
  br label %382

; <label>:382:                                    ; preds = %380, %361
  %383 = phi i32 [ %367, %361 ], [ %378, %380 ]
  %384 = phi i32 [ 1, %361 ], [ %381, %380 ]
  %385 = icmp eq i32 %383, 268
  br i1 %385, label %387, label %386

; <label>:386:                                    ; preds = %382
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 268) #7
  unreachable

; <label>:387:                                    ; preds = %382
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %388 = load i32, i32* %24, align 4, !tbaa !86
  %389 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %16, i32 0) #6
  %390 = load i32, i32* %28, align 8, !tbaa !63
  %391 = icmp eq i32 %390, 44
  br i1 %391, label %392, label %402

; <label>:392:                                    ; preds = %387
  br label %393

; <label>:393:                                    ; preds = %392, %393
  %394 = phi i32 [ %397, %393 ], [ 1, %392 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %395 = load %struct.FuncState*, %struct.FuncState** %235, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %395, %struct.expdesc* nonnull %16) #6
  %396 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %16, i32 0) #6
  %397 = add nuw nsw i32 %394, 1
  %398 = load i32, i32* %28, align 8, !tbaa !63
  %399 = icmp eq i32 %398, 44
  br i1 %399, label %393, label %400

; <label>:400:                                    ; preds = %393
  %401 = sub nsw i32 3, %394
  br label %402

; <label>:402:                                    ; preds = %400, %387
  %403 = phi i32 [ 3, %387 ], [ %401, %400 ]
  %404 = load %struct.FuncState*, %struct.FuncState** %235, align 8, !tbaa !34
  %405 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %16, i64 0, i32 0
  %406 = load i32, i32* %405, align 8, !tbaa !61
  switch i32 %406, label %407 [
    i32 16, label %414
    i32 17, label %414
    i32 0, label %408
  ]

; <label>:407:                                    ; preds = %402
  call void @luaK_exp2nextreg(%struct.FuncState* %404, %struct.expdesc* nonnull %16) #6
  br label %408

; <label>:408:                                    ; preds = %407, %402
  %409 = icmp sgt i32 %403, 0
  br i1 %409, label %410, label %420

; <label>:410:                                    ; preds = %408
  %411 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %404, i64 0, i32 15
  %412 = load i8, i8* %411, align 4, !tbaa !88
  %413 = zext i8 %412 to i32
  call void @luaK_nil(%struct.FuncState* %404, i32 %413, i32 %403) #6
  br label %419

; <label>:414:                                    ; preds = %402, %402
  %415 = add nsw i32 %403, 1
  %416 = icmp sgt i32 %415, 0
  %417 = select i1 %416, i32 %415, i32 0
  call void @luaK_setreturns(%struct.FuncState* %404, %struct.expdesc* nonnull %16, i32 %417) #6
  %418 = icmp sgt i32 %403, 0
  br i1 %418, label %419, label %420

; <label>:419:                                    ; preds = %414, %410
  call void @luaK_reserveregs(%struct.FuncState* %404, i32 %403) #6
  br label %425

; <label>:420:                                    ; preds = %414, %408
  %421 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %404, i64 0, i32 15
  %422 = load i8, i8* %421, align 4, !tbaa !88
  %423 = trunc i32 %403 to i8
  %424 = add i8 %422, %423
  store i8 %424, i8* %421, align 4, !tbaa !88
  br label %425

; <label>:425:                                    ; preds = %420, %419
  %426 = load %struct.FuncState*, %struct.FuncState** %235, align 8, !tbaa !34
  %427 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %426, i64 0, i32 13
  %428 = load i8, i8* %427, align 2, !tbaa !74
  %429 = add i8 %428, 4
  store i8 %429, i8* %427, align 2, !tbaa !74
  %430 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %426, i64 0, i32 4
  %431 = load i32, i32* %430, align 8, !tbaa !37
  %432 = zext i8 %429 to i32
  %433 = getelementptr %struct.FuncState, %struct.FuncState* %426, i64 0, i32 0
  %434 = load %struct.Proto*, %struct.Proto** %433, align 8, !tbaa !19
  %435 = getelementptr %struct.FuncState, %struct.FuncState* %426, i64 0, i32 2
  %436 = load %struct.LexState*, %struct.LexState** %435, align 8, !tbaa !36
  %437 = getelementptr %struct.FuncState, %struct.FuncState* %426, i64 0, i32 10
  %438 = load i32, i32* %437, align 8, !tbaa !44
  %439 = getelementptr %struct.Proto, %struct.Proto* %434, i64 0, i32 21
  %440 = load %struct.LocVar*, %struct.LocVar** %439, align 8, !tbaa !80
  %441 = getelementptr %struct.LexState, %struct.LexState* %436, i64 0, i32 10
  %442 = load %struct.Dyndata*, %struct.Dyndata** %441, align 8, !tbaa !27
  %443 = getelementptr %struct.Dyndata, %struct.Dyndata* %442, i64 0, i32 0, i32 0
  %444 = load %struct.Vardesc*, %struct.Vardesc** %443, align 8, !tbaa !89
  %445 = add i32 %438, %432
  %446 = add i32 %445, -4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %444, i64 %447, i32 0
  %449 = load i16, i16* %448, align 2, !tbaa !90
  %450 = sext i16 %449 to i64
  %451 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %440, i64 %450, i32 1
  store i32 %431, i32* %451, align 8, !tbaa !92
  %452 = add i32 %445, -3
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %444, i64 %453, i32 0
  %455 = load i16, i16* %454, align 2, !tbaa !90
  %456 = sext i16 %455 to i64
  %457 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %440, i64 %456, i32 1
  store i32 %431, i32* %457, align 8, !tbaa !92
  %458 = add i32 %445, -2
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %444, i64 %459, i32 0
  %461 = load i16, i16* %460, align 2, !tbaa !90
  %462 = sext i16 %461 to i64
  %463 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %440, i64 %462, i32 1
  store i32 %431, i32* %463, align 8, !tbaa !92
  %464 = add i32 %445, -1
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %444, i64 %465, i32 0
  %467 = load i16, i16* %466, align 2, !tbaa !90
  %468 = sext i16 %467 to i64
  %469 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %440, i64 %468, i32 1
  store i32 %431, i32* %469, align 8, !tbaa !92
  call void @luaK_checkstack(%struct.FuncState* %345, i32 3) #6
  call fastcc void @forbody(%struct.LexState* nonnull %0, i32 %362, i32 %388, i32 %384, i32 1) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %346) #6
  br label %471

; <label>:470:                                    ; preds = %269
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0)) #7
  unreachable

; <label>:471:                                    ; preds = %425, %305
  %472 = load i32, i32* %28, align 8, !tbaa !63
  %473 = icmp eq i32 %472, 262
  br i1 %473, label %483, label %474

; <label>:474:                                    ; preds = %471
  %475 = load i32, i32* %24, align 4, !tbaa !86
  %476 = icmp eq i32 %475, %25
  br i1 %476, label %477, label %478

; <label>:477:                                    ; preds = %474
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 262) #7
  unreachable

; <label>:478:                                    ; preds = %474
  %479 = load %struct.lua_State*, %struct.lua_State** %26, align 8, !tbaa !66
  %480 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 262) #6
  %481 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 264) #6
  %482 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %479, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* %480, i8* %481, i32 %25) #6
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %482) #7
  unreachable

; <label>:483:                                    ; preds = %471
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  call fastcc void @leaveblock(%struct.FuncState* %236) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %237) #6
  br label %1091

; <label>:484:                                    ; preds = %1
  %485 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %486 = load %struct.FuncState*, %struct.FuncState** %485, align 8, !tbaa !34
  %487 = tail call i32 @luaK_getlabel(%struct.FuncState* %486) #6
  %488 = bitcast %struct.BlockCnt* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %488) #6
  %489 = bitcast %struct.BlockCnt* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %489) #6
  %490 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %14, i64 0, i32 5
  store i8 1, i8* %490, align 2, !tbaa !48
  %491 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %486, i64 0, i32 13
  %492 = load i8, i8* %491, align 2, !tbaa !74
  %493 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %14, i64 0, i32 3
  store i8 %492, i8* %493, align 8, !tbaa !50
  %494 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %486, i64 0, i32 2
  %495 = load %struct.LexState*, %struct.LexState** %494, align 8, !tbaa !36
  %496 = getelementptr inbounds %struct.LexState, %struct.LexState* %495, i64 0, i32 10
  %497 = load %struct.Dyndata*, %struct.Dyndata** %496, align 8, !tbaa !27
  %498 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %497, i64 0, i32 2, i32 1
  %499 = load i32, i32* %498, align 8, !tbaa !28
  %500 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %14, i64 0, i32 1
  store i32 %499, i32* %500, align 8, !tbaa !51
  %501 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %497, i64 0, i32 1, i32 1
  %502 = load i32, i32* %501, align 8, !tbaa !32
  %503 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %14, i64 0, i32 2
  store i32 %502, i32* %503, align 4, !tbaa !52
  %504 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %14, i64 0, i32 4
  store i8 0, i8* %504, align 1, !tbaa !53
  %505 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %486, i64 0, i32 3
  %506 = load %struct.BlockCnt*, %struct.BlockCnt** %505, align 8, !tbaa !56
  %507 = icmp eq %struct.BlockCnt* %506, null
  %508 = ptrtoint %struct.BlockCnt* %506 to i64
  br i1 %507, label %514, label %509

; <label>:509:                                    ; preds = %484
  %510 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %506, i64 0, i32 6
  %511 = load i8, i8* %510, align 1, !tbaa !54
  %512 = icmp ne i8 %511, 0
  %513 = zext i1 %512 to i8
  br label %514

; <label>:514:                                    ; preds = %509, %484
  %515 = phi i8 [ 0, %484 ], [ %513, %509 ]
  %516 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %14, i64 0, i32 6
  store i8 %515, i8* %516, align 1, !tbaa !54
  %517 = bitcast %struct.BlockCnt* %14 to i64*
  store i64 %508, i64* %517, align 8, !tbaa !55
  %518 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 5
  store i8 0, i8* %518, align 2, !tbaa !48
  %519 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 3
  store i8 %492, i8* %519, align 8, !tbaa !50
  %520 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 1
  store i32 %499, i32* %520, align 8, !tbaa !51
  %521 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 2
  store i32 %502, i32* %521, align 4, !tbaa !52
  %522 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 4
  store i8 0, i8* %522, align 1, !tbaa !53
  %523 = ptrtoint %struct.BlockCnt* %14 to i64
  %524 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 6
  store i8 %515, i8* %524, align 1, !tbaa !54
  %525 = bitcast %struct.BlockCnt* %15 to i64*
  store i64 %523, i64* %525, align 8, !tbaa !55
  store %struct.BlockCnt* %15, %struct.BlockCnt** %505, align 8, !tbaa !56
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  br label %526

; <label>:526:                                    ; preds = %528, %514
  %527 = load i32, i32* %28, align 8, !tbaa !63
  switch i32 %527, label %528 [
    i32 260, label %532
    i32 261, label %532
    i32 262, label %532
    i32 289, label %532
    i32 277, label %532
  ]

; <label>:528:                                    ; preds = %526
  %529 = icmp eq i32 %527, 274
  call fastcc void @statement(%struct.LexState* nonnull %0) #6
  br i1 %529, label %530, label %526

; <label>:530:                                    ; preds = %528
  %531 = load i32, i32* %28, align 8, !tbaa !63
  br label %532

; <label>:532:                                    ; preds = %526, %526, %526, %526, %526, %530
  %533 = phi i32 [ %531, %530 ], [ %527, %526 ], [ %527, %526 ], [ %527, %526 ], [ %527, %526 ], [ %527, %526 ]
  %534 = icmp eq i32 %533, 277
  br i1 %534, label %544, label %535

; <label>:535:                                    ; preds = %532
  %536 = load i32, i32* %24, align 4, !tbaa !86
  %537 = icmp eq i32 %536, %25
  br i1 %537, label %538, label %539

; <label>:538:                                    ; preds = %535
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 277) #7
  unreachable

; <label>:539:                                    ; preds = %535
  %540 = load %struct.lua_State*, %struct.lua_State** %26, align 8, !tbaa !66
  %541 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 277) #6
  %542 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 273) #6
  %543 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %540, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* %541, i8* %542, i32 %25) #6
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %543) #7
  unreachable

; <label>:544:                                    ; preds = %532
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %545 = bitcast %struct.expdesc* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %545) #6
  %546 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %13, i32 0) #6
  %547 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %13, i64 0, i32 0
  %548 = load i32, i32* %547, align 8, !tbaa !61
  %549 = icmp eq i32 %548, 1
  br i1 %549, label %550, label %551

; <label>:550:                                    ; preds = %544
  store i32 3, i32* %547, align 8, !tbaa !61
  br label %551

; <label>:551:                                    ; preds = %550, %544
  %552 = load %struct.FuncState*, %struct.FuncState** %485, align 8, !tbaa !34
  call void @luaK_goiftrue(%struct.FuncState* %552, %struct.expdesc* nonnull %13) #6
  %553 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %13, i64 0, i32 3
  %554 = load i32, i32* %553, align 4, !tbaa !60
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %545) #6
  call fastcc void @leaveblock(%struct.FuncState* %486) #6
  %555 = load i8, i8* %522, align 1, !tbaa !53
  %556 = icmp eq i8 %555, 0
  br i1 %556, label %563, label %557

; <label>:557:                                    ; preds = %551
  %558 = call i32 @luaK_jump(%struct.FuncState* %486) #6
  call void @luaK_patchtohere(%struct.FuncState* %486, i32 %554) #6
  %559 = load i8, i8* %519, align 8, !tbaa !50
  %560 = zext i8 %559 to i32
  %561 = call i32 @luaK_codeABCk(%struct.FuncState* %486, i32 55, i32 %560, i32 0, i32 0, i32 0) #6
  %562 = call i32 @luaK_jump(%struct.FuncState* %486) #6
  call void @luaK_patchtohere(%struct.FuncState* %486, i32 %558) #6
  br label %563

; <label>:563:                                    ; preds = %551, %557
  %564 = phi i32 [ %562, %557 ], [ %554, %551 ]
  call void @luaK_patchlist(%struct.FuncState* %486, i32 %564, i32 %487) #6
  call fastcc void @leaveblock(%struct.FuncState* %486) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %489) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %488) #6
  br label %1091

; <label>:565:                                    ; preds = %1
  %566 = bitcast %struct.expdesc* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %566) #6
  %567 = bitcast %struct.expdesc* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %567) #6
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %568 = load i32, i32* %28, align 8, !tbaa !63
  %569 = icmp eq i32 %568, 292
  br i1 %569, label %571, label %570

; <label>:570:                                    ; preds = %565
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #7
  unreachable

; <label>:571:                                    ; preds = %565
  %572 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %573 = bitcast %union.SemInfo* %572 to %struct.TString**
  %574 = load %struct.TString*, %struct.TString** %573, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %575 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %576 = load %struct.FuncState*, %struct.FuncState** %575, align 8, !tbaa !34
  call fastcc void @singlevaraux(%struct.FuncState* %576, %struct.TString* %574, %struct.expdesc* nonnull %11, i32 1) #6
  %577 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %11, i64 0, i32 0
  %578 = load i32, i32* %577, align 8, !tbaa !61
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %580, label %591

; <label>:580:                                    ; preds = %571
  %581 = bitcast %struct.expdesc* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %581) #6
  %582 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 12
  %583 = load %struct.TString*, %struct.TString** %582, align 8, !tbaa !62
  call fastcc void @singlevaraux(%struct.FuncState* %576, %struct.TString* %583, %struct.expdesc* nonnull %11, i32 1) #6
  %584 = load %struct.FuncState*, %struct.FuncState** %575, align 8, !tbaa !34
  %585 = tail call i32 @luaK_stringK(%struct.FuncState* %584, %struct.TString* %574) #6
  %586 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i64 0, i32 2
  store i32 -1, i32* %586, align 8, !tbaa !58
  %587 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i64 0, i32 3
  store i32 -1, i32* %587, align 4, !tbaa !60
  %588 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i64 0, i32 0
  store i32 4, i32* %588, align 8, !tbaa !61
  %589 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i64 0, i32 1
  %590 = bitcast %union.anon.7* %589 to i32*
  store i32 %585, i32* %590, align 8, !tbaa !11
  call void @luaK_indexed(%struct.FuncState* %576, %struct.expdesc* nonnull %11, %struct.expdesc* nonnull %10) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %581) #6
  br label %591

; <label>:591:                                    ; preds = %580, %571
  br label %592

; <label>:592:                                    ; preds = %591, %594
  %593 = load i32, i32* %28, align 8, !tbaa !63
  switch i32 %593, label %596 [
    i32 46, label %594
    i32 58, label %595
  ]

; <label>:594:                                    ; preds = %592
  call fastcc void @fieldsel(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %11) #6
  br label %592

; <label>:595:                                    ; preds = %592
  call fastcc void @fieldsel(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %11) #6
  br label %596

; <label>:596:                                    ; preds = %592, %595
  %597 = phi i32 [ 1, %595 ], [ 0, %592 ]
  call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %12, i32 %597, i32 %25) #6
  %598 = load %struct.FuncState*, %struct.FuncState** %575, align 8, !tbaa !34
  call void @luaK_storevar(%struct.FuncState* %598, %struct.expdesc* nonnull %11, %struct.expdesc* nonnull %12) #6
  %599 = load %struct.FuncState*, %struct.FuncState** %575, align 8, !tbaa !34
  call void @luaK_fixline(%struct.FuncState* %599, i32 %25) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %567) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %566) #6
  br label %1091

; <label>:600:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %601 = load i32, i32* %28, align 8, !tbaa !63
  switch i32 %601, label %738 [
    i32 265, label %602
    i32 42, label %663
  ]

; <label>:602:                                    ; preds = %600
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %603 = bitcast %struct.expdesc* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %603) #6
  %604 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %605 = load %struct.FuncState*, %struct.FuncState** %604, align 8, !tbaa !34
  %606 = load i32, i32* %28, align 8, !tbaa !63
  %607 = icmp eq i32 %606, 292
  br i1 %607, label %609, label %608

; <label>:608:                                    ; preds = %602
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #7
  unreachable

; <label>:609:                                    ; preds = %602
  %610 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %611 = bitcast %union.SemInfo* %610 to %struct.TString**
  %612 = load %struct.TString*, %struct.TString** %611, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %612) #6
  %613 = load %struct.FuncState*, %struct.FuncState** %604, align 8, !tbaa !34
  %614 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %613, i64 0, i32 13
  %615 = load i8, i8* %614, align 2, !tbaa !74
  %616 = add i8 %615, 1
  store i8 %616, i8* %614, align 2, !tbaa !74
  %617 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %613, i64 0, i32 4
  %618 = load i32, i32* %617, align 8, !tbaa !37
  %619 = zext i8 %616 to i32
  %620 = getelementptr %struct.FuncState, %struct.FuncState* %613, i64 0, i32 0
  %621 = load %struct.Proto*, %struct.Proto** %620, align 8, !tbaa !19
  %622 = getelementptr %struct.FuncState, %struct.FuncState* %613, i64 0, i32 2
  %623 = load %struct.LexState*, %struct.LexState** %622, align 8, !tbaa !36
  %624 = getelementptr %struct.FuncState, %struct.FuncState* %613, i64 0, i32 10
  %625 = load i32, i32* %624, align 8, !tbaa !44
  %626 = getelementptr %struct.Proto, %struct.Proto* %621, i64 0, i32 21
  %627 = load %struct.LocVar*, %struct.LocVar** %626, align 8, !tbaa !80
  %628 = getelementptr %struct.LexState, %struct.LexState* %623, i64 0, i32 10
  %629 = load %struct.Dyndata*, %struct.Dyndata** %628, align 8, !tbaa !27
  %630 = getelementptr %struct.Dyndata, %struct.Dyndata* %629, i64 0, i32 0, i32 0
  %631 = load %struct.Vardesc*, %struct.Vardesc** %630, align 8, !tbaa !89
  %632 = add i32 %625, %619
  %633 = add i32 %632, -1
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %631, i64 %634, i32 0
  %636 = load i16, i16* %635, align 2, !tbaa !90
  %637 = sext i16 %636 to i64
  %638 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %627, i64 %637, i32 1
  store i32 %618, i32* %638, align 8, !tbaa !92
  %639 = load i32, i32* %24, align 4, !tbaa !86
  call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %9, i32 0, i32 %639) #6
  %640 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %605, i64 0, i32 4
  %641 = load i32, i32* %640, align 8, !tbaa !37
  %642 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %9, i64 0, i32 1
  %643 = bitcast %union.anon.7* %642 to i32*
  %644 = load i32, i32* %643, align 8, !tbaa !11
  %645 = getelementptr %struct.FuncState, %struct.FuncState* %605, i64 0, i32 0
  %646 = load %struct.Proto*, %struct.Proto** %645, align 8, !tbaa !19
  %647 = getelementptr %struct.FuncState, %struct.FuncState* %605, i64 0, i32 2
  %648 = load %struct.LexState*, %struct.LexState** %647, align 8, !tbaa !36
  %649 = getelementptr %struct.FuncState, %struct.FuncState* %605, i64 0, i32 10
  %650 = load i32, i32* %649, align 8, !tbaa !44
  %651 = getelementptr %struct.Proto, %struct.Proto* %646, i64 0, i32 21
  %652 = load %struct.LocVar*, %struct.LocVar** %651, align 8, !tbaa !80
  %653 = getelementptr %struct.LexState, %struct.LexState* %648, i64 0, i32 10
  %654 = load %struct.Dyndata*, %struct.Dyndata** %653, align 8, !tbaa !27
  %655 = getelementptr %struct.Dyndata, %struct.Dyndata* %654, i64 0, i32 0, i32 0
  %656 = load %struct.Vardesc*, %struct.Vardesc** %655, align 8, !tbaa !89
  %657 = add nsw i32 %650, %644
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %656, i64 %658, i32 0
  %660 = load i16, i16* %659, align 2, !tbaa !90
  %661 = sext i16 %660 to i64
  %662 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %652, i64 %661, i32 1
  store i32 %641, i32* %662, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %603) #6
  br label %1091

; <label>:663:                                    ; preds = %600
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %664 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %665 = load %struct.FuncState*, %struct.FuncState** %664, align 8, !tbaa !34
  %666 = load i32, i32* %28, align 8, !tbaa !63
  %667 = icmp eq i32 %666, 292
  br i1 %667, label %669, label %668

; <label>:668:                                    ; preds = %663
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #7
  unreachable

; <label>:669:                                    ; preds = %663
  %670 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %671 = bitcast %union.SemInfo* %670 to %struct.TString**
  %672 = load %struct.TString*, %struct.TString** %671, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %673 = getelementptr inbounds %struct.TString, %struct.TString* %672, i64 1
  %674 = bitcast %struct.TString* %673 to i8*
  %675 = tail call i32 @strcmp(i8* nonnull %674, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)) #8
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %680, label %677

; <label>:677:                                    ; preds = %669
  %678 = load %struct.lua_State*, %struct.lua_State** %26, align 8, !tbaa !66
  %679 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %678, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), %struct.TString* nonnull %673) #6
  tail call void @luaK_semerror(%struct.LexState* nonnull %0, i8* %679) #7
  unreachable

; <label>:680:                                    ; preds = %669
  %681 = load i32, i32* %28, align 8, !tbaa !63
  %682 = icmp eq i32 %681, 292
  br i1 %682, label %684, label %683

; <label>:683:                                    ; preds = %680
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #7
  unreachable

; <label>:684:                                    ; preds = %680
  %685 = load %struct.TString*, %struct.TString** %671, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %685) #6
  %686 = load i32, i32* %28, align 8, !tbaa !63
  %687 = icmp eq i32 %686, 61
  br i1 %687, label %689, label %688

; <label>:688:                                    ; preds = %684
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 61) #7
  unreachable

; <label>:689:                                    ; preds = %684
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %690 = bitcast %struct.expdesc* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %690) #6
  %691 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %2, i32 0) #6
  %692 = load %struct.FuncState*, %struct.FuncState** %664, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %692, %struct.expdesc* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %690) #6
  %693 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %665, i64 0, i32 13
  %694 = load i8, i8* %693, align 2, !tbaa !74
  %695 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %665, i64 0, i32 3
  br label %696

; <label>:696:                                    ; preds = %696, %689
  %697 = phi %struct.BlockCnt** [ %695, %689 ], [ %702, %696 ]
  %698 = load %struct.BlockCnt*, %struct.BlockCnt** %697, align 8, !tbaa !94
  %699 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %698, i64 0, i32 3
  %700 = load i8, i8* %699, align 8, !tbaa !50
  %701 = icmp ugt i8 %700, %694
  %702 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %698, i64 0, i32 0
  br i1 %701, label %696, label %703

; <label>:703:                                    ; preds = %696
  %704 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %698, i64 0, i32 4
  store i8 1, i8* %704, align 1, !tbaa !53
  %705 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %665, i64 0, i32 17
  store i8 1, i8* %705, align 2, !tbaa !95
  %706 = load %struct.BlockCnt*, %struct.BlockCnt** %695, align 8, !tbaa !56
  %707 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %706, i64 0, i32 6
  store i8 1, i8* %707, align 1, !tbaa !54
  %708 = load %struct.FuncState*, %struct.FuncState** %664, align 8, !tbaa !34
  %709 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %708, i64 0, i32 13
  %710 = load i8, i8* %709, align 2, !tbaa !74
  %711 = add i8 %710, 1
  store i8 %711, i8* %709, align 2, !tbaa !74
  %712 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %708, i64 0, i32 4
  %713 = load i32, i32* %712, align 8, !tbaa !37
  %714 = zext i8 %711 to i32
  %715 = getelementptr %struct.FuncState, %struct.FuncState* %708, i64 0, i32 0
  %716 = load %struct.Proto*, %struct.Proto** %715, align 8, !tbaa !19
  %717 = getelementptr %struct.FuncState, %struct.FuncState* %708, i64 0, i32 2
  %718 = load %struct.LexState*, %struct.LexState** %717, align 8, !tbaa !36
  %719 = getelementptr %struct.FuncState, %struct.FuncState* %708, i64 0, i32 10
  %720 = load i32, i32* %719, align 8, !tbaa !44
  %721 = getelementptr %struct.Proto, %struct.Proto* %716, i64 0, i32 21
  %722 = load %struct.LocVar*, %struct.LocVar** %721, align 8, !tbaa !80
  %723 = getelementptr %struct.LexState, %struct.LexState* %718, i64 0, i32 10
  %724 = load %struct.Dyndata*, %struct.Dyndata** %723, align 8, !tbaa !27
  %725 = getelementptr %struct.Dyndata, %struct.Dyndata* %724, i64 0, i32 0, i32 0
  %726 = load %struct.Vardesc*, %struct.Vardesc** %725, align 8, !tbaa !89
  %727 = add i32 %720, %714
  %728 = add i32 %727, -1
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %726, i64 %729, i32 0
  %731 = load i16, i16* %730, align 2, !tbaa !90
  %732 = sext i16 %731 to i64
  %733 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %722, i64 %732, i32 1
  store i32 %713, i32* %733, align 8, !tbaa !92
  %734 = load i8, i8* %693, align 2, !tbaa !74
  %735 = zext i8 %734 to i32
  %736 = add nsw i32 %735, -1
  %737 = call i32 @luaK_codeABCk(%struct.FuncState* %665, i32 56, i32 %736, i32 0, i32 0, i32 0) #6
  br label %1091

; <label>:738:                                    ; preds = %600
  %739 = bitcast %struct.expdesc* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %739) #6
  %740 = icmp eq i32 %601, 292
  br i1 %740, label %741, label %747

; <label>:741:                                    ; preds = %738
  %742 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %743 = bitcast %union.SemInfo* %742 to %struct.TString**
  br label %748

; <label>:744:                                    ; preds = %748
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %745 = load i32, i32* %28, align 8, !tbaa !63
  %746 = icmp eq i32 %745, 292
  br i1 %746, label %748, label %747

; <label>:747:                                    ; preds = %744, %738
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #7
  unreachable

; <label>:748:                                    ; preds = %741, %744
  %749 = phi i32 [ 0, %741 ], [ %751, %744 ]
  %750 = load %struct.TString*, %struct.TString** %743, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %750) #6
  %751 = add nuw nsw i32 %749, 1
  %752 = load i32, i32* %28, align 8, !tbaa !63
  switch i32 %752, label %766 [
    i32 44, label %744
    i32 61, label %753
  ]

; <label>:753:                                    ; preds = %748
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %754 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %8, i32 0) #6
  %755 = load i32, i32* %28, align 8, !tbaa !63
  %756 = icmp eq i32 %755, 44
  br i1 %756, label %757, label %768

; <label>:757:                                    ; preds = %753
  %758 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %759

; <label>:759:                                    ; preds = %757, %759
  %760 = phi i32 [ 1, %757 ], [ %763, %759 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %761 = load %struct.FuncState*, %struct.FuncState** %758, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %761, %struct.expdesc* nonnull %8) #6
  %762 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %8, i32 0) #6
  %763 = add nuw nsw i32 %760, 1
  %764 = load i32, i32* %28, align 8, !tbaa !63
  %765 = icmp eq i32 %764, 44
  br i1 %765, label %759, label %768

; <label>:766:                                    ; preds = %748
  %767 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 0
  store i32 0, i32* %767, align 8, !tbaa !61
  br label %768

; <label>:768:                                    ; preds = %759, %753, %766
  %769 = phi i32 [ 0, %766 ], [ 1, %753 ], [ %763, %759 ]
  %770 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %771 = load %struct.FuncState*, %struct.FuncState** %770, align 8, !tbaa !34
  %772 = sub nsw i32 %751, %769
  %773 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 0
  %774 = load i32, i32* %773, align 8, !tbaa !61
  switch i32 %774, label %775 [
    i32 16, label %782
    i32 17, label %782
    i32 0, label %776
  ]

; <label>:775:                                    ; preds = %768
  call void @luaK_exp2nextreg(%struct.FuncState* %771, %struct.expdesc* nonnull %8) #6
  br label %776

; <label>:776:                                    ; preds = %775, %768
  %777 = icmp sgt i32 %772, 0
  br i1 %777, label %778, label %788

; <label>:778:                                    ; preds = %776
  %779 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %771, i64 0, i32 15
  %780 = load i8, i8* %779, align 4, !tbaa !88
  %781 = zext i8 %780 to i32
  call void @luaK_nil(%struct.FuncState* %771, i32 %781, i32 %772) #6
  br label %787

; <label>:782:                                    ; preds = %768, %768
  %783 = add nsw i32 %772, 1
  %784 = icmp sgt i32 %783, 0
  %785 = select i1 %784, i32 %783, i32 0
  call void @luaK_setreturns(%struct.FuncState* %771, %struct.expdesc* nonnull %8, i32 %785) #6
  %786 = icmp sgt i32 %772, 0
  br i1 %786, label %787, label %788

; <label>:787:                                    ; preds = %782, %778
  call void @luaK_reserveregs(%struct.FuncState* %771, i32 %772) #6
  br label %793

; <label>:788:                                    ; preds = %782, %776
  %789 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %771, i64 0, i32 15
  %790 = load i8, i8* %789, align 4, !tbaa !88
  %791 = trunc i32 %772 to i8
  %792 = add i8 %790, %791
  store i8 %792, i8* %789, align 4, !tbaa !88
  br label %793

; <label>:793:                                    ; preds = %788, %787
  %794 = load %struct.FuncState*, %struct.FuncState** %770, align 8, !tbaa !34
  %795 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %794, i64 0, i32 13
  %796 = load i8, i8* %795, align 2, !tbaa !74
  %797 = trunc i32 %751 to i8
  %798 = add i8 %796, %797
  store i8 %798, i8* %795, align 2, !tbaa !74
  %799 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %794, i64 0, i32 4
  %800 = load i32, i32* %799, align 8, !tbaa !37
  %801 = zext i8 %798 to i32
  %802 = getelementptr %struct.FuncState, %struct.FuncState* %794, i64 0, i32 0
  %803 = load %struct.Proto*, %struct.Proto** %802, align 8, !tbaa !19
  %804 = getelementptr %struct.FuncState, %struct.FuncState* %794, i64 0, i32 2
  %805 = load %struct.LexState*, %struct.LexState** %804, align 8, !tbaa !36
  %806 = getelementptr %struct.FuncState, %struct.FuncState* %794, i64 0, i32 10
  %807 = load i32, i32* %806, align 8, !tbaa !44
  %808 = getelementptr %struct.Proto, %struct.Proto* %803, i64 0, i32 21
  %809 = load %struct.LocVar*, %struct.LocVar** %808, align 8, !tbaa !80
  %810 = getelementptr %struct.LexState, %struct.LexState* %805, i64 0, i32 10
  %811 = load %struct.Dyndata*, %struct.Dyndata** %810, align 8, !tbaa !27
  %812 = getelementptr %struct.Dyndata, %struct.Dyndata* %811, i64 0, i32 0, i32 0
  %813 = load %struct.Vardesc*, %struct.Vardesc** %812, align 8, !tbaa !89
  %814 = zext i32 %751 to i64
  %815 = add i32 %807, %801
  %816 = and i32 %751, 1
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %826, label %818

; <label>:818:                                    ; preds = %793
  %819 = sub i32 %815, %751
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %813, i64 %820, i32 0
  %822 = load i16, i16* %821, align 2, !tbaa !90
  %823 = sext i16 %822 to i64
  %824 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %809, i64 %823, i32 1
  store i32 %800, i32* %824, align 8, !tbaa !92
  %825 = add nsw i64 %814, -1
  br label %826

; <label>:826:                                    ; preds = %793, %818
  %827 = phi i64 [ %814, %793 ], [ %825, %818 ]
  %828 = icmp eq i32 %749, 0
  br i1 %828, label %850, label %829

; <label>:829:                                    ; preds = %826
  br label %830

; <label>:830:                                    ; preds = %830, %829
  %831 = phi i64 [ %827, %829 ], [ %847, %830 ]
  %832 = trunc i64 %831 to i32
  %833 = sub i32 %815, %832
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %813, i64 %834, i32 0
  %836 = load i16, i16* %835, align 2, !tbaa !90
  %837 = sext i16 %836 to i64
  %838 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %809, i64 %837, i32 1
  store i32 %800, i32* %838, align 8, !tbaa !92
  %839 = trunc i64 %831 to i32
  %840 = add i32 %839, -1
  %841 = sub i32 %815, %840
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %813, i64 %842, i32 0
  %844 = load i16, i16* %843, align 2, !tbaa !90
  %845 = sext i16 %844 to i64
  %846 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %809, i64 %845, i32 1
  store i32 %800, i32* %846, align 8, !tbaa !92
  %847 = add nsw i64 %831, -2
  %848 = trunc i64 %847 to i32
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %850, label %830

; <label>:850:                                    ; preds = %830, %826
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %739) #6
  br label %1091

; <label>:851:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %852 = load i32, i32* %28, align 8, !tbaa !63
  %853 = icmp eq i32 %852, 292
  br i1 %853, label %855, label %854

; <label>:854:                                    ; preds = %851
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #7
  unreachable

; <label>:855:                                    ; preds = %851
  %856 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %857 = bitcast %union.SemInfo* %856 to %struct.TString**
  %858 = load %struct.TString*, %struct.TString** %857, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %859 = load i32, i32* %28, align 8, !tbaa !63
  %860 = icmp eq i32 %859, 288
  br i1 %860, label %862, label %861

; <label>:861:                                    ; preds = %855
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 288) #7
  unreachable

; <label>:862:                                    ; preds = %855
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  br label %863

; <label>:863:                                    ; preds = %865, %862
  %864 = load i32, i32* %28, align 8, !tbaa !63
  switch i32 %864, label %866 [
    i32 288, label %865
    i32 59, label %865
  ]

; <label>:865:                                    ; preds = %863, %863
  tail call fastcc void @statement(%struct.LexState* nonnull %0) #6
  br label %863

; <label>:866:                                    ; preds = %863
  %867 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %868 = load %struct.FuncState*, %struct.FuncState** %867, align 8, !tbaa !34
  %869 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %870 = load %struct.Dyndata*, %struct.Dyndata** %869, align 8, !tbaa !27
  %871 = getelementptr %struct.FuncState, %struct.FuncState* %868, i64 0, i32 11
  %872 = load i32, i32* %871, align 4, !tbaa !45
  %873 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %870, i64 0, i32 2, i32 1
  %874 = load i32, i32* %873, align 8, !tbaa !28
  %875 = icmp sgt i32 %874, %872
  br i1 %875, label %876, label %898

; <label>:876:                                    ; preds = %866
  %877 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %870, i64 0, i32 2, i32 0
  %878 = load %struct.Labeldesc*, %struct.Labeldesc** %877, align 8, !tbaa !96
  %879 = sext i32 %872 to i64
  %880 = sext i32 %874 to i64
  br label %883

; <label>:881:                                    ; preds = %883
  %882 = icmp slt i64 %889, %880
  br i1 %882, label %883, label %898

; <label>:883:                                    ; preds = %881, %876
  %884 = phi i64 [ %879, %876 ], [ %889, %881 ]
  %885 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %878, i64 %884
  %886 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %885, i64 0, i32 0
  %887 = load %struct.TString*, %struct.TString** %886, align 8, !tbaa !97
  %888 = icmp eq %struct.TString* %887, %858
  %889 = add nsw i64 %884, 1
  br i1 %888, label %890, label %881

; <label>:890:                                    ; preds = %883
  %891 = icmp eq %struct.Labeldesc* %885, null
  br i1 %891, label %898, label %892, !prof !99

; <label>:892:                                    ; preds = %890
  %893 = load %struct.lua_State*, %struct.lua_State** %26, align 8, !tbaa !66
  %894 = getelementptr inbounds %struct.TString, %struct.TString* %858, i64 1
  %895 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %878, i64 %884, i32 2
  %896 = load i32, i32* %895, align 4, !tbaa !100
  %897 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %893, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), %struct.TString* nonnull %894, i32 %896) #6
  tail call void @luaK_semerror(%struct.LexState* %0, i8* %897) #7
  unreachable

; <label>:898:                                    ; preds = %881, %890, %866
  switch i32 %864, label %900 [
    i32 260, label %901
    i32 261, label %901
    i32 262, label %901
    i32 289, label %901
    i32 277, label %899
  ]

; <label>:899:                                    ; preds = %898
  br label %901

; <label>:900:                                    ; preds = %898
  br label %901

; <label>:901:                                    ; preds = %898, %898, %898, %898, %899, %900
  %902 = phi i32 [ 0, %900 ], [ 0, %899 ], [ 1, %898 ], [ 1, %898 ], [ 1, %898 ], [ 1, %898 ]
  %903 = tail call fastcc i32 @createlabel(%struct.LexState* %0, %struct.TString* %858, i32 %25, i32 %902) #6
  br label %1091

; <label>:904:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %905 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %906 = load %struct.FuncState*, %struct.FuncState** %905, align 8, !tbaa !34
  %907 = bitcast %struct.expdesc* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %907) #6
  %908 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %906, i64 0, i32 13
  %909 = load i8, i8* %908, align 2, !tbaa !74
  %910 = zext i8 %909 to i32
  %911 = load i32, i32* %28, align 8, !tbaa !63
  switch i32 %911, label %912 [
    i32 260, label %959
    i32 261, label %959
    i32 262, label %959
    i32 289, label %959
    i32 277, label %959
    i32 59, label %959
  ]

; <label>:912:                                    ; preds = %904
  %913 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %7, i32 0) #6
  %914 = load i32, i32* %28, align 8, !tbaa !63
  %915 = icmp eq i32 %914, 44
  br i1 %915, label %916, label %924

; <label>:916:                                    ; preds = %912
  br label %917

; <label>:917:                                    ; preds = %916, %917
  %918 = phi i32 [ %921, %917 ], [ 1, %916 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %919 = load %struct.FuncState*, %struct.FuncState** %905, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %919, %struct.expdesc* nonnull %7) #6
  %920 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %7, i32 0) #6
  %921 = add nuw nsw i32 %918, 1
  %922 = load i32, i32* %28, align 8, !tbaa !63
  %923 = icmp eq i32 %922, 44
  br i1 %923, label %917, label %924

; <label>:924:                                    ; preds = %917, %912
  %925 = phi i32 [ 1, %912 ], [ %921, %917 ]
  %926 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i64 0, i32 0
  %927 = load i32, i32* %926, align 8, !tbaa !61
  %928 = and i32 %927, -2
  %929 = icmp eq i32 %928, 16
  br i1 %929, label %930, label %954

; <label>:930:                                    ; preds = %924
  call void @luaK_setreturns(%struct.FuncState* %906, %struct.expdesc* nonnull %7, i32 -1) #6
  %931 = load i32, i32* %926, align 8, !tbaa !61
  %932 = icmp eq i32 %931, 16
  %933 = icmp eq i32 %925, 1
  %934 = and i1 %933, %932
  br i1 %934, label %935, label %959

; <label>:935:                                    ; preds = %930
  %936 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %906, i64 0, i32 3
  %937 = load %struct.BlockCnt*, %struct.BlockCnt** %936, align 8, !tbaa !56
  %938 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %937, i64 0, i32 6
  %939 = load i8, i8* %938, align 1, !tbaa !54
  %940 = icmp eq i8 %939, 0
  br i1 %940, label %941, label %959

; <label>:941:                                    ; preds = %935
  %942 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %906, i64 0, i32 0
  %943 = load %struct.Proto*, %struct.Proto** %942, align 8, !tbaa !19
  %944 = getelementptr inbounds %struct.Proto, %struct.Proto* %943, i64 0, i32 16
  %945 = load i32*, i32** %944, align 8, !tbaa !75
  %946 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i64 0, i32 1
  %947 = bitcast %union.anon.7* %946 to i32*
  %948 = load i32, i32* %947, align 8, !tbaa !11
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds i32, i32* %945, i64 %949
  %951 = load i32, i32* %950, align 4, !tbaa !87
  %952 = and i32 %951, -128
  %953 = or i32 %952, 70
  store i32 %953, i32* %950, align 4, !tbaa !87
  br label %959

; <label>:954:                                    ; preds = %924
  %955 = icmp eq i32 %925, 1
  br i1 %955, label %956, label %958

; <label>:956:                                    ; preds = %954
  %957 = call i32 @luaK_exp2anyreg(%struct.FuncState* %906, %struct.expdesc* nonnull %7) #6
  br label %959

; <label>:958:                                    ; preds = %954
  call void @luaK_exp2nextreg(%struct.FuncState* %906, %struct.expdesc* nonnull %7) #6
  br label %959

; <label>:959:                                    ; preds = %904, %904, %904, %904, %904, %904, %958, %956, %941, %935, %930
  %960 = phi i32 [ 1, %956 ], [ %925, %958 ], [ -1, %935 ], [ -1, %941 ], [ -1, %930 ], [ 0, %904 ], [ 0, %904 ], [ 0, %904 ], [ 0, %904 ], [ 0, %904 ], [ 0, %904 ]
  %961 = phi i32 [ %957, %956 ], [ %910, %958 ], [ %910, %935 ], [ %910, %941 ], [ %910, %930 ], [ %910, %904 ], [ %910, %904 ], [ %910, %904 ], [ %910, %904 ], [ %910, %904 ], [ %910, %904 ]
  call void @luaK_ret(%struct.FuncState* %906, i32 %961, i32 %960) #6
  %962 = load i32, i32* %28, align 8, !tbaa !63
  %963 = icmp eq i32 %962, 59
  br i1 %963, label %964, label %965

; <label>:964:                                    ; preds = %959
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  br label %965

; <label>:965:                                    ; preds = %959, %964
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %907) #6
  br label %1091

; <label>:966:                                    ; preds = %1
  %967 = load i32, i32* %24, align 4, !tbaa !86
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %968 = load %struct.lua_State*, %struct.lua_State** %26, align 8, !tbaa !66
  %969 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %968, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #6
  %970 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %971 = load %struct.FuncState*, %struct.FuncState** %970, align 8, !tbaa !34
  %972 = tail call i32 @luaK_jump(%struct.FuncState* %971) #6
  %973 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %974 = load %struct.Dyndata*, %struct.Dyndata** %973, align 8, !tbaa !27
  %975 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %974, i64 0, i32 1
  %976 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %974, i64 0, i32 1, i32 1
  %977 = load i32, i32* %976, align 8, !tbaa !101
  %978 = load %struct.lua_State*, %struct.lua_State** %26, align 8, !tbaa !66
  %979 = bitcast %struct.Labellist* %975 to i8**
  %980 = load i8*, i8** %979, align 8, !tbaa !102
  %981 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %974, i64 0, i32 1, i32 2
  %982 = tail call i8* @luaM_growaux_(%struct.lua_State* %978, i8* %980, i32 %977, i32* nonnull %981, i32 24, i32 32767, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #6
  %983 = bitcast i8* %982 to %struct.Labeldesc*
  store i8* %982, i8** %979, align 8, !tbaa !102
  %984 = sext i32 %977 to i64
  %985 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %983, i64 %984, i32 0
  store %struct.TString* %969, %struct.TString** %985, align 8, !tbaa !97
  %986 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %983, i64 %984, i32 2
  store i32 %967, i32* %986, align 4, !tbaa !100
  %987 = load %struct.FuncState*, %struct.FuncState** %970, align 8, !tbaa !34
  %988 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %987, i64 0, i32 13
  %989 = load i8, i8* %988, align 2, !tbaa !74
  %990 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %983, i64 %984, i32 3
  store i8 %989, i8* %990, align 8, !tbaa !103
  %991 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %983, i64 %984, i32 4
  store i8 0, i8* %991, align 1, !tbaa !104
  %992 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %983, i64 %984, i32 1
  store i32 %972, i32* %992, align 8, !tbaa !105
  %993 = add nsw i32 %977, 1
  store i32 %993, i32* %976, align 8, !tbaa !101
  br label %1091

; <label>:994:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %995 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %996 = load %struct.FuncState*, %struct.FuncState** %995, align 8, !tbaa !34
  %997 = load i32, i32* %24, align 4, !tbaa !86
  %998 = load i32, i32* %28, align 8, !tbaa !63
  %999 = icmp eq i32 %998, 292
  br i1 %999, label %1001, label %1000

; <label>:1000:                                   ; preds = %994
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #7
  unreachable

; <label>:1001:                                   ; preds = %994
  %1002 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %1003 = bitcast %union.SemInfo* %1002 to %struct.TString**
  %1004 = load %struct.TString*, %struct.TString** %1003, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %1005 = load %struct.FuncState*, %struct.FuncState** %995, align 8, !tbaa !34
  %1006 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %1007 = load %struct.Dyndata*, %struct.Dyndata** %1006, align 8, !tbaa !27
  %1008 = getelementptr %struct.FuncState, %struct.FuncState* %1005, i64 0, i32 11
  %1009 = load i32, i32* %1008, align 4, !tbaa !45
  %1010 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %1007, i64 0, i32 2, i32 1
  %1011 = load i32, i32* %1010, align 8, !tbaa !28
  %1012 = icmp sgt i32 %1011, %1009
  br i1 %1012, label %1013, label %1029

; <label>:1013:                                   ; preds = %1001
  %1014 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %1007, i64 0, i32 2, i32 0
  %1015 = load %struct.Labeldesc*, %struct.Labeldesc** %1014, align 8, !tbaa !96
  %1016 = sext i32 %1009 to i64
  %1017 = sext i32 %1011 to i64
  br label %1020

; <label>:1018:                                   ; preds = %1020
  %1019 = icmp slt i64 %1026, %1017
  br i1 %1019, label %1020, label %1029

; <label>:1020:                                   ; preds = %1018, %1013
  %1021 = phi i64 [ %1016, %1013 ], [ %1026, %1018 ]
  %1022 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1015, i64 %1021
  %1023 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1022, i64 0, i32 0
  %1024 = load %struct.TString*, %struct.TString** %1023, align 8, !tbaa !97
  %1025 = icmp eq %struct.TString* %1024, %1004
  %1026 = add nsw i64 %1021, 1
  br i1 %1025, label %1027, label %1018

; <label>:1027:                                   ; preds = %1020
  %1028 = icmp eq %struct.Labeldesc* %1022, null
  br i1 %1028, label %1029, label %1051

; <label>:1029:                                   ; preds = %1018, %1027, %1001
  %1030 = tail call i32 @luaK_jump(%struct.FuncState* %996) #6
  %1031 = load %struct.Dyndata*, %struct.Dyndata** %1006, align 8, !tbaa !27
  %1032 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %1031, i64 0, i32 1
  %1033 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %1031, i64 0, i32 1, i32 1
  %1034 = load i32, i32* %1033, align 8, !tbaa !101
  %1035 = load %struct.lua_State*, %struct.lua_State** %26, align 8, !tbaa !66
  %1036 = bitcast %struct.Labellist* %1032 to i8**
  %1037 = load i8*, i8** %1036, align 8, !tbaa !102
  %1038 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %1031, i64 0, i32 1, i32 2
  %1039 = tail call i8* @luaM_growaux_(%struct.lua_State* %1035, i8* %1037, i32 %1034, i32* nonnull %1038, i32 24, i32 32767, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #6
  %1040 = bitcast i8* %1039 to %struct.Labeldesc*
  store i8* %1039, i8** %1036, align 8, !tbaa !102
  %1041 = sext i32 %1034 to i64
  %1042 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1040, i64 %1041, i32 0
  store %struct.TString* %1004, %struct.TString** %1042, align 8, !tbaa !97
  %1043 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1040, i64 %1041, i32 2
  store i32 %997, i32* %1043, align 4, !tbaa !100
  %1044 = load %struct.FuncState*, %struct.FuncState** %995, align 8, !tbaa !34
  %1045 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1044, i64 0, i32 13
  %1046 = load i8, i8* %1045, align 2, !tbaa !74
  %1047 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1040, i64 %1041, i32 3
  store i8 %1046, i8* %1047, align 8, !tbaa !103
  %1048 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1040, i64 %1041, i32 4
  store i8 0, i8* %1048, align 1, !tbaa !104
  %1049 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1040, i64 %1041, i32 1
  store i32 %1030, i32* %1049, align 8, !tbaa !105
  %1050 = add nsw i32 %1034, 1
  store i32 %1050, i32* %1033, align 8, !tbaa !101
  br label %1091

; <label>:1051:                                   ; preds = %1027
  %1052 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %996, i64 0, i32 13
  %1053 = load i8, i8* %1052, align 2, !tbaa !74
  %1054 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1015, i64 %1021, i32 3
  %1055 = load i8, i8* %1054, align 8, !tbaa !103
  %1056 = icmp ugt i8 %1053, %1055
  br i1 %1056, label %1057, label %1060

; <label>:1057:                                   ; preds = %1051
  %1058 = zext i8 %1055 to i32
  %1059 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %996, i32 55, i32 %1058, i32 0, i32 0, i32 0) #6
  br label %1060

; <label>:1060:                                   ; preds = %1057, %1051
  %1061 = tail call i32 @luaK_jump(%struct.FuncState* nonnull %996) #6
  %1062 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1015, i64 %1021, i32 1
  %1063 = load i32, i32* %1062, align 8, !tbaa !105
  tail call void @luaK_patchlist(%struct.FuncState* nonnull %996, i32 %1061, i32 %1063) #6
  br label %1091

; <label>:1064:                                   ; preds = %1
  %1065 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %1066 = load %struct.FuncState*, %struct.FuncState** %1065, align 8, !tbaa !34
  %1067 = bitcast %struct.LHS_assign* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1067) #6
  %1068 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %6, i64 0, i32 1
  call fastcc void @suffixedexp(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %1068) #6
  %1069 = load i32, i32* %28, align 8, !tbaa !63
  switch i32 %1069, label %1072 [
    i32 61, label %1070
    i32 44, label %1070
  ]

; <label>:1070:                                   ; preds = %1064, %1064
  %1071 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %6, i64 0, i32 0
  store %struct.LHS_assign* null, %struct.LHS_assign** %1071, align 8, !tbaa !106
  call fastcc void @restassign(%struct.LexState* nonnull %0, %struct.LHS_assign* nonnull %6, i32 1) #6
  br label %1090

; <label>:1072:                                   ; preds = %1064
  %1073 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1066, i64 0, i32 0
  %1074 = load %struct.Proto*, %struct.Proto** %1073, align 8, !tbaa !19
  %1075 = getelementptr inbounds %struct.Proto, %struct.Proto* %1074, i64 0, i32 16
  %1076 = load i32*, i32** %1075, align 8, !tbaa !75
  %1077 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %6, i64 0, i32 1, i32 1
  %1078 = bitcast %union.anon.7* %1077 to i32*
  %1079 = load i32, i32* %1078, align 8, !tbaa !11
  %1080 = sext i32 %1079 to i64
  %1081 = getelementptr inbounds i32, i32* %1076, i64 %1080
  %1082 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1068, i64 0, i32 0
  %1083 = load i32, i32* %1082, align 8, !tbaa !108
  %1084 = icmp eq i32 %1083, 16
  br i1 %1084, label %1086, label %1085

; <label>:1085:                                   ; preds = %1072
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0)) #7
  unreachable

; <label>:1086:                                   ; preds = %1072
  %1087 = load i32, i32* %1081, align 4, !tbaa !87
  %1088 = and i32 %1087, 16777215
  %1089 = or i32 %1088, 16777216
  store i32 %1089, i32* %1081, align 4, !tbaa !87
  br label %1090

; <label>:1090:                                   ; preds = %1070, %1086
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1067) #6
  br label %1091

; <label>:1091:                                   ; preds = %1060, %1029, %850, %703, %609, %1090, %966, %965, %901, %596, %563, %483, %233, %184, %88, %30
  %1092 = phi %struct.FuncState** [ %995, %1060 ], [ %995, %1029 ], [ %770, %850 ], [ %664, %703 ], [ %604, %609 ], [ %1065, %1090 ], [ %970, %966 ], [ %905, %965 ], [ %867, %901 ], [ %575, %596 ], [ %485, %563 ], [ %235, %483 ], [ %186, %233 ], [ %91, %184 ], [ %33, %88 ], [ %31, %30 ]
  %1093 = load %struct.FuncState*, %struct.FuncState** %1092, align 8, !tbaa !34
  %1094 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1093, i64 0, i32 13
  %1095 = load i8, i8* %1094, align 2, !tbaa !74
  %1096 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1093, i64 0, i32 15
  store i8 %1095, i8* %1096, align 4, !tbaa !88
  %1097 = load %struct.lua_State*, %struct.lua_State** %26, align 8, !tbaa !66
  %1098 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1097, i64 0, i32 19
  %1099 = load i32, i32* %1098, align 8, !tbaa !109
  %1100 = add i32 %1099, -1
  store i32 %1100, i32* %1098, align 8, !tbaa !109
  ret void
}

declare hidden void @luaE_enterCcall(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @test_then_block(%struct.LexState*, i32*) unnamed_addr #0 {
  %3 = alloca %struct.BlockCnt, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = bitcast %struct.BlockCnt* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #6
  %6 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %7 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  %8 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #6
  tail call void @luaX_next(%struct.LexState* %0) #6
  %9 = call fastcc i32 @subexpr(%struct.LexState* %0, %struct.expdesc* nonnull %4, i32 0) #6
  %10 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %11 = load i32, i32* %10, align 8, !tbaa !63
  %12 = icmp eq i32 %11, 275
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %2
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 275) #7
  unreachable

; <label>:14:                                     ; preds = %2
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %16 = load i32, i32* %15, align 4, !tbaa !86
  %17 = load i32, i32* %10, align 8, !tbaa !63
  switch i32 %17, label %136 [
    i32 258, label %18
    i32 266, label %22
  ]

; <label>:18:                                     ; preds = %14
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %19 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %20 = load %struct.lua_State*, %struct.lua_State** %19, align 8, !tbaa !66
  %21 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #6
  br label %65

; <label>:22:                                     ; preds = %14
  %23 = call i32 @luaX_lookahead(%struct.LexState* nonnull %0) #6
  %24 = icmp eq i32 %23, 292
  br i1 %24, label %25, label %136

; <label>:25:                                     ; preds = %22
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, i32 1
  %27 = bitcast %union.SemInfo* %26 to %struct.TString**
  %28 = load %struct.TString*, %struct.TString** %27, align 8, !tbaa !11
  %29 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  %30 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 10
  %31 = load %struct.Dyndata*, %struct.Dyndata** %30, align 8, !tbaa !27
  %32 = getelementptr %struct.FuncState, %struct.FuncState* %29, i64 0, i32 11
  %33 = load i32, i32* %32, align 4, !tbaa !45
  %34 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %31, i64 0, i32 2, i32 1
  %35 = load i32, i32* %34, align 8, !tbaa !28
  %36 = icmp sgt i32 %35, %33
  br i1 %36, label %37, label %62

; <label>:37:                                     ; preds = %25
  %38 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %31, i64 0, i32 2, i32 0
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
  %54 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %29, i64 0, i32 13
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
  call void @luaX_next(%struct.LexState* %0) #6
  call void @luaX_next(%struct.LexState* %0) #6
  br label %65

; <label>:65:                                     ; preds = %62, %18
  %66 = phi %struct.TString* [ %63, %62 ], [ %21, %18 ]
  %67 = phi i32 [ %64, %62 ], [ -1, %18 ]
  %68 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  call void @luaK_goiffalse(%struct.FuncState* %68, %struct.expdesc* nonnull %4) #6
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
  %111 = call i8* @luaM_growaux_(%struct.lua_State* %107, i8* %109, i32 %105, i32* nonnull %110, i32 24, i32 32767, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #6
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
  call void @luaK_patchlist(%struct.FuncState* nonnull %7, i32 %99, i32 %67) #6
  br label %124

; <label>:124:                                    ; preds = %123, %100
  %125 = load i32, i32* %10, align 8, !tbaa !63
  %126 = icmp eq i32 %125, 59
  br i1 %126, label %127, label %131

; <label>:127:                                    ; preds = %124
  br label %128

; <label>:128:                                    ; preds = %127, %128
  call void @luaX_next(%struct.LexState* nonnull %0) #6
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
  %135 = call i32 @luaK_jump(%struct.FuncState* %7) #6
  br label %168

; <label>:136:                                    ; preds = %22, %53, %14
  %137 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  call void @luaK_goiftrue(%struct.FuncState* %137, %struct.expdesc* nonnull %4) #6
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
  call fastcc void @statement(%struct.LexState* nonnull %0) #6
  br i1 %173, label %174, label %170

; <label>:174:                                    ; preds = %170, %170, %170, %170, %170, %172
  call fastcc void @leaveblock(%struct.FuncState* %7)
  %175 = load i32, i32* %10, align 8, !tbaa !63
  %176 = and i32 %175, -2
  %177 = icmp eq i32 %176, 260
  br i1 %177, label %178, label %180

; <label>:178:                                    ; preds = %174
  %179 = call i32 @luaK_jump(%struct.FuncState* %7) #6
  call void @luaK_concat(%struct.FuncState* %7, i32* %1, i32 %179) #6
  br label %180

; <label>:180:                                    ; preds = %174, %178
  call void @luaK_patchtohere(%struct.FuncState* %7, i32 %169) #6
  br label %181

; <label>:181:                                    ; preds = %180, %133
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #6
  ret void
}

declare hidden void @luaK_patchtohere(%struct.FuncState*, i32) local_unnamed_addr #2

declare hidden void @luaK_goiffalse(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_patchlist(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @leaveblock(%struct.FuncState*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3
  %3 = load %struct.BlockCnt*, %struct.BlockCnt** %2, align 8, !tbaa !56
  %4 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %5 = load %struct.LexState*, %struct.LexState** %4, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 5
  %7 = load i8, i8* %6, align 2, !tbaa !48
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 6
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !tbaa !66
  %12 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #6
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
  %27 = tail call i32 @luaK_codeABCk(%struct.FuncState* nonnull %0, i32 55, i32 %26, i32 0, i32 0, i32 0) #6
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
  %39 = getelementptr %struct.LexState, %struct.LexState* %38, i64 0, i32 10
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
  %49 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %50 = load %struct.Proto*, %struct.Proto** %49, align 8, !tbaa !19
  %51 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 10
  %52 = load i32, i32* %51, align 8, !tbaa !44
  %53 = getelementptr %struct.Proto, %struct.Proto* %50, i64 0, i32 21
  %54 = load %struct.LocVar*, %struct.LocVar** %53, align 8, !tbaa !80
  %55 = getelementptr %struct.Dyndata, %struct.Dyndata* %40, i64 0, i32 0, i32 0
  %56 = load %struct.Vardesc*, %struct.Vardesc** %55, align 8, !tbaa !89
  %57 = sub i8 %36, %33
  %58 = add i8 %36, -1
  %59 = and i8 %57, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %70, label %61

; <label>:61:                                     ; preds = %46
  %62 = zext i8 %58 to i32
  %63 = add nsw i32 %52, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %56, i64 %64, i32 0
  %66 = load i16, i16* %65, align 2, !tbaa !90
  %67 = sext i16 %66 to i64
  %68 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %54, i64 %67, i32 2
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
  %80 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %56, i64 %79, i32 0
  %81 = load i16, i16* %80, align 2, !tbaa !90
  %82 = sext i16 %81 to i64
  %83 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %54, i64 %82, i32 2
  store i32 %48, i32* %83, align 4, !tbaa !110
  %84 = trunc i32 %75 to i8
  %85 = add i8 %84, -2
  %86 = zext i8 %85 to i32
  %87 = add nsw i32 %52, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %56, i64 %88, i32 0
  %90 = load i16, i16* %89, align 2, !tbaa !90
  %91 = sext i16 %90 to i64
  %92 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %54, i64 %91, i32 2
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
  tail call fastcc void @undefgoto(%struct.LexState* nonnull %5, %struct.Labeldesc* %138) #9
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
  tail call void @luaE_enterCcall(%struct.lua_State* %6) #6
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
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %16 = tail call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 12)
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %18 = load %struct.FuncState*, %struct.FuncState** %17, align 8, !tbaa !34
  tail call void @luaK_prefix(%struct.FuncState* %18, i32 %13, %struct.expdesc* %1, i32 %15) #6
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
  %43 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %44 = load %struct.FuncState*, %struct.FuncState** %43, align 8, !tbaa !34
  %45 = tail call i32 @luaK_stringK(%struct.FuncState* %44, %struct.TString* %42) #6
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
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0)) #7
  unreachable

; <label>:78:                                     ; preds = %69
  %79 = tail call i32 @luaK_codeABCk(%struct.FuncState* %71, i32 81, i32 0, i32 0, i32 1, i32 0) #6
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
  tail call fastcc void @constructor(%struct.LexState* nonnull %0, %struct.expdesc* %1) #6
  br label %91

; <label>:86:                                     ; preds = %3
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %87 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %88 = load i32, i32* %87, align 4, !tbaa !86
  tail call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 0, i32 %88) #6
  br label %91

; <label>:89:                                     ; preds = %3
  tail call fastcc void @suffixedexp(%struct.LexState* nonnull %0, %struct.expdesc* %1) #6
  br label %91

; <label>:90:                                     ; preds = %78, %63, %57, %51, %39, %29, %19
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
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
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %115) #6
  %126 = load i32, i32* %116, align 4, !tbaa !86
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %127 = load %struct.FuncState*, %struct.FuncState** %117, align 8, !tbaa !34
  call void @luaK_infix(%struct.FuncState* %127, i32 %119, %struct.expdesc* %1) #6
  %128 = getelementptr inbounds [21 x %struct.anon.9], [21 x %struct.anon.9]* @priority, i64 0, i64 %120, i32 1
  %129 = load i8, i8* %128, align 1, !tbaa !114
  %130 = zext i8 %129 to i32
  %131 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 %130)
  %132 = load %struct.FuncState*, %struct.FuncState** %117, align 8, !tbaa !34
  call void @luaK_posfix(%struct.FuncState* %132, i32 %119, %struct.expdesc* %1, %struct.expdesc* nonnull %4, i32 %126) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %115) #6
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
  %8 = tail call i32 @luaK_codeABCk(%struct.FuncState* %5, i32 17, i32 0, i32 0, i32 0, i32 0) #6
  %9 = bitcast %struct.ConsControl* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #6
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
  tail call void @luaK_exp2nextreg(%struct.FuncState* %25, %struct.expdesc* %1) #6
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %27 = load i32, i32* %26, align 8, !tbaa !63
  %28 = icmp eq i32 %27, 123
  br i1 %28, label %30, label %29

; <label>:29:                                     ; preds = %2
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 123) #7
  unreachable

; <label>:30:                                     ; preds = %2
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %31 = load i32, i32* %26, align 8, !tbaa !63
  %32 = icmp eq i32 %31, 125
  br i1 %32, label %84, label %33

; <label>:33:                                     ; preds = %30
  br label %40

; <label>:34:                                     ; preds = %71
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  br label %35

; <label>:35:                                     ; preds = %34, %73
  %36 = load i32, i32* %26, align 8, !tbaa !63
  %37 = icmp eq i32 %36, 125
  br i1 %37, label %84, label %38

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %22, align 8, !tbaa !120
  br label %40

; <label>:40:                                     ; preds = %33, %38
  %41 = phi i32 [ %39, %38 ], [ 0, %33 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

; <label>:43:                                     ; preds = %40
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %19) #6
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
  call void @luaK_setlist(%struct.FuncState* %5, i32 %50, i32 %51, i32 50) #6
  store i32 0, i32* %10, align 8, !tbaa !115
  br label %52

; <label>:52:                                     ; preds = %40, %43, %46
  %53 = load i32, i32* %26, align 8, !tbaa !63
  switch i32 %53, label %65 [
    i32 292, label %54
    i32 91, label %64
  ]

; <label>:54:                                     ; preds = %52
  %55 = call i32 @luaX_lookahead(%struct.LexState* nonnull %0) #6
  %56 = icmp eq i32 %55, 61
  br i1 %56, label %63, label %57

; <label>:57:                                     ; preds = %54
  %58 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %19, i32 0) #6
  %59 = load i32, i32* %12, align 4, !tbaa !118
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4, !tbaa !118
  %61 = load i32, i32* %10, align 8, !tbaa !115
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 8, !tbaa !115
  br label %71

; <label>:63:                                     ; preds = %54
  call fastcc void @recfield(%struct.LexState* nonnull %0, %struct.ConsControl* nonnull %3) #6
  br label %71

; <label>:64:                                     ; preds = %52
  call fastcc void @recfield(%struct.LexState* nonnull %0, %struct.ConsControl* nonnull %3) #6
  br label %71

; <label>:65:                                     ; preds = %52
  %66 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %19, i32 0) #6
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
    i32 125, label %84
  ]

; <label>:73:                                     ; preds = %71
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  br label %35

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* %6, align 4, !tbaa !86
  %76 = icmp eq i32 %75, %7
  br i1 %76, label %77, label %78

; <label>:77:                                     ; preds = %74
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 125) #7
  unreachable

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %80 = load %struct.lua_State*, %struct.lua_State** %79, align 8, !tbaa !66
  %81 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 125) #6
  %82 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 123) #6
  %83 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* %81, i8* %82, i32 %7) #6
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %83) #7
  unreachable

; <label>:84:                                     ; preds = %35, %71, %30
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %85 = load i32, i32* %10, align 8, !tbaa !115
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %106, label %87

; <label>:87:                                     ; preds = %84
  %88 = load i32, i32* %22, align 8, !tbaa !120
  switch i32 %88, label %97 [
    i32 16, label %89
    i32 17, label %89
    i32 0, label %99
  ]

; <label>:89:                                     ; preds = %87, %87
  call void @luaK_setreturns(%struct.FuncState* %5, %struct.expdesc* nonnull %19, i32 -1) #6
  %90 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !tbaa !119
  %91 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %90, i64 0, i32 1
  %92 = bitcast %union.anon.7* %91 to i32*
  %93 = load i32, i32* %92, align 8, !tbaa !11
  %94 = load i32, i32* %12, align 4, !tbaa !118
  call void @luaK_setlist(%struct.FuncState* %5, i32 %93, i32 %94, i32 -1) #6
  %95 = load i32, i32* %12, align 4, !tbaa !118
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %12, align 4, !tbaa !118
  br label %106

; <label>:97:                                     ; preds = %87
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %19) #6
  %98 = load i32, i32* %10, align 8, !tbaa !115
  br label %99

; <label>:99:                                     ; preds = %97, %87
  %100 = phi i32 [ %85, %87 ], [ %98, %97 ]
  %101 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !tbaa !119
  %102 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %101, i64 0, i32 1
  %103 = bitcast %union.anon.7* %102 to i32*
  %104 = load i32, i32* %103, align 8, !tbaa !11
  %105 = load i32, i32* %12, align 4, !tbaa !118
  call void @luaK_setlist(%struct.FuncState* %5, i32 %104, i32 %105, i32 %100) #6
  br label %106

; <label>:106:                                    ; preds = %84, %89, %99
  %107 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0
  %108 = load %struct.Proto*, %struct.Proto** %107, align 8, !tbaa !19
  %109 = getelementptr inbounds %struct.Proto, %struct.Proto* %108, i64 0, i32 16
  %110 = load i32*, i32** %109, align 8, !tbaa !75
  %111 = sext i32 %8 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4, !tbaa !87
  %114 = and i32 %113, -16711681
  %115 = load i32, i32* %12, align 4, !tbaa !118
  %116 = call i32 @luaO_int2fb(i32 %115) #6
  %117 = shl i32 %116, 16
  %118 = and i32 %117, 16711680
  %119 = or i32 %118, %114
  %120 = load %struct.Proto*, %struct.Proto** %107, align 8, !tbaa !19
  %121 = getelementptr inbounds %struct.Proto, %struct.Proto* %120, i64 0, i32 16
  %122 = load i32*, i32** %121, align 8, !tbaa !75
  %123 = getelementptr inbounds i32, i32* %122, i64 %111
  store i32 %119, i32* %123, align 4, !tbaa !87
  %124 = and i32 %119, 16777215
  %125 = load i32, i32* %11, align 8, !tbaa !117
  %126 = call i32 @luaO_int2fb(i32 %125) #6
  %127 = shl i32 %126, 24
  %128 = or i32 %127, %124
  %129 = load %struct.Proto*, %struct.Proto** %107, align 8, !tbaa !19
  %130 = getelementptr inbounds %struct.Proto, %struct.Proto* %129, i64 0, i32 16
  %131 = load i32*, i32** %130, align 8, !tbaa !75
  %132 = getelementptr inbounds i32, i32* %131, i64 %111
  store i32 %128, i32* %132, align 4, !tbaa !87
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @body(%struct.LexState*, %struct.expdesc*, i32, i32) unnamed_addr #0 {
  %5 = alloca %struct.FuncState, align 8
  %6 = alloca %struct.BlockCnt, align 8
  %7 = bitcast %struct.FuncState* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %7) #6
  %8 = bitcast %struct.BlockCnt* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #6
  %9 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %10 = load %struct.FuncState*, %struct.FuncState** %9, align 8, !tbaa !34
  %11 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %12 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 0
  %14 = load %struct.Proto*, %struct.Proto** %13, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i64 0, i32 8
  %16 = load i32, i32* %15, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i64 0, i32 10
  %18 = load i32, i32* %17, align 8, !tbaa !121
  %19 = icmp slt i32 %16, %18
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i64 0, i32 17
  br i1 %19, label %69, label %21

; <label>:21:                                     ; preds = %4
  %22 = bitcast %struct.Proto*** %20 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !79
  %24 = tail call i8* @luaM_growaux_(%struct.lua_State* %12, i8* %23, i32 %16, i32* nonnull %17, i32 8, i32 131071, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #6
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
  %70 = tail call %struct.Proto* @luaF_newproto(%struct.lua_State* %12) #6
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
  tail call void @luaC_barrier_(%struct.lua_State* %12, %struct.GCObject* %86, %struct.GCObject* %87) #6
  br label %88

; <label>:88:                                     ; preds = %69, %80, %85
  %89 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0
  store %struct.Proto* %70, %struct.Proto** %89, align 8, !tbaa !19
  %90 = getelementptr inbounds %struct.Proto, %struct.Proto* %70, i64 0, i32 13
  store i32 %3, i32* %90, align 4, !tbaa !38
  %91 = bitcast %struct.FuncState** %9 to i64*
  %92 = load i64, i64* %91, align 8, !tbaa !34
  %93 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 1
  %94 = bitcast %struct.FuncState** %93 to i64*
  store i64 %92, i64* %94, align 8, !tbaa !35
  %95 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 2
  store %struct.LexState* %0, %struct.LexState** %95, align 8, !tbaa !36
  store %struct.FuncState* %5, %struct.FuncState** %9, align 8, !tbaa !34
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
  call void @llvm.memset.p0i8.i64(i8* nonnull %104, i8 0, i64 7, i32 8, i1 false) #6
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
  %128 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %129 = load i32, i32* %128, align 8, !tbaa !63
  %130 = icmp eq i32 %129, 40
  br i1 %130, label %132, label %131

; <label>:131:                                    ; preds = %88
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 40) #7
  unreachable

; <label>:132:                                    ; preds = %88
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %133 = icmp eq i32 %2, 0
  br i1 %133, label %134, label %138

; <label>:134:                                    ; preds = %132
  %135 = load %struct.FuncState*, %struct.FuncState** %9, align 8, !tbaa !34
  %136 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %135, i64 0, i32 0
  %137 = load %struct.Proto*, %struct.Proto** %136, align 8, !tbaa !19
  br label %166

; <label>:138:                                    ; preds = %132
  %139 = call %struct.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 4) #6
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %139)
  %140 = load %struct.FuncState*, %struct.FuncState** %9, align 8, !tbaa !34
  %141 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %140, i64 0, i32 13
  %142 = load i8, i8* %141, align 2, !tbaa !74
  %143 = add i8 %142, 1
  store i8 %143, i8* %141, align 2, !tbaa !74
  %144 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %140, i64 0, i32 4
  %145 = load i32, i32* %144, align 8, !tbaa !37
  %146 = zext i8 %143 to i32
  %147 = getelementptr %struct.FuncState, %struct.FuncState* %140, i64 0, i32 0
  %148 = load %struct.Proto*, %struct.Proto** %147, align 8, !tbaa !19
  %149 = getelementptr %struct.FuncState, %struct.FuncState* %140, i64 0, i32 2
  %150 = load %struct.LexState*, %struct.LexState** %149, align 8, !tbaa !36
  %151 = getelementptr %struct.FuncState, %struct.FuncState* %140, i64 0, i32 10
  %152 = load i32, i32* %151, align 8, !tbaa !44
  %153 = getelementptr %struct.Proto, %struct.Proto* %148, i64 0, i32 21
  %154 = load %struct.LocVar*, %struct.LocVar** %153, align 8, !tbaa !80
  %155 = getelementptr %struct.LexState, %struct.LexState* %150, i64 0, i32 10
  %156 = load %struct.Dyndata*, %struct.Dyndata** %155, align 8, !tbaa !27
  %157 = getelementptr %struct.Dyndata, %struct.Dyndata* %156, i64 0, i32 0, i32 0
  %158 = load %struct.Vardesc*, %struct.Vardesc** %157, align 8, !tbaa !89
  %159 = add i32 %152, %146
  %160 = add i32 %159, -1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %158, i64 %161, i32 0
  %163 = load i16, i16* %162, align 2, !tbaa !90
  %164 = sext i16 %163 to i64
  %165 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %154, i64 %164, i32 1
  store i32 %145, i32* %165, align 8, !tbaa !92
  br label %166

; <label>:166:                                    ; preds = %134, %138
  %167 = phi %struct.Proto** [ %136, %134 ], [ %147, %138 ]
  %168 = phi %struct.Proto* [ %137, %134 ], [ %148, %138 ]
  %169 = phi %struct.FuncState* [ %135, %134 ], [ %140, %138 ]
  %170 = load i32, i32* %128, align 8, !tbaa !63
  %171 = icmp eq i32 %170, 41
  br i1 %171, label %187, label %172

; <label>:172:                                    ; preds = %166
  %173 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %174 = bitcast %union.SemInfo* %173 to %struct.TString**
  br label %177

; <label>:175:                                    ; preds = %182
  call void @luaX_next(%struct.LexState* nonnull %0) #6
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
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0)) #7
  unreachable

; <label>:181:                                    ; preds = %177
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  br label %187

; <label>:182:                                    ; preds = %177
  %183 = load %struct.TString*, %struct.TString** %174, align 8, !tbaa !11
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %struct.TString* %183) #6
  %184 = add nuw nsw i32 %179, 1
  %185 = load i32, i32* %128, align 8, !tbaa !63
  %186 = icmp eq i32 %185, 44
  br i1 %186, label %175, label %187

; <label>:187:                                    ; preds = %182, %181, %166
  %188 = phi i32 [ %179, %181 ], [ 0, %166 ], [ %184, %182 ]
  %189 = phi i32 [ 1, %181 ], [ 0, %166 ], [ 0, %182 ]
  %190 = load %struct.FuncState*, %struct.FuncState** %9, align 8, !tbaa !34
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
  %200 = getelementptr %struct.FuncState, %struct.FuncState* %190, i64 0, i32 0
  %201 = load %struct.Proto*, %struct.Proto** %200, align 8, !tbaa !19
  %202 = getelementptr %struct.FuncState, %struct.FuncState* %190, i64 0, i32 2
  %203 = load %struct.LexState*, %struct.LexState** %202, align 8, !tbaa !36
  %204 = getelementptr %struct.FuncState, %struct.FuncState* %190, i64 0, i32 10
  %205 = load i32, i32* %204, align 8, !tbaa !44
  %206 = getelementptr %struct.Proto, %struct.Proto* %201, i64 0, i32 21
  %207 = load %struct.LocVar*, %struct.LocVar** %206, align 8, !tbaa !80
  %208 = getelementptr %struct.LexState, %struct.LexState* %203, i64 0, i32 10
  %209 = load %struct.Dyndata*, %struct.Dyndata** %208, align 8, !tbaa !27
  %210 = getelementptr %struct.Dyndata, %struct.Dyndata* %209, i64 0, i32 0, i32 0
  %211 = load %struct.Vardesc*, %struct.Vardesc** %210, align 8, !tbaa !89
  %212 = sext i32 %188 to i64
  %213 = add i32 %205, %199
  %214 = and i32 %188, 1
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %224, label %216

; <label>:216:                                    ; preds = %196
  %217 = sub i32 %213, %188
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %211, i64 %218, i32 0
  %220 = load i16, i16* %219, align 2, !tbaa !90
  %221 = sext i16 %220 to i64
  %222 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %207, i64 %221, i32 1
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
  %233 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %211, i64 %232, i32 0
  %234 = load i16, i16* %233, align 2, !tbaa !90
  %235 = sext i16 %234 to i64
  %236 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %207, i64 %235, i32 1
  store i32 %198, i32* %236, align 8, !tbaa !92
  %237 = trunc i64 %229 to i32
  %238 = add i32 %237, -1
  %239 = sub i32 %213, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %211, i64 %240, i32 0
  %242 = load i16, i16* %241, align 2, !tbaa !90
  %243 = sext i16 %242 to i64
  %244 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %207, i64 %243, i32 1
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
  %257 = call i32 @luaK_codeABCk(%struct.FuncState* nonnull %169, i32 82, i32 %254, i32 0, i32 0, i32 0) #6
  %258 = load i8, i8* %249, align 2, !tbaa !74
  br label %259

; <label>:259:                                    ; preds = %248, %253
  %260 = phi i8 [ %250, %248 ], [ %258, %253 ]
  %261 = zext i8 %260 to i32
  call void @luaK_reserveregs(%struct.FuncState* nonnull %169, i32 %261) #6
  %262 = load i32, i32* %128, align 8, !tbaa !63
  %263 = icmp eq i32 %262, 41
  br i1 %263, label %265, label %264

; <label>:264:                                    ; preds = %259
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 41) #7
  unreachable

; <label>:265:                                    ; preds = %259
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  br label %266

; <label>:266:                                    ; preds = %268, %265
  %267 = load i32, i32* %128, align 8, !tbaa !63
  switch i32 %267, label %268 [
    i32 260, label %272
    i32 261, label %272
    i32 262, label %272
    i32 289, label %272
    i32 277, label %272
  ]

; <label>:268:                                    ; preds = %266
  %269 = icmp eq i32 %267, 274
  call fastcc void @statement(%struct.LexState* nonnull %0) #6
  br i1 %269, label %270, label %266

; <label>:270:                                    ; preds = %268
  %271 = load i32, i32* %128, align 8, !tbaa !63
  br label %272

; <label>:272:                                    ; preds = %266, %266, %266, %266, %266, %270
  %273 = phi i32 [ %271, %270 ], [ %267, %266 ], [ %267, %266 ], [ %267, %266 ], [ %267, %266 ], [ %267, %266 ]
  %274 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %275 = load i32, i32* %274, align 4, !tbaa !86
  %276 = load %struct.Proto*, %struct.Proto** %89, align 8, !tbaa !19
  %277 = getelementptr inbounds %struct.Proto, %struct.Proto* %276, i64 0, i32 14
  store i32 %275, i32* %277, align 8, !tbaa !124
  %278 = icmp eq i32 %273, 262
  br i1 %278, label %287, label %279

; <label>:279:                                    ; preds = %272
  %280 = icmp eq i32 %275, %3
  br i1 %280, label %281, label %282

; <label>:281:                                    ; preds = %279
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 262) #7
  unreachable

; <label>:282:                                    ; preds = %279
  %283 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !66
  %284 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 262) #6
  %285 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 265) #6
  %286 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %283, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* %284, i8* %285, i32 %3) #6
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %286) #7
  unreachable

; <label>:287:                                    ; preds = %272
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %288 = load %struct.FuncState*, %struct.FuncState** %9, align 8, !tbaa !34
  %289 = getelementptr %struct.FuncState, %struct.FuncState* %288, i64 0, i32 1
  %290 = load %struct.FuncState*, %struct.FuncState** %289, align 8, !tbaa !35
  %291 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %290, i64 0, i32 8
  %292 = load i32, i32* %291, align 8, !tbaa !43
  %293 = add nsw i32 %292, -1
  %294 = call i32 @luaK_codeABx(%struct.FuncState* %290, i32 80, i32 0, i32 %293) #6
  %295 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %295, align 8, !tbaa !58
  %296 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %296, align 4, !tbaa !60
  %297 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 15, i32* %297, align 8, !tbaa !61
  %298 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %299 = bitcast %union.anon.7* %298 to i32*
  store i32 %294, i32* %299, align 8, !tbaa !11
  call void @luaK_exp2nextreg(%struct.FuncState* %290, %struct.expdesc* %1) #6
  call fastcc void @close_func(%struct.LexState* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #6
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %7) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @suffixedexp(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca %struct.expdesc, align 8
  %6 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %7 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %9 = load i32, i32* %8, align 4, !tbaa !86
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %11 = load i32, i32* %10, align 8, !tbaa !63
  switch i32 %11, label %49 [
    i32 40, label %12
    i32 292, label %30
  ]

; <label>:12:                                     ; preds = %2
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %13 = tail call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 0) #6
  %14 = load i32, i32* %10, align 8, !tbaa !63
  %15 = icmp eq i32 %14, 41
  br i1 %15, label %26, label %16

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %8, align 4, !tbaa !86
  %18 = icmp eq i32 %17, %9
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %16
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 41) #7
  unreachable

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %22 = load %struct.lua_State*, %struct.lua_State** %21, align 8, !tbaa !66
  %23 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 41) #6
  %24 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 40) #6
  %25 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* %23, i8* %24, i32 %9) #6
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %25) #7
  unreachable

; <label>:26:                                     ; preds = %12
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %27 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  tail call void @luaK_dischargevars(%struct.FuncState* %27, %struct.expdesc* %1) #6
  %28 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %29 = bitcast %union.SemInfo* %28 to %struct.TString**
  br label %50

; <label>:30:                                     ; preds = %2
  %31 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %32 = bitcast %union.SemInfo* %31 to %struct.TString**
  %33 = load %struct.TString*, %struct.TString** %32, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %34 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  tail call fastcc void @singlevaraux(%struct.FuncState* %34, %struct.TString* %33, %struct.expdesc* %1, i32 1) #6
  %35 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  %36 = load i32, i32* %35, align 8, !tbaa !61
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %50

; <label>:38:                                     ; preds = %30
  %39 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %39) #6
  %40 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 12
  %41 = load %struct.TString*, %struct.TString** %40, align 8, !tbaa !62
  tail call fastcc void @singlevaraux(%struct.FuncState* %34, %struct.TString* %41, %struct.expdesc* nonnull %1, i32 1) #6
  %42 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  %43 = tail call i32 @luaK_stringK(%struct.FuncState* %42, %struct.TString* %33) #6
  %44 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  store i32 -1, i32* %44, align 8, !tbaa !58
  %45 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  store i32 -1, i32* %45, align 4, !tbaa !60
  %46 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  store i32 4, i32* %46, align 8, !tbaa !61
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %48 = bitcast %union.anon.7* %47 to i32*
  store i32 %43, i32* %48, align 8, !tbaa !11
  call void @luaK_indexed(%struct.FuncState* %34, %struct.expdesc* nonnull %1, %struct.expdesc* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %39) #6
  br label %50

; <label>:49:                                     ; preds = %2
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0)) #7
  unreachable

; <label>:50:                                     ; preds = %30, %38, %26
  %51 = phi %struct.TString** [ %32, %30 ], [ %32, %38 ], [ %29, %26 ]
  %52 = bitcast %struct.expdesc* %4 to i8*
  %53 = bitcast %struct.expdesc* %5 to i8*
  %54 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i64 0, i32 2
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i64 0, i32 3
  %56 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i64 0, i32 0
  %57 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i64 0, i32 1
  %58 = bitcast %union.anon.7* %57 to i32*
  br label %59

; <label>:59:                                     ; preds = %78, %50
  %60 = load i32, i32* %10, align 8, !tbaa !63
  switch i32 %60, label %79 [
    i32 46, label %61
    i32 91, label %62
    i32 58, label %69
    i32 40, label %77
    i32 293, label %77
    i32 123, label %77
  ]

; <label>:61:                                     ; preds = %59
  call fastcc void @fieldsel(%struct.LexState* nonnull %0, %struct.expdesc* %1)
  br label %78

; <label>:62:                                     ; preds = %59
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %52) #6
  call void @luaK_exp2anyregup(%struct.FuncState* %7, %struct.expdesc* %1) #6
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %63 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #6
  %64 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  call void @luaK_exp2val(%struct.FuncState* %64, %struct.expdesc* nonnull %4) #6
  %65 = load i32, i32* %10, align 8, !tbaa !63
  %66 = icmp eq i32 %65, 93
  br i1 %66, label %68, label %67

; <label>:67:                                     ; preds = %62
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 93) #7
  unreachable

; <label>:68:                                     ; preds = %62
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  call void @luaK_indexed(%struct.FuncState* %7, %struct.expdesc* %1, %struct.expdesc* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %52) #6
  br label %78

; <label>:69:                                     ; preds = %59
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %53) #6
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %70 = load i32, i32* %10, align 8, !tbaa !63
  %71 = icmp eq i32 %70, 292
  br i1 %71, label %73, label %72

; <label>:72:                                     ; preds = %69
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #7
  unreachable

; <label>:73:                                     ; preds = %69
  %74 = load %struct.TString*, %struct.TString** %51, align 8, !tbaa !11
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %75 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  %76 = call i32 @luaK_stringK(%struct.FuncState* %75, %struct.TString* %74) #6
  store i32 -1, i32* %54, align 8, !tbaa !58
  store i32 -1, i32* %55, align 4, !tbaa !60
  store i32 4, i32* %56, align 8, !tbaa !61
  store i32 %76, i32* %58, align 8, !tbaa !11
  call void @luaK_self(%struct.FuncState* %7, %struct.expdesc* %1, %struct.expdesc* nonnull %5) #6
  call fastcc void @funcargs(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 %9)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %53) #6
  br label %78

; <label>:77:                                     ; preds = %59, %59, %59
  call void @luaK_exp2nextreg(%struct.FuncState* %7, %struct.expdesc* %1) #6
  call fastcc void @funcargs(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 %9)
  br label %78

; <label>:78:                                     ; preds = %77, %73, %68, %61
  br label %59

; <label>:79:                                     ; preds = %59
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
  %6 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %7 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i64 0, i32 15
  %9 = load i8, i8* %8, align 4, !tbaa !88
  %10 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #6
  %11 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #6
  %12 = bitcast %struct.expdesc* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #6
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %14 = load i32, i32* %13, align 8, !tbaa !63
  %15 = icmp eq i32 %14, 292
  br i1 %15, label %16, label %27

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %18 = bitcast %union.SemInfo* %17 to %struct.TString**
  %19 = load %struct.TString*, %struct.TString** %18, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %20 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  %21 = tail call i32 @luaK_stringK(%struct.FuncState* %20, %struct.TString* %19) #6
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
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %28 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #6
  %29 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !tbaa !34
  call void @luaK_exp2val(%struct.FuncState* %29, %struct.expdesc* nonnull %4) #6
  %30 = load i32, i32* %13, align 8, !tbaa !63
  %31 = icmp eq i32 %30, 93
  br i1 %31, label %33, label %32

; <label>:32:                                     ; preds = %27
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 93) #7
  unreachable

; <label>:33:                                     ; preds = %27
  call void @luaX_next(%struct.LexState* nonnull %0) #6
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
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 61) #7
  unreachable

; <label>:41:                                     ; preds = %34
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %42 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 1
  %43 = bitcast %struct.expdesc** %42 to i8**
  %44 = load i8*, i8** %43, align 8, !tbaa !119
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %10, i8* %44, i64 24, i32 8, i1 false), !tbaa.struct !125
  call void @luaK_indexed(%struct.FuncState* %7, %struct.expdesc* nonnull %3, %struct.expdesc* nonnull %4) #6
  %45 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %5, i32 0) #6
  call void @luaK_storevar(%struct.FuncState* %7, %struct.expdesc* nonnull %3, %struct.expdesc* nonnull %5) #6
  store i8 %9, i8* %8, align 4, !tbaa !88
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #6
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
  %19 = tail call i8* @luaM_growaux_(%struct.lua_State* %12, i8* %15, i32 %18, i32* nonnull %9, i32 16, i32 32767, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #6
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
  tail call void @luaC_barrier_(%struct.lua_State* %49, %struct.GCObject* %50, %struct.GCObject* %51) #6
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
  tail call fastcc void @errorlimit(%struct.FuncState* nonnull %4, i32 200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #7
  unreachable

; <label>:64:                                     ; preds = %53
  %65 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !tbaa !66
  %66 = bitcast %struct.Dyndata* %6 to i8**
  %67 = load i8*, i8** %66, align 8, !tbaa !89
  %68 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %6, i64 0, i32 0, i32 2
  %69 = tail call i8* @luaM_growaux_(%struct.lua_State* %65, i8* %67, i32 %58, i32* nonnull %68, i32 2, i32 2147483647, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #6
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

declare hidden void @luaK_reserveregs(%struct.FuncState*, i32) local_unnamed_addr #2

declare hidden i32 @luaK_codeABx(%struct.FuncState*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @fieldsel(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 {
  %3 = alloca %struct.expdesc, align 8
  %4 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !34
  %6 = bitcast %struct.expdesc* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #6
  tail call void @luaK_exp2anyregup(%struct.FuncState* %5, %struct.expdesc* %1) #6
  tail call void @luaX_next(%struct.LexState* %0) #6
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !63
  %9 = icmp eq i32 %8, 292
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %2
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 292) #7
  unreachable

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %13 = bitcast %union.SemInfo* %12 to %struct.TString**
  %14 = load %struct.TString*, %struct.TString** %13, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %15 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !tbaa !34
  %16 = tail call i32 @luaK_stringK(%struct.FuncState* %15, %struct.TString* %14) #6
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  store i32 -1, i32* %17, align 8, !tbaa !58
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  store i32 -1, i32* %18, align 4, !tbaa !60
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  store i32 4, i32* %19, align 8, !tbaa !61
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %21 = bitcast %union.anon.7* %20 to i32*
  store i32 %16, i32* %21, align 8, !tbaa !11
  call void @luaK_indexed(%struct.FuncState* %5, %struct.expdesc* %1, %struct.expdesc* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #6
  ret void
}

declare hidden void @luaK_exp2anyregup(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_self(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @funcargs(%struct.LexState*, %struct.expdesc* nocapture, i32) unnamed_addr #0 {
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  %7 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #6
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !63
  switch i32 %9, label %51 [
    i32 40, label %10
    i32 123, label %40
    i32 293, label %41
  ]

; <label>:10:                                     ; preds = %3
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %11 = load i32, i32* %8, align 8, !tbaa !63
  %12 = icmp eq i32 %11, 41
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  store i32 0, i32* %14, align 8, !tbaa !61
  br label %39

; <label>:15:                                     ; preds = %10
  %16 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #6
  %17 = load i32, i32* %8, align 8, !tbaa !63
  %18 = icmp eq i32 %17, 44
  br i1 %18, label %19, label %25

; <label>:19:                                     ; preds = %15
  br label %20

; <label>:20:                                     ; preds = %19, %20
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %21 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %21, %struct.expdesc* nonnull %4) #6
  %22 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #6
  %23 = load i32, i32* %8, align 8, !tbaa !63
  %24 = icmp eq i32 %23, 44
  br i1 %24, label %20, label %25

; <label>:25:                                     ; preds = %20, %15
  call void @luaK_setreturns(%struct.FuncState* %6, %struct.expdesc* nonnull %4, i32 -1) #6
  %26 = load i32, i32* %8, align 8, !tbaa !63
  %27 = icmp eq i32 %26, 41
  br i1 %27, label %39, label %28

; <label>:28:                                     ; preds = %25
  %29 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %30 = load i32, i32* %29, align 4, !tbaa !86
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %28
  call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 41) #7
  unreachable

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %35 = load %struct.lua_State*, %struct.lua_State** %34, align 8, !tbaa !66
  %36 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 41) #6
  %37 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 40) #6
  %38 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* %36, i8* %37, i32 %2) #6
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %38) #7
  unreachable

; <label>:39:                                     ; preds = %13, %25
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  br label %52

; <label>:40:                                     ; preds = %3
  call fastcc void @constructor(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4)
  br label %52

; <label>:41:                                     ; preds = %3
  %42 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %43 = bitcast %union.SemInfo* %42 to %struct.TString**
  %44 = load %struct.TString*, %struct.TString** %43, align 8, !tbaa !11
  %45 = tail call i32 @luaK_stringK(%struct.FuncState* %6, %struct.TString* %44) #6
  %46 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2
  store i32 -1, i32* %46, align 8, !tbaa !58
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3
  store i32 -1, i32* %47, align 4, !tbaa !60
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  store i32 4, i32* %48, align 8, !tbaa !61
  %49 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1
  %50 = bitcast %union.anon.7* %49 to i32*
  store i32 %45, i32* %50, align 8, !tbaa !11
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  br label %52

; <label>:51:                                     ; preds = %3
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0)) #7
  unreachable

; <label>:52:                                     ; preds = %41, %40, %39
  %53 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1
  %54 = bitcast %union.anon.7* %53 to i32*
  %55 = load i32, i32* %54, align 8, !tbaa !11
  %56 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  %57 = load i32, i32* %56, align 8, !tbaa !61
  switch i32 %57, label %58 [
    i32 16, label %64
    i32 17, label %64
    i32 0, label %59
  ]

; <label>:58:                                     ; preds = %52
  call void @luaK_exp2nextreg(%struct.FuncState* %6, %struct.expdesc* nonnull %4) #6
  br label %59

; <label>:59:                                     ; preds = %52, %58
  %60 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 15
  %61 = load i8, i8* %60, align 4, !tbaa !88
  %62 = zext i8 %61 to i32
  %63 = sub i32 %62, %55
  br label %64

; <label>:64:                                     ; preds = %52, %52, %59
  %65 = phi i32 [ %63, %59 ], [ 0, %52 ], [ 0, %52 ]
  %66 = call i32 @luaK_codeABCk(%struct.FuncState* %6, i32 69, i32 %55, i32 %65, i32 2, i32 0) #6
  %67 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2
  store i32 -1, i32* %67, align 8, !tbaa !58
  %68 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3
  store i32 -1, i32* %68, align 4, !tbaa !60
  %69 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0
  store i32 16, i32* %69, align 8, !tbaa !61
  store i32 %66, i32* %54, align 8, !tbaa !11
  call void @luaK_fixline(%struct.FuncState* %6, i32 %2) #6
  %70 = trunc i32 %55 to i8
  %71 = add i8 %70, 1
  %72 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 15
  store i8 %71, i8* %72, align 4, !tbaa !88
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #6
  ret void
}

declare hidden void @luaK_dischargevars(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

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
  %16 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %17 = load %struct.Proto*, %struct.Proto** %16, align 8, !tbaa !19
  br i1 %15, label %66, label %18

; <label>:18:                                     ; preds = %12
  %19 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2
  %20 = load %struct.LexState*, %struct.LexState** %19, align 8, !tbaa !36
  %21 = getelementptr %struct.FuncState, %struct.FuncState* %0, i64 0, i32 10
  %22 = load i32, i32* %21, align 8, !tbaa !44
  %23 = getelementptr %struct.Proto, %struct.Proto* %17, i64 0, i32 21
  %24 = load %struct.LocVar*, %struct.LocVar** %23, align 8, !tbaa !80
  %25 = getelementptr %struct.LexState, %struct.LexState* %20, i64 0, i32 10
  %26 = load %struct.Dyndata*, %struct.Dyndata** %25, align 8, !tbaa !27
  %27 = getelementptr %struct.Dyndata, %struct.Dyndata* %26, i64 0, i32 0, i32 0
  %28 = load %struct.Vardesc*, %struct.Vardesc** %27, align 8, !tbaa !89
  %29 = zext i8 %14 to i64
  %30 = sext i32 %22 to i64
  br label %33

; <label>:31:                                     ; preds = %33
  %32 = icmp sgt i64 %34, 1
  br i1 %32, label %33, label %66

; <label>:33:                                     ; preds = %31, %18
  %34 = phi i64 [ %29, %18 ], [ %35, %31 ]
  %35 = add nsw i64 %34, -1
  %36 = add nsw i64 %35, %30
  %37 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %28, i64 %36, i32 0
  %38 = load i16, i16* %37, align 2, !tbaa !90
  %39 = sext i16 %38 to i64
  %40 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %24, i64 %39, i32 0
  %41 = load %struct.TString*, %struct.TString** %40, align 8, !tbaa !132
  %42 = icmp eq %struct.TString* %41, %1
  br i1 %42, label %43, label %31

; <label>:43:                                     ; preds = %33
  %44 = trunc i64 %35 to i32
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %66

; <label>:46:                                     ; preds = %43
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  store i32 -1, i32* %47, align 8, !tbaa !58
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  store i32 -1, i32* %48, align 4, !tbaa !60
  %49 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  store i32 8, i32* %49, align 8, !tbaa !61
  %50 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %51 = bitcast %union.anon.7* %50 to i32*
  store i32 %44, i32* %51, align 8, !tbaa !11
  %52 = icmp eq i32 %3, 0
  br i1 %52, label %53, label %102

; <label>:53:                                     ; preds = %46
  %54 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3
  br label %55

; <label>:55:                                     ; preds = %55, %53
  %56 = phi %struct.BlockCnt** [ %54, %53 ], [ %62, %55 ]
  %57 = load %struct.BlockCnt*, %struct.BlockCnt** %56, align 8, !tbaa !94
  %58 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %57, i64 0, i32 3
  %59 = load i8, i8* %58, align 8, !tbaa !50
  %60 = zext i8 %59 to i32
  %61 = icmp sgt i32 %60, %44
  %62 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %57, i64 0, i32 0
  br i1 %61, label %55, label %63

; <label>:63:                                     ; preds = %55
  %64 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %57, i64 0, i32 4
  store i8 1, i8* %64, align 1, !tbaa !53
  %65 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 17
  store i8 1, i8* %65, align 2, !tbaa !95
  br label %102

; <label>:66:                                     ; preds = %31, %12, %43
  %67 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i64 0, i32 18
  %68 = load %struct.Upvaldesc*, %struct.Upvaldesc** %67, align 8, !tbaa !67
  %69 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14
  %70 = load i8, i8* %69, align 1, !tbaa !64
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %87, label %72

; <label>:72:                                     ; preds = %66
  %73 = zext i8 %70 to i64
  br label %74

; <label>:74:                                     ; preds = %79, %72
  %75 = phi i64 [ 0, %72 ], [ %80, %79 ]
  %76 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %68, i64 %75, i32 0
  %77 = load %struct.TString*, %struct.TString** %76, align 8, !tbaa !68
  %78 = icmp eq %struct.TString* %77, %1
  br i1 %78, label %82, label %79

; <label>:79:                                     ; preds = %74
  %80 = add nuw nsw i64 %75, 1
  %81 = icmp ult i64 %80, %73
  br i1 %81, label %74, label %87

; <label>:82:                                     ; preds = %74
  %83 = trunc i64 %75 to i32
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %87, label %85

; <label>:85:                                     ; preds = %82
  %86 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  br label %95

; <label>:87:                                     ; preds = %79, %66, %82
  %88 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 1
  %89 = load %struct.FuncState*, %struct.FuncState** %88, align 8, !tbaa !35
  tail call fastcc void @singlevaraux(%struct.FuncState* %89, %struct.TString* %1, %struct.expdesc* %2, i32 0)
  %90 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %91 = load i32, i32* %90, align 8, !tbaa !61
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %102, label %93

; <label>:93:                                     ; preds = %87
  %94 = tail call fastcc i32 @newupvalue(%struct.FuncState* nonnull %0, %struct.TString* %1, %struct.expdesc* nonnull %2)
  br label %95

; <label>:95:                                     ; preds = %85, %93
  %96 = phi i32* [ %86, %85 ], [ %90, %93 ]
  %97 = phi i32 [ %83, %85 ], [ %94, %93 ]
  %98 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2
  store i32 -1, i32* %98, align 8, !tbaa !58
  %99 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3
  store i32 -1, i32* %99, align 4, !tbaa !60
  store i32 9, i32* %96, align 8, !tbaa !61
  %100 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %101 = bitcast %union.anon.7* %100 to i32*
  store i32 %97, i32* %101, align 8, !tbaa !11
  br label %102

; <label>:102:                                    ; preds = %63, %46, %95, %87
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
  %10 = tail call i32 @luaK_getlabel(%struct.FuncState* %6) #6
  %11 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %8, i64 0, i32 2, i32 1
  %12 = load i32, i32* %11, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %14 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !tbaa !66
  %15 = bitcast %struct.Labellist* %9 to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !102
  %17 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %8, i64 0, i32 2, i32 2
  %18 = tail call i8* @luaM_growaux_(%struct.lua_State* %14, i8* %16, i32 %12, i32* nonnull %17, i32 24, i32 32767, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #6
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
  tail call fastcc void @jumpscopeerror(%struct.LexState* nonnull %0, %struct.Labeldesc* %70) #7
  unreachable

; <label>:71:                                     ; preds = %57
  %72 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !tbaa !34
  %73 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %64, i64 %53, i32 1
  %74 = load i32, i32* %73, align 8, !tbaa !105
  %75 = load i32, i32* %28, align 8, !tbaa !105
  tail call void @luaK_patchlist(%struct.FuncState* %72, i32 %74, i32 %75) #6
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 24, i32 8, i1 false) #6, !tbaa.struct !135
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
  %111 = tail call i32 @luaK_codeABCk(%struct.FuncState* %6, i32 55, i32 %110, i32 0, i32 0, i32 0) #6
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
  %7 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 5) #6
  %8 = icmp eq %struct.TString* %4, %7
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !tbaa !66
  br i1 %8, label %10, label %14

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 2
  %12 = load i32, i32* %11, align 4, !tbaa !100
  %13 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %12) #6
  br label %21

; <label>:14:                                     ; preds = %2
  %15 = bitcast %struct.Labeldesc* %1 to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !97
  %17 = getelementptr inbounds i8, i8* %16, i64 24
  %18 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 2
  %19 = load i32, i32* %18, align 4, !tbaa !100
  %20 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i8* nonnull %17, i32 %19) #6
  br label %21

; <label>:21:                                     ; preds = %14, %10
  %22 = phi i8* [ %13, %10 ], [ %20, %14 ]
  tail call void @luaK_semerror(%struct.LexState* nonnull %0, i8* %22) #7
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
  %8 = getelementptr %struct.FuncState, %struct.FuncState* %4, i64 0, i32 0
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8, !tbaa !19
  %10 = getelementptr %struct.FuncState, %struct.FuncState* %4, i64 0, i32 2
  %11 = load %struct.LexState*, %struct.LexState** %10, align 8, !tbaa !36
  %12 = getelementptr %struct.FuncState, %struct.FuncState* %4, i64 0, i32 10
  %13 = load i32, i32* %12, align 8, !tbaa !44
  %14 = getelementptr %struct.Proto, %struct.Proto* %9, i64 0, i32 21
  %15 = load %struct.LocVar*, %struct.LocVar** %14, align 8, !tbaa !80
  %16 = getelementptr %struct.LexState, %struct.LexState* %11, i64 0, i32 10
  %17 = load %struct.Dyndata*, %struct.Dyndata** %16, align 8, !tbaa !27
  %18 = getelementptr %struct.Dyndata, %struct.Dyndata* %17, i64 0, i32 0, i32 0
  %19 = load %struct.Vardesc*, %struct.Vardesc** %18, align 8, !tbaa !89
  %20 = add nsw i32 %13, %7
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %19, i64 %21, i32 0
  %23 = load i16, i16* %22, align 2, !tbaa !90
  %24 = sext i16 %23 to i64
  %25 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %15, i64 %24
  %26 = bitcast %struct.LocVar* %25 to i8**
  %27 = load i8*, i8** %26, align 8, !tbaa !132
  %28 = getelementptr inbounds i8, i8* %27, i64 24
  %29 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %30 = load %struct.lua_State*, %struct.lua_State** %29, align 8, !tbaa !66
  %31 = bitcast %struct.Labeldesc* %1 to i8**
  %32 = load i8*, i8** %31, align 8, !tbaa !97
  %33 = getelementptr inbounds i8, i8* %32, i64 24
  %34 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %1, i64 0, i32 2
  %35 = load i32, i32* %34, align 4, !tbaa !100
  %36 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %30, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %33, i32 %35, i8* nonnull %28) #6
  tail call void @luaK_semerror(%struct.LexState* %0, i8* %36) #7
  unreachable
}

; Function Attrs: noreturn
declare hidden void @luaK_semerror(%struct.LexState*, i8*) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @error_expected(%struct.LexState*, i32) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !tbaa !66
  %5 = tail call i8* @luaX_token2str(%struct.LexState* %0, i32 %1) #6
  %6 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* %5) #6
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* %6) #7
  unreachable
}

declare hidden i8* @luaX_token2str(%struct.LexState*, i32) local_unnamed_addr #2

declare hidden void @luaK_int(%struct.FuncState*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @forbody(%struct.LexState*, i32, i32, i32, i32) unnamed_addr #0 {
  %6 = alloca %struct.BlockCnt, align 8
  %7 = alloca %struct.BlockCnt, align 8
  %8 = bitcast %struct.BlockCnt* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #6
  %9 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %10 = load %struct.FuncState*, %struct.FuncState** %9, align 8, !tbaa !34
  %11 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !63
  %13 = icmp eq i32 %12, 259
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %5
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 259) #7
  unreachable

; <label>:15:                                     ; preds = %5
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %16 = sext i32 %4 to i64
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* @forbody.forprep, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !11
  %19 = tail call i32 @luaK_codeABx(%struct.FuncState* %10, i32 %18, i32 %1, i32 0) #6
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
  %58 = getelementptr %struct.FuncState, %struct.FuncState* %48, i64 0, i32 0
  %59 = load %struct.Proto*, %struct.Proto** %58, align 8, !tbaa !19
  %60 = getelementptr %struct.FuncState, %struct.FuncState* %48, i64 0, i32 2
  %61 = load %struct.LexState*, %struct.LexState** %60, align 8, !tbaa !36
  %62 = getelementptr %struct.FuncState, %struct.FuncState* %48, i64 0, i32 10
  %63 = load i32, i32* %62, align 8, !tbaa !44
  %64 = getelementptr %struct.Proto, %struct.Proto* %59, i64 0, i32 21
  %65 = load %struct.LocVar*, %struct.LocVar** %64, align 8, !tbaa !80
  %66 = getelementptr %struct.LexState, %struct.LexState* %61, i64 0, i32 10
  %67 = load %struct.Dyndata*, %struct.Dyndata** %66, align 8, !tbaa !27
  %68 = getelementptr %struct.Dyndata, %struct.Dyndata* %67, i64 0, i32 0, i32 0
  %69 = load %struct.Vardesc*, %struct.Vardesc** %68, align 8, !tbaa !89
  %70 = sext i32 %3 to i64
  %71 = add i32 %63, %57
  %72 = and i32 %3, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %82, label %74

; <label>:74:                                     ; preds = %54
  %75 = sub i32 %71, %3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %69, i64 %76, i32 0
  %78 = load i16, i16* %77, align 2, !tbaa !90
  %79 = sext i16 %78 to i64
  %80 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %65, i64 %79, i32 1
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
  %91 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %69, i64 %90, i32 0
  %92 = load i16, i16* %91, align 2, !tbaa !90
  %93 = sext i16 %92 to i64
  %94 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %65, i64 %93, i32 1
  store i32 %56, i32* %94, align 8, !tbaa !92
  %95 = trunc i64 %87 to i32
  %96 = add i32 %95, -1
  %97 = sub i32 %71, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %69, i64 %98, i32 0
  %100 = load i16, i16* %99, align 2, !tbaa !90
  %101 = sext i16 %100 to i64
  %102 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %65, i64 %101, i32 1
  store i32 %56, i32* %102, align 8, !tbaa !92
  %103 = add nsw i64 %87, -2
  %104 = trunc i64 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %86

; <label>:106:                                    ; preds = %82, %86, %44
  call void @luaK_reserveregs(%struct.FuncState* %10, i32 %3) #6
  %107 = load %struct.FuncState*, %struct.FuncState** %9, align 8, !tbaa !34
  %108 = bitcast %struct.BlockCnt* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %108) #6
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
  call fastcc void @statement(%struct.LexState* nonnull %0) #6
  br i1 %140, label %141, label %137

; <label>:141:                                    ; preds = %137, %137, %137, %137, %137, %139
  call fastcc void @leaveblock(%struct.FuncState* %107) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %108) #6
  call fastcc void @leaveblock(%struct.FuncState* %10)
  %142 = call i32 @luaK_getlabel(%struct.FuncState* %10) #6
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
  call void @luaX_syntaxerror(%struct.LexState* %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0)) #7
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
  %161 = call i32 @luaK_codeABCk(%struct.FuncState* nonnull %10, i32 77, i32 %1, i32 0, i32 %3, i32 0) #6
  call void @luaK_fixline(%struct.FuncState* nonnull %10, i32 %2) #6
  %162 = add nsw i32 %1, 2
  br label %163

; <label>:163:                                    ; preds = %154, %160
  %164 = phi i32 [ %162, %160 ], [ %1, %154 ]
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* @forbody.forloop, i64 0, i64 %16
  %166 = load i32, i32* %165, align 4, !tbaa !11
  %167 = call i32 @luaK_codeABx(%struct.FuncState* nonnull %10, i32 %166, i32 %164, i32 0) #6
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
  call void @luaX_syntaxerror(%struct.LexState* %178, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0)) #7
  unreachable

; <label>:179:                                    ; preds = %163
  %180 = load i32, i32* %173, align 4, !tbaa !87
  %181 = and i32 %180, 32767
  %182 = shl i32 %175, 15
  %183 = sub i32 0, %182
  %184 = or i32 %181, %183
  store i32 %184, i32* %173, align 4, !tbaa !87
  call void @luaK_fixline(%struct.FuncState* nonnull %10, i32 %2) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #6
  ret void
}

declare hidden void @luaK_checkstack(%struct.FuncState*, i32) local_unnamed_addr #2

declare hidden void @luaK_nil(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

declare hidden i32 @luaK_exp2anyreg(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_ret(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @restassign(%struct.LexState*, %struct.LHS_assign*, i32) unnamed_addr #0 {
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca %struct.LHS_assign, align 8
  %6 = bitcast %struct.expdesc* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #6
  %7 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !108
  %10 = add i32 %9, -8
  %11 = icmp ult i32 %10, 6
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %3
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0)) #7
  unreachable

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  %15 = load i32, i32* %14, align 8, !tbaa !63
  switch i32 %15, label %100 [
    i32 44, label %16
    i32 61, label %101
  ]

; <label>:16:                                     ; preds = %13
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %17 = bitcast %struct.LHS_assign* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #6
  %18 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 0
  store %struct.LHS_assign* %1, %struct.LHS_assign** %18, align 8, !tbaa !106
  %19 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1
  call fastcc void @suffixedexp(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %19)
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i64 0, i32 0
  %21 = load i32, i32* %20, align 8, !tbaa !108
  %22 = add i32 %21, -10
  %23 = icmp ult i32 %22, 4
  %24 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br i1 %23, label %91, label %25

; <label>:25:                                     ; preds = %16
  %26 = load %struct.FuncState*, %struct.FuncState** %24, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %26, i64 0, i32 15
  %28 = load i8, i8* %27, align 4, !tbaa !88
  %29 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1, i32 1
  %30 = bitcast %union.anon.7* %29 to i32*
  %31 = zext i8 %28 to i16
  br label %32

; <label>:32:                                     ; preds = %77, %25
  %33 = phi %struct.LHS_assign* [ %1, %25 ], [ %80, %77 ]
  %34 = phi i32 [ 0, %25 ], [ %78, %77 ]
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
  %90 = call i32 @luaK_codeABCk(%struct.FuncState* %26, i32 %88, i32 %85, i32 %89, i32 0, i32 0) #6
  call void @luaK_reserveregs(%struct.FuncState* %26, i32 1) #6
  br label %91

; <label>:91:                                     ; preds = %16, %84, %82
  %92 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %93 = load %struct.lua_State*, %struct.lua_State** %92, align 8, !tbaa !66
  call void @luaE_enterCcall(%struct.lua_State* %93) #6
  %94 = add nsw i32 %2, 1
  call fastcc void @restassign(%struct.LexState* %0, %struct.LHS_assign* nonnull %5, i32 %94)
  %95 = load %struct.lua_State*, %struct.lua_State** %92, align 8, !tbaa !66
  %96 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %95, i64 0, i32 19
  %97 = load i32, i32* %96, align 8, !tbaa !109
  %98 = add i32 %97, -1
  store i32 %98, i32* %96, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #6
  %99 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  br label %142

; <label>:100:                                    ; preds = %13
  tail call fastcc void @error_expected(%struct.LexState* nonnull %0, i32 61) #7
  unreachable

; <label>:101:                                    ; preds = %13
  tail call void @luaX_next(%struct.LexState* nonnull %0) #6
  %102 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #6
  %103 = load i32, i32* %14, align 8, !tbaa !63
  %104 = icmp eq i32 %103, 44
  %105 = getelementptr %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br i1 %104, label %106, label %114

; <label>:106:                                    ; preds = %101
  br label %107

; <label>:107:                                    ; preds = %106, %107
  %108 = phi i32 [ %111, %107 ], [ 1, %106 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #6
  %109 = load %struct.FuncState*, %struct.FuncState** %105, align 8, !tbaa !34
  call void @luaK_exp2nextreg(%struct.FuncState* %109, %struct.expdesc* nonnull %4) #6
  %110 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #6
  %111 = add nuw nsw i32 %108, 1
  %112 = load i32, i32* %14, align 8, !tbaa !63
  %113 = icmp eq i32 %112, 44
  br i1 %113, label %107, label %114

; <label>:114:                                    ; preds = %107, %101
  %115 = phi i32 [ 1, %101 ], [ %111, %107 ]
  %116 = icmp eq i32 %115, %2
  %117 = load %struct.FuncState*, %struct.FuncState** %105, align 8, !tbaa !34
  br i1 %116, label %140, label %118

; <label>:118:                                    ; preds = %114
  %119 = sub nsw i32 %2, %115
  %120 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0
  %121 = load i32, i32* %120, align 8, !tbaa !61
  switch i32 %121, label %122 [
    i32 16, label %129
    i32 17, label %129
    i32 0, label %123
  ]

; <label>:122:                                    ; preds = %118
  call void @luaK_exp2nextreg(%struct.FuncState* %117, %struct.expdesc* nonnull %4) #6
  br label %123

; <label>:123:                                    ; preds = %122, %118
  %124 = icmp sgt i32 %119, 0
  br i1 %124, label %125, label %135

; <label>:125:                                    ; preds = %123
  %126 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %117, i64 0, i32 15
  %127 = load i8, i8* %126, align 4, !tbaa !88
  %128 = zext i8 %127 to i32
  call void @luaK_nil(%struct.FuncState* %117, i32 %128, i32 %119) #6
  br label %134

; <label>:129:                                    ; preds = %118, %118
  %130 = add nsw i32 %119, 1
  %131 = icmp sgt i32 %130, 0
  %132 = select i1 %131, i32 %130, i32 0
  call void @luaK_setreturns(%struct.FuncState* %117, %struct.expdesc* nonnull %4, i32 %132) #6
  %133 = icmp sgt i32 %119, 0
  br i1 %133, label %134, label %135

; <label>:134:                                    ; preds = %129, %125
  call void @luaK_reserveregs(%struct.FuncState* %117, i32 %119) #6
  br label %142

; <label>:135:                                    ; preds = %129, %123
  %136 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %117, i64 0, i32 15
  %137 = load i8, i8* %136, align 4, !tbaa !88
  %138 = trunc i32 %119 to i8
  %139 = add i8 %137, %138
  store i8 %139, i8* %136, align 4, !tbaa !88
  br label %142

; <label>:140:                                    ; preds = %114
  call void @luaK_setoneret(%struct.FuncState* %117, %struct.expdesc* nonnull %4) #6
  %141 = load %struct.FuncState*, %struct.FuncState** %105, align 8, !tbaa !34
  call void @luaK_storevar(%struct.FuncState* %141, %struct.expdesc* nonnull %7, %struct.expdesc* nonnull %4) #6
  br label %154

; <label>:142:                                    ; preds = %135, %134, %91
  %143 = phi i32* [ %120, %135 ], [ %120, %134 ], [ %99, %91 ]
  %144 = phi %struct.FuncState** [ %105, %135 ], [ %105, %134 ], [ %24, %91 ]
  %145 = load %struct.FuncState*, %struct.FuncState** %144, align 8, !tbaa !34
  %146 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %145, i64 0, i32 15
  %147 = load i8, i8* %146, align 4, !tbaa !88
  %148 = zext i8 %147 to i32
  %149 = add nsw i32 %148, -1
  %150 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2
  store i32 -1, i32* %150, align 8, !tbaa !58
  %151 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3
  store i32 -1, i32* %151, align 4, !tbaa !60
  store i32 7, i32* %143, align 8, !tbaa !61
  %152 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1
  %153 = bitcast %union.anon.7* %152 to i32*
  store i32 %149, i32* %153, align 8, !tbaa !11
  call void @luaK_storevar(%struct.FuncState* %145, %struct.expdesc* nonnull %7, %struct.expdesc* nonnull %4) #6
  br label %154

; <label>:154:                                    ; preds = %140, %142
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #6
  ret void
}

declare hidden void @luaK_setoneret(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

declare hidden void @luaK_finish(%struct.FuncState*) local_unnamed_addr #2

declare hidden i8* @luaM_shrinkvector_(%struct.lua_State*, i8*, i32*, i32, i32) local_unnamed_addr #2

declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

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
