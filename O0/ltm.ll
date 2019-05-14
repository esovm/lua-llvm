; ModuleID = 'ltm.c'
source_filename = "ltm.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %struct.GCObject* }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i64 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon }
%struct.anon = type { %union.Value, i32, i32 }
%struct.UpVal = type opaque
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i64, i16, i16 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%union.GCUnion = type { %struct.lua_State }
%struct.Udata = type { %struct.GCObject*, i8, i8, i8, %struct.Table*, i64, %union.Value }

@.str = private unnamed_addr constant [9 x i8] c"no value\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@udatatypename = internal constant [9 x i8] c"userdata\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@luaT_typenames_ = hidden constant [11 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @udatatypename, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @udatatypename, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)], align 16
@luaT_init.luaT_eventname = internal constant [24 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0)], align 16
@.str.9 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"__newindex\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"__len\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"__eq\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"__add\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"__sub\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"__mul\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"__mod\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"__pow\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"__div\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"__idiv\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"__band\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"__bor\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"__bxor\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"__shl\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"__shr\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"__unm\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"__bnot\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"__lt\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"__le\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"__concat\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"__call\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8
@.str.33 = private unnamed_addr constant [7 x i8] c"__name\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"perform bitwise operation on\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"perform arithmetic on\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaT_init(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %32, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 24
  br i1 %6, label %7, label %35

; <label>:7:                                      ; preds = %4
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [24 x i8*], [24 x i8*]* @luaT_init.luaT_eventname, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = call %struct.TString* @luaS_new(%struct.lua_State* %8, i8* %12)
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 6
  %16 = load %struct.global_State*, %struct.global_State** %15, align 8
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 31
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [24 x %struct.TString*], [24 x %struct.TString*]* %17, i64 0, i64 %19
  store %struct.TString* %13, %struct.TString** %20, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 6
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i32 0, i32 31
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [24 x %struct.TString*], [24 x %struct.TString*]* %25, i64 0, i64 %27
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
define hidden %struct.lua_TValue* @luaT_gettm(%struct.Table*, i32, %struct.TString*) #0 {
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca %struct.Table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TString*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  store %struct.Table* %0, %struct.Table** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TString* %2, %struct.TString** %7, align 8
  %9 = load %struct.Table*, %struct.Table** %5, align 8
  %10 = load %struct.TString*, %struct.TString** %7, align 8
  %11 = call %struct.lua_TValue* @luaH_getshortstr(%struct.Table* %9, %struct.TString* %10)
  store %struct.lua_TValue* %11, %struct.lua_TValue** %8, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

; <label>:16:                                     ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 1, %17
  %19 = trunc i32 %18 to i8
  %20 = zext i8 %19 to i32
  %21 = load %struct.Table*, %struct.Table** %5, align 8
  %22 = getelementptr inbounds %struct.Table, %struct.Table* %21, i32 0, i32 3
  %23 = load i8, i8* %22, align 2
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, %20
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %22, align 2
  store %struct.lua_TValue* null, %struct.lua_TValue** %4, align 8
  br label %29

; <label>:27:                                     ; preds = %3
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %28, %struct.lua_TValue** %4, align 8
  br label %29

; <label>:29:                                     ; preds = %27, %16
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  ret %struct.lua_TValue* %30
}

declare hidden %struct.lua_TValue* @luaH_getshortstr(%struct.Table*, %struct.TString*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.lua_TValue*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 15
  switch i32 %11, label %30 [
    i32 5, label %12
    i32 7, label %21
  ]

; <label>:12:                                     ; preds = %3
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 0
  %15 = bitcast %union.Value* %14 to %struct.GCObject**
  %16 = load %struct.GCObject*, %struct.GCObject** %15, align 8
  %17 = bitcast %struct.GCObject* %16 to %union.GCUnion*
  %18 = bitcast %union.GCUnion* %17 to %struct.Table*
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %18, i32 0, i32 9
  %20 = load %struct.Table*, %struct.Table** %19, align 8
  store %struct.Table* %20, %struct.Table** %7, align 8
  br label %42

; <label>:21:                                     ; preds = %3
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 0, i32 0
  %24 = bitcast %union.Value* %23 to %struct.GCObject**
  %25 = load %struct.GCObject*, %struct.GCObject** %24, align 8
  %26 = bitcast %struct.GCObject* %25 to %union.GCUnion*
  %27 = bitcast %union.GCUnion* %26 to %struct.Udata*
  %28 = getelementptr inbounds %struct.Udata, %struct.Udata* %27, i32 0, i32 4
  %29 = load %struct.Table*, %struct.Table** %28, align 8
  store %struct.Table* %29, %struct.Table** %7, align 8
  br label %42

; <label>:30:                                     ; preds = %3
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 6
  %33 = load %struct.global_State*, %struct.global_State** %32, align 8
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i32 0, i32 32
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 15
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %34, i64 0, i64 %39
  %41 = load %struct.Table*, %struct.Table** %40, align 8
  store %struct.Table* %41, %struct.Table** %7, align 8
  br label %42

; <label>:42:                                     ; preds = %30, %21, %12
  %43 = load %struct.Table*, %struct.Table** %7, align 8
  %44 = icmp ne %struct.Table* %43, null
  br i1 %44, label %45, label %56

; <label>:45:                                     ; preds = %42
  %46 = load %struct.Table*, %struct.Table** %7, align 8
  %47 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 6
  %49 = load %struct.global_State*, %struct.global_State** %48, align 8
  %50 = getelementptr inbounds %struct.global_State, %struct.global_State* %49, i32 0, i32 31
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [24 x %struct.TString*], [24 x %struct.TString*]* %50, i64 0, i64 %52
  %54 = load %struct.TString*, %struct.TString** %53, align 8
  %55 = call %struct.lua_TValue* @luaH_getshortstr(%struct.Table* %46, %struct.TString* %54)
  br label %57

; <label>:56:                                     ; preds = %42
  br label %57

; <label>:57:                                     ; preds = %56, %45
  %58 = phi %struct.lua_TValue* [ %55, %45 ], [ @luaO_nilobject_, %56 ]
  ret %struct.lua_TValue* %58
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i8* @luaT_objtypename(%struct.lua_State*, %struct.lua_TValue*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 69
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %2
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 0
  %15 = bitcast %union.Value* %14 to %struct.GCObject**
  %16 = load %struct.GCObject*, %struct.GCObject** %15, align 8
  %17 = bitcast %struct.GCObject* %16 to %union.GCUnion*
  %18 = bitcast %union.GCUnion* %17 to %struct.Table*
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %18, i32 0, i32 9
  %20 = load %struct.Table*, %struct.Table** %19, align 8
  store %struct.Table* %20, %struct.Table** %6, align 8
  %21 = icmp ne %struct.Table* %20, null
  br i1 %21, label %37, label %22

; <label>:22:                                     ; preds = %12, %2
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 71
  br i1 %26, label %27, label %57

; <label>:27:                                     ; preds = %22
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 0
  %30 = bitcast %union.Value* %29 to %struct.GCObject**
  %31 = load %struct.GCObject*, %struct.GCObject** %30, align 8
  %32 = bitcast %struct.GCObject* %31 to %union.GCUnion*
  %33 = bitcast %union.GCUnion* %32 to %struct.Udata*
  %34 = getelementptr inbounds %struct.Udata, %struct.Udata* %33, i32 0, i32 4
  %35 = load %struct.Table*, %struct.Table** %34, align 8
  store %struct.Table* %35, %struct.Table** %6, align 8
  %36 = icmp ne %struct.Table* %35, null
  br i1 %36, label %37, label %57

; <label>:37:                                     ; preds = %27, %12
  %38 = load %struct.Table*, %struct.Table** %6, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %40 = call %struct.TString* @luaS_new(%struct.lua_State* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0))
  %41 = call %struct.lua_TValue* @luaH_getshortstr(%struct.Table* %38, %struct.TString* %40)
  store %struct.lua_TValue* %41, %struct.lua_TValue** %7, align 8
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 15
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %56

; <label>:47:                                     ; preds = %37
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i32 0, i32 0
  %50 = bitcast %union.Value* %49 to %struct.GCObject**
  %51 = load %struct.GCObject*, %struct.GCObject** %50, align 8
  %52 = bitcast %struct.GCObject* %51 to %union.GCUnion*
  %53 = bitcast %union.GCUnion* %52 to %struct.TString*
  %54 = bitcast %struct.TString* %53 to i8*
  %55 = getelementptr inbounds i8, i8* %54, i64 24
  store i8* %55, i8** %3, align 8
  br label %66

; <label>:56:                                     ; preds = %37
  br label %57

; <label>:57:                                     ; preds = %56, %27, %22
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 15
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [11 x i8*], [11 x i8*]* @luaT_typenames_, i64 0, i64 %63
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %3, align 8
  br label %66

; <label>:66:                                     ; preds = %57, %47
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaT_callTM(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32) #0 {
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca %struct.lua_TValue*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.lua_TValue*, align 8
  %15 = alloca %struct.lua_TValue*, align 8
  %16 = alloca %struct.lua_TValue*, align 8
  %17 = alloca %struct.lua_TValue*, align 8
  %18 = alloca %struct.lua_TValue*, align 8
  %19 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %9, align 8
  store %struct.lua_TValue* %3, %struct.lua_TValue** %10, align 8
  store %struct.lua_TValue* %4, %struct.lua_TValue** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %21 = bitcast %struct.lua_TValue* %20 to i8*
  %22 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 10
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %23, align 8
  %25 = bitcast %struct.lua_TValue* %24 to i8*
  %26 = ptrtoint i8* %21 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  store i64 %28, i64* %13, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 5
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %30, align 8
  store %struct.lua_TValue* %31, %struct.lua_TValue** %14, align 8
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8
  store %struct.lua_TValue* %32, %struct.lua_TValue** %15, align 8
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %35 = bitcast %struct.lua_TValue* %33 to i8*
  %36 = bitcast %struct.lua_TValue* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 16, i32 8, i1 false)
  %37 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8
  %39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 1
  store %struct.lua_TValue* %39, %struct.lua_TValue** %16, align 8
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %42 = bitcast %struct.lua_TValue* %40 to i8*
  %43 = bitcast %struct.lua_TValue* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 16, i32 8, i1 false)
  %44 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8
  %46 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %45, i64 2
  store %struct.lua_TValue* %46, %struct.lua_TValue** %17, align 8
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %49 = bitcast %struct.lua_TValue* %47 to i8*
  %50 = bitcast %struct.lua_TValue* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 16, i32 8, i1 false)
  %51 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %52 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %52, i32 0, i32 5
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %54, i64 3
  store %struct.lua_TValue* %55, %struct.lua_TValue** %53, align 8
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

; <label>:58:                                     ; preds = %6
  %59 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %59, i32 0, i32 5
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i32 1
  store %struct.lua_TValue* %62, %struct.lua_TValue** %60, align 8
  store %struct.lua_TValue* %61, %struct.lua_TValue** %18, align 8
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8
  %64 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %65 = bitcast %struct.lua_TValue* %63 to i8*
  %66 = bitcast %struct.lua_TValue* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 16, i32 8, i1 false)
  %67 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  br label %68

; <label>:68:                                     ; preds = %58, %6
  %69 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %70 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %69, i32 0, i32 7
  %71 = load %struct.CallInfo*, %struct.CallInfo** %70, align 8
  %72 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %71, i32 0, i32 7
  %73 = load i16, i16* %72, align 2
  %74 = zext i16 %73 to i32
  %75 = and i32 %74, 2
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

; <label>:77:                                     ; preds = %68
  %78 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %79 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8
  %80 = load i32, i32* %12, align 4
  call void @luaD_call(%struct.lua_State* %78, %struct.lua_TValue* %79, i32 %80)
  br label %85

; <label>:81:                                     ; preds = %68
  %82 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %83 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8
  %84 = load i32, i32* %12, align 4
  call void @luaD_callnoyield(%struct.lua_State* %82, %struct.lua_TValue* %83, i32 %84)
  br label %85

; <label>:85:                                     ; preds = %81, %77
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

; <label>:88:                                     ; preds = %85
  %89 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %89, i32 0, i32 10
  %91 = load %struct.lua_TValue*, %struct.lua_TValue** %90, align 8
  %92 = bitcast %struct.lua_TValue* %91 to i8*
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = bitcast i8* %94 to %struct.lua_TValue*
  store %struct.lua_TValue* %95, %struct.lua_TValue** %11, align 8
  %96 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  store %struct.lua_TValue* %96, %struct.lua_TValue** %19, align 8
  %97 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8
  %98 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %99 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %98, i32 0, i32 5
  %100 = load %struct.lua_TValue*, %struct.lua_TValue** %99, align 8
  %101 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %100, i32 -1
  store %struct.lua_TValue* %101, %struct.lua_TValue** %99, align 8
  %102 = bitcast %struct.lua_TValue* %97 to i8*
  %103 = bitcast %struct.lua_TValue* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 16, i32 8, i1 false)
  %104 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  br label %105

; <label>:105:                                    ; preds = %88, %85
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

declare hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) #1

declare hidden void @luaD_callnoyield(%struct.lua_State*, %struct.lua_TValue*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaT_callbinTM(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %9, align 8
  store %struct.lua_TValue* %3, %struct.lua_TValue** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %15 = load i32, i32* %11, align 4
  %16 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %13, %struct.lua_TValue* %14, i32 %15)
  store %struct.lua_TValue* %16, %struct.lua_TValue** %12, align 8
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

; <label>:21:                                     ; preds = %5
  %22 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %22, %struct.lua_TValue* %23, i32 %24)
  store %struct.lua_TValue* %25, %struct.lua_TValue** %12, align 8
  br label %26

; <label>:26:                                     ; preds = %21, %5
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %26
  store i32 0, i32* %6, align 4
  br label %38

; <label>:32:                                     ; preds = %26
  %33 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  call void @luaT_callTM(%struct.lua_State* %33, %struct.lua_TValue* %34, %struct.lua_TValue* %35, %struct.lua_TValue* %36, %struct.lua_TValue* %37, i32 1)
  store i32 1, i32* %6, align 4
  br label %38

; <label>:38:                                     ; preds = %32, %31
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaT_trybinTM(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %3, %struct.lua_TValue** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @luaT_callbinTM(%struct.lua_State* %12, %struct.lua_TValue* %13, %struct.lua_TValue* %14, %struct.lua_TValue* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %65, label %19

; <label>:19:                                     ; preds = %5
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %61 [
    i32 22, label %21
    i32 13, label %25
    i32 14, label %25
    i32 15, label %25
    i32 16, label %25
    i32 17, label %25
    i32 19, label %25
  ]

; <label>:21:                                     ; preds = %19
  %22 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaG_concaterror(%struct.lua_State* %22, %struct.lua_TValue* %23, %struct.lua_TValue* %24) #4
  unreachable

; <label>:25:                                     ; preds = %19, %19, %19, %19, %19, %19
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %35

; <label>:30:                                     ; preds = %25
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 0
  %33 = bitcast %union.Value* %32 to double*
  %34 = load double, double* %33, align 8
  store double %34, double* %11, align 8
  br i1 true, label %39, label %57

; <label>:35:                                     ; preds = %25
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %37 = call i32 @luaV_tonumber_(%struct.lua_TValue* %36, double* %11)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

; <label>:39:                                     ; preds = %35, %30
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %49

; <label>:44:                                     ; preds = %39
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %46 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %45, i32 0, i32 0
  %47 = bitcast %union.Value* %46 to double*
  %48 = load double, double* %47, align 8
  store double %48, double* %11, align 8
  br i1 true, label %53, label %57

; <label>:49:                                     ; preds = %39
  %50 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %51 = call i32 @luaV_tonumber_(%struct.lua_TValue* %50, double* %11)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

; <label>:53:                                     ; preds = %49, %44
  %54 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaG_tointerror(%struct.lua_State* %54, %struct.lua_TValue* %55, %struct.lua_TValue* %56) #4
  unreachable

; <label>:57:                                     ; preds = %49, %44, %35, %30
  %58 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaG_opinterror(%struct.lua_State* %58, %struct.lua_TValue* %59, %struct.lua_TValue* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0)) #4
  unreachable

; <label>:61:                                     ; preds = %19
  %62 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %64 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaG_opinterror(%struct.lua_State* %62, %struct.lua_TValue* %63, %struct.lua_TValue* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0)) #4
  unreachable

; <label>:65:                                     ; preds = %5
  ret void
}

; Function Attrs: noreturn
declare hidden void @luaG_concaterror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #3

declare hidden i32 @luaV_tonumber_(%struct.lua_TValue*, double*) #1

; Function Attrs: noreturn
declare hidden void @luaG_tointerror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #3

; Function Attrs: noreturn
declare hidden void @luaG_opinterror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaT_callorderTM(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 5
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @luaT_callbinTM(%struct.lua_State* %10, %struct.lua_TValue* %11, %struct.lua_TValue* %12, %struct.lua_TValue* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

; <label>:19:                                     ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %48

; <label>:20:                                     ; preds = %4
  %21 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 5
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %22, align 8
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %44, label %27

; <label>:27:                                     ; preds = %20
  %28 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %28, i32 0, i32 5
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %29, align 8
  %31 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %42

; <label>:34:                                     ; preds = %27
  %35 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 5
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %36, align 8
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 0
  %39 = bitcast %union.Value* %38 to i32*
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br label %42

; <label>:42:                                     ; preds = %34, %27
  %43 = phi i1 [ false, %27 ], [ %41, %34 ]
  br label %44

; <label>:44:                                     ; preds = %42, %20
  %45 = phi i1 [ true, %20 ], [ %43, %42 ]
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %5, align 4
  br label %48

; <label>:48:                                     ; preds = %44, %19
  %49 = load i32, i32* %5, align 4
  ret i32 %49
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
