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
%union.GCUnion = type { %struct.lua_State }
%struct.expdesc = type { i32, %union.anon.7, i32, i32 }
%union.anon.7 = type { i64 }
%struct.LHS_assign = type { %struct.LHS_assign*, %struct.expdesc }
%struct.ConsControl = type { %struct.expdesc, %struct.expdesc*, i32, i32, i32 }
%struct.anon.8 = type { i16, i8 }

@.str = private unnamed_addr constant [9 x i8] c"upvalues\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"main function\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"function at line %d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"too many %s (limit is %d) in %s\00", align 1
@priority = internal constant [21 x %struct.anon.9] [%struct.anon.9 { i8 10, i8 10 }, %struct.anon.9 { i8 10, i8 10 }, %struct.anon.9 { i8 11, i8 11 }, %struct.anon.9 { i8 11, i8 11 }, %struct.anon.9 { i8 14, i8 13 }, %struct.anon.9 { i8 11, i8 11 }, %struct.anon.9 { i8 11, i8 11 }, %struct.anon.9 { i8 6, i8 6 }, %struct.anon.9 { i8 4, i8 4 }, %struct.anon.9 { i8 5, i8 5 }, %struct.anon.9 { i8 7, i8 7 }, %struct.anon.9 { i8 7, i8 7 }, %struct.anon.9 { i8 9, i8 8 }, %struct.anon.9 { i8 3, i8 3 }, %struct.anon.9 { i8 3, i8 3 }, %struct.anon.9 { i8 3, i8 3 }, %struct.anon.9 { i8 3, i8 3 }, %struct.anon.9 { i8 3, i8 3 }, %struct.anon.9 { i8 3, i8 3 }, %struct.anon.9 { i8 2, i8 2 }, %struct.anon.9 { i8 1, i8 1 }], align 16
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
@forbody.forprep = internal global [2 x i32] [i32 75, i32 76], align 4
@forbody.forloop = internal global [2 x i32] [i32 74, i32 78], align 4
@.str.23 = private unnamed_addr constant [27 x i8] c"control structure too long\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"(for generator)\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"(for state)\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"(for control)\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"(for toclose)\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"toclose\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"unknown attribute '%s'\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"label '%s' already defined on line %d\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1

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
  %16 = alloca %struct.TValue*, align 8
  %17 = alloca %struct.LClosure*, align 8
  %18 = alloca %struct.TValue*, align 8
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
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 6
  %24 = load %union.StackValue*, %union.StackValue** %23, align 8
  %25 = bitcast %union.StackValue* %24 to %struct.TValue*
  store %struct.TValue* %25, %struct.TValue** %16, align 8
  %26 = load %struct.LClosure*, %struct.LClosure** %15, align 8
  store %struct.LClosure* %26, %struct.LClosure** %17, align 8
  %27 = load %struct.LClosure*, %struct.LClosure** %17, align 8
  %28 = bitcast %struct.LClosure* %27 to %union.GCUnion*
  %29 = bitcast %union.GCUnion* %28 to %struct.GCObject*
  %30 = load %struct.TValue*, %struct.TValue** %16, align 8
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %30, i32 0, i32 0
  %32 = bitcast %union.Value* %31 to %struct.GCObject**
  store %struct.GCObject* %29, %struct.GCObject** %32, align 8
  %33 = load %struct.TValue*, %struct.TValue** %16, align 8
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i32 0, i32 1
  store i8 86, i8* %34, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  call void @luaD_inctop(%struct.lua_State* %35)
  %36 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %37 = call %struct.Table* @luaH_new(%struct.lua_State* %36)
  %38 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 9
  store %struct.Table* %37, %struct.Table** %38, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 6
  %41 = load %union.StackValue*, %union.StackValue** %40, align 8
  %42 = bitcast %union.StackValue* %41 to %struct.TValue*
  store %struct.TValue* %42, %struct.TValue** %18, align 8
  %43 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 9
  %44 = load %struct.Table*, %struct.Table** %43, align 8
  store %struct.Table* %44, %struct.Table** %19, align 8
  %45 = load %struct.Table*, %struct.Table** %19, align 8
  %46 = bitcast %struct.Table* %45 to %union.GCUnion*
  %47 = bitcast %union.GCUnion* %46 to %struct.GCObject*
  %48 = load %struct.TValue*, %struct.TValue** %18, align 8
  %49 = getelementptr inbounds %struct.TValue, %struct.TValue* %48, i32 0, i32 0
  %50 = bitcast %union.Value* %49 to %struct.GCObject**
  store %struct.GCObject* %47, %struct.GCObject** %50, align 8
  %51 = load %struct.TValue*, %struct.TValue** %18, align 8
  %52 = getelementptr inbounds %struct.TValue, %struct.TValue* %51, i32 0, i32 1
  store i8 69, i8* %52, align 8
  %53 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  call void @luaD_inctop(%struct.lua_State* %53)
  %54 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %55 = call %struct.Proto* @luaF_newproto(%struct.lua_State* %54)
  %56 = load %struct.LClosure*, %struct.LClosure** %15, align 8
  %57 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %56, i32 0, i32 5
  store %struct.Proto* %55, %struct.Proto** %57, align 8
  %58 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 0
  store %struct.Proto* %55, %struct.Proto** %58, align 8
  %59 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call %struct.TString* @luaS_new(%struct.lua_State* %59, i8* %60)
  %62 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 0
  %63 = load %struct.Proto*, %struct.Proto** %62, align 8
  %64 = getelementptr inbounds %struct.Proto, %struct.Proto* %63, i32 0, i32 22
  store %struct.TString* %61, %struct.TString** %64, align 8
  %65 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 0
  %66 = load %struct.Proto*, %struct.Proto** %65, align 8
  %67 = getelementptr inbounds %struct.Proto, %struct.Proto* %66, i32 0, i32 2
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %94

; <label>:72:                                     ; preds = %6
  %73 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 0
  %74 = load %struct.Proto*, %struct.Proto** %73, align 8
  %75 = getelementptr inbounds %struct.Proto, %struct.Proto* %74, i32 0, i32 22
  %76 = load %struct.TString*, %struct.TString** %75, align 8
  %77 = getelementptr inbounds %struct.TString, %struct.TString* %76, i32 0, i32 2
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %79, 24
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

; <label>:82:                                     ; preds = %72
  %83 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %84 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 0
  %85 = load %struct.Proto*, %struct.Proto** %84, align 8
  %86 = bitcast %struct.Proto* %85 to %union.GCUnion*
  %87 = bitcast %union.GCUnion* %86 to %struct.GCObject*
  %88 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 0
  %89 = load %struct.Proto*, %struct.Proto** %88, align 8
  %90 = getelementptr inbounds %struct.Proto, %struct.Proto* %89, i32 0, i32 22
  %91 = load %struct.TString*, %struct.TString** %90, align 8
  %92 = bitcast %struct.TString* %91 to %union.GCUnion*
  %93 = bitcast %union.GCUnion* %92 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %83, %struct.GCObject* %87, %struct.GCObject* %93)
  br label %95

; <label>:94:                                     ; preds = %72, %6
  br label %95

; <label>:95:                                     ; preds = %94, %82
  %96 = load %struct.Mbuffer*, %struct.Mbuffer** %9, align 8
  %97 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 8
  store %struct.Mbuffer* %96, %struct.Mbuffer** %97, align 8
  %98 = load %struct.Dyndata*, %struct.Dyndata** %10, align 8
  %99 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 10
  store %struct.Dyndata* %98, %struct.Dyndata** %99, align 8
  %100 = load %struct.Dyndata*, %struct.Dyndata** %10, align 8
  %101 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %101, i32 0, i32 1
  store i32 0, i32* %102, align 8
  %103 = load %struct.Dyndata*, %struct.Dyndata** %10, align 8
  %104 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %104, i32 0, i32 1
  store i32 0, i32* %105, align 8
  %106 = load %struct.Dyndata*, %struct.Dyndata** %10, align 8
  %107 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %107, i32 0, i32 1
  store i32 0, i32* %108, align 8
  %109 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %110 = load %struct.Zio*, %struct.Zio** %8, align 8
  %111 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 0
  %112 = load %struct.Proto*, %struct.Proto** %111, align 8
  %113 = getelementptr inbounds %struct.Proto, %struct.Proto* %112, i32 0, i32 22
  %114 = load %struct.TString*, %struct.TString** %113, align 8
  %115 = load i32, i32* %12, align 4
  call void @luaX_setinput(%struct.lua_State* %109, %struct.LexState* %13, %struct.Zio* %110, %struct.TString* %114, i32 %115)
  call void @mainfunc(%struct.LexState* %13, %struct.FuncState* %14)
  %116 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %117 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %116, i32 0, i32 6
  %118 = load %union.StackValue*, %union.StackValue** %117, align 8
  %119 = getelementptr inbounds %union.StackValue, %union.StackValue* %118, i32 -1
  store %union.StackValue* %119, %union.StackValue** %117, align 8
  %120 = load %struct.LClosure*, %struct.LClosure** %15, align 8
  ret %struct.LClosure* %120
}

declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) #1

declare hidden void @luaD_inctop(%struct.lua_State*) #1

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) #1

declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) #1

declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) #1

declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) #1

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
  call void @setvararg(%struct.FuncState* %9, i32 0)
  call void @init_exp(%struct.expdesc* %6, i32 8, i32 0)
  %10 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %11 = load %struct.LexState*, %struct.LexState** %3, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 12
  %13 = load %struct.TString*, %struct.TString** %12, align 8
  %14 = call i32 @newupvalue(%struct.FuncState* %10, %struct.TString* %13, %struct.expdesc* %6)
  %15 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_next(%struct.LexState* %15)
  %16 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @statlist(%struct.LexState* %16)
  %17 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @check(%struct.LexState* %17, i32 289)
  %18 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @close_func(%struct.LexState* %18)
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
  %8 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 0
  %10 = load %struct.Proto*, %struct.Proto** %9, align 8
  store %struct.Proto* %10, %struct.Proto** %7, align 8
  %11 = load %struct.LexState*, %struct.LexState** %4, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 5
  %13 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %14 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 1
  store %struct.FuncState* %13, %struct.FuncState** %15, align 8
  %16 = load %struct.LexState*, %struct.LexState** %4, align 8
  %17 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %17, i32 0, i32 2
  store %struct.LexState* %16, %struct.LexState** %18, align 8
  %19 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %20 = load %struct.LexState*, %struct.LexState** %4, align 8
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %20, i32 0, i32 5
  store %struct.FuncState* %19, %struct.FuncState** %21, align 8
  %22 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %22, i32 0, i32 4
  store i32 0, i32* %23, align 8
  %24 = load %struct.Proto*, %struct.Proto** %7, align 8
  %25 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i32 0, i32 13
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %29, i32 0, i32 16
  store i8 0, i8* %30, align 1
  %31 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %31, i32 0, i32 5
  store i32 0, i32* %32, align 4
  %33 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %33, i32 0, i32 15
  store i8 0, i8* %34, align 4
  %35 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %35, i32 0, i32 7
  store i32 0, i32* %36, align 4
  %37 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %37, i32 0, i32 9
  store i32 0, i32* %38, align 4
  %39 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %40 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %39, i32 0, i32 8
  store i32 0, i32* %40, align 8
  %41 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %42 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %41, i32 0, i32 14
  store i8 0, i8* %42, align 1
  %43 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %44 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %43, i32 0, i32 12
  store i16 0, i16* %44, align 8
  %45 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %46 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %45, i32 0, i32 13
  store i8 0, i8* %46, align 2
  %47 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %48 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %47, i32 0, i32 17
  store i8 0, i8* %48, align 2
  %49 = load %struct.LexState*, %struct.LexState** %4, align 8
  %50 = getelementptr inbounds %struct.LexState, %struct.LexState* %49, i32 0, i32 10
  %51 = load %struct.Dyndata*, %struct.Dyndata** %50, align 8
  %52 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %55, i32 0, i32 10
  store i32 %54, i32* %56, align 8
  %57 = load %struct.LexState*, %struct.LexState** %4, align 8
  %58 = getelementptr inbounds %struct.LexState, %struct.LexState* %57, i32 0, i32 10
  %59 = load %struct.Dyndata*, %struct.Dyndata** %58, align 8
  %60 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %64 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %63, i32 0, i32 11
  store i32 %62, i32* %64, align 4
  %65 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %66 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %65, i32 0, i32 3
  store %struct.BlockCnt* null, %struct.BlockCnt** %66, align 8
  %67 = load %struct.LexState*, %struct.LexState** %4, align 8
  %68 = getelementptr inbounds %struct.LexState, %struct.LexState* %67, i32 0, i32 11
  %69 = load %struct.TString*, %struct.TString** %68, align 8
  %70 = load %struct.Proto*, %struct.Proto** %7, align 8
  %71 = getelementptr inbounds %struct.Proto, %struct.Proto* %70, i32 0, i32 22
  store %struct.TString* %69, %struct.TString** %71, align 8
  %72 = load %struct.Proto*, %struct.Proto** %7, align 8
  %73 = getelementptr inbounds %struct.Proto, %struct.Proto* %72, i32 0, i32 5
  store i8 2, i8* %73, align 4
  %74 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %75 = load %struct.BlockCnt*, %struct.BlockCnt** %6, align 8
  call void @enterblock(%struct.FuncState* %74, %struct.BlockCnt* %75, i8 zeroext 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setvararg(%struct.FuncState*, i32) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i32 0, i32 0
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i32 0, i32 4
  store i8 1, i8* %8, align 1
  %9 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @luaK_codeABCk(%struct.FuncState* %9, i32 82, i32 %10, i32 0, i32 0, i32 0)
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
  %17 = bitcast %union.anon.7* %16 to i32*
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
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %16, i32 0, i32 14
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = add nsw i32 %19, 1
  call void @checklimit(%struct.FuncState* %15, i32 %20, i32 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %21 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %21, i32 0, i32 2
  %23 = load %struct.LexState*, %struct.LexState** %22, align 8
  %24 = getelementptr inbounds %struct.LexState, %struct.LexState* %23, i32 0, i32 6
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8
  %26 = load %struct.Proto*, %struct.Proto** %7, align 8
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 18
  %28 = load %struct.Upvaldesc*, %struct.Upvaldesc** %27, align 8
  %29 = bitcast %struct.Upvaldesc* %28 to i8*
  %30 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %30, i32 0, i32 14
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = load %struct.Proto*, %struct.Proto** %7, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 6
  %36 = call i8* @luaM_growaux_(%struct.lua_State* %25, i8* %29, i32 %33, i32* %35, i32 16, i32 255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %37 = bitcast i8* %36 to %struct.Upvaldesc*
  %38 = load %struct.Proto*, %struct.Proto** %7, align 8
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i32 0, i32 18
  store %struct.Upvaldesc* %37, %struct.Upvaldesc** %39, align 8
  br label %40

; <label>:40:                                     ; preds = %46, %3
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.Proto*, %struct.Proto** %7, align 8
  %43 = getelementptr inbounds %struct.Proto, %struct.Proto* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %55

; <label>:46:                                     ; preds = %40
  %47 = load %struct.Proto*, %struct.Proto** %7, align 8
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i32 0, i32 18
  %49 = load %struct.Upvaldesc*, %struct.Upvaldesc** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %49, i64 %52
  %54 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %53, i32 0, i32 0
  store %struct.TString* null, %struct.TString** %54, align 8
  br label %40

; <label>:55:                                     ; preds = %40
  %56 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %57 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 8
  %60 = zext i1 %59 to i32
  %61 = trunc i32 %60 to i8
  %62 = load %struct.Proto*, %struct.Proto** %7, align 8
  %63 = getelementptr inbounds %struct.Proto, %struct.Proto* %62, i32 0, i32 18
  %64 = load %struct.Upvaldesc*, %struct.Upvaldesc** %63, align 8
  %65 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %66 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %65, i32 0, i32 14
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %64, i64 %68
  %70 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %69, i32 0, i32 1
  store i8 %61, i8* %70, align 8
  %71 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %72 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %71, i32 0, i32 1
  %73 = bitcast %union.anon.7* %72 to i32*
  %74 = load i32, i32* %73, align 8
  %75 = trunc i32 %74 to i8
  %76 = load %struct.Proto*, %struct.Proto** %7, align 8
  %77 = getelementptr inbounds %struct.Proto, %struct.Proto* %76, i32 0, i32 18
  %78 = load %struct.Upvaldesc*, %struct.Upvaldesc** %77, align 8
  %79 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %80 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %79, i32 0, i32 14
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %78, i64 %82
  %84 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %83, i32 0, i32 2
  store i8 %75, i8* %84, align 1
  %85 = load %struct.TString*, %struct.TString** %5, align 8
  %86 = load %struct.Proto*, %struct.Proto** %7, align 8
  %87 = getelementptr inbounds %struct.Proto, %struct.Proto* %86, i32 0, i32 18
  %88 = load %struct.Upvaldesc*, %struct.Upvaldesc** %87, align 8
  %89 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %90 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %89, i32 0, i32 14
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %88, i64 %92
  %94 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %93, i32 0, i32 0
  store %struct.TString* %85, %struct.TString** %94, align 8
  %95 = load %struct.Proto*, %struct.Proto** %7, align 8
  %96 = getelementptr inbounds %struct.Proto, %struct.Proto* %95, i32 0, i32 2
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %120

; <label>:101:                                    ; preds = %55
  %102 = load %struct.TString*, %struct.TString** %5, align 8
  %103 = getelementptr inbounds %struct.TString, %struct.TString* %102, i32 0, i32 2
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 24
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

; <label>:108:                                    ; preds = %101
  %109 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %110 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %109, i32 0, i32 2
  %111 = load %struct.LexState*, %struct.LexState** %110, align 8
  %112 = getelementptr inbounds %struct.LexState, %struct.LexState* %111, i32 0, i32 6
  %113 = load %struct.lua_State*, %struct.lua_State** %112, align 8
  %114 = load %struct.Proto*, %struct.Proto** %7, align 8
  %115 = bitcast %struct.Proto* %114 to %union.GCUnion*
  %116 = bitcast %union.GCUnion* %115 to %struct.GCObject*
  %117 = load %struct.TString*, %struct.TString** %5, align 8
  %118 = bitcast %struct.TString* %117 to %union.GCUnion*
  %119 = bitcast %union.GCUnion* %118 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %113, %struct.GCObject* %116, %struct.GCObject* %119)
  br label %121

; <label>:120:                                    ; preds = %101, %55
  br label %121

; <label>:121:                                    ; preds = %120, %108
  %122 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %123 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %122, i32 0, i32 14
  %124 = load i8, i8* %123, align 1
  %125 = add i8 %124, 1
  store i8 %125, i8* %123, align 1
  %126 = zext i8 %124 to i32
  ret i32 %126
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
  call void @error_expected(%struct.LexState* %12, i32 %13) #6
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
  %16 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %16, i32 0, i32 13
  %18 = load i8, i8* %17, align 2
  %19 = zext i8 %18 to i32
  call void @luaK_ret(%struct.FuncState* %15, i32 %19, i32 0)
  %20 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  call void @leaveblock(%struct.FuncState* %20)
  %21 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  call void @luaK_finish(%struct.FuncState* %21)
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %23 = load %struct.Proto*, %struct.Proto** %5, align 8
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %23, i32 0, i32 16
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = load %struct.Proto*, %struct.Proto** %5, align 8
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %27, i32 0, i32 8
  %29 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @luaM_shrinkvector_(%struct.lua_State* %22, i8* %26, i32* %28, i32 %31, i32 4)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.Proto*, %struct.Proto** %5, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 16
  store i32* %33, i32** %35, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %37 = load %struct.Proto*, %struct.Proto** %5, align 8
  %38 = getelementptr inbounds %struct.Proto, %struct.Proto* %37, i32 0, i32 19
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.Proto*, %struct.Proto** %5, align 8
  %41 = getelementptr inbounds %struct.Proto, %struct.Proto* %40, i32 0, i32 9
  %42 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %43 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @luaM_shrinkvector_(%struct.lua_State* %36, i8* %39, i32* %41, i32 %44, i32 1)
  %46 = load %struct.Proto*, %struct.Proto** %5, align 8
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i32 0, i32 19
  store i8* %45, i8** %47, align 8
  %48 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %49 = load %struct.Proto*, %struct.Proto** %5, align 8
  %50 = getelementptr inbounds %struct.Proto, %struct.Proto* %49, i32 0, i32 20
  %51 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %50, align 8
  %52 = bitcast %struct.AbsLineInfo* %51 to i8*
  %53 = load %struct.Proto*, %struct.Proto** %5, align 8
  %54 = getelementptr inbounds %struct.Proto, %struct.Proto* %53, i32 0, i32 12
  %55 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @luaM_shrinkvector_(%struct.lua_State* %48, i8* %52, i32* %54, i32 %57, i32 8)
  %59 = bitcast i8* %58 to %struct.AbsLineInfo*
  %60 = load %struct.Proto*, %struct.Proto** %5, align 8
  %61 = getelementptr inbounds %struct.Proto, %struct.Proto* %60, i32 0, i32 20
  store %struct.AbsLineInfo* %59, %struct.AbsLineInfo** %61, align 8
  %62 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %63 = load %struct.Proto*, %struct.Proto** %5, align 8
  %64 = getelementptr inbounds %struct.Proto, %struct.Proto* %63, i32 0, i32 15
  %65 = load %struct.TValue*, %struct.TValue** %64, align 8
  %66 = bitcast %struct.TValue* %65 to i8*
  %67 = load %struct.Proto*, %struct.Proto** %5, align 8
  %68 = getelementptr inbounds %struct.Proto, %struct.Proto* %67, i32 0, i32 7
  %69 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %70 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @luaM_shrinkvector_(%struct.lua_State* %62, i8* %66, i32* %68, i32 %71, i32 16)
  %73 = bitcast i8* %72 to %struct.TValue*
  %74 = load %struct.Proto*, %struct.Proto** %5, align 8
  %75 = getelementptr inbounds %struct.Proto, %struct.Proto* %74, i32 0, i32 15
  store %struct.TValue* %73, %struct.TValue** %75, align 8
  %76 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %77 = load %struct.Proto*, %struct.Proto** %5, align 8
  %78 = getelementptr inbounds %struct.Proto, %struct.Proto* %77, i32 0, i32 17
  %79 = load %struct.Proto**, %struct.Proto*** %78, align 8
  %80 = bitcast %struct.Proto** %79 to i8*
  %81 = load %struct.Proto*, %struct.Proto** %5, align 8
  %82 = getelementptr inbounds %struct.Proto, %struct.Proto* %81, i32 0, i32 10
  %83 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %84 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  %86 = call i8* @luaM_shrinkvector_(%struct.lua_State* %76, i8* %80, i32* %82, i32 %85, i32 8)
  %87 = bitcast i8* %86 to %struct.Proto**
  %88 = load %struct.Proto*, %struct.Proto** %5, align 8
  %89 = getelementptr inbounds %struct.Proto, %struct.Proto* %88, i32 0, i32 17
  store %struct.Proto** %87, %struct.Proto*** %89, align 8
  %90 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %91 = load %struct.Proto*, %struct.Proto** %5, align 8
  %92 = getelementptr inbounds %struct.Proto, %struct.Proto* %91, i32 0, i32 21
  %93 = load %struct.LocVar*, %struct.LocVar** %92, align 8
  %94 = bitcast %struct.LocVar* %93 to i8*
  %95 = load %struct.Proto*, %struct.Proto** %5, align 8
  %96 = getelementptr inbounds %struct.Proto, %struct.Proto* %95, i32 0, i32 11
  %97 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %98 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %97, i32 0, i32 12
  %99 = load i16, i16* %98, align 8
  %100 = sext i16 %99 to i32
  %101 = call i8* @luaM_shrinkvector_(%struct.lua_State* %90, i8* %94, i32* %96, i32 %100, i32 16)
  %102 = bitcast i8* %101 to %struct.LocVar*
  %103 = load %struct.Proto*, %struct.Proto** %5, align 8
  %104 = getelementptr inbounds %struct.Proto, %struct.Proto* %103, i32 0, i32 21
  store %struct.LocVar* %102, %struct.LocVar** %104, align 8
  %105 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %106 = load %struct.Proto*, %struct.Proto** %5, align 8
  %107 = getelementptr inbounds %struct.Proto, %struct.Proto* %106, i32 0, i32 18
  %108 = load %struct.Upvaldesc*, %struct.Upvaldesc** %107, align 8
  %109 = bitcast %struct.Upvaldesc* %108 to i8*
  %110 = load %struct.Proto*, %struct.Proto** %5, align 8
  %111 = getelementptr inbounds %struct.Proto, %struct.Proto* %110, i32 0, i32 6
  %112 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %113 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %112, i32 0, i32 14
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = call i8* @luaM_shrinkvector_(%struct.lua_State* %105, i8* %109, i32* %111, i32 %115, i32 16)
  %117 = bitcast i8* %116 to %struct.Upvaldesc*
  %118 = load %struct.Proto*, %struct.Proto** %5, align 8
  %119 = getelementptr inbounds %struct.Proto, %struct.Proto* %118, i32 0, i32 18
  store %struct.Upvaldesc* %117, %struct.Upvaldesc** %119, align 8
  %120 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %121 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %120, i32 0, i32 1
  %122 = load %struct.FuncState*, %struct.FuncState** %121, align 8
  %123 = load %struct.LexState*, %struct.LexState** %2, align 8
  %124 = getelementptr inbounds %struct.LexState, %struct.LexState* %123, i32 0, i32 5
  store %struct.FuncState* %122, %struct.FuncState** %124, align 8
  %125 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %126 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %125, i32 0, i32 7
  %127 = load %struct.global_State*, %struct.global_State** %126, align 8
  %128 = getelementptr inbounds %struct.global_State, %struct.global_State* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %133

; <label>:131:                                    ; preds = %1
  %132 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_step(%struct.lua_State* %132)
  br label %133

; <label>:133:                                    ; preds = %131, %1
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
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i32 0, i32 13
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
  %40 = icmp ne %struct.BlockCnt* %39, null
  br i1 %40, label %41, label %49

; <label>:41:                                     ; preds = %3
  %42 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %43 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %42, i32 0, i32 3
  %44 = load %struct.BlockCnt*, %struct.BlockCnt** %43, align 8
  %45 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %44, i32 0, i32 6
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br label %49

; <label>:49:                                     ; preds = %41, %3
  %50 = phi i1 [ false, %3 ], [ %48, %41 ]
  %51 = zext i1 %50 to i32
  %52 = trunc i32 %51 to i8
  %53 = load %struct.BlockCnt*, %struct.BlockCnt** %5, align 8
  %54 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %53, i32 0, i32 6
  store i8 %52, i8* %54, align 1
  %55 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %55, i32 0, i32 3
  %57 = load %struct.BlockCnt*, %struct.BlockCnt** %56, align 8
  %58 = load %struct.BlockCnt*, %struct.BlockCnt** %5, align 8
  %59 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %58, i32 0, i32 0
  store %struct.BlockCnt* %57, %struct.BlockCnt** %59, align 8
  %60 = load %struct.BlockCnt*, %struct.BlockCnt** %5, align 8
  %61 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %62 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %61, i32 0, i32 3
  store %struct.BlockCnt* %60, %struct.BlockCnt** %62, align 8
  ret void
}

declare hidden i32 @luaK_codeABCk(%struct.FuncState*, i32, i32, i32, i32, i32) #1

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
  call void @errorlimit(%struct.FuncState* %13, i32 %14, i8* %15) #6
  unreachable

; <label>:16:                                     ; preds = %4
  ret void
}

declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32, i32*, i32, i32, i8*) #1

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
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i32 0, i32 13
  %20 = load i32, i32* %19, align 4
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
  call void @luaX_syntaxerror(%struct.LexState* %37, i8* %38) #6
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
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 6
  %9 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  call void @luaE_enterCcall(%struct.lua_State* %9)
  %10 = load %struct.LexState*, %struct.LexState** %2, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.Token, %struct.Token* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %60 [
    i32 59, label %14
    i32 267, label %16
    i32 278, label %19
    i32 259, label %22
    i32 264, label %27
    i32 273, label %30
    i32 265, label %33
    i32 269, label %36
    i32 288, label %46
    i32 274, label %52
    i32 258, label %55
    i32 266, label %57
  ]

; <label>:14:                                     ; preds = %1
  %15 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_next(%struct.LexState* %15)
  br label %62

; <label>:16:                                     ; preds = %1
  %17 = load %struct.LexState*, %struct.LexState** %2, align 8
  %18 = load i32, i32* %3, align 4
  call void @ifstat(%struct.LexState* %17, i32 %18)
  br label %62

; <label>:19:                                     ; preds = %1
  %20 = load %struct.LexState*, %struct.LexState** %2, align 8
  %21 = load i32, i32* %3, align 4
  call void @whilestat(%struct.LexState* %20, i32 %21)
  br label %62

; <label>:22:                                     ; preds = %1
  %23 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_next(%struct.LexState* %23)
  %24 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @block(%struct.LexState* %24)
  %25 = load %struct.LexState*, %struct.LexState** %2, align 8
  %26 = load i32, i32* %3, align 4
  call void @check_match(%struct.LexState* %25, i32 262, i32 259, i32 %26)
  br label %62

; <label>:27:                                     ; preds = %1
  %28 = load %struct.LexState*, %struct.LexState** %2, align 8
  %29 = load i32, i32* %3, align 4
  call void @forstat(%struct.LexState* %28, i32 %29)
  br label %62

; <label>:30:                                     ; preds = %1
  %31 = load %struct.LexState*, %struct.LexState** %2, align 8
  %32 = load i32, i32* %3, align 4
  call void @repeatstat(%struct.LexState* %31, i32 %32)
  br label %62

; <label>:33:                                     ; preds = %1
  %34 = load %struct.LexState*, %struct.LexState** %2, align 8
  %35 = load i32, i32* %3, align 4
  call void @funcstat(%struct.LexState* %34, i32 %35)
  br label %62

; <label>:36:                                     ; preds = %1
  %37 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_next(%struct.LexState* %37)
  %38 = load %struct.LexState*, %struct.LexState** %2, align 8
  %39 = call i32 @testnext(%struct.LexState* %38, i32 265)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %36
  %42 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @localfunc(%struct.LexState* %42)
  br label %45

; <label>:43:                                     ; preds = %36
  %44 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @localstat(%struct.LexState* %44)
  br label %45

; <label>:45:                                     ; preds = %43, %41
  br label %62

; <label>:46:                                     ; preds = %1
  %47 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_next(%struct.LexState* %47)
  %48 = load %struct.LexState*, %struct.LexState** %2, align 8
  %49 = load %struct.LexState*, %struct.LexState** %2, align 8
  %50 = call %struct.TString* @str_checkname(%struct.LexState* %49)
  %51 = load i32, i32* %3, align 4
  call void @labelstat(%struct.LexState* %48, %struct.TString* %50, i32 %51)
  br label %62

; <label>:52:                                     ; preds = %1
  %53 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_next(%struct.LexState* %53)
  %54 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @retstat(%struct.LexState* %54)
  br label %62

; <label>:55:                                     ; preds = %1
  %56 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @breakstat(%struct.LexState* %56)
  br label %62

; <label>:57:                                     ; preds = %1
  %58 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_next(%struct.LexState* %58)
  %59 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @gotostat(%struct.LexState* %59)
  br label %62

; <label>:60:                                     ; preds = %1
  %61 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @exprstat(%struct.LexState* %61)
  br label %62

; <label>:62:                                     ; preds = %60, %57, %55, %52, %46, %45, %33, %30, %27, %22, %19, %16, %14
  %63 = load %struct.LexState*, %struct.LexState** %2, align 8
  %64 = getelementptr inbounds %struct.LexState, %struct.LexState* %63, i32 0, i32 5
  %65 = load %struct.FuncState*, %struct.FuncState** %64, align 8
  %66 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %65, i32 0, i32 13
  %67 = load i8, i8* %66, align 2
  %68 = load %struct.LexState*, %struct.LexState** %2, align 8
  %69 = getelementptr inbounds %struct.LexState, %struct.LexState* %68, i32 0, i32 5
  %70 = load %struct.FuncState*, %struct.FuncState** %69, align 8
  %71 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %70, i32 0, i32 15
  store i8 %67, i8* %71, align 4
  %72 = load %struct.LexState*, %struct.LexState** %2, align 8
  %73 = getelementptr inbounds %struct.LexState, %struct.LexState* %72, i32 0, i32 6
  %74 = load %struct.lua_State*, %struct.lua_State** %73, align 8
  %75 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %74, i32 0, i32 19
  %76 = load i32, i32* %75, align 8
  %77 = add i32 %76, -1
  store i32 %77, i32* %75, align 8
  ret void
}

declare hidden void @luaE_enterCcall(%struct.lua_State*) #1

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
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

; <label>:19:                                     ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.LexState*, %struct.LexState** %5, align 8
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %19
  %26 = load %struct.LexState*, %struct.LexState** %5, align 8
  %27 = load i32, i32* %6, align 4
  call void @error_expected(%struct.LexState* %26, i32 %27) #6
  unreachable

; <label>:28:                                     ; preds = %19
  %29 = load %struct.LexState*, %struct.LexState** %5, align 8
  %30 = load %struct.LexState*, %struct.LexState** %5, align 8
  %31 = getelementptr inbounds %struct.LexState, %struct.LexState* %30, i32 0, i32 6
  %32 = load %struct.lua_State*, %struct.lua_State** %31, align 8
  %33 = load %struct.LexState*, %struct.LexState** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i8* @luaX_token2str(%struct.LexState* %33, i32 %34)
  %36 = load %struct.LexState*, %struct.LexState** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i8* @luaX_token2str(%struct.LexState* %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0), i8* %35, i8* %38, i32 %39)
  call void @luaX_syntaxerror(%struct.LexState* %29, i8* %40) #6
  unreachable

; <label>:41:                                     ; preds = %4
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
  call void @luaX_syntaxerror(%struct.LexState* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0)) #6
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
  %10 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.LexState*, %struct.LexState** %3, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 5
  %13 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  store %struct.FuncState* %13, %struct.FuncState** %6, align 8
  %14 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %15 = call i32 @luaK_getlabel(%struct.FuncState* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  call void @enterblock(%struct.FuncState* %16, %struct.BlockCnt* %8, i8 zeroext 1)
  %17 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  call void @enterblock(%struct.FuncState* %17, %struct.BlockCnt* %9, i8 zeroext 0)
  %18 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_next(%struct.LexState* %18)
  %19 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @statlist(%struct.LexState* %19)
  %20 = load %struct.LexState*, %struct.LexState** %3, align 8
  %21 = load i32, i32* %4, align 4
  call void @check_match(%struct.LexState* %20, i32 277, i32 273, i32 %21)
  %22 = load %struct.LexState*, %struct.LexState** %3, align 8
  %23 = call i32 @cond(%struct.LexState* %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  call void @leaveblock(%struct.FuncState* %24)
  %25 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %9, i32 0, i32 4
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %42

; <label>:28:                                     ; preds = %2
  %29 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %30 = call i32 @luaK_jump(%struct.FuncState* %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %32 = load i32, i32* %5, align 4
  call void @luaK_patchtohere(%struct.FuncState* %31, i32 %32)
  %33 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %34 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %9, i32 0, i32 3
  %35 = load i8, i8* %34, align 8
  %36 = zext i8 %35 to i32
  %37 = call i32 @luaK_codeABCk(%struct.FuncState* %33, i32 55, i32 %36, i32 0, i32 0, i32 0)
  %38 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %39 = call i32 @luaK_jump(%struct.FuncState* %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %41 = load i32, i32* %10, align 4
  call void @luaK_patchtohere(%struct.FuncState* %40, i32 %41)
  br label %42

; <label>:42:                                     ; preds = %28, %2
  %43 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %7, align 4
  call void @luaK_patchlist(%struct.FuncState* %43, i32 %44, i32 %45)
  %46 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  call void @leaveblock(%struct.FuncState* %46)
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
  %21 = bitcast %union.anon.7* %20 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.LocVar* @getlocvar(%struct.FuncState* %19, i32 %22)
  %24 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %23, i32 0, i32 1
  store i32 %18, i32* %24, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @localstat(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %3 = load %struct.LexState*, %struct.LexState** %2, align 8
  %4 = call i32 @testnext(%struct.LexState* %3, i32 42)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %1
  %7 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @tocloselocalstat(%struct.LexState* %7)
  br label %10

; <label>:8:                                      ; preds = %1
  %9 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @commonlocalstat(%struct.LexState* %9)
  br label %10

; <label>:10:                                     ; preds = %8, %6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @labelstat(%struct.LexState*, %struct.TString*, i32) #0 {
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca %struct.TString*, align 8
  %6 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store %struct.TString* %1, %struct.TString** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @checknext(%struct.LexState* %7, i32 288)
  br label %8

; <label>:8:                                      ; preds = %22, %3
  %9 = load %struct.LexState*, %struct.LexState** %4, align 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.Token, %struct.Token* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 59
  br i1 %13, label %20, label %14

; <label>:14:                                     ; preds = %8
  %15 = load %struct.LexState*, %struct.LexState** %4, align 8
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.Token, %struct.Token* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 288
  br label %20

; <label>:20:                                     ; preds = %14, %8
  %21 = phi i1 [ true, %8 ], [ %19, %14 ]
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %20
  %23 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @statement(%struct.LexState* %23)
  br label %8

; <label>:24:                                     ; preds = %20
  %25 = load %struct.LexState*, %struct.LexState** %4, align 8
  %26 = load %struct.TString*, %struct.TString** %5, align 8
  call void @checkrepeated(%struct.LexState* %25, %struct.TString* %26)
  %27 = load %struct.LexState*, %struct.LexState** %4, align 8
  %28 = load %struct.TString*, %struct.TString** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.LexState*, %struct.LexState** %4, align 8
  %31 = call i32 @block_follow(%struct.LexState* %30, i32 0)
  %32 = call i32 @createlabel(%struct.LexState* %27, %struct.TString* %28, i32 %29, i32 %31)
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
  %10 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i32 0, i32 13
  %12 = load i8, i8* %11, align 2
  %13 = zext i8 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load %struct.LexState*, %struct.LexState** %2, align 8
  %15 = call i32 @block_follow(%struct.LexState* %14, i32 1)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

; <label>:17:                                     ; preds = %1
  %18 = load %struct.LexState*, %struct.LexState** %2, align 8
  %19 = getelementptr inbounds %struct.LexState, %struct.LexState* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.Token, %struct.Token* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 59
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %17, %1
  store i32 0, i32* %5, align 4
  br label %84

; <label>:24:                                     ; preds = %17
  %25 = load %struct.LexState*, %struct.LexState** %2, align 8
  %26 = call i32 @explist(%struct.LexState* %25, %struct.expdesc* %4)
  store i32 %26, i32* %5, align 4
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 16
  br i1 %29, label %34, label %30

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 17
  br i1 %33, label %34, label %74

; <label>:34:                                     ; preds = %30, %24
  %35 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  call void @luaK_setreturns(%struct.FuncState* %35, %struct.expdesc* %4, i32 -1)
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 16
  br i1 %38, label %39, label %73

; <label>:39:                                     ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %73

; <label>:42:                                     ; preds = %39
  %43 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %44 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %43, i32 0, i32 3
  %45 = load %struct.BlockCnt*, %struct.BlockCnt** %44, align 8
  %46 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %45, i32 0, i32 6
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %73, label %49

; <label>:49:                                     ; preds = %42
  %50 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %51 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %50, i32 0, i32 0
  %52 = load %struct.Proto*, %struct.Proto** %51, align 8
  %53 = getelementptr inbounds %struct.Proto, %struct.Proto* %52, i32 0, i32 16
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i32 0, i32 1
  %56 = bitcast %union.anon.7* %55 to i32*
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, -128
  %62 = or i32 %61, 70
  %63 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %64 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %63, i32 0, i32 0
  %65 = load %struct.Proto*, %struct.Proto** %64, align 8
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i32 0, i32 16
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i32 0, i32 1
  %69 = bitcast %union.anon.7* %68 to i32*
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  store i32 %62, i32* %72, align 4
  br label %73

; <label>:73:                                     ; preds = %49, %42, %39, %34
  store i32 -1, i32* %5, align 4
  br label %83

; <label>:74:                                     ; preds = %30
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %80

; <label>:77:                                     ; preds = %74
  %78 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %79 = call i32 @luaK_exp2anyreg(%struct.FuncState* %78, %struct.expdesc* %4)
  store i32 %79, i32* %6, align 4
  br label %82

; <label>:80:                                     ; preds = %74
  %81 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %81, %struct.expdesc* %4)
  br label %82

; <label>:82:                                     ; preds = %80, %77
  br label %83

; <label>:83:                                     ; preds = %82, %73
  br label %84

; <label>:84:                                     ; preds = %83, %23
  %85 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %5, align 4
  call void @luaK_ret(%struct.FuncState* %85, i32 %86, i32 %87)
  %88 = load %struct.LexState*, %struct.LexState** %2, align 8
  %89 = call i32 @testnext(%struct.LexState* %88, i32 59)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @breakstat(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %4 = load %struct.LexState*, %struct.LexState** %2, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_next(%struct.LexState* %7)
  %8 = load %struct.LexState*, %struct.LexState** %2, align 8
  %9 = load %struct.LexState*, %struct.LexState** %2, align 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 6
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8
  %12 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i64 5)
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.LexState*, %struct.LexState** %2, align 8
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %14, i32 0, i32 5
  %16 = load %struct.FuncState*, %struct.FuncState** %15, align 8
  %17 = call i32 @luaK_jump(%struct.FuncState* %16)
  %18 = call i32 @newgotoentry(%struct.LexState* %8, %struct.TString* %12, i32 %13, i32 %17)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gotostat(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TString*, align 8
  %6 = alloca %struct.Labeldesc*, align 8
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %7 = load %struct.LexState*, %struct.LexState** %2, align 8
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 5
  %9 = load %struct.FuncState*, %struct.FuncState** %8, align 8
  store %struct.FuncState* %9, %struct.FuncState** %3, align 8
  %10 = load %struct.LexState*, %struct.LexState** %2, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.LexState*, %struct.LexState** %2, align 8
  %14 = call %struct.TString* @str_checkname(%struct.LexState* %13)
  store %struct.TString* %14, %struct.TString** %5, align 8
  %15 = load %struct.LexState*, %struct.LexState** %2, align 8
  %16 = load %struct.TString*, %struct.TString** %5, align 8
  %17 = call %struct.Labeldesc* @findlabel(%struct.LexState* %15, %struct.TString* %16)
  store %struct.Labeldesc* %17, %struct.Labeldesc** %6, align 8
  %18 = load %struct.Labeldesc*, %struct.Labeldesc** %6, align 8
  %19 = icmp eq %struct.Labeldesc* %18, null
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %1
  %21 = load %struct.LexState*, %struct.LexState** %2, align 8
  %22 = load %struct.TString*, %struct.TString** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %25 = call i32 @luaK_jump(%struct.FuncState* %24)
  %26 = call i32 @newgotoentry(%struct.LexState* %21, %struct.TString* %22, i32 %23, i32 %25)
  br label %51

; <label>:27:                                     ; preds = %1
  %28 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %29 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i32 0, i32 13
  %30 = load i8, i8* %29, align 2
  %31 = zext i8 %30 to i32
  %32 = load %struct.Labeldesc*, %struct.Labeldesc** %6, align 8
  %33 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %32, i32 0, i32 3
  %34 = load i8, i8* %33, align 8
  %35 = zext i8 %34 to i32
  %36 = icmp sgt i32 %31, %35
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %27
  %38 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %39 = load %struct.Labeldesc*, %struct.Labeldesc** %6, align 8
  %40 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %39, i32 0, i32 3
  %41 = load i8, i8* %40, align 8
  %42 = zext i8 %41 to i32
  %43 = call i32 @luaK_codeABCk(%struct.FuncState* %38, i32 55, i32 %42, i32 0, i32 0, i32 0)
  br label %44

; <label>:44:                                     ; preds = %37, %27
  %45 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %46 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %47 = call i32 @luaK_jump(%struct.FuncState* %46)
  %48 = load %struct.Labeldesc*, %struct.Labeldesc** %6, align 8
  %49 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  call void @luaK_patchlist(%struct.FuncState* %45, i32 %47, i32 %50)
  br label %51

; <label>:51:                                     ; preds = %44, %20
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exprstat(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.LHS_assign, align 8
  %5 = alloca i32*, align 8
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %6 = load %struct.LexState*, %struct.LexState** %2, align 8
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %6, i32 0, i32 5
  %8 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  store %struct.FuncState* %8, %struct.FuncState** %3, align 8
  %9 = load %struct.LexState*, %struct.LexState** %2, align 8
  %10 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %4, i32 0, i32 1
  call void @suffixedexp(%struct.LexState* %9, %struct.expdesc* %10)
  %11 = load %struct.LexState*, %struct.LexState** %2, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.Token, %struct.Token* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 61
  br i1 %15, label %22, label %16

; <label>:16:                                     ; preds = %1
  %17 = load %struct.LexState*, %struct.LexState** %2, align 8
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.Token, %struct.Token* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 44
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %16, %1
  %23 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %4, i32 0, i32 0
  store %struct.LHS_assign* null, %struct.LHS_assign** %23, align 8
  %24 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @restassign(%struct.LexState* %24, %struct.LHS_assign* %4, i32 1)
  br label %49

; <label>:25:                                     ; preds = %16
  %26 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %26, i32 0, i32 0
  %28 = load %struct.Proto*, %struct.Proto** %27, align 8
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 16
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %4, i32 0, i32 1
  %32 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %31, i32 0, i32 1
  %33 = bitcast %union.anon.7* %32 to i32*
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  store i32* %36, i32** %5, align 8
  %37 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %4, i32 0, i32 1
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 16
  br i1 %40, label %43, label %41

; <label>:41:                                     ; preds = %25
  %42 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_syntaxerror(%struct.LexState* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0)) #6
  unreachable

; <label>:43:                                     ; preds = %25
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 16777215
  %47 = or i32 %46, 16777216
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  br label %49

; <label>:49:                                     ; preds = %43, %22
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_then_block(%struct.LexState*, i32*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.BlockCnt, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.FuncState*, align 8
  %8 = alloca %struct.TString*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.expdesc, align 8
  %11 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.LexState*, %struct.LexState** %3, align 8
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 5
  %14 = load %struct.FuncState*, %struct.FuncState** %13, align 8
  store %struct.FuncState* %14, %struct.FuncState** %7, align 8
  store %struct.TString* null, %struct.TString** %8, align 8
  store i32 -1, i32* %9, align 4
  %15 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @luaX_next(%struct.LexState* %15)
  %16 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @expr(%struct.LexState* %16, %struct.expdesc* %10)
  %17 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @checknext(%struct.LexState* %17, i32 275)
  %18 = load %struct.LexState*, %struct.LexState** %3, align 8
  %19 = getelementptr inbounds %struct.LexState, %struct.LexState* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.LexState*, %struct.LexState** %3, align 8
  %22 = call i32 @issinglejump(%struct.LexState* %21, %struct.TString** %8, i32* %9)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %59

; <label>:24:                                     ; preds = %2
  %25 = load %struct.LexState*, %struct.LexState** %3, align 8
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %25, i32 0, i32 5
  %27 = load %struct.FuncState*, %struct.FuncState** %26, align 8
  call void @luaK_goiffalse(%struct.FuncState* %27, %struct.expdesc* %10)
  %28 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  call void @enterblock(%struct.FuncState* %28, %struct.BlockCnt* %5, i8 zeroext 0)
  %29 = load %struct.TString*, %struct.TString** %8, align 8
  %30 = icmp ne %struct.TString* %29, null
  br i1 %30, label %31, label %38

; <label>:31:                                     ; preds = %24
  %32 = load %struct.LexState*, %struct.LexState** %3, align 8
  %33 = load %struct.TString*, %struct.TString** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @newgotoentry(%struct.LexState* %32, %struct.TString* %33, i32 %34, i32 %36)
  br label %43

; <label>:38:                                     ; preds = %24
  %39 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  call void @luaK_patchlist(%struct.FuncState* %39, i32 %41, i32 %42)
  br label %43

; <label>:43:                                     ; preds = %38, %31
  br label %44

; <label>:44:                                     ; preds = %48, %43
  %45 = load %struct.LexState*, %struct.LexState** %3, align 8
  %46 = call i32 @testnext(%struct.LexState* %45, i32 59)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %44
  br label %44

; <label>:49:                                     ; preds = %44
  %50 = load %struct.LexState*, %struct.LexState** %3, align 8
  %51 = call i32 @block_follow(%struct.LexState* %50, i32 0)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

; <label>:53:                                     ; preds = %49
  %54 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  call void @leaveblock(%struct.FuncState* %54)
  br label %88

; <label>:55:                                     ; preds = %49
  %56 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %57 = call i32 @luaK_jump(%struct.FuncState* %56)
  store i32 %57, i32* %11, align 4
  br label %58

; <label>:58:                                     ; preds = %55
  br label %66

; <label>:59:                                     ; preds = %2
  %60 = load %struct.LexState*, %struct.LexState** %3, align 8
  %61 = getelementptr inbounds %struct.LexState, %struct.LexState* %60, i32 0, i32 5
  %62 = load %struct.FuncState*, %struct.FuncState** %61, align 8
  call void @luaK_goiftrue(%struct.FuncState* %62, %struct.expdesc* %10)
  %63 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  call void @enterblock(%struct.FuncState* %63, %struct.BlockCnt* %5, i8 zeroext 0)
  %64 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %11, align 4
  br label %66

; <label>:66:                                     ; preds = %59, %58
  %67 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @statlist(%struct.LexState* %67)
  %68 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  call void @leaveblock(%struct.FuncState* %68)
  %69 = load %struct.LexState*, %struct.LexState** %3, align 8
  %70 = getelementptr inbounds %struct.LexState, %struct.LexState* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.Token, %struct.Token* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 260
  br i1 %73, label %80, label %74

; <label>:74:                                     ; preds = %66
  %75 = load %struct.LexState*, %struct.LexState** %3, align 8
  %76 = getelementptr inbounds %struct.LexState, %struct.LexState* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.Token, %struct.Token* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 261
  br i1 %79, label %80, label %85

; <label>:80:                                     ; preds = %74, %66
  %81 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %84 = call i32 @luaK_jump(%struct.FuncState* %83)
  call void @luaK_concat(%struct.FuncState* %81, i32* %82, i32 %84)
  br label %85

; <label>:85:                                     ; preds = %80, %74
  %86 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %87 = load i32, i32* %11, align 4
  call void @luaK_patchtohere(%struct.FuncState* %86, i32 %87)
  br label %88

; <label>:88:                                     ; preds = %85, %53
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

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @issinglejump(%struct.LexState*, %struct.TString**, i32*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.LexState*, align 8
  %6 = alloca %struct.TString**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TString*, align 8
  %9 = alloca %struct.Labeldesc*, align 8
  store %struct.LexState* %0, %struct.LexState** %5, align 8
  store %struct.TString** %1, %struct.TString*** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.LexState*, %struct.LexState** %5, align 8
  %11 = call i32 @testnext(%struct.LexState* %10, i32 258)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %3
  %14 = load %struct.LexState*, %struct.LexState** %5, align 8
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %14, i32 0, i32 6
  %16 = load %struct.lua_State*, %struct.lua_State** %15, align 8
  %17 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i64 5)
  %18 = load %struct.TString**, %struct.TString*** %6, align 8
  store %struct.TString* %17, %struct.TString** %18, align 8
  store i32 1, i32* %4, align 4
  br label %65

; <label>:19:                                     ; preds = %3
  %20 = load %struct.LexState*, %struct.LexState** %5, align 8
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.Token, %struct.Token* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 266
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %19
  %26 = load %struct.LexState*, %struct.LexState** %5, align 8
  %27 = call i32 @luaX_lookahead(%struct.LexState* %26)
  %28 = icmp ne i32 %27, 292
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %25, %19
  store i32 0, i32* %4, align 4
  br label %65

; <label>:30:                                     ; preds = %25
  %31 = load %struct.LexState*, %struct.LexState** %5, align 8
  %32 = getelementptr inbounds %struct.LexState, %struct.LexState* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.Token, %struct.Token* %32, i32 0, i32 1
  %34 = bitcast %union.SemInfo* %33 to %struct.TString**
  %35 = load %struct.TString*, %struct.TString** %34, align 8
  store %struct.TString* %35, %struct.TString** %8, align 8
  %36 = load %struct.LexState*, %struct.LexState** %5, align 8
  %37 = load %struct.TString*, %struct.TString** %8, align 8
  %38 = call %struct.Labeldesc* @findlabel(%struct.LexState* %36, %struct.TString* %37)
  store %struct.Labeldesc* %38, %struct.Labeldesc** %9, align 8
  %39 = load %struct.Labeldesc*, %struct.Labeldesc** %9, align 8
  %40 = icmp ne %struct.Labeldesc* %39, null
  br i1 %40, label %41, label %59

; <label>:41:                                     ; preds = %30
  %42 = load %struct.LexState*, %struct.LexState** %5, align 8
  %43 = getelementptr inbounds %struct.LexState, %struct.LexState* %42, i32 0, i32 5
  %44 = load %struct.FuncState*, %struct.FuncState** %43, align 8
  %45 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %44, i32 0, i32 13
  %46 = load i8, i8* %45, align 2
  %47 = zext i8 %46 to i32
  %48 = load %struct.Labeldesc*, %struct.Labeldesc** %9, align 8
  %49 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %48, i32 0, i32 3
  %50 = load i8, i8* %49, align 8
  %51 = zext i8 %50 to i32
  %52 = icmp sgt i32 %47, %51
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %41
  store i32 0, i32* %4, align 4
  br label %65

; <label>:54:                                     ; preds = %41
  %55 = load %struct.Labeldesc*, %struct.Labeldesc** %9, align 8
  %56 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  br label %62

; <label>:59:                                     ; preds = %30
  %60 = load %struct.TString*, %struct.TString** %8, align 8
  %61 = load %struct.TString**, %struct.TString*** %6, align 8
  store %struct.TString* %60, %struct.TString** %61, align 8
  br label %62

; <label>:62:                                     ; preds = %59, %54
  %63 = load %struct.LexState*, %struct.LexState** %5, align 8
  call void @luaX_next(%struct.LexState* %63)
  %64 = load %struct.LexState*, %struct.LexState** %5, align 8
  call void @luaX_next(%struct.LexState* %64)
  store i32 1, i32* %4, align 4
  br label %65

; <label>:65:                                     ; preds = %62, %53, %29, %13
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare hidden void @luaK_goiffalse(%struct.FuncState*, %struct.expdesc*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @newgotoentry(%struct.LexState*, %struct.TString*, i32, i32) #0 {
  %5 = alloca %struct.LexState*, align 8
  %6 = alloca %struct.TString*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %5, align 8
  store %struct.TString* %1, %struct.TString** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.LexState*, %struct.LexState** %5, align 8
  %10 = load %struct.LexState*, %struct.LexState** %5, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 10
  %12 = load %struct.Dyndata*, %struct.Dyndata** %11, align 8
  %13 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %12, i32 0, i32 1
  %14 = load %struct.TString*, %struct.TString** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @newlabelentry(%struct.LexState* %9, %struct.Labellist* %13, %struct.TString* %14, i32 %15, i32 %16)
  ret i32 %17
}

declare hidden void @luaK_patchlist(%struct.FuncState*, i32, i32) #1

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
  store i32 0, i32* %5, align 4
  %12 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %13 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %12, i32 0, i32 5
  %14 = load i8, i8* %13, align 2
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %23

; <label>:16:                                     ; preds = %1
  %17 = load %struct.LexState*, %struct.LexState** %4, align 8
  %18 = load %struct.LexState*, %struct.LexState** %4, align 8
  %19 = getelementptr inbounds %struct.LexState, %struct.LexState* %18, i32 0, i32 6
  %20 = load %struct.lua_State*, %struct.lua_State** %19, align 8
  %21 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i64 5)
  %22 = call i32 @createlabel(%struct.LexState* %17, %struct.TString* %21, i32 0, i32 0)
  store i32 %22, i32* %5, align 4
  br label %23

; <label>:23:                                     ; preds = %16, %1
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %44, label %26

; <label>:26:                                     ; preds = %23
  %27 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %28 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %27, i32 0, i32 0
  %29 = load %struct.BlockCnt*, %struct.BlockCnt** %28, align 8
  %30 = icmp ne %struct.BlockCnt* %29, null
  br i1 %30, label %31, label %44

; <label>:31:                                     ; preds = %26
  %32 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %33 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %32, i32 0, i32 4
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %31
  %38 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %39 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %40 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %39, i32 0, i32 3
  %41 = load i8, i8* %40, align 8
  %42 = zext i8 %41 to i32
  %43 = call i32 @luaK_codeABCk(%struct.FuncState* %38, i32 55, i32 %42, i32 0, i32 0, i32 0)
  br label %44

; <label>:44:                                     ; preds = %37, %31, %26, %23
  %45 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %46 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %45, i32 0, i32 0
  %47 = load %struct.BlockCnt*, %struct.BlockCnt** %46, align 8
  %48 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %49 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %48, i32 0, i32 3
  store %struct.BlockCnt* %47, %struct.BlockCnt** %49, align 8
  %50 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %51 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %52 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %51, i32 0, i32 3
  %53 = load i8, i8* %52, align 8
  %54 = zext i8 %53 to i32
  call void @removevars(%struct.FuncState* %50, i32 %54)
  %55 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %55, i32 0, i32 13
  %57 = load i8, i8* %56, align 2
  %58 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %59 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %58, i32 0, i32 15
  store i8 %57, i8* %59, align 4
  %60 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %61 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.LexState*, %struct.LexState** %4, align 8
  %64 = getelementptr inbounds %struct.LexState, %struct.LexState* %63, i32 0, i32 10
  %65 = load %struct.Dyndata*, %struct.Dyndata** %64, align 8
  %66 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %66, i32 0, i32 1
  store i32 %62, i32* %67, align 8
  %68 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %69 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %68, i32 0, i32 0
  %70 = load %struct.BlockCnt*, %struct.BlockCnt** %69, align 8
  %71 = icmp ne %struct.BlockCnt* %70, null
  br i1 %71, label %72, label %75

; <label>:72:                                     ; preds = %44
  %73 = load %struct.FuncState*, %struct.FuncState** %2, align 8
  %74 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  call void @movegotosout(%struct.FuncState* %73, %struct.BlockCnt* %74)
  br label %100

; <label>:75:                                     ; preds = %44
  %76 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %77 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.LexState*, %struct.LexState** %4, align 8
  %80 = getelementptr inbounds %struct.LexState, %struct.LexState* %79, i32 0, i32 10
  %81 = load %struct.Dyndata*, %struct.Dyndata** %80, align 8
  %82 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %78, %84
  br i1 %85, label %86, label %99

; <label>:86:                                     ; preds = %75
  %87 = load %struct.LexState*, %struct.LexState** %4, align 8
  %88 = load %struct.LexState*, %struct.LexState** %4, align 8
  %89 = getelementptr inbounds %struct.LexState, %struct.LexState* %88, i32 0, i32 10
  %90 = load %struct.Dyndata*, %struct.Dyndata** %89, align 8
  %91 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %91, i32 0, i32 0
  %93 = load %struct.Labeldesc*, %struct.Labeldesc** %92, align 8
  %94 = load %struct.BlockCnt*, %struct.BlockCnt** %3, align 8
  %95 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %93, i64 %97
  call void @undefgoto(%struct.LexState* %87, %struct.Labeldesc* %98) #6
  unreachable

; <label>:99:                                     ; preds = %75
  br label %100

; <label>:100:                                    ; preds = %99, %72
  ret void
}

declare hidden i32 @luaK_jump(%struct.FuncState*) #1

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
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 6
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8
  call void @luaE_enterCcall(%struct.lua_State* %15)
  %16 = load %struct.LexState*, %struct.LexState** %4, align 8
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.Token, %struct.Token* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @getunopr(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 4
  br i1 %22, label %23, label %37

; <label>:23:                                     ; preds = %3
  %24 = load %struct.LexState*, %struct.LexState** %4, align 8
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @luaX_next(%struct.LexState* %27)
  %28 = load %struct.LexState*, %struct.LexState** %4, align 8
  %29 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %30 = call i32 @subexpr(%struct.LexState* %28, %struct.expdesc* %29, i32 12)
  %31 = load %struct.LexState*, %struct.LexState** %4, align 8
  %32 = getelementptr inbounds %struct.LexState, %struct.LexState* %31, i32 0, i32 5
  %33 = load %struct.FuncState*, %struct.FuncState** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %36 = load i32, i32* %9, align 4
  call void @luaK_prefix(%struct.FuncState* %33, i32 %34, %struct.expdesc* %35, i32 %36)
  br label %40

; <label>:37:                                     ; preds = %3
  %38 = load %struct.LexState*, %struct.LexState** %4, align 8
  %39 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  call void @simpleexp(%struct.LexState* %38, %struct.expdesc* %39)
  br label %40

; <label>:40:                                     ; preds = %37, %23
  %41 = load %struct.LexState*, %struct.LexState** %4, align 8
  %42 = getelementptr inbounds %struct.LexState, %struct.LexState* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.Token, %struct.Token* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @getbinopr(i32 %44)
  store i32 %45, i32* %7, align 4
  br label %46

; <label>:46:                                     ; preds = %60, %40
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 21
  br i1 %48, label %49, label %58

; <label>:49:                                     ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [21 x %struct.anon.9], [21 x %struct.anon.9]* @priority, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 2
  %55 = zext i8 %54 to i32
  %56 = load i32, i32* %6, align 4
  %57 = icmp sgt i32 %55, %56
  br label %58

; <label>:58:                                     ; preds = %49, %46
  %59 = phi i1 [ false, %46 ], [ %57, %49 ]
  br i1 %59, label %60, label %85

; <label>:60:                                     ; preds = %58
  %61 = load %struct.LexState*, %struct.LexState** %4, align 8
  %62 = getelementptr inbounds %struct.LexState, %struct.LexState* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  %64 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @luaX_next(%struct.LexState* %64)
  %65 = load %struct.LexState*, %struct.LexState** %4, align 8
  %66 = getelementptr inbounds %struct.LexState, %struct.LexState* %65, i32 0, i32 5
  %67 = load %struct.FuncState*, %struct.FuncState** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  call void @luaK_infix(%struct.FuncState* %67, i32 %68, %struct.expdesc* %69)
  %70 = load %struct.LexState*, %struct.LexState** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [21 x %struct.anon.9], [21 x %struct.anon.9]* @priority, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %73, i32 0, i32 1
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = call i32 @subexpr(%struct.LexState* %70, %struct.expdesc* %10, i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load %struct.LexState*, %struct.LexState** %4, align 8
  %79 = getelementptr inbounds %struct.LexState, %struct.LexState* %78, i32 0, i32 5
  %80 = load %struct.FuncState*, %struct.FuncState** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %83 = load i32, i32* %12, align 4
  call void @luaK_posfix(%struct.FuncState* %80, i32 %81, %struct.expdesc* %82, %struct.expdesc* %10, i32 %83)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %7, align 4
  br label %46

; <label>:85:                                     ; preds = %58
  %86 = load %struct.LexState*, %struct.LexState** %4, align 8
  %87 = getelementptr inbounds %struct.LexState, %struct.LexState* %86, i32 0, i32 6
  %88 = load %struct.lua_State*, %struct.lua_State** %87, align 8
  %89 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %88, i32 0, i32 19
  %90 = load i32, i32* %89, align 8
  %91 = add i32 %90, -1
  store i32 %91, i32* %89, align 8
  %92 = load i32, i32* %7, align 4
  ret i32 %92
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
  %19 = bitcast %union.anon.7* %18 to double*
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
  %29 = bitcast %union.anon.7* %28 to i64*
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
  call void @luaX_syntaxerror(%struct.LexState* %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0)) #6
  unreachable

; <label>:56:                                     ; preds = %44
  %57 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  %58 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %59 = call i32 @luaK_codeABCk(%struct.FuncState* %58, i32 81, i32 0, i32 0, i32 1, i32 0)
  call void @init_exp(%struct.expdesc* %57, i32 17, i32 %59)
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
  %16 = call i32 @luaK_codeABCk(%struct.FuncState* %15, i32 17, i32 0, i32 0, i32 0, i32 0)
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
  call void @init_exp(%struct.expdesc* %22, i32 15, i32 %23)
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
  %57 = getelementptr inbounds %struct.Proto, %struct.Proto* %56, i32 0, i32 16
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, -16711681
  %64 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @luaO_int2fb(i32 %65)
  %67 = shl i32 %66, 16
  %68 = and i32 %67, 16711680
  %69 = or i32 %63, %68
  %70 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %71 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %70, i32 0, i32 0
  %72 = load %struct.Proto*, %struct.Proto** %71, align 8
  %73 = getelementptr inbounds %struct.Proto, %struct.Proto* %72, i32 0, i32 16
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %69, i32* %77, align 4
  %78 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %79 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %78, i32 0, i32 0
  %80 = load %struct.Proto*, %struct.Proto** %79, align 8
  %81 = getelementptr inbounds %struct.Proto, %struct.Proto* %80, i32 0, i32 16
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 16777215
  %88 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %8, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @luaO_int2fb(i32 %89)
  %91 = shl i32 %90, 24
  %92 = and i32 %91, -16777216
  %93 = or i32 %87, %92
  %94 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %95 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %94, i32 0, i32 0
  %96 = load %struct.Proto*, %struct.Proto** %95, align 8
  %97 = getelementptr inbounds %struct.Proto, %struct.Proto* %96, i32 0, i32 16
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
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 13
  store i32 %14, i32* %17, align 4
  %18 = load %struct.LexState*, %struct.LexState** %5, align 8
  call void @open_func(%struct.LexState* %18, %struct.FuncState* %9, %struct.BlockCnt* %10)
  %19 = load %struct.LexState*, %struct.LexState** %5, align 8
  call void @checknext(%struct.LexState* %19, i32 40)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

; <label>:22:                                     ; preds = %4
  %23 = load %struct.LexState*, %struct.LexState** %5, align 8
  %24 = load %struct.LexState*, %struct.LexState** %5, align 8
  %25 = call %struct.TString* @luaX_newstring(%struct.LexState* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i64 4)
  call void @new_localvar(%struct.LexState* %23, %struct.TString* %25)
  %26 = load %struct.LexState*, %struct.LexState** %5, align 8
  call void @adjustlocalvars(%struct.LexState* %26, i32 1)
  br label %27

; <label>:27:                                     ; preds = %22, %4
  %28 = load %struct.LexState*, %struct.LexState** %5, align 8
  call void @parlist(%struct.LexState* %28)
  %29 = load %struct.LexState*, %struct.LexState** %5, align 8
  call void @checknext(%struct.LexState* %29, i32 41)
  %30 = load %struct.LexState*, %struct.LexState** %5, align 8
  call void @statlist(%struct.LexState* %30)
  %31 = load %struct.LexState*, %struct.LexState** %5, align 8
  %32 = getelementptr inbounds %struct.LexState, %struct.LexState* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 0
  %35 = load %struct.Proto*, %struct.Proto** %34, align 8
  %36 = getelementptr inbounds %struct.Proto, %struct.Proto* %35, i32 0, i32 14
  store i32 %33, i32* %36, align 8
  %37 = load %struct.LexState*, %struct.LexState** %5, align 8
  %38 = load i32, i32* %8, align 4
  call void @check_match(%struct.LexState* %37, i32 262, i32 265, i32 %38)
  %39 = load %struct.LexState*, %struct.LexState** %5, align 8
  %40 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  call void @codeclosure(%struct.LexState* %39, %struct.expdesc* %40)
  %41 = load %struct.LexState*, %struct.LexState** %5, align 8
  call void @close_func(%struct.LexState* %41)
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
  call void @codename(%struct.LexState* %33, %struct.expdesc* %8)
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
  %28 = bitcast %union.anon.7* %27 to i32*
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
  %15 = icmp eq i32 %14, 16
  br i1 %15, label %22, label %16

; <label>:16:                                     ; preds = %10
  %17 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %18 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 17
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
  %31 = bitcast %union.anon.7* %30 to i32*
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
  %56 = bitcast %union.anon.7* %55 to i32*
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
  call void @checklimit(%struct.FuncState* %10, i32 %13, i32 2147483647, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
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
  %9 = alloca %struct.expdesc, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.ConsControl* %1, %struct.ConsControl** %4, align 8
  %10 = load %struct.LexState*, %struct.LexState** %3, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 5
  %12 = load %struct.FuncState*, %struct.FuncState** %11, align 8
  store %struct.FuncState* %12, %struct.FuncState** %5, align 8
  %13 = load %struct.LexState*, %struct.LexState** %3, align 8
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 5
  %15 = load %struct.FuncState*, %struct.FuncState** %14, align 8
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %15, i32 0, i32 15
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
  call void @checklimit(%struct.FuncState* %25, i32 %28, i32 2147483647, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  %29 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @codename(%struct.LexState* %29, %struct.expdesc* %8)
  br label %32

; <label>:30:                                     ; preds = %2
  %31 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @yindex(%struct.LexState* %31, %struct.expdesc* %8)
  br label %32

; <label>:32:                                     ; preds = %30, %24
  %33 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %34 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @checknext(%struct.LexState* %37, i32 61)
  %38 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %39 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %38, i32 0, i32 1
  %40 = load %struct.expdesc*, %struct.expdesc** %39, align 8
  %41 = bitcast %struct.expdesc* %7 to i8*
  %42 = bitcast %struct.expdesc* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 24, i32 8, i1 false)
  %43 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  call void @luaK_indexed(%struct.FuncState* %43, %struct.expdesc* %7, %struct.expdesc* %8)
  %44 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @expr(%struct.LexState* %44, %struct.expdesc* %9)
  %45 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  call void @luaK_storevar(%struct.FuncState* %45, %struct.expdesc* %7, %struct.expdesc* %9)
  %46 = load i32, i32* %6, align 4
  %47 = trunc i32 %46 to i8
  %48 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %49 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %48, i32 0, i32 15
  store i8 %47, i8* %49, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codename(%struct.LexState*, %struct.expdesc*) #0 {
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare hidden void @luaK_indexed(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #1

declare hidden void @luaK_storevar(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #1

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
  br i1 %23, label %24, label %57

; <label>:24:                                     ; preds = %1
  %25 = load %struct.Proto*, %struct.Proto** %6, align 8
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  %28 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %29 = load %struct.Proto*, %struct.Proto** %6, align 8
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %29, i32 0, i32 17
  %31 = load %struct.Proto**, %struct.Proto*** %30, align 8
  %32 = bitcast %struct.Proto** %31 to i8*
  %33 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.Proto*, %struct.Proto** %6, align 8
  %37 = getelementptr inbounds %struct.Proto, %struct.Proto* %36, i32 0, i32 10
  %38 = call i8* @luaM_growaux_(%struct.lua_State* %28, i8* %32, i32 %35, i32* %37, i32 8, i32 131071, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  %39 = bitcast i8* %38 to %struct.Proto**
  %40 = load %struct.Proto*, %struct.Proto** %6, align 8
  %41 = getelementptr inbounds %struct.Proto, %struct.Proto* %40, i32 0, i32 17
  store %struct.Proto** %39, %struct.Proto*** %41, align 8
  br label %42

; <label>:42:                                     ; preds = %48, %24
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.Proto*, %struct.Proto** %6, align 8
  %45 = getelementptr inbounds %struct.Proto, %struct.Proto* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %56

; <label>:48:                                     ; preds = %42
  %49 = load %struct.Proto*, %struct.Proto** %6, align 8
  %50 = getelementptr inbounds %struct.Proto, %struct.Proto* %49, i32 0, i32 17
  %51 = load %struct.Proto**, %struct.Proto*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds %struct.Proto*, %struct.Proto** %51, i64 %54
  store %struct.Proto* null, %struct.Proto** %55, align 8
  br label %42

; <label>:56:                                     ; preds = %42
  br label %57

; <label>:57:                                     ; preds = %56, %1
  %58 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %59 = call %struct.Proto* @luaF_newproto(%struct.lua_State* %58)
  store %struct.Proto* %59, %struct.Proto** %3, align 8
  %60 = load %struct.Proto*, %struct.Proto** %6, align 8
  %61 = getelementptr inbounds %struct.Proto, %struct.Proto* %60, i32 0, i32 17
  %62 = load %struct.Proto**, %struct.Proto*** %61, align 8
  %63 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %64 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds %struct.Proto*, %struct.Proto** %62, i64 %67
  store %struct.Proto* %59, %struct.Proto** %68, align 8
  %69 = load %struct.Proto*, %struct.Proto** %6, align 8
  %70 = getelementptr inbounds %struct.Proto, %struct.Proto* %69, i32 0, i32 2
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

; <label>:75:                                     ; preds = %57
  %76 = load %struct.Proto*, %struct.Proto** %3, align 8
  %77 = getelementptr inbounds %struct.Proto, %struct.Proto* %76, i32 0, i32 2
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %79, 24
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

; <label>:82:                                     ; preds = %75
  %83 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %84 = load %struct.Proto*, %struct.Proto** %6, align 8
  %85 = bitcast %struct.Proto* %84 to %union.GCUnion*
  %86 = bitcast %union.GCUnion* %85 to %struct.GCObject*
  %87 = load %struct.Proto*, %struct.Proto** %3, align 8
  %88 = bitcast %struct.Proto* %87 to %union.GCUnion*
  %89 = bitcast %union.GCUnion* %88 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %83, %struct.GCObject* %86, %struct.GCObject* %89)
  br label %91

; <label>:90:                                     ; preds = %75, %57
  br label %91

; <label>:91:                                     ; preds = %90, %82
  %92 = load %struct.Proto*, %struct.Proto** %3, align 8
  ret %struct.Proto* %92
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
  %20 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  %23 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %22, %25
  call void @checklimit(%struct.FuncState* %17, i32 %26, i32 200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  %27 = load %struct.LexState*, %struct.LexState** %3, align 8
  %28 = getelementptr inbounds %struct.LexState, %struct.LexState* %27, i32 0, i32 6
  %29 = load %struct.lua_State*, %struct.lua_State** %28, align 8
  %30 = load %struct.Dyndata*, %struct.Dyndata** %6, align 8
  %31 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %31, i32 0, i32 0
  %33 = load %struct.Vardesc*, %struct.Vardesc** %32, align 8
  %34 = bitcast %struct.Vardesc* %33 to i8*
  %35 = load %struct.Dyndata*, %struct.Dyndata** %6, align 8
  %36 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  %40 = load %struct.Dyndata*, %struct.Dyndata** %6, align 8
  %41 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %41, i32 0, i32 2
  %43 = call i8* @luaM_growaux_(%struct.lua_State* %29, i8* %34, i32 %39, i32* %42, i32 2, i32 2147483647, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  %44 = bitcast i8* %43 to %struct.Vardesc*
  %45 = load %struct.Dyndata*, %struct.Dyndata** %6, align 8
  %46 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %46, i32 0, i32 0
  store %struct.Vardesc* %44, %struct.Vardesc** %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = trunc i32 %48 to i16
  %50 = load %struct.Dyndata*, %struct.Dyndata** %6, align 8
  %51 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %51, i32 0, i32 0
  %53 = load %struct.Vardesc*, %struct.Vardesc** %52, align 8
  %54 = load %struct.Dyndata*, %struct.Dyndata** %6, align 8
  %55 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %53, i64 %59
  %61 = getelementptr inbounds %struct.Vardesc, %struct.Vardesc* %60, i32 0, i32 0
  store i16 %49, i16* %61, align 2
  ret void
}

declare hidden %struct.TString* @luaX_newstring(%struct.LexState*, i8*, i64) #1

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
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i32 0, i32 13
  %11 = load i8, i8* %10, align 2
  %12 = zext i8 %11 to i32
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %12, %13
  %15 = trunc i32 %14 to i8
  %16 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %16, i32 0, i32 13
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
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %26, i32 0, i32 13
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
  %6 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %7 = load %struct.LexState*, %struct.LexState** %2, align 8
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 5
  %9 = load %struct.FuncState*, %struct.FuncState** %8, align 8
  store %struct.FuncState* %9, %struct.FuncState** %3, align 8
  %10 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i32 0, i32 0
  %12 = load %struct.Proto*, %struct.Proto** %11, align 8
  store %struct.Proto* %12, %struct.Proto** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.LexState*, %struct.LexState** %2, align 8
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.Token, %struct.Token* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 41
  br i1 %17, label %18, label %45

; <label>:18:                                     ; preds = %1
  br label %19

; <label>:19:                                     ; preds = %42, %18
  %20 = load %struct.LexState*, %struct.LexState** %2, align 8
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.Token, %struct.Token* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %32 [
    i32 292, label %24
    i32 281, label %30
  ]

; <label>:24:                                     ; preds = %19
  %25 = load %struct.LexState*, %struct.LexState** %2, align 8
  %26 = load %struct.LexState*, %struct.LexState** %2, align 8
  %27 = call %struct.TString* @str_checkname(%struct.LexState* %26)
  call void @new_localvar(%struct.LexState* %25, %struct.TString* %27)
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %34

; <label>:30:                                     ; preds = %19
  %31 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_next(%struct.LexState* %31)
  store i32 1, i32* %6, align 4
  br label %34

; <label>:32:                                     ; preds = %19
  %33 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @luaX_syntaxerror(%struct.LexState* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0)) #6
  unreachable

; <label>:34:                                     ; preds = %30, %24
  br label %35

; <label>:35:                                     ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

; <label>:38:                                     ; preds = %35
  %39 = load %struct.LexState*, %struct.LexState** %2, align 8
  %40 = call i32 @testnext(%struct.LexState* %39, i32 44)
  %41 = icmp ne i32 %40, 0
  br label %42

; <label>:42:                                     ; preds = %38, %35
  %43 = phi i1 [ false, %35 ], [ %41, %38 ]
  br i1 %43, label %19, label %44

; <label>:44:                                     ; preds = %42
  br label %45

; <label>:45:                                     ; preds = %44, %1
  %46 = load %struct.LexState*, %struct.LexState** %2, align 8
  %47 = load i32, i32* %5, align 4
  call void @adjustlocalvars(%struct.LexState* %46, i32 %47)
  %48 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %49 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %48, i32 0, i32 13
  %50 = load i8, i8* %49, align 2
  %51 = load %struct.Proto*, %struct.Proto** %4, align 8
  %52 = getelementptr inbounds %struct.Proto, %struct.Proto* %51, i32 0, i32 3
  store i8 %50, i8* %52, align 2
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

; <label>:55:                                     ; preds = %45
  %56 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %57 = load %struct.Proto*, %struct.Proto** %4, align 8
  %58 = getelementptr inbounds %struct.Proto, %struct.Proto* %57, i32 0, i32 3
  %59 = load i8, i8* %58, align 2
  %60 = zext i8 %59 to i32
  call void @setvararg(%struct.FuncState* %56, i32 %60)
  br label %61

; <label>:61:                                     ; preds = %55, %45
  %62 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %63 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %64 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %63, i32 0, i32 13
  %65 = load i8, i8* %64, align 2
  %66 = zext i8 %65 to i32
  call void @luaK_reserveregs(%struct.FuncState* %62, i32 %66)
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
  %17 = call i32 @luaK_codeABx(%struct.FuncState* %12, i32 80, i32 0, i32 %16)
  call void @init_exp(%struct.expdesc* %11, i32 15, i32 %17)
  %18 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %19 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %18, %struct.expdesc* %19)
  ret void
}

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
  %17 = load %struct.LexState*, %struct.LexState** %3, align 8
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %17, i32 0, i32 6
  %19 = load %struct.lua_State*, %struct.lua_State** %18, align 8
  %20 = load %struct.Proto*, %struct.Proto** %6, align 8
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 21
  %22 = load %struct.LocVar*, %struct.LocVar** %21, align 8
  %23 = bitcast %struct.LocVar* %22 to i8*
  %24 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %25 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %24, i32 0, i32 12
  %26 = load i16, i16* %25, align 8
  %27 = sext i16 %26 to i32
  %28 = load %struct.Proto*, %struct.Proto** %6, align 8
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 11
  %30 = call i8* @luaM_growaux_(%struct.lua_State* %19, i8* %23, i32 %27, i32* %29, i32 16, i32 32767, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  %31 = bitcast i8* %30 to %struct.LocVar*
  %32 = load %struct.Proto*, %struct.Proto** %6, align 8
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %32, i32 0, i32 21
  store %struct.LocVar* %31, %struct.LocVar** %33, align 8
  br label %34

; <label>:34:                                     ; preds = %40, %2
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.Proto*, %struct.Proto** %6, align 8
  %37 = getelementptr inbounds %struct.Proto, %struct.Proto* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %49

; <label>:40:                                     ; preds = %34
  %41 = load %struct.Proto*, %struct.Proto** %6, align 8
  %42 = getelementptr inbounds %struct.Proto, %struct.Proto* %41, i32 0, i32 21
  %43 = load %struct.LocVar*, %struct.LocVar** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %43, i64 %46
  %48 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %47, i32 0, i32 0
  store %struct.TString* null, %struct.TString** %48, align 8
  br label %34

; <label>:49:                                     ; preds = %34
  %50 = load %struct.TString*, %struct.TString** %4, align 8
  %51 = load %struct.Proto*, %struct.Proto** %6, align 8
  %52 = getelementptr inbounds %struct.Proto, %struct.Proto* %51, i32 0, i32 21
  %53 = load %struct.LocVar*, %struct.LocVar** %52, align 8
  %54 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %54, i32 0, i32 12
  %56 = load i16, i16* %55, align 8
  %57 = sext i16 %56 to i64
  %58 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %53, i64 %57
  %59 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %58, i32 0, i32 0
  store %struct.TString* %50, %struct.TString** %59, align 8
  %60 = load %struct.Proto*, %struct.Proto** %6, align 8
  %61 = getelementptr inbounds %struct.Proto, %struct.Proto* %60, i32 0, i32 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

; <label>:66:                                     ; preds = %49
  %67 = load %struct.TString*, %struct.TString** %4, align 8
  %68 = getelementptr inbounds %struct.TString, %struct.TString* %67, i32 0, i32 2
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, 24
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

; <label>:73:                                     ; preds = %66
  %74 = load %struct.LexState*, %struct.LexState** %3, align 8
  %75 = getelementptr inbounds %struct.LexState, %struct.LexState* %74, i32 0, i32 6
  %76 = load %struct.lua_State*, %struct.lua_State** %75, align 8
  %77 = load %struct.Proto*, %struct.Proto** %6, align 8
  %78 = bitcast %struct.Proto* %77 to %union.GCUnion*
  %79 = bitcast %union.GCUnion* %78 to %struct.GCObject*
  %80 = load %struct.TString*, %struct.TString** %4, align 8
  %81 = bitcast %struct.TString* %80 to %union.GCUnion*
  %82 = bitcast %union.GCUnion* %81 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %76, %struct.GCObject* %79, %struct.GCObject* %82)
  br label %84

; <label>:83:                                     ; preds = %66, %49
  br label %84

; <label>:84:                                     ; preds = %83, %73
  %85 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %86 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %85, i32 0, i32 12
  %87 = load i16, i16* %86, align 8
  %88 = add i16 %87, 1
  store i16 %88, i16* %86, align 8
  %89 = sext i16 %87 to i32
  ret i32 %89
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
  %12 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %11, i32 0, i32 0
  %13 = load %struct.Vardesc*, %struct.Vardesc** %12, align 8
  %14 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 8
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
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 21
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
  call void @luaX_syntaxerror(%struct.LexState* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)) #6
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
  call void @codename(%struct.LexState* %13, %struct.expdesc* %6)
  %14 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %15 = load %struct.expdesc*, %struct.expdesc** %4, align 8
  call void @luaK_indexed(%struct.FuncState* %14, %struct.expdesc* %15, %struct.expdesc* %6)
  ret void
}

declare hidden void @luaK_exp2anyregup(%struct.FuncState*, %struct.expdesc*) #1

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
  call void @luaX_syntaxerror(%struct.LexState* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0)) #6
  unreachable

; <label>:46:                                     ; preds = %36, %34, %31
  %47 = load %struct.expdesc*, %struct.expdesc** %5, align 8
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %47, i32 0, i32 1
  %49 = bitcast %union.anon.7* %48 to i32*
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %9, align 4
  %51 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 16
  br i1 %53, label %58, label %54

; <label>:54:                                     ; preds = %46
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 17
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
  %67 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %66, i32 0, i32 15
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
  %79 = call i32 @luaK_codeABCk(%struct.FuncState* %75, i32 69, i32 %76, i32 %78, i32 2, i32 0)
  call void @init_exp(%struct.expdesc* %74, i32 16, i32 %79)
  %80 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %81 = load i32, i32* %6, align 4
  call void @luaK_fixline(%struct.FuncState* %80, i32 %81)
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  %84 = trunc i32 %83 to i8
  %85 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %86 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %85, i32 0, i32 15
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
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %7, i32 0, i32 13
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
  %23 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %23, i32 0, i32 17
  store i8 1, i8* %24, align 2
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
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i32 0, i32 18
  %12 = load %struct.Upvaldesc*, %struct.Upvaldesc** %11, align 8
  store %struct.Upvaldesc* %12, %struct.Upvaldesc** %7, align 8
  store i32 0, i32* %6, align 4
  br label %13

; <label>:13:                                     ; preds = %32, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.FuncState*, %struct.FuncState** %4, align 8
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %15, i32 0, i32 14
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

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Labeldesc* @findlabel(%struct.LexState*, %struct.TString*) #0 {
  %3 = alloca %struct.Labeldesc*, align 8
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca %struct.TString*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Dyndata*, align 8
  %8 = alloca %struct.Labeldesc*, align 8
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store %struct.TString* %1, %struct.TString** %5, align 8
  %9 = load %struct.LexState*, %struct.LexState** %4, align 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 10
  %11 = load %struct.Dyndata*, %struct.Dyndata** %10, align 8
  store %struct.Dyndata* %11, %struct.Dyndata** %7, align 8
  %12 = load %struct.LexState*, %struct.LexState** %4, align 8
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 5
  %14 = load %struct.FuncState*, %struct.FuncState** %13, align 8
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 11
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  br label %17

; <label>:17:                                     ; preds = %40, %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.Dyndata*, %struct.Dyndata** %7, align 8
  %20 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %43

; <label>:24:                                     ; preds = %17
  %25 = load %struct.Dyndata*, %struct.Dyndata** %7, align 8
  %26 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %26, i32 0, i32 0
  %28 = load %struct.Labeldesc*, %struct.Labeldesc** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %28, i64 %30
  store %struct.Labeldesc* %31, %struct.Labeldesc** %8, align 8
  %32 = load %struct.Labeldesc*, %struct.Labeldesc** %8, align 8
  %33 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %32, i32 0, i32 0
  %34 = load %struct.TString*, %struct.TString** %33, align 8
  %35 = load %struct.TString*, %struct.TString** %5, align 8
  %36 = icmp eq %struct.TString* %34, %35
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %24
  %38 = load %struct.Labeldesc*, %struct.Labeldesc** %8, align 8
  store %struct.Labeldesc* %38, %struct.Labeldesc** %3, align 8
  br label %44

; <label>:39:                                     ; preds = %24
  br label %40

; <label>:40:                                     ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %17

; <label>:43:                                     ; preds = %17
  store %struct.Labeldesc* null, %struct.Labeldesc** %3, align 8
  br label %44

; <label>:44:                                     ; preds = %43, %37
  %45 = load %struct.Labeldesc*, %struct.Labeldesc** %3, align 8
  ret %struct.Labeldesc* %45
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
  %15 = load %struct.LexState*, %struct.LexState** %6, align 8
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 6
  %17 = load %struct.lua_State*, %struct.lua_State** %16, align 8
  %18 = load %struct.Labellist*, %struct.Labellist** %7, align 8
  %19 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %18, i32 0, i32 0
  %20 = load %struct.Labeldesc*, %struct.Labeldesc** %19, align 8
  %21 = bitcast %struct.Labeldesc* %20 to i8*
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.Labellist*, %struct.Labellist** %7, align 8
  %24 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %23, i32 0, i32 2
  %25 = call i8* @luaM_growaux_(%struct.lua_State* %17, i8* %21, i32 %22, i32* %24, i32 24, i32 32767, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  %26 = bitcast i8* %25 to %struct.Labeldesc*
  %27 = load %struct.Labellist*, %struct.Labellist** %7, align 8
  %28 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %27, i32 0, i32 0
  store %struct.Labeldesc* %26, %struct.Labeldesc** %28, align 8
  %29 = load %struct.TString*, %struct.TString** %8, align 8
  %30 = load %struct.Labellist*, %struct.Labellist** %7, align 8
  %31 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %30, i32 0, i32 0
  %32 = load %struct.Labeldesc*, %struct.Labeldesc** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %32, i64 %34
  %36 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %35, i32 0, i32 0
  store %struct.TString* %29, %struct.TString** %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.Labellist*, %struct.Labellist** %7, align 8
  %39 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %38, i32 0, i32 0
  %40 = load %struct.Labeldesc*, %struct.Labeldesc** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %40, i64 %42
  %44 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %43, i32 0, i32 2
  store i32 %37, i32* %44, align 4
  %45 = load %struct.LexState*, %struct.LexState** %6, align 8
  %46 = getelementptr inbounds %struct.LexState, %struct.LexState* %45, i32 0, i32 5
  %47 = load %struct.FuncState*, %struct.FuncState** %46, align 8
  %48 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %47, i32 0, i32 13
  %49 = load i8, i8* %48, align 2
  %50 = load %struct.Labellist*, %struct.Labellist** %7, align 8
  %51 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %50, i32 0, i32 0
  %52 = load %struct.Labeldesc*, %struct.Labeldesc** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %52, i64 %54
  %56 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %55, i32 0, i32 3
  store i8 %49, i8* %56, align 8
  %57 = load %struct.Labellist*, %struct.Labellist** %7, align 8
  %58 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %57, i32 0, i32 0
  %59 = load %struct.Labeldesc*, %struct.Labeldesc** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %59, i64 %61
  %63 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %62, i32 0, i32 4
  store i8 0, i8* %63, align 1
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
define internal i32 @createlabel(%struct.LexState*, %struct.TString*, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.LexState*, align 8
  %7 = alloca %struct.TString*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.FuncState*, align 8
  %11 = alloca %struct.Labellist*, align 8
  %12 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %6, align 8
  store %struct.TString* %1, %struct.TString** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.LexState*, %struct.LexState** %6, align 8
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %13, i32 0, i32 5
  %15 = load %struct.FuncState*, %struct.FuncState** %14, align 8
  store %struct.FuncState* %15, %struct.FuncState** %10, align 8
  %16 = load %struct.LexState*, %struct.LexState** %6, align 8
  %17 = getelementptr inbounds %struct.LexState, %struct.LexState* %16, i32 0, i32 10
  %18 = load %struct.Dyndata*, %struct.Dyndata** %17, align 8
  %19 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %18, i32 0, i32 2
  store %struct.Labellist* %19, %struct.Labellist** %11, align 8
  %20 = load %struct.LexState*, %struct.LexState** %6, align 8
  %21 = load %struct.Labellist*, %struct.Labellist** %11, align 8
  %22 = load %struct.TString*, %struct.TString** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.FuncState*, %struct.FuncState** %10, align 8
  %25 = call i32 @luaK_getlabel(%struct.FuncState* %24)
  %26 = call i32 @newlabelentry(%struct.LexState* %20, %struct.Labellist* %21, %struct.TString* %22, i32 %23, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

; <label>:29:                                     ; preds = %4
  %30 = load %struct.FuncState*, %struct.FuncState** %10, align 8
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %30, i32 0, i32 3
  %32 = load %struct.BlockCnt*, %struct.BlockCnt** %31, align 8
  %33 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %32, i32 0, i32 3
  %34 = load i8, i8* %33, align 8
  %35 = load %struct.Labellist*, %struct.Labellist** %11, align 8
  %36 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %35, i32 0, i32 0
  %37 = load %struct.Labeldesc*, %struct.Labeldesc** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %37, i64 %39
  %41 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %40, i32 0, i32 3
  store i8 %34, i8* %41, align 8
  br label %42

; <label>:42:                                     ; preds = %29, %4
  %43 = load %struct.LexState*, %struct.LexState** %6, align 8
  %44 = load %struct.Labellist*, %struct.Labellist** %11, align 8
  %45 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %44, i32 0, i32 0
  %46 = load %struct.Labeldesc*, %struct.Labeldesc** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %46, i64 %48
  %50 = call i32 @solvegotos(%struct.LexState* %43, %struct.Labeldesc* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

; <label>:52:                                     ; preds = %42
  %53 = load %struct.FuncState*, %struct.FuncState** %10, align 8
  %54 = load %struct.FuncState*, %struct.FuncState** %10, align 8
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %54, i32 0, i32 13
  %56 = load i8, i8* %55, align 2
  %57 = zext i8 %56 to i32
  %58 = call i32 @luaK_codeABCk(%struct.FuncState* %53, i32 55, i32 %57, i32 0, i32 0, i32 0)
  store i32 1, i32* %5, align 4
  br label %60

; <label>:59:                                     ; preds = %42
  store i32 0, i32* %5, align 4
  br label %60

; <label>:60:                                     ; preds = %59, %52
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @removevars(%struct.FuncState*, i32) #0 {
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i32 0, i32 13
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
  %17 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, %10
  store i32 %19, i32* %17, align 8
  br label %20

; <label>:20:                                     ; preds = %27, %2
  %21 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %21, i32 0, i32 13
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
  %33 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %32, i32 0, i32 13
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
  %8 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i32 0, i32 2
  %10 = load %struct.LexState*, %struct.LexState** %9, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 10
  %12 = load %struct.Dyndata*, %struct.Dyndata** %11, align 8
  %13 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %12, i32 0, i32 1
  store %struct.Labellist* %13, %struct.Labellist** %6, align 8
  %14 = load %struct.BlockCnt*, %struct.BlockCnt** %4, align 8
  %15 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  br label %17

; <label>:17:                                     ; preds = %56, %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.Labellist*, %struct.Labellist** %6, align 8
  %20 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %59

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
  br i1 %38, label %39, label %55

; <label>:39:                                     ; preds = %23
  %40 = load %struct.BlockCnt*, %struct.BlockCnt** %4, align 8
  %41 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %40, i32 0, i32 3
  %42 = load i8, i8* %41, align 8
  %43 = load %struct.Labeldesc*, %struct.Labeldesc** %7, align 8
  %44 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %43, i32 0, i32 3
  store i8 %42, i8* %44, align 8
  %45 = load %struct.BlockCnt*, %struct.BlockCnt** %4, align 8
  %46 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %45, i32 0, i32 4
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load %struct.Labeldesc*, %struct.Labeldesc** %7, align 8
  %50 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %49, i32 0, i32 4
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, %48
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %50, align 1
  br label %55

; <label>:55:                                     ; preds = %39, %23
  br label %56

; <label>:56:                                     ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %17

; <label>:59:                                     ; preds = %17
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
  %9 = load %struct.LexState*, %struct.LexState** %3, align 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 6
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8
  %12 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i64 5)
  %13 = icmp eq %struct.TString* %8, %12
  br i1 %13, label %14, label %23

; <label>:14:                                     ; preds = %2
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i8** %5, align 8
  %15 = load %struct.LexState*, %struct.LexState** %3, align 8
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %15, i32 0, i32 6
  %17 = load %struct.lua_State*, %struct.lua_State** %16, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.Labeldesc*, %struct.Labeldesc** %4, align 8
  %20 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %17, i8* %18, i32 %21)
  store i8* %22, i8** %5, align 8
  br label %37

; <label>:23:                                     ; preds = %2
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i32 0, i32 0), i8** %5, align 8
  %24 = load %struct.LexState*, %struct.LexState** %3, align 8
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %24, i32 0, i32 6
  %26 = load %struct.lua_State*, %struct.lua_State** %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.Labeldesc*, %struct.Labeldesc** %4, align 8
  %29 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %28, i32 0, i32 0
  %30 = load %struct.TString*, %struct.TString** %29, align 8
  %31 = bitcast %struct.TString* %30 to i8*
  %32 = getelementptr inbounds i8, i8* %31, i64 24
  %33 = load %struct.Labeldesc*, %struct.Labeldesc** %4, align 8
  %34 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %26, i8* %27, i8* %32, i32 %35)
  store i8* %36, i8** %5, align 8
  br label %37

; <label>:37:                                     ; preds = %23, %14
  %38 = load %struct.LexState*, %struct.LexState** %3, align 8
  %39 = load i8*, i8** %5, align 8
  call void @luaK_semerror(%struct.LexState* %38, i8* %39) #6
  unreachable
                                                  ; No predecessors!
  unreachable
}

declare hidden i32 @luaK_getlabel(%struct.FuncState*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solvegotos(%struct.LexState*, %struct.Labeldesc*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.Labeldesc*, align 8
  %5 = alloca %struct.Labellist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.Labeldesc* %1, %struct.Labeldesc** %4, align 8
  %8 = load %struct.LexState*, %struct.LexState** %3, align 8
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i32 0, i32 10
  %10 = load %struct.Dyndata*, %struct.Dyndata** %9, align 8
  %11 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %10, i32 0, i32 1
  store %struct.Labellist* %11, %struct.Labellist** %5, align 8
  %12 = load %struct.LexState*, %struct.LexState** %3, align 8
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %12, i32 0, i32 5
  %14 = load %struct.FuncState*, %struct.FuncState** %13, align 8
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 3
  %16 = load %struct.BlockCnt*, %struct.BlockCnt** %15, align 8
  %17 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %19

; <label>:19:                                     ; preds = %56, %2
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.Labellist*, %struct.Labellist** %5, align 8
  %22 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %57

; <label>:25:                                     ; preds = %19
  %26 = load %struct.Labellist*, %struct.Labellist** %5, align 8
  %27 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %26, i32 0, i32 0
  %28 = load %struct.Labeldesc*, %struct.Labeldesc** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %28, i64 %30
  %32 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %31, i32 0, i32 0
  %33 = load %struct.TString*, %struct.TString** %32, align 8
  %34 = load %struct.Labeldesc*, %struct.Labeldesc** %4, align 8
  %35 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %34, i32 0, i32 0
  %36 = load %struct.TString*, %struct.TString** %35, align 8
  %37 = icmp eq %struct.TString* %33, %36
  br i1 %37, label %38, label %53

; <label>:38:                                     ; preds = %25
  %39 = load %struct.Labellist*, %struct.Labellist** %5, align 8
  %40 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %39, i32 0, i32 0
  %41 = load %struct.Labeldesc*, %struct.Labeldesc** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %41, i64 %43
  %45 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %44, i32 0, i32 4
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load %struct.LexState*, %struct.LexState** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.Labeldesc*, %struct.Labeldesc** %4, align 8
  call void @solvegoto(%struct.LexState* %50, i32 %51, %struct.Labeldesc* %52)
  br label %56

; <label>:53:                                     ; preds = %25
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %56

; <label>:56:                                     ; preds = %53, %38
  br label %19

; <label>:57:                                     ; preds = %19
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solvegoto(%struct.LexState*, i32, %struct.Labeldesc*) #0 {
  %4 = alloca %struct.LexState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Labeldesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.Labellist*, align 8
  %9 = alloca %struct.Labeldesc*, align 8
  store %struct.LexState* %0, %struct.LexState** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.Labeldesc* %2, %struct.Labeldesc** %6, align 8
  %10 = load %struct.LexState*, %struct.LexState** %4, align 8
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %10, i32 0, i32 10
  %12 = load %struct.Dyndata*, %struct.Dyndata** %11, align 8
  %13 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %12, i32 0, i32 1
  store %struct.Labellist* %13, %struct.Labellist** %8, align 8
  %14 = load %struct.Labellist*, %struct.Labellist** %8, align 8
  %15 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %14, i32 0, i32 0
  %16 = load %struct.Labeldesc*, %struct.Labeldesc** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %16, i64 %18
  store %struct.Labeldesc* %19, %struct.Labeldesc** %9, align 8
  %20 = load %struct.Labeldesc*, %struct.Labeldesc** %9, align 8
  %21 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %20, i32 0, i32 3
  %22 = load i8, i8* %21, align 8
  %23 = zext i8 %22 to i32
  %24 = load %struct.Labeldesc*, %struct.Labeldesc** %6, align 8
  %25 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %24, i32 0, i32 3
  %26 = load i8, i8* %25, align 8
  %27 = zext i8 %26 to i32
  %28 = icmp slt i32 %23, %27
  %29 = zext i1 %28 to i32
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %3
  %35 = load %struct.LexState*, %struct.LexState** %4, align 8
  %36 = load %struct.Labeldesc*, %struct.Labeldesc** %9, align 8
  call void @jumpscopeerror(%struct.LexState* %35, %struct.Labeldesc* %36) #6
  unreachable

; <label>:37:                                     ; preds = %3
  %38 = load %struct.LexState*, %struct.LexState** %4, align 8
  %39 = getelementptr inbounds %struct.LexState, %struct.LexState* %38, i32 0, i32 5
  %40 = load %struct.FuncState*, %struct.FuncState** %39, align 8
  %41 = load %struct.Labeldesc*, %struct.Labeldesc** %9, align 8
  %42 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.Labeldesc*, %struct.Labeldesc** %6, align 8
  %45 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  call void @luaK_patchlist(%struct.FuncState* %40, i32 %43, i32 %46)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %7, align 4
  br label %48

; <label>:48:                                     ; preds = %71, %37
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.Labellist*, %struct.Labellist** %8, align 8
  %51 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %74

; <label>:55:                                     ; preds = %48
  %56 = load %struct.Labellist*, %struct.Labellist** %8, align 8
  %57 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %56, i32 0, i32 0
  %58 = load %struct.Labeldesc*, %struct.Labeldesc** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %58, i64 %60
  %62 = load %struct.Labellist*, %struct.Labellist** %8, align 8
  %63 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %62, i32 0, i32 0
  %64 = load %struct.Labeldesc*, %struct.Labeldesc** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %64, i64 %67
  %69 = bitcast %struct.Labeldesc* %61 to i8*
  %70 = bitcast %struct.Labeldesc* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 24, i32 8, i1 false)
  br label %71

; <label>:71:                                     ; preds = %55
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %48

; <label>:74:                                     ; preds = %48
  %75 = load %struct.Labellist*, %struct.Labellist** %8, align 8
  %76 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 8
  ret void
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @jumpscopeerror(%struct.LexState*, %struct.Labeldesc*) #2 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.Labeldesc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.Labeldesc* %1, %struct.Labeldesc** %4, align 8
  %7 = load %struct.LexState*, %struct.LexState** %3, align 8
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %7, i32 0, i32 5
  %9 = load %struct.FuncState*, %struct.FuncState** %8, align 8
  %10 = load %struct.Labeldesc*, %struct.Labeldesc** %4, align 8
  %11 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %10, i32 0, i32 3
  %12 = load i8, i8* %11, align 8
  %13 = zext i8 %12 to i32
  %14 = call %struct.LocVar* @getlocvar(%struct.FuncState* %9, i32 %13)
  %15 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %14, i32 0, i32 0
  %16 = load %struct.TString*, %struct.TString** %15, align 8
  %17 = bitcast %struct.TString* %16 to i8*
  %18 = getelementptr inbounds i8, i8* %17, i64 24
  store i8* %18, i8** %5, align 8
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i32 0, i32 0), i8** %6, align 8
  %19 = load %struct.LexState*, %struct.LexState** %3, align 8
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %19, i32 0, i32 6
  %21 = load %struct.lua_State*, %struct.lua_State** %20, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.Labeldesc*, %struct.Labeldesc** %4, align 8
  %24 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %23, i32 0, i32 0
  %25 = load %struct.TString*, %struct.TString** %24, align 8
  %26 = bitcast %struct.TString* %25 to i8*
  %27 = getelementptr inbounds i8, i8* %26, i64 24
  %28 = load %struct.Labeldesc*, %struct.Labeldesc** %4, align 8
  %29 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %21, i8* %22, i8* %27, i32 %30, i8* %31)
  store i8* %32, i8** %6, align 8
  %33 = load %struct.LexState*, %struct.LexState** %3, align 8
  %34 = load i8*, i8** %6, align 8
  call void @luaK_semerror(%struct.LexState* %33, i8* %34) #6
  unreachable
                                                  ; No predecessors!
  unreachable
}

; Function Attrs: noreturn
declare hidden void @luaK_semerror(%struct.LexState*, i8*) #3

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
  %12 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* %11)
  call void @luaX_syntaxerror(%struct.LexState* %5, i8* %12) #6
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
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %12, i32 0, i32 15
  %14 = load i8, i8* %13, align 4
  %15 = zext i8 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.LexState*, %struct.LexState** %4, align 8
  %17 = load %struct.LexState*, %struct.LexState** %4, align 8
  %18 = call %struct.TString* @luaX_newstring(%struct.LexState* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i64 11)
  call void @new_localvar(%struct.LexState* %16, %struct.TString* %18)
  %19 = load %struct.LexState*, %struct.LexState** %4, align 8
  %20 = load %struct.LexState*, %struct.LexState** %4, align 8
  %21 = call %struct.TString* @luaX_newstring(%struct.LexState* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i64 11)
  call void @new_localvar(%struct.LexState* %19, %struct.TString* %21)
  %22 = load %struct.LexState*, %struct.LexState** %4, align 8
  %23 = load %struct.LexState*, %struct.LexState** %4, align 8
  %24 = call %struct.TString* @luaX_newstring(%struct.LexState* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i64 10)
  call void @new_localvar(%struct.LexState* %22, %struct.TString* %24)
  %25 = load %struct.LexState*, %struct.LexState** %4, align 8
  %26 = load %struct.TString*, %struct.TString** %5, align 8
  call void @new_localvar(%struct.LexState* %25, %struct.TString* %26)
  %27 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @checknext(%struct.LexState* %27, i32 61)
  %28 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @exp1(%struct.LexState* %28)
  %29 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @checknext(%struct.LexState* %29, i32 44)
  %30 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @exp1(%struct.LexState* %30)
  %31 = load %struct.LexState*, %struct.LexState** %4, align 8
  %32 = call i32 @testnext(%struct.LexState* %31, i32 44)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %3
  %35 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @exp1(%struct.LexState* %35)
  br label %43

; <label>:36:                                     ; preds = %3
  %37 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %38 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %39 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %38, i32 0, i32 15
  %40 = load i8, i8* %39, align 4
  %41 = zext i8 %40 to i32
  call void @luaK_int(%struct.FuncState* %37, i32 %41, i64 1)
  %42 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  call void @luaK_reserveregs(%struct.FuncState* %42, i32 1)
  br label %43

; <label>:43:                                     ; preds = %36, %34
  %44 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @adjustlocalvars(%struct.LexState* %44, i32 3)
  %45 = load %struct.LexState*, %struct.LexState** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  call void @forbody(%struct.LexState* %45, i32 %46, i32 %47, i32 1, i32 0)
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
  store i32 5, i32* %7, align 4
  %13 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i32 0, i32 15
  %15 = load i8, i8* %14, align 4
  %16 = zext i8 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load %struct.LexState*, %struct.LexState** %3, align 8
  %18 = load %struct.LexState*, %struct.LexState** %3, align 8
  %19 = call %struct.TString* @luaX_newstring(%struct.LexState* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i64 15)
  call void @new_localvar(%struct.LexState* %17, %struct.TString* %19)
  %20 = load %struct.LexState*, %struct.LexState** %3, align 8
  %21 = load %struct.LexState*, %struct.LexState** %3, align 8
  %22 = call %struct.TString* @luaX_newstring(%struct.LexState* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i64 11)
  call void @new_localvar(%struct.LexState* %20, %struct.TString* %22)
  %23 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %24 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %25 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %24, i32 0, i32 13
  %26 = load i8, i8* %25, align 2
  %27 = zext i8 %26 to i32
  call void @markupval(%struct.FuncState* %23, i32 %27)
  %28 = load %struct.LexState*, %struct.LexState** %3, align 8
  %29 = load %struct.LexState*, %struct.LexState** %3, align 8
  %30 = call %struct.TString* @luaX_newstring(%struct.LexState* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i64 13)
  call void @new_localvar(%struct.LexState* %28, %struct.TString* %30)
  %31 = load %struct.LexState*, %struct.LexState** %3, align 8
  %32 = load %struct.LexState*, %struct.LexState** %3, align 8
  %33 = call %struct.TString* @luaX_newstring(%struct.LexState* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i64 13)
  call void @new_localvar(%struct.LexState* %31, %struct.TString* %33)
  %34 = load %struct.LexState*, %struct.LexState** %3, align 8
  %35 = load %struct.TString*, %struct.TString** %4, align 8
  call void @new_localvar(%struct.LexState* %34, %struct.TString* %35)
  br label %36

; <label>:36:                                     ; preds = %40, %2
  %37 = load %struct.LexState*, %struct.LexState** %3, align 8
  %38 = call i32 @testnext(%struct.LexState* %37, i32 44)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

; <label>:40:                                     ; preds = %36
  %41 = load %struct.LexState*, %struct.LexState** %3, align 8
  %42 = load %struct.LexState*, %struct.LexState** %3, align 8
  %43 = call %struct.TString* @str_checkname(%struct.LexState* %42)
  call void @new_localvar(%struct.LexState* %41, %struct.TString* %43)
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %36

; <label>:46:                                     ; preds = %36
  %47 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @checknext(%struct.LexState* %47, i32 268)
  %48 = load %struct.LexState*, %struct.LexState** %3, align 8
  %49 = getelementptr inbounds %struct.LexState, %struct.LexState* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  %51 = load %struct.LexState*, %struct.LexState** %3, align 8
  %52 = load %struct.LexState*, %struct.LexState** %3, align 8
  %53 = call i32 @explist(%struct.LexState* %52, %struct.expdesc* %6)
  call void @adjust_assign(%struct.LexState* %51, i32 4, i32 %53, %struct.expdesc* %6)
  %54 = load %struct.LexState*, %struct.LexState** %3, align 8
  call void @adjustlocalvars(%struct.LexState* %54, i32 4)
  %55 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  call void @luaK_checkstack(%struct.FuncState* %55, i32 3)
  %56 = load %struct.LexState*, %struct.LexState** %3, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %59, 4
  call void @forbody(%struct.LexState* %56, i32 %57, i32 %58, i32 %60, i32 1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exp1(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca %struct.expdesc, align 8
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %4 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @expr(%struct.LexState* %4, %struct.expdesc* %3)
  %5 = load %struct.LexState*, %struct.LexState** %2, align 8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 5
  %7 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %7, %struct.expdesc* %3)
  ret void
}

declare hidden void @luaK_int(%struct.FuncState*, i32, i64) #1

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
  call void @checknext(%struct.LexState* %18, i32 259)
  %19 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* @forbody.forprep, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @luaK_codeABx(%struct.FuncState* %19, i32 %23, i32 %24, i32 0)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  call void @enterblock(%struct.FuncState* %26, %struct.BlockCnt* %11, i8 zeroext 0)
  %27 = load %struct.LexState*, %struct.LexState** %6, align 8
  %28 = load i32, i32* %9, align 4
  call void @adjustlocalvars(%struct.LexState* %27, i32 %28)
  %29 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %30 = load i32, i32* %9, align 4
  call void @luaK_reserveregs(%struct.FuncState* %29, i32 %30)
  %31 = load %struct.LexState*, %struct.LexState** %6, align 8
  call void @block(%struct.LexState* %31)
  %32 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  call void @leaveblock(%struct.FuncState* %32)
  %33 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %36 = call i32 @luaK_getlabel(%struct.FuncState* %35)
  call void @fixforjump(%struct.FuncState* %33, i32 %34, i32 %36, i32 0)
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

; <label>:39:                                     ; preds = %5
  %40 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @luaK_codeABCk(%struct.FuncState* %40, i32 77, i32 %41, i32 0, i32 %42, i32 0)
  %44 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %45 = load i32, i32* %8, align 4
  call void @luaK_fixline(%struct.FuncState* %44, i32 %45)
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 2
  store i32 %47, i32* %7, align 4
  br label %48

; <label>:48:                                     ; preds = %39, %5
  %49 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* @forbody.forloop, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @luaK_codeABx(%struct.FuncState* %49, i32 %53, i32 %54, i32 0)
  store i32 %55, i32* %14, align 4
  %56 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  call void @fixforjump(%struct.FuncState* %56, i32 %57, i32 %59, i32 1)
  %60 = load %struct.FuncState*, %struct.FuncState** %12, align 8
  %61 = load i32, i32* %8, align 4
  call void @luaK_fixline(%struct.FuncState* %60, i32 %61)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixforjump(%struct.FuncState*, i32, i32, i32) #0 {
  %5 = alloca %struct.FuncState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.FuncState* %0, %struct.FuncState** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %11, i32 0, i32 0
  %13 = load %struct.Proto*, %struct.Proto** %12, align 8
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i32 0, i32 16
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32* %18, i32** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  %22 = sub nsw i32 %19, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  br label %28

; <label>:28:                                     ; preds = %25, %4
  %29 = load i32, i32* %10, align 4
  %30 = icmp sgt i32 %29, 131071
  %31 = zext i1 %30 to i32
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

; <label>:36:                                     ; preds = %28
  %37 = load %struct.FuncState*, %struct.FuncState** %5, align 8
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %37, i32 0, i32 2
  %39 = load %struct.LexState*, %struct.LexState** %38, align 8
  call void @luaX_syntaxerror(%struct.LexState* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0)) #6
  unreachable

; <label>:40:                                     ; preds = %28
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 32767
  %44 = load i32, i32* %10, align 4
  %45 = shl i32 %44, 15
  %46 = and i32 %45, -32768
  %47 = or i32 %43, %46
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
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
  %21 = icmp eq i32 %20, 16
  br i1 %21, label %27, label %22

; <label>:22:                                     ; preds = %4
  %23 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 17
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %22, %4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %27
  store i32 0, i32* %11, align 4
  br label %33

; <label>:33:                                     ; preds = %32, %27
  %34 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  %35 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %36 = load i32, i32* %11, align 4
  call void @luaK_setreturns(%struct.FuncState* %34, %struct.expdesc* %35, i32 %36)
  br label %56

; <label>:37:                                     ; preds = %22
  %38 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

; <label>:42:                                     ; preds = %37
  %43 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  %44 = load %struct.expdesc*, %struct.expdesc** %8, align 8
  call void @luaK_exp2nextreg(%struct.FuncState* %43, %struct.expdesc* %44)
  br label %45

; <label>:45:                                     ; preds = %42, %37
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %55

; <label>:48:                                     ; preds = %45
  %49 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  %50 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  %51 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %50, i32 0, i32 15
  %52 = load i8, i8* %51, align 4
  %53 = zext i8 %52 to i32
  %54 = load i32, i32* %10, align 4
  call void @luaK_nil(%struct.FuncState* %49, i32 %53, i32 %54)
  br label %55

; <label>:55:                                     ; preds = %48, %45
  br label %56

; <label>:56:                                     ; preds = %55, %33
  %57 = load i32, i32* %10, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %62

; <label>:59:                                     ; preds = %56
  %60 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  %61 = load i32, i32* %10, align 4
  call void @luaK_reserveregs(%struct.FuncState* %60, i32 %61)
  br label %70

; <label>:62:                                     ; preds = %56
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.FuncState*, %struct.FuncState** %9, align 8
  %65 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %64, i32 0, i32 15
  %66 = load i8, i8* %65, align 4
  %67 = zext i8 %66 to i32
  %68 = add nsw i32 %67, %63
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %65, align 4
  br label %70

; <label>:70:                                     ; preds = %62, %59
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

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tocloselocalstat(%struct.LexState*) #0 {
  %2 = alloca %struct.LexState*, align 8
  %3 = alloca %struct.FuncState*, align 8
  %4 = alloca %struct.TString*, align 8
  store %struct.LexState* %0, %struct.LexState** %2, align 8
  %5 = load %struct.LexState*, %struct.LexState** %2, align 8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i32 0, i32 5
  %7 = load %struct.FuncState*, %struct.FuncState** %6, align 8
  store %struct.FuncState* %7, %struct.FuncState** %3, align 8
  %8 = load %struct.LexState*, %struct.LexState** %2, align 8
  %9 = call %struct.TString* @str_checkname(%struct.LexState* %8)
  store %struct.TString* %9, %struct.TString** %4, align 8
  %10 = load %struct.TString*, %struct.TString** %4, align 8
  %11 = bitcast %struct.TString* %10 to i8*
  %12 = getelementptr inbounds i8, i8* %11, i64 24
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0)) #7
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %1
  %16 = load %struct.LexState*, %struct.LexState** %2, align 8
  %17 = load %struct.LexState*, %struct.LexState** %2, align 8
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %17, i32 0, i32 6
  %19 = load %struct.lua_State*, %struct.lua_State** %18, align 8
  %20 = load %struct.TString*, %struct.TString** %4, align 8
  %21 = bitcast %struct.TString* %20 to i8*
  %22 = getelementptr inbounds i8, i8* %21, i64 24
  %23 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0), i8* %22)
  call void @luaK_semerror(%struct.LexState* %16, i8* %23) #6
  unreachable

; <label>:24:                                     ; preds = %1
  %25 = load %struct.LexState*, %struct.LexState** %2, align 8
  %26 = load %struct.LexState*, %struct.LexState** %2, align 8
  %27 = call %struct.TString* @str_checkname(%struct.LexState* %26)
  call void @new_localvar(%struct.LexState* %25, %struct.TString* %27)
  %28 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @checknext(%struct.LexState* %28, i32 61)
  %29 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @exp1(%struct.LexState* %29)
  %30 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %31 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %31, i32 0, i32 13
  %33 = load i8, i8* %32, align 2
  %34 = zext i8 %33 to i32
  call void @markupval(%struct.FuncState* %30, i32 %34)
  %35 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %36 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %35, i32 0, i32 3
  %37 = load %struct.BlockCnt*, %struct.BlockCnt** %36, align 8
  %38 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %37, i32 0, i32 6
  store i8 1, i8* %38, align 1
  %39 = load %struct.LexState*, %struct.LexState** %2, align 8
  call void @adjustlocalvars(%struct.LexState* %39, i32 1)
  %40 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %41 = load %struct.FuncState*, %struct.FuncState** %3, align 8
  %42 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %41, i32 0, i32 13
  %43 = load i8, i8* %42, align 2
  %44 = zext i8 %43 to i32
  %45 = sub nsw i32 %44, 1
  %46 = call i32 @luaK_codeABCk(%struct.FuncState* %40, i32 56, i32 %45, i32 0, i32 0, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commonlocalstat(%struct.LexState*) #0 {
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

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkrepeated(%struct.LexState*, %struct.TString*) #0 {
  %3 = alloca %struct.LexState*, align 8
  %4 = alloca %struct.TString*, align 8
  %5 = alloca %struct.Labeldesc*, align 8
  %6 = alloca i8*, align 8
  store %struct.LexState* %0, %struct.LexState** %3, align 8
  store %struct.TString* %1, %struct.TString** %4, align 8
  %7 = load %struct.LexState*, %struct.LexState** %3, align 8
  %8 = load %struct.TString*, %struct.TString** %4, align 8
  %9 = call %struct.Labeldesc* @findlabel(%struct.LexState* %7, %struct.TString* %8)
  store %struct.Labeldesc* %9, %struct.Labeldesc** %5, align 8
  %10 = load %struct.Labeldesc*, %struct.Labeldesc** %5, align 8
  %11 = icmp ne %struct.Labeldesc* %10, null
  %12 = zext i1 %11 to i32
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

; <label>:17:                                     ; preds = %2
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i32 0, i32 0), i8** %6, align 8
  %18 = load %struct.LexState*, %struct.LexState** %3, align 8
  %19 = getelementptr inbounds %struct.LexState, %struct.LexState* %18, i32 0, i32 6
  %20 = load %struct.lua_State*, %struct.lua_State** %19, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.TString*, %struct.TString** %4, align 8
  %23 = bitcast %struct.TString* %22 to i8*
  %24 = getelementptr inbounds i8, i8* %23, i64 24
  %25 = load %struct.Labeldesc*, %struct.Labeldesc** %5, align 8
  %26 = getelementptr inbounds %struct.Labeldesc, %struct.Labeldesc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %20, i8* %21, i8* %24, i32 %27)
  store i8* %28, i8** %6, align 8
  %29 = load %struct.LexState*, %struct.LexState** %3, align 8
  %30 = load i8*, i8** %6, align 8
  call void @luaK_semerror(%struct.LexState* %29, i8* %30) #6
  unreachable

; <label>:31:                                     ; preds = %2
  ret void
}

declare hidden i32 @luaK_exp2anyreg(%struct.FuncState*, %struct.expdesc*) #1

declare hidden void @luaK_ret(%struct.FuncState*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restassign(%struct.LexState*, %struct.LHS_assign*, i32) #0 {
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
  %20 = icmp ule i32 %19, 13
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %15, %3
  %22 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @luaX_syntaxerror(%struct.LexState* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0)) #6
  unreachable

; <label>:23:                                     ; preds = %15
  %24 = load %struct.LexState*, %struct.LexState** %4, align 8
  %25 = call i32 @testnext(%struct.LexState* %24, i32 44)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %58

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
  %35 = icmp ule i32 10, %34
  br i1 %35, label %36, label %41

; <label>:36:                                     ; preds = %27
  %37 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %8, i32 0, i32 1
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ule i32 %39, 13
  br i1 %40, label %45, label %41

; <label>:41:                                     ; preds = %36, %27
  %42 = load %struct.LexState*, %struct.LexState** %4, align 8
  %43 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %44 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %8, i32 0, i32 1
  call void @check_conflict(%struct.LexState* %42, %struct.LHS_assign* %43, %struct.expdesc* %44)
  br label %45

; <label>:45:                                     ; preds = %41, %36
  %46 = load %struct.LexState*, %struct.LexState** %4, align 8
  %47 = getelementptr inbounds %struct.LexState, %struct.LexState* %46, i32 0, i32 6
  %48 = load %struct.lua_State*, %struct.lua_State** %47, align 8
  call void @luaE_enterCcall(%struct.lua_State* %48)
  %49 = load %struct.LexState*, %struct.LexState** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  call void @restassign(%struct.LexState* %49, %struct.LHS_assign* %8, i32 %51)
  %52 = load %struct.LexState*, %struct.LexState** %4, align 8
  %53 = getelementptr inbounds %struct.LexState, %struct.LexState* %52, i32 0, i32 6
  %54 = load %struct.lua_State*, %struct.lua_State** %53, align 8
  %55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %54, i32 0, i32 19
  %56 = load i32, i32* %55, align 8
  %57 = add i32 %56, -1
  store i32 %57, i32* %55, align 8
  br label %79

; <label>:58:                                     ; preds = %23
  %59 = load %struct.LexState*, %struct.LexState** %4, align 8
  call void @checknext(%struct.LexState* %59, i32 61)
  %60 = load %struct.LexState*, %struct.LexState** %4, align 8
  %61 = call i32 @explist(%struct.LexState* %60, %struct.expdesc* %7)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %69

; <label>:65:                                     ; preds = %58
  %66 = load %struct.LexState*, %struct.LexState** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %9, align 4
  call void @adjust_assign(%struct.LexState* %66, i32 %67, i32 %68, %struct.expdesc* %7)
  br label %78

; <label>:69:                                     ; preds = %58
  %70 = load %struct.LexState*, %struct.LexState** %4, align 8
  %71 = getelementptr inbounds %struct.LexState, %struct.LexState* %70, i32 0, i32 5
  %72 = load %struct.FuncState*, %struct.FuncState** %71, align 8
  call void @luaK_setoneret(%struct.FuncState* %72, %struct.expdesc* %7)
  %73 = load %struct.LexState*, %struct.LexState** %4, align 8
  %74 = getelementptr inbounds %struct.LexState, %struct.LexState* %73, i32 0, i32 5
  %75 = load %struct.FuncState*, %struct.FuncState** %74, align 8
  %76 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %77 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %76, i32 0, i32 1
  call void @luaK_storevar(%struct.FuncState* %75, %struct.expdesc* %77, %struct.expdesc* %7)
  br label %92

; <label>:78:                                     ; preds = %65
  br label %79

; <label>:79:                                     ; preds = %78, %45
  %80 = load %struct.LexState*, %struct.LexState** %4, align 8
  %81 = getelementptr inbounds %struct.LexState, %struct.LexState* %80, i32 0, i32 5
  %82 = load %struct.FuncState*, %struct.FuncState** %81, align 8
  %83 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %82, i32 0, i32 15
  %84 = load i8, i8* %83, align 4
  %85 = zext i8 %84 to i32
  %86 = sub nsw i32 %85, 1
  call void @init_exp(%struct.expdesc* %7, i32 7, i32 %86)
  %87 = load %struct.LexState*, %struct.LexState** %4, align 8
  %88 = getelementptr inbounds %struct.LexState, %struct.LexState* %87, i32 0, i32 5
  %89 = load %struct.FuncState*, %struct.FuncState** %88, align 8
  %90 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %91 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %90, i32 0, i32 1
  call void @luaK_storevar(%struct.FuncState* %89, %struct.expdesc* %91, %struct.expdesc* %7)
  br label %92

; <label>:92:                                     ; preds = %79, %69
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
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %14, i32 0, i32 15
  %16 = load i8, i8* %15, align 4
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %18

; <label>:18:                                     ; preds = %130, %3
  %19 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %20 = icmp ne %struct.LHS_assign* %19, null
  br i1 %20, label %21, label %134

; <label>:21:                                     ; preds = %18
  %22 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %23 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ule i32 10, %25
  br i1 %26, label %27, label %129

; <label>:27:                                     ; preds = %21
  %28 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %29 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ule i32 %31, 13
  br i1 %32, label %33, label %129

; <label>:33:                                     ; preds = %27
  %34 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %35 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 11
  br i1 %38, label %39, label %69

; <label>:39:                                     ; preds = %33
  %40 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 9
  br i1 %43, label %44, label %68

; <label>:44:                                     ; preds = %39
  %45 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %46 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %46, i32 0, i32 1
  %48 = bitcast %union.anon.7* %47 to %struct.anon.8*
  %49 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %48, i32 0, i32 1
  %50 = load i8, i8* %49, align 2
  %51 = zext i8 %50 to i32
  %52 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %53 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %52, i32 0, i32 1
  %54 = bitcast %union.anon.7* %53 to i32*
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %51, %55
  br i1 %56, label %57, label %68

; <label>:57:                                     ; preds = %44
  store i32 1, i32* %9, align 4
  %58 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %59 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %59, i32 0, i32 0
  store i32 13, i32* %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = trunc i32 %61 to i8
  %63 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %64 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %64, i32 0, i32 1
  %66 = bitcast %union.anon.7* %65 to %struct.anon.8*
  %67 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %66, i32 0, i32 1
  store i8 %62, i8* %67, align 2
  br label %68

; <label>:68:                                     ; preds = %57, %44, %39
  br label %128

; <label>:69:                                     ; preds = %33
  %70 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %71 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 8
  br i1 %73, label %74, label %95

; <label>:74:                                     ; preds = %69
  %75 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %76 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %76, i32 0, i32 1
  %78 = bitcast %union.anon.7* %77 to %struct.anon.8*
  %79 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %78, i32 0, i32 1
  %80 = load i8, i8* %79, align 2
  %81 = zext i8 %80 to i32
  %82 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %83 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %82, i32 0, i32 1
  %84 = bitcast %union.anon.7* %83 to i32*
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %81, %85
  br i1 %86, label %87, label %95

; <label>:87:                                     ; preds = %74
  store i32 1, i32* %9, align 4
  %88 = load i32, i32* %8, align 4
  %89 = trunc i32 %88 to i8
  %90 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %91 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %91, i32 0, i32 1
  %93 = bitcast %union.anon.7* %92 to %struct.anon.8*
  %94 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %93, i32 0, i32 1
  store i8 %89, i8* %94, align 2
  br label %95

; <label>:95:                                     ; preds = %87, %74, %69
  %96 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %97 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 10
  br i1 %100, label %101, label %127

; <label>:101:                                    ; preds = %95
  %102 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %103 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 8
  br i1 %105, label %106, label %127

; <label>:106:                                    ; preds = %101
  %107 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %108 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %108, i32 0, i32 1
  %110 = bitcast %union.anon.7* %109 to %struct.anon.8*
  %111 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %110, i32 0, i32 0
  %112 = load i16, i16* %111, align 8
  %113 = sext i16 %112 to i32
  %114 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %115 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %114, i32 0, i32 1
  %116 = bitcast %union.anon.7* %115 to i32*
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %113, %117
  br i1 %118, label %119, label %127

; <label>:119:                                    ; preds = %106
  store i32 1, i32* %9, align 4
  %120 = load i32, i32* %8, align 4
  %121 = trunc i32 %120 to i16
  %122 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %123 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %123, i32 0, i32 1
  %125 = bitcast %union.anon.7* %124 to %struct.anon.8*
  %126 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %125, i32 0, i32 0
  store i16 %121, i16* %126, align 8
  br label %127

; <label>:127:                                    ; preds = %119, %106, %101, %95
  br label %128

; <label>:128:                                    ; preds = %127, %68
  br label %129

; <label>:129:                                    ; preds = %128, %27, %21
  br label %130

; <label>:130:                                    ; preds = %129
  %131 = load %struct.LHS_assign*, %struct.LHS_assign** %5, align 8
  %132 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %131, i32 0, i32 0
  %133 = load %struct.LHS_assign*, %struct.LHS_assign** %132, align 8
  store %struct.LHS_assign* %133, %struct.LHS_assign** %5, align 8
  br label %18

; <label>:134:                                    ; preds = %18
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %153

; <label>:137:                                    ; preds = %134
  %138 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %139 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 8
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 0, i32 7
  store i32 %143, i32* %10, align 4
  %144 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.expdesc*, %struct.expdesc** %6, align 8
  %148 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %147, i32 0, i32 1
  %149 = bitcast %union.anon.7* %148 to i32*
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @luaK_codeABCk(%struct.FuncState* %144, i32 %145, i32 %146, i32 %150, i32 0, i32 0)
  %152 = load %struct.FuncState*, %struct.FuncState** %7, align 8
  call void @luaK_reserveregs(%struct.FuncState* %152, i32 1)
  br label %153

; <label>:153:                                    ; preds = %137, %134
  ret void
}

declare hidden void @luaK_setoneret(%struct.FuncState*, %struct.expdesc*) #1

declare hidden void @luaK_finish(%struct.FuncState*) #1

declare hidden i8* @luaM_shrinkvector_(%struct.lua_State*, i8*, i32*, i32, i32) #1

declare hidden void @luaC_step(%struct.lua_State*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
