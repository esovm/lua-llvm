; ModuleID = 'ldebug.c'
source_filename = "ldebug.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %struct.GCObject* }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i64 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon }
%struct.anon = type { %union.Value, i32, i32 }
%struct.UpVal = type { %struct.lua_TValue*, i64, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.UpVal*, i32 }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i64, i16, i16 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.anon.1 = type { %struct.lua_TValue*, i32* }
%union.GCUnion = type { %struct.lua_State }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [27 x i8] c"attempt to %s a %s value%s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"concatenate\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"number%s has no integer representation\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"attempt to compare two %s values\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"attempt to compare %s with %s\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s:%d: %s\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"(*temporary)\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"(*vararg)\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"=[C]\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"=?\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Lua\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"metamethod\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"hook\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"for iterator\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"_ENV\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"upvalue\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@luaP_opmodes = external hidden constant [47 x i8], align 16
@.str.26 = private unnamed_addr constant [11 x i8] c" (%s '%s')\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_sethook(%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca void (%struct.lua_State*, %struct.lua_Debug*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store void (%struct.lua_State*, %struct.lua_Debug*)* %1, void (%struct.lua_State*, %struct.lua_Debug*)** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %6, align 8
  %10 = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %4
  store i32 0, i32* %7, align 4
  store void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)** %6, align 8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 7
  %18 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %19 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %18, i32 0, i32 7
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

; <label>:24:                                     ; preds = %15
  %25 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 7
  %27 = load %struct.CallInfo*, %struct.CallInfo** %26, align 8
  %28 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %27, i32 0, i32 4
  %29 = bitcast %union.anon.0* %28 to %struct.anon.1*
  %30 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 8
  store i32* %31, i32** %33, align 8
  br label %34

; <label>:34:                                     ; preds = %24, %15
  %35 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %6, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 16
  store volatile void (%struct.lua_State*, %struct.lua_Debug*)* %35, void (%struct.lua_State*, %struct.lua_Debug*)** %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 19
  store i32 %38, i32* %40, align 4
  %41 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i32 0, i32 19
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i32 0, i32 20
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = trunc i32 %46 to i8
  %48 = zext i8 %47 to i32
  %49 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %49, i32 0, i32 23
  store i32 %48, i32* %50, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 16
  %5 = load volatile void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %4, align 8
  ret void (%struct.lua_State*, %struct.lua_Debug*)* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_gethookmask(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 23
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_gethookcount(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 19
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_Debug*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.lua_Debug* %2, %struct.lua_Debug** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

; <label>:13:                                     ; preds = %3
  %14 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 7
  %16 = load %struct.CallInfo*, %struct.CallInfo** %15, align 8
  store %struct.CallInfo* %16, %struct.CallInfo** %9, align 8
  br label %17

; <label>:17:                                     ; preds = %30, %13
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %17
  %21 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 15
  %24 = icmp ne %struct.CallInfo* %21, %23
  br label %25

; <label>:25:                                     ; preds = %20, %17
  %26 = phi i1 [ false, %17 ], [ %24, %20 ]
  br i1 %26, label %27, label %34

; <label>:27:                                     ; preds = %25
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %6, align 4
  br label %30

; <label>:30:                                     ; preds = %27
  %31 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %31, i32 0, i32 2
  %33 = load %struct.CallInfo*, %struct.CallInfo** %32, align 8
  store %struct.CallInfo* %33, %struct.CallInfo** %9, align 8
  br label %17

; <label>:34:                                     ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

; <label>:37:                                     ; preds = %34
  %38 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 15
  %41 = icmp ne %struct.CallInfo* %38, %40
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %37
  store i32 1, i32* %8, align 4
  %43 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %44 = load %struct.lua_Debug*, %struct.lua_Debug** %7, align 8
  %45 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %44, i32 0, i32 13
  store %struct.CallInfo* %43, %struct.CallInfo** %45, align 8
  br label %47

; <label>:46:                                     ; preds = %37, %34
  store i32 0, i32* %8, align 4
  br label %47

; <label>:47:                                     ; preds = %46, %42
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

; <label>:49:                                     ; preds = %47, %12
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_getlocal(%struct.lua_State*, %struct.lua_Debug*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_Debug*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_Debug* %1, %struct.lua_Debug** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @swapextra(%struct.lua_State* %10)
  %11 = load %struct.lua_Debug*, %struct.lua_Debug** %5, align 8
  %12 = icmp eq %struct.lua_Debug* %11, null
  br i1 %12, label %13, label %38

; <label>:13:                                     ; preds = %3
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 5
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i64 -1
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 70
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %13
  store i8* null, i8** %7, align 8
  br label %37

; <label>:22:                                     ; preds = %13
  %23 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 5
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %24, align 8
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 -1
  %27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 0, i32 0
  %28 = bitcast %union.Value* %27 to %struct.GCObject**
  %29 = load %struct.GCObject*, %struct.GCObject** %28, align 8
  %30 = bitcast %struct.GCObject* %29 to %union.GCUnion*
  %31 = bitcast %union.GCUnion* %30 to %union.Closure*
  %32 = bitcast %union.Closure* %31 to %struct.LClosure*
  %33 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %32, i32 0, i32 5
  %34 = load %struct.Proto*, %struct.Proto** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i8* @luaF_getlocalname(%struct.Proto* %34, i32 %35, i32 0)
  store i8* %36, i8** %7, align 8
  br label %37

; <label>:37:                                     ; preds = %22, %21
  br label %61

; <label>:38:                                     ; preds = %3
  store %struct.lua_TValue* null, %struct.lua_TValue** %8, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %40 = load %struct.lua_Debug*, %struct.lua_Debug** %5, align 8
  %41 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %40, i32 0, i32 13
  %42 = load %struct.CallInfo*, %struct.CallInfo** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i8* @findlocal(%struct.lua_State* %39, %struct.CallInfo* %42, i32 %43, %struct.lua_TValue** %8)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %60

; <label>:47:                                     ; preds = %38
  %48 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %49 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %48, i32 0, i32 5
  %50 = load %struct.lua_TValue*, %struct.lua_TValue** %49, align 8
  store %struct.lua_TValue* %50, %struct.lua_TValue** %9, align 8
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %52 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %53 = bitcast %struct.lua_TValue* %51 to i8*
  %54 = bitcast %struct.lua_TValue* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 16, i32 8, i1 false)
  %55 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %56 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %56, i32 0, i32 5
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %57, align 8
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i32 1
  store %struct.lua_TValue* %59, %struct.lua_TValue** %57, align 8
  br label %60

; <label>:60:                                     ; preds = %47, %38
  br label %61

; <label>:61:                                     ; preds = %60, %37
  %62 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @swapextra(%struct.lua_State* %62)
  %63 = load i8*, i8** %7, align 8
  ret i8* %63
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swapextra(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.CallInfo*, align 8
  %4 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 4
  %7 = load i8, i8* %6, align 4
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %39

; <label>:10:                                     ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 7
  %13 = load %struct.CallInfo*, %struct.CallInfo** %12, align 8
  store %struct.CallInfo* %13, %struct.CallInfo** %3, align 8
  %14 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %14, i32 0, i32 0
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8
  store %struct.lua_TValue* %16, %struct.lua_TValue** %4, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 10
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8
  %20 = bitcast %struct.lua_TValue* %19 to i8*
  %21 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %22 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = bitcast i8* %24 to %struct.lua_TValue*
  %26 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %27 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %26, i32 0, i32 0
  store %struct.lua_TValue* %25, %struct.lua_TValue** %27, align 8
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %29 = bitcast %struct.lua_TValue* %28 to i8*
  %30 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %30, i32 0, i32 10
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %31, align 8
  %33 = bitcast %struct.lua_TValue* %32 to i8*
  %34 = ptrtoint i8* %29 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %38 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %37, i32 0, i32 5
  store i64 %36, i64* %38, align 8
  br label %39

; <label>:39:                                     ; preds = %10, %1
  ret void
}

declare hidden i8* @luaF_getlocalname(%struct.Proto*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @findlocal(%struct.lua_State*, %struct.CallInfo*, i32, %struct.lua_TValue**) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.CallInfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lua_TValue**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.lua_TValue*, align 8
  %12 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.CallInfo* %1, %struct.CallInfo** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.lua_TValue** %3, %struct.lua_TValue*** %9, align 8
  store i8* null, i8** %10, align 8
  %13 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %14 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %13, i32 0, i32 7
  %15 = load i16, i16* %14, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 2
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %50

; <label>:19:                                     ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

; <label>:22:                                     ; preds = %19
  %23 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 0, %24
  %26 = load %struct.lua_TValue**, %struct.lua_TValue*** %9, align 8
  %27 = call i8* @findvararg(%struct.CallInfo* %23, i32 %25, %struct.lua_TValue** %26)
  store i8* %27, i8** %5, align 8
  br label %99

; <label>:28:                                     ; preds = %19
  %29 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i32 0, i32 4
  %31 = bitcast %union.anon.0* %30 to %struct.anon.1*
  %32 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %31, i32 0, i32 0
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8
  store %struct.lua_TValue* %33, %struct.lua_TValue** %11, align 8
  %34 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %35 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %34, i32 0, i32 0
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %35, align 8
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i32 0, i32 0
  %38 = bitcast %union.Value* %37 to %struct.GCObject**
  %39 = load %struct.GCObject*, %struct.GCObject** %38, align 8
  %40 = bitcast %struct.GCObject* %39 to %union.GCUnion*
  %41 = bitcast %union.GCUnion* %40 to %union.Closure*
  %42 = bitcast %union.Closure* %41 to %struct.LClosure*
  %43 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %42, i32 0, i32 5
  %44 = load %struct.Proto*, %struct.Proto** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %47 = call i32 @currentpc(%struct.CallInfo* %46)
  %48 = call i8* @luaF_getlocalname(%struct.Proto* %44, i32 %45, i32 %47)
  store i8* %48, i8** %10, align 8
  br label %49

; <label>:49:                                     ; preds = %28
  br label %55

; <label>:50:                                     ; preds = %4
  %51 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %52 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %51, i32 0, i32 0
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %52, align 8
  %54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i64 1
  store %struct.lua_TValue* %54, %struct.lua_TValue** %11, align 8
  br label %55

; <label>:55:                                     ; preds = %50, %49
  %56 = load i8*, i8** %10, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %91

; <label>:58:                                     ; preds = %55
  %59 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %60 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %60, i32 0, i32 7
  %62 = load %struct.CallInfo*, %struct.CallInfo** %61, align 8
  %63 = icmp eq %struct.CallInfo* %59, %62
  br i1 %63, label %64, label %68

; <label>:64:                                     ; preds = %58
  %65 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %65, i32 0, i32 5
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8
  br label %74

; <label>:68:                                     ; preds = %58
  %69 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %70 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %69, i32 0, i32 3
  %71 = load %struct.CallInfo*, %struct.CallInfo** %70, align 8
  %72 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %71, i32 0, i32 0
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %72, align 8
  br label %74

; <label>:74:                                     ; preds = %68, %64
  %75 = phi %struct.lua_TValue* [ %67, %64 ], [ %73, %68 ]
  store %struct.lua_TValue* %75, %struct.lua_TValue** %12, align 8
  %76 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %77 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %78 = ptrtoint %struct.lua_TValue* %76 to i64
  %79 = ptrtoint %struct.lua_TValue* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 16
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp sge i64 %81, %83
  br i1 %84, label %85, label %89

; <label>:85:                                     ; preds = %74
  %86 = load i32, i32* %8, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %89

; <label>:88:                                     ; preds = %85
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8** %10, align 8
  br label %90

; <label>:89:                                     ; preds = %85, %74
  store i8* null, i8** %5, align 8
  br label %99

; <label>:90:                                     ; preds = %88
  br label %91

; <label>:91:                                     ; preds = %90, %55
  %92 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %92, i64 %95
  %97 = load %struct.lua_TValue**, %struct.lua_TValue*** %9, align 8
  store %struct.lua_TValue* %96, %struct.lua_TValue** %97, align 8
  %98 = load i8*, i8** %10, align 8
  store i8* %98, i8** %5, align 8
  br label %99

; <label>:99:                                     ; preds = %91, %89, %22
  %100 = load i8*, i8** %5, align 8
  ret i8* %100
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_setlocal(%struct.lua_State*, %struct.lua_Debug*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_Debug*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_Debug* %1, %struct.lua_Debug** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.lua_TValue* null, %struct.lua_TValue** %7, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @swapextra(%struct.lua_State* %10)
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load %struct.lua_Debug*, %struct.lua_Debug** %5, align 8
  %13 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %12, i32 0, i32 13
  %14 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @findlocal(%struct.lua_State* %11, %struct.CallInfo* %14, i32 %15, %struct.lua_TValue** %7)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %33

; <label>:19:                                     ; preds = %3
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %20, %struct.lua_TValue** %9, align 8
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 5
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %23, align 8
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i64 -1
  %26 = bitcast %struct.lua_TValue* %21 to i8*
  %27 = bitcast %struct.lua_TValue* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false)
  %28 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 5
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %30, align 8
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 -1
  store %struct.lua_TValue* %32, %struct.lua_TValue** %30, align 8
  br label %33

; <label>:33:                                     ; preds = %19, %3
  %34 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @swapextra(%struct.lua_State* %34)
  %35 = load i8*, i8** %8, align 8
  ret i8* %35
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lua_Debug*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.Closure*, align 8
  %9 = alloca %struct.CallInfo*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.lua_Debug* %2, %struct.lua_Debug** %6, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @swapextra(%struct.lua_State* %12)
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 62
  br i1 %16, label %17, label %28

; <label>:17:                                     ; preds = %3
  store %struct.CallInfo* null, %struct.CallInfo** %9, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 5
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 -1
  store %struct.lua_TValue* %21, %struct.lua_TValue** %10, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %5, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 5
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8
  %27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 -1
  store %struct.lua_TValue* %27, %struct.lua_TValue** %25, align 8
  br label %35

; <label>:28:                                     ; preds = %3
  %29 = load %struct.lua_Debug*, %struct.lua_Debug** %6, align 8
  %30 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %29, i32 0, i32 13
  %31 = load %struct.CallInfo*, %struct.CallInfo** %30, align 8
  store %struct.CallInfo* %31, %struct.CallInfo** %9, align 8
  %32 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %33 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %32, i32 0, i32 0
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %33, align 8
  store %struct.lua_TValue* %34, %struct.lua_TValue** %10, align 8
  br label %35

; <label>:35:                                     ; preds = %28, %17
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 31
  %40 = icmp eq i32 %39, 6
  br i1 %40, label %41, label %48

; <label>:41:                                     ; preds = %35
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 0, i32 0
  %44 = bitcast %union.Value* %43 to %struct.GCObject**
  %45 = load %struct.GCObject*, %struct.GCObject** %44, align 8
  %46 = bitcast %struct.GCObject* %45 to %union.GCUnion*
  %47 = bitcast %union.GCUnion* %46 to %union.Closure*
  br label %49

; <label>:48:                                     ; preds = %35
  br label %49

; <label>:49:                                     ; preds = %48, %41
  %50 = phi %union.Closure* [ %47, %41 ], [ null, %48 ]
  store %union.Closure* %50, %union.Closure** %8, align 8
  %51 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load %struct.lua_Debug*, %struct.lua_Debug** %6, align 8
  %54 = load %union.Closure*, %union.Closure** %8, align 8
  %55 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %56 = call i32 @auxgetinfo(%struct.lua_State* %51, i8* %52, %struct.lua_Debug* %53, %union.Closure* %54, %struct.CallInfo* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = call i8* @strchr(i8* %57, i32 102) #7
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %73

; <label>:60:                                     ; preds = %49
  %61 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %61, i32 0, i32 5
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8
  store %struct.lua_TValue* %63, %struct.lua_TValue** %11, align 8
  %64 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %66 = bitcast %struct.lua_TValue* %64 to i8*
  %67 = bitcast %struct.lua_TValue* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 16, i32 8, i1 false)
  %68 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %69 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %70 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %69, i32 0, i32 5
  %71 = load %struct.lua_TValue*, %struct.lua_TValue** %70, align 8
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %71, i32 1
  store %struct.lua_TValue* %72, %struct.lua_TValue** %70, align 8
  br label %73

; <label>:73:                                     ; preds = %60, %49
  %74 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @swapextra(%struct.lua_State* %74)
  %75 = load i8*, i8** %5, align 8
  %76 = call i8* @strchr(i8* %75, i32 76) #7
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %81

; <label>:78:                                     ; preds = %73
  %79 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %80 = load %union.Closure*, %union.Closure** %8, align 8
  call void @collectvalidlines(%struct.lua_State* %79, %union.Closure* %80)
  br label %81

; <label>:81:                                     ; preds = %78, %73
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxgetinfo(%struct.lua_State*, i8*, %struct.lua_Debug*, %union.Closure*, %struct.CallInfo*) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lua_Debug*, align 8
  %9 = alloca %union.Closure*, align 8
  %10 = alloca %struct.CallInfo*, align 8
  %11 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.lua_Debug* %2, %struct.lua_Debug** %8, align 8
  store %union.Closure* %3, %union.Closure** %9, align 8
  store %struct.CallInfo* %4, %struct.CallInfo** %10, align 8
  store i32 1, i32* %11, align 4
  br label %12

; <label>:12:                                     ; preds = %124, %5
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %127

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %122 [
    i32 83, label %20
    i32 108, label %23
    i32 117, label %41
    i32 116, label %88
    i32 110, label %103
    i32 76, label %121
    i32 102, label %121
  ]

; <label>:20:                                     ; preds = %16
  %21 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %22 = load %union.Closure*, %union.Closure** %9, align 8
  call void @funcinfo(%struct.lua_Debug* %21, %union.Closure* %22)
  br label %123

; <label>:23:                                     ; preds = %16
  %24 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %25 = icmp ne %struct.CallInfo* %24, null
  br i1 %25, label %26, label %36

; <label>:26:                                     ; preds = %23
  %27 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %28 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %27, i32 0, i32 7
  %29 = load i16, i16* %28, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %30, 2
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %26
  %34 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %35 = call i32 @currentline(%struct.CallInfo* %34)
  br label %37

; <label>:36:                                     ; preds = %26, %23
  br label %37

; <label>:37:                                     ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ -1, %36 ]
  %39 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %40 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  br label %123

; <label>:41:                                     ; preds = %16
  %42 = load %union.Closure*, %union.Closure** %9, align 8
  %43 = icmp eq %union.Closure* %42, null
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %41
  br label %51

; <label>:45:                                     ; preds = %41
  %46 = load %union.Closure*, %union.Closure** %9, align 8
  %47 = bitcast %union.Closure* %46 to %struct.CClosure*
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i32 0, i32 3
  %49 = load i8, i8* %48, align 2
  %50 = zext i8 %49 to i32
  br label %51

; <label>:51:                                     ; preds = %45, %44
  %52 = phi i32 [ 0, %44 ], [ %50, %45 ]
  %53 = trunc i32 %52 to i8
  %54 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %55 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %54, i32 0, i32 8
  store i8 %53, i8* %55, align 4
  %56 = load %union.Closure*, %union.Closure** %9, align 8
  %57 = icmp eq %union.Closure* %56, null
  br i1 %57, label %65, label %58

; <label>:58:                                     ; preds = %51
  %59 = load %union.Closure*, %union.Closure** %9, align 8
  %60 = bitcast %union.Closure* %59 to %struct.CClosure*
  %61 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %60, i32 0, i32 1
  %62 = load i8, i8* %61, align 8
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 38
  br i1 %64, label %65, label %70

; <label>:65:                                     ; preds = %58, %51
  %66 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %67 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %66, i32 0, i32 10
  store i8 1, i8* %67, align 2
  %68 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %69 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %68, i32 0, i32 9
  store i8 0, i8* %69, align 1
  br label %87

; <label>:70:                                     ; preds = %58
  %71 = load %union.Closure*, %union.Closure** %9, align 8
  %72 = bitcast %union.Closure* %71 to %struct.LClosure*
  %73 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %72, i32 0, i32 5
  %74 = load %struct.Proto*, %struct.Proto** %73, align 8
  %75 = getelementptr inbounds %struct.Proto, %struct.Proto* %74, i32 0, i32 4
  %76 = load i8, i8* %75, align 1
  %77 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %78 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %77, i32 0, i32 10
  store i8 %76, i8* %78, align 2
  %79 = load %union.Closure*, %union.Closure** %9, align 8
  %80 = bitcast %union.Closure* %79 to %struct.LClosure*
  %81 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %80, i32 0, i32 5
  %82 = load %struct.Proto*, %struct.Proto** %81, align 8
  %83 = getelementptr inbounds %struct.Proto, %struct.Proto* %82, i32 0, i32 3
  %84 = load i8, i8* %83, align 2
  %85 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %86 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %85, i32 0, i32 9
  store i8 %84, i8* %86, align 1
  br label %87

; <label>:87:                                     ; preds = %70, %65
  br label %123

; <label>:88:                                     ; preds = %16
  %89 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %90 = icmp ne %struct.CallInfo* %89, null
  br i1 %90, label %91, label %97

; <label>:91:                                     ; preds = %88
  %92 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %93 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %92, i32 0, i32 7
  %94 = load i16, i16* %93, align 2
  %95 = zext i16 %94 to i32
  %96 = and i32 %95, 32
  br label %98

; <label>:97:                                     ; preds = %88
  br label %98

; <label>:98:                                     ; preds = %97, %91
  %99 = phi i32 [ %96, %91 ], [ 0, %97 ]
  %100 = trunc i32 %99 to i8
  %101 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %102 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %101, i32 0, i32 11
  store i8 %100, i8* %102, align 1
  br label %123

; <label>:103:                                    ; preds = %16
  %104 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %105 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %106 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %107 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %106, i32 0, i32 1
  %108 = call i8* @getfuncname(%struct.lua_State* %104, %struct.CallInfo* %105, i8** %107)
  %109 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %110 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %112 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %120

; <label>:115:                                    ; preds = %103
  %116 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %117 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %116, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8** %117, align 8
  %118 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %119 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %118, i32 0, i32 1
  store i8* null, i8** %119, align 8
  br label %120

; <label>:120:                                    ; preds = %115, %103
  br label %123

; <label>:121:                                    ; preds = %16, %16
  br label %123

; <label>:122:                                    ; preds = %16
  store i32 0, i32* %11, align 4
  br label %123

; <label>:123:                                    ; preds = %122, %121, %120, %98, %87, %37, %20
  br label %124

; <label>:124:                                    ; preds = %123
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %7, align 8
  br label %12

; <label>:127:                                    ; preds = %12
  %128 = load i32, i32* %11, align 4
  ret i32 %128
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collectvalidlines(%struct.lua_State*, %union.Closure*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %union.Closure*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lua_TValue, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.Table*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.Table*, align 8
  %11 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %union.Closure* %1, %union.Closure** %4, align 8
  %12 = load %union.Closure*, %union.Closure** %4, align 8
  %13 = icmp eq %union.Closure* %12, null
  br i1 %13, label %21, label %14

; <label>:14:                                     ; preds = %2
  %15 = load %union.Closure*, %union.Closure** %4, align 8
  %16 = bitcast %union.Closure* %15 to %struct.CClosure*
  %17 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 8
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 38
  br i1 %20, label %21, label %30

; <label>:21:                                     ; preds = %14, %2
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 5
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %23, align 8
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 5
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %27, align 8
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 1
  store %struct.lua_TValue* %29, %struct.lua_TValue** %27, align 8
  br label %82

; <label>:30:                                     ; preds = %14
  %31 = load %union.Closure*, %union.Closure** %4, align 8
  %32 = bitcast %union.Closure* %31 to %struct.LClosure*
  %33 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %32, i32 0, i32 5
  %34 = load %struct.Proto*, %struct.Proto** %33, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 17
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %7, align 8
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = call %struct.Table* @luaH_new(%struct.lua_State* %37)
  store %struct.Table* %38, %struct.Table** %8, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 5
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %40, align 8
  store %struct.lua_TValue* %41, %struct.lua_TValue** %9, align 8
  %42 = load %struct.Table*, %struct.Table** %8, align 8
  store %struct.Table* %42, %struct.Table** %10, align 8
  %43 = load %struct.Table*, %struct.Table** %10, align 8
  %44 = bitcast %struct.Table* %43 to %union.GCUnion*
  %45 = bitcast %union.GCUnion* %44 to %struct.GCObject*
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %47 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i32 0, i32 0
  %48 = bitcast %union.Value* %47 to %struct.GCObject**
  store %struct.GCObject* %45, %struct.GCObject** %48, align 8
  %49 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %50 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %49, i32 0, i32 1
  store i32 69, i32* %50, align 8
  %51 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %52 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %51, i32 0, i32 5
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %52, align 8
  %54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i32 1
  store %struct.lua_TValue* %54, %struct.lua_TValue** %52, align 8
  store %struct.lua_TValue* %6, %struct.lua_TValue** %11, align 8
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i32 0, i32 0
  %57 = bitcast %union.Value* %56 to i32*
  store i32 1, i32* %57, align 8
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i32 0, i32 1
  store i32 1, i32* %59, align 8
  store i32 0, i32* %5, align 4
  br label %60

; <label>:60:                                     ; preds = %78, %30
  %61 = load i32, i32* %5, align 4
  %62 = load %union.Closure*, %union.Closure** %4, align 8
  %63 = bitcast %union.Closure* %62 to %struct.LClosure*
  %64 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %63, i32 0, i32 5
  %65 = load %struct.Proto*, %struct.Proto** %64, align 8
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %61, %67
  br i1 %68, label %69, label %81

; <label>:69:                                     ; preds = %60
  %70 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %71 = load %struct.Table*, %struct.Table** %8, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  call void @luaH_setint(%struct.lua_State* %70, %struct.Table* %71, i64 %77, %struct.lua_TValue* %6)
  br label %78

; <label>:78:                                     ; preds = %69
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %60

; <label>:81:                                     ; preds = %60
  br label %82

; <label>:82:                                     ; preds = %81, %21
  ret void
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaG_typeerror(%struct.lua_State*, %struct.lua_TValue*, i8*) #4 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %10 = call i8* @luaT_objtypename(%struct.lua_State* %8, %struct.lua_TValue* %9)
  store i8* %10, i8** %7, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %16 = call i8* @varinfo(%struct.lua_State* %14, %struct.lua_TValue* %15)
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* %12, i8* %13, i8* %16) #8
  unreachable
                                                  ; No predecessors!
  unreachable
}

declare hidden i8* @luaT_objtypename(%struct.lua_State*, %struct.lua_TValue*) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #4 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.CallInfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 7
  %10 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  store %struct.CallInfo* %10, %struct.CallInfo** %5, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 6
  %13 = load %struct.global_State*, %struct.global_State** %12, align 8
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %2
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_step(%struct.lua_State* %18)
  br label %19

; <label>:19:                                     ; preds = %17, %2
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0
  %21 = bitcast %struct.__va_list_tag* %20 to i8*
  call void @llvm.va_start(i8* %21)
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0
  %25 = call i8* @luaO_pushvfstring(%struct.lua_State* %22, i8* %23, %struct.__va_list_tag* %24)
  store i8* %25, i8** %6, align 8
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0
  %27 = bitcast %struct.__va_list_tag* %26 to i8*
  call void @llvm.va_end(i8* %27)
  %28 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i32 0, i32 7
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 2
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

; <label>:34:                                     ; preds = %19
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %38 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %37, i32 0, i32 0
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %38, align 8
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i32 0, i32 0
  %41 = bitcast %union.Value* %40 to %struct.GCObject**
  %42 = load %struct.GCObject*, %struct.GCObject** %41, align 8
  %43 = bitcast %struct.GCObject* %42 to %union.GCUnion*
  %44 = bitcast %union.GCUnion* %43 to %union.Closure*
  %45 = bitcast %union.Closure* %44 to %struct.LClosure*
  %46 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %45, i32 0, i32 5
  %47 = load %struct.Proto*, %struct.Proto** %46, align 8
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i32 0, i32 21
  %49 = load %struct.TString*, %struct.TString** %48, align 8
  %50 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %51 = call i32 @currentline(%struct.CallInfo* %50)
  %52 = call i8* @luaG_addinfo(%struct.lua_State* %35, i8* %36, %struct.TString* %49, i32 %51)
  br label %53

; <label>:53:                                     ; preds = %34, %19
  %54 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaG_errormsg(%struct.lua_State* %54) #8
  unreachable
                                                  ; No predecessors!
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @varinfo(%struct.lua_State*, %struct.lua_TValue*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.CallInfo*, align 8
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 7
  %10 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  store %struct.CallInfo* %10, %struct.CallInfo** %6, align 8
  store i8* null, i8** %7, align 8
  %11 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %12 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %11, i32 0, i32 7
  %13 = load i16, i16* %12, align 2
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 2
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %55

; <label>:17:                                     ; preds = %2
  %18 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %20 = call i8* @getupvalname(%struct.CallInfo* %18, %struct.lua_TValue* %19, i8** %5)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %54, label %23

; <label>:23:                                     ; preds = %17
  %24 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %26 = call i32 @isinstack(%struct.CallInfo* %24, %struct.lua_TValue* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %54

; <label>:28:                                     ; preds = %23
  %29 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i32 0, i32 0
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %30, align 8
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 0
  %33 = bitcast %union.Value* %32 to %struct.GCObject**
  %34 = load %struct.GCObject*, %struct.GCObject** %33, align 8
  %35 = bitcast %struct.GCObject* %34 to %union.GCUnion*
  %36 = bitcast %union.GCUnion* %35 to %union.Closure*
  %37 = bitcast %union.Closure* %36 to %struct.LClosure*
  %38 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %37, i32 0, i32 5
  %39 = load %struct.Proto*, %struct.Proto** %38, align 8
  %40 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %41 = call i32 @currentpc(%struct.CallInfo* %40)
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %43 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i32 0, i32 4
  %45 = bitcast %union.anon.0* %44 to %struct.anon.1*
  %46 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %45, i32 0, i32 0
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %46, align 8
  %48 = ptrtoint %struct.lua_TValue* %42 to i64
  %49 = ptrtoint %struct.lua_TValue* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 16
  %52 = trunc i64 %51 to i32
  %53 = call i8* @getobjname(%struct.Proto* %39, i32 %41, i32 %52, i8** %5)
  store i8* %53, i8** %7, align 8
  br label %54

; <label>:54:                                     ; preds = %28, %23, %17
  br label %55

; <label>:55:                                     ; preds = %54, %2
  %56 = load i8*, i8** %7, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %63

; <label>:58:                                     ; preds = %55
  %59 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* %60, i8* %61)
  br label %64

; <label>:63:                                     ; preds = %55
  br label %64

; <label>:64:                                     ; preds = %63, %58
  %65 = phi i8* [ %62, %58 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), %63 ]
  ret i8* %65
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaG_concaterror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #4 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %6, align 8
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 15
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %18, label %12

; <label>:12:                                     ; preds = %3
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 15
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %12, %3
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  store %struct.lua_TValue* %19, %struct.lua_TValue** %5, align 8
  br label %20

; <label>:20:                                     ; preds = %18, %12
  %21 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  call void @luaG_typeerror(%struct.lua_State* %21, %struct.lua_TValue* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaG_opinterror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, i8*) #4 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %6, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %4
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %17 = bitcast %union.Value* %16 to double*
  %18 = load double, double* %17, align 8
  store double %18, double* %9, align 8
  br i1 true, label %25, label %23

; <label>:19:                                     ; preds = %4
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %21 = call i32 @luaV_tonumber_(%struct.lua_TValue* %20, double* %9)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %19, %14
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  store %struct.lua_TValue* %24, %struct.lua_TValue** %7, align 8
  br label %25

; <label>:25:                                     ; preds = %23, %19, %14
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %28 = load i8*, i8** %8, align 8
  call void @luaG_typeerror(%struct.lua_State* %26, %struct.lua_TValue* %27, i8* %28) #8
  unreachable
                                                  ; No predecessors!
  unreachable
}

declare hidden i32 @luaV_tonumber_(%struct.lua_TValue*, double*) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaG_tointerror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #4 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %6, align 8
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 19
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %3
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 0
  %15 = bitcast %union.Value* %14 to i64*
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  br i1 true, label %23, label %21

; <label>:17:                                     ; preds = %3
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %19 = call i32 @luaV_tointeger(%struct.lua_TValue* %18, i64* %7, i32 0)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %17, %12
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  store %struct.lua_TValue* %22, %struct.lua_TValue** %6, align 8
  br label %23

; <label>:23:                                     ; preds = %21, %17, %12
  %24 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %27 = call i8* @varinfo(%struct.lua_State* %25, %struct.lua_TValue* %26)
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i8* %27) #8
  unreachable
                                                  ; No predecessors!
  unreachable
}

declare hidden i32 @luaV_tointeger(%struct.lua_TValue*, i64*, i32) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaG_ordererror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #4 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %11 = call i8* @luaT_objtypename(%struct.lua_State* %9, %struct.lua_TValue* %10)
  store i8* %11, i8** %7, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %14 = call i8* @luaT_objtypename(%struct.lua_State* %12, %struct.lua_TValue* %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @strcmp(i8* %15, i8* %16) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %3
  %20 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %21 = load i8*, i8** %7, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* %21) #8
  unreachable

; <label>:22:                                     ; preds = %3
  %23 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %8, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), i8* %24, i8* %25) #8
  unreachable
                                                  ; No predecessors!
  unreachable
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define hidden i8* @luaG_addinfo(%struct.lua_State*, i8*, %struct.TString*, i32) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TString*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [60 x i8], align 16
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TString* %2, %struct.TString** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TString*, %struct.TString** %7, align 8
  %11 = icmp ne %struct.TString* %10, null
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds [60 x i8], [60 x i8]* %9, i32 0, i32 0
  %14 = load %struct.TString*, %struct.TString** %7, align 8
  %15 = bitcast %struct.TString* %14 to i8*
  %16 = getelementptr inbounds i8, i8* %15, i64 24
  call void @luaO_chunkid(i8* %13, i8* %16, i64 60)
  br label %20

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds [60 x i8], [60 x i8]* %9, i64 0, i64 0
  store i8 63, i8* %18, align 16
  %19 = getelementptr inbounds [60 x i8], [60 x i8]* %9, i64 0, i64 1
  store i8 0, i8* %19, align 1
  br label %20

; <label>:20:                                     ; preds = %17, %12
  %21 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %22 = getelementptr inbounds [60 x i8], [60 x i8]* %9, i32 0, i32 0
  %23 = load i32, i32* %8, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* %22, i32 %23, i8* %24)
  ret i8* %25
}

declare hidden void @luaO_chunkid(i8*, i8*, i64) #1

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaG_errormsg(%struct.lua_State*) #4 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.lua_TValue*, align 8
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 17
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %49

; <label>:10:                                     ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 10
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %14 = bitcast %struct.lua_TValue* %13 to i8*
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 17
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  %19 = bitcast i8* %18 to %struct.lua_TValue*
  store %struct.lua_TValue* %19, %struct.lua_TValue** %3, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 5
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %21, align 8
  store %struct.lua_TValue* %22, %struct.lua_TValue** %4, align 8
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 5
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8
  %27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i64 -1
  %28 = bitcast %struct.lua_TValue* %23 to i8*
  %29 = bitcast %struct.lua_TValue* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false)
  %30 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %31 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 5
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 -1
  store %struct.lua_TValue* %34, %struct.lua_TValue** %5, align 8
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8
  %37 = bitcast %struct.lua_TValue* %35 to i8*
  %38 = bitcast %struct.lua_TValue* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false)
  %39 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %40 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 5
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %41, align 8
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 1
  store %struct.lua_TValue* %43, %struct.lua_TValue** %41, align 8
  %44 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %45 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i32 0, i32 5
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %46, align 8
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %47, i64 -2
  call void @luaD_callnoyield(%struct.lua_State* %44, %struct.lua_TValue* %48, i32 1)
  br label %49

; <label>:49:                                     ; preds = %10, %1
  %50 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaD_throw(%struct.lua_State* %50, i32 2) #8
  unreachable
                                                  ; No predecessors!
  unreachable
}

declare hidden void @luaD_callnoyield(%struct.lua_State*, %struct.lua_TValue*, i32) #1

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) #5

declare hidden void @luaC_step(%struct.lua_State*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @currentline(%struct.CallInfo*) #0 {
  %2 = alloca %struct.CallInfo*, align 8
  store %struct.CallInfo* %0, %struct.CallInfo** %2, align 8
  %3 = load %struct.CallInfo*, %struct.CallInfo** %2, align 8
  %4 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3, i32 0, i32 0
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 0
  %7 = bitcast %union.Value* %6 to %struct.GCObject**
  %8 = load %struct.GCObject*, %struct.GCObject** %7, align 8
  %9 = bitcast %struct.GCObject* %8 to %union.GCUnion*
  %10 = bitcast %union.GCUnion* %9 to %union.Closure*
  %11 = bitcast %union.Closure* %10 to %struct.LClosure*
  %12 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %11, i32 0, i32 5
  %13 = load %struct.Proto*, %struct.Proto** %12, align 8
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i32 0, i32 17
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %36

; <label>:17:                                     ; preds = %1
  %18 = load %struct.CallInfo*, %struct.CallInfo** %2, align 8
  %19 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %18, i32 0, i32 0
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 0
  %22 = bitcast %union.Value* %21 to %struct.GCObject**
  %23 = load %struct.GCObject*, %struct.GCObject** %22, align 8
  %24 = bitcast %struct.GCObject* %23 to %union.GCUnion*
  %25 = bitcast %union.GCUnion* %24 to %union.Closure*
  %26 = bitcast %union.Closure* %25 to %struct.LClosure*
  %27 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %26, i32 0, i32 5
  %28 = load %struct.Proto*, %struct.Proto** %27, align 8
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 17
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.CallInfo*, %struct.CallInfo** %2, align 8
  %32 = call i32 @currentpc(%struct.CallInfo* %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  br label %37

; <label>:36:                                     ; preds = %1
  br label %37

; <label>:37:                                     ; preds = %36, %17
  %38 = phi i32 [ %35, %17 ], [ -1, %36 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaG_traceexec(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.CallInfo*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.Proto*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 7
  %11 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  store %struct.CallInfo* %11, %struct.CallInfo** %3, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 23
  %14 = load i32, i32* %13, align 8
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %4, align 1
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 20
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

; <label>:21:                                     ; preds = %1
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 8
  %25 = icmp ne i32 %24, 0
  br label %26

; <label>:26:                                     ; preds = %21, %1
  %27 = phi i1 [ false, %1 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

; <label>:31:                                     ; preds = %26
  %32 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 19
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 20
  store i32 %34, i32* %36, align 8
  br label %44

; <label>:37:                                     ; preds = %26
  %38 = load i8, i8* %4, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

; <label>:42:                                     ; preds = %37
  br label %193

; <label>:43:                                     ; preds = %37
  br label %44

; <label>:44:                                     ; preds = %43, %31
  %45 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %46 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %45, i32 0, i32 7
  %47 = load i16, i16* %46, align 2
  %48 = zext i16 %47 to i32
  %49 = and i32 %48, 64
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

; <label>:51:                                     ; preds = %44
  %52 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %53 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %52, i32 0, i32 7
  %54 = load i16, i16* %53, align 2
  %55 = zext i16 %54 to i32
  %56 = and i32 %55, -65
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %53, align 2
  br label %193

; <label>:58:                                     ; preds = %44
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

; <label>:61:                                     ; preds = %58
  %62 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaD_hook(%struct.lua_State* %62, i32 3, i32 -1)
  br label %63

; <label>:63:                                     ; preds = %61, %58
  %64 = load i8, i8* %4, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %154

; <label>:68:                                     ; preds = %63
  %69 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %70 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %69, i32 0, i32 0
  %71 = load %struct.lua_TValue*, %struct.lua_TValue** %70, align 8
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %71, i32 0, i32 0
  %73 = bitcast %union.Value* %72 to %struct.GCObject**
  %74 = load %struct.GCObject*, %struct.GCObject** %73, align 8
  %75 = bitcast %struct.GCObject* %74 to %union.GCUnion*
  %76 = bitcast %union.GCUnion* %75 to %union.Closure*
  %77 = bitcast %union.Closure* %76 to %struct.LClosure*
  %78 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %77, i32 0, i32 5
  %79 = load %struct.Proto*, %struct.Proto** %78, align 8
  store %struct.Proto* %79, %struct.Proto** %6, align 8
  %80 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %81 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %80, i32 0, i32 4
  %82 = bitcast %union.anon.0* %81 to %struct.anon.1*
  %83 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.Proto*, %struct.Proto** %6, align 8
  %86 = getelementptr inbounds %struct.Proto, %struct.Proto* %85, i32 0, i32 15
  %87 = load i32*, i32** %86, align 8
  %88 = ptrtoint i32* %84 to i64
  %89 = ptrtoint i32* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = sub nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  %94 = load %struct.Proto*, %struct.Proto** %6, align 8
  %95 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i32 0, i32 17
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %106

; <label>:98:                                     ; preds = %68
  %99 = load %struct.Proto*, %struct.Proto** %6, align 8
  %100 = getelementptr inbounds %struct.Proto, %struct.Proto* %99, i32 0, i32 17
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  br label %107

; <label>:106:                                    ; preds = %68
  br label %107

; <label>:107:                                    ; preds = %106, %98
  %108 = phi i32 [ %105, %98 ], [ -1, %106 ]
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %150, label %111

; <label>:111:                                    ; preds = %107
  %112 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %113 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %112, i32 0, i32 4
  %114 = bitcast %union.anon.0* %113 to %struct.anon.1*
  %115 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %118 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %117, i32 0, i32 8
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ule i32* %116, %119
  br i1 %120, label %150, label %121

; <label>:121:                                    ; preds = %111
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.Proto*, %struct.Proto** %6, align 8
  %124 = getelementptr inbounds %struct.Proto, %struct.Proto* %123, i32 0, i32 17
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %146

; <label>:127:                                    ; preds = %121
  %128 = load %struct.Proto*, %struct.Proto** %6, align 8
  %129 = getelementptr inbounds %struct.Proto, %struct.Proto* %128, i32 0, i32 17
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %132 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %131, i32 0, i32 8
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.Proto*, %struct.Proto** %6, align 8
  %135 = getelementptr inbounds %struct.Proto, %struct.Proto* %134, i32 0, i32 15
  %136 = load i32*, i32** %135, align 8
  %137 = ptrtoint i32* %133 to i64
  %138 = ptrtoint i32* %136 to i64
  %139 = sub i64 %137, %138
  %140 = sdiv exact i64 %139, 4
  %141 = trunc i64 %140 to i32
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %130, i64 %143
  %145 = load i32, i32* %144, align 4
  br label %147

; <label>:146:                                    ; preds = %121
  br label %147

; <label>:147:                                    ; preds = %146, %127
  %148 = phi i32 [ %145, %127 ], [ -1, %146 ]
  %149 = icmp ne i32 %122, %148
  br i1 %149, label %150, label %153

; <label>:150:                                    ; preds = %147, %111, %107
  %151 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %152 = load i32, i32* %8, align 4
  call void @luaD_hook(%struct.lua_State* %151, i32 2, i32 %152)
  br label %153

; <label>:153:                                    ; preds = %150, %147
  br label %154

; <label>:154:                                    ; preds = %153, %63
  %155 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %156 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %155, i32 0, i32 4
  %157 = bitcast %union.anon.0* %156 to %struct.anon.1*
  %158 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %161 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %160, i32 0, i32 8
  store i32* %159, i32** %161, align 8
  %162 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %163 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %162, i32 0, i32 4
  %164 = load i8, i8* %163, align 4
  %165 = zext i8 %164 to i32
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %193

; <label>:167:                                    ; preds = %154
  %168 = load i32, i32* %5, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

; <label>:170:                                    ; preds = %167
  %171 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %172 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %171, i32 0, i32 20
  store i32 1, i32* %172, align 8
  br label %173

; <label>:173:                                    ; preds = %170, %167
  %174 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %175 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %174, i32 0, i32 4
  %176 = bitcast %union.anon.0* %175 to %struct.anon.1*
  %177 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i32 -1
  store i32* %179, i32** %177, align 8
  %180 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %181 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %180, i32 0, i32 7
  %182 = load i16, i16* %181, align 2
  %183 = zext i16 %182 to i32
  %184 = or i32 %183, 64
  %185 = trunc i32 %184 to i16
  store i16 %185, i16* %181, align 2
  %186 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %187 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %186, i32 0, i32 5
  %188 = load %struct.lua_TValue*, %struct.lua_TValue** %187, align 8
  %189 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %188, i64 -1
  %190 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %191 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %190, i32 0, i32 0
  store %struct.lua_TValue* %189, %struct.lua_TValue** %191, align 8
  %192 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaD_throw(%struct.lua_State* %192, i32 1) #8
  unreachable

; <label>:193:                                    ; preds = %42, %51, %154
  ret void
}

declare hidden void @luaD_hook(%struct.lua_State*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @findvararg(%struct.CallInfo*, i32, %struct.lua_TValue**) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.CallInfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_TValue**, align 8
  %8 = alloca i32, align 4
  store %struct.CallInfo* %0, %struct.CallInfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.lua_TValue** %2, %struct.lua_TValue*** %7, align 8
  %9 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i32 0, i32 0
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 0
  %13 = bitcast %union.Value* %12 to %struct.GCObject**
  %14 = load %struct.GCObject*, %struct.GCObject** %13, align 8
  %15 = bitcast %struct.GCObject* %14 to %union.GCUnion*
  %16 = bitcast %union.GCUnion* %15 to %union.Closure*
  %17 = bitcast %union.Closure* %16 to %struct.LClosure*
  %18 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %17, i32 0, i32 5
  %19 = load %struct.Proto*, %struct.Proto** %18, align 8
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i32 0, i32 3
  %21 = load i8, i8* %20, align 2
  %22 = zext i8 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %25 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %24, i32 0, i32 4
  %26 = bitcast %union.anon.0* %25 to %struct.anon.1*
  %27 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %26, i32 0, i32 0
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %27, align 8
  %29 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i32 0, i32 0
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %30, align 8
  %32 = ptrtoint %struct.lua_TValue* %28 to i64
  %33 = ptrtoint %struct.lua_TValue* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 16
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %36, %37
  %39 = icmp sge i32 %23, %38
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %3
  store i8* null, i8** %4, align 8
  br label %52

; <label>:41:                                     ; preds = %3
  %42 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %43 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %42, i32 0, i32 0
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i64 %46
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %47, i64 %49
  %51 = load %struct.lua_TValue**, %struct.lua_TValue*** %7, align 8
  store %struct.lua_TValue* %50, %struct.lua_TValue** %51, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8** %4, align 8
  br label %52

; <label>:52:                                     ; preds = %41, %40
  %53 = load i8*, i8** %4, align 8
  ret i8* %53
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @currentpc(%struct.CallInfo*) #0 {
  %2 = alloca %struct.CallInfo*, align 8
  store %struct.CallInfo* %0, %struct.CallInfo** %2, align 8
  %3 = load %struct.CallInfo*, %struct.CallInfo** %2, align 8
  %4 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3, i32 0, i32 4
  %5 = bitcast %union.anon.0* %4 to %struct.anon.1*
  %6 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.CallInfo*, %struct.CallInfo** %2, align 8
  %9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8, i32 0, i32 0
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %12 = bitcast %union.Value* %11 to %struct.GCObject**
  %13 = load %struct.GCObject*, %struct.GCObject** %12, align 8
  %14 = bitcast %struct.GCObject* %13 to %union.GCUnion*
  %15 = bitcast %union.GCUnion* %14 to %union.Closure*
  %16 = bitcast %union.Closure* %15 to %struct.LClosure*
  %17 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %16, i32 0, i32 5
  %18 = load %struct.Proto*, %struct.Proto** %17, align 8
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i32 0, i32 15
  %20 = load i32*, i32** %19, align 8
  %21 = ptrtoint i32* %7 to i64
  %22 = ptrtoint i32* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = sub nsw i32 %25, 1
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @funcinfo(%struct.lua_Debug*, %union.Closure*) #0 {
  %3 = alloca %struct.lua_Debug*, align 8
  %4 = alloca %union.Closure*, align 8
  %5 = alloca %struct.Proto*, align 8
  store %struct.lua_Debug* %0, %struct.lua_Debug** %3, align 8
  store %union.Closure* %1, %union.Closure** %4, align 8
  %6 = load %union.Closure*, %union.Closure** %4, align 8
  %7 = icmp eq %union.Closure* %6, null
  br i1 %7, label %15, label %8

; <label>:8:                                      ; preds = %2
  %9 = load %union.Closure*, %union.Closure** %4, align 8
  %10 = bitcast %union.Closure* %9 to %struct.CClosure*
  %11 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 8
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, 38
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %8, %2
  %16 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %17 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %16, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8** %17, align 8
  %18 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %19 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %18, i32 0, i32 6
  store i32 -1, i32* %19, align 4
  %20 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %21 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %20, i32 0, i32 7
  store i32 -1, i32* %21, align 8
  %22 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %23 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %22, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8** %23, align 8
  br label %62

; <label>:24:                                     ; preds = %8
  %25 = load %union.Closure*, %union.Closure** %4, align 8
  %26 = bitcast %union.Closure* %25 to %struct.LClosure*
  %27 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %26, i32 0, i32 5
  %28 = load %struct.Proto*, %struct.Proto** %27, align 8
  store %struct.Proto* %28, %struct.Proto** %5, align 8
  %29 = load %struct.Proto*, %struct.Proto** %5, align 8
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %29, i32 0, i32 21
  %31 = load %struct.TString*, %struct.TString** %30, align 8
  %32 = icmp ne %struct.TString* %31, null
  br i1 %32, label %33, label %39

; <label>:33:                                     ; preds = %24
  %34 = load %struct.Proto*, %struct.Proto** %5, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 21
  %36 = load %struct.TString*, %struct.TString** %35, align 8
  %37 = bitcast %struct.TString* %36 to i8*
  %38 = getelementptr inbounds i8, i8* %37, i64 24
  br label %40

; <label>:39:                                     ; preds = %24
  br label %40

; <label>:40:                                     ; preds = %39, %33
  %41 = phi i8* [ %38, %33 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), %39 ]
  %42 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %43 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.Proto*, %struct.Proto** %5, align 8
  %45 = getelementptr inbounds %struct.Proto, %struct.Proto* %44, i32 0, i32 12
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %48 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load %struct.Proto*, %struct.Proto** %5, align 8
  %50 = getelementptr inbounds %struct.Proto, %struct.Proto* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %53 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 8
  %54 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %55 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)
  %60 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %61 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  br label %62

; <label>:62:                                     ; preds = %40, %15
  %63 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %64 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %63, i32 0, i32 12
  %65 = getelementptr inbounds [60 x i8], [60 x i8]* %64, i32 0, i32 0
  %66 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %67 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %66, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  call void @luaO_chunkid(i8* %65, i8* %68, i64 60)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getfuncname(%struct.lua_State*, %struct.CallInfo*, i8**) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.CallInfo*, align 8
  %7 = alloca i8**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.CallInfo* %1, %struct.CallInfo** %6, align 8
  store i8** %2, i8*** %7, align 8
  %8 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %9 = icmp eq %struct.CallInfo* %8, null
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  store i8* null, i8** %4, align 8
  br label %44

; <label>:11:                                     ; preds = %3
  %12 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %13 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i32 0, i32 7
  %14 = load i16, i16* %13, align 2
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 256
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %11
  %19 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8** %19, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8** %4, align 8
  br label %44

; <label>:20:                                     ; preds = %11
  %21 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %22 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %21, i32 0, i32 7
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %43, label %27

; <label>:27:                                     ; preds = %20
  %28 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %28, i32 0, i32 2
  %30 = load %struct.CallInfo*, %struct.CallInfo** %29, align 8
  %31 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %30, i32 0, i32 7
  %32 = load i16, i16* %31, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

; <label>:36:                                     ; preds = %27
  %37 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %38 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %39 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %38, i32 0, i32 2
  %40 = load %struct.CallInfo*, %struct.CallInfo** %39, align 8
  %41 = load i8**, i8*** %7, align 8
  %42 = call i8* @funcnamefromcode(%struct.lua_State* %37, %struct.CallInfo* %40, i8** %41)
  store i8* %42, i8** %4, align 8
  br label %44

; <label>:43:                                     ; preds = %27, %20
  store i8* null, i8** %4, align 8
  br label %44

; <label>:44:                                     ; preds = %43, %36, %18, %10
  %45 = load i8*, i8** %4, align 8
  ret i8* %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @funcnamefromcode(%struct.lua_State*, %struct.CallInfo*, i8**) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.CallInfo*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Proto*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.CallInfo* %1, %struct.CallInfo** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %14 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %13, i32 0, i32 0
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %17 = bitcast %union.Value* %16 to %struct.GCObject**
  %18 = load %struct.GCObject*, %struct.GCObject** %17, align 8
  %19 = bitcast %struct.GCObject* %18 to %union.GCUnion*
  %20 = bitcast %union.GCUnion* %19 to %union.Closure*
  %21 = bitcast %union.Closure* %20 to %struct.LClosure*
  %22 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %21, i32 0, i32 5
  %23 = load %struct.Proto*, %struct.Proto** %22, align 8
  store %struct.Proto* %23, %struct.Proto** %9, align 8
  %24 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %25 = call i32 @currentpc(%struct.CallInfo* %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.Proto*, %struct.Proto** %9, align 8
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 15
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %34 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %33, i32 0, i32 7
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %3
  %40 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8** %40, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8** %4, align 8
  br label %84

; <label>:41:                                     ; preds = %3
  %42 = load i32, i32* %11, align 4
  %43 = lshr i32 %42, 0
  %44 = and i32 %43, 63
  switch i32 %44, label %71 [
    i32 36, label %45
    i32 37, label %45
    i32 41, label %53
    i32 12, label %55
    i32 6, label %55
    i32 7, label %55
    i32 8, label %56
    i32 10, label %56
    i32 13, label %57
    i32 14, label %57
    i32 15, label %57
    i32 16, label %57
    i32 17, label %57
    i32 18, label %57
    i32 19, label %57
    i32 20, label %57
    i32 21, label %57
    i32 22, label %57
    i32 23, label %57
    i32 24, label %57
    i32 25, label %64
    i32 26, label %65
    i32 28, label %66
    i32 29, label %67
    i32 31, label %68
    i32 32, label %69
    i32 33, label %70
  ]

; <label>:45:                                     ; preds = %41, %41
  %46 = load %struct.Proto*, %struct.Proto** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = lshr i32 %48, 6
  %50 = and i32 %49, 255
  %51 = load i8**, i8*** %7, align 8
  %52 = call i8* @getobjname(%struct.Proto* %46, i32 %47, i32 %50, i8** %51)
  store i8* %52, i8** %4, align 8
  br label %84

; <label>:53:                                     ; preds = %41
  %54 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8** %54, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8** %4, align 8
  br label %84

; <label>:55:                                     ; preds = %41, %41, %41
  store i32 0, i32* %8, align 4
  br label %72

; <label>:56:                                     ; preds = %41, %41
  store i32 1, i32* %8, align 4
  br label %72

; <label>:57:                                     ; preds = %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41
  %58 = load i32, i32* %11, align 4
  %59 = lshr i32 %58, 0
  %60 = and i32 %59, 63
  %61 = sub nsw i32 %60, 13
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 6
  store i32 %63, i32* %8, align 4
  br label %72

; <label>:64:                                     ; preds = %41
  store i32 18, i32* %8, align 4
  br label %72

; <label>:65:                                     ; preds = %41
  store i32 19, i32* %8, align 4
  br label %72

; <label>:66:                                     ; preds = %41
  store i32 4, i32* %8, align 4
  br label %72

; <label>:67:                                     ; preds = %41
  store i32 22, i32* %8, align 4
  br label %72

; <label>:68:                                     ; preds = %41
  store i32 5, i32* %8, align 4
  br label %72

; <label>:69:                                     ; preds = %41
  store i32 20, i32* %8, align 4
  br label %72

; <label>:70:                                     ; preds = %41
  store i32 21, i32* %8, align 4
  br label %72

; <label>:71:                                     ; preds = %41
  store i8* null, i8** %4, align 8
  br label %84

; <label>:72:                                     ; preds = %70, %69, %68, %67, %66, %65, %64, %57, %56, %55
  %73 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %73, i32 0, i32 6
  %75 = load %struct.global_State*, %struct.global_State** %74, align 8
  %76 = getelementptr inbounds %struct.global_State, %struct.global_State* %75, i32 0, i32 31
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds [24 x %struct.TString*], [24 x %struct.TString*]* %76, i64 0, i64 %78
  %80 = load %struct.TString*, %struct.TString** %79, align 8
  %81 = bitcast %struct.TString* %80 to i8*
  %82 = getelementptr inbounds i8, i8* %81, i64 24
  %83 = load i8**, i8*** %7, align 8
  store i8* %82, i8** %83, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8** %4, align 8
  br label %84

; <label>:84:                                     ; preds = %72, %71, %53, %45, %39
  %85 = load i8*, i8** %4, align 8
  ret i8* %85
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getobjname(%struct.Proto*, i32, i32, i8**) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.Proto*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.Proto* %0, %struct.Proto** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %19 = load %struct.Proto*, %struct.Proto** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* %7, align 4
  %23 = call i8* @luaF_getlocalname(%struct.Proto* %19, i32 %21, i32 %22)
  %24 = load i8**, i8*** %9, align 8
  store i8* %23, i8** %24, align 8
  %25 = load i8**, i8*** %9, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8** %5, align 8
  br label %163

; <label>:29:                                     ; preds = %4
  %30 = load %struct.Proto*, %struct.Proto** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @findsetreg(%struct.Proto* %30, i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %162

; <label>:36:                                     ; preds = %29
  %37 = load %struct.Proto*, %struct.Proto** %6, align 8
  %38 = getelementptr inbounds %struct.Proto, %struct.Proto* %37, i32 0, i32 15
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = lshr i32 %44, 0
  %46 = and i32 %45, 63
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  switch i32 %47, label %160 [
    i32 0, label %48
    i32 6, label %64
    i32 7, label %64
    i32 5, label %99
    i32 1, label %106
    i32 2, label %106
    i32 12, label %152
  ]

; <label>:48:                                     ; preds = %36
  %49 = load i32, i32* %11, align 4
  %50 = lshr i32 %49, 23
  %51 = and i32 %50, 511
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %11, align 4
  %54 = lshr i32 %53, 6
  %55 = and i32 %54, 255
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %63

; <label>:57:                                     ; preds = %48
  %58 = load %struct.Proto*, %struct.Proto** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i8**, i8*** %9, align 8
  %62 = call i8* @getobjname(%struct.Proto* %58, i32 %59, i32 %60, i8** %61)
  store i8* %62, i8** %5, align 8
  br label %163

; <label>:63:                                     ; preds = %48
  br label %161

; <label>:64:                                     ; preds = %36, %36
  %65 = load i32, i32* %11, align 4
  %66 = lshr i32 %65, 14
  %67 = and i32 %66, 511
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %11, align 4
  %69 = lshr i32 %68, 23
  %70 = and i32 %69, 511
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 7
  br i1 %72, label %73, label %79

; <label>:73:                                     ; preds = %64
  %74 = load %struct.Proto*, %struct.Proto** %6, align 8
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* %10, align 4
  %78 = call i8* @luaF_getlocalname(%struct.Proto* %74, i32 %76, i32 %77)
  br label %83

; <label>:79:                                     ; preds = %64
  %80 = load %struct.Proto*, %struct.Proto** %6, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call i8* @upvalname(%struct.Proto* %80, i32 %81)
  br label %83

; <label>:83:                                     ; preds = %79, %73
  %84 = phi i8* [ %78, %73 ], [ %82, %79 ]
  store i8* %84, i8** %16, align 8
  %85 = load %struct.Proto*, %struct.Proto** %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i8**, i8*** %9, align 8
  call void @kname(%struct.Proto* %85, i32 %86, i32 %87, i8** %88)
  %89 = load i8*, i8** %16, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %95

; <label>:91:                                     ; preds = %83
  %92 = load i8*, i8** %16, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0)) #7
  %94 = icmp eq i32 %93, 0
  br label %95

; <label>:95:                                     ; preds = %91, %83
  %96 = phi i1 [ false, %83 ], [ %94, %91 ]
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)
  store i8* %98, i8** %5, align 8
  br label %163

; <label>:99:                                     ; preds = %36
  %100 = load %struct.Proto*, %struct.Proto** %6, align 8
  %101 = load i32, i32* %11, align 4
  %102 = lshr i32 %101, 23
  %103 = and i32 %102, 511
  %104 = call i8* @upvalname(%struct.Proto* %100, i32 %103)
  %105 = load i8**, i8*** %9, align 8
  store i8* %104, i8** %105, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8** %5, align 8
  br label %163

; <label>:106:                                    ; preds = %36, %36
  %107 = load i32, i32* %12, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %113

; <label>:109:                                    ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = lshr i32 %110, 14
  %112 = and i32 %111, 262143
  br label %124

; <label>:113:                                    ; preds = %106
  %114 = load %struct.Proto*, %struct.Proto** %6, align 8
  %115 = getelementptr inbounds %struct.Proto, %struct.Proto* %114, i32 0, i32 15
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = lshr i32 %121, 6
  %123 = and i32 %122, 67108863
  br label %124

; <label>:124:                                    ; preds = %113, %109
  %125 = phi i32 [ %112, %109 ], [ %123, %113 ]
  store i32 %125, i32* %17, align 4
  %126 = load %struct.Proto*, %struct.Proto** %6, align 8
  %127 = getelementptr inbounds %struct.Proto, %struct.Proto* %126, i32 0, i32 14
  %128 = load %struct.lua_TValue*, %struct.lua_TValue** %127, align 8
  %129 = load i32, i32* %17, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 %130
  %132 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, 15
  %135 = icmp eq i32 %134, 4
  br i1 %135, label %136, label %151

; <label>:136:                                    ; preds = %124
  %137 = load %struct.Proto*, %struct.Proto** %6, align 8
  %138 = getelementptr inbounds %struct.Proto, %struct.Proto* %137, i32 0, i32 14
  %139 = load %struct.lua_TValue*, %struct.lua_TValue** %138, align 8
  %140 = load i32, i32* %17, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %139, i64 %141
  %143 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %142, i32 0, i32 0
  %144 = bitcast %union.Value* %143 to %struct.GCObject**
  %145 = load %struct.GCObject*, %struct.GCObject** %144, align 8
  %146 = bitcast %struct.GCObject* %145 to %union.GCUnion*
  %147 = bitcast %union.GCUnion* %146 to %struct.TString*
  %148 = bitcast %struct.TString* %147 to i8*
  %149 = getelementptr inbounds i8, i8* %148, i64 24
  %150 = load i8**, i8*** %9, align 8
  store i8* %149, i8** %150, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8** %5, align 8
  br label %163

; <label>:151:                                    ; preds = %124
  br label %161

; <label>:152:                                    ; preds = %36
  %153 = load i32, i32* %11, align 4
  %154 = lshr i32 %153, 14
  %155 = and i32 %154, 511
  store i32 %155, i32* %18, align 4
  %156 = load %struct.Proto*, %struct.Proto** %6, align 8
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load i8**, i8*** %9, align 8
  call void @kname(%struct.Proto* %156, i32 %157, i32 %158, i8** %159)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8** %5, align 8
  br label %163

; <label>:160:                                    ; preds = %36
  br label %161

; <label>:161:                                    ; preds = %160, %151, %63
  br label %162

; <label>:162:                                    ; preds = %161, %29
  store i8* null, i8** %5, align 8
  br label %163

; <label>:163:                                    ; preds = %162, %152, %136, %99, %95, %57, %28
  %164 = load i8*, i8** %5, align 8
  ret i8* %164
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findsetreg(%struct.Proto*, i32, i32) #0 {
  %4 = alloca %struct.Proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.Proto* %0, %struct.Proto** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %16

; <label>:16:                                     ; preds = %114, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %117

; <label>:20:                                     ; preds = %16
  %21 = load %struct.Proto*, %struct.Proto** %4, align 8
  %22 = getelementptr inbounds %struct.Proto, %struct.Proto* %21, i32 0, i32 15
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = lshr i32 %28, 0
  %30 = and i32 %29, 63
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = lshr i32 %31, 6
  %33 = and i32 %32, 255
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  switch i32 %34, label %96 [
    i32 4, label %35
    i32 41, label %53
    i32 36, label %63
    i32 37, label %63
    i32 30, label %72
  ]

; <label>:35:                                     ; preds = %20
  %36 = load i32, i32* %10, align 4
  %37 = lshr i32 %36, 23
  %38 = and i32 %37, 511
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %52

; <label>:42:                                     ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %44, %45
  %47 = icmp sle i32 %43, %46
  br i1 %47, label %48, label %52

; <label>:48:                                     ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @filterpc(i32 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  br label %52

; <label>:52:                                     ; preds = %48, %42, %35
  br label %113

; <label>:53:                                     ; preds = %20
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 2
  %57 = icmp sge i32 %54, %56
  br i1 %57, label %58, label %62

; <label>:58:                                     ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @filterpc(i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  br label %62

; <label>:62:                                     ; preds = %58, %53
  br label %113

; <label>:63:                                     ; preds = %20, %20
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %71

; <label>:67:                                     ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @filterpc(i32 %68, i32 %69)
  store i32 %70, i32* %8, align 4
  br label %71

; <label>:71:                                     ; preds = %67, %63
  br label %113

; <label>:72:                                     ; preds = %20
  %73 = load i32, i32* %10, align 4
  %74 = lshr i32 %73, 14
  %75 = and i32 %74, 262143
  %76 = sub nsw i32 %75, 131071
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %95

; <label>:84:                                     ; preds = %72
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %95

; <label>:88:                                     ; preds = %84
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %94

; <label>:92:                                     ; preds = %88
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %9, align 4
  br label %94

; <label>:94:                                     ; preds = %92, %88
  br label %95

; <label>:95:                                     ; preds = %94, %84, %72
  br label %113

; <label>:96:                                     ; preds = %20
  %97 = load i32, i32* %11, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [47 x i8], [47 x i8]* @luaP_opmodes, i64 0, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = and i32 %101, 64
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

; <label>:104:                                    ; preds = %96
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %112

; <label>:108:                                    ; preds = %104
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @filterpc(i32 %109, i32 %110)
  store i32 %111, i32* %8, align 4
  br label %112

; <label>:112:                                    ; preds = %108, %104, %96
  br label %113

; <label>:113:                                    ; preds = %112, %95, %71, %62, %52
  br label %114

; <label>:114:                                    ; preds = %113
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %16

; <label>:117:                                    ; preds = %16
  %118 = load i32, i32* %8, align 4
  ret i32 %118
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @upvalname(%struct.Proto*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TString*, align 8
  store %struct.Proto* %0, %struct.Proto** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.Proto*, %struct.Proto** %4, align 8
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i32 0, i32 19
  %9 = load %struct.Upvaldesc*, %struct.Upvaldesc** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %9, i64 %11
  %13 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %12, i32 0, i32 0
  %14 = load %struct.TString*, %struct.TString** %13, align 8
  store %struct.TString* %14, %struct.TString** %6, align 8
  %15 = load %struct.TString*, %struct.TString** %6, align 8
  %16 = icmp eq %struct.TString* %15, null
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8** %3, align 8
  br label %22

; <label>:18:                                     ; preds = %2
  %19 = load %struct.TString*, %struct.TString** %6, align 8
  %20 = bitcast %struct.TString* %19 to i8*
  %21 = getelementptr inbounds i8, i8* %20, i64 24
  store i8* %21, i8** %3, align 8
  br label %22

; <label>:22:                                     ; preds = %18, %17
  %23 = load i8*, i8** %3, align 8
  ret i8* %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kname(%struct.Proto*, i32, i32, i8**) #0 {
  %5 = alloca %struct.Proto*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca i8*, align 8
  store %struct.Proto* %0, %struct.Proto** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 256
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %38

; <label>:14:                                     ; preds = %4
  %15 = load %struct.Proto*, %struct.Proto** %5, align 8
  %16 = getelementptr inbounds %struct.Proto, %struct.Proto* %15, i32 0, i32 14
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, -257
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 %20
  store %struct.lua_TValue* %21, %struct.lua_TValue** %9, align 8
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 15
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %14
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 0
  %30 = bitcast %union.Value* %29 to %struct.GCObject**
  %31 = load %struct.GCObject*, %struct.GCObject** %30, align 8
  %32 = bitcast %struct.GCObject* %31 to %union.GCUnion*
  %33 = bitcast %union.GCUnion* %32 to %struct.TString*
  %34 = bitcast %struct.TString* %33 to i8*
  %35 = getelementptr inbounds i8, i8* %34, i64 24
  %36 = load i8**, i8*** %8, align 8
  store i8* %35, i8** %36, align 8
  br label %55

; <label>:37:                                     ; preds = %14
  br label %53

; <label>:38:                                     ; preds = %4
  %39 = load %struct.Proto*, %struct.Proto** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i8**, i8*** %8, align 8
  %43 = call i8* @getobjname(%struct.Proto* %39, i32 %40, i32 %41, i8** %42)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %52

; <label>:46:                                     ; preds = %38
  %47 = load i8*, i8** %10, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 99
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %46
  br label %55

; <label>:52:                                     ; preds = %46, %38
  br label %53

; <label>:53:                                     ; preds = %52, %37
  %54 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8** %54, align 8
  br label %55

; <label>:55:                                     ; preds = %53, %51, %27
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filterpc(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %12

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %3, align 4
  br label %12

; <label>:12:                                     ; preds = %10, %9
  %13 = load i32, i32* %3, align 4
  ret i32 %13
}

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) #1

declare hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.lua_TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getupvalname(%struct.CallInfo*, %struct.lua_TValue*, i8**) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.CallInfo*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.LClosure*, align 8
  %9 = alloca i32, align 4
  store %struct.CallInfo* %0, %struct.CallInfo** %5, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %11 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %10, i32 0, i32 0
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %14 = bitcast %union.Value* %13 to %struct.GCObject**
  %15 = load %struct.GCObject*, %struct.GCObject** %14, align 8
  %16 = bitcast %struct.GCObject* %15 to %union.GCUnion*
  %17 = bitcast %union.GCUnion* %16 to %union.Closure*
  %18 = bitcast %union.Closure* %17 to %struct.LClosure*
  store %struct.LClosure* %18, %struct.LClosure** %8, align 8
  store i32 0, i32* %9, align 4
  br label %19

; <label>:19:                                     ; preds = %45, %3
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.LClosure*, %struct.LClosure** %8, align 8
  %22 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %21, i32 0, i32 3
  %23 = load i8, i8* %22, align 2
  %24 = zext i8 %23 to i32
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %48

; <label>:26:                                     ; preds = %19
  %27 = load %struct.LClosure*, %struct.LClosure** %8, align 8
  %28 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %27, i32 0, i32 6
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %28, i64 0, i64 %30
  %32 = load %struct.UpVal*, %struct.UpVal** %31, align 8
  %33 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %32, i32 0, i32 0
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %33, align 8
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %36 = icmp eq %struct.lua_TValue* %34, %35
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %26
  %38 = load %struct.LClosure*, %struct.LClosure** %8, align 8
  %39 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %38, i32 0, i32 5
  %40 = load %struct.Proto*, %struct.Proto** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i8* @upvalname(%struct.Proto* %40, i32 %41)
  %43 = load i8**, i8*** %7, align 8
  store i8* %42, i8** %43, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8** %4, align 8
  br label %49

; <label>:44:                                     ; preds = %26
  br label %45

; <label>:45:                                     ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %19

; <label>:48:                                     ; preds = %19
  store i8* null, i8** %4, align 8
  br label %49

; <label>:49:                                     ; preds = %48, %37
  %50 = load i8*, i8** %4, align 8
  ret i8* %50
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isinstack(%struct.CallInfo*, %struct.lua_TValue*) #0 {
  %3 = alloca %struct.CallInfo*, align 8
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca i64, align 8
  store %struct.CallInfo* %0, %struct.CallInfo** %3, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %4, align 8
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %7 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7, i32 0, i32 4
  %9 = bitcast %union.anon.0* %8 to %struct.anon.1*
  %10 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %9, i32 0, i32 0
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %12 = ptrtoint %struct.lua_TValue* %6 to i64
  %13 = ptrtoint %struct.lua_TValue* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 16
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp sle i64 0, %16
  br i1 %17, label %18, label %43

; <label>:18:                                     ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %21 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i32 0, i32 1
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %21, align 8
  %23 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %24 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %23, i32 0, i32 4
  %25 = bitcast %union.anon.0* %24 to %struct.anon.1*
  %26 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %25, i32 0, i32 0
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %26, align 8
  %28 = ptrtoint %struct.lua_TValue* %22 to i64
  %29 = ptrtoint %struct.lua_TValue* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 16
  %32 = icmp slt i64 %19, %31
  br i1 %32, label %33, label %43

; <label>:33:                                     ; preds = %18
  %34 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %35 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %34, i32 0, i32 4
  %36 = bitcast %union.anon.0* %35 to %struct.anon.1*
  %37 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %36, i32 0, i32 0
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %39
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %42 = icmp eq %struct.lua_TValue* %40, %41
  br label %43

; <label>:43:                                     ; preds = %33, %18, %2
  %44 = phi i1 [ false, %18 ], [ false, %2 ], [ %42, %33 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
