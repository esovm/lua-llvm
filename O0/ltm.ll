; ModuleID = 'ltm.c'
source_filename = "ltm.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32 (%struct.lua_State*)*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i64 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.TValue*, %union.Node*, %union.Node*, %struct.Table*, %struct.GCObject* }
%union.Node = type { %struct.NodeKey }
%struct.NodeKey = type { %union.Value, i8, i8, i32, %union.Value }
%union.StackValue = type { %struct.TValue }
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.UpVal*, %struct.UpVal** }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, %union.anon.2, i16, i16 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.2 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%union.GCUnion = type { %struct.lua_State }
%struct.Udata = type { %struct.GCObject*, i8, i8, i16, i64, %struct.Table*, %struct.GCObject*, [1 x %union.UValue] }
%union.UValue = type { %struct.TValue }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.anon = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"no value\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@udatatypename = internal constant [9 x i8] c"userdata\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"upvalue\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@luaT_typenames_ = hidden constant [12 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @udatatypename, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @udatatypename, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)], align 16
@luaT_init.luaT_eventname = internal constant [25 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"__newindex\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"__len\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"__eq\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"__add\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"__sub\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"__mul\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"__mod\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"__pow\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"__div\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"__idiv\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"__band\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"__bor\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"__bxor\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"__shl\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"__shr\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"__unm\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"__bnot\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"__lt\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"__le\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"__concat\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"__call\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"__close\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"__name\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"perform bitwise operation on\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"perform arithmetic on\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaT_init(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %32, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 25
  br i1 %6, label %7, label %35

; <label>:7:                                      ; preds = %4
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [25 x i8*], [25 x i8*]* @luaT_init.luaT_eventname, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = call %struct.TString* @luaS_new(%struct.lua_State* %8, i8* %12)
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 7
  %16 = load %struct.global_State*, %struct.global_State** %15, align 8
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 40
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [25 x %struct.TString*], [25 x %struct.TString*]* %17, i64 0, i64 %19
  store %struct.TString* %13, %struct.TString** %20, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 7
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i32 0, i32 40
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [25 x %struct.TString*], [25 x %struct.TString*]* %25, i64 0, i64 %27
  %29 = load %struct.TString*, %struct.TString** %28, align 8
  %30 = bitcast %struct.TString* %29 to %union.GCUnion*
  %31 = bitcast %union.GCUnion* %30 to %struct.GCObject*
  call void @luaC_fix(%struct.lua_State* %21, %struct.GCObject* %31)
  br label %32

; <label>:32:                                     ; preds = %7
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %4

; <label>:35:                                     ; preds = %4
  ret void
}

declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) #1

declare hidden void @luaC_fix(%struct.lua_State*, %struct.GCObject*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.TValue* @luaT_gettm(%struct.Table*, i32, %struct.TString*) #0 {
  %4 = alloca %struct.TValue*, align 8
  %5 = alloca %struct.Table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TString*, align 8
  %8 = alloca %struct.TValue*, align 8
  store %struct.Table* %0, %struct.Table** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TString* %2, %struct.TString** %7, align 8
  %9 = load %struct.Table*, %struct.Table** %5, align 8
  %10 = load %struct.TString*, %struct.TString** %7, align 8
  %11 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %9, %struct.TString* %10)
  store %struct.TValue* %11, %struct.TValue** %8, align 8
  %12 = load %struct.TValue*, %struct.TValue** %8, align 8
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i32 0, i32 1
  %14 = load i8, i8* %13, align 8
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

; <label>:18:                                     ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 1, %19
  %21 = trunc i32 %20 to i8
  %22 = zext i8 %21 to i32
  %23 = load %struct.Table*, %struct.Table** %5, align 8
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %23, i32 0, i32 3
  %25 = load i8, i8* %24, align 2
  %26 = zext i8 %25 to i32
  %27 = or i32 %26, %22
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %24, align 2
  store %struct.TValue* null, %struct.TValue** %4, align 8
  br label %31

; <label>:29:                                     ; preds = %3
  %30 = load %struct.TValue*, %struct.TValue** %8, align 8
  store %struct.TValue* %30, %struct.TValue** %4, align 8
  br label %31

; <label>:31:                                     ; preds = %29, %18
  %32 = load %struct.TValue*, %struct.TValue** %4, align 8
  ret %struct.TValue* %32
}

declare hidden %struct.TValue* @luaH_getshortstr(%struct.Table*, %struct.TString*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.TValue*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.TValue* %1, %struct.TValue** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TValue*, %struct.TValue** %5, align 8
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i32 0, i32 1
  %10 = load i8, i8* %9, align 8
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 15
  switch i32 %12, label %31 [
    i32 5, label %13
    i32 7, label %22
  ]

; <label>:13:                                     ; preds = %3
  %14 = load %struct.TValue*, %struct.TValue** %5, align 8
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 0
  %16 = bitcast %union.Value* %15 to %struct.GCObject**
  %17 = load %struct.GCObject*, %struct.GCObject** %16, align 8
  %18 = bitcast %struct.GCObject* %17 to %union.GCUnion*
  %19 = bitcast %union.GCUnion* %18 to %struct.Table*
  %20 = getelementptr inbounds %struct.Table, %struct.Table* %19, i32 0, i32 9
  %21 = load %struct.Table*, %struct.Table** %20, align 8
  store %struct.Table* %21, %struct.Table** %7, align 8
  br label %44

; <label>:22:                                     ; preds = %3
  %23 = load %struct.TValue*, %struct.TValue** %5, align 8
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %23, i32 0, i32 0
  %25 = bitcast %union.Value* %24 to %struct.GCObject**
  %26 = load %struct.GCObject*, %struct.GCObject** %25, align 8
  %27 = bitcast %struct.GCObject* %26 to %union.GCUnion*
  %28 = bitcast %union.GCUnion* %27 to %struct.Udata*
  %29 = getelementptr inbounds %struct.Udata, %struct.Udata* %28, i32 0, i32 5
  %30 = load %struct.Table*, %struct.Table** %29, align 8
  store %struct.Table* %30, %struct.Table** %7, align 8
  br label %44

; <label>:31:                                     ; preds = %3
  %32 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 7
  %34 = load %struct.global_State*, %struct.global_State** %33, align 8
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %34, i32 0, i32 41
  %36 = load %struct.TValue*, %struct.TValue** %5, align 8
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %36, i32 0, i32 1
  %38 = load i8, i8* %37, align 8
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 15
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %35, i64 0, i64 %41
  %43 = load %struct.Table*, %struct.Table** %42, align 8
  store %struct.Table* %43, %struct.Table** %7, align 8
  br label %44

; <label>:44:                                     ; preds = %31, %22, %13
  %45 = load %struct.Table*, %struct.Table** %7, align 8
  %46 = icmp ne %struct.Table* %45, null
  br i1 %46, label %47, label %58

; <label>:47:                                     ; preds = %44
  %48 = load %struct.Table*, %struct.Table** %7, align 8
  %49 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %49, i32 0, i32 7
  %51 = load %struct.global_State*, %struct.global_State** %50, align 8
  %52 = getelementptr inbounds %struct.global_State, %struct.global_State* %51, i32 0, i32 40
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [25 x %struct.TString*], [25 x %struct.TString*]* %52, i64 0, i64 %54
  %56 = load %struct.TString*, %struct.TString** %55, align 8
  %57 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %48, %struct.TString* %56)
  br label %63

; <label>:58:                                     ; preds = %44
  %59 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %59, i32 0, i32 7
  %61 = load %struct.global_State*, %struct.global_State** %60, align 8
  %62 = getelementptr inbounds %struct.global_State, %struct.global_State* %61, i32 0, i32 8
  br label %63

; <label>:63:                                     ; preds = %58, %47
  %64 = phi %struct.TValue* [ %57, %47 ], [ %62, %58 ]
  ret %struct.TValue* %64
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i8* @luaT_objtypename(%struct.lua_State*, %struct.TValue*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.TValue* %1, %struct.TValue** %5, align 8
  %8 = load %struct.TValue*, %struct.TValue** %5, align 8
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i32 0, i32 1
  %10 = load i8, i8* %9, align 8
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 69
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %2
  %14 = load %struct.TValue*, %struct.TValue** %5, align 8
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 0
  %16 = bitcast %union.Value* %15 to %struct.GCObject**
  %17 = load %struct.GCObject*, %struct.GCObject** %16, align 8
  %18 = bitcast %struct.GCObject* %17 to %union.GCUnion*
  %19 = bitcast %union.GCUnion* %18 to %struct.Table*
  %20 = getelementptr inbounds %struct.Table, %struct.Table* %19, i32 0, i32 9
  %21 = load %struct.Table*, %struct.Table** %20, align 8
  store %struct.Table* %21, %struct.Table** %6, align 8
  %22 = icmp ne %struct.Table* %21, null
  br i1 %22, label %40, label %23

; <label>:23:                                     ; preds = %13, %2
  %24 = load %struct.TValue*, %struct.TValue** %5, align 8
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %24, i32 0, i32 1
  %26 = load i8, i8* %25, align 8
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 15
  %29 = icmp eq i32 %28, 7
  br i1 %29, label %30, label %61

; <label>:30:                                     ; preds = %23
  %31 = load %struct.TValue*, %struct.TValue** %5, align 8
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i32 0, i32 0
  %33 = bitcast %union.Value* %32 to %struct.GCObject**
  %34 = load %struct.GCObject*, %struct.GCObject** %33, align 8
  %35 = bitcast %struct.GCObject* %34 to %union.GCUnion*
  %36 = bitcast %union.GCUnion* %35 to %struct.Udata*
  %37 = getelementptr inbounds %struct.Udata, %struct.Udata* %36, i32 0, i32 5
  %38 = load %struct.Table*, %struct.Table** %37, align 8
  store %struct.Table* %38, %struct.Table** %6, align 8
  %39 = icmp ne %struct.Table* %38, null
  br i1 %39, label %40, label %61

; <label>:40:                                     ; preds = %30, %13
  %41 = load %struct.Table*, %struct.Table** %6, align 8
  %42 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %43 = call %struct.TString* @luaS_new(%struct.lua_State* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0))
  %44 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %41, %struct.TString* %43)
  store %struct.TValue* %44, %struct.TValue** %7, align 8
  %45 = load %struct.TValue*, %struct.TValue** %7, align 8
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i32 0, i32 1
  %47 = load i8, i8* %46, align 8
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 15
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %51, label %60

; <label>:51:                                     ; preds = %40
  %52 = load %struct.TValue*, %struct.TValue** %7, align 8
  %53 = getelementptr inbounds %struct.TValue, %struct.TValue* %52, i32 0, i32 0
  %54 = bitcast %union.Value* %53 to %struct.GCObject**
  %55 = load %struct.GCObject*, %struct.GCObject** %54, align 8
  %56 = bitcast %struct.GCObject* %55 to %union.GCUnion*
  %57 = bitcast %union.GCUnion* %56 to %struct.TString*
  %58 = bitcast %struct.TString* %57 to i8*
  %59 = getelementptr inbounds i8, i8* %58, i64 24
  store i8* %59, i8** %3, align 8
  br label %71

; <label>:60:                                     ; preds = %40
  br label %61

; <label>:61:                                     ; preds = %60, %30, %23
  %62 = load %struct.TValue*, %struct.TValue** %5, align 8
  %63 = getelementptr inbounds %struct.TValue, %struct.TValue* %62, i32 0, i32 1
  %64 = load i8, i8* %63, align 8
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 15
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [12 x i8*], [12 x i8*]* @luaT_typenames_, i64 0, i64 %68
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %3, align 8
  br label %71

; <label>:71:                                     ; preds = %61, %51
  %72 = load i8*, i8** %3, align 8
  ret i8* %72
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaT_callTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %struct.TValue*, %struct.TValue*) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca %union.StackValue*, align 8
  %12 = alloca %struct.TValue*, align 8
  %13 = alloca %struct.TValue*, align 8
  %14 = alloca %struct.TValue*, align 8
  %15 = alloca %struct.TValue*, align 8
  %16 = alloca %struct.TValue*, align 8
  %17 = alloca %struct.TValue*, align 8
  %18 = alloca %struct.TValue*, align 8
  %19 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.TValue* %1, %struct.TValue** %7, align 8
  store %struct.TValue* %2, %struct.TValue** %8, align 8
  store %struct.TValue* %3, %struct.TValue** %9, align 8
  store %struct.TValue* %4, %struct.TValue** %10, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 6
  %22 = load %union.StackValue*, %union.StackValue** %21, align 8
  store %union.StackValue* %22, %union.StackValue** %11, align 8
  %23 = load %union.StackValue*, %union.StackValue** %11, align 8
  %24 = bitcast %union.StackValue* %23 to %struct.TValue*
  store %struct.TValue* %24, %struct.TValue** %12, align 8
  %25 = load %struct.TValue*, %struct.TValue** %7, align 8
  store %struct.TValue* %25, %struct.TValue** %13, align 8
  %26 = load %struct.TValue*, %struct.TValue** %12, align 8
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %26, i32 0, i32 0
  %28 = load %struct.TValue*, %struct.TValue** %13, align 8
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i32 0, i32 0
  %30 = bitcast %union.Value* %27 to i8*
  %31 = bitcast %union.Value* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 8, i32 8, i1 false)
  %32 = load %struct.TValue*, %struct.TValue** %13, align 8
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i32 0, i32 1
  %34 = load i8, i8* %33, align 8
  %35 = load %struct.TValue*, %struct.TValue** %12, align 8
  %36 = getelementptr inbounds %struct.TValue, %struct.TValue* %35, i32 0, i32 1
  store i8 %34, i8* %36, align 8
  %37 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %38 = load %union.StackValue*, %union.StackValue** %11, align 8
  %39 = getelementptr inbounds %union.StackValue, %union.StackValue* %38, i64 1
  %40 = bitcast %union.StackValue* %39 to %struct.TValue*
  store %struct.TValue* %40, %struct.TValue** %14, align 8
  %41 = load %struct.TValue*, %struct.TValue** %8, align 8
  store %struct.TValue* %41, %struct.TValue** %15, align 8
  %42 = load %struct.TValue*, %struct.TValue** %14, align 8
  %43 = getelementptr inbounds %struct.TValue, %struct.TValue* %42, i32 0, i32 0
  %44 = load %struct.TValue*, %struct.TValue** %15, align 8
  %45 = getelementptr inbounds %struct.TValue, %struct.TValue* %44, i32 0, i32 0
  %46 = bitcast %union.Value* %43 to i8*
  %47 = bitcast %union.Value* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 8, i32 8, i1 false)
  %48 = load %struct.TValue*, %struct.TValue** %15, align 8
  %49 = getelementptr inbounds %struct.TValue, %struct.TValue* %48, i32 0, i32 1
  %50 = load i8, i8* %49, align 8
  %51 = load %struct.TValue*, %struct.TValue** %14, align 8
  %52 = getelementptr inbounds %struct.TValue, %struct.TValue* %51, i32 0, i32 1
  store i8 %50, i8* %52, align 8
  %53 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %54 = load %union.StackValue*, %union.StackValue** %11, align 8
  %55 = getelementptr inbounds %union.StackValue, %union.StackValue* %54, i64 2
  %56 = bitcast %union.StackValue* %55 to %struct.TValue*
  store %struct.TValue* %56, %struct.TValue** %16, align 8
  %57 = load %struct.TValue*, %struct.TValue** %9, align 8
  store %struct.TValue* %57, %struct.TValue** %17, align 8
  %58 = load %struct.TValue*, %struct.TValue** %16, align 8
  %59 = getelementptr inbounds %struct.TValue, %struct.TValue* %58, i32 0, i32 0
  %60 = load %struct.TValue*, %struct.TValue** %17, align 8
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i32 0, i32 0
  %62 = bitcast %union.Value* %59 to i8*
  %63 = bitcast %union.Value* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 8, i32 8, i1 false)
  %64 = load %struct.TValue*, %struct.TValue** %17, align 8
  %65 = getelementptr inbounds %struct.TValue, %struct.TValue* %64, i32 0, i32 1
  %66 = load i8, i8* %65, align 8
  %67 = load %struct.TValue*, %struct.TValue** %16, align 8
  %68 = getelementptr inbounds %struct.TValue, %struct.TValue* %67, i32 0, i32 1
  store i8 %66, i8* %68, align 8
  %69 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %70 = load %union.StackValue*, %union.StackValue** %11, align 8
  %71 = getelementptr inbounds %union.StackValue, %union.StackValue* %70, i64 3
  %72 = bitcast %union.StackValue* %71 to %struct.TValue*
  store %struct.TValue* %72, %struct.TValue** %18, align 8
  %73 = load %struct.TValue*, %struct.TValue** %10, align 8
  store %struct.TValue* %73, %struct.TValue** %19, align 8
  %74 = load %struct.TValue*, %struct.TValue** %18, align 8
  %75 = getelementptr inbounds %struct.TValue, %struct.TValue* %74, i32 0, i32 0
  %76 = load %struct.TValue*, %struct.TValue** %19, align 8
  %77 = getelementptr inbounds %struct.TValue, %struct.TValue* %76, i32 0, i32 0
  %78 = bitcast %union.Value* %75 to i8*
  %79 = bitcast %union.Value* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 8, i32 8, i1 false)
  %80 = load %struct.TValue*, %struct.TValue** %19, align 8
  %81 = getelementptr inbounds %struct.TValue, %struct.TValue* %80, i32 0, i32 1
  %82 = load i8, i8* %81, align 8
  %83 = load %struct.TValue*, %struct.TValue** %18, align 8
  %84 = getelementptr inbounds %struct.TValue, %struct.TValue* %83, i32 0, i32 1
  store i8 %82, i8* %84, align 8
  %85 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %86 = load %union.StackValue*, %union.StackValue** %11, align 8
  %87 = getelementptr inbounds %union.StackValue, %union.StackValue* %86, i64 4
  %88 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %89 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %88, i32 0, i32 6
  store %union.StackValue* %87, %union.StackValue** %89, align 8
  %90 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %91 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %90, i32 0, i32 8
  %92 = load %struct.CallInfo*, %struct.CallInfo** %91, align 8
  %93 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %92, i32 0, i32 7
  %94 = load i16, i16* %93, align 2
  %95 = zext i16 %94 to i32
  %96 = and i32 %95, 6
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

; <label>:98:                                     ; preds = %5
  %99 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %100 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaD_call(%struct.lua_State* %99, %union.StackValue* %100, i32 0)
  br label %104

; <label>:101:                                    ; preds = %5
  %102 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %103 = load %union.StackValue*, %union.StackValue** %11, align 8
  call void @luaD_callnoyield(%struct.lua_State* %102, %union.StackValue* %103, i32 0)
  br label %104

; <label>:104:                                    ; preds = %101, %98
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

declare hidden void @luaD_call(%struct.lua_State*, %union.StackValue*, i32) #1

declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaT_callTMres(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %struct.TValue*, %union.StackValue*) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %union.StackValue*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %union.StackValue*, align 8
  %13 = alloca %struct.TValue*, align 8
  %14 = alloca %struct.TValue*, align 8
  %15 = alloca %struct.TValue*, align 8
  %16 = alloca %struct.TValue*, align 8
  %17 = alloca %struct.TValue*, align 8
  %18 = alloca %struct.TValue*, align 8
  %19 = alloca %struct.TValue*, align 8
  %20 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.TValue* %1, %struct.TValue** %7, align 8
  store %struct.TValue* %2, %struct.TValue** %8, align 8
  store %struct.TValue* %3, %struct.TValue** %9, align 8
  store %union.StackValue* %4, %union.StackValue** %10, align 8
  %21 = load %union.StackValue*, %union.StackValue** %10, align 8
  %22 = bitcast %union.StackValue* %21 to i8*
  %23 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 11
  %25 = load %union.StackValue*, %union.StackValue** %24, align 8
  %26 = bitcast %union.StackValue* %25 to i8*
  %27 = ptrtoint i8* %22 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  store i64 %29, i64* %11, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %30, i32 0, i32 6
  %32 = load %union.StackValue*, %union.StackValue** %31, align 8
  store %union.StackValue* %32, %union.StackValue** %12, align 8
  %33 = load %union.StackValue*, %union.StackValue** %12, align 8
  %34 = bitcast %union.StackValue* %33 to %struct.TValue*
  store %struct.TValue* %34, %struct.TValue** %13, align 8
  %35 = load %struct.TValue*, %struct.TValue** %7, align 8
  store %struct.TValue* %35, %struct.TValue** %14, align 8
  %36 = load %struct.TValue*, %struct.TValue** %13, align 8
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %36, i32 0, i32 0
  %38 = load %struct.TValue*, %struct.TValue** %14, align 8
  %39 = getelementptr inbounds %struct.TValue, %struct.TValue* %38, i32 0, i32 0
  %40 = bitcast %union.Value* %37 to i8*
  %41 = bitcast %union.Value* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 8, i32 8, i1 false)
  %42 = load %struct.TValue*, %struct.TValue** %14, align 8
  %43 = getelementptr inbounds %struct.TValue, %struct.TValue* %42, i32 0, i32 1
  %44 = load i8, i8* %43, align 8
  %45 = load %struct.TValue*, %struct.TValue** %13, align 8
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i32 0, i32 1
  store i8 %44, i8* %46, align 8
  %47 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %48 = load %union.StackValue*, %union.StackValue** %12, align 8
  %49 = getelementptr inbounds %union.StackValue, %union.StackValue* %48, i64 1
  %50 = bitcast %union.StackValue* %49 to %struct.TValue*
  store %struct.TValue* %50, %struct.TValue** %15, align 8
  %51 = load %struct.TValue*, %struct.TValue** %8, align 8
  store %struct.TValue* %51, %struct.TValue** %16, align 8
  %52 = load %struct.TValue*, %struct.TValue** %15, align 8
  %53 = getelementptr inbounds %struct.TValue, %struct.TValue* %52, i32 0, i32 0
  %54 = load %struct.TValue*, %struct.TValue** %16, align 8
  %55 = getelementptr inbounds %struct.TValue, %struct.TValue* %54, i32 0, i32 0
  %56 = bitcast %union.Value* %53 to i8*
  %57 = bitcast %union.Value* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 8, i32 8, i1 false)
  %58 = load %struct.TValue*, %struct.TValue** %16, align 8
  %59 = getelementptr inbounds %struct.TValue, %struct.TValue* %58, i32 0, i32 1
  %60 = load i8, i8* %59, align 8
  %61 = load %struct.TValue*, %struct.TValue** %15, align 8
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i32 0, i32 1
  store i8 %60, i8* %62, align 8
  %63 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %64 = load %union.StackValue*, %union.StackValue** %12, align 8
  %65 = getelementptr inbounds %union.StackValue, %union.StackValue* %64, i64 2
  %66 = bitcast %union.StackValue* %65 to %struct.TValue*
  store %struct.TValue* %66, %struct.TValue** %17, align 8
  %67 = load %struct.TValue*, %struct.TValue** %9, align 8
  store %struct.TValue* %67, %struct.TValue** %18, align 8
  %68 = load %struct.TValue*, %struct.TValue** %17, align 8
  %69 = getelementptr inbounds %struct.TValue, %struct.TValue* %68, i32 0, i32 0
  %70 = load %struct.TValue*, %struct.TValue** %18, align 8
  %71 = getelementptr inbounds %struct.TValue, %struct.TValue* %70, i32 0, i32 0
  %72 = bitcast %union.Value* %69 to i8*
  %73 = bitcast %union.Value* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 8, i32 8, i1 false)
  %74 = load %struct.TValue*, %struct.TValue** %18, align 8
  %75 = getelementptr inbounds %struct.TValue, %struct.TValue* %74, i32 0, i32 1
  %76 = load i8, i8* %75, align 8
  %77 = load %struct.TValue*, %struct.TValue** %17, align 8
  %78 = getelementptr inbounds %struct.TValue, %struct.TValue* %77, i32 0, i32 1
  store i8 %76, i8* %78, align 8
  %79 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %80 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %80, i32 0, i32 6
  %82 = load %union.StackValue*, %union.StackValue** %81, align 8
  %83 = getelementptr inbounds %union.StackValue, %union.StackValue* %82, i64 3
  store %union.StackValue* %83, %union.StackValue** %81, align 8
  %84 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %85 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %84, i32 0, i32 8
  %86 = load %struct.CallInfo*, %struct.CallInfo** %85, align 8
  %87 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %86, i32 0, i32 7
  %88 = load i16, i16* %87, align 2
  %89 = zext i16 %88 to i32
  %90 = and i32 %89, 6
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

; <label>:92:                                     ; preds = %5
  %93 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %94 = load %union.StackValue*, %union.StackValue** %12, align 8
  call void @luaD_call(%struct.lua_State* %93, %union.StackValue* %94, i32 1)
  br label %98

; <label>:95:                                     ; preds = %5
  %96 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %97 = load %union.StackValue*, %union.StackValue** %12, align 8
  call void @luaD_callnoyield(%struct.lua_State* %96, %union.StackValue* %97, i32 1)
  br label %98

; <label>:98:                                     ; preds = %95, %92
  %99 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %100 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %99, i32 0, i32 11
  %101 = load %union.StackValue*, %union.StackValue** %100, align 8
  %102 = bitcast %union.StackValue* %101 to i8*
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = bitcast i8* %104 to %union.StackValue*
  store %union.StackValue* %105, %union.StackValue** %10, align 8
  %106 = load %union.StackValue*, %union.StackValue** %10, align 8
  %107 = bitcast %union.StackValue* %106 to %struct.TValue*
  store %struct.TValue* %107, %struct.TValue** %19, align 8
  %108 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %109 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %108, i32 0, i32 6
  %110 = load %union.StackValue*, %union.StackValue** %109, align 8
  %111 = getelementptr inbounds %union.StackValue, %union.StackValue* %110, i32 -1
  store %union.StackValue* %111, %union.StackValue** %109, align 8
  %112 = bitcast %union.StackValue* %111 to %struct.TValue*
  store %struct.TValue* %112, %struct.TValue** %20, align 8
  %113 = load %struct.TValue*, %struct.TValue** %19, align 8
  %114 = getelementptr inbounds %struct.TValue, %struct.TValue* %113, i32 0, i32 0
  %115 = load %struct.TValue*, %struct.TValue** %20, align 8
  %116 = getelementptr inbounds %struct.TValue, %struct.TValue* %115, i32 0, i32 0
  %117 = bitcast %union.Value* %114 to i8*
  %118 = bitcast %union.Value* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* %118, i64 8, i32 8, i1 false)
  %119 = load %struct.TValue*, %struct.TValue** %20, align 8
  %120 = getelementptr inbounds %struct.TValue, %struct.TValue* %119, i32 0, i32 1
  %121 = load i8, i8* %120, align 8
  %122 = load %struct.TValue*, %struct.TValue** %19, align 8
  %123 = getelementptr inbounds %struct.TValue, %struct.TValue* %122, i32 0, i32 1
  store i8 %121, i8* %123, align 8
  %124 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaT_trybinTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %union.StackValue*, align 8
  %10 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.TValue* %1, %struct.TValue** %7, align 8
  store %struct.TValue* %2, %struct.TValue** %8, align 8
  store %union.StackValue* %3, %union.StackValue** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %12 = load %struct.TValue*, %struct.TValue** %7, align 8
  %13 = load %struct.TValue*, %struct.TValue** %8, align 8
  %14 = load %union.StackValue*, %union.StackValue** %9, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @callbinTM(%struct.lua_State* %11, %struct.TValue* %12, %struct.TValue* %13, %union.StackValue* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %50, label %18

; <label>:18:                                     ; preds = %5
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %46 [
    i32 22, label %20
    i32 13, label %24
    i32 14, label %24
    i32 15, label %24
    i32 16, label %24
    i32 17, label %24
    i32 19, label %24
  ]

; <label>:20:                                     ; preds = %18
  %21 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %22 = load %struct.TValue*, %struct.TValue** %7, align 8
  %23 = load %struct.TValue*, %struct.TValue** %8, align 8
  call void @luaG_concaterror(%struct.lua_State* %21, %struct.TValue* %22, %struct.TValue* %23) #4
  unreachable

; <label>:24:                                     ; preds = %18, %18, %18, %18, %18, %18
  %25 = load %struct.TValue*, %struct.TValue** %7, align 8
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i32 0, i32 1
  %27 = load i8, i8* %26, align 8
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 15
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %42

; <label>:31:                                     ; preds = %24
  %32 = load %struct.TValue*, %struct.TValue** %8, align 8
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i32 0, i32 1
  %34 = load i8, i8* %33, align 8
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 15
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %42

; <label>:38:                                     ; preds = %31
  %39 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %40 = load %struct.TValue*, %struct.TValue** %7, align 8
  %41 = load %struct.TValue*, %struct.TValue** %8, align 8
  call void @luaG_tointerror(%struct.lua_State* %39, %struct.TValue* %40, %struct.TValue* %41) #4
  unreachable

; <label>:42:                                     ; preds = %31, %24
  %43 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %44 = load %struct.TValue*, %struct.TValue** %7, align 8
  %45 = load %struct.TValue*, %struct.TValue** %8, align 8
  call void @luaG_opinterror(%struct.lua_State* %43, %struct.TValue* %44, %struct.TValue* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0)) #4
  unreachable

; <label>:46:                                     ; preds = %18
  %47 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %48 = load %struct.TValue*, %struct.TValue** %7, align 8
  %49 = load %struct.TValue*, %struct.TValue** %8, align 8
  call void @luaG_opinterror(%struct.lua_State* %47, %struct.TValue* %48, %struct.TValue* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0)) #4
  unreachable

; <label>:50:                                     ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callbinTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %union.StackValue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8
  store %struct.TValue* %1, %struct.TValue** %8, align 8
  store %struct.TValue* %2, %struct.TValue** %9, align 8
  store %union.StackValue* %3, %union.StackValue** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %14 = load %struct.TValue*, %struct.TValue** %8, align 8
  %15 = load i32, i32* %11, align 4
  %16 = call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %13, %struct.TValue* %14, i32 %15)
  store %struct.TValue* %16, %struct.TValue** %12, align 8
  %17 = load %struct.TValue*, %struct.TValue** %12, align 8
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %17, i32 0, i32 1
  %19 = load i8, i8* %18, align 8
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

; <label>:23:                                     ; preds = %5
  %24 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %25 = load %struct.TValue*, %struct.TValue** %9, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %24, %struct.TValue* %25, i32 %26)
  store %struct.TValue* %27, %struct.TValue** %12, align 8
  br label %28

; <label>:28:                                     ; preds = %23, %5
  %29 = load %struct.TValue*, %struct.TValue** %12, align 8
  %30 = getelementptr inbounds %struct.TValue, %struct.TValue* %29, i32 0, i32 1
  %31 = load i8, i8* %30, align 8
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %28
  store i32 0, i32* %6, align 4
  br label %42

; <label>:36:                                     ; preds = %28
  %37 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %38 = load %struct.TValue*, %struct.TValue** %12, align 8
  %39 = load %struct.TValue*, %struct.TValue** %8, align 8
  %40 = load %struct.TValue*, %struct.TValue** %9, align 8
  %41 = load %union.StackValue*, %union.StackValue** %10, align 8
  call void @luaT_callTMres(%struct.lua_State* %37, %struct.TValue* %38, %struct.TValue* %39, %struct.TValue* %40, %union.StackValue* %41)
  store i32 1, i32* %6, align 4
  br label %42

; <label>:42:                                     ; preds = %36, %35
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

; Function Attrs: noreturn
declare hidden void @luaG_concaterror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) #3

; Function Attrs: noreturn
declare hidden void @luaG_tointerror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) #3

; Function Attrs: noreturn
declare hidden void @luaG_opinterror(%struct.lua_State*, %struct.TValue*, %struct.TValue*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaT_trybinassocTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32, i32) #0 {
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %union.StackValue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8
  store %struct.TValue* %1, %struct.TValue** %8, align 8
  store %struct.TValue* %2, %struct.TValue** %9, align 8
  store %union.StackValue* %3, %union.StackValue** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %11, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %6
  %16 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %17 = load %struct.TValue*, %struct.TValue** %9, align 8
  %18 = load %struct.TValue*, %struct.TValue** %8, align 8
  %19 = load %union.StackValue*, %union.StackValue** %10, align 8
  %20 = load i32, i32* %12, align 4
  call void @luaT_trybinTM(%struct.lua_State* %16, %struct.TValue* %17, %struct.TValue* %18, %union.StackValue* %19, i32 %20)
  br label %27

; <label>:21:                                     ; preds = %6
  %22 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %23 = load %struct.TValue*, %struct.TValue** %8, align 8
  %24 = load %struct.TValue*, %struct.TValue** %9, align 8
  %25 = load %union.StackValue*, %union.StackValue** %10, align 8
  %26 = load i32, i32* %12, align 4
  call void @luaT_trybinTM(%struct.lua_State* %22, %struct.TValue* %23, %struct.TValue* %24, %union.StackValue* %25, i32 %26)
  br label %27

; <label>:27:                                     ; preds = %21, %15
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaT_trybiniTM(%struct.lua_State*, %struct.TValue*, i64, i32, %union.StackValue*, i32) #0 {
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.StackValue*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TValue, align 8
  %14 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8
  store %struct.TValue* %1, %struct.TValue** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %union.StackValue* %4, %union.StackValue** %11, align 8
  store i32 %5, i32* %12, align 4
  store %struct.TValue* %13, %struct.TValue** %14, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.TValue*, %struct.TValue** %14, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 0
  %18 = bitcast %union.Value* %17 to i64*
  store i64 %15, i64* %18, align 8
  %19 = load %struct.TValue*, %struct.TValue** %14, align 8
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i32 0, i32 1
  store i8 35, i8* %20, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %22 = load %struct.TValue*, %struct.TValue** %8, align 8
  %23 = load %union.StackValue*, %union.StackValue** %11, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %12, align 4
  call void @luaT_trybinassocTM(%struct.lua_State* %21, %struct.TValue* %22, %struct.TValue* %13, %union.StackValue* %23, i32 %24, i32 %25)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaT_callorderTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, i32) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.TValue* %1, %struct.TValue** %6, align 8
  store %struct.TValue* %2, %struct.TValue** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %10 = load %struct.TValue*, %struct.TValue** %6, align 8
  %11 = load %struct.TValue*, %struct.TValue** %7, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 6
  %14 = load %union.StackValue*, %union.StackValue** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @callbinTM(%struct.lua_State* %9, %struct.TValue* %10, %struct.TValue* %11, %union.StackValue* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %52

; <label>:18:                                     ; preds = %4
  %19 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 6
  %21 = load %union.StackValue*, %union.StackValue** %20, align 8
  %22 = bitcast %union.StackValue* %21 to %struct.TValue*
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %22, i32 0, i32 1
  %24 = load i8, i8* %23, align 8
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %48, label %28

; <label>:28:                                     ; preds = %18
  %29 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 6
  %31 = load %union.StackValue*, %union.StackValue** %30, align 8
  %32 = bitcast %union.StackValue* %31 to %struct.TValue*
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i32 0, i32 1
  %34 = load i8, i8* %33, align 8
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %46

; <label>:37:                                     ; preds = %28
  %38 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 6
  %40 = load %union.StackValue*, %union.StackValue** %39, align 8
  %41 = bitcast %union.StackValue* %40 to %struct.TValue*
  %42 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i32 0, i32 0
  %43 = bitcast %union.Value* %42 to i32*
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br label %46

; <label>:46:                                     ; preds = %37, %28
  %47 = phi i1 [ false, %28 ], [ %45, %37 ]
  br label %48

; <label>:48:                                     ; preds = %46, %18
  %49 = phi i1 [ true, %18 ], [ %47, %46 ]
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  ret i32 %51

; <label>:52:                                     ; preds = %4
  %53 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %54 = load %struct.TValue*, %struct.TValue** %6, align 8
  %55 = load %struct.TValue*, %struct.TValue** %7, align 8
  call void @luaG_ordererror(%struct.lua_State* %53, %struct.TValue* %54, %struct.TValue* %55) #4
  unreachable
}

; Function Attrs: noreturn
declare hidden void @luaG_ordererror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) #3

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaT_callorderiTM(%struct.lua_State*, %struct.TValue*, i32, i32, i32, i32) #0 {
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TValue, align 8
  %14 = alloca %struct.TValue*, align 8
  %15 = alloca %struct.TValue*, align 8
  %16 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8
  store %struct.TValue* %1, %struct.TValue** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %6
  store %struct.TValue* %13, %struct.TValue** %15, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sitofp i32 %20 to double
  %22 = load %struct.TValue*, %struct.TValue** %15, align 8
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %22, i32 0, i32 0
  %24 = bitcast %union.Value* %23 to double*
  store double %21, double* %24, align 8
  %25 = load %struct.TValue*, %struct.TValue** %15, align 8
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i32 0, i32 1
  store i8 19, i8* %26, align 8
  br label %35

; <label>:27:                                     ; preds = %6
  store %struct.TValue* %13, %struct.TValue** %16, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.TValue*, %struct.TValue** %16, align 8
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %30, i32 0, i32 0
  %32 = bitcast %union.Value* %31 to i64*
  store i64 %29, i64* %32, align 8
  %33 = load %struct.TValue*, %struct.TValue** %16, align 8
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i32 0, i32 1
  store i8 35, i8* %34, align 8
  br label %35

; <label>:35:                                     ; preds = %27, %19
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %35
  %39 = load %struct.TValue*, %struct.TValue** %8, align 8
  store %struct.TValue* %39, %struct.TValue** %14, align 8
  store %struct.TValue* %13, %struct.TValue** %8, align 8
  br label %41

; <label>:40:                                     ; preds = %35
  store %struct.TValue* %13, %struct.TValue** %14, align 8
  br label %41

; <label>:41:                                     ; preds = %40, %38
  %42 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %43 = load %struct.TValue*, %struct.TValue** %8, align 8
  %44 = load %struct.TValue*, %struct.TValue** %14, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @luaT_callorderTM(%struct.lua_State* %42, %struct.TValue* %43, %struct.TValue* %44, i32 %45)
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaT_adjustvarargs(%struct.lua_State*, i32, %struct.CallInfo*, %struct.Proto*) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.CallInfo*, align 8
  %8 = alloca %struct.Proto*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TValue*, align 8
  %13 = alloca %struct.TValue*, align 8
  %14 = alloca %struct.TValue*, align 8
  %15 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.CallInfo* %2, %struct.CallInfo** %7, align 8
  store %struct.Proto* %3, %struct.Proto** %8, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 6
  %18 = load %union.StackValue*, %union.StackValue** %17, align 8
  %19 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %20 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %19, i32 0, i32 0
  %21 = load %union.StackValue*, %union.StackValue** %20, align 8
  %22 = ptrtoint %union.StackValue* %18 to i64
  %23 = ptrtoint %union.StackValue* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 16
  %26 = trunc i64 %25 to i32
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %33 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %32, i32 0, i32 4
  %34 = bitcast %union.anon.0* %33 to %struct.anon*
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 2
  store i32 %31, i32* %35, align 4
  %36 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 10
  %38 = load %union.StackValue*, %union.StackValue** %37, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 6
  %41 = load %union.StackValue*, %union.StackValue** %40, align 8
  %42 = ptrtoint %union.StackValue* %38 to i64
  %43 = ptrtoint %union.StackValue* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 16
  %46 = load %struct.Proto*, %struct.Proto** %8, align 8
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i32 0, i32 5
  %48 = load i8, i8* %47, align 4
  %49 = zext i8 %48 to i32
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = icmp sle i64 %45, %51
  br i1 %52, label %53, label %70

; <label>:53:                                     ; preds = %4
  %54 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %55 = load %struct.Proto*, %struct.Proto** %8, align 8
  %56 = getelementptr inbounds %struct.Proto, %struct.Proto* %55, i32 0, i32 5
  %57 = load i8, i8* %56, align 4
  %58 = zext i8 %57 to i32
  %59 = add nsw i32 %58, 1
  %60 = call i32 @luaD_growstack(%struct.lua_State* %54, i32 %59, i32 1)
  %61 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %61, i32 0, i32 7
  %63 = load %struct.global_State*, %struct.global_State** %62, align 8
  %64 = getelementptr inbounds %struct.global_State, %struct.global_State* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %69

; <label>:67:                                     ; preds = %53
  %68 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaC_step(%struct.lua_State* %68)
  br label %69

; <label>:69:                                     ; preds = %67, %53
  br label %71

; <label>:70:                                     ; preds = %4
  br label %71

; <label>:71:                                     ; preds = %70, %69
  %72 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %73 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %72, i32 0, i32 6
  %74 = load %union.StackValue*, %union.StackValue** %73, align 8
  %75 = getelementptr inbounds %union.StackValue, %union.StackValue* %74, i32 1
  store %union.StackValue* %75, %union.StackValue** %73, align 8
  %76 = bitcast %union.StackValue* %74 to %struct.TValue*
  store %struct.TValue* %76, %struct.TValue** %12, align 8
  %77 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %78 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %77, i32 0, i32 0
  %79 = load %union.StackValue*, %union.StackValue** %78, align 8
  %80 = bitcast %union.StackValue* %79 to %struct.TValue*
  store %struct.TValue* %80, %struct.TValue** %13, align 8
  %81 = load %struct.TValue*, %struct.TValue** %12, align 8
  %82 = getelementptr inbounds %struct.TValue, %struct.TValue* %81, i32 0, i32 0
  %83 = load %struct.TValue*, %struct.TValue** %13, align 8
  %84 = getelementptr inbounds %struct.TValue, %struct.TValue* %83, i32 0, i32 0
  %85 = bitcast %union.Value* %82 to i8*
  %86 = bitcast %union.Value* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 8, i32 8, i1 false)
  %87 = load %struct.TValue*, %struct.TValue** %13, align 8
  %88 = getelementptr inbounds %struct.TValue, %struct.TValue* %87, i32 0, i32 1
  %89 = load i8, i8* %88, align 8
  %90 = load %struct.TValue*, %struct.TValue** %12, align 8
  %91 = getelementptr inbounds %struct.TValue, %struct.TValue* %90, i32 0, i32 1
  store i8 %89, i8* %91, align 8
  %92 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  store i32 1, i32* %9, align 4
  br label %93

; <label>:93:                                     ; preds = %130, %71
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %133

; <label>:97:                                     ; preds = %93
  %98 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %99 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %98, i32 0, i32 6
  %100 = load %union.StackValue*, %union.StackValue** %99, align 8
  %101 = getelementptr inbounds %union.StackValue, %union.StackValue* %100, i32 1
  store %union.StackValue* %101, %union.StackValue** %99, align 8
  %102 = bitcast %union.StackValue* %100 to %struct.TValue*
  store %struct.TValue* %102, %struct.TValue** %14, align 8
  %103 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %104 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %103, i32 0, i32 0
  %105 = load %union.StackValue*, %union.StackValue** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %union.StackValue, %union.StackValue* %105, i64 %107
  %109 = bitcast %union.StackValue* %108 to %struct.TValue*
  store %struct.TValue* %109, %struct.TValue** %15, align 8
  %110 = load %struct.TValue*, %struct.TValue** %14, align 8
  %111 = getelementptr inbounds %struct.TValue, %struct.TValue* %110, i32 0, i32 0
  %112 = load %struct.TValue*, %struct.TValue** %15, align 8
  %113 = getelementptr inbounds %struct.TValue, %struct.TValue* %112, i32 0, i32 0
  %114 = bitcast %union.Value* %111 to i8*
  %115 = bitcast %union.Value* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 8, i32 8, i1 false)
  %116 = load %struct.TValue*, %struct.TValue** %15, align 8
  %117 = getelementptr inbounds %struct.TValue, %struct.TValue* %116, i32 0, i32 1
  %118 = load i8, i8* %117, align 8
  %119 = load %struct.TValue*, %struct.TValue** %14, align 8
  %120 = getelementptr inbounds %struct.TValue, %struct.TValue* %119, i32 0, i32 1
  store i8 %118, i8* %120, align 8
  %121 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %122 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %123 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %122, i32 0, i32 0
  %124 = load %union.StackValue*, %union.StackValue** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %union.StackValue, %union.StackValue* %124, i64 %126
  %128 = bitcast %union.StackValue* %127 to %struct.TValue*
  %129 = getelementptr inbounds %struct.TValue, %struct.TValue* %128, i32 0, i32 1
  store i8 0, i8* %129, align 8
  br label %130

; <label>:130:                                    ; preds = %97
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %93

; <label>:133:                                    ; preds = %93
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  %136 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %137 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %136, i32 0, i32 0
  %138 = load %union.StackValue*, %union.StackValue** %137, align 8
  %139 = sext i32 %135 to i64
  %140 = getelementptr inbounds %union.StackValue, %union.StackValue* %138, i64 %139
  store %union.StackValue* %140, %union.StackValue** %137, align 8
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  %143 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %144 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %143, i32 0, i32 1
  %145 = load %union.StackValue*, %union.StackValue** %144, align 8
  %146 = sext i32 %142 to i64
  %147 = getelementptr inbounds %union.StackValue, %union.StackValue* %145, i64 %146
  store %union.StackValue* %147, %union.StackValue** %144, align 8
  ret void
}

declare hidden i32 @luaD_growstack(%struct.lua_State*, i32, i32) #1

declare hidden void @luaC_step(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaT_getvarargs(%struct.lua_State*, %struct.CallInfo*, %union.StackValue*, i32) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.CallInfo*, align 8
  %7 = alloca %union.StackValue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TValue*, align 8
  %13 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.CallInfo* %1, %struct.CallInfo** %6, align 8
  store %union.StackValue* %2, %union.StackValue** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %14, i32 0, i32 4
  %16 = bitcast %union.anon.0* %15 to %struct.anon*
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %73

; <label>:21:                                     ; preds = %4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 10
  %25 = load %union.StackValue*, %union.StackValue** %24, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 6
  %28 = load %union.StackValue*, %union.StackValue** %27, align 8
  %29 = ptrtoint %union.StackValue* %25 to i64
  %30 = ptrtoint %union.StackValue* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 16
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp sle i64 %32, %34
  br i1 %35, label %36, label %65

; <label>:36:                                     ; preds = %21
  %37 = load %union.StackValue*, %union.StackValue** %7, align 8
  %38 = bitcast %union.StackValue* %37 to i8*
  %39 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 11
  %41 = load %union.StackValue*, %union.StackValue** %40, align 8
  %42 = bitcast %union.StackValue* %41 to i8*
  %43 = ptrtoint i8* %38 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  store i64 %45, i64* %11, align 8
  %46 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %47 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %46, i32 0, i32 7
  %48 = load %struct.global_State*, %struct.global_State** %47, align 8
  %49 = getelementptr inbounds %struct.global_State, %struct.global_State* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %54

; <label>:52:                                     ; preds = %36
  %53 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaC_step(%struct.lua_State* %53)
  br label %54

; <label>:54:                                     ; preds = %52, %36
  %55 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @luaD_growstack(%struct.lua_State* %55, i32 %56, i32 1)
  %58 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %58, i32 0, i32 11
  %60 = load %union.StackValue*, %union.StackValue** %59, align 8
  %61 = bitcast %union.StackValue* %60 to i8*
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = bitcast i8* %63 to %union.StackValue*
  store %union.StackValue* %64, %union.StackValue** %7, align 8
  br label %66

; <label>:65:                                     ; preds = %21
  br label %66

; <label>:66:                                     ; preds = %65, %54
  %67 = load %union.StackValue*, %union.StackValue** %7, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %union.StackValue, %union.StackValue* %67, i64 %69
  %71 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %72 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %71, i32 0, i32 6
  store %union.StackValue* %70, %union.StackValue** %72, align 8
  br label %73

; <label>:73:                                     ; preds = %66, %4
  store i32 0, i32* %9, align 4
  br label %74

; <label>:74:                                     ; preds = %113, %73
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %82

; <label>:78:                                     ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %79, %80
  br label %82

; <label>:82:                                     ; preds = %78, %74
  %83 = phi i1 [ false, %74 ], [ %81, %78 ]
  br i1 %83, label %84, label %116

; <label>:84:                                     ; preds = %82
  %85 = load %union.StackValue*, %union.StackValue** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %union.StackValue, %union.StackValue* %85, i64 %87
  %89 = bitcast %union.StackValue* %88 to %struct.TValue*
  store %struct.TValue* %89, %struct.TValue** %12, align 8
  %90 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %91 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %90, i32 0, i32 0
  %92 = load %union.StackValue*, %union.StackValue** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = sub i64 0, %94
  %96 = getelementptr inbounds %union.StackValue, %union.StackValue* %92, i64 %95
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %union.StackValue, %union.StackValue* %96, i64 %98
  %100 = bitcast %union.StackValue* %99 to %struct.TValue*
  store %struct.TValue* %100, %struct.TValue** %13, align 8
  %101 = load %struct.TValue*, %struct.TValue** %12, align 8
  %102 = getelementptr inbounds %struct.TValue, %struct.TValue* %101, i32 0, i32 0
  %103 = load %struct.TValue*, %struct.TValue** %13, align 8
  %104 = getelementptr inbounds %struct.TValue, %struct.TValue* %103, i32 0, i32 0
  %105 = bitcast %union.Value* %102 to i8*
  %106 = bitcast %union.Value* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* %106, i64 8, i32 8, i1 false)
  %107 = load %struct.TValue*, %struct.TValue** %13, align 8
  %108 = getelementptr inbounds %struct.TValue, %struct.TValue* %107, i32 0, i32 1
  %109 = load i8, i8* %108, align 8
  %110 = load %struct.TValue*, %struct.TValue** %12, align 8
  %111 = getelementptr inbounds %struct.TValue, %struct.TValue* %110, i32 0, i32 1
  store i8 %109, i8* %111, align 8
  %112 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  br label %113

; <label>:113:                                    ; preds = %84
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %74

; <label>:116:                                    ; preds = %82
  br label %117

; <label>:117:                                    ; preds = %128, %116
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %131

; <label>:121:                                    ; preds = %117
  %122 = load %union.StackValue*, %union.StackValue** %7, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %union.StackValue, %union.StackValue* %122, i64 %124
  %126 = bitcast %union.StackValue* %125 to %struct.TValue*
  %127 = getelementptr inbounds %struct.TValue, %struct.TValue* %126, i32 0, i32 1
  store i8 0, i8* %127, align 8
  br label %128

; <label>:128:                                    ; preds = %121
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %117

; <label>:131:                                    ; preds = %117
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
