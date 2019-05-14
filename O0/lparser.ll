; ModuleID = 'lparser.c'
source_filename = "lparser.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.8 = type { i8, i8 }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.UpVal = type { %struct.lua_TValue*, i64, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.UpVal*, i32 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.4 }
%struct.anon.4 = type { %union.Value, i32, i32 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon, i64, i16, i16 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.Dyndata = type { %struct.anon.5, %struct.Labellist, %struct.Labellist }
%struct.anon.5 = type { %struct.Vardesc*, i32, i32 }
%struct.Vardesc = type { i16 }
%struct.Labellist = type { %struct.Labeldesc*, i32, i32 }
%struct.Labeldesc = type { %struct.TString*, i32, i32, i8 }
%struct.LexState = type { i32, i32, i32, %struct.Token, %struct.Token, %struct.FuncState*, %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Table*, %struct.Dyndata*, %struct.TString*, %struct.TString* }
%struct.Token = type { i32, %union.SemInfo }
%union.SemInfo = type { double }
%struct.FuncState = type { %struct.Proto*, %struct.FuncState*, %struct.LexState*, %struct.BlockCnt*, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8 }
%struct.BlockCnt = type { %struct.BlockCnt*, i32, i32, i8, i8, i8 }
%union.GCUnion = type { %struct.lua_State }
%struct.expdesc = type { i32, %union.anon.6, i32, i32 }
%union.anon.6 = type { i64 }
%struct.LHS_assign = type { %struct.LHS_assign*, %struct.expdesc }
%struct.ConsControl = type { %struct.expdesc, %struct.expdesc*, i32, i32, i32 }
%struct.anon.7 = type { i16, i8, i8 }

@.str = private unnamed_addr constant [9 x i8] c"upvalues\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"main function\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"function at line %d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"too many %s (limit is %d) in %s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"C levels\00", align 1
@priority = internal constant [21 x %struct.anon.8] [%struct.anon.8 { i8 10, i8 10 }, %struct.anon.8 { i8 10, i8 10 }, %struct.anon.8 { i8 11, i8 11 }, %struct.anon.8 { i8 11, i8 11 }, %struct.anon.8 { i8 14, i8 13 }, %struct.anon.8 { i8 11, i8 11 }, %struct.anon.8 { i8 11, i8 11 }, %struct.anon.8 { i8 6, i8 6 }, %struct.anon.8 { i8 4, i8 4 }, %struct.anon.8 { i8 5, i8 5 }, %struct.anon.8 { i8 7, i8 7 }, %struct.anon.8 { i8 7, i8 7 }, %struct.anon.8 { i8 9, i8 8 }, %struct.anon.8 { i8 3, i8 3 }, %struct.anon.8 { i8 3, i8 3 }, %struct.anon.8 { i8 3, i8 3 }, %struct.anon.8 { i8 3, i8 3 }, %struct.anon.8 { i8 3, i8 3 }, %struct.anon.8 { i8 3, i8 3 }, %struct.anon.8 { i8 2, i8 2 }, %struct.anon.8 { i8 1, i8 1 }], align 16
@.str.5 = private unnamed_addr constant [43 x i8] c"cannot use '...' outside a vararg function\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"items in a constructor\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"local variables\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"<name> or '...' expected\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"unexpected symbol\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"function arguments expected\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"labels/gotos\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"<goto %s> at line %d jumps into the scope of local '%s'\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"<%s> at line %d not inside a loop\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"no visible label '%s' for <goto> at line %d\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"%s expected (to close %s at line %d)\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"%s expected\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"'=' or 'in' expected\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"(for index)\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"(for limit)\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"(for step)\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"(for generator)\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"(for state)\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"(for control)\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"label '%s' already defined on line %d\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.LClosure* @luaY_parser(%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Dyndata*, i8*, i32) #0 {
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca %struct.Zio*, align 8
  %9 = alloca %struct.Mbuffer*, align 8
  %10 = alloca %struct.Dyndata*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.LexState, align 8
  %14 = alloca %struct.FuncState, align 8
  %15 = alloca %struct.LClosure*, align 8
  %16 = alloca %struct.lua_TValue*, align 8
  %17 = alloca %struct.LClosure*, align 8
  %18 = alloca %struct.lua_TValue*, align 8
  %19 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8
  store %struct.Zio* %1, %struct.Zio** %8, align 8
  store %struct.Mbuffer* %2, %struct.Mbuffer** %9, align 8
  store %struct.Dyndata* %3, %struct.Dyndata** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %21 = call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %20, i32 1)
  store %struct.LClosure* %21, %struct.LClosure** %15, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 5
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %23, align 8
  store %struct.lua_TValue* %24, %struct.lua_TValue** %16, align 8
  %25 = load %struct.LClosure*, %struct.LClosure** %15, align 8
  store %struct.LClosure* %25, %struct.LClosure** %17, align 8
  %26 = load %struct.LClosure*, %struct.LClosure** %17, align 8
  %27 = bitcast %struct.LClosure* %26 to %union.GCUnion*
  %28 = bitcast %union.GCUnion* %27 to %struct.GCObject*
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 0
  %31 = bitcast %union.Value* %30 to %struct.GCObject**
  store %struct.GCObject* %28, %struct.GCObject** %31, align 8
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 0, i32 1
  store i32 70, i32* %33, align 8
  %34 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  call void @luaD_inctop(%struct.lua_State* %34)
  %35 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %36 = call %struct.Table* @luaH_new(%struct.lua_State* %35)
  %37 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 9
  store %struct.Table* %36, %struct.Table** %37, align 8
  %38 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 5
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %39, align 8
  store %struct.lua_TValue* %40, %struct.lua_TValue** %18, align 8
  %41 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 9
  %42 = load %struct.Table*, %struct.Table** %41, align 8
  store %struct.Table* %42, %struct.Table** %19, align 8
  %43 = load %struct.Table*, %struct.Table** %19, align 8
  %44 = bitcast %struct.Table* %43 to %union.GCUnion*
  %45 = bitcast %union.GCUnion* %44 to %struct.GCObject*
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8
  %47 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i32 0, i32 0
  %48 = bitcast %union.Value* %47 to %struct.GCObject**
  store %struct.GCObject* %45, %struct.GCObject** %48, align 8
  %49 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8
  %50 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %49, i32 0, i32 1
  store i32 69, i32* %50, align 8
  %51 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  call void @luaD_inctop(%struct.lua_State* %51)
  %52 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %53 = call %struct.Proto* @luaF_newproto(%struct.lua_State* %52)
  %54 = load %struct.LClosure*, %struct.LClosure** %15, align 8
  %55 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %54, i32 0, i32 5
  store %struct.Proto* %53, %struct.Proto** %55, align 8
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 0
  store %struct.Proto* %53, %struct.Proto** %56, align 8
  %57 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call %struct.TString* @luaS_new(%struct.lua_State* %57, i8* %58)
  %60 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 0
  %61 = load %struct.Proto*, %struct.Proto** %60, align 8
  %62 = getelementptr inbounds %struct.Proto, %struct.Proto* %61, i32 0, i32 21
  store %struct.TString* %59, %struct.TString** %62, align 8
  %63 = load %struct.Mbuffer*, %struct.Mbuffer** %9, align 8
  %64 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 8
  store %struct.Mbuffer* %63, %struct.Mbuffer** %64, align 8
  %65 = load %struct.Dyndata*, %struct.Dyndata** %10, align 8
  %66 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 10
  store %struct.Dyndata* %65, %struct.Dyndata** %66, align 8
  %67 = load %struct.Dyndata*, %struct.Dyndata** %10, align 8
  %68 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %68, i32 0, i32 1
  store i32 0, i32* %69, align 8
  %70 = load %struct.Dyndata*, %struct.Dyndata** %10, align 8
  %71 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %71, i32 0, i32 1
  store i32 0, i32* %72, align 8
  %73 = load %struct.Dyndata*, %struct.Dyndata** %10, align 8
  %74 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %74, i32 0, i32 1
  store i32 0, i32* %75, align 8
  %76 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %77 = load %struct.Zio*, %struct.Zio** %8, align 8
  %78 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 0
  %79 = load %struct.Proto*, %struct.Proto** %78, align 8
  %80 = getelementptr inbounds %struct.Proto, %struct.Proto* %79, i32 0, i32 21
  %81 = load %struct.TString*, %struct.TString** %80, align 8
  %82 = load i32, i32* %12, align 4
  call void @luaX_setinput(%struct.lua_State* %76, %struct.LexState* %13, %struct.Zio* %77, %struct.TString* %81, i32 %82)
  call void @mainfunc(%struct.LexState* %13, %struct.FuncState* %14)
  %83 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %83, i32 0, i32 5
  %85 = load %struct.lua_TValue*, %struct.lua_TValue** %84, align 8
  %86 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %85, i32 -1
  store %struct.lua_TValue* %86, %struct.lua_TValue** %84, align 8
  %87 = load %struct.LClosure*, %struct.LClosure** %15, align 8
  ret %struct.LClosure* %87
}

declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) #1

declare hidden void @luaD_inctop(%struct.lua_State*) #1

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) #1

declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) #1

declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) #1

declare hidden void @luaX_setinput(%struct.lua_State*, %struct.LexState*, %struct.Zio*, %struct.TString*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mainfunc(%struct.LexState*, %struct.FuncState*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.BlockCnt, align 8
  %6 = alloca %struct.expdesc, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.FuncState* %1, %struct.FuncState** %4, align 8
  %7 = load %struct.LexState*, %struct.LexState** %3, align 8
  %8 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  call void @open_func(%struct.LexState* %7, %struct.FuncState* %8, %struct.BlockCnt* %5)
  %9 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 0
  %11 = load %struct.Proto*, %struct.Proto** %10, align 8
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i32 0, i32 4
  store i8 1, i8* %12, align 1
  call void @init_exp(%struct.expdesc* %6, i32 8, i32 0)
  %13 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %14 = load %struct.LexState*, %struct.LexState** %3, align 8
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %14, i32 0, i32 12
  %16 = load %struct.TString*, %struct.TString** %15, align 8
  %17 = call i32 @newupvalue(%struct.FuncState* %13, %struct.TString* %16, %struct.expdesc* %6)
  %18 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_next(%struct.LexState* %18)
  %19 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @statlist(%struct.LexState* %19)
  %20 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @check(%struct.LexState* %20, i32 289)
  %21 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @close_func(%struct.LexState* %21)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_func(%struct.LexState*, %struct.FuncState*, %struct.BlockCnt*) #0 {
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca %struct.BlockCnt*, align 8
  %7 = alloca %struct.Proto*, align 8
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store %struct.FuncState* %1, %struct.FuncState** %5, align 8
  store %struct.BlockCnt* %2, %struct.BlockCnt** %6, align 8
  %8 = load %struct.LexState*, %struct.LexState** %4, align 8
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 5
  %10 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  %11 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %11, i32 0, i32 1
  store %struct.FuncState* %10, %struct.FuncState** %12, align 8
  %13 = load %struct.LexState*, %struct.LexState** %4, align 8
  %14 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 2
  store %struct.LexState* %13, %struct.LexState** %15, align 8
  %16 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %17 = load %struct.LexState*, %struct.LexState** %4, align 8
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %17, i32 0, i32 5
  store %struct.FuncState* %16, %struct.FuncState** %18, align 8
  %19 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %19, i32 0, i32 4
  store i32 0, i32* %20, align 8
  %21 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %21, i32 0, i32 5
  store i32 0, i32* %22, align 4
  %23 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %23, i32 0, i32 6
  store i32 -1, i32* %24, align 8
  %25 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %25, i32 0, i32 13
  store i8 0, i8* %26, align 4
  %27 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %27, i32 0, i32 7
  store i32 0, i32* %28, align 4
  %29 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %29, i32 0, i32 8
  store i32 0, i32* %30, align 8
  %31 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %31, i32 0, i32 12
  store i8 0, i8* %32, align 1
  %33 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %33, i32 0, i32 10
  store i16 0, i16* %34, align 8
  %35 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %35, i32 0, i32 11
  store i8 0, i8* %36, align 2
  %37 = load %struct.LexState*, %struct.LexState** %4, align 8
  %38 = getelementptr inbounds %struct.LexState, %struct.LexState* %37, i32 0, i32 10
  %39 = load %struct.Dyndata*, %struct.Dyndata** %38, align 8
  %40 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %44 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 4
  %45 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %46 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %45, i32 0, i32 3
  store %struct.BlockCnt* null, %struct.BlockCnt** %46, align 8
  %47 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %48 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %47, i32 0, i32 0
  %49 = load %struct.Proto*, %struct.Proto** %48, align 8
  store %struct.Proto* %49, %struct.Proto** %7, align 8
  %50 = load %struct.LexState*, %struct.LexState** %4, align 8
  %51 = getelementptr inbounds %struct.LexState, %struct.LexState* %50, i32 0, i32 11
  %52 = load %struct.TString*, %struct.TString** %51, align 8
  %53 = load %struct.Proto*, %struct.Proto** %7, align 8
  %54 = getelementptr inbounds %struct.Proto, %struct.Proto* %53, i32 0, i32 21
  store %struct.TString* %52, %struct.TString** %54, align 8
  %55 = load %struct.Proto*, %struct.Proto** %7, align 8
  %56 = getelementptr inbounds %struct.Proto, %struct.Proto* %55, i32 0, i32 5
  store i8 2, i8* %56, align 4
  %57 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %58 = load %struct.BlockCnt*, %struct.BlockCnt** %6, align 8
  call void @enterblock(%struct.FuncState* %57, %struct.BlockCnt* %58, i8 zeroext 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_exp(%struct.expdesc*, i32, i32) #0 {
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.expdesc* %0, %struct.expdesc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i32 0, i32 2
  store i32 -1, i32* %8, align 8
  %9 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %9, i32 0, i32 3
  store i32 -1, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %15, i32 0, i32 1
  %17 = bitcast %union.anon.6* %16 to i32*
  store i32 %14, i32* %17, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @newupvalue(%struct.FuncState*, %struct.TString*, %struct.expdesc*) #0 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.TString*, align 8
  %6 = alloca %struct.expdesc*, align 8
  %7 = alloca %struct.Proto*, align 8
  %8 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.TString* %1, %struct.TString** %5, align 8
  store %struct.expdesc* %2, %struct.expdesc** %6, align 8
  %9 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 0
  %11 = load %struct.Proto*, %struct.Proto** %10, align 8
  store %struct.Proto* %11, %struct.Proto** %7, align 8
  %12 = load %struct.Proto*, %struct.Proto** %7, align 8
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %16 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %16, i32 0, i32 12
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = add nsw i32 %19, 1
  call void @checklimit(%struct.FuncState* %15, i32 %20, i32 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %21 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %21, i32 0, i32 12
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = add nsw i32 %24, 1
  %26 = load %struct.Proto*, %struct.Proto** %7, align 8
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %46

; <label>:30:                                     ; preds = %3
  %31 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %31, i32 0, i32 2
  %33 = load %struct.LexState*, %struct.LexState** %32, align 8
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %33, i32 0, i32 6
  %35 = load %struct.lua_State*, %struct.lua_State** %34, align 8
  %36 = load %struct.Proto*, %struct.Proto** %7, align 8
  %37 = getelementptr inbounds %struct.Proto, %struct.Proto* %36, i32 0, i32 19
  %38 = load %struct.Upvaldesc*, %struct.Upvaldesc** %37, align 8
  %39 = bitcast %struct.Upvaldesc* %38 to i8*
  %40 = load %struct.Proto*, %struct.Proto** %7, align 8
  %41 = getelementptr inbounds %struct.Proto, %struct.Proto* %40, i32 0, i32 6
  %42 = call i8* @luaM_growaux_(%struct.lua_State* %35, i8* %39, i32* %41, i64 16, i32 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %43 = bitcast i8* %42 to %struct.Upvaldesc*
  %44 = load %struct.Proto*, %struct.Proto** %7, align 8
  %45 = getelementptr inbounds %struct.Proto, %struct.Proto* %44, i32 0, i32 19
  store %struct.Upvaldesc* %43, %struct.Upvaldesc** %45, align 8
  br label %46

; <label>:46:                                     ; preds = %30, %3
  br label %47

; <label>:47:                                     ; preds = %53, %46
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.Proto*, %struct.Proto** %7, align 8
  %50 = getelementptr inbounds %struct.Proto, %struct.Proto* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %62

; <label>:53:                                     ; preds = %47
  %54 = load %struct.Proto*, %struct.Proto** %7, align 8
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %54, i32 0, i32 19
  %56 = load %struct.Upvaldesc*, %struct.Upvaldesc** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %56, i64 %59
  %61 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %60, i32 0, i32 0
  store %struct.TString* null, %struct.TString** %61, align 8
  br label %47

; <label>:62:                                     ; preds = %47
  %63 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %64 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 8
  %67 = zext i1 %66 to i32
  %68 = trunc i32 %67 to i8
  %69 = load %struct.Proto*, %struct.Proto** %7, align 8
  %70 = getelementptr inbounds %struct.Proto, %struct.Proto* %69, i32 0, i32 19
  %71 = load %struct.Upvaldesc*, %struct.Upvaldesc** %70, align 8
  %72 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %73 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %72, i32 0, i32 12
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %71, i64 %75
  %77 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %76, i32 0, i32 1
  store i8 %68, i8* %77, align 8
  %78 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %79 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %78, i32 0, i32 1
  %80 = bitcast %union.anon.6* %79 to i32*
  %81 = load i32, i32* %80, align 8
  %82 = trunc i32 %81 to i8
  %83 = load %struct.Proto*, %struct.Proto** %7, align 8
  %84 = getelementptr inbounds %struct.Proto, %struct.Proto* %83, i32 0, i32 19
  %85 = load %struct.Upvaldesc*, %struct.Upvaldesc** %84, align 8
  %86 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %87 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %86, i32 0, i32 12
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %85, i64 %89
  %91 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %90, i32 0, i32 2
  store i8 %82, i8* %91, align 1
  %92 = load %struct.TString*, %struct.TString** %5, align 8
  %93 = load %struct.Proto*, %struct.Proto** %7, align 8
  %94 = getelementptr inbounds %struct.Proto, %struct.Proto* %93, i32 0, i32 19
  %95 = load %struct.Upvaldesc*, %struct.Upvaldesc** %94, align 8
  %96 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %97 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %96, i32 0, i32 12
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %95, i64 %99
  %101 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %100, i32 0, i32 0
  store %struct.TString* %92, %struct.TString** %101, align 8
  %102 = load %struct.Proto*, %struct.Proto** %7, align 8
  %103 = getelementptr inbounds %struct.Proto, %struct.Proto* %102, i32 0, i32 2
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %127

; <label>:108:                                    ; preds = %62
  %109 = load %struct.TString*, %struct.TString** %5, align 8
  %110 = getelementptr inbounds %struct.TString, %struct.TString* %109, i32 0, i32 2
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %112, 3
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %127

; <label>:115:                                    ; preds = %108
  %116 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %117 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %116, i32 0, i32 2
  %118 = load %struct.LexState*, %struct.LexState** %117, align 8
  %119 = getelementptr inbounds %struct.LexState, %struct.LexState* %118, i32 0, i32 6
  %120 = load %struct.lua_State*, %struct.lua_State** %119, align 8
  %121 = load %struct.Proto*, %struct.Proto** %7, align 8
  %122 = bitcast %struct.Proto* %121 to %union.GCUnion*
  %123 = bitcast %union.GCUnion* %122 to %struct.GCObject*
  %124 = load %struct.TString*, %struct.TString** %5, align 8
  %125 = bitcast %struct.TString* %124 to %union.GCUnion*
  %126 = bitcast %union.GCUnion* %125 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %120, %struct.GCObject* %123, %struct.GCObject* %126)
  br label %128

; <label>:127:                                    ; preds = %108, %62
  br label %128

; <label>:128:                                    ; preds = %127, %115
  %129 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %130 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %129, i32 0, i32 12
  %131 = load i8, i8* %130, align 1
  %132 = add i8 %131, 1
  store i8 %132, i8* %130, align 1
  %133 = zext i8 %131 to i32
  ret i32 %133
}

declare hidden void @luaX_next(%struct.LexState*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @statlist(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  br label %3

; <label>:3:                                      ; preds = %16, %1
  %4 = load %struct.LexState*, %struct.LexState** %2, align 8
  %5 = call i32 @block_follow(%struct.LexState* %4, i32 1)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %18

; <label>:8:                                      ; preds = %3
  %9 = load %struct.LexState*, %struct.LexState** %2, align 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.Token, %struct.Token* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 274
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %8
  %15 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @statement(%struct.LexState* %15)
  br label %18

; <label>:16:                                     ; preds = %8
  %17 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @statement(%struct.LexState* %17)
  br label %3

; <label>:18:                                     ; preds = %14, %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check(%struct.LexState*, i32) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.LexState*, %struct.LexState** %3, align 8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.Token, %struct.Token* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %2
  %12 = load %struct.LexState*, %struct.LexState** %3, align 8
  %13 = load i32, i32* %4, align 4
  call void @error_expected(%struct.LexState* %12, i32 %13) #5
  unreachable

; <label>:14:                                     ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_func(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.Proto*, align 8
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %6 = load %struct.LexState*, %struct.LexState** %2, align 8
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 6
  %8 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  store %struct.lua_State* %8, %struct.lua_State** %3, align 8
  %9 = load %struct.LexState*, %struct.LexState** %2, align 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 5
  %11 = load %struct.FuncState*, %struct.FuncState** %10, align 8
  store %struct.FuncState* %11, %struct.FuncState** %4, align 8
  %12 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i32 0, i32 0
  %14 = load %struct.Proto*, %struct.Proto** %13, align 8
  store %struct.Proto* %14, %struct.Proto** %5, align 8
  %15 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  call void @luaK_ret(%struct.FuncState* %15, i32 0, i32 0)
  %16 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  call void @leaveblock(%struct.FuncState* %16)
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = load %struct.Proto*, %struct.Proto** %5, align 8
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i32 0, i32 15
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = load %struct.Proto*, %struct.Proto** %5, align 8
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = call i8* @luaM_realloc_(%struct.lua_State* %17, i8* %21, i64 %26, i64 %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.Proto*, %struct.Proto** %5, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 15
  store i32* %33, i32** %35, align 8
  %36 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %37 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.Proto*, %struct.Proto** %5, align 8
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 8
  %41 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %42 = load %struct.Proto*, %struct.Proto** %5, align 8
  %43 = getelementptr inbounds %struct.Proto, %struct.Proto* %42, i32 0, i32 17
  %44 = load i32*, i32** %43, align 8
  %45 = bitcast i32* %44 to i8*
  %46 = load %struct.Proto*, %struct.Proto** %5, align 8
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %52 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = call i8* @luaM_realloc_(%struct.lua_State* %41, i8* %45, i64 %50, i64 %55)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.Proto*, %struct.Proto** %5, align 8
  %59 = getelementptr inbounds %struct.Proto, %struct.Proto* %58, i32 0, i32 17
  store i32* %57, i32** %59, align 8
  %60 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %61 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.Proto*, %struct.Proto** %5, align 8
  %64 = getelementptr inbounds %struct.Proto, %struct.Proto* %63, i32 0, i32 9
  store i32 %62, i32* %64, align 4
  %65 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %66 = load %struct.Proto*, %struct.Proto** %5, align 8
  %67 = getelementptr inbounds %struct.Proto, %struct.Proto* %66, i32 0, i32 14
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8
  %69 = bitcast %struct.lua_TValue* %68 to i8*
  %70 = load %struct.Proto*, %struct.Proto** %5, align 8
  %71 = getelementptr inbounds %struct.Proto, %struct.Proto* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 16
  %75 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %76 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 16
  %80 = call i8* @luaM_realloc_(%struct.lua_State* %65, i8* %69, i64 %74, i64 %79)
  %81 = bitcast i8* %80 to %struct.lua_TValue*
  %82 = load %struct.Proto*, %struct.Proto** %5, align 8
  %83 = getelementptr inbounds %struct.Proto, %struct.Proto* %82, i32 0, i32 14
  store %struct.lua_TValue* %81, %struct.lua_TValue** %83, align 8
  %84 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %85 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.Proto*, %struct.Proto** %5, align 8
  %88 = getelementptr inbounds %struct.Proto, %struct.Proto* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 4
  %89 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %90 = load %struct.Proto*, %struct.Proto** %5, align 8
  %91 = getelementptr inbounds %struct.Proto, %struct.Proto* %90, i32 0, i32 16
  %92 = load %struct.Proto**, %struct.Proto*** %91, align 8
  %93 = bitcast %struct.Proto** %92 to i8*
  %94 = load %struct.Proto*, %struct.Proto** %5, align 8
  %95 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i32 0, i32 10
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 8
  %99 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %100 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 8
  %104 = call i8* @luaM_realloc_(%struct.lua_State* %89, i8* %93, i64 %98, i64 %103)
  %105 = bitcast i8* %104 to %struct.Proto**
  %106 = load %struct.Proto*, %struct.Proto** %5, align 8
  %107 = getelementptr inbounds %struct.Proto, %struct.Proto* %106, i32 0, i32 16
  store %struct.Proto** %105, %struct.Proto*** %107, align 8
  %108 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %109 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.Proto*, %struct.Proto** %5, align 8
  %112 = getelementptr inbounds %struct.Proto, %struct.Proto* %111, i32 0, i32 10
  store i32 %110, i32* %112, align 8
  %113 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %114 = load %struct.Proto*, %struct.Proto** %5, align 8
  %115 = getelementptr inbounds %struct.Proto, %struct.Proto* %114, i32 0, i32 18
  %116 = load %struct.LocVar*, %struct.LocVar** %115, align 8
  %117 = bitcast %struct.LocVar* %116 to i8*
  %118 = load %struct.Proto*, %struct.Proto** %5, align 8
  %119 = getelementptr inbounds %struct.Proto, %struct.Proto* %118, i32 0, i32 11
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 16
  %123 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %124 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %123, i32 0, i32 10
  %125 = load i16, i16* %124, align 8
  %126 = sext i16 %125 to i64
  %127 = mul i64 %126, 16
  %128 = call i8* @luaM_realloc_(%struct.lua_State* %113, i8* %117, i64 %122, i64 %127)
  %129 = bitcast i8* %128 to %struct.LocVar*
  %130 = load %struct.Proto*, %struct.Proto** %5, align 8
  %131 = getelementptr inbounds %struct.Proto, %struct.Proto* %130, i32 0, i32 18
  store %struct.LocVar* %129, %struct.LocVar** %131, align 8
  %132 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %133 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %132, i32 0, i32 10
  %134 = load i16, i16* %133, align 8
  %135 = sext i16 %134 to i32
  %136 = load %struct.Proto*, %struct.Proto** %5, align 8
  %137 = getelementptr inbounds %struct.Proto, %struct.Proto* %136, i32 0, i32 11
  store i32 %135, i32* %137, align 4
  %138 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %139 = load %struct.Proto*, %struct.Proto** %5, align 8
  %140 = getelementptr inbounds %struct.Proto, %struct.Proto* %139, i32 0, i32 19
  %141 = load %struct.Upvaldesc*, %struct.Upvaldesc** %140, align 8
  %142 = bitcast %struct.Upvaldesc* %141 to i8*
  %143 = load %struct.Proto*, %struct.Proto** %5, align 8
  %144 = getelementptr inbounds %struct.Proto, %struct.Proto* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 16
  %148 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %149 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %148, i32 0, i32 12
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i64
  %152 = mul i64 %151, 16
  %153 = call i8* @luaM_realloc_(%struct.lua_State* %138, i8* %142, i64 %147, i64 %152)
  %154 = bitcast i8* %153 to %struct.Upvaldesc*
  %155 = load %struct.Proto*, %struct.Proto** %5, align 8
  %156 = getelementptr inbounds %struct.Proto, %struct.Proto* %155, i32 0, i32 19
  store %struct.Upvaldesc* %154, %struct.Upvaldesc** %156, align 8
  %157 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %158 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %157, i32 0, i32 12
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = load %struct.Proto*, %struct.Proto** %5, align 8
  %162 = getelementptr inbounds %struct.Proto, %struct.Proto* %161, i32 0, i32 6
  store i32 %160, i32* %162, align 8
  %163 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %164 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %163, i32 0, i32 1
  %165 = load %struct.FuncState*, %struct.FuncState** %164, align 8
  %166 = load %struct.LexState*, %struct.LexState** %2, align 8
  %167 = getelementptr inbounds %struct.LexState, %struct.LexState* %166, i32 0, i32 5
  store %struct.FuncState* %165, %struct.FuncState** %167, align 8
  %168 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %169 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %168, i32 0, i32 6
  %170 = load %struct.global_State*, %struct.global_State** %169, align 8
  %171 = getelementptr inbounds %struct.global_State, %struct.global_State* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp sgt i64 %172, 0
  br i1 %173, label %174, label %176

; <label>:174:                                    ; preds = %1
  %175 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_step(%struct.lua_State* %175)
  br label %176

; <label>:176:                                    ; preds = %174, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enterblock(%struct.FuncState*, %struct.BlockCnt*, i8 zeroext) #0 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.BlockCnt*, align 8
  %6 = alloca i8, align 1
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.BlockCnt* %1, %struct.BlockCnt** %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load i8, i8* %6, align 1
  %8 = load %struct.BlockCnt*, %struct.BlockCnt** %5, align 8
  %9 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %8, i32 0, i32 5
  store i8 %7, i8* %9, align 2
  %10 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i32 0, i32 11
  %12 = load i8, i8* %11, align 2
  %13 = load %struct.BlockCnt*, %struct.BlockCnt** %5, align 8
  %14 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %13, i32 0, i32 3
  store i8 %12, i8* %14, align 8
  %15 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %15, i32 0, i32 2
  %17 = load %struct.LexState*, %struct.LexState** %16, align 8
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %17, i32 0, i32 10
  %19 = load %struct.Dyndata*, %struct.Dyndata** %18, align 8
  %20 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.BlockCnt*, %struct.BlockCnt** %5, align 8
  %24 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %25, i32 0, i32 2
  %27 = load %struct.LexState*, %struct.LexState** %26, align 8
  %28 = getelementptr inbounds %struct.LexState, %struct.LexState* %27, i32 0, i32 10
  %29 = load %struct.Dyndata*, %struct.Dyndata** %28, align 8
  %30 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.BlockCnt*, %struct.BlockCnt** %5, align 8
  %34 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.BlockCnt*, %struct.BlockCnt** %5, align 8
  %36 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %35, i32 0, i32 4
  store i8 0, i8* %36, align 1
  %37 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %37, i32 0, i32 3
  %39 = load %struct.BlockCnt*, %struct.BlockCnt** %38, align 8
  %40 = load %struct.BlockCnt*, %struct.BlockCnt** %5, align 8
  %41 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %40, i32 0, i32 0
  store %struct.BlockCnt* %39, %struct.BlockCnt** %41, align 8
  %42 = load %struct.BlockCnt*, %struct.BlockCnt** %5, align 8
  %43 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %44 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %43, i32 0, i32 3
  store %struct.BlockCnt* %42, %struct.BlockCnt** %44, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checklimit(%struct.FuncState*, i32, i32, i8*) #0 {
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %4
  %13 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i8*, i8** %8, align 8
  call void @errorlimit(%struct.FuncState* %13, i32 %14, i8* %15) #5
  unreachable

; <label>:16:                                     ; preds = %4
  ret void
}

declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32*, i64, i32, i8*) #1

declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @errorlimit(%struct.FuncState*, i32, i8*) #2 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %11, i32 0, i32 2
  %13 = load %struct.LexState*, %struct.LexState** %12, align 8
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 6
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8
  store %struct.lua_State* %15, %struct.lua_State** %7, align 8
  %16 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %16, i32 0, i32 0
  %18 = load %struct.Proto*, %struct.Proto** %17, align 8
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %3
  br label %28

; <label>:24:                                     ; preds = %3
  %25 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 %26)
  br label %28

; <label>:28:                                     ; preds = %24, %23
  %29 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), %23 ], [ %27, %24 ]
  store i8* %29, i8** %10, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* %31, i32 %32, i8* %33)
  store i8* %34, i8** %8, align 8
  %35 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %35, i32 0, i32 2
  %37 = load %struct.LexState*, %struct.LexState** %36, align 8
  %38 = load i8*, i8** %8, align 8
  call void @luaX_syntaxerror(%struct.LexState* %37, i8* %38) #5
  unreachable
                                                  ; No predecessors!
  unreachable
}

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #1

; Function Attrs: noreturn
declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_follow(%struct.LexState*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.LexState*, %struct.LexState** %4, align 8
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Token, %struct.Token* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %13 [
    i32 260, label %10
    i32 261, label %10
    i32 262, label %10
    i32 289, label %10
    i32 277, label %11
  ]

; <label>:10:                                     ; preds = %2, %2, %2, %2
  store i32 1, i32* %3, align 4
  br label %14

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %3, align 4
  br label %14

; <label>:13:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %14

; <label>:14:                                     ; preds = %13, %11, %10
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @statement(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %4 = load %struct.LexState*, %struct.LexState** %2, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @enterlevel(%struct.LexState* %7)
  %8 = load %struct.LexState*, %struct.LexState** %2, align 8
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.Token, %struct.Token* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %59 [
    i32 59, label %12
    i32 267, label %14
    i32 278, label %17
    i32 259, label %20
    i32 264, label %25
    i32 273, label %28
    i32 265, label %31
    i32 269, label %34
    i32 288, label %44
    i32 274, label %50
    i32 258, label %53
    i32 266, label %53
  ]

; <label>:12:                                     ; preds = %1
  %13 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_next(%struct.LexState* %13)
  br label %61

; <label>:14:                                     ; preds = %1
  %15 = load %struct.LexState*, %struct.LexState** %2, align 8
  %16 = load i32, i32* %3, align 4
  call void @ifstat(%struct.LexState* %15, i32 %16)
  br label %61

; <label>:17:                                     ; preds = %1
  %18 = load %struct.LexState*, %struct.LexState** %2, align 8
  %19 = load i32, i32* %3, align 4
  call void @whilestat(%struct.LexState* %18, i32 %19)
  br label %61

; <label>:20:                                     ; preds = %1
  %21 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_next(%struct.LexState* %21)
  %22 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @block(%struct.LexState* %22)
  %23 = load %struct.LexState*, %struct.LexState** %2, align 8
  %24 = load i32, i32* %3, align 4
  call void @check_match(%struct.LexState* %23, i32 262, i32 259, i32 %24)
  br label %61

; <label>:25:                                     ; preds = %1
  %26 = load %struct.LexState*, %struct.LexState** %2, align 8
  %27 = load i32, i32* %3, align 4
  call void @forstat(%struct.LexState* %26, i32 %27)
  br label %61

; <label>:28:                                     ; preds = %1
  %29 = load %struct.LexState*, %struct.LexState** %2, align 8
  %30 = load i32, i32* %3, align 4
  call void @repeatstat(%struct.LexState* %29, i32 %30)
  br label %61

; <label>:31:                                     ; preds = %1
  %32 = load %struct.LexState*, %struct.LexState** %2, align 8
  %33 = load i32, i32* %3, align 4
  call void @funcstat(%struct.LexState* %32, i32 %33)
  br label %61

; <label>:34:                                     ; preds = %1
  %35 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_next(%struct.LexState* %35)
  %36 = load %struct.LexState*, %struct.LexState** %2, align 8
  %37 = call i32 @testnext(%struct.LexState* %36, i32 265)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %34
  %40 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @localfunc(%struct.LexState* %40)
  br label %43

; <label>:41:                                     ; preds = %34
  %42 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @localstat(%struct.LexState* %42)
  br label %43

; <label>:43:                                     ; preds = %41, %39
  br label %61

; <label>:44:                                     ; preds = %1
  %45 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_next(%struct.LexState* %45)
  %46 = load %struct.LexState*, %struct.LexState** %2, align 8
  %47 = load %struct.LexState*, %struct.LexState** %2, align 8
  %48 = call %struct.TString* @str_checkname(%struct.LexState* %47)
  %49 = load i32, i32* %3, align 4
  call void @labelstat(%struct.LexState* %46, %struct.TString* %48, i32 %49)
  br label %61

; <label>:50:                                     ; preds = %1
  %51 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_next(%struct.LexState* %51)
  %52 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @retstat(%struct.LexState* %52)
  br label %61

; <label>:53:                                     ; preds = %1, %1
  %54 = load %struct.LexState*, %struct.LexState** %2, align 8
  %55 = load %struct.LexState*, %struct.LexState** %2, align 8
  %56 = getelementptr inbounds %struct.LexState, %struct.LexState* %55, i32 0, i32 5
  %57 = load %struct.FuncState*, %struct.FuncState** %56, align 8
  %58 = call i32 @luaK_jump(%struct.FuncState* %57)
  call void @gotostat(%struct.LexState* %54, i32 %58)
  br label %61

; <label>:59:                                     ; preds = %1
  %60 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @exprstat(%struct.LexState* %60)
  br label %61

; <label>:61:                                     ; preds = %59, %53, %50, %44, %43, %31, %28, %25, %20, %17, %14, %12
  %62 = load %struct.LexState*, %struct.LexState** %2, align 8
  %63 = getelementptr inbounds %struct.LexState, %struct.LexState* %62, i32 0, i32 5
  %64 = load %struct.FuncState*, %struct.FuncState** %63, align 8
  %65 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %64, i32 0, i32 11
  %66 = load i8, i8* %65, align 2
  %67 = load %struct.LexState*, %struct.LexState** %2, align 8
  %68 = getelementptr inbounds %struct.LexState, %struct.LexState* %67, i32 0, i32 5
  %69 = load %struct.FuncState*, %struct.FuncState** %68, align 8
  %70 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %69, i32 0, i32 13
  store i8 %66, i8* %70, align 4
  %71 = load %struct.LexState*, %struct.LexState** %2, align 8
  %72 = getelementptr inbounds %struct.LexState, %struct.LexState* %71, i32 0, i32 6
  %73 = load %struct.lua_State*, %struct.lua_State** %72, align 8
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %73, i32 0, i32 22
  %75 = load i16, i16* %74, align 2
  %76 = add i16 %75, -1
  store i16 %76, i16* %74, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enterlevel(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca %struct.lua_State*, align 8
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %4 = load %struct.LexState*, %struct.LexState** %2, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i32 0, i32 6
  %6 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  store %struct.lua_State* %6, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 22
  %9 = load i16, i16* %8, align 2
  %10 = add i16 %9, 1
  store i16 %10, i16* %8, align 2
  %11 = load %struct.LexState*, %struct.LexState** %2, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 5
  %13 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 22
  %16 = load i16, i16* %15, align 2
  %17 = zext i16 %16 to i32
  call void @checklimit(%struct.FuncState* %13, i32 %17, i32 200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifstat(%struct.LexState*, i32) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.LexState*, %struct.LexState** %3, align 8
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 5
  %9 = load %struct.FuncState*, %struct.FuncState** %8, align 8
  store %struct.FuncState* %9, %struct.FuncState** %5, align 8
  store i32 -1, i32* %6, align 4
  %10 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @test_then_block(%struct.LexState* %10, i32* %6)
  br label %11

; <label>:11:                                     ; preds = %17, %2
  %12 = load %struct.LexState*, %struct.LexState** %3, align 8
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.Token, %struct.Token* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 261
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %11
  %18 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @test_then_block(%struct.LexState* %18, i32* %6)
  br label %11

; <label>:19:                                     ; preds = %11
  %20 = load %struct.LexState*, %struct.LexState** %3, align 8
  %21 = call i32 @testnext(%struct.LexState* %20, i32 260)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %19
  %24 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @block(%struct.LexState* %24)
  br label %25

; <label>:25:                                     ; preds = %23, %19
  %26 = load %struct.LexState*, %struct.LexState** %3, align 8
  %27 = load i32, i32* %4, align 4
  call void @check_match(%struct.LexState* %26, i32 262, i32 267, i32 %27)
  %28 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %29 = load i32, i32* %6, align 4
  call void @luaK_patchtohere(%struct.FuncState* %28, i32 %29)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whilestat(%struct.LexState*, i32) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.BlockCnt, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.LexState*, %struct.LexState** %3, align 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 5
  %11 = load %struct.FuncState*, %struct.FuncState** %10, align 8
  store %struct.FuncState* %11, %struct.FuncState** %5, align 8
  %12 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_next(%struct.LexState* %12)
  %13 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %14 = call i32 @luaK_getlabel(%struct.FuncState* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.LexState*, %struct.LexState** %3, align 8
  %16 = call i32 @cond(%struct.LexState* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  call void @enterblock(%struct.FuncState* %17, %struct.BlockCnt* %8, i8 zeroext 1)
  %18 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @checknext(%struct.LexState* %18, i32 259)
  %19 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @block(%struct.LexState* %19)
  %20 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %21 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %22 = call i32 @luaK_jump(%struct.FuncState* %21)
  %23 = load i32, i32* %6, align 4
  call void @luaK_patchlist(%struct.FuncState* %20, i32 %22, i32 %23)
  %24 = load %struct.LexState*, %struct.LexState** %3, align 8
  %25 = load i32, i32* %4, align 4
  call void @check_match(%struct.LexState* %24, i32 262, i32 278, i32 %25)
  %26 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  call void @leaveblock(%struct.FuncState* %26)
  %27 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %28 = load i32, i32* %7, align 4
  call void @luaK_patchtohere(%struct.FuncState* %27, i32 %28)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @block(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.BlockCnt, align 8
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %5 = load %struct.LexState*, %struct.LexState** %2, align 8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 5
  %7 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  store %struct.FuncState* %7, %struct.FuncState** %3, align 8
  %8 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  call void @enterblock(%struct.FuncState* %8, %struct.BlockCnt* %4, i8 zeroext 0)
  %9 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @statlist(%struct.LexState* %9)
  %10 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  call void @leaveblock(%struct.FuncState* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_match(%struct.LexState*, i32, i32, i32) #0 {
  %5 = alloca %struct.LexState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.LexState*, %struct.LexState** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @testnext(%struct.LexState* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %35, label %13

; <label>:13:                                     ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.LexState*, %struct.LexState** %5, align 8
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %13
  %20 = load %struct.LexState*, %struct.LexState** %5, align 8
  %21 = load i32, i32* %6, align 4
  call void @error_expected(%struct.LexState* %20, i32 %21) #5
  unreachable

; <label>:22:                                     ; preds = %13
  %23 = load %struct.LexState*, %struct.LexState** %5, align 8
  %24 = load %struct.LexState*, %struct.LexState** %5, align 8
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %24, i32 0, i32 6
  %26 = load %struct.lua_State*, %struct.lua_State** %25, align 8
  %27 = load %struct.LexState*, %struct.LexState** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i8* @luaX_token2str(%struct.LexState* %27, i32 %28)
  %30 = load %struct.LexState*, %struct.LexState** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i8* @luaX_token2str(%struct.LexState* %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0), i8* %29, i8* %32, i32 %33)
  call void @luaX_syntaxerror(%struct.LexState* %23, i8* %34) #5
  unreachable

; <label>:35:                                     ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forstat(%struct.LexState*, i32) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca %struct.TString*, align 8
  %7 = alloca %struct.BlockCnt, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.LexState*, %struct.LexState** %3, align 8
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 5
  %10 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  store %struct.FuncState* %10, %struct.FuncState** %5, align 8
  %11 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  call void @enterblock(%struct.FuncState* %11, %struct.BlockCnt* %7, i8 zeroext 1)
  %12 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_next(%struct.LexState* %12)
  %13 = load %struct.LexState*, %struct.LexState** %3, align 8
  %14 = call %struct.TString* @str_checkname(%struct.LexState* %13)
  store %struct.TString* %14, %struct.TString** %6, align 8
  %15 = load %struct.LexState*, %struct.LexState** %3, align 8
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.Token, %struct.Token* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %26 [
    i32 61, label %19
    i32 44, label %23
    i32 268, label %23
  ]

; <label>:19:                                     ; preds = %2
  %20 = load %struct.LexState*, %struct.LexState** %3, align 8
  %21 = load %struct.TString*, %struct.TString** %6, align 8
  %22 = load i32, i32* %4, align 4
  call void @fornum(%struct.LexState* %20, %struct.TString* %21, i32 %22)
  br label %28

; <label>:23:                                     ; preds = %2, %2
  %24 = load %struct.LexState*, %struct.LexState** %3, align 8
  %25 = load %struct.TString*, %struct.TString** %6, align 8
  call void @forlist(%struct.LexState* %24, %struct.TString* %25)
  br label %28

; <label>:26:                                     ; preds = %2
  %27 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_syntaxerror(%struct.LexState* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0)) #5
  unreachable

; <label>:28:                                     ; preds = %23, %19
  %29 = load %struct.LexState*, %struct.LexState** %3, align 8
  %30 = load i32, i32* %4, align 4
  call void @check_match(%struct.LexState* %29, i32 262, i32 264, i32 %30)
  %31 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  call void @leaveblock(%struct.FuncState* %31)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repeatstat(%struct.LexState*, i32) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.FuncState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.BlockCnt, align 8
  %9 = alloca %struct.BlockCnt, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.LexState*, %struct.LexState** %3, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 5
  %12 = load %struct.FuncState*, %struct.FuncState** %11, align 8
  store %struct.FuncState* %12, %struct.FuncState** %6, align 8
  %13 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %14 = call i32 @luaK_getlabel(%struct.FuncState* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  call void @enterblock(%struct.FuncState* %15, %struct.BlockCnt* %8, i8 zeroext 1)
  %16 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  call void @enterblock(%struct.FuncState* %16, %struct.BlockCnt* %9, i8 zeroext 0)
  %17 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_next(%struct.LexState* %17)
  %18 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @statlist(%struct.LexState* %18)
  %19 = load %struct.LexState*, %struct.LexState** %3, align 8
  %20 = load i32, i32* %4, align 4
  call void @check_match(%struct.LexState* %19, i32 277, i32 273, i32 %20)
  %21 = load %struct.LexState*, %struct.LexState** %3, align 8
  %22 = call i32 @cond(%struct.LexState* %21)
  store i32 %22, i32* %5, align 4
  %23 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %9, i32 0, i32 4
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %32

; <label>:26:                                     ; preds = %2
  %27 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %9, i32 0, i32 3
  %30 = load i8, i8* %29, align 8
  %31 = zext i8 %30 to i32
  call void @luaK_patchclose(%struct.FuncState* %27, i32 %28, i32 %31)
  br label %32

; <label>:32:                                     ; preds = %26, %2
  %33 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  call void @leaveblock(%struct.FuncState* %33)
  %34 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  call void @luaK_patchlist(%struct.FuncState* %34, i32 %35, i32 %36)
  %37 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  call void @leaveblock(%struct.FuncState* %37)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @funcstat(%struct.LexState*, i32) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.expdesc, align 8
  %7 = alloca %struct.expdesc, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_next(%struct.LexState* %8)
  %9 = load %struct.LexState*, %struct.LexState** %3, align 8
  %10 = call i32 @funcname(%struct.LexState* %9, %struct.expdesc* %6)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.LexState*, %struct.LexState** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  call void @body(%struct.LexState* %11, %struct.expdesc* %7, i32 %12, i32 %13)
  %14 = load %struct.LexState*, %struct.LexState** %3, align 8
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %14, i32 0, i32 5
  %16 = load %struct.FuncState*, %struct.FuncState** %15, align 8
  call void @luaK_storevar(%struct.FuncState* %16, %struct.expdesc* %6, %struct.expdesc* %7)
  %17 = load %struct.LexState*, %struct.LexState** %3, align 8
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %17, i32 0, i32 5
  %19 = load %struct.FuncState*, %struct.FuncState** %18, align 8
  %20 = load i32, i32* %4, align 4
  call void @luaK_fixline(%struct.FuncState* %19, i32 %20)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testnext(%struct.LexState*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.LexState*, %struct.LexState** %4, align 8
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Token, %struct.Token* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %2
  %13 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @luaX_next(%struct.LexState* %13)
  store i32 1, i32* %3, align 4
  br label %15

; <label>:14:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %15

; <label>:15:                                     ; preds = %14, %12
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @localfunc(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.FuncState*, align 8
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %5 = load %struct.LexState*, %struct.LexState** %2, align 8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 5
  %7 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  store %struct.FuncState* %7, %struct.FuncState** %4, align 8
  %8 = load %struct.LexState*, %struct.LexState** %2, align 8
  %9 = load %struct.LexState*, %struct.LexState** %2, align 8
  %10 = call %struct.TString* @str_checkname(%struct.LexState* %9)
  call void @new_localvar(%struct.LexState* %8, %struct.TString* %10)
  %11 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @adjustlocalvars(%struct.LexState* %11, i32 1)
  %12 = load %struct.LexState*, %struct.LexState** %2, align 8
  %13 = load %struct.LexState*, %struct.LexState** %2, align 8
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  call void @body(%struct.LexState* %12, %struct.expdesc* %3, i32 0, i32 %15)
  %16 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i32 0, i32 1
  %21 = bitcast %union.anon.6* %20 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.LocVar* @getlocvar(%struct.FuncState* %19, i32 %22)
  %24 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %23, i32 0, i32 1
  store i32 %18, i32* %24, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @localstat(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.expdesc, align 8
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

; <label>:6:                                      ; preds = %12, %1
  %7 = load %struct.LexState*, %struct.LexState** %2, align 8
  %8 = load %struct.LexState*, %struct.LexState** %2, align 8
  %9 = call %struct.TString* @str_checkname(%struct.LexState* %8)
  call void @new_localvar(%struct.LexState* %7, %struct.TString* %9)
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %3, align 4
  br label %12

; <label>:12:                                     ; preds = %6
  %13 = load %struct.LexState*, %struct.LexState** %2, align 8
  %14 = call i32 @testnext(%struct.LexState* %13, i32 44)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %6, label %16

; <label>:16:                                     ; preds = %12
  %17 = load %struct.LexState*, %struct.LexState** %2, align 8
  %18 = call i32 @testnext(%struct.LexState* %17, i32 61)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %16
  %21 = load %struct.LexState*, %struct.LexState** %2, align 8
  %22 = call i32 @explist(%struct.LexState* %21, %struct.expdesc* %5)
  store i32 %22, i32* %4, align 4
  br label %25

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i32 0, i32 0
  store i32 0, i32* %24, align 8
  store i32 0, i32* %4, align 4
  br label %25

; <label>:25:                                     ; preds = %23, %20
  %26 = load %struct.LexState*, %struct.LexState** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  call void @adjust_assign(%struct.LexState* %26, i32 %27, i32 %28, %struct.expdesc* %5)
  %29 = load %struct.LexState*, %struct.LexState** %2, align 8
  %30 = load i32, i32* %3, align 4
  call void @adjustlocalvars(%struct.LexState* %29, i32 %30)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @labelstat(%struct.LexState*, %struct.TString*, i32) #0 {
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca %struct.TString*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.FuncState*, align 8
  %8 = alloca %struct.Labellist*, align 8
  %9 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store %struct.TString* %1, %struct.TString** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.LexState*, %struct.LexState** %4, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 5
  %12 = load %struct.FuncState*, %struct.FuncState** %11, align 8
  store %struct.FuncState* %12, %struct.FuncState** %7, align 8
  %13 = load %struct.LexState*, %struct.LexState** %4, align 8
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 10
  %15 = load %struct.Dyndata*, %struct.Dyndata** %14, align 8
  %16 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %15, i32 0, i32 2
  store %struct.Labellist* %16, %struct.Labellist** %8, align 8
  %17 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %18 = load %struct.Labellist*, %struct.Labellist** %8, align 8
  %19 = load %struct.TString*, %struct.TString** %5, align 8
  call void @checkrepeated(%struct.FuncState* %17, %struct.Labellist* %18, %struct.TString* %19)
  %20 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @checknext(%struct.LexState* %20, i32 288)
  %21 = load %struct.LexState*, %struct.LexState** %4, align 8
  %22 = load %struct.Labellist*, %struct.Labellist** %8, align 8
  %23 = load %struct.TString*, %struct.TString** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %26 = call i32 @luaK_getlabel(%struct.FuncState* %25)
  %27 = call i32 @newlabelentry(%struct.LexState* %21, %struct.Labellist* %22, %struct.TString* %23, i32 %24, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @skipnoopstat(%struct.LexState* %28)
  %29 = load %struct.LexState*, %struct.LexState** %4, align 8
  %30 = call i32 @block_follow(%struct.LexState* %29, i32 0)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

; <label>:32:                                     ; preds = %3
  %33 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %33, i32 0, i32 3
  %35 = load %struct.BlockCnt*, %struct.BlockCnt** %34, align 8
  %36 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %35, i32 0, i32 3
  %37 = load i8, i8* %36, align 8
  %38 = load %struct.Labellist*, %struct.Labellist** %8, align 8
  %39 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %38, i32 0, i32 0
  %40 = load %struct.Labeldesc*, %struct.Labeldesc** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %40, i64 %42
  %44 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %43, i32 0, i32 3
  store i8 %37, i8* %44, align 8
  br label %45

; <label>:45:                                     ; preds = %32, %3
  %46 = load %struct.LexState*, %struct.LexState** %4, align 8
  %47 = load %struct.Labellist*, %struct.Labellist** %8, align 8
  %48 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %47, i32 0, i32 0
  %49 = load %struct.Labeldesc*, %struct.Labeldesc** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %49, i64 %51
  call void @findgotos(%struct.LexState* %46, %struct.Labeldesc* %52)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TString* @str_checkname(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca %struct.TString*, align 8
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %4 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @check(%struct.LexState* %4, i32 292)
  %5 = load %struct.LexState*, %struct.LexState** %2, align 8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.Token, %struct.Token* %6, i32 0, i32 1
  %8 = bitcast %union.SemInfo* %7 to %struct.TString**
  %9 = load %struct.TString*, %struct.TString** %8, align 8
  store %struct.TString* %9, %struct.TString** %3, align 8
  %10 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_next(%struct.LexState* %10)
  %11 = load %struct.TString*, %struct.TString** %3, align 8
  ret %struct.TString* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retstat(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %7 = load %struct.LexState*, %struct.LexState** %2, align 8
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 5
  %9 = load %struct.FuncState*, %struct.FuncState** %8, align 8
  store %struct.FuncState* %9, %struct.FuncState** %3, align 8
  %10 = load %struct.LexState*, %struct.LexState** %2, align 8
  %11 = call i32 @block_follow(%struct.LexState* %10, i32 1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

; <label>:13:                                     ; preds = %1
  %14 = load %struct.LexState*, %struct.LexState** %2, align 8
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.Token, %struct.Token* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 59
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %13, %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %81

; <label>:20:                                     ; preds = %13
  %21 = load %struct.LexState*, %struct.LexState** %2, align 8
  %22 = call i32 @explist(%struct.LexState* %21, %struct.expdesc* %4)
  store i32 %22, i32* %6, align 4
  %23 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 13
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %20
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 14
  br i1 %29, label %30, label %67

; <label>:30:                                     ; preds = %26, %20
  %31 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  call void @luaK_setreturns(%struct.FuncState* %31, %struct.expdesc* %4, i32 -1)
  %32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 13
  br i1 %34, label %35, label %62

; <label>:35:                                     ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %62

; <label>:38:                                     ; preds = %35
  %39 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %40 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %39, i32 0, i32 0
  %41 = load %struct.Proto*, %struct.Proto** %40, align 8
  %42 = getelementptr inbounds %struct.Proto, %struct.Proto* %41, i32 0, i32 15
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i32 0, i32 1
  %45 = bitcast %union.anon.6* %44 to i32*
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, -64
  %51 = or i32 %50, 37
  %52 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %53 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %52, i32 0, i32 0
  %54 = load %struct.Proto*, %struct.Proto** %53, align 8
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %54, i32 0, i32 15
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i32 0, i32 1
  %58 = bitcast %union.anon.6* %57 to i32*
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  store i32 %51, i32* %61, align 4
  br label %62

; <label>:62:                                     ; preds = %38, %35, %30
  %63 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %64 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %63, i32 0, i32 11
  %65 = load i8, i8* %64, align 2
  %66 = zext i8 %65 to i32
  store i32 %66, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  br label %80

; <label>:67:                                     ; preds = %26
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %73

; <label>:70:                                     ; preds = %67
  %71 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %72 = call i32 @luaK_exp2anyreg(%struct.FuncState* %71, %struct.expdesc* %4)
  store i32 %72, i32* %5, align 4
  br label %79

; <label>:73:                                     ; preds = %67
  %74 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %74, %struct.expdesc* %4)
  %75 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %76 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %75, i32 0, i32 11
  %77 = load i8, i8* %76, align 2
  %78 = zext i8 %77 to i32
  store i32 %78, i32* %5, align 4
  br label %79

; <label>:79:                                     ; preds = %73, %70
  br label %80

; <label>:80:                                     ; preds = %79, %62
  br label %81

; <label>:81:                                     ; preds = %80, %19
  %82 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  call void @luaK_ret(%struct.FuncState* %82, i32 %83, i32 %84)
  %85 = load %struct.LexState*, %struct.LexState** %2, align 8
  %86 = call i32 @testnext(%struct.LexState* %85, i32 59)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gotostat(%struct.LexState*, i32) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TString*, align 8
  %7 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.LexState*, %struct.LexState** %3, align 8
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.LexState*, %struct.LexState** %3, align 8
  %12 = call i32 @testnext(%struct.LexState* %11, i32 266)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %2
  %15 = load %struct.LexState*, %struct.LexState** %3, align 8
  %16 = call %struct.TString* @str_checkname(%struct.LexState* %15)
  store %struct.TString* %16, %struct.TString** %6, align 8
  br label %23

; <label>:17:                                     ; preds = %2
  %18 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_next(%struct.LexState* %18)
  %19 = load %struct.LexState*, %struct.LexState** %3, align 8
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %19, i32 0, i32 6
  %21 = load %struct.lua_State*, %struct.lua_State** %20, align 8
  %22 = call %struct.TString* @luaS_new(%struct.lua_State* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0))
  store %struct.TString* %22, %struct.TString** %6, align 8
  br label %23

; <label>:23:                                     ; preds = %17, %14
  %24 = load %struct.LexState*, %struct.LexState** %3, align 8
  %25 = load %struct.LexState*, %struct.LexState** %3, align 8
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %25, i32 0, i32 10
  %27 = load %struct.Dyndata*, %struct.Dyndata** %26, align 8
  %28 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %27, i32 0, i32 1
  %29 = load %struct.TString*, %struct.TString** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @newlabelentry(%struct.LexState* %24, %struct.Labellist* %28, %struct.TString* %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.LexState*, %struct.LexState** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @findlabel(%struct.LexState* %33, i32 %34)
  ret void
}

declare hidden i32 @luaK_jump(%struct.FuncState*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exprstat(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.LHS_assign, align 8
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %5 = load %struct.LexState*, %struct.LexState** %2, align 8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 5
  %7 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  store %struct.FuncState* %7, %struct.FuncState** %3, align 8
  %8 = load %struct.LexState*, %struct.LexState** %2, align 8
  %9 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %4, i32 0, i32 1
  call void @suffixedexp(%struct.LexState* %8, %struct.expdesc* %9)
  %10 = load %struct.LexState*, %struct.LexState** %2, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.Token, %struct.Token* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 61
  br i1 %14, label %21, label %15

; <label>:15:                                     ; preds = %1
  %16 = load %struct.LexState*, %struct.LexState** %2, align 8
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.Token, %struct.Token* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 44
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %15, %1
  %22 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %4, i32 0, i32 0
  store %struct.LHS_assign* null, %struct.LHS_assign** %22, align 8
  %23 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @assignment(%struct.LexState* %23, %struct.LHS_assign* %4, i32 1)
  br label %57

; <label>:24:                                     ; preds = %15
  %25 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %4, i32 0, i32 1
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 13
  br i1 %28, label %31, label %29

; <label>:29:                                     ; preds = %24
  %30 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_syntaxerror(%struct.LexState* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0)) #5
  unreachable

; <label>:31:                                     ; preds = %24
  %32 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %32, i32 0, i32 0
  %34 = load %struct.Proto*, %struct.Proto** %33, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 15
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %4, i32 0, i32 1
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %37, i32 0, i32 1
  %39 = bitcast %union.anon.6* %38 to i32*
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, -8372225
  %45 = or i32 %44, 16384
  %46 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %47 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %46, i32 0, i32 0
  %48 = load %struct.Proto*, %struct.Proto** %47, align 8
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %48, i32 0, i32 15
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %4, i32 0, i32 1
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %51, i32 0, i32 1
  %53 = bitcast %union.anon.6* %52 to i32*
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  store i32 %45, i32* %56, align 4
  br label %57

; <label>:57:                                     ; preds = %31, %21
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_then_block(%struct.LexState*, i32*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.BlockCnt, align 8
  %6 = alloca %struct.FuncState*, align 8
  %7 = alloca %struct.expdesc, align 8
  %8 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.LexState*, %struct.LexState** %3, align 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 5
  %11 = load %struct.FuncState*, %struct.FuncState** %10, align 8
  store %struct.FuncState* %11, %struct.FuncState** %6, align 8
  %12 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_next(%struct.LexState* %12)
  %13 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @expr(%struct.LexState* %13, %struct.expdesc* %7)
  %14 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @checknext(%struct.LexState* %14, i32 275)
  %15 = load %struct.LexState*, %struct.LexState** %3, align 8
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.Token, %struct.Token* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 266
  br i1 %19, label %26, label %20

; <label>:20:                                     ; preds = %2
  %21 = load %struct.LexState*, %struct.LexState** %3, align 8
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.Token, %struct.Token* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 258
  br i1 %25, label %26, label %49

; <label>:26:                                     ; preds = %20, %2
  %27 = load %struct.LexState*, %struct.LexState** %3, align 8
  %28 = getelementptr inbounds %struct.LexState, %struct.LexState* %27, i32 0, i32 5
  %29 = load %struct.FuncState*, %struct.FuncState** %28, align 8
  call void @luaK_goiffalse(%struct.FuncState* %29, %struct.expdesc* %7)
  %30 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  call void @enterblock(%struct.FuncState* %30, %struct.BlockCnt* %5, i8 zeroext 0)
  %31 = load %struct.LexState*, %struct.LexState** %3, align 8
  %32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  call void @gotostat(%struct.LexState* %31, i32 %33)
  br label %34

; <label>:34:                                     ; preds = %38, %26
  %35 = load %struct.LexState*, %struct.LexState** %3, align 8
  %36 = call i32 @testnext(%struct.LexState* %35, i32 59)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %34
  br label %34

; <label>:39:                                     ; preds = %34
  %40 = load %struct.LexState*, %struct.LexState** %3, align 8
  %41 = call i32 @block_follow(%struct.LexState* %40, i32 0)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

; <label>:43:                                     ; preds = %39
  %44 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  call void @leaveblock(%struct.FuncState* %44)
  br label %78

; <label>:45:                                     ; preds = %39
  %46 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %47 = call i32 @luaK_jump(%struct.FuncState* %46)
  store i32 %47, i32* %8, align 4
  br label %48

; <label>:48:                                     ; preds = %45
  br label %56

; <label>:49:                                     ; preds = %20
  %50 = load %struct.LexState*, %struct.LexState** %3, align 8
  %51 = getelementptr inbounds %struct.LexState, %struct.LexState* %50, i32 0, i32 5
  %52 = load %struct.FuncState*, %struct.FuncState** %51, align 8
  call void @luaK_goiftrue(%struct.FuncState* %52, %struct.expdesc* %7)
  %53 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  call void @enterblock(%struct.FuncState* %53, %struct.BlockCnt* %5, i8 zeroext 0)
  %54 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  br label %56

; <label>:56:                                     ; preds = %49, %48
  %57 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @statlist(%struct.LexState* %57)
  %58 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  call void @leaveblock(%struct.FuncState* %58)
  %59 = load %struct.LexState*, %struct.LexState** %3, align 8
  %60 = getelementptr inbounds %struct.LexState, %struct.LexState* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.Token, %struct.Token* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 260
  br i1 %63, label %70, label %64

; <label>:64:                                     ; preds = %56
  %65 = load %struct.LexState*, %struct.LexState** %3, align 8
  %66 = getelementptr inbounds %struct.LexState, %struct.LexState* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.Token, %struct.Token* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 261
  br i1 %69, label %70, label %75

; <label>:70:                                     ; preds = %64, %56
  %71 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %74 = call i32 @luaK_jump(%struct.FuncState* %73)
  call void @luaK_concat(%struct.FuncState* %71, i32* %72, i32 %74)
  br label %75

; <label>:75:                                     ; preds = %70, %64
  %76 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %77 = load i32, i32* %8, align 4
  call void @luaK_patchtohere(%struct.FuncState* %76, i32 %77)
  br label %78

; <label>:78:                                     ; preds = %75, %43
  ret void
}

declare hidden void @luaK_patchtohere(%struct.FuncState*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expr(%struct.LexState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %5 = load %struct.LexState*, %struct.LexState** %3, align 8
  %6 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %7 = call i32 @subexpr(%struct.LexState* %5, %struct.expdesc* %6, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checknext(%struct.LexState*, i32) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.LexState*, %struct.LexState** %3, align 8
  %6 = load i32, i32* %4, align 4
  call void @check(%struct.LexState* %5, i32 %6)
  %7 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_next(%struct.LexState* %7)
  ret void
}

declare hidden void @luaK_goiffalse(%struct.FuncState*, %struct.expdesc*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leaveblock(%struct.FuncState*) #0 {
  %2 = alloca %struct.FuncState*, align 8
  %3 = alloca %struct.BlockCnt*, align 8
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %2, align 8
  %6 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i32 0, i32 3
  %8 = load %struct.BlockCnt*, %struct.BlockCnt** %7, align 8
  store %struct.BlockCnt* %8, %struct.BlockCnt** %3, align 8
  %9 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 2
  %11 = load %struct.LexState*, %struct.LexState** %10, align 8
  store %struct.LexState* %11, %struct.LexState** %4, align 8
  %12 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %13 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %12, i32 0, i32 0
  %14 = load %struct.BlockCnt*, %struct.BlockCnt** %13, align 8
  %15 = icmp ne %struct.BlockCnt* %14, null
  br i1 %15, label %16, label %33

; <label>:16:                                     ; preds = %1
  %17 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %18 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %17, i32 0, i32 4
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

; <label>:22:                                     ; preds = %16
  %23 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %24 = call i32 @luaK_jump(%struct.FuncState* %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %28 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %27, i32 0, i32 3
  %29 = load i8, i8* %28, align 8
  %30 = zext i8 %29 to i32
  call void @luaK_patchclose(%struct.FuncState* %25, i32 %26, i32 %30)
  %31 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %32 = load i32, i32* %5, align 4
  call void @luaK_patchtohere(%struct.FuncState* %31, i32 %32)
  br label %33

; <label>:33:                                     ; preds = %22, %16, %1
  %34 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %35 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %34, i32 0, i32 5
  %36 = load i8, i8* %35, align 2
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %33
  %39 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @breaklabel(%struct.LexState* %39)
  br label %40

; <label>:40:                                     ; preds = %38, %33
  %41 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %42 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %41, i32 0, i32 0
  %43 = load %struct.BlockCnt*, %struct.BlockCnt** %42, align 8
  %44 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %45 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %44, i32 0, i32 3
  store %struct.BlockCnt* %43, %struct.BlockCnt** %45, align 8
  %46 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %47 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %48 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %47, i32 0, i32 3
  %49 = load i8, i8* %48, align 8
  %50 = zext i8 %49 to i32
  call void @removevars(%struct.FuncState* %46, i32 %50)
  %51 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %52 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %51, i32 0, i32 11
  %53 = load i8, i8* %52, align 2
  %54 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %54, i32 0, i32 13
  store i8 %53, i8* %55, align 4
  %56 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %57 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.LexState*, %struct.LexState** %4, align 8
  %60 = getelementptr inbounds %struct.LexState, %struct.LexState* %59, i32 0, i32 10
  %61 = load %struct.Dyndata*, %struct.Dyndata** %60, align 8
  %62 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %62, i32 0, i32 1
  store i32 %58, i32* %63, align 8
  %64 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %65 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %64, i32 0, i32 0
  %66 = load %struct.BlockCnt*, %struct.BlockCnt** %65, align 8
  %67 = icmp ne %struct.BlockCnt* %66, null
  br i1 %67, label %68, label %71

; <label>:68:                                     ; preds = %40
  %69 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %70 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  call void @movegotosout(%struct.FuncState* %69, %struct.BlockCnt* %70)
  br label %96

; <label>:71:                                     ; preds = %40
  %72 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %73 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.LexState*, %struct.LexState** %4, align 8
  %76 = getelementptr inbounds %struct.LexState, %struct.LexState* %75, i32 0, i32 10
  %77 = load %struct.Dyndata*, %struct.Dyndata** %76, align 8
  %78 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %74, %80
  br i1 %81, label %82, label %95

; <label>:82:                                     ; preds = %71
  %83 = load %struct.LexState*, %struct.LexState** %4, align 8
  %84 = load %struct.LexState*, %struct.LexState** %4, align 8
  %85 = getelementptr inbounds %struct.LexState, %struct.LexState* %84, i32 0, i32 10
  %86 = load %struct.Dyndata*, %struct.Dyndata** %85, align 8
  %87 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %87, i32 0, i32 0
  %89 = load %struct.Labeldesc*, %struct.Labeldesc** %88, align 8
  %90 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %91 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %89, i64 %93
  call void @undefgoto(%struct.LexState* %83, %struct.Labeldesc* %94) #5
  unreachable

; <label>:95:                                     ; preds = %71
  br label %96

; <label>:96:                                     ; preds = %95, %68
  ret void
}

declare hidden void @luaK_goiftrue(%struct.FuncState*, %struct.expdesc*) #1

declare hidden void @luaK_concat(%struct.FuncState*, i32*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subexpr(%struct.LexState*, %struct.expdesc*, i32) #0 {
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca %struct.expdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.expdesc, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store %struct.expdesc* %1, %struct.expdesc** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @enterlevel(%struct.LexState* %13)
  %14 = load %struct.LexState*, %struct.LexState** %4, align 8
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.Token, %struct.Token* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @getunopr(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 4
  br i1 %20, label %21, label %35

; <label>:21:                                     ; preds = %3
  %22 = load %struct.LexState*, %struct.LexState** %4, align 8
  %23 = getelementptr inbounds %struct.LexState, %struct.LexState* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @luaX_next(%struct.LexState* %25)
  %26 = load %struct.LexState*, %struct.LexState** %4, align 8
  %27 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %28 = call i32 @subexpr(%struct.LexState* %26, %struct.expdesc* %27, i32 12)
  %29 = load %struct.LexState*, %struct.LexState** %4, align 8
  %30 = getelementptr inbounds %struct.LexState, %struct.LexState* %29, i32 0, i32 5
  %31 = load %struct.FuncState*, %struct.FuncState** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %34 = load i32, i32* %9, align 4
  call void @luaK_prefix(%struct.FuncState* %31, i32 %32, %struct.expdesc* %33, i32 %34)
  br label %38

; <label>:35:                                     ; preds = %3
  %36 = load %struct.LexState*, %struct.LexState** %4, align 8
  %37 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  call void @simpleexp(%struct.LexState* %36, %struct.expdesc* %37)
  br label %38

; <label>:38:                                     ; preds = %35, %21
  %39 = load %struct.LexState*, %struct.LexState** %4, align 8
  %40 = getelementptr inbounds %struct.LexState, %struct.LexState* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.Token, %struct.Token* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @getbinopr(i32 %42)
  store i32 %43, i32* %7, align 4
  br label %44

; <label>:44:                                     ; preds = %58, %38
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 21
  br i1 %46, label %47, label %56

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [21 x %struct.anon.8], [21 x %struct.anon.8]* @priority, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %50, i32 0, i32 0
  %52 = load i8, i8* %51, align 2
  %53 = zext i8 %52 to i32
  %54 = load i32, i32* %6, align 4
  %55 = icmp sgt i32 %53, %54
  br label %56

; <label>:56:                                     ; preds = %47, %44
  %57 = phi i1 [ false, %44 ], [ %55, %47 ]
  br i1 %57, label %58, label %83

; <label>:58:                                     ; preds = %56
  %59 = load %struct.LexState*, %struct.LexState** %4, align 8
  %60 = getelementptr inbounds %struct.LexState, %struct.LexState* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %12, align 4
  %62 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @luaX_next(%struct.LexState* %62)
  %63 = load %struct.LexState*, %struct.LexState** %4, align 8
  %64 = getelementptr inbounds %struct.LexState, %struct.LexState* %63, i32 0, i32 5
  %65 = load %struct.FuncState*, %struct.FuncState** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  call void @luaK_infix(%struct.FuncState* %65, i32 %66, %struct.expdesc* %67)
  %68 = load %struct.LexState*, %struct.LexState** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [21 x %struct.anon.8], [21 x %struct.anon.8]* @priority, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %71, i32 0, i32 1
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = call i32 @subexpr(%struct.LexState* %68, %struct.expdesc* %10, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.LexState*, %struct.LexState** %4, align 8
  %77 = getelementptr inbounds %struct.LexState, %struct.LexState* %76, i32 0, i32 5
  %78 = load %struct.FuncState*, %struct.FuncState** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %81 = load i32, i32* %12, align 4
  call void @luaK_posfix(%struct.FuncState* %78, i32 %79, %struct.expdesc* %80, %struct.expdesc* %10, i32 %81)
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %7, align 4
  br label %44

; <label>:83:                                     ; preds = %56
  %84 = load %struct.LexState*, %struct.LexState** %4, align 8
  %85 = getelementptr inbounds %struct.LexState, %struct.LexState* %84, i32 0, i32 6
  %86 = load %struct.lua_State*, %struct.lua_State** %85, align 8
  %87 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %86, i32 0, i32 22
  %88 = load i16, i16* %87, align 2
  %89 = add i16 %88, -1
  store i16 %89, i16* %87, align 2
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getunopr(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %9 [
    i32 271, label %5
    i32 45, label %6
    i32 126, label %7
    i32 35, label %8
  ]

; <label>:5:                                      ; preds = %1
  store i32 2, i32* %2, align 4
  br label %10

; <label>:6:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %10

; <label>:7:                                      ; preds = %1
  store i32 1, i32* %2, align 4
  br label %10

; <label>:8:                                      ; preds = %1
  store i32 3, i32* %2, align 4
  br label %10

; <label>:9:                                      ; preds = %1
  store i32 4, i32* %2, align 4
  br label %10

; <label>:10:                                     ; preds = %9, %8, %7, %6, %5
  %11 = load i32, i32* %2, align 4
  ret i32 %11
}

declare hidden void @luaK_prefix(%struct.FuncState*, i32, %struct.expdesc*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simpleexp(%struct.LexState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca %struct.FuncState*, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %6 = load %struct.LexState*, %struct.LexState** %3, align 8
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Token, %struct.Token* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %70 [
    i32 290, label %10
    i32 291, label %20
    i32 293, label %30
    i32 270, label %38
    i32 276, label %40
    i32 263, label %42
    i32 281, label %44
    i32 123, label %60
    i32 265, label %63
  ]

; <label>:10:                                     ; preds = %2
  %11 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @init_exp(%struct.expdesc* %11, i32 5, i32 0)
  %12 = load %struct.LexState*, %struct.LexState** %3, align 8
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.Token, %struct.Token* %13, i32 0, i32 1
  %15 = bitcast %union.SemInfo* %14 to double*
  %16 = load double, double* %15, align 8
  %17 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %17, i32 0, i32 1
  %19 = bitcast %union.anon.6* %18 to double*
  store double %16, double* %19, align 8
  br label %73

; <label>:20:                                     ; preds = %2
  %21 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @init_exp(%struct.expdesc* %21, i32 6, i32 0)
  %22 = load %struct.LexState*, %struct.LexState** %3, align 8
  %23 = getelementptr inbounds %struct.LexState, %struct.LexState* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.Token, %struct.Token* %23, i32 0, i32 1
  %25 = bitcast %union.SemInfo* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %28 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %27, i32 0, i32 1
  %29 = bitcast %union.anon.6* %28 to i64*
  store i64 %26, i64* %29, align 8
  br label %73

; <label>:30:                                     ; preds = %2
  %31 = load %struct.LexState*, %struct.LexState** %3, align 8
  %32 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %33 = load %struct.LexState*, %struct.LexState** %3, align 8
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.Token, %struct.Token* %34, i32 0, i32 1
  %36 = bitcast %union.SemInfo* %35 to %struct.TString**
  %37 = load %struct.TString*, %struct.TString** %36, align 8
  call void @codestring(%struct.LexState* %31, %struct.expdesc* %32, %struct.TString* %37)
  br label %73

; <label>:38:                                     ; preds = %2
  %39 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @init_exp(%struct.expdesc* %39, i32 1, i32 0)
  br label %73

; <label>:40:                                     ; preds = %2
  %41 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @init_exp(%struct.expdesc* %41, i32 2, i32 0)
  br label %73

; <label>:42:                                     ; preds = %2
  %43 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @init_exp(%struct.expdesc* %43, i32 3, i32 0)
  br label %73

; <label>:44:                                     ; preds = %2
  %45 = load %struct.LexState*, %struct.LexState** %3, align 8
  %46 = getelementptr inbounds %struct.LexState, %struct.LexState* %45, i32 0, i32 5
  %47 = load %struct.FuncState*, %struct.FuncState** %46, align 8
  store %struct.FuncState* %47, %struct.FuncState** %5, align 8
  %48 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %49 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %48, i32 0, i32 0
  %50 = load %struct.Proto*, %struct.Proto** %49, align 8
  %51 = getelementptr inbounds %struct.Proto, %struct.Proto* %50, i32 0, i32 4
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %56, label %54

; <label>:54:                                     ; preds = %44
  %55 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_syntaxerror(%struct.LexState* %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0)) #5
  unreachable

; <label>:56:                                     ; preds = %44
  %57 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %58 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %59 = call i32 @luaK_codeABC(%struct.FuncState* %58, i32 45, i32 0, i32 1, i32 0)
  call void @init_exp(%struct.expdesc* %57, i32 14, i32 %59)
  br label %73

; <label>:60:                                     ; preds = %2
  %61 = load %struct.LexState*, %struct.LexState** %3, align 8
  %62 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @constructor(%struct.LexState* %61, %struct.expdesc* %62)
  br label %75

; <label>:63:                                     ; preds = %2
  %64 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_next(%struct.LexState* %64)
  %65 = load %struct.LexState*, %struct.LexState** %3, align 8
  %66 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %67 = load %struct.LexState*, %struct.LexState** %3, align 8
  %68 = getelementptr inbounds %struct.LexState, %struct.LexState* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  call void @body(%struct.LexState* %65, %struct.expdesc* %66, i32 0, i32 %69)
  br label %75

; <label>:70:                                     ; preds = %2
  %71 = load %struct.LexState*, %struct.LexState** %3, align 8
  %72 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @suffixedexp(%struct.LexState* %71, %struct.expdesc* %72)
  br label %75

; <label>:73:                                     ; preds = %56, %42, %40, %38, %30, %20, %10
  %74 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_next(%struct.LexState* %74)
  br label %75

; <label>:75:                                     ; preds = %73, %70, %63, %60
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getbinopr(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %26 [
    i32 43, label %5
    i32 45, label %6
    i32 42, label %7
    i32 37, label %8
    i32 94, label %9
    i32 47, label %10
    i32 279, label %11
    i32 38, label %12
    i32 124, label %13
    i32 126, label %14
    i32 286, label %15
    i32 287, label %16
    i32 280, label %17
    i32 285, label %18
    i32 282, label %19
    i32 60, label %20
    i32 284, label %21
    i32 62, label %22
    i32 283, label %23
    i32 257, label %24
    i32 272, label %25
  ]

; <label>:5:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

; <label>:6:                                      ; preds = %1
  store i32 1, i32* %2, align 4
  br label %27

; <label>:7:                                      ; preds = %1
  store i32 2, i32* %2, align 4
  br label %27

; <label>:8:                                      ; preds = %1
  store i32 3, i32* %2, align 4
  br label %27

; <label>:9:                                      ; preds = %1
  store i32 4, i32* %2, align 4
  br label %27

; <label>:10:                                     ; preds = %1
  store i32 5, i32* %2, align 4
  br label %27

; <label>:11:                                     ; preds = %1
  store i32 6, i32* %2, align 4
  br label %27

; <label>:12:                                     ; preds = %1
  store i32 7, i32* %2, align 4
  br label %27

; <label>:13:                                     ; preds = %1
  store i32 8, i32* %2, align 4
  br label %27

; <label>:14:                                     ; preds = %1
  store i32 9, i32* %2, align 4
  br label %27

; <label>:15:                                     ; preds = %1
  store i32 10, i32* %2, align 4
  br label %27

; <label>:16:                                     ; preds = %1
  store i32 11, i32* %2, align 4
  br label %27

; <label>:17:                                     ; preds = %1
  store i32 12, i32* %2, align 4
  br label %27

; <label>:18:                                     ; preds = %1
  store i32 16, i32* %2, align 4
  br label %27

; <label>:19:                                     ; preds = %1
  store i32 13, i32* %2, align 4
  br label %27

; <label>:20:                                     ; preds = %1
  store i32 14, i32* %2, align 4
  br label %27

; <label>:21:                                     ; preds = %1
  store i32 15, i32* %2, align 4
  br label %27

; <label>:22:                                     ; preds = %1
  store i32 17, i32* %2, align 4
  br label %27

; <label>:23:                                     ; preds = %1
  store i32 18, i32* %2, align 4
  br label %27

; <label>:24:                                     ; preds = %1
  store i32 19, i32* %2, align 4
  br label %27

; <label>:25:                                     ; preds = %1
  store i32 20, i32* %2, align 4
  br label %27

; <label>:26:                                     ; preds = %1
  store i32 21, i32* %2, align 4
  br label %27

; <label>:27:                                     ; preds = %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare hidden void @luaK_infix(%struct.FuncState*, i32, %struct.expdesc*) #1

declare hidden void @luaK_posfix(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codestring(%struct.LexState*, %struct.expdesc*, %struct.TString*) #0 {
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca %struct.expdesc*, align 8
  %6 = alloca %struct.TString*, align 8
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store %struct.expdesc* %1, %struct.expdesc** %5, align 8
  store %struct.TString* %2, %struct.TString** %6, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %8 = load %struct.LexState*, %struct.LexState** %4, align 8
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 5
  %10 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  %11 = load %struct.TString*, %struct.TString** %6, align 8
  %12 = call i32 @luaK_stringK(%struct.FuncState* %10, %struct.TString* %11)
  call void @init_exp(%struct.expdesc* %7, i32 4, i32 %12)
  ret void
}

declare hidden i32 @luaK_codeABC(%struct.FuncState*, i32, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @constructor(%struct.LexState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ConsControl, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %9 = load %struct.LexState*, %struct.LexState** %3, align 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 5
  %11 = load %struct.FuncState*, %struct.FuncState** %10, align 8
  store %struct.FuncState* %11, %struct.FuncState** %5, align 8
  %12 = load %struct.LexState*, %struct.LexState** %3, align 8
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %16 = call i32 @luaK_codeABC(%struct.FuncState* %15, i32 11, i32 0, i32 0, i32 0)
  store i32 %16, i32* %7, align 4
  %17 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 4
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 3
  store i32 0, i32* %19, align 4
  %20 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %21 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 1
  store %struct.expdesc* %20, %struct.expdesc** %21, align 8
  %22 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %23 = load i32, i32* %7, align 4
  call void @init_exp(%struct.expdesc* %22, i32 12, i32 %23)
  %24 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 0
  call void @init_exp(%struct.expdesc* %24, i32 0, i32 0)
  %25 = load %struct.LexState*, %struct.LexState** %3, align 8
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %25, i32 0, i32 5
  %27 = load %struct.FuncState*, %struct.FuncState** %26, align 8
  %28 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %27, %struct.expdesc* %28)
  %29 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @checknext(%struct.LexState* %29, i32 123)
  br label %30

; <label>:30:                                     ; preds = %48, %2
  %31 = load %struct.LexState*, %struct.LexState** %3, align 8
  %32 = getelementptr inbounds %struct.LexState, %struct.LexState* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.Token, %struct.Token* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 125
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %30
  br label %50

; <label>:37:                                     ; preds = %30
  %38 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  call void @closelistfield(%struct.FuncState* %38, %struct.ConsControl* %8)
  %39 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @field(%struct.LexState* %39, %struct.ConsControl* %8)
  br label %40

; <label>:40:                                     ; preds = %37
  %41 = load %struct.LexState*, %struct.LexState** %3, align 8
  %42 = call i32 @testnext(%struct.LexState* %41, i32 44)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

; <label>:44:                                     ; preds = %40
  %45 = load %struct.LexState*, %struct.LexState** %3, align 8
  %46 = call i32 @testnext(%struct.LexState* %45, i32 59)
  %47 = icmp ne i32 %46, 0
  br label %48

; <label>:48:                                     ; preds = %44, %40
  %49 = phi i1 [ true, %40 ], [ %47, %44 ]
  br i1 %49, label %30, label %50

; <label>:50:                                     ; preds = %48, %36
  %51 = load %struct.LexState*, %struct.LexState** %3, align 8
  %52 = load i32, i32* %6, align 4
  call void @check_match(%struct.LexState* %51, i32 125, i32 123, i32 %52)
  %53 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  call void @lastlistfield(%struct.FuncState* %53, %struct.ConsControl* %8)
  %54 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %54, i32 0, i32 0
  %56 = load %struct.Proto*, %struct.Proto** %55, align 8
  %57 = getelementptr inbounds %struct.Proto, %struct.Proto* %56, i32 0, i32 15
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 8388607
  %64 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @luaO_int2fb(i32 %65)
  %67 = shl i32 %66, 23
  %68 = and i32 %67, -8388608
  %69 = or i32 %63, %68
  %70 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %71 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %70, i32 0, i32 0
  %72 = load %struct.Proto*, %struct.Proto** %71, align 8
  %73 = getelementptr inbounds %struct.Proto, %struct.Proto* %72, i32 0, i32 15
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %69, i32* %77, align 4
  %78 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %79 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %78, i32 0, i32 0
  %80 = load %struct.Proto*, %struct.Proto** %79, align 8
  %81 = getelementptr inbounds %struct.Proto, %struct.Proto* %80, i32 0, i32 15
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, -8372225
  %88 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @luaO_int2fb(i32 %89)
  %91 = shl i32 %90, 14
  %92 = and i32 %91, 8372224
  %93 = or i32 %87, %92
  %94 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %95 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %94, i32 0, i32 0
  %96 = load %struct.Proto*, %struct.Proto** %95, align 8
  %97 = getelementptr inbounds %struct.Proto, %struct.Proto* %96, i32 0, i32 15
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %93, i32* %101, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @body(%struct.LexState*, %struct.expdesc*, i32, i32) #0 {
  %5 = alloca %struct.LexState*, align 8
  %6 = alloca %struct.expdesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.FuncState, align 8
  %10 = alloca %struct.BlockCnt, align 8
  store %struct.LexState* %0, %struct.LexState** %5, align 8
  store %struct.expdesc* %1, %struct.expdesc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.LexState*, %struct.LexState** %5, align 8
  %12 = call %struct.Proto* @addprototype(%struct.LexState* %11)
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 0
  store %struct.Proto* %12, %struct.Proto** %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 0
  %16 = load %struct.Proto*, %struct.Proto** %15, align 8
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 12
  store i32 %14, i32* %17, align 8
  %18 = load %struct.LexState*, %struct.LexState** %5, align 8
  call void @open_func(%struct.LexState* %18, %struct.FuncState* %9, %struct.BlockCnt* %10)
  %19 = load %struct.LexState*, %struct.LexState** %5, align 8
  call void @checknext(%struct.LexState* %19, i32 40)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %4
  %23 = load %struct.LexState*, %struct.LexState** %5, align 8
  call void @new_localvarliteral_(%struct.LexState* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 4)
  %24 = load %struct.LexState*, %struct.LexState** %5, align 8
  call void @adjustlocalvars(%struct.LexState* %24, i32 1)
  br label %25

; <label>:25:                                     ; preds = %22, %4
  %26 = load %struct.LexState*, %struct.LexState** %5, align 8
  call void @parlist(%struct.LexState* %26)
  %27 = load %struct.LexState*, %struct.LexState** %5, align 8
  call void @checknext(%struct.LexState* %27, i32 41)
  %28 = load %struct.LexState*, %struct.LexState** %5, align 8
  call void @statlist(%struct.LexState* %28)
  %29 = load %struct.LexState*, %struct.LexState** %5, align 8
  %30 = getelementptr inbounds %struct.LexState, %struct.LexState* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 0
  %33 = load %struct.Proto*, %struct.Proto** %32, align 8
  %34 = getelementptr inbounds %struct.Proto, %struct.Proto* %33, i32 0, i32 13
  store i32 %31, i32* %34, align 4
  %35 = load %struct.LexState*, %struct.LexState** %5, align 8
  %36 = load i32, i32* %8, align 4
  call void @check_match(%struct.LexState* %35, i32 262, i32 265, i32 %36)
  %37 = load %struct.LexState*, %struct.LexState** %5, align 8
  %38 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @codeclosure(%struct.LexState* %37, %struct.expdesc* %38)
  %39 = load %struct.LexState*, %struct.LexState** %5, align 8
  call void @close_func(%struct.LexState* %39)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @suffixedexp(%struct.LexState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.expdesc, align 8
  %8 = alloca %struct.expdesc, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %9 = load %struct.LexState*, %struct.LexState** %3, align 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 5
  %11 = load %struct.FuncState*, %struct.FuncState** %10, align 8
  store %struct.FuncState* %11, %struct.FuncState** %5, align 8
  %12 = load %struct.LexState*, %struct.LexState** %3, align 8
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.LexState*, %struct.LexState** %3, align 8
  %16 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @primaryexp(%struct.LexState* %15, %struct.expdesc* %16)
  br label %17

; <label>:17:                                     ; preds = %46, %2
  %18 = load %struct.LexState*, %struct.LexState** %3, align 8
  %19 = getelementptr inbounds %struct.LexState, %struct.LexState* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.Token, %struct.Token* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %45 [
    i32 46, label %22
    i32 91, label %25
    i32 58, label %31
    i32 40, label %39
    i32 293, label %39
    i32 123, label %39
  ]

; <label>:22:                                     ; preds = %17
  %23 = load %struct.LexState*, %struct.LexState** %3, align 8
  %24 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @fieldsel(%struct.LexState* %23, %struct.expdesc* %24)
  br label %46

; <label>:25:                                     ; preds = %17
  %26 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %27 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_exp2anyregup(%struct.FuncState* %26, %struct.expdesc* %27)
  %28 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @yindex(%struct.LexState* %28, %struct.expdesc* %7)
  %29 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %30 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_indexed(%struct.FuncState* %29, %struct.expdesc* %30, %struct.expdesc* %7)
  br label %46

; <label>:31:                                     ; preds = %17
  %32 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_next(%struct.LexState* %32)
  %33 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @checkname(%struct.LexState* %33, %struct.expdesc* %8)
  %34 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %35 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_self(%struct.FuncState* %34, %struct.expdesc* %35, %struct.expdesc* %8)
  %36 = load %struct.LexState*, %struct.LexState** %3, align 8
  %37 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %38 = load i32, i32* %6, align 4
  call void @funcargs(%struct.LexState* %36, %struct.expdesc* %37, i32 %38)
  br label %46

; <label>:39:                                     ; preds = %17, %17, %17
  %40 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %41 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %40, %struct.expdesc* %41)
  %42 = load %struct.LexState*, %struct.LexState** %3, align 8
  %43 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %44 = load i32, i32* %6, align 4
  call void @funcargs(%struct.LexState* %42, %struct.expdesc* %43, i32 %44)
  br label %46

; <label>:45:                                     ; preds = %17
  ret void

; <label>:46:                                     ; preds = %39, %31, %25, %22
  br label %17
}

declare hidden i32 @luaK_stringK(%struct.FuncState*, %struct.TString*) #1

declare hidden void @luaK_exp2nextreg(%struct.FuncState*, %struct.expdesc*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @closelistfield(%struct.FuncState*, %struct.ConsControl*) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.ConsControl*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.ConsControl* %1, %struct.ConsControl** %4, align 8
  %5 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %6 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %2
  br label %38

; <label>:11:                                     ; preds = %2
  %12 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %13 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %14 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %13, i32 0, i32 0
  call void @luaK_exp2nextreg(%struct.FuncState* %12, %struct.expdesc* %14)
  %15 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %16 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %19 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 50
  br i1 %21, label %22, label %38

; <label>:22:                                     ; preds = %11
  %23 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %24 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %25 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %24, i32 0, i32 1
  %26 = load %struct.expdesc*, %struct.expdesc** %25, align 8
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %26, i32 0, i32 1
  %28 = bitcast %union.anon.6* %27 to i32*
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %31 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %34 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  call void @luaK_setlist(%struct.FuncState* %23, i32 %29, i32 %32, i32 %35)
  %36 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %37 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %36, i32 0, i32 4
  store i32 0, i32* %37, align 8
  br label %38

; <label>:38:                                     ; preds = %10, %22, %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @field(%struct.LexState*, %struct.ConsControl*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.ConsControl*, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.ConsControl* %1, %struct.ConsControl** %4, align 8
  %5 = load %struct.LexState*, %struct.LexState** %3, align 8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.Token, %struct.Token* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %23 [
    i32 292, label %9
    i32 91, label %20
  ]

; <label>:9:                                      ; preds = %2
  %10 = load %struct.LexState*, %struct.LexState** %3, align 8
  %11 = call i32 @luaX_lookahead(%struct.LexState* %10)
  %12 = icmp ne i32 %11, 61
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %9
  %14 = load %struct.LexState*, %struct.LexState** %3, align 8
  %15 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  call void @listfield(%struct.LexState* %14, %struct.ConsControl* %15)
  br label %19

; <label>:16:                                     ; preds = %9
  %17 = load %struct.LexState*, %struct.LexState** %3, align 8
  %18 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  call void @recfield(%struct.LexState* %17, %struct.ConsControl* %18)
  br label %19

; <label>:19:                                     ; preds = %16, %13
  br label %26

; <label>:20:                                     ; preds = %2
  %21 = load %struct.LexState*, %struct.LexState** %3, align 8
  %22 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  call void @recfield(%struct.LexState* %21, %struct.ConsControl* %22)
  br label %26

; <label>:23:                                     ; preds = %2
  %24 = load %struct.LexState*, %struct.LexState** %3, align 8
  %25 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  call void @listfield(%struct.LexState* %24, %struct.ConsControl* %25)
  br label %26

; <label>:26:                                     ; preds = %23, %20, %19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lastlistfield(%struct.FuncState*, %struct.ConsControl*) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.ConsControl*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.ConsControl* %1, %struct.ConsControl** %4, align 8
  %5 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %6 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  br label %64

; <label>:10:                                     ; preds = %2
  %11 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %12 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 13
  br i1 %15, label %22, label %16

; <label>:16:                                     ; preds = %10
  %17 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %18 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 14
  br i1 %21, label %22, label %40

; <label>:22:                                     ; preds = %16, %10
  %23 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %24 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %25 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %24, i32 0, i32 0
  call void @luaK_setreturns(%struct.FuncState* %23, %struct.expdesc* %25, i32 -1)
  %26 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %27 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %28 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %27, i32 0, i32 1
  %29 = load %struct.expdesc*, %struct.expdesc** %28, align 8
  %30 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %29, i32 0, i32 1
  %31 = bitcast %union.anon.6* %30 to i32*
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %34 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  call void @luaK_setlist(%struct.FuncState* %26, i32 %32, i32 %35, i32 -1)
  %36 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %37 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  br label %64

; <label>:40:                                     ; preds = %16
  %41 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %42 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

; <label>:46:                                     ; preds = %40
  %47 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %48 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %49 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %48, i32 0, i32 0
  call void @luaK_exp2nextreg(%struct.FuncState* %47, %struct.expdesc* %49)
  br label %50

; <label>:50:                                     ; preds = %46, %40
  %51 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %52 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %53 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %52, i32 0, i32 1
  %54 = load %struct.expdesc*, %struct.expdesc** %53, align 8
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %54, i32 0, i32 1
  %56 = bitcast %union.anon.6* %55 to i32*
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %59 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %62 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  call void @luaK_setlist(%struct.FuncState* %51, i32 %57, i32 %60, i32 %63)
  br label %64

; <label>:64:                                     ; preds = %9, %50, %22
  ret void
}

declare hidden i32 @luaO_int2fb(i32) #1

declare hidden void @luaK_setlist(%struct.FuncState*, i32, i32, i32) #1

declare hidden i32 @luaX_lookahead(%struct.LexState*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listfield(%struct.LexState*, %struct.ConsControl*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.ConsControl*, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.ConsControl* %1, %struct.ConsControl** %4, align 8
  %5 = load %struct.LexState*, %struct.LexState** %3, align 8
  %6 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %7 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %6, i32 0, i32 0
  call void @expr(%struct.LexState* %5, %struct.expdesc* %7)
  %8 = load %struct.LexState*, %struct.LexState** %3, align 8
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 5
  %10 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  %11 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %12 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  call void @checklimit(%struct.FuncState* %10, i32 %13, i32 2147483647, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  %14 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %15 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %19 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recfield(%struct.LexState*, %struct.ConsControl*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.ConsControl*, align 8
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.expdesc, align 8
  %8 = alloca %struct.expdesc, align 8
  %9 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.ConsControl* %1, %struct.ConsControl** %4, align 8
  %10 = load %struct.LexState*, %struct.LexState** %3, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 5
  %12 = load %struct.FuncState*, %struct.FuncState** %11, align 8
  store %struct.FuncState* %12, %struct.FuncState** %5, align 8
  %13 = load %struct.LexState*, %struct.LexState** %3, align 8
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 5
  %15 = load %struct.FuncState*, %struct.FuncState** %14, align 8
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %15, i32 0, i32 13
  %17 = load i8, i8* %16, align 4
  %18 = zext i8 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load %struct.LexState*, %struct.LexState** %3, align 8
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.Token, %struct.Token* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 292
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %2
  %25 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %26 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %27 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  call void @checklimit(%struct.FuncState* %25, i32 %28, i32 2147483647, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  %29 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @checkname(%struct.LexState* %29, %struct.expdesc* %7)
  br label %32

; <label>:30:                                     ; preds = %2
  %31 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @yindex(%struct.LexState* %31, %struct.expdesc* %7)
  br label %32

; <label>:32:                                     ; preds = %30, %24
  %33 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %34 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @checknext(%struct.LexState* %37, i32 61)
  %38 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %39 = call i32 @luaK_exp2RK(%struct.FuncState* %38, %struct.expdesc* %7)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @expr(%struct.LexState* %40, %struct.expdesc* %8)
  %41 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %42 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %43 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %42, i32 0, i32 1
  %44 = load %struct.expdesc*, %struct.expdesc** %43, align 8
  %45 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %44, i32 0, i32 1
  %46 = bitcast %union.anon.6* %45 to i32*
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %50 = call i32 @luaK_exp2RK(%struct.FuncState* %49, %struct.expdesc* %8)
  %51 = call i32 @luaK_codeABC(%struct.FuncState* %41, i32 10, i32 %47, i32 %48, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = trunc i32 %52 to i8
  %54 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %54, i32 0, i32 13
  store i8 %53, i8* %55, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkname(%struct.LexState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %5 = load %struct.LexState*, %struct.LexState** %3, align 8
  %6 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %7 = load %struct.LexState*, %struct.LexState** %3, align 8
  %8 = call %struct.TString* @str_checkname(%struct.LexState* %7)
  call void @codestring(%struct.LexState* %5, %struct.expdesc* %6, %struct.TString* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yindex(%struct.LexState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %5 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_next(%struct.LexState* %5)
  %6 = load %struct.LexState*, %struct.LexState** %3, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @expr(%struct.LexState* %6, %struct.expdesc* %7)
  %8 = load %struct.LexState*, %struct.LexState** %3, align 8
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 5
  %10 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  %11 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_exp2val(%struct.FuncState* %10, %struct.expdesc* %11)
  %12 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @checknext(%struct.LexState* %12, i32 93)
  ret void
}

declare hidden i32 @luaK_exp2RK(%struct.FuncState*, %struct.expdesc*) #1

declare hidden void @luaK_exp2val(%struct.FuncState*, %struct.expdesc*) #1

declare hidden void @luaK_setreturns(%struct.FuncState*, %struct.expdesc*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Proto* @addprototype(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca %struct.Proto*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca %struct.Proto*, align 8
  %7 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %8 = load %struct.LexState*, %struct.LexState** %2, align 8
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 6
  %10 = load %struct.lua_State*, %struct.lua_State** %9, align 8
  store %struct.lua_State* %10, %struct.lua_State** %4, align 8
  %11 = load %struct.LexState*, %struct.LexState** %2, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 5
  %13 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  store %struct.FuncState* %13, %struct.FuncState** %5, align 8
  %14 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 0
  %16 = load %struct.Proto*, %struct.Proto** %15, align 8
  store %struct.Proto* %16, %struct.Proto** %6, align 8
  %17 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.Proto*, %struct.Proto** %6, align 8
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %64

; <label>:24:                                     ; preds = %1
  %25 = load %struct.Proto*, %struct.Proto** %6, align 8
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  %28 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %29 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  %32 = load %struct.Proto*, %struct.Proto** %6, align 8
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %31, %34
  br i1 %35, label %36, label %48

; <label>:36:                                     ; preds = %24
  %37 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %38 = load %struct.Proto*, %struct.Proto** %6, align 8
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i32 0, i32 16
  %40 = load %struct.Proto**, %struct.Proto*** %39, align 8
  %41 = bitcast %struct.Proto** %40 to i8*
  %42 = load %struct.Proto*, %struct.Proto** %6, align 8
  %43 = getelementptr inbounds %struct.Proto, %struct.Proto* %42, i32 0, i32 10
  %44 = call i8* @luaM_growaux_(%struct.lua_State* %37, i8* %41, i32* %43, i64 8, i32 262143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %45 = bitcast i8* %44 to %struct.Proto**
  %46 = load %struct.Proto*, %struct.Proto** %6, align 8
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i32 0, i32 16
  store %struct.Proto** %45, %struct.Proto*** %47, align 8
  br label %48

; <label>:48:                                     ; preds = %36, %24
  br label %49

; <label>:49:                                     ; preds = %55, %48
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.Proto*, %struct.Proto** %6, align 8
  %52 = getelementptr inbounds %struct.Proto, %struct.Proto* %51, i32 0, i32 10
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %63

; <label>:55:                                     ; preds = %49
  %56 = load %struct.Proto*, %struct.Proto** %6, align 8
  %57 = getelementptr inbounds %struct.Proto, %struct.Proto* %56, i32 0, i32 16
  %58 = load %struct.Proto**, %struct.Proto*** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds %struct.Proto*, %struct.Proto** %58, i64 %61
  store %struct.Proto* null, %struct.Proto** %62, align 8
  br label %49

; <label>:63:                                     ; preds = %49
  br label %64

; <label>:64:                                     ; preds = %63, %1
  %65 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %66 = call %struct.Proto* @luaF_newproto(%struct.lua_State* %65)
  store %struct.Proto* %66, %struct.Proto** %3, align 8
  %67 = load %struct.Proto*, %struct.Proto** %6, align 8
  %68 = getelementptr inbounds %struct.Proto, %struct.Proto* %67, i32 0, i32 16
  %69 = load %struct.Proto**, %struct.Proto*** %68, align 8
  %70 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %71 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds %struct.Proto*, %struct.Proto** %69, i64 %74
  store %struct.Proto* %66, %struct.Proto** %75, align 8
  %76 = load %struct.Proto*, %struct.Proto** %6, align 8
  %77 = getelementptr inbounds %struct.Proto, %struct.Proto* %76, i32 0, i32 2
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %79, 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %97

; <label>:82:                                     ; preds = %64
  %83 = load %struct.Proto*, %struct.Proto** %3, align 8
  %84 = getelementptr inbounds %struct.Proto, %struct.Proto* %83, i32 0, i32 2
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 3
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

; <label>:89:                                     ; preds = %82
  %90 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %91 = load %struct.Proto*, %struct.Proto** %6, align 8
  %92 = bitcast %struct.Proto* %91 to %union.GCUnion*
  %93 = bitcast %union.GCUnion* %92 to %struct.GCObject*
  %94 = load %struct.Proto*, %struct.Proto** %3, align 8
  %95 = bitcast %struct.Proto* %94 to %union.GCUnion*
  %96 = bitcast %union.GCUnion* %95 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %90, %struct.GCObject* %93, %struct.GCObject* %96)
  br label %98

; <label>:97:                                     ; preds = %82, %64
  br label %98

; <label>:98:                                     ; preds = %97, %89
  %99 = load %struct.Proto*, %struct.Proto** %3, align 8
  ret %struct.Proto* %99
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @new_localvarliteral_(%struct.LexState*, i8*, i64) #0 {
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.LexState*, %struct.LexState** %4, align 8
  %8 = load %struct.LexState*, %struct.LexState** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call %struct.TString* @luaX_newstring(%struct.LexState* %8, i8* %9, i64 %10)
  call void @new_localvar(%struct.LexState* %7, %struct.TString* %11)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjustlocalvars(%struct.LexState*, i32) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.FuncState*, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.LexState*, %struct.LexState** %3, align 8
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 5
  %8 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  store %struct.FuncState* %8, %struct.FuncState** %5, align 8
  %9 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 11
  %11 = load i8, i8* %10, align 2
  %12 = zext i8 %11 to i32
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %12, %13
  %15 = trunc i32 %14 to i8
  %16 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %16, i32 0, i32 11
  store i8 %15, i8* %17, align 2
  br label %18

; <label>:18:                                     ; preds = %34, %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

; <label>:21:                                     ; preds = %18
  %22 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %26 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %26, i32 0, i32 11
  %28 = load i8, i8* %27, align 2
  %29 = zext i8 %28 to i32
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call %struct.LocVar* @getlocvar(%struct.FuncState* %25, i32 %31)
  %33 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %32, i32 0, i32 1
  store i32 %24, i32* %33, align 8
  br label %34

; <label>:34:                                     ; preds = %21
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %4, align 4
  br label %18

; <label>:37:                                     ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parlist(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.Proto*, align 8
  %5 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %6 = load %struct.LexState*, %struct.LexState** %2, align 8
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 5
  %8 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  store %struct.FuncState* %8, %struct.FuncState** %3, align 8
  %9 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 0
  %11 = load %struct.Proto*, %struct.Proto** %10, align 8
  store %struct.Proto* %11, %struct.Proto** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.Proto*, %struct.Proto** %4, align 8
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 4
  store i8 0, i8* %13, align 1
  %14 = load %struct.LexState*, %struct.LexState** %2, align 8
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.Token, %struct.Token* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 41
  br i1 %18, label %19, label %50

; <label>:19:                                     ; preds = %1
  br label %20

; <label>:20:                                     ; preds = %47, %19
  %21 = load %struct.LexState*, %struct.LexState** %2, align 8
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.Token, %struct.Token* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %35 [
    i32 292, label %25
    i32 281, label %31
  ]

; <label>:25:                                     ; preds = %20
  %26 = load %struct.LexState*, %struct.LexState** %2, align 8
  %27 = load %struct.LexState*, %struct.LexState** %2, align 8
  %28 = call %struct.TString* @str_checkname(%struct.LexState* %27)
  call void @new_localvar(%struct.LexState* %26, %struct.TString* %28)
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %37

; <label>:31:                                     ; preds = %20
  %32 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_next(%struct.LexState* %32)
  %33 = load %struct.Proto*, %struct.Proto** %4, align 8
  %34 = getelementptr inbounds %struct.Proto, %struct.Proto* %33, i32 0, i32 4
  store i8 1, i8* %34, align 1
  br label %37

; <label>:35:                                     ; preds = %20
  %36 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_syntaxerror(%struct.LexState* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0)) #5
  unreachable

; <label>:37:                                     ; preds = %31, %25
  br label %38

; <label>:38:                                     ; preds = %37
  %39 = load %struct.Proto*, %struct.Proto** %4, align 8
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %39, i32 0, i32 4
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %47, label %43

; <label>:43:                                     ; preds = %38
  %44 = load %struct.LexState*, %struct.LexState** %2, align 8
  %45 = call i32 @testnext(%struct.LexState* %44, i32 44)
  %46 = icmp ne i32 %45, 0
  br label %47

; <label>:47:                                     ; preds = %43, %38
  %48 = phi i1 [ false, %38 ], [ %46, %43 ]
  br i1 %48, label %20, label %49

; <label>:49:                                     ; preds = %47
  br label %50

; <label>:50:                                     ; preds = %49, %1
  %51 = load %struct.LexState*, %struct.LexState** %2, align 8
  %52 = load i32, i32* %5, align 4
  call void @adjustlocalvars(%struct.LexState* %51, i32 %52)
  %53 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %54 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %53, i32 0, i32 11
  %55 = load i8, i8* %54, align 2
  %56 = load %struct.Proto*, %struct.Proto** %4, align 8
  %57 = getelementptr inbounds %struct.Proto, %struct.Proto* %56, i32 0, i32 3
  store i8 %55, i8* %57, align 2
  %58 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %59 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %60 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %59, i32 0, i32 11
  %61 = load i8, i8* %60, align 2
  %62 = zext i8 %61 to i32
  call void @luaK_reserveregs(%struct.FuncState* %58, i32 %62)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeclosure(%struct.LexState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca %struct.FuncState*, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %6 = load %struct.LexState*, %struct.LexState** %3, align 8
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 5
  %8 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 1
  %10 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  store %struct.FuncState* %10, %struct.FuncState** %5, align 8
  %11 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %12 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %13 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = call i32 @luaK_codeABx(%struct.FuncState* %12, i32 44, i32 0, i32 %16)
  call void @init_exp(%struct.expdesc* %11, i32 12, i32 %17)
  %18 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %19 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %18, %struct.expdesc* %19)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @new_localvar(%struct.LexState*, %struct.TString*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.TString*, align 8
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca %struct.Dyndata*, align 8
  %7 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.TString* %1, %struct.TString** %4, align 8
  %8 = load %struct.LexState*, %struct.LexState** %3, align 8
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 5
  %10 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  store %struct.FuncState* %10, %struct.FuncState** %5, align 8
  %11 = load %struct.LexState*, %struct.LexState** %3, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 10
  %13 = load %struct.Dyndata*, %struct.Dyndata** %12, align 8
  store %struct.Dyndata* %13, %struct.Dyndata** %6, align 8
  %14 = load %struct.LexState*, %struct.LexState** %3, align 8
  %15 = load %struct.TString*, %struct.TString** %4, align 8
  %16 = call i32 @registerlocalvar(%struct.LexState* %14, %struct.TString* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %18 = load %struct.Dyndata*, %struct.Dyndata** %6, align 8
  %19 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  %23 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  call void @checklimit(%struct.FuncState* %17, i32 %26, i32 200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  %27 = load %struct.Dyndata*, %struct.Dyndata** %6, align 8
  %28 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  %32 = add nsw i32 %31, 1
  %33 = load %struct.Dyndata*, %struct.Dyndata** %6, align 8
  %34 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %32, %36
  br i1 %37, label %38, label %55

; <label>:38:                                     ; preds = %2
  %39 = load %struct.LexState*, %struct.LexState** %3, align 8
  %40 = getelementptr inbounds %struct.LexState, %struct.LexState* %39, i32 0, i32 6
  %41 = load %struct.lua_State*, %struct.lua_State** %40, align 8
  %42 = load %struct.Dyndata*, %struct.Dyndata** %6, align 8
  %43 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %43, i32 0, i32 0
  %45 = load %struct.Vardesc*, %struct.Vardesc** %44, align 8
  %46 = bitcast %struct.Vardesc* %45 to i8*
  %47 = load %struct.Dyndata*, %struct.Dyndata** %6, align 8
  %48 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %48, i32 0, i32 2
  %50 = call i8* @luaM_growaux_(%struct.lua_State* %41, i8* %46, i32* %49, i64 2, i32 2147483647, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  %51 = bitcast i8* %50 to %struct.Vardesc*
  %52 = load %struct.Dyndata*, %struct.Dyndata** %6, align 8
  %53 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %53, i32 0, i32 0
  store %struct.Vardesc* %51, %struct.Vardesc** %54, align 8
  br label %55

; <label>:55:                                     ; preds = %38, %2
  %56 = load i32, i32* %7, align 4
  %57 = trunc i32 %56 to i16
  %58 = load %struct.Dyndata*, %struct.Dyndata** %6, align 8
  %59 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %59, i32 0, i32 0
  %61 = load %struct.Vardesc*, %struct.Vardesc** %60, align 8
  %62 = load %struct.Dyndata*, %struct.Dyndata** %6, align 8
  %63 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %61, i64 %67
  %69 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %68, i32 0, i32 0
  store i16 %57, i16* %69, align 2
  ret void
}

declare hidden %struct.TString* @luaX_newstring(%struct.LexState*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @registerlocalvar(%struct.LexState*, %struct.TString*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.TString*, align 8
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca %struct.Proto*, align 8
  %7 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.TString* %1, %struct.TString** %4, align 8
  %8 = load %struct.LexState*, %struct.LexState** %3, align 8
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 5
  %10 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  store %struct.FuncState* %10, %struct.FuncState** %5, align 8
  %11 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %11, i32 0, i32 0
  %13 = load %struct.Proto*, %struct.Proto** %12, align 8
  store %struct.Proto* %13, %struct.Proto** %6, align 8
  %14 = load %struct.Proto*, %struct.Proto** %6, align 8
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i32 0, i32 11
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %17, i32 0, i32 10
  %19 = load i16, i16* %18, align 8
  %20 = sext i16 %19 to i32
  %21 = add nsw i32 %20, 1
  %22 = load %struct.Proto*, %struct.Proto** %6, align 8
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %40

; <label>:26:                                     ; preds = %2
  %27 = load %struct.LexState*, %struct.LexState** %3, align 8
  %28 = getelementptr inbounds %struct.LexState, %struct.LexState* %27, i32 0, i32 6
  %29 = load %struct.lua_State*, %struct.lua_State** %28, align 8
  %30 = load %struct.Proto*, %struct.Proto** %6, align 8
  %31 = getelementptr inbounds %struct.Proto, %struct.Proto* %30, i32 0, i32 18
  %32 = load %struct.LocVar*, %struct.LocVar** %31, align 8
  %33 = bitcast %struct.LocVar* %32 to i8*
  %34 = load %struct.Proto*, %struct.Proto** %6, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 11
  %36 = call i8* @luaM_growaux_(%struct.lua_State* %29, i8* %33, i32* %35, i64 16, i32 32767, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  %37 = bitcast i8* %36 to %struct.LocVar*
  %38 = load %struct.Proto*, %struct.Proto** %6, align 8
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i32 0, i32 18
  store %struct.LocVar* %37, %struct.LocVar** %39, align 8
  br label %40

; <label>:40:                                     ; preds = %26, %2
  br label %41

; <label>:41:                                     ; preds = %47, %40
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.Proto*, %struct.Proto** %6, align 8
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %56

; <label>:47:                                     ; preds = %41
  %48 = load %struct.Proto*, %struct.Proto** %6, align 8
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %48, i32 0, i32 18
  %50 = load %struct.LocVar*, %struct.LocVar** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %50, i64 %53
  %55 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %54, i32 0, i32 0
  store %struct.TString* null, %struct.TString** %55, align 8
  br label %41

; <label>:56:                                     ; preds = %41
  %57 = load %struct.TString*, %struct.TString** %4, align 8
  %58 = load %struct.Proto*, %struct.Proto** %6, align 8
  %59 = getelementptr inbounds %struct.Proto, %struct.Proto* %58, i32 0, i32 18
  %60 = load %struct.LocVar*, %struct.LocVar** %59, align 8
  %61 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %62 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %61, i32 0, i32 10
  %63 = load i16, i16* %62, align 8
  %64 = sext i16 %63 to i64
  %65 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %60, i64 %64
  %66 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %65, i32 0, i32 0
  store %struct.TString* %57, %struct.TString** %66, align 8
  %67 = load %struct.Proto*, %struct.Proto** %6, align 8
  %68 = getelementptr inbounds %struct.Proto, %struct.Proto* %67, i32 0, i32 2
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %90

; <label>:73:                                     ; preds = %56
  %74 = load %struct.TString*, %struct.TString** %4, align 8
  %75 = getelementptr inbounds %struct.TString, %struct.TString* %74, i32 0, i32 2
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %77, 3
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

; <label>:80:                                     ; preds = %73
  %81 = load %struct.LexState*, %struct.LexState** %3, align 8
  %82 = getelementptr inbounds %struct.LexState, %struct.LexState* %81, i32 0, i32 6
  %83 = load %struct.lua_State*, %struct.lua_State** %82, align 8
  %84 = load %struct.Proto*, %struct.Proto** %6, align 8
  %85 = bitcast %struct.Proto* %84 to %union.GCUnion*
  %86 = bitcast %union.GCUnion* %85 to %struct.GCObject*
  %87 = load %struct.TString*, %struct.TString** %4, align 8
  %88 = bitcast %struct.TString* %87 to %union.GCUnion*
  %89 = bitcast %union.GCUnion* %88 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %83, %struct.GCObject* %86, %struct.GCObject* %89)
  br label %91

; <label>:90:                                     ; preds = %73, %56
  br label %91

; <label>:91:                                     ; preds = %90, %80
  %92 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %93 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %92, i32 0, i32 10
  %94 = load i16, i16* %93, align 8
  %95 = add i16 %94, 1
  store i16 %95, i16* %93, align 8
  %96 = sext i16 %94 to i32
  ret i32 %96
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.LocVar* @getlocvar(%struct.FuncState*, i32) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i32 0, i32 2
  %8 = load %struct.LexState*, %struct.LexState** %7, align 8
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 10
  %10 = load %struct.Dyndata*, %struct.Dyndata** %9, align 8
  %11 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %11, i32 0, i32 0
  %13 = load %struct.Vardesc*, %struct.Vardesc** %12, align 8
  %14 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %13, i64 %19
  %21 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %20, i32 0, i32 0
  %22 = load i16, i16* %21, align 2
  %23 = sext i16 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %25 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %24, i32 0, i32 0
  %26 = load %struct.Proto*, %struct.Proto** %25, align 8
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 18
  %28 = load %struct.LocVar*, %struct.LocVar** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %28, i64 %30
  ret %struct.LocVar* %31
}

declare hidden void @luaK_reserveregs(%struct.FuncState*, i32) #1

declare hidden i32 @luaK_codeABx(%struct.FuncState*, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @primaryexp(%struct.LexState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %6 = load %struct.LexState*, %struct.LexState** %3, align 8
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Token, %struct.Token* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %26 [
    i32 40, label %10
    i32 292, label %23
  ]

; <label>:10:                                     ; preds = %2
  %11 = load %struct.LexState*, %struct.LexState** %3, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_next(%struct.LexState* %14)
  %15 = load %struct.LexState*, %struct.LexState** %3, align 8
  %16 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @expr(%struct.LexState* %15, %struct.expdesc* %16)
  %17 = load %struct.LexState*, %struct.LexState** %3, align 8
  %18 = load i32, i32* %5, align 4
  call void @check_match(%struct.LexState* %17, i32 41, i32 40, i32 %18)
  %19 = load %struct.LexState*, %struct.LexState** %3, align 8
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %19, i32 0, i32 5
  %21 = load %struct.FuncState*, %struct.FuncState** %20, align 8
  %22 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_dischargevars(%struct.FuncState* %21, %struct.expdesc* %22)
  br label %28

; <label>:23:                                     ; preds = %2
  %24 = load %struct.LexState*, %struct.LexState** %3, align 8
  %25 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @singlevar(%struct.LexState* %24, %struct.expdesc* %25)
  br label %28

; <label>:26:                                     ; preds = %2
  %27 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_syntaxerror(%struct.LexState* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0)) #5
  unreachable

; <label>:28:                                     ; preds = %23, %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fieldsel(%struct.LexState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca %struct.expdesc, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %7 = load %struct.LexState*, %struct.LexState** %3, align 8
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 5
  %9 = load %struct.FuncState*, %struct.FuncState** %8, align 8
  store %struct.FuncState* %9, %struct.FuncState** %5, align 8
  %10 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %11 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_exp2anyregup(%struct.FuncState* %10, %struct.expdesc* %11)
  %12 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_next(%struct.LexState* %12)
  %13 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @checkname(%struct.LexState* %13, %struct.expdesc* %6)
  %14 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %15 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_indexed(%struct.FuncState* %14, %struct.expdesc* %15, %struct.expdesc* %6)
  ret void
}

declare hidden void @luaK_exp2anyregup(%struct.FuncState*, %struct.expdesc*) #1

declare hidden void @luaK_indexed(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #1

declare hidden void @luaK_self(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @funcargs(%struct.LexState*, %struct.expdesc*, i32) #0 {
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca %struct.expdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.FuncState*, align 8
  %8 = alloca %struct.expdesc, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store %struct.expdesc* %1, %struct.expdesc** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.LexState*, %struct.LexState** %4, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 5
  %13 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  store %struct.FuncState* %13, %struct.FuncState** %7, align 8
  %14 = load %struct.LexState*, %struct.LexState** %4, align 8
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.Token, %struct.Token* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %44 [
    i32 40, label %18
    i32 123, label %34
    i32 293, label %36
  ]

; <label>:18:                                     ; preds = %3
  %19 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @luaX_next(%struct.LexState* %19)
  %20 = load %struct.LexState*, %struct.LexState** %4, align 8
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.Token, %struct.Token* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 41
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %18
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 0
  store i32 0, i32* %26, align 8
  br label %31

; <label>:27:                                     ; preds = %18
  %28 = load %struct.LexState*, %struct.LexState** %4, align 8
  %29 = call i32 @explist(%struct.LexState* %28, %struct.expdesc* %8)
  %30 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  call void @luaK_setreturns(%struct.FuncState* %30, %struct.expdesc* %8, i32 -1)
  br label %31

; <label>:31:                                     ; preds = %27, %25
  %32 = load %struct.LexState*, %struct.LexState** %4, align 8
  %33 = load i32, i32* %6, align 4
  call void @check_match(%struct.LexState* %32, i32 41, i32 40, i32 %33)
  br label %46

; <label>:34:                                     ; preds = %3
  %35 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @constructor(%struct.LexState* %35, %struct.expdesc* %8)
  br label %46

; <label>:36:                                     ; preds = %3
  %37 = load %struct.LexState*, %struct.LexState** %4, align 8
  %38 = load %struct.LexState*, %struct.LexState** %4, align 8
  %39 = getelementptr inbounds %struct.LexState, %struct.LexState* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.Token, %struct.Token* %39, i32 0, i32 1
  %41 = bitcast %union.SemInfo* %40 to %struct.TString**
  %42 = load %struct.TString*, %struct.TString** %41, align 8
  call void @codestring(%struct.LexState* %37, %struct.expdesc* %8, %struct.TString* %42)
  %43 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @luaX_next(%struct.LexState* %43)
  br label %46

; <label>:44:                                     ; preds = %3
  %45 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @luaX_syntaxerror(%struct.LexState* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0)) #5
  unreachable

; <label>:46:                                     ; preds = %36, %34, %31
  %47 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %47, i32 0, i32 1
  %49 = bitcast %union.anon.6* %48 to i32*
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %9, align 4
  %51 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 13
  br i1 %53, label %58, label %54

; <label>:54:                                     ; preds = %46
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 14
  br i1 %57, label %58, label %59

; <label>:58:                                     ; preds = %54, %46
  store i32 -1, i32* %10, align 4
  br label %73

; <label>:59:                                     ; preds = %54
  %60 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

; <label>:63:                                     ; preds = %59
  %64 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %64, %struct.expdesc* %8)
  br label %65

; <label>:65:                                     ; preds = %63, %59
  %66 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %67 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %66, i32 0, i32 13
  %68 = load i8, i8* %67, align 4
  %69 = zext i8 %68 to i32
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  %72 = sub nsw i32 %69, %71
  store i32 %72, i32* %10, align 4
  br label %73

; <label>:73:                                     ; preds = %65, %58
  %74 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %75 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  %79 = call i32 @luaK_codeABC(%struct.FuncState* %75, i32 36, i32 %76, i32 %78, i32 2)
  call void @init_exp(%struct.expdesc* %74, i32 13, i32 %79)
  %80 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %81 = load i32, i32* %6, align 4
  call void @luaK_fixline(%struct.FuncState* %80, i32 %81)
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  %84 = trunc i32 %83 to i8
  %85 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %86 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %85, i32 0, i32 13
  store i8 %84, i8* %86, align 4
  ret void
}

declare hidden void @luaK_dischargevars(%struct.FuncState*, %struct.expdesc*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @singlevar(%struct.LexState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca %struct.TString*, align 8
  %6 = alloca %struct.FuncState*, align 8
  %7 = alloca %struct.expdesc, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  %8 = load %struct.LexState*, %struct.LexState** %3, align 8
  %9 = call %struct.TString* @str_checkname(%struct.LexState* %8)
  store %struct.TString* %9, %struct.TString** %5, align 8
  %10 = load %struct.LexState*, %struct.LexState** %3, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 5
  %12 = load %struct.FuncState*, %struct.FuncState** %11, align 8
  store %struct.FuncState* %12, %struct.FuncState** %6, align 8
  %13 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %14 = load %struct.TString*, %struct.TString** %5, align 8
  %15 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @singlevaraux(%struct.FuncState* %13, %struct.TString* %14, %struct.expdesc* %15, i32 1)
  %16 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

; <label>:20:                                     ; preds = %2
  %21 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %22 = load %struct.LexState*, %struct.LexState** %3, align 8
  %23 = getelementptr inbounds %struct.LexState, %struct.LexState* %22, i32 0, i32 12
  %24 = load %struct.TString*, %struct.TString** %23, align 8
  %25 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @singlevaraux(%struct.FuncState* %21, %struct.TString* %24, %struct.expdesc* %25, i32 1)
  %26 = load %struct.LexState*, %struct.LexState** %3, align 8
  %27 = load %struct.TString*, %struct.TString** %5, align 8
  call void @codestring(%struct.LexState* %26, %struct.expdesc* %7, %struct.TString* %27)
  %28 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %29 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_indexed(%struct.FuncState* %28, %struct.expdesc* %29, %struct.expdesc* %7)
  br label %30

; <label>:30:                                     ; preds = %20, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @singlevaraux(%struct.FuncState*, %struct.TString*, %struct.expdesc*, i32) #0 {
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca %struct.TString*, align 8
  %7 = alloca %struct.expdesc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store %struct.TString* %1, %struct.TString** %6, align 8
  store %struct.expdesc* %2, %struct.expdesc** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %12 = icmp eq %struct.FuncState* %11, null
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %4
  %14 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  call void @init_exp(%struct.expdesc* %14, i32 0, i32 0)
  br label %56

; <label>:15:                                     ; preds = %4
  %16 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %17 = load %struct.TString*, %struct.TString** %6, align 8
  %18 = call i32 @searchvar(%struct.FuncState* %16, %struct.TString* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %30

; <label>:21:                                     ; preds = %15
  %22 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %23 = load i32, i32* %9, align 4
  call void @init_exp(%struct.expdesc* %22, i32 8, i32 %23)
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

; <label>:26:                                     ; preds = %21
  %27 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %28 = load i32, i32* %9, align 4
  call void @markupval(%struct.FuncState* %27, i32 %28)
  br label %29

; <label>:29:                                     ; preds = %26, %21
  br label %55

; <label>:30:                                     ; preds = %15
  %31 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %32 = load %struct.TString*, %struct.TString** %6, align 8
  %33 = call i32 @searchupvalue(%struct.FuncState* %31, %struct.TString* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %52

; <label>:36:                                     ; preds = %30
  %37 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %37, i32 0, i32 1
  %39 = load %struct.FuncState*, %struct.FuncState** %38, align 8
  %40 = load %struct.TString*, %struct.TString** %6, align 8
  %41 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  call void @singlevaraux(%struct.FuncState* %39, %struct.TString* %40, %struct.expdesc* %41, i32 0)
  %42 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %43 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %36
  br label %56

; <label>:47:                                     ; preds = %36
  %48 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %49 = load %struct.TString*, %struct.TString** %6, align 8
  %50 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %51 = call i32 @newupvalue(%struct.FuncState* %48, %struct.TString* %49, %struct.expdesc* %50)
  store i32 %51, i32* %10, align 4
  br label %52

; <label>:52:                                     ; preds = %47, %30
  %53 = load %struct.expdesc*, %struct.expdesc** %7, align 8
  %54 = load i32, i32* %10, align 4
  call void @init_exp(%struct.expdesc* %53, i32 9, i32 %54)
  br label %55

; <label>:55:                                     ; preds = %52, %29
  br label %56

; <label>:56:                                     ; preds = %46, %55, %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @searchvar(%struct.FuncState*, %struct.TString*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.TString*, align 8
  %6 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.TString* %1, %struct.TString** %5, align 8
  %7 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 11
  %9 = load i8, i8* %8, align 2
  %10 = zext i8 %9 to i32
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %6, align 4
  br label %12

; <label>:12:                                     ; preds = %26, %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %29

; <label>:15:                                     ; preds = %12
  %16 = load %struct.TString*, %struct.TString** %5, align 8
  %17 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.LocVar* @getlocvar(%struct.FuncState* %17, i32 %18)
  %20 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %19, i32 0, i32 0
  %21 = load %struct.TString*, %struct.TString** %20, align 8
  %22 = icmp eq %struct.TString* %16, %21
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %15
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %30

; <label>:25:                                     ; preds = %15
  br label %26

; <label>:26:                                     ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %6, align 4
  br label %12

; <label>:29:                                     ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %30

; <label>:30:                                     ; preds = %29, %23
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @markupval(%struct.FuncState*, i32) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.BlockCnt*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i32 0, i32 3
  %8 = load %struct.BlockCnt*, %struct.BlockCnt** %7, align 8
  store %struct.BlockCnt* %8, %struct.BlockCnt** %5, align 8
  br label %9

; <label>:9:                                      ; preds = %16, %2
  %10 = load %struct.BlockCnt*, %struct.BlockCnt** %5, align 8
  %11 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %10, i32 0, i32 3
  %12 = load i8, i8* %11, align 8
  %13 = zext i8 %12 to i32
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %9
  %17 = load %struct.BlockCnt*, %struct.BlockCnt** %5, align 8
  %18 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %17, i32 0, i32 0
  %19 = load %struct.BlockCnt*, %struct.BlockCnt** %18, align 8
  store %struct.BlockCnt* %19, %struct.BlockCnt** %5, align 8
  br label %9

; <label>:20:                                     ; preds = %9
  %21 = load %struct.BlockCnt*, %struct.BlockCnt** %5, align 8
  %22 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %21, i32 0, i32 4
  store i8 1, i8* %22, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @searchupvalue(%struct.FuncState*, %struct.TString*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.TString*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Upvaldesc*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.TString* %1, %struct.TString** %5, align 8
  %8 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 0
  %10 = load %struct.Proto*, %struct.Proto** %9, align 8
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i32 0, i32 19
  %12 = load %struct.Upvaldesc*, %struct.Upvaldesc** %11, align 8
  store %struct.Upvaldesc* %12, %struct.Upvaldesc** %7, align 8
  store i32 0, i32* %6, align 4
  br label %13

; <label>:13:                                     ; preds = %32, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %15, i32 0, i32 12
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %35

; <label>:20:                                     ; preds = %13
  %21 = load %struct.Upvaldesc*, %struct.Upvaldesc** %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %21, i64 %23
  %25 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %24, i32 0, i32 0
  %26 = load %struct.TString*, %struct.TString** %25, align 8
  %27 = load %struct.TString*, %struct.TString** %5, align 8
  %28 = icmp eq %struct.TString* %26, %27
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %36

; <label>:31:                                     ; preds = %20
  br label %32

; <label>:32:                                     ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %13

; <label>:35:                                     ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %36

; <label>:36:                                     ; preds = %35, %29
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @explist(%struct.LexState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.LexState*, %struct.LexState** %3, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @expr(%struct.LexState* %6, %struct.expdesc* %7)
  br label %8

; <label>:8:                                      ; preds = %12, %2
  %9 = load %struct.LexState*, %struct.LexState** %3, align 8
  %10 = call i32 @testnext(%struct.LexState* %9, i32 44)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

; <label>:12:                                     ; preds = %8
  %13 = load %struct.LexState*, %struct.LexState** %3, align 8
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 5
  %15 = load %struct.FuncState*, %struct.FuncState** %14, align 8
  %16 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %15, %struct.expdesc* %16)
  %17 = load %struct.LexState*, %struct.LexState** %3, align 8
  %18 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @expr(%struct.LexState* %17, %struct.expdesc* %18)
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %8

; <label>:21:                                     ; preds = %8
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare hidden void @luaK_fixline(%struct.FuncState*, i32) #1

declare hidden void @luaK_patchclose(%struct.FuncState*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @breaklabel(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca %struct.TString*, align 8
  %4 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %5 = load %struct.LexState*, %struct.LexState** %2, align 8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 6
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %8 = call %struct.TString* @luaS_new(%struct.lua_State* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0))
  store %struct.TString* %8, %struct.TString** %3, align 8
  %9 = load %struct.LexState*, %struct.LexState** %2, align 8
  %10 = load %struct.LexState*, %struct.LexState** %2, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 10
  %12 = load %struct.Dyndata*, %struct.Dyndata** %11, align 8
  %13 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %12, i32 0, i32 2
  %14 = load %struct.TString*, %struct.TString** %3, align 8
  %15 = load %struct.LexState*, %struct.LexState** %2, align 8
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 5
  %17 = load %struct.FuncState*, %struct.FuncState** %16, align 8
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @newlabelentry(%struct.LexState* %9, %struct.Labellist* %13, %struct.TString* %14, i32 0, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.LexState*, %struct.LexState** %2, align 8
  %22 = load %struct.LexState*, %struct.LexState** %2, align 8
  %23 = getelementptr inbounds %struct.LexState, %struct.LexState* %22, i32 0, i32 10
  %24 = load %struct.Dyndata*, %struct.Dyndata** %23, align 8
  %25 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %25, i32 0, i32 0
  %27 = load %struct.Labeldesc*, %struct.Labeldesc** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %27, i64 %29
  call void @findgotos(%struct.LexState* %21, %struct.Labeldesc* %30)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @removevars(%struct.FuncState*, i32) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i32 0, i32 11
  %7 = load i8, i8* %6, align 2
  %8 = zext i8 %7 to i32
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %8, %9
  %11 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %11, i32 0, i32 2
  %13 = load %struct.LexState*, %struct.LexState** %12, align 8
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 10
  %15 = load %struct.Dyndata*, %struct.Dyndata** %14, align 8
  %16 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, %10
  store i32 %19, i32* %17, align 8
  br label %20

; <label>:20:                                     ; preds = %27, %2
  %21 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %21, i32 0, i32 11
  %23 = load i8, i8* %22, align 2
  %24 = zext i8 %23 to i32
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %39

; <label>:27:                                     ; preds = %20
  %28 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %29 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %32 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %32, i32 0, i32 11
  %34 = load i8, i8* %33, align 2
  %35 = add i8 %34, -1
  store i8 %35, i8* %33, align 2
  %36 = zext i8 %35 to i32
  %37 = call %struct.LocVar* @getlocvar(%struct.FuncState* %31, i32 %36)
  %38 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %37, i32 0, i32 2
  store i32 %30, i32* %38, align 4
  br label %20

; <label>:39:                                     ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @movegotosout(%struct.FuncState*, %struct.BlockCnt*) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.BlockCnt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Labellist*, align 8
  %7 = alloca %struct.Labeldesc*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store %struct.BlockCnt* %1, %struct.BlockCnt** %4, align 8
  %8 = load %struct.BlockCnt*, %struct.BlockCnt** %4, align 8
  %9 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %11, i32 0, i32 2
  %13 = load %struct.LexState*, %struct.LexState** %12, align 8
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 10
  %15 = load %struct.Dyndata*, %struct.Dyndata** %14, align 8
  %16 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %15, i32 0, i32 1
  store %struct.Labellist* %16, %struct.Labellist** %6, align 8
  br label %17

; <label>:17:                                     ; preds = %69, %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.Labellist*, %struct.Labellist** %6, align 8
  %20 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %70

; <label>:23:                                     ; preds = %17
  %24 = load %struct.Labellist*, %struct.Labellist** %6, align 8
  %25 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %24, i32 0, i32 0
  %26 = load %struct.Labeldesc*, %struct.Labeldesc** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %26, i64 %28
  store %struct.Labeldesc* %29, %struct.Labeldesc** %7, align 8
  %30 = load %struct.Labeldesc*, %struct.Labeldesc** %7, align 8
  %31 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %30, i32 0, i32 3
  %32 = load i8, i8* %31, align 8
  %33 = zext i8 %32 to i32
  %34 = load %struct.BlockCnt*, %struct.BlockCnt** %4, align 8
  %35 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %34, i32 0, i32 3
  %36 = load i8, i8* %35, align 8
  %37 = zext i8 %36 to i32
  %38 = icmp sgt i32 %33, %37
  br i1 %38, label %39, label %59

; <label>:39:                                     ; preds = %23
  %40 = load %struct.BlockCnt*, %struct.BlockCnt** %4, align 8
  %41 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %40, i32 0, i32 4
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %53

; <label>:44:                                     ; preds = %39
  %45 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %46 = load %struct.Labeldesc*, %struct.Labeldesc** %7, align 8
  %47 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.BlockCnt*, %struct.BlockCnt** %4, align 8
  %50 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %49, i32 0, i32 3
  %51 = load i8, i8* %50, align 8
  %52 = zext i8 %51 to i32
  call void @luaK_patchclose(%struct.FuncState* %45, i32 %48, i32 %52)
  br label %53

; <label>:53:                                     ; preds = %44, %39
  %54 = load %struct.BlockCnt*, %struct.BlockCnt** %4, align 8
  %55 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %54, i32 0, i32 3
  %56 = load i8, i8* %55, align 8
  %57 = load %struct.Labeldesc*, %struct.Labeldesc** %7, align 8
  %58 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %57, i32 0, i32 3
  store i8 %56, i8* %58, align 8
  br label %59

; <label>:59:                                     ; preds = %53, %23
  %60 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %61 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i32 0, i32 2
  %62 = load %struct.LexState*, %struct.LexState** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @findlabel(%struct.LexState* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

; <label>:66:                                     ; preds = %59
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %69

; <label>:69:                                     ; preds = %66, %59
  br label %17

; <label>:70:                                     ; preds = %17
  ret void
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @undefgoto(%struct.LexState*, %struct.Labeldesc*) #2 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.Labeldesc*, align 8
  %5 = alloca i8*, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.Labeldesc* %1, %struct.Labeldesc** %4, align 8
  %6 = load %struct.Labeldesc*, %struct.Labeldesc** %4, align 8
  %7 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %6, i32 0, i32 0
  %8 = load %struct.TString*, %struct.TString** %7, align 8
  %9 = getelementptr inbounds %struct.TString, %struct.TString* %8, i32 0, i32 1
  %10 = load i8, i8* %9, align 8
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %2
  %14 = load %struct.Labeldesc*, %struct.Labeldesc** %4, align 8
  %15 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %14, i32 0, i32 0
  %16 = load %struct.TString*, %struct.TString** %15, align 8
  %17 = getelementptr inbounds %struct.TString, %struct.TString* %16, i32 0, i32 3
  %18 = load i8, i8* %17, align 2
  %19 = zext i8 %18 to i32
  %20 = icmp sgt i32 %19, 0
  br label %21

; <label>:21:                                     ; preds = %13, %2
  %22 = phi i1 [ false, %2 ], [ %20, %13 ]
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i32 0, i32 0)
  store i8* %24, i8** %5, align 8
  %25 = load %struct.LexState*, %struct.LexState** %3, align 8
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %25, i32 0, i32 6
  %27 = load %struct.lua_State*, %struct.lua_State** %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.Labeldesc*, %struct.Labeldesc** %4, align 8
  %30 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %29, i32 0, i32 0
  %31 = load %struct.TString*, %struct.TString** %30, align 8
  %32 = bitcast %struct.TString* %31 to i8*
  %33 = getelementptr inbounds i8, i8* %32, i64 24
  %34 = load %struct.Labeldesc*, %struct.Labeldesc** %4, align 8
  %35 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %27, i8* %28, i8* %33, i32 %36)
  store i8* %37, i8** %5, align 8
  %38 = load %struct.LexState*, %struct.LexState** %3, align 8
  %39 = load i8*, i8** %5, align 8
  call void @semerror(%struct.LexState* %38, i8* %39) #5
  unreachable
                                                  ; No predecessors!
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @newlabelentry(%struct.LexState*, %struct.Labellist*, %struct.TString*, i32, i32) #0 {
  %6 = alloca %struct.LexState*, align 8
  %7 = alloca %struct.Labellist*, align 8
  %8 = alloca %struct.TString*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %6, align 8
  store %struct.Labellist* %1, %struct.Labellist** %7, align 8
  store %struct.TString* %2, %struct.TString** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.Labellist*, %struct.Labellist** %7, align 8
  %13 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = add nsw i32 %15, 1
  %17 = load %struct.Labellist*, %struct.Labellist** %7, align 8
  %18 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %35

; <label>:21:                                     ; preds = %5
  %22 = load %struct.LexState*, %struct.LexState** %6, align 8
  %23 = getelementptr inbounds %struct.LexState, %struct.LexState* %22, i32 0, i32 6
  %24 = load %struct.lua_State*, %struct.lua_State** %23, align 8
  %25 = load %struct.Labellist*, %struct.Labellist** %7, align 8
  %26 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %25, i32 0, i32 0
  %27 = load %struct.Labeldesc*, %struct.Labeldesc** %26, align 8
  %28 = bitcast %struct.Labeldesc* %27 to i8*
  %29 = load %struct.Labellist*, %struct.Labellist** %7, align 8
  %30 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %29, i32 0, i32 2
  %31 = call i8* @luaM_growaux_(%struct.lua_State* %24, i8* %28, i32* %30, i64 24, i32 32767, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  %32 = bitcast i8* %31 to %struct.Labeldesc*
  %33 = load %struct.Labellist*, %struct.Labellist** %7, align 8
  %34 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %33, i32 0, i32 0
  store %struct.Labeldesc* %32, %struct.Labeldesc** %34, align 8
  br label %35

; <label>:35:                                     ; preds = %21, %5
  %36 = load %struct.TString*, %struct.TString** %8, align 8
  %37 = load %struct.Labellist*, %struct.Labellist** %7, align 8
  %38 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %37, i32 0, i32 0
  %39 = load %struct.Labeldesc*, %struct.Labeldesc** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %39, i64 %41
  %43 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %42, i32 0, i32 0
  store %struct.TString* %36, %struct.TString** %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.Labellist*, %struct.Labellist** %7, align 8
  %46 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %45, i32 0, i32 0
  %47 = load %struct.Labeldesc*, %struct.Labeldesc** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %47, i64 %49
  %51 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %50, i32 0, i32 2
  store i32 %44, i32* %51, align 4
  %52 = load %struct.LexState*, %struct.LexState** %6, align 8
  %53 = getelementptr inbounds %struct.LexState, %struct.LexState* %52, i32 0, i32 5
  %54 = load %struct.FuncState*, %struct.FuncState** %53, align 8
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %54, i32 0, i32 11
  %56 = load i8, i8* %55, align 2
  %57 = load %struct.Labellist*, %struct.Labellist** %7, align 8
  %58 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %57, i32 0, i32 0
  %59 = load %struct.Labeldesc*, %struct.Labeldesc** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %59, i64 %61
  %63 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %62, i32 0, i32 3
  store i8 %56, i8* %63, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.Labellist*, %struct.Labellist** %7, align 8
  %66 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %65, i32 0, i32 0
  %67 = load %struct.Labeldesc*, %struct.Labeldesc** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %67, i64 %69
  %71 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %70, i32 0, i32 1
  store i32 %64, i32* %71, align 8
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  %74 = load %struct.Labellist*, %struct.Labellist** %7, align 8
  %75 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %11, align 4
  ret i32 %76
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @findgotos(%struct.LexState*, %struct.Labeldesc*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.Labeldesc*, align 8
  %5 = alloca %struct.Labellist*, align 8
  %6 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.Labeldesc* %1, %struct.Labeldesc** %4, align 8
  %7 = load %struct.LexState*, %struct.LexState** %3, align 8
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 10
  %9 = load %struct.Dyndata*, %struct.Dyndata** %8, align 8
  %10 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %9, i32 0, i32 1
  store %struct.Labellist* %10, %struct.Labellist** %5, align 8
  %11 = load %struct.LexState*, %struct.LexState** %3, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 5
  %13 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i32 0, i32 3
  %15 = load %struct.BlockCnt*, %struct.BlockCnt** %14, align 8
  %16 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  br label %18

; <label>:18:                                     ; preds = %44, %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.Labellist*, %struct.Labellist** %5, align 8
  %21 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %45

; <label>:24:                                     ; preds = %18
  %25 = load %struct.Labellist*, %struct.Labellist** %5, align 8
  %26 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %25, i32 0, i32 0
  %27 = load %struct.Labeldesc*, %struct.Labeldesc** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %27, i64 %29
  %31 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %30, i32 0, i32 0
  %32 = load %struct.TString*, %struct.TString** %31, align 8
  %33 = load %struct.Labeldesc*, %struct.Labeldesc** %4, align 8
  %34 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %33, i32 0, i32 0
  %35 = load %struct.TString*, %struct.TString** %34, align 8
  %36 = icmp eq %struct.TString* %32, %35
  br i1 %36, label %37, label %41

; <label>:37:                                     ; preds = %24
  %38 = load %struct.LexState*, %struct.LexState** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.Labeldesc*, %struct.Labeldesc** %4, align 8
  call void @closegoto(%struct.LexState* %38, i32 %39, %struct.Labeldesc* %40)
  br label %44

; <label>:41:                                     ; preds = %24
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %44

; <label>:44:                                     ; preds = %41, %37
  br label %18

; <label>:45:                                     ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @closegoto(%struct.LexState*, i32, %struct.Labeldesc*) #0 {
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Labeldesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.FuncState*, align 8
  %9 = alloca %struct.Labellist*, align 8
  %10 = alloca %struct.Labeldesc*, align 8
  %11 = alloca %struct.TString*, align 8
  %12 = alloca i8*, align 8
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.Labeldesc* %2, %struct.Labeldesc** %6, align 8
  %13 = load %struct.LexState*, %struct.LexState** %4, align 8
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 5
  %15 = load %struct.FuncState*, %struct.FuncState** %14, align 8
  store %struct.FuncState* %15, %struct.FuncState** %8, align 8
  %16 = load %struct.LexState*, %struct.LexState** %4, align 8
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %16, i32 0, i32 10
  %18 = load %struct.Dyndata*, %struct.Dyndata** %17, align 8
  %19 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %18, i32 0, i32 1
  store %struct.Labellist* %19, %struct.Labellist** %9, align 8
  %20 = load %struct.Labellist*, %struct.Labellist** %9, align 8
  %21 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %20, i32 0, i32 0
  %22 = load %struct.Labeldesc*, %struct.Labeldesc** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %22, i64 %24
  store %struct.Labeldesc* %25, %struct.Labeldesc** %10, align 8
  %26 = load %struct.Labeldesc*, %struct.Labeldesc** %10, align 8
  %27 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %26, i32 0, i32 3
  %28 = load i8, i8* %27, align 8
  %29 = zext i8 %28 to i32
  %30 = load %struct.Labeldesc*, %struct.Labeldesc** %6, align 8
  %31 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %30, i32 0, i32 3
  %32 = load i8, i8* %31, align 8
  %33 = zext i8 %32 to i32
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %61

; <label>:35:                                     ; preds = %3
  %36 = load %struct.FuncState*, %struct.FuncState** %8, align 8
  %37 = load %struct.Labeldesc*, %struct.Labeldesc** %10, align 8
  %38 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %37, i32 0, i32 3
  %39 = load i8, i8* %38, align 8
  %40 = zext i8 %39 to i32
  %41 = call %struct.LocVar* @getlocvar(%struct.FuncState* %36, i32 %40)
  %42 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %41, i32 0, i32 0
  %43 = load %struct.TString*, %struct.TString** %42, align 8
  store %struct.TString* %43, %struct.TString** %11, align 8
  %44 = load %struct.LexState*, %struct.LexState** %4, align 8
  %45 = getelementptr inbounds %struct.LexState, %struct.LexState* %44, i32 0, i32 6
  %46 = load %struct.lua_State*, %struct.lua_State** %45, align 8
  %47 = load %struct.Labeldesc*, %struct.Labeldesc** %10, align 8
  %48 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %47, i32 0, i32 0
  %49 = load %struct.TString*, %struct.TString** %48, align 8
  %50 = bitcast %struct.TString* %49 to i8*
  %51 = getelementptr inbounds i8, i8* %50, i64 24
  %52 = load %struct.Labeldesc*, %struct.Labeldesc** %10, align 8
  %53 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TString*, %struct.TString** %11, align 8
  %56 = bitcast %struct.TString* %55 to i8*
  %57 = getelementptr inbounds i8, i8* %56, i64 24
  %58 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %46, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i32 0, i32 0), i8* %51, i32 %54, i8* %57)
  store i8* %58, i8** %12, align 8
  %59 = load %struct.LexState*, %struct.LexState** %4, align 8
  %60 = load i8*, i8** %12, align 8
  call void @semerror(%struct.LexState* %59, i8* %60) #5
  unreachable

; <label>:61:                                     ; preds = %3
  %62 = load %struct.FuncState*, %struct.FuncState** %8, align 8
  %63 = load %struct.Labeldesc*, %struct.Labeldesc** %10, align 8
  %64 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.Labeldesc*, %struct.Labeldesc** %6, align 8
  %67 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  call void @luaK_patchlist(%struct.FuncState* %62, i32 %65, i32 %68)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %7, align 4
  br label %70

; <label>:70:                                     ; preds = %93, %61
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.Labellist*, %struct.Labellist** %9, align 8
  %73 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = icmp slt i32 %71, %75
  br i1 %76, label %77, label %96

; <label>:77:                                     ; preds = %70
  %78 = load %struct.Labellist*, %struct.Labellist** %9, align 8
  %79 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %78, i32 0, i32 0
  %80 = load %struct.Labeldesc*, %struct.Labeldesc** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %80, i64 %82
  %84 = load %struct.Labellist*, %struct.Labellist** %9, align 8
  %85 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %84, i32 0, i32 0
  %86 = load %struct.Labeldesc*, %struct.Labeldesc** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %86, i64 %89
  %91 = bitcast %struct.Labeldesc* %83 to i8*
  %92 = bitcast %struct.Labeldesc* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 24, i32 8, i1 false)
  br label %93

; <label>:93:                                     ; preds = %77
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %70

; <label>:96:                                     ; preds = %70
  %97 = load %struct.Labellist*, %struct.Labellist** %9, align 8
  %98 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %98, align 8
  ret void
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @semerror(%struct.LexState*, i8*) #2 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca i8*, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.LexState*, %struct.LexState** %3, align 8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.Token, %struct.Token* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = load %struct.LexState*, %struct.LexState** %3, align 8
  %9 = load i8*, i8** %4, align 8
  call void @luaX_syntaxerror(%struct.LexState* %8, i8* %9) #5
  unreachable
                                                  ; No predecessors!
  unreachable
}

declare hidden void @luaK_patchlist(%struct.FuncState*, i32, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findlabel(%struct.LexState*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.BlockCnt*, align 8
  %8 = alloca %struct.Dyndata*, align 8
  %9 = alloca %struct.Labeldesc*, align 8
  %10 = alloca %struct.Labeldesc*, align 8
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.LexState*, %struct.LexState** %4, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 5
  %13 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i32 0, i32 3
  %15 = load %struct.BlockCnt*, %struct.BlockCnt** %14, align 8
  store %struct.BlockCnt* %15, %struct.BlockCnt** %7, align 8
  %16 = load %struct.LexState*, %struct.LexState** %4, align 8
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %16, i32 0, i32 10
  %18 = load %struct.Dyndata*, %struct.Dyndata** %17, align 8
  store %struct.Dyndata* %18, %struct.Dyndata** %8, align 8
  %19 = load %struct.Dyndata*, %struct.Dyndata** %8, align 8
  %20 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %20, i32 0, i32 0
  %22 = load %struct.Labeldesc*, %struct.Labeldesc** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %22, i64 %24
  store %struct.Labeldesc* %25, %struct.Labeldesc** %9, align 8
  %26 = load %struct.BlockCnt*, %struct.BlockCnt** %7, align 8
  %27 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  br label %29

; <label>:29:                                     ; preds = %92, %2
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.Dyndata*, %struct.Dyndata** %8, align 8
  %32 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %95

; <label>:36:                                     ; preds = %29
  %37 = load %struct.Dyndata*, %struct.Dyndata** %8, align 8
  %38 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %38, i32 0, i32 0
  %40 = load %struct.Labeldesc*, %struct.Labeldesc** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %40, i64 %42
  store %struct.Labeldesc* %43, %struct.Labeldesc** %10, align 8
  %44 = load %struct.Labeldesc*, %struct.Labeldesc** %10, align 8
  %45 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %44, i32 0, i32 0
  %46 = load %struct.TString*, %struct.TString** %45, align 8
  %47 = load %struct.Labeldesc*, %struct.Labeldesc** %9, align 8
  %48 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %47, i32 0, i32 0
  %49 = load %struct.TString*, %struct.TString** %48, align 8
  %50 = icmp eq %struct.TString* %46, %49
  br i1 %50, label %51, label %91

; <label>:51:                                     ; preds = %36
  %52 = load %struct.Labeldesc*, %struct.Labeldesc** %9, align 8
  %53 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %52, i32 0, i32 3
  %54 = load i8, i8* %53, align 8
  %55 = zext i8 %54 to i32
  %56 = load %struct.Labeldesc*, %struct.Labeldesc** %10, align 8
  %57 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %56, i32 0, i32 3
  %58 = load i8, i8* %57, align 8
  %59 = zext i8 %58 to i32
  %60 = icmp sgt i32 %55, %59
  br i1 %60, label %61, label %87

; <label>:61:                                     ; preds = %51
  %62 = load %struct.BlockCnt*, %struct.BlockCnt** %7, align 8
  %63 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %62, i32 0, i32 4
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

; <label>:67:                                     ; preds = %61
  %68 = load %struct.Dyndata*, %struct.Dyndata** %8, align 8
  %69 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.BlockCnt*, %struct.BlockCnt** %7, align 8
  %73 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %87

; <label>:76:                                     ; preds = %67, %61
  %77 = load %struct.LexState*, %struct.LexState** %4, align 8
  %78 = getelementptr inbounds %struct.LexState, %struct.LexState* %77, i32 0, i32 5
  %79 = load %struct.FuncState*, %struct.FuncState** %78, align 8
  %80 = load %struct.Labeldesc*, %struct.Labeldesc** %9, align 8
  %81 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.Labeldesc*, %struct.Labeldesc** %10, align 8
  %84 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %83, i32 0, i32 3
  %85 = load i8, i8* %84, align 8
  %86 = zext i8 %85 to i32
  call void @luaK_patchclose(%struct.FuncState* %79, i32 %82, i32 %86)
  br label %87

; <label>:87:                                     ; preds = %76, %67, %51
  %88 = load %struct.LexState*, %struct.LexState** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.Labeldesc*, %struct.Labeldesc** %10, align 8
  call void @closegoto(%struct.LexState* %88, i32 %89, %struct.Labeldesc* %90)
  store i32 1, i32* %3, align 4
  br label %96

; <label>:91:                                     ; preds = %36
  br label %92

; <label>:92:                                     ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %29

; <label>:95:                                     ; preds = %29
  store i32 0, i32* %3, align 4
  br label %96

; <label>:96:                                     ; preds = %95, %87
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare hidden i32 @luaK_getlabel(%struct.FuncState*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cond(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca %struct.expdesc, align 8
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %4 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @expr(%struct.LexState* %4, %struct.expdesc* %3)
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i32 0, i32 0
  store i32 3, i32* %9, align 8
  br label %10

; <label>:10:                                     ; preds = %8, %1
  %11 = load %struct.LexState*, %struct.LexState** %2, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 5
  %13 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  call void @luaK_goiftrue(%struct.FuncState* %13, %struct.expdesc* %3)
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  ret i32 %15
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @error_expected(%struct.LexState*, i32) #2 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.LexState*, %struct.LexState** %3, align 8
  %6 = load %struct.LexState*, %struct.LexState** %3, align 8
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 6
  %8 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %9 = load %struct.LexState*, %struct.LexState** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i8* @luaX_token2str(%struct.LexState* %9, i32 %10)
  %12 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8* %11)
  call void @luaX_syntaxerror(%struct.LexState* %5, i8* %12) #5
  unreachable
                                                  ; No predecessors!
  unreachable
}

declare hidden i8* @luaX_token2str(%struct.LexState*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fornum(%struct.LexState*, %struct.TString*, i32) #0 {
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca %struct.TString*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.FuncState*, align 8
  %8 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store %struct.TString* %1, %struct.TString** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.LexState*, %struct.LexState** %4, align 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 5
  %11 = load %struct.FuncState*, %struct.FuncState** %10, align 8
  store %struct.FuncState* %11, %struct.FuncState** %7, align 8
  %12 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i32 0, i32 13
  %14 = load i8, i8* %13, align 4
  %15 = zext i8 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @new_localvarliteral_(%struct.LexState* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i64 11)
  %17 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @new_localvarliteral_(%struct.LexState* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i64 11)
  %18 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @new_localvarliteral_(%struct.LexState* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i64 10)
  %19 = load %struct.LexState*, %struct.LexState** %4, align 8
  %20 = load %struct.TString*, %struct.TString** %5, align 8
  call void @new_localvar(%struct.LexState* %19, %struct.TString* %20)
  %21 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @checknext(%struct.LexState* %21, i32 61)
  %22 = load %struct.LexState*, %struct.LexState** %4, align 8
  %23 = call i32 @exp1(%struct.LexState* %22)
  %24 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @checknext(%struct.LexState* %24, i32 44)
  %25 = load %struct.LexState*, %struct.LexState** %4, align 8
  %26 = call i32 @exp1(%struct.LexState* %25)
  %27 = load %struct.LexState*, %struct.LexState** %4, align 8
  %28 = call i32 @testnext(%struct.LexState* %27, i32 44)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %3
  %31 = load %struct.LexState*, %struct.LexState** %4, align 8
  %32 = call i32 @exp1(%struct.LexState* %31)
  br label %43

; <label>:33:                                     ; preds = %3
  %34 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %35 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %35, i32 0, i32 13
  %37 = load i8, i8* %36, align 4
  %38 = zext i8 %37 to i32
  %39 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %40 = call i32 @luaK_intK(%struct.FuncState* %39, i64 1)
  %41 = call i32 @luaK_codek(%struct.FuncState* %34, i32 %38, i32 %40)
  %42 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  call void @luaK_reserveregs(%struct.FuncState* %42, i32 1)
  br label %43

; <label>:43:                                     ; preds = %33, %30
  %44 = load %struct.LexState*, %struct.LexState** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  call void @forbody(%struct.LexState* %44, i32 %45, i32 %46, i32 1, i32 1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forlist(%struct.LexState*, %struct.TString*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.TString*, align 8
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca %struct.expdesc, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.TString* %1, %struct.TString** %4, align 8
  %10 = load %struct.LexState*, %struct.LexState** %3, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 5
  %12 = load %struct.FuncState*, %struct.FuncState** %11, align 8
  store %struct.FuncState* %12, %struct.FuncState** %5, align 8
  store i32 4, i32* %7, align 4
  %13 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i32 0, i32 13
  %15 = load i8, i8* %14, align 4
  %16 = zext i8 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @new_localvarliteral_(%struct.LexState* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i64 15)
  %18 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @new_localvarliteral_(%struct.LexState* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i64 11)
  %19 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @new_localvarliteral_(%struct.LexState* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i64 13)
  %20 = load %struct.LexState*, %struct.LexState** %3, align 8
  %21 = load %struct.TString*, %struct.TString** %4, align 8
  call void @new_localvar(%struct.LexState* %20, %struct.TString* %21)
  br label %22

; <label>:22:                                     ; preds = %26, %2
  %23 = load %struct.LexState*, %struct.LexState** %3, align 8
  %24 = call i32 @testnext(%struct.LexState* %23, i32 44)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

; <label>:26:                                     ; preds = %22
  %27 = load %struct.LexState*, %struct.LexState** %3, align 8
  %28 = load %struct.LexState*, %struct.LexState** %3, align 8
  %29 = call %struct.TString* @str_checkname(%struct.LexState* %28)
  call void @new_localvar(%struct.LexState* %27, %struct.TString* %29)
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %22

; <label>:32:                                     ; preds = %22
  %33 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @checknext(%struct.LexState* %33, i32 268)
  %34 = load %struct.LexState*, %struct.LexState** %3, align 8
  %35 = getelementptr inbounds %struct.LexState, %struct.LexState* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.LexState*, %struct.LexState** %3, align 8
  %38 = load %struct.LexState*, %struct.LexState** %3, align 8
  %39 = call i32 @explist(%struct.LexState* %38, %struct.expdesc* %6)
  call void @adjust_assign(%struct.LexState* %37, i32 3, i32 %39, %struct.expdesc* %6)
  %40 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  call void @luaK_checkstack(%struct.FuncState* %40, i32 3)
  %41 = load %struct.LexState*, %struct.LexState** %3, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 3
  call void @forbody(%struct.LexState* %41, i32 %42, i32 %43, i32 %45, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exp1(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %5 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @expr(%struct.LexState* %5, %struct.expdesc* %3)
  %6 = load %struct.LexState*, %struct.LexState** %2, align 8
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 5
  %8 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %8, %struct.expdesc* %3)
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i32 0, i32 1
  %10 = bitcast %union.anon.6* %9 to i32*
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  ret i32 %12
}

declare hidden i32 @luaK_codek(%struct.FuncState*, i32, i32) #1

declare hidden i32 @luaK_intK(%struct.FuncState*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forbody(%struct.LexState*, i32, i32, i32, i32) #0 {
  %6 = alloca %struct.LexState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.BlockCnt, align 8
  %12 = alloca %struct.FuncState*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.LexState*, %struct.LexState** %6, align 8
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 5
  %17 = load %struct.FuncState*, %struct.FuncState** %16, align 8
  store %struct.FuncState* %17, %struct.FuncState** %12, align 8
  %18 = load %struct.LexState*, %struct.LexState** %6, align 8
  call void @adjustlocalvars(%struct.LexState* %18, i32 3)
  %19 = load %struct.LexState*, %struct.LexState** %6, align 8
  call void @checknext(%struct.LexState* %19, i32 259)
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

; <label>:22:                                     ; preds = %5
  %23 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @luaK_codeABx(%struct.FuncState* %23, i32 40, i32 %24, i32 131070)
  br label %29

; <label>:26:                                     ; preds = %5
  %27 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %28 = call i32 @luaK_jump(%struct.FuncState* %27)
  br label %29

; <label>:29:                                     ; preds = %26, %22
  %30 = phi i32 [ %25, %22 ], [ %28, %26 ]
  store i32 %30, i32* %13, align 4
  %31 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  call void @enterblock(%struct.FuncState* %31, %struct.BlockCnt* %11, i8 zeroext 0)
  %32 = load %struct.LexState*, %struct.LexState** %6, align 8
  %33 = load i32, i32* %9, align 4
  call void @adjustlocalvars(%struct.LexState* %32, i32 %33)
  %34 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %35 = load i32, i32* %9, align 4
  call void @luaK_reserveregs(%struct.FuncState* %34, i32 %35)
  %36 = load %struct.LexState*, %struct.LexState** %6, align 8
  call void @block(%struct.LexState* %36)
  %37 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  call void @leaveblock(%struct.FuncState* %37)
  %38 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %39 = load i32, i32* %13, align 4
  call void @luaK_patchtohere(%struct.FuncState* %38, i32 %39)
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %29
  %43 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @luaK_codeABx(%struct.FuncState* %43, i32 39, i32 %44, i32 131070)
  store i32 %45, i32* %14, align 4
  br label %57

; <label>:46:                                     ; preds = %29
  %47 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @luaK_codeABC(%struct.FuncState* %47, i32 41, i32 %48, i32 0, i32 %49)
  %51 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %52 = load i32, i32* %8, align 4
  call void @luaK_fixline(%struct.FuncState* %51, i32 %52)
  %53 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 2
  %56 = call i32 @luaK_codeABx(%struct.FuncState* %53, i32 42, i32 %55, i32 131070)
  store i32 %56, i32* %14, align 4
  br label %57

; <label>:57:                                     ; preds = %46, %42
  %58 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  call void @luaK_patchlist(%struct.FuncState* %58, i32 %59, i32 %61)
  %62 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %63 = load i32, i32* %8, align 4
  call void @luaK_fixline(%struct.FuncState* %62, i32 %63)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_assign(%struct.LexState*, i32, i32, %struct.expdesc*) #0 {
  %5 = alloca %struct.LexState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.expdesc*, align 8
  %9 = alloca %struct.FuncState*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.expdesc* %3, %struct.expdesc** %8, align 8
  %12 = load %struct.LexState*, %struct.LexState** %5, align 8
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 5
  %14 = load %struct.FuncState*, %struct.FuncState** %13, align 8
  store %struct.FuncState* %14, %struct.FuncState** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 13
  br i1 %21, label %27, label %22

; <label>:22:                                     ; preds = %4
  %23 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 14
  br i1 %26, label %27, label %44

; <label>:27:                                     ; preds = %22, %4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %27
  store i32 0, i32* %10, align 4
  br label %33

; <label>:33:                                     ; preds = %32, %27
  %34 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  %35 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %36 = load i32, i32* %10, align 4
  call void @luaK_setreturns(%struct.FuncState* %34, %struct.expdesc* %35, i32 %36)
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %43

; <label>:39:                                     ; preds = %33
  %40 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 %41, 1
  call void @luaK_reserveregs(%struct.FuncState* %40, i32 %42)
  br label %43

; <label>:43:                                     ; preds = %39, %33
  br label %66

; <label>:44:                                     ; preds = %22
  %45 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %46 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

; <label>:49:                                     ; preds = %44
  %50 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  %51 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %50, %struct.expdesc* %51)
  br label %52

; <label>:52:                                     ; preds = %49, %44
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %65

; <label>:55:                                     ; preds = %52
  %56 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  %57 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %56, i32 0, i32 13
  %58 = load i8, i8* %57, align 4
  %59 = zext i8 %58 to i32
  store i32 %59, i32* %11, align 4
  %60 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  %61 = load i32, i32* %10, align 4
  call void @luaK_reserveregs(%struct.FuncState* %60, i32 %61)
  %62 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  call void @luaK_nil(%struct.FuncState* %62, i32 %63, i32 %64)
  br label %65

; <label>:65:                                     ; preds = %55, %52
  br label %66

; <label>:66:                                     ; preds = %65, %43
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %82

; <label>:70:                                     ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load %struct.LexState*, %struct.LexState** %5, align 8
  %75 = getelementptr inbounds %struct.LexState, %struct.LexState* %74, i32 0, i32 5
  %76 = load %struct.FuncState*, %struct.FuncState** %75, align 8
  %77 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %76, i32 0, i32 13
  %78 = load i8, i8* %77, align 4
  %79 = zext i8 %78 to i32
  %80 = sub nsw i32 %79, %73
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %77, align 4
  br label %82

; <label>:82:                                     ; preds = %70, %66
  ret void
}

declare hidden void @luaK_checkstack(%struct.FuncState*, i32) #1

declare hidden void @luaK_nil(%struct.FuncState*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @funcname(%struct.LexState*, %struct.expdesc*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.expdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.expdesc* %1, %struct.expdesc** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.LexState*, %struct.LexState** %3, align 8
  %7 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @singlevar(%struct.LexState* %6, %struct.expdesc* %7)
  br label %8

; <label>:8:                                      ; preds = %14, %2
  %9 = load %struct.LexState*, %struct.LexState** %3, align 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.Token, %struct.Token* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 46
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %8
  %15 = load %struct.LexState*, %struct.LexState** %3, align 8
  %16 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @fieldsel(%struct.LexState* %15, %struct.expdesc* %16)
  br label %8

; <label>:17:                                     ; preds = %8
  %18 = load %struct.LexState*, %struct.LexState** %3, align 8
  %19 = getelementptr inbounds %struct.LexState, %struct.LexState* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.Token, %struct.Token* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 58
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %17
  store i32 1, i32* %5, align 4
  %24 = load %struct.LexState*, %struct.LexState** %3, align 8
  %25 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @fieldsel(%struct.LexState* %24, %struct.expdesc* %25)
  br label %26

; <label>:26:                                     ; preds = %23, %17
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare hidden void @luaK_storevar(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkrepeated(%struct.FuncState*, %struct.Labellist*, %struct.TString*) #0 {
  %4 = alloca %struct.FuncState*, align 8
  %5 = alloca %struct.Labellist*, align 8
  %6 = alloca %struct.TString*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.FuncState* %0, %struct.FuncState** %4, align 8
  store %struct.Labellist* %1, %struct.Labellist** %5, align 8
  store %struct.TString* %2, %struct.TString** %6, align 8
  %9 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 3
  %11 = load %struct.BlockCnt*, %struct.BlockCnt** %10, align 8
  %12 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  br label %14

; <label>:14:                                     ; preds = %54, %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.Labellist*, %struct.Labellist** %5, align 8
  %17 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %57

; <label>:20:                                     ; preds = %14
  %21 = load %struct.TString*, %struct.TString** %6, align 8
  %22 = load %struct.Labellist*, %struct.Labellist** %5, align 8
  %23 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %22, i32 0, i32 0
  %24 = load %struct.Labeldesc*, %struct.Labeldesc** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %24, i64 %26
  %28 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %27, i32 0, i32 0
  %29 = load %struct.TString*, %struct.TString** %28, align 8
  %30 = icmp eq %struct.TString* %21, %29
  br i1 %30, label %31, label %53

; <label>:31:                                     ; preds = %20
  %32 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %32, i32 0, i32 2
  %34 = load %struct.LexState*, %struct.LexState** %33, align 8
  %35 = getelementptr inbounds %struct.LexState, %struct.LexState* %34, i32 0, i32 6
  %36 = load %struct.lua_State*, %struct.lua_State** %35, align 8
  %37 = load %struct.TString*, %struct.TString** %6, align 8
  %38 = bitcast %struct.TString* %37 to i8*
  %39 = getelementptr inbounds i8, i8* %38, i64 24
  %40 = load %struct.Labellist*, %struct.Labellist** %5, align 8
  %41 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %40, i32 0, i32 0
  %42 = load %struct.Labeldesc*, %struct.Labeldesc** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %42, i64 %44
  %46 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i32 0, i32 0), i8* %39, i32 %47)
  store i8* %48, i8** %8, align 8
  %49 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %50 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %49, i32 0, i32 2
  %51 = load %struct.LexState*, %struct.LexState** %50, align 8
  %52 = load i8*, i8** %8, align 8
  call void @semerror(%struct.LexState* %51, i8* %52) #5
  unreachable

; <label>:53:                                     ; preds = %20
  br label %54

; <label>:54:                                     ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %14

; <label>:57:                                     ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skipnoopstat(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  br label %3

; <label>:3:                                      ; preds = %17, %1
  %4 = load %struct.LexState*, %struct.LexState** %2, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.Token, %struct.Token* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 59
  br i1 %8, label %15, label %9

; <label>:9:                                      ; preds = %3
  %10 = load %struct.LexState*, %struct.LexState** %2, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.Token, %struct.Token* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 288
  br label %15

; <label>:15:                                     ; preds = %9, %3
  %16 = phi i1 [ true, %3 ], [ %14, %9 ]
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %15
  %18 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @statement(%struct.LexState* %18)
  br label %3

; <label>:19:                                     ; preds = %15
  ret void
}

declare hidden i32 @luaK_exp2anyreg(%struct.FuncState*, %struct.expdesc*) #1

declare hidden void @luaK_ret(%struct.FuncState*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assignment(%struct.LexState*, %struct.LHS_assign*, i32) #0 {
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca %struct.LHS_assign*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.expdesc, align 8
  %8 = alloca %struct.LHS_assign, align 8
  %9 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store %struct.LHS_assign* %1, %struct.LHS_assign** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %11 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ule i32 8, %13
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %3
  %16 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %17 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ule i32 %19, 10
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %15, %3
  %22 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @luaX_syntaxerror(%struct.LexState* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0)) #5
  unreachable

; <label>:23:                                     ; preds = %15
  %24 = load %struct.LexState*, %struct.LexState** %4, align 8
  %25 = call i32 @testnext(%struct.LexState* %24, i32 44)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %55

; <label>:27:                                     ; preds = %23
  %28 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %29 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %8, i32 0, i32 0
  store %struct.LHS_assign* %28, %struct.LHS_assign** %29, align 8
  %30 = load %struct.LexState*, %struct.LexState** %4, align 8
  %31 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %8, i32 0, i32 1
  call void @suffixedexp(%struct.LexState* %30, %struct.expdesc* %31)
  %32 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %8, i32 0, i32 1
  %33 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 10
  br i1 %35, label %36, label %40

; <label>:36:                                     ; preds = %27
  %37 = load %struct.LexState*, %struct.LexState** %4, align 8
  %38 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %39 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %8, i32 0, i32 1
  call void @check_conflict(%struct.LexState* %37, %struct.LHS_assign* %38, %struct.expdesc* %39)
  br label %40

; <label>:40:                                     ; preds = %36, %27
  %41 = load %struct.LexState*, %struct.LexState** %4, align 8
  %42 = getelementptr inbounds %struct.LexState, %struct.LexState* %41, i32 0, i32 5
  %43 = load %struct.FuncState*, %struct.FuncState** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.LexState*, %struct.LexState** %4, align 8
  %46 = getelementptr inbounds %struct.LexState, %struct.LexState* %45, i32 0, i32 6
  %47 = load %struct.lua_State*, %struct.lua_State** %46, align 8
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 22
  %49 = load i16, i16* %48, align 2
  %50 = zext i16 %49 to i32
  %51 = add nsw i32 %44, %50
  call void @checklimit(%struct.FuncState* %43, i32 %51, i32 200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  %52 = load %struct.LexState*, %struct.LexState** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  call void @assignment(%struct.LexState* %52, %struct.LHS_assign* %8, i32 %54)
  br label %76

; <label>:55:                                     ; preds = %23
  %56 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @checknext(%struct.LexState* %56, i32 61)
  %57 = load %struct.LexState*, %struct.LexState** %4, align 8
  %58 = call i32 @explist(%struct.LexState* %57, %struct.expdesc* %7)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %66

; <label>:62:                                     ; preds = %55
  %63 = load %struct.LexState*, %struct.LexState** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %9, align 4
  call void @adjust_assign(%struct.LexState* %63, i32 %64, i32 %65, %struct.expdesc* %7)
  br label %75

; <label>:66:                                     ; preds = %55
  %67 = load %struct.LexState*, %struct.LexState** %4, align 8
  %68 = getelementptr inbounds %struct.LexState, %struct.LexState* %67, i32 0, i32 5
  %69 = load %struct.FuncState*, %struct.FuncState** %68, align 8
  call void @luaK_setoneret(%struct.FuncState* %69, %struct.expdesc* %7)
  %70 = load %struct.LexState*, %struct.LexState** %4, align 8
  %71 = getelementptr inbounds %struct.LexState, %struct.LexState* %70, i32 0, i32 5
  %72 = load %struct.FuncState*, %struct.FuncState** %71, align 8
  %73 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %74 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %73, i32 0, i32 1
  call void @luaK_storevar(%struct.FuncState* %72, %struct.expdesc* %74, %struct.expdesc* %7)
  br label %89

; <label>:75:                                     ; preds = %62
  br label %76

; <label>:76:                                     ; preds = %75, %40
  %77 = load %struct.LexState*, %struct.LexState** %4, align 8
  %78 = getelementptr inbounds %struct.LexState, %struct.LexState* %77, i32 0, i32 5
  %79 = load %struct.FuncState*, %struct.FuncState** %78, align 8
  %80 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %79, i32 0, i32 13
  %81 = load i8, i8* %80, align 4
  %82 = zext i8 %81 to i32
  %83 = sub nsw i32 %82, 1
  call void @init_exp(%struct.expdesc* %7, i32 7, i32 %83)
  %84 = load %struct.LexState*, %struct.LexState** %4, align 8
  %85 = getelementptr inbounds %struct.LexState, %struct.LexState* %84, i32 0, i32 5
  %86 = load %struct.FuncState*, %struct.FuncState** %85, align 8
  %87 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %88 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %87, i32 0, i32 1
  call void @luaK_storevar(%struct.FuncState* %86, %struct.expdesc* %88, %struct.expdesc* %7)
  br label %89

; <label>:89:                                     ; preds = %76, %66
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_conflict(%struct.LexState*, %struct.LHS_assign*, %struct.expdesc*) #0 {
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca %struct.LHS_assign*, align 8
  %6 = alloca %struct.expdesc*, align 8
  %7 = alloca %struct.FuncState*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store %struct.LHS_assign* %1, %struct.LHS_assign** %5, align 8
  store %struct.expdesc* %2, %struct.expdesc** %6, align 8
  %11 = load %struct.LexState*, %struct.LexState** %4, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 5
  %13 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  store %struct.FuncState* %13, %struct.FuncState** %7, align 8
  %14 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 13
  %16 = load i8, i8* %15, align 4
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %18

; <label>:18:                                     ; preds = %93, %3
  %19 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %20 = icmp ne %struct.LHS_assign* %19, null
  br i1 %20, label %21, label %97

; <label>:21:                                     ; preds = %18
  %22 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %23 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %92

; <label>:27:                                     ; preds = %21
  %28 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %29 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %29, i32 0, i32 1
  %31 = bitcast %union.anon.6* %30 to %struct.anon.7*
  %32 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %31, i32 0, i32 2
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %65

; <label>:39:                                     ; preds = %27
  %40 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %41 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %41, i32 0, i32 1
  %43 = bitcast %union.anon.6* %42 to %struct.anon.7*
  %44 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %43, i32 0, i32 1
  %45 = load i8, i8* %44, align 2
  %46 = zext i8 %45 to i32
  %47 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %47, i32 0, i32 1
  %49 = bitcast %union.anon.6* %48 to i32*
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %46, %50
  br i1 %51, label %52, label %65

; <label>:52:                                     ; preds = %39
  store i32 1, i32* %9, align 4
  %53 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %54 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %54, i32 0, i32 1
  %56 = bitcast %union.anon.6* %55 to %struct.anon.7*
  %57 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %56, i32 0, i32 2
  store i8 8, i8* %57, align 1
  %58 = load i32, i32* %8, align 4
  %59 = trunc i32 %58 to i8
  %60 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %61 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %61, i32 0, i32 1
  %63 = bitcast %union.anon.6* %62 to %struct.anon.7*
  %64 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %63, i32 0, i32 1
  store i8 %59, i8* %64, align 2
  br label %65

; <label>:65:                                     ; preds = %52, %39, %27
  %66 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %67 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 8
  br i1 %69, label %70, label %91

; <label>:70:                                     ; preds = %65
  %71 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %72 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %72, i32 0, i32 1
  %74 = bitcast %union.anon.6* %73 to %struct.anon.7*
  %75 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %74, i32 0, i32 0
  %76 = load i16, i16* %75, align 8
  %77 = sext i16 %76 to i32
  %78 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %79 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %78, i32 0, i32 1
  %80 = bitcast %union.anon.6* %79 to i32*
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %77, %81
  br i1 %82, label %83, label %91

; <label>:83:                                     ; preds = %70
  store i32 1, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = trunc i32 %84 to i16
  %86 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %87 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %87, i32 0, i32 1
  %89 = bitcast %union.anon.6* %88 to %struct.anon.7*
  %90 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %89, i32 0, i32 0
  store i16 %85, i16* %90, align 8
  br label %91

; <label>:91:                                     ; preds = %83, %70, %65
  br label %92

; <label>:92:                                     ; preds = %91, %21
  br label %93

; <label>:93:                                     ; preds = %92
  %94 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %95 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %94, i32 0, i32 0
  %96 = load %struct.LHS_assign*, %struct.LHS_assign** %95, align 8
  store %struct.LHS_assign* %96, %struct.LHS_assign** %5, align 8
  br label %18

; <label>:97:                                     ; preds = %18
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %116

; <label>:100:                                    ; preds = %97
  %101 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %102 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 8
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 0, i32 5
  store i32 %106, i32* %10, align 4
  %107 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %111 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %110, i32 0, i32 1
  %112 = bitcast %union.anon.6* %111 to i32*
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @luaK_codeABC(%struct.FuncState* %107, i32 %108, i32 %109, i32 %113, i32 0)
  %115 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  call void @luaK_reserveregs(%struct.FuncState* %115, i32 1)
  br label %116

; <label>:116:                                    ; preds = %100, %97
  ret void
}

declare hidden void @luaK_setoneret(%struct.FuncState*, %struct.expdesc*) #1

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #1

declare hidden void @luaC_step(%struct.lua_State*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
