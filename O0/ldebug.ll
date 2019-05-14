; ModuleID = 'ldebug.c'
source_filename = "ldebug.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon.3 }
%union.anon.3 = type { i64 }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32 (%struct.lua_State*)*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.TValue*, %union.Node*, %union.Node*, %struct.Table*, %struct.GCObject* }
%union.Node = type { %struct.NodeKey }
%struct.NodeKey = type { %union.Value, i8, i8, i32, %union.Value }
%union.StackValue = type { %struct.TValue }
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.UpVal*, %struct.UpVal** }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon, %union.anon.1, i16, i16 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.1 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.anon = type { i32*, i32, i32 }
%union.GCUnion = type { %struct.lua_State }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.TValue] }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.anon.2 = type { i16, i16 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"(temporary)\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"(C temporary)\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"attempt to %s a %s value%s\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"bad 'for' %s (number expected, got %s)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"concatenate\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"number%s has no integer representation\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"attempt to compare two %s values\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"attempt to compare %s with %s\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%s:%d: %s\00", align 1
@luaP_opmodes = external hidden constant [84 x i8], align 16
@.str.9 = private unnamed_addr constant [9 x i8] c"(vararg)\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"=[C]\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"=?\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"Lua\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"metamethod\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"hook\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"for iterator\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"integer index\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"upvalue\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"_ENV\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c" (%s '%s')\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaG_getfuncline(%struct.Proto*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Proto* %0, %struct.Proto** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.Proto*, %struct.Proto** %4, align 8
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i32 0, i32 19
  %10 = load i8*, i8** %9, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %35

; <label>:13:                                     ; preds = %2
  %14 = load %struct.Proto*, %struct.Proto** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @getbaseline(%struct.Proto* %14, i32 %15, i32* %6)
  store i32 %16, i32* %7, align 4
  br label %17

; <label>:17:                                     ; preds = %22, %13
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %33

; <label>:22:                                     ; preds = %17
  %23 = load %struct.Proto*, %struct.Proto** %4, align 8
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %23, i32 0, i32 19
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %17

; <label>:33:                                     ; preds = %17
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %35

; <label>:35:                                     ; preds = %33, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getbaseline(%struct.Proto*, i32, i32*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Proto*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.Proto* %0, %struct.Proto** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.Proto*, %struct.Proto** %5, align 8
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

; <label>:15:                                     ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.Proto*, %struct.Proto** %5, align 8
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 20
  %19 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %18, align 8
  %20 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %19, i64 0
  %21 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %16, %22
  br i1 %23, label %24, label %29

; <label>:24:                                     ; preds = %15, %3
  %25 = load i32*, i32** %7, align 8
  store i32 -1, i32* %25, align 4
  %26 = load %struct.Proto*, %struct.Proto** %5, align 8
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 13
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  br label %97

; <label>:29:                                     ; preds = %15
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.Proto*, %struct.Proto** %5, align 8
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i32 0, i32 20
  %33 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %32, align 8
  %34 = load %struct.Proto*, %struct.Proto** %5, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 12
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %33, i64 %38
  %40 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %30, %41
  br i1 %42, label %43, label %48

; <label>:43:                                     ; preds = %29
  %44 = load %struct.Proto*, %struct.Proto** %5, align 8
  %45 = getelementptr inbounds %struct.Proto, %struct.Proto* %44, i32 0, i32 12
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %79

; <label>:48:                                     ; preds = %29
  %49 = load %struct.Proto*, %struct.Proto** %5, align 8
  %50 = getelementptr inbounds %struct.Proto, %struct.Proto* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %53

; <label>:53:                                     ; preds = %77, %48
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sub i32 %55, 1
  %57 = icmp ult i32 %54, %56
  br i1 %57, label %58, label %78

; <label>:58:                                     ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add i32 %59, %60
  %62 = udiv i32 %61, 2
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.Proto*, %struct.Proto** %5, align 8
  %65 = getelementptr inbounds %struct.Proto, %struct.Proto* %64, i32 0, i32 20
  %66 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %66, i64 %68
  %70 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %63, %71
  br i1 %72, label %73, label %75

; <label>:73:                                     ; preds = %58
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %8, align 4
  br label %77

; <label>:75:                                     ; preds = %58
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %9, align 4
  br label %77

; <label>:77:                                     ; preds = %75, %73
  br label %53

; <label>:78:                                     ; preds = %53
  br label %79

; <label>:79:                                     ; preds = %78, %43
  %80 = load %struct.Proto*, %struct.Proto** %5, align 8
  %81 = getelementptr inbounds %struct.Proto, %struct.Proto* %80, i32 0, i32 20
  %82 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %82, i64 %84
  %86 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  %89 = load %struct.Proto*, %struct.Proto** %5, align 8
  %90 = getelementptr inbounds %struct.Proto, %struct.Proto* %89, i32 0, i32 20
  %91 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %91, i64 %93
  %95 = getelementptr inbounds %struct.AbsLineInfo, %struct.AbsLineInfo* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %4, align 4
  br label %97

; <label>:97:                                     ; preds = %79, %24
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

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
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 8
  %18 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %19 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %18, i32 0, i32 7
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

; <label>:24:                                     ; preds = %15
  %25 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 8
  %27 = load %struct.CallInfo*, %struct.CallInfo** %26, align 8
  %28 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %27, i32 0, i32 4
  %29 = bitcast %union.anon* %28 to %struct.anon*
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 9
  store i32* %31, i32** %33, align 8
  br label %34

; <label>:34:                                     ; preds = %24, %15
  %35 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %6, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 17
  store volatile void (%struct.lua_State*, %struct.lua_Debug*)* %35, void (%struct.lua_State*, %struct.lua_Debug*)** %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 21
  store i32 %38, i32* %40, align 8
  %41 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i32 0, i32 21
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i32 0, i32 22
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = trunc i32 %46 to i8
  %48 = zext i8 %47 to i32
  %49 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %49, i32 0, i32 23
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

; <label>:53:                                     ; preds = %34
  %54 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %54, i32 0, i32 8
  %56 = load %struct.CallInfo*, %struct.CallInfo** %55, align 8
  call void @settraps(%struct.CallInfo* %56)
  br label %57

; <label>:57:                                     ; preds = %53, %34
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @settraps(%struct.CallInfo*) #0 {
  %2 = alloca %struct.CallInfo*, align 8
  store %struct.CallInfo* %0, %struct.CallInfo** %2, align 8
  br label %3

; <label>:3:                                      ; preds = %19, %1
  %4 = load %struct.CallInfo*, %struct.CallInfo** %2, align 8
  %5 = icmp ne %struct.CallInfo* %4, null
  br i1 %5, label %6, label %23

; <label>:6:                                      ; preds = %3
  %7 = load %struct.CallInfo*, %struct.CallInfo** %2, align 8
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7, i32 0, i32 7
  %9 = load i16, i16* %8, align 2
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 2
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

; <label>:13:                                     ; preds = %6
  %14 = load %struct.CallInfo*, %struct.CallInfo** %2, align 8
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %14, i32 0, i32 4
  %16 = bitcast %union.anon* %15 to %struct.anon*
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 1
  store i32 1, i32* %17, align 8
  br label %18

; <label>:18:                                     ; preds = %13, %6
  br label %19

; <label>:19:                                     ; preds = %18
  %20 = load %struct.CallInfo*, %struct.CallInfo** %2, align 8
  %21 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i32 0, i32 2
  %22 = load %struct.CallInfo*, %struct.CallInfo** %21, align 8
  store %struct.CallInfo* %22, %struct.CallInfo** %2, align 8
  br label %3

; <label>:23:                                     ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 17
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
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 21
  %5 = load i32, i32* %4, align 8
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
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 8
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
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 16
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
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 16
  %41 = icmp ne %struct.CallInfo* %38, %40
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %37
  store i32 1, i32* %8, align 4
  %43 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %44 = load %struct.lua_Debug*, %struct.lua_Debug** %7, align 8
  %45 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %44, i32 0, i32 16
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
define hidden i8* @luaG_findlocal(%struct.lua_State*, %struct.CallInfo*, i32, %union.StackValue**) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.CallInfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.StackValue**, align 8
  %10 = alloca %union.StackValue*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %union.StackValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.CallInfo* %1, %struct.CallInfo** %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.StackValue** %3, %union.StackValue*** %9, align 8
  %13 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %14 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %13, i32 0, i32 0
  %15 = load %union.StackValue*, %union.StackValue** %14, align 8
  %16 = getelementptr inbounds %union.StackValue, %union.StackValue* %15, i64 1
  store %union.StackValue* %16, %union.StackValue** %10, align 8
  store i8* null, i8** %11, align 8
  %17 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %18 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %17, i32 0, i32 7
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 2
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %50, label %23

; <label>:23:                                     ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

; <label>:26:                                     ; preds = %23
  %27 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 0, %28
  %30 = load %union.StackValue**, %union.StackValue*** %9, align 8
  %31 = call i8* @findvararg(%struct.CallInfo* %27, i32 %29, %union.StackValue** %30)
  store i8* %31, i8** %5, align 8
  br label %107

; <label>:32:                                     ; preds = %23
  %33 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %34 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %33, i32 0, i32 0
  %35 = load %union.StackValue*, %union.StackValue** %34, align 8
  %36 = bitcast %union.StackValue* %35 to %struct.TValue*
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %36, i32 0, i32 0
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
  store i8* %48, i8** %11, align 8
  br label %49

; <label>:49:                                     ; preds = %32
  br label %50

; <label>:50:                                     ; preds = %49, %4
  %51 = load i8*, i8** %11, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %95

; <label>:53:                                     ; preds = %50
  %54 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %55 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %55, i32 0, i32 8
  %57 = load %struct.CallInfo*, %struct.CallInfo** %56, align 8
  %58 = icmp eq %struct.CallInfo* %54, %57
  br i1 %58, label %59, label %63

; <label>:59:                                     ; preds = %53
  %60 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %60, i32 0, i32 6
  %62 = load %union.StackValue*, %union.StackValue** %61, align 8
  br label %69

; <label>:63:                                     ; preds = %53
  %64 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %65 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %64, i32 0, i32 3
  %66 = load %struct.CallInfo*, %struct.CallInfo** %65, align 8
  %67 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %66, i32 0, i32 0
  %68 = load %union.StackValue*, %union.StackValue** %67, align 8
  br label %69

; <label>:69:                                     ; preds = %63, %59
  %70 = phi %union.StackValue* [ %62, %59 ], [ %68, %63 ]
  store %union.StackValue* %70, %union.StackValue** %12, align 8
  %71 = load %union.StackValue*, %union.StackValue** %12, align 8
  %72 = load %union.StackValue*, %union.StackValue** %10, align 8
  %73 = ptrtoint %union.StackValue* %71 to i64
  %74 = ptrtoint %union.StackValue* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 16
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp sge i64 %76, %78
  br i1 %79, label %80, label %93

; <label>:80:                                     ; preds = %69
  %81 = load i32, i32* %8, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %93

; <label>:83:                                     ; preds = %80
  %84 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %85 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %84, i32 0, i32 7
  %86 = load i16, i16* %85, align 2
  %87 = zext i16 %86 to i32
  %88 = and i32 %87, 2
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)
  store i8* %92, i8** %11, align 8
  br label %94

; <label>:93:                                     ; preds = %80, %69
  store i8* null, i8** %5, align 8
  br label %107

; <label>:94:                                     ; preds = %83
  br label %95

; <label>:95:                                     ; preds = %94, %50
  %96 = load %union.StackValue**, %union.StackValue*** %9, align 8
  %97 = icmp ne %union.StackValue** %96, null
  br i1 %97, label %98, label %105

; <label>:98:                                     ; preds = %95
  %99 = load %union.StackValue*, %union.StackValue** %10, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %union.StackValue, %union.StackValue* %99, i64 %102
  %104 = load %union.StackValue**, %union.StackValue*** %9, align 8
  store %union.StackValue* %103, %union.StackValue** %104, align 8
  br label %105

; <label>:105:                                    ; preds = %98, %95
  %106 = load i8*, i8** %11, align 8
  store i8* %106, i8** %5, align 8
  br label %107

; <label>:107:                                    ; preds = %105, %93, %26
  %108 = load i8*, i8** %5, align 8
  ret i8* %108
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @findvararg(%struct.CallInfo*, i32, %union.StackValue**) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.CallInfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.StackValue**, align 8
  %8 = alloca i32, align 4
  store %struct.CallInfo* %0, %struct.CallInfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.StackValue** %2, %union.StackValue*** %7, align 8
  %9 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i32 0, i32 0
  %11 = load %union.StackValue*, %union.StackValue** %10, align 8
  %12 = bitcast %union.StackValue* %11 to %struct.TValue*
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i32 0, i32 0
  %14 = bitcast %union.Value* %13 to %struct.GCObject**
  %15 = load %struct.GCObject*, %struct.GCObject** %14, align 8
  %16 = bitcast %struct.GCObject* %15 to %union.GCUnion*
  %17 = bitcast %union.GCUnion* %16 to %union.Closure*
  %18 = bitcast %union.Closure* %17 to %struct.LClosure*
  %19 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %18, i32 0, i32 5
  %20 = load %struct.Proto*, %struct.Proto** %19, align 8
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 4
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %47

; <label>:24:                                     ; preds = %3
  %25 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %26 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %25, i32 0, i32 4
  %27 = bitcast %union.anon* %26 to %struct.anon*
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %46

; <label>:33:                                     ; preds = %24
  %34 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %35 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %34, i32 0, i32 0
  %36 = load %union.StackValue*, %union.StackValue** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds %union.StackValue, %union.StackValue* %36, i64 %39
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %union.StackValue, %union.StackValue* %40, i64 %43
  %45 = load %union.StackValue**, %union.StackValue*** %7, align 8
  store %union.StackValue* %44, %union.StackValue** %45, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8** %4, align 8
  br label %48

; <label>:46:                                     ; preds = %24
  br label %47

; <label>:47:                                     ; preds = %46, %3
  store i8* null, i8** %4, align 8
  br label %48

; <label>:48:                                     ; preds = %47, %33
  %49 = load i8*, i8** %4, align 8
  ret i8* %49
}

declare hidden i8* @luaF_getlocalname(%struct.Proto*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @currentpc(%struct.CallInfo*) #0 {
  %2 = alloca %struct.CallInfo*, align 8
  store %struct.CallInfo* %0, %struct.CallInfo** %2, align 8
  %3 = load %struct.CallInfo*, %struct.CallInfo** %2, align 8
  %4 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3, i32 0, i32 4
  %5 = bitcast %union.anon* %4 to %struct.anon*
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.CallInfo*, %struct.CallInfo** %2, align 8
  %9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8, i32 0, i32 0
  %10 = load %union.StackValue*, %union.StackValue** %9, align 8
  %11 = bitcast %union.StackValue* %10 to %struct.TValue*
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %11, i32 0, i32 0
  %13 = bitcast %union.Value* %12 to %struct.GCObject**
  %14 = load %struct.GCObject*, %struct.GCObject** %13, align 8
  %15 = bitcast %struct.GCObject* %14 to %union.GCUnion*
  %16 = bitcast %union.GCUnion* %15 to %union.Closure*
  %17 = bitcast %union.Closure* %16 to %struct.LClosure*
  %18 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %17, i32 0, i32 5
  %19 = load %struct.Proto*, %struct.Proto** %18, align 8
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i32 0, i32 16
  %21 = load i32*, i32** %20, align 8
  %22 = ptrtoint i32* %7 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = sub nsw i32 %26, 1
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_getlocal(%struct.lua_State*, %struct.lua_Debug*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_Debug*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %union.StackValue*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_Debug* %1, %struct.lua_Debug** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.lua_Debug*, %struct.lua_Debug** %5, align 8
  %12 = icmp eq %struct.lua_Debug* %11, null
  br i1 %12, label %13, label %41

; <label>:13:                                     ; preds = %3
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 6
  %16 = load %union.StackValue*, %union.StackValue** %15, align 8
  %17 = getelementptr inbounds %union.StackValue, %union.StackValue* %16, i64 -1
  %18 = bitcast %union.StackValue* %17 to %struct.TValue*
  %19 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i32 0, i32 1
  %20 = load i8, i8* %19, align 8
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 86
  br i1 %22, label %24, label %23

; <label>:23:                                     ; preds = %13
  store i8* null, i8** %7, align 8
  br label %40

; <label>:24:                                     ; preds = %13
  %25 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 6
  %27 = load %union.StackValue*, %union.StackValue** %26, align 8
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 -1
  %29 = bitcast %union.StackValue* %28 to %struct.TValue*
  %30 = getelementptr inbounds %struct.TValue, %struct.TValue* %29, i32 0, i32 0
  %31 = bitcast %union.Value* %30 to %struct.GCObject**
  %32 = load %struct.GCObject*, %struct.GCObject** %31, align 8
  %33 = bitcast %struct.GCObject* %32 to %union.GCUnion*
  %34 = bitcast %union.GCUnion* %33 to %union.Closure*
  %35 = bitcast %union.Closure* %34 to %struct.LClosure*
  %36 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %35, i32 0, i32 5
  %37 = load %struct.Proto*, %struct.Proto** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i8* @luaF_getlocalname(%struct.Proto* %37, i32 %38, i32 0)
  store i8* %39, i8** %7, align 8
  br label %40

; <label>:40:                                     ; preds = %24, %23
  br label %74

; <label>:41:                                     ; preds = %3
  store %union.StackValue* null, %union.StackValue** %8, align 8
  %42 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %43 = load %struct.lua_Debug*, %struct.lua_Debug** %5, align 8
  %44 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %43, i32 0, i32 16
  %45 = load %struct.CallInfo*, %struct.CallInfo** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i8* @luaG_findlocal(%struct.lua_State* %42, %struct.CallInfo* %45, i32 %46, %union.StackValue** %8)
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %73

; <label>:50:                                     ; preds = %41
  %51 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %52 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %51, i32 0, i32 6
  %53 = load %union.StackValue*, %union.StackValue** %52, align 8
  %54 = bitcast %union.StackValue* %53 to %struct.TValue*
  store %struct.TValue* %54, %struct.TValue** %9, align 8
  %55 = load %union.StackValue*, %union.StackValue** %8, align 8
  %56 = bitcast %union.StackValue* %55 to %struct.TValue*
  store %struct.TValue* %56, %struct.TValue** %10, align 8
  %57 = load %struct.TValue*, %struct.TValue** %9, align 8
  %58 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i32 0, i32 0
  %59 = load %struct.TValue*, %struct.TValue** %10, align 8
  %60 = getelementptr inbounds %struct.TValue, %struct.TValue* %59, i32 0, i32 0
  %61 = bitcast %union.Value* %58 to i8*
  %62 = bitcast %union.Value* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 8, i32 8, i1 false)
  %63 = load %struct.TValue*, %struct.TValue** %10, align 8
  %64 = getelementptr inbounds %struct.TValue, %struct.TValue* %63, i32 0, i32 1
  %65 = load i8, i8* %64, align 8
  %66 = load %struct.TValue*, %struct.TValue** %9, align 8
  %67 = getelementptr inbounds %struct.TValue, %struct.TValue* %66, i32 0, i32 1
  store i8 %65, i8* %67, align 8
  %68 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %69 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %70 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %69, i32 0, i32 6
  %71 = load %union.StackValue*, %union.StackValue** %70, align 8
  %72 = getelementptr inbounds %union.StackValue, %union.StackValue* %71, i32 1
  store %union.StackValue* %72, %union.StackValue** %70, align 8
  br label %73

; <label>:73:                                     ; preds = %50, %41
  br label %74

; <label>:74:                                     ; preds = %73, %40
  %75 = load i8*, i8** %7, align 8
  ret i8* %75
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_setlocal(%struct.lua_State*, %struct.lua_Debug*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_Debug*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.StackValue*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_Debug* %1, %struct.lua_Debug** %5, align 8
  store i32 %2, i32* %6, align 4
  store %union.StackValue* null, %union.StackValue** %7, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load %struct.lua_Debug*, %struct.lua_Debug** %5, align 8
  %13 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %12, i32 0, i32 16
  %14 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @luaG_findlocal(%struct.lua_State* %11, %struct.CallInfo* %14, i32 %15, %union.StackValue** %7)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %43

; <label>:19:                                     ; preds = %3
  %20 = load %union.StackValue*, %union.StackValue** %7, align 8
  %21 = bitcast %union.StackValue* %20 to %struct.TValue*
  store %struct.TValue* %21, %struct.TValue** %9, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 6
  %24 = load %union.StackValue*, %union.StackValue** %23, align 8
  %25 = getelementptr inbounds %union.StackValue, %union.StackValue* %24, i64 -1
  %26 = bitcast %union.StackValue* %25 to %struct.TValue*
  store %struct.TValue* %26, %struct.TValue** %10, align 8
  %27 = load %struct.TValue*, %struct.TValue** %9, align 8
  %28 = getelementptr inbounds %struct.TValue, %struct.TValue* %27, i32 0, i32 0
  %29 = load %struct.TValue*, %struct.TValue** %10, align 8
  %30 = getelementptr inbounds %struct.TValue, %struct.TValue* %29, i32 0, i32 0
  %31 = bitcast %union.Value* %28 to i8*
  %32 = bitcast %union.Value* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 8, i32 8, i1 false)
  %33 = load %struct.TValue*, %struct.TValue** %10, align 8
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i32 0, i32 1
  %35 = load i8, i8* %34, align 8
  %36 = load %struct.TValue*, %struct.TValue** %9, align 8
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %36, i32 0, i32 1
  store i8 %35, i8* %37, align 8
  %38 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 6
  %41 = load %union.StackValue*, %union.StackValue** %40, align 8
  %42 = getelementptr inbounds %union.StackValue, %union.StackValue* %41, i32 -1
  store %union.StackValue* %42, %union.StackValue** %40, align 8
  br label %43

; <label>:43:                                     ; preds = %19, %3
  %44 = load i8*, i8** %8, align 8
  ret i8* %44
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lua_Debug*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.Closure*, align 8
  %9 = alloca %struct.CallInfo*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca %struct.TValue*, align 8
  %12 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.lua_Debug* %2, %struct.lua_Debug** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 62
  br i1 %16, label %17, label %29

; <label>:17:                                     ; preds = %3
  store %struct.CallInfo* null, %struct.CallInfo** %9, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 6
  %20 = load %union.StackValue*, %union.StackValue** %19, align 8
  %21 = getelementptr inbounds %union.StackValue, %union.StackValue* %20, i64 -1
  %22 = bitcast %union.StackValue* %21 to %struct.TValue*
  store %struct.TValue* %22, %struct.TValue** %10, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 6
  %27 = load %union.StackValue*, %union.StackValue** %26, align 8
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i32 -1
  store %union.StackValue* %28, %union.StackValue** %26, align 8
  br label %37

; <label>:29:                                     ; preds = %3
  %30 = load %struct.lua_Debug*, %struct.lua_Debug** %6, align 8
  %31 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %30, i32 0, i32 16
  %32 = load %struct.CallInfo*, %struct.CallInfo** %31, align 8
  store %struct.CallInfo* %32, %struct.CallInfo** %9, align 8
  %33 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %34 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %33, i32 0, i32 0
  %35 = load %union.StackValue*, %union.StackValue** %34, align 8
  %36 = bitcast %union.StackValue* %35 to %struct.TValue*
  store %struct.TValue* %36, %struct.TValue** %10, align 8
  br label %37

; <label>:37:                                     ; preds = %29, %17
  %38 = load %struct.TValue*, %struct.TValue** %10, align 8
  %39 = getelementptr inbounds %struct.TValue, %struct.TValue* %38, i32 0, i32 1
  %40 = load i8, i8* %39, align 8
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, 31
  %43 = icmp eq i32 %42, 22
  br i1 %43, label %44, label %51

; <label>:44:                                     ; preds = %37
  %45 = load %struct.TValue*, %struct.TValue** %10, align 8
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i32 0, i32 0
  %47 = bitcast %union.Value* %46 to %struct.GCObject**
  %48 = load %struct.GCObject*, %struct.GCObject** %47, align 8
  %49 = bitcast %struct.GCObject* %48 to %union.GCUnion*
  %50 = bitcast %union.GCUnion* %49 to %union.Closure*
  br label %52

; <label>:51:                                     ; preds = %37
  br label %52

; <label>:52:                                     ; preds = %51, %44
  %53 = phi %union.Closure* [ %50, %44 ], [ null, %51 ]
  store %union.Closure* %53, %union.Closure** %8, align 8
  %54 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load %struct.lua_Debug*, %struct.lua_Debug** %6, align 8
  %57 = load %union.Closure*, %union.Closure** %8, align 8
  %58 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %59 = call i32 @auxgetinfo(%struct.lua_State* %54, i8* %55, %struct.lua_Debug* %56, %union.Closure* %57, %struct.CallInfo* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = call i8* @strchr(i8* %60, i32 102) #7
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %85

; <label>:63:                                     ; preds = %52
  %64 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %64, i32 0, i32 6
  %66 = load %union.StackValue*, %union.StackValue** %65, align 8
  %67 = bitcast %union.StackValue* %66 to %struct.TValue*
  store %struct.TValue* %67, %struct.TValue** %11, align 8
  %68 = load %struct.TValue*, %struct.TValue** %10, align 8
  store %struct.TValue* %68, %struct.TValue** %12, align 8
  %69 = load %struct.TValue*, %struct.TValue** %11, align 8
  %70 = getelementptr inbounds %struct.TValue, %struct.TValue* %69, i32 0, i32 0
  %71 = load %struct.TValue*, %struct.TValue** %12, align 8
  %72 = getelementptr inbounds %struct.TValue, %struct.TValue* %71, i32 0, i32 0
  %73 = bitcast %union.Value* %70 to i8*
  %74 = bitcast %union.Value* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 8, i32 8, i1 false)
  %75 = load %struct.TValue*, %struct.TValue** %12, align 8
  %76 = getelementptr inbounds %struct.TValue, %struct.TValue* %75, i32 0, i32 1
  %77 = load i8, i8* %76, align 8
  %78 = load %struct.TValue*, %struct.TValue** %11, align 8
  %79 = getelementptr inbounds %struct.TValue, %struct.TValue* %78, i32 0, i32 1
  store i8 %77, i8* %79, align 8
  %80 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %81 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %82 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %81, i32 0, i32 6
  %83 = load %union.StackValue*, %union.StackValue** %82, align 8
  %84 = getelementptr inbounds %union.StackValue, %union.StackValue* %83, i32 1
  store %union.StackValue* %84, %union.StackValue** %82, align 8
  br label %85

; <label>:85:                                     ; preds = %63, %52
  %86 = load i8*, i8** %5, align 8
  %87 = call i8* @strchr(i8* %86, i32 76) #7
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %92

; <label>:89:                                     ; preds = %85
  %90 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %91 = load %union.Closure*, %union.Closure** %8, align 8
  call void @collectvalidlines(%struct.lua_State* %90, %union.Closure* %91)
  br label %92

; <label>:92:                                     ; preds = %89, %85
  %93 = load i32, i32* %7, align 4
  ret i32 %93
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

; <label>:12:                                     ; preds = %155, %5
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %158

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %153 [
    i32 83, label %20
    i32 108, label %23
    i32 117, label %41
    i32 116, label %88
    i32 110, label %103
    i32 114, label %121
    i32 76, label %152
    i32 102, label %152
  ]

; <label>:20:                                     ; preds = %16
  %21 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %22 = load %union.Closure*, %union.Closure** %9, align 8
  call void @funcinfo(%struct.lua_Debug* %21, %union.Closure* %22)
  br label %154

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
  br i1 %32, label %36, label %33

; <label>:33:                                     ; preds = %26
  %34 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %35 = call i32 @currentline(%struct.CallInfo* %34)
  br label %37

; <label>:36:                                     ; preds = %26, %23
  br label %37

; <label>:37:                                     ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ -1, %36 ]
  %39 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %40 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  br label %154

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
  %55 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %54, i32 0, i32 9
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
  %64 = icmp eq i32 %63, 54
  br i1 %64, label %65, label %70

; <label>:65:                                     ; preds = %58, %51
  %66 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %67 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %66, i32 0, i32 11
  store i8 1, i8* %67, align 2
  %68 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %69 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %68, i32 0, i32 10
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
  %78 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %77, i32 0, i32 11
  store i8 %76, i8* %78, align 2
  %79 = load %union.Closure*, %union.Closure** %9, align 8
  %80 = bitcast %union.Closure* %79 to %struct.LClosure*
  %81 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %80, i32 0, i32 5
  %82 = load %struct.Proto*, %struct.Proto** %81, align 8
  %83 = getelementptr inbounds %struct.Proto, %struct.Proto* %82, i32 0, i32 3
  %84 = load i8, i8* %83, align 2
  %85 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %86 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %85, i32 0, i32 10
  store i8 %84, i8* %86, align 1
  br label %87

; <label>:87:                                     ; preds = %70, %65
  br label %154

; <label>:88:                                     ; preds = %16
  %89 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %90 = icmp ne %struct.CallInfo* %89, null
  br i1 %90, label %91, label %97

; <label>:91:                                     ; preds = %88
  %92 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %93 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %92, i32 0, i32 7
  %94 = load i16, i16* %93, align 2
  %95 = zext i16 %94 to i32
  %96 = and i32 %95, 16
  br label %98

; <label>:97:                                     ; preds = %88
  br label %98

; <label>:98:                                     ; preds = %97, %91
  %99 = phi i32 [ %96, %91 ], [ 0, %97 ]
  %100 = trunc i32 %99 to i8
  %101 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %102 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %101, i32 0, i32 12
  store i8 %100, i8* %102, align 1
  br label %154

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
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i8** %117, align 8
  %118 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %119 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %118, i32 0, i32 1
  store i8* null, i8** %119, align 8
  br label %120

; <label>:120:                                    ; preds = %115, %103
  br label %154

; <label>:121:                                    ; preds = %16
  %122 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %123 = icmp eq %struct.CallInfo* %122, null
  br i1 %123, label %131, label %124

; <label>:124:                                    ; preds = %121
  %125 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %126 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %125, i32 0, i32 7
  %127 = load i16, i16* %126, align 2
  %128 = zext i16 %127 to i32
  %129 = and i32 %128, 128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

; <label>:131:                                    ; preds = %124, %121
  %132 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %133 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %132, i32 0, i32 14
  store i16 0, i16* %133, align 2
  %134 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %135 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %134, i32 0, i32 13
  store i16 0, i16* %135, align 8
  br label %151

; <label>:136:                                    ; preds = %124
  %137 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %138 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %137, i32 0, i32 5
  %139 = bitcast %union.anon.1* %138 to %struct.anon.2*
  %140 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %139, i32 0, i32 0
  %141 = load i16, i16* %140, align 8
  %142 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %143 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %142, i32 0, i32 13
  store i16 %141, i16* %143, align 8
  %144 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %145 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %144, i32 0, i32 5
  %146 = bitcast %union.anon.1* %145 to %struct.anon.2*
  %147 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %146, i32 0, i32 1
  %148 = load i16, i16* %147, align 2
  %149 = load %struct.lua_Debug*, %struct.lua_Debug** %8, align 8
  %150 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %149, i32 0, i32 14
  store i16 %148, i16* %150, align 2
  br label %151

; <label>:151:                                    ; preds = %136, %131
  br label %152

; <label>:152:                                    ; preds = %16, %16, %151
  br label %154

; <label>:153:                                    ; preds = %16
  store i32 0, i32* %11, align 4
  br label %154

; <label>:154:                                    ; preds = %153, %152, %120, %98, %87, %37, %20
  br label %155

; <label>:155:                                    ; preds = %154
  %156 = load i8*, i8** %7, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %7, align 8
  br label %12

; <label>:158:                                    ; preds = %12
  %159 = load i32, i32* %11, align 4
  ret i32 %159
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collectvalidlines(%struct.lua_State*, %union.Closure*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %union.Closure*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TValue, align 8
  %7 = alloca %struct.Proto*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Table*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca %struct.Table*, align 8
  %12 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %union.Closure* %1, %union.Closure** %4, align 8
  %13 = load %union.Closure*, %union.Closure** %4, align 8
  %14 = icmp eq %union.Closure* %13, null
  br i1 %14, label %22, label %15

; <label>:15:                                     ; preds = %2
  %16 = load %union.Closure*, %union.Closure** %4, align 8
  %17 = bitcast %union.Closure* %16 to %struct.CClosure*
  %18 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %17, i32 0, i32 1
  %19 = load i8, i8* %18, align 8
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 54
  br i1 %21, label %22, label %32

; <label>:22:                                     ; preds = %15, %2
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 6
  %25 = load %union.StackValue*, %union.StackValue** %24, align 8
  %26 = bitcast %union.StackValue* %25 to %struct.TValue*
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %26, i32 0, i32 1
  store i8 0, i8* %27, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %28, i32 0, i32 6
  %30 = load %union.StackValue*, %union.StackValue** %29, align 8
  %31 = getelementptr inbounds %union.StackValue, %union.StackValue* %30, i32 1
  store %union.StackValue* %31, %union.StackValue** %29, align 8
  br label %83

; <label>:32:                                     ; preds = %15
  %33 = load %union.Closure*, %union.Closure** %4, align 8
  %34 = bitcast %union.Closure* %33 to %struct.LClosure*
  %35 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %34, i32 0, i32 5
  %36 = load %struct.Proto*, %struct.Proto** %35, align 8
  store %struct.Proto* %36, %struct.Proto** %7, align 8
  %37 = load %struct.Proto*, %struct.Proto** %7, align 8
  %38 = getelementptr inbounds %struct.Proto, %struct.Proto* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %41 = call %struct.Table* @luaH_new(%struct.lua_State* %40)
  store %struct.Table* %41, %struct.Table** %9, align 8
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 6
  %44 = load %union.StackValue*, %union.StackValue** %43, align 8
  %45 = bitcast %union.StackValue* %44 to %struct.TValue*
  store %struct.TValue* %45, %struct.TValue** %10, align 8
  %46 = load %struct.Table*, %struct.Table** %9, align 8
  store %struct.Table* %46, %struct.Table** %11, align 8
  %47 = load %struct.Table*, %struct.Table** %11, align 8
  %48 = bitcast %struct.Table* %47 to %union.GCUnion*
  %49 = bitcast %union.GCUnion* %48 to %struct.GCObject*
  %50 = load %struct.TValue*, %struct.TValue** %10, align 8
  %51 = getelementptr inbounds %struct.TValue, %struct.TValue* %50, i32 0, i32 0
  %52 = bitcast %union.Value* %51 to %struct.GCObject**
  store %struct.GCObject* %49, %struct.GCObject** %52, align 8
  %53 = load %struct.TValue*, %struct.TValue** %10, align 8
  %54 = getelementptr inbounds %struct.TValue, %struct.TValue* %53, i32 0, i32 1
  store i8 69, i8* %54, align 8
  %55 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %55, i32 0, i32 6
  %57 = load %union.StackValue*, %union.StackValue** %56, align 8
  %58 = getelementptr inbounds %union.StackValue, %union.StackValue* %57, i32 1
  store %union.StackValue* %58, %union.StackValue** %56, align 8
  store %struct.TValue* %6, %struct.TValue** %12, align 8
  %59 = load %struct.TValue*, %struct.TValue** %12, align 8
  %60 = getelementptr inbounds %struct.TValue, %struct.TValue* %59, i32 0, i32 0
  %61 = bitcast %union.Value* %60 to i32*
  store i32 1, i32* %61, align 8
  %62 = load %struct.TValue*, %struct.TValue** %12, align 8
  %63 = getelementptr inbounds %struct.TValue, %struct.TValue* %62, i32 0, i32 1
  store i8 1, i8* %63, align 8
  store i32 0, i32* %5, align 4
  br label %64

; <label>:64:                                     ; preds = %79, %32
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.Proto*, %struct.Proto** %7, align 8
  %67 = getelementptr inbounds %struct.Proto, %struct.Proto* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %82

; <label>:70:                                     ; preds = %64
  %71 = load %struct.Proto*, %struct.Proto** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @nextline(%struct.Proto* %71, i32 %72, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %76 = load %struct.Table*, %struct.Table** %9, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  call void @luaH_setint(%struct.lua_State* %75, %struct.Table* %76, i64 %78, %struct.TValue* %6)
  br label %79

; <label>:79:                                     ; preds = %70
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %64

; <label>:82:                                     ; preds = %64
  br label %83

; <label>:83:                                     ; preds = %82, %22
  ret void
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaG_typeerror(%struct.lua_State*, %struct.TValue*, i8*) #4 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.TValue* %1, %struct.TValue** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load %struct.TValue*, %struct.TValue** %5, align 8
  %10 = call i8* @luaT_objtypename(%struct.lua_State* %8, %struct.TValue* %9)
  store i8* %10, i8** %7, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load %struct.TValue*, %struct.TValue** %5, align 8
  %16 = call i8* @varinfo(%struct.lua_State* %14, %struct.TValue* %15)
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i8* %12, i8* %13, i8* %16) #8
  unreachable
                                                  ; No predecessors!
  unreachable
}

declare hidden i8* @luaT_objtypename(%struct.lua_State*, %struct.TValue*) #1

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
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 8
  %10 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  store %struct.CallInfo* %10, %struct.CallInfo** %5, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 7
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
  br i1 %33, label %54, label %34

; <label>:34:                                     ; preds = %19
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %38 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %37, i32 0, i32 0
  %39 = load %union.StackValue*, %union.StackValue** %38, align 8
  %40 = bitcast %union.StackValue* %39 to %struct.TValue*
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i32 0, i32 0
  %42 = bitcast %union.Value* %41 to %struct.GCObject**
  %43 = load %struct.GCObject*, %struct.GCObject** %42, align 8
  %44 = bitcast %struct.GCObject* %43 to %union.GCUnion*
  %45 = bitcast %union.GCUnion* %44 to %union.Closure*
  %46 = bitcast %union.Closure* %45 to %struct.LClosure*
  %47 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %46, i32 0, i32 5
  %48 = load %struct.Proto*, %struct.Proto** %47, align 8
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %48, i32 0, i32 22
  %50 = load %struct.TString*, %struct.TString** %49, align 8
  %51 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %52 = call i32 @currentline(%struct.CallInfo* %51)
  %53 = call i8* @luaG_addinfo(%struct.lua_State* %35, i8* %36, %struct.TString* %50, i32 %52)
  br label %54

; <label>:54:                                     ; preds = %34, %19
  %55 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaG_errormsg(%struct.lua_State* %55) #8
  unreachable
                                                  ; No predecessors!
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @varinfo(%struct.lua_State*, %struct.TValue*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.TValue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.CallInfo*, align 8
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.TValue* %1, %struct.TValue** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 8
  %10 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  store %struct.CallInfo* %10, %struct.CallInfo** %6, align 8
  store i8* null, i8** %7, align 8
  %11 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %12 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %11, i32 0, i32 7
  %13 = load i16, i16* %12, align 2
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 2
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %56, label %17

; <label>:17:                                     ; preds = %2
  %18 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %19 = load %struct.TValue*, %struct.TValue** %4, align 8
  %20 = call i8* @getupvalname(%struct.CallInfo* %18, %struct.TValue* %19, i8** %5)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %55, label %23

; <label>:23:                                     ; preds = %17
  %24 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %25 = load %struct.TValue*, %struct.TValue** %4, align 8
  %26 = call i32 @isinstack(%struct.CallInfo* %24, %struct.TValue* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %55

; <label>:28:                                     ; preds = %23
  %29 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %30 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %29, i32 0, i32 0
  %31 = load %union.StackValue*, %union.StackValue** %30, align 8
  %32 = bitcast %union.StackValue* %31 to %struct.TValue*
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i32 0, i32 0
  %34 = bitcast %union.Value* %33 to %struct.GCObject**
  %35 = load %struct.GCObject*, %struct.GCObject** %34, align 8
  %36 = bitcast %struct.GCObject* %35 to %union.GCUnion*
  %37 = bitcast %union.GCUnion* %36 to %union.Closure*
  %38 = bitcast %union.Closure* %37 to %struct.LClosure*
  %39 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %38, i32 0, i32 5
  %40 = load %struct.Proto*, %struct.Proto** %39, align 8
  %41 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %42 = call i32 @currentpc(%struct.CallInfo* %41)
  %43 = load %struct.TValue*, %struct.TValue** %4, align 8
  %44 = bitcast %struct.TValue* %43 to %union.StackValue*
  %45 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %46 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %45, i32 0, i32 0
  %47 = load %union.StackValue*, %union.StackValue** %46, align 8
  %48 = getelementptr inbounds %union.StackValue, %union.StackValue* %47, i64 1
  %49 = ptrtoint %union.StackValue* %44 to i64
  %50 = ptrtoint %union.StackValue* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 16
  %53 = trunc i64 %52 to i32
  %54 = call i8* @getobjname(%struct.Proto* %40, i32 %42, i32 %53, i8** %5)
  store i8* %54, i8** %7, align 8
  br label %55

; <label>:55:                                     ; preds = %28, %23, %17
  br label %56

; <label>:56:                                     ; preds = %55, %2
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %64

; <label>:59:                                     ; preds = %56
  %60 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8* %61, i8* %62)
  br label %65

; <label>:64:                                     ; preds = %56
  br label %65

; <label>:65:                                     ; preds = %64, %59
  %66 = phi i8* [ %63, %59 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), %64 ]
  ret i8* %66
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaG_forerror(%struct.lua_State*, %struct.TValue*, i8*) #4 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.TValue* %1, %struct.TValue** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load %struct.TValue*, %struct.TValue** %5, align 8
  %11 = call i8* @luaT_objtypename(%struct.lua_State* %9, %struct.TValue* %10)
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0), i8* %8, i8* %11) #8
  unreachable
                                                  ; No predecessors!
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaG_concaterror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) #4 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.TValue* %1, %struct.TValue** %5, align 8
  store %struct.TValue* %2, %struct.TValue** %6, align 8
  %7 = load %struct.TValue*, %struct.TValue** %5, align 8
  %8 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i32 0, i32 1
  %9 = load i8, i8* %8, align 8
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 15
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %20, label %13

; <label>:13:                                     ; preds = %3
  %14 = load %struct.TValue*, %struct.TValue** %5, align 8
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 1
  %16 = load i8, i8* %15, align 8
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 15
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %13, %3
  %21 = load %struct.TValue*, %struct.TValue** %6, align 8
  store %struct.TValue* %21, %struct.TValue** %5, align 8
  br label %22

; <label>:22:                                     ; preds = %20, %13
  %23 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %24 = load %struct.TValue*, %struct.TValue** %5, align 8
  call void @luaG_typeerror(%struct.lua_State* %23, %struct.TValue* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaG_opinterror(%struct.lua_State*, %struct.TValue*, %struct.TValue*, i8*) #4 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.TValue* %1, %struct.TValue** %6, align 8
  store %struct.TValue* %2, %struct.TValue** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.TValue*, %struct.TValue** %6, align 8
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 8
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 15
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %17, label %15

; <label>:15:                                     ; preds = %4
  %16 = load %struct.TValue*, %struct.TValue** %6, align 8
  store %struct.TValue* %16, %struct.TValue** %7, align 8
  br label %17

; <label>:17:                                     ; preds = %15, %4
  %18 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %19 = load %struct.TValue*, %struct.TValue** %7, align 8
  %20 = load i8*, i8** %8, align 8
  call void @luaG_typeerror(%struct.lua_State* %18, %struct.TValue* %19, i8* %20) #8
  unreachable
                                                  ; No predecessors!
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaG_tointerror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) #4 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.TValue* %1, %struct.TValue** %5, align 8
  store %struct.TValue* %2, %struct.TValue** %6, align 8
  %8 = load %struct.TValue*, %struct.TValue** %5, align 8
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i32 0, i32 1
  %10 = load i8, i8* %9, align 8
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 35
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %3
  %14 = load %struct.TValue*, %struct.TValue** %5, align 8
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 0
  %16 = bitcast %union.Value* %15 to i64*
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  br i1 true, label %24, label %22

; <label>:18:                                     ; preds = %3
  %19 = load %struct.TValue*, %struct.TValue** %5, align 8
  %20 = call i32 @luaV_tointegerns(%struct.TValue* %19, i64* %7, i32 0)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %18, %13
  %23 = load %struct.TValue*, %struct.TValue** %5, align 8
  store %struct.TValue* %23, %struct.TValue** %6, align 8
  br label %24

; <label>:24:                                     ; preds = %22, %18, %13
  %25 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %27 = load %struct.TValue*, %struct.TValue** %6, align 8
  %28 = call i8* @varinfo(%struct.lua_State* %26, %struct.TValue* %27)
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0), i8* %28) #8
  unreachable
                                                  ; No predecessors!
  unreachable
}

declare hidden i32 @luaV_tointegerns(%struct.TValue*, i64*, i32) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaG_ordererror(%struct.lua_State*, %struct.TValue*, %struct.TValue*) #4 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.TValue* %1, %struct.TValue** %5, align 8
  store %struct.TValue* %2, %struct.TValue** %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load %struct.TValue*, %struct.TValue** %5, align 8
  %11 = call i8* @luaT_objtypename(%struct.lua_State* %9, %struct.TValue* %10)
  store i8* %11, i8** %7, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = load %struct.TValue*, %struct.TValue** %6, align 8
  %14 = call i8* @luaT_objtypename(%struct.lua_State* %12, %struct.TValue* %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @strcmp(i8* %15, i8* %16) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %3
  %20 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %21 = load i8*, i8** %7, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i8* %21) #8
  unreachable

; <label>:22:                                     ; preds = %3
  %23 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %8, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0), i8* %24, i8* %25) #8
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
  br i1 %11, label %12, label %34

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds [60 x i8], [60 x i8]* %9, i32 0, i32 0
  %14 = load %struct.TString*, %struct.TString** %7, align 8
  %15 = bitcast %struct.TString* %14 to i8*
  %16 = getelementptr inbounds i8, i8* %15, i64 24
  %17 = load %struct.TString*, %struct.TString** %7, align 8
  %18 = getelementptr inbounds %struct.TString, %struct.TString* %17, i32 0, i32 1
  %19 = load i8, i8* %18, align 8
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 20
  br i1 %21, label %22, label %27

; <label>:22:                                     ; preds = %12
  %23 = load %struct.TString*, %struct.TString** %7, align 8
  %24 = getelementptr inbounds %struct.TString, %struct.TString* %23, i32 0, i32 4
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i64
  br label %32

; <label>:27:                                     ; preds = %12
  %28 = load %struct.TString*, %struct.TString** %7, align 8
  %29 = getelementptr inbounds %struct.TString, %struct.TString* %28, i32 0, i32 6
  %30 = bitcast %union.anon.3* %29 to i64*
  %31 = load i64, i64* %30, align 8
  br label %32

; <label>:32:                                     ; preds = %27, %22
  %33 = phi i64 [ %26, %22 ], [ %31, %27 ]
  call void @luaO_chunkid(i8* %13, i8* %16, i64 %33)
  br label %37

; <label>:34:                                     ; preds = %4
  %35 = getelementptr inbounds [60 x i8], [60 x i8]* %9, i64 0, i64 0
  store i8 63, i8* %35, align 16
  %36 = getelementptr inbounds [60 x i8], [60 x i8]* %9, i64 0, i64 1
  store i8 0, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %34, %32
  %38 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %39 = getelementptr inbounds [60 x i8], [60 x i8]* %9, i32 0, i32 0
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* %39, i32 %40, i8* %41)
  ret i8* %42
}

declare hidden void @luaO_chunkid(i8*, i8*, i64) #1

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaG_errormsg(%struct.lua_State*) #4 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %union.StackValue*, align 8
  %4 = alloca %struct.TValue*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 18
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %71

; <label>:12:                                     ; preds = %1
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 11
  %15 = load %union.StackValue*, %union.StackValue** %14, align 8
  %16 = bitcast %union.StackValue* %15 to i8*
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 18
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = bitcast i8* %20 to %union.StackValue*
  store %union.StackValue* %21, %union.StackValue** %3, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 6
  %24 = load %union.StackValue*, %union.StackValue** %23, align 8
  %25 = bitcast %union.StackValue* %24 to %struct.TValue*
  store %struct.TValue* %25, %struct.TValue** %4, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 6
  %28 = load %union.StackValue*, %union.StackValue** %27, align 8
  %29 = getelementptr inbounds %union.StackValue, %union.StackValue* %28, i64 -1
  %30 = bitcast %union.StackValue* %29 to %struct.TValue*
  store %struct.TValue* %30, %struct.TValue** %5, align 8
  %31 = load %struct.TValue*, %struct.TValue** %4, align 8
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i32 0, i32 0
  %33 = load %struct.TValue*, %struct.TValue** %5, align 8
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i32 0, i32 0
  %35 = bitcast %union.Value* %32 to i8*
  %36 = bitcast %union.Value* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 8, i32 8, i1 false)
  %37 = load %struct.TValue*, %struct.TValue** %5, align 8
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i32 0, i32 1
  %39 = load i8, i8* %38, align 8
  %40 = load %struct.TValue*, %struct.TValue** %4, align 8
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i32 0, i32 1
  store i8 %39, i8* %41, align 8
  %42 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %43 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 6
  %45 = load %union.StackValue*, %union.StackValue** %44, align 8
  %46 = getelementptr inbounds %union.StackValue, %union.StackValue* %45, i64 -1
  %47 = bitcast %union.StackValue* %46 to %struct.TValue*
  store %struct.TValue* %47, %struct.TValue** %6, align 8
  %48 = load %union.StackValue*, %union.StackValue** %3, align 8
  %49 = bitcast %union.StackValue* %48 to %struct.TValue*
  store %struct.TValue* %49, %struct.TValue** %7, align 8
  %50 = load %struct.TValue*, %struct.TValue** %6, align 8
  %51 = getelementptr inbounds %struct.TValue, %struct.TValue* %50, i32 0, i32 0
  %52 = load %struct.TValue*, %struct.TValue** %7, align 8
  %53 = getelementptr inbounds %struct.TValue, %struct.TValue* %52, i32 0, i32 0
  %54 = bitcast %union.Value* %51 to i8*
  %55 = bitcast %union.Value* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 8, i32 8, i1 false)
  %56 = load %struct.TValue*, %struct.TValue** %7, align 8
  %57 = getelementptr inbounds %struct.TValue, %struct.TValue* %56, i32 0, i32 1
  %58 = load i8, i8* %57, align 8
  %59 = load %struct.TValue*, %struct.TValue** %6, align 8
  %60 = getelementptr inbounds %struct.TValue, %struct.TValue* %59, i32 0, i32 1
  store i8 %58, i8* %60, align 8
  %61 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %62 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %62, i32 0, i32 6
  %64 = load %union.StackValue*, %union.StackValue** %63, align 8
  %65 = getelementptr inbounds %union.StackValue, %union.StackValue* %64, i32 1
  store %union.StackValue* %65, %union.StackValue** %63, align 8
  %66 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %67 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %68 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %67, i32 0, i32 6
  %69 = load %union.StackValue*, %union.StackValue** %68, align 8
  %70 = getelementptr inbounds %union.StackValue, %union.StackValue* %69, i64 -2
  call void @luaD_callnoyield(%struct.lua_State* %66, %union.StackValue* %70, i32 1)
  br label %71

; <label>:71:                                     ; preds = %12, %1
  %72 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaD_throw(%struct.lua_State* %72, i32 2) #8
  unreachable
                                                  ; No predecessors!
  unreachable
}

declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) #1

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
  %5 = load %union.StackValue*, %union.StackValue** %4, align 8
  %6 = bitcast %union.StackValue* %5 to %struct.TValue*
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i32 0, i32 0
  %8 = bitcast %union.Value* %7 to %struct.GCObject**
  %9 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  %10 = bitcast %struct.GCObject* %9 to %union.GCUnion*
  %11 = bitcast %union.GCUnion* %10 to %union.Closure*
  %12 = bitcast %union.Closure* %11 to %struct.LClosure*
  %13 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %12, i32 0, i32 5
  %14 = load %struct.Proto*, %struct.Proto** %13, align 8
  %15 = load %struct.CallInfo*, %struct.CallInfo** %2, align 8
  %16 = call i32 @currentpc(%struct.CallInfo* %15)
  %17 = call i32 @luaG_getfuncline(%struct.Proto* %14, i32 %16)
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaG_traceexec(%struct.lua_State*, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.CallInfo*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.Proto*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 8
  %14 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  store %struct.CallInfo* %14, %struct.CallInfo** %6, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 23
  %17 = load i32, i32* %16, align 8
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %7, align 1
  %19 = load i8, i8* %7, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 12
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

; <label>:23:                                     ; preds = %2
  %24 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %25 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %24, i32 0, i32 4
  %26 = bitcast %union.anon* %25 to %struct.anon*
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 1
  store i32 0, i32* %27, align 8
  store i32 0, i32* %3, align 4
  br label %206

; <label>:28:                                     ; preds = %2
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %33 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %32, i32 0, i32 4
  %34 = bitcast %union.anon* %33 to %struct.anon*
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 0
  store i32* %31, i32** %35, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 22
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

; <label>:41:                                     ; preds = %28
  %42 = load i8, i8* %7, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 8
  %45 = icmp ne i32 %44, 0
  br label %46

; <label>:46:                                     ; preds = %41, %28
  %47 = phi i1 [ false, %28 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

; <label>:51:                                     ; preds = %46
  %52 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %52, i32 0, i32 21
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %55, i32 0, i32 22
  store i32 %54, i32* %56, align 4
  br label %64

; <label>:57:                                     ; preds = %46
  %58 = load i8, i8* %7, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

; <label>:62:                                     ; preds = %57
  store i32 1, i32* %3, align 4
  br label %206

; <label>:63:                                     ; preds = %57
  br label %64

; <label>:64:                                     ; preds = %63, %51
  %65 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %66 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %65, i32 0, i32 7
  %67 = load i16, i16* %66, align 2
  %68 = zext i16 %67 to i32
  %69 = and i32 %68, 32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

; <label>:71:                                     ; preds = %64
  %72 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %73 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %72, i32 0, i32 7
  %74 = load i16, i16* %73, align 2
  %75 = zext i16 %74 to i32
  %76 = and i32 %75, -33
  %77 = trunc i32 %76 to i16
  store i16 %77, i16* %73, align 2
  store i32 1, i32* %3, align 4
  br label %206

; <label>:78:                                     ; preds = %64
  %79 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %80 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %79, i32 0, i32 4
  %81 = bitcast %union.anon* %80 to %struct.anon*
  %82 = getelementptr inbounds %struct.anon, %struct.anon* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 -1
  %85 = load i32, i32* %84, align 4
  %86 = lshr i32 %85, 0
  %87 = and i32 %86, 127
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, 32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

; <label>:94:                                     ; preds = %78
  %95 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %96 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %95, i32 0, i32 4
  %97 = bitcast %union.anon* %96 to %struct.anon*
  %98 = getelementptr inbounds %struct.anon, %struct.anon* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 -1
  %101 = load i32, i32* %100, align 4
  %102 = lshr i32 %101, 16
  %103 = and i32 %102, 255
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %111, label %105

; <label>:105:                                    ; preds = %94, %78
  %106 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %107 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %106, i32 0, i32 1
  %108 = load %union.StackValue*, %union.StackValue** %107, align 8
  %109 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %110 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %109, i32 0, i32 6
  store %union.StackValue* %108, %union.StackValue** %110, align 8
  br label %111

; <label>:111:                                    ; preds = %105, %94
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

; <label>:114:                                    ; preds = %111
  %115 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaD_hook(%struct.lua_State* %115, i32 3, i32 -1, i32 0, i32 0)
  br label %116

; <label>:116:                                    ; preds = %114, %111
  %117 = load i8, i8* %7, align 1
  %118 = zext i8 %117 to i32
  %119 = and i32 %118, 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %179

; <label>:121:                                    ; preds = %116
  %122 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %123 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %122, i32 0, i32 0
  %124 = load %union.StackValue*, %union.StackValue** %123, align 8
  %125 = bitcast %union.StackValue* %124 to %struct.TValue*
  %126 = getelementptr inbounds %struct.TValue, %struct.TValue* %125, i32 0, i32 0
  %127 = bitcast %union.Value* %126 to %struct.GCObject**
  %128 = load %struct.GCObject*, %struct.GCObject** %127, align 8
  %129 = bitcast %struct.GCObject* %128 to %union.GCUnion*
  %130 = bitcast %union.GCUnion* %129 to %union.Closure*
  %131 = bitcast %union.Closure* %130 to %struct.LClosure*
  %132 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %131, i32 0, i32 5
  %133 = load %struct.Proto*, %struct.Proto** %132, align 8
  store %struct.Proto* %133, %struct.Proto** %9, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = load %struct.Proto*, %struct.Proto** %9, align 8
  %136 = getelementptr inbounds %struct.Proto, %struct.Proto* %135, i32 0, i32 16
  %137 = load i32*, i32** %136, align 8
  %138 = ptrtoint i32* %134 to i64
  %139 = ptrtoint i32* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sdiv exact i64 %140, 4
  %142 = trunc i64 %141 to i32
  %143 = sub nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %169, label %146

; <label>:146:                                    ; preds = %121
  %147 = load i32*, i32** %5, align 8
  %148 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %149 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %148, i32 0, i32 9
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ule i32* %147, %150
  br i1 %151, label %169, label %152

; <label>:152:                                    ; preds = %146
  %153 = load %struct.Proto*, %struct.Proto** %9, align 8
  %154 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %155 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %154, i32 0, i32 9
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.Proto*, %struct.Proto** %9, align 8
  %158 = getelementptr inbounds %struct.Proto, %struct.Proto* %157, i32 0, i32 16
  %159 = load i32*, i32** %158, align 8
  %160 = ptrtoint i32* %156 to i64
  %161 = ptrtoint i32* %159 to i64
  %162 = sub i64 %160, %161
  %163 = sdiv exact i64 %162, 4
  %164 = trunc i64 %163 to i32
  %165 = sub nsw i32 %164, 1
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @changedline(%struct.Proto* %153, i32 %165, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

; <label>:169:                                    ; preds = %152, %146, %121
  %170 = load %struct.Proto*, %struct.Proto** %9, align 8
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @luaG_getfuncline(%struct.Proto* %170, i32 %171)
  store i32 %172, i32* %11, align 4
  %173 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %174 = load i32, i32* %11, align 4
  call void @luaD_hook(%struct.lua_State* %173, i32 2, i32 %174, i32 0, i32 0)
  br label %175

; <label>:175:                                    ; preds = %169, %152
  %176 = load i32*, i32** %5, align 8
  %177 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %178 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %177, i32 0, i32 9
  store i32* %176, i32** %178, align 8
  br label %179

; <label>:179:                                    ; preds = %175, %116
  %180 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %181 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %180, i32 0, i32 3
  %182 = load i8, i8* %181, align 2
  %183 = zext i8 %182 to i32
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %185, label %205

; <label>:185:                                    ; preds = %179
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

; <label>:188:                                    ; preds = %185
  %189 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %190 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %189, i32 0, i32 22
  store i32 1, i32* %190, align 4
  br label %191

; <label>:191:                                    ; preds = %188, %185
  %192 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %193 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %192, i32 0, i32 4
  %194 = bitcast %union.anon* %193 to %struct.anon*
  %195 = getelementptr inbounds %struct.anon, %struct.anon* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i32 -1
  store i32* %197, i32** %195, align 8
  %198 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %199 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %198, i32 0, i32 7
  %200 = load i16, i16* %199, align 2
  %201 = zext i16 %200 to i32
  %202 = or i32 %201, 32
  %203 = trunc i32 %202 to i16
  store i16 %203, i16* %199, align 2
  %204 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaD_throw(%struct.lua_State* %204, i32 1) #8
  unreachable

; <label>:205:                                    ; preds = %179
  store i32 1, i32* %3, align 4
  br label %206

; <label>:206:                                    ; preds = %205, %71, %62, %23
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare hidden void @luaD_hook(%struct.lua_State*, i32, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @changedline(%struct.Proto*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Proto*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Proto* %0, %struct.Proto** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %33, %3
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %34

; <label>:13:                                     ; preds = %8
  %14 = load %struct.Proto*, %struct.Proto** %5, align 8
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i32 0, i32 19
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

; <label>:23:                                     ; preds = %13
  %24 = load %struct.Proto*, %struct.Proto** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  %27 = call i32 @luaG_getfuncline(%struct.Proto* %24, i32 %26)
  %28 = load %struct.Proto*, %struct.Proto** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @luaG_getfuncline(%struct.Proto* %28, i32 %29)
  %31 = icmp ne i32 %27, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %35

; <label>:33:                                     ; preds = %13
  br label %8

; <label>:34:                                     ; preds = %8
  store i32 0, i32* %4, align 4
  br label %35

; <label>:35:                                     ; preds = %34, %23
  %36 = load i32, i32* %4, align 4
  ret i32 %36
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
  %14 = icmp eq i32 %13, 54
  br i1 %14, label %15, label %26

; <label>:15:                                     ; preds = %8, %2
  %16 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %17 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %16, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8** %17, align 8
  %18 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %19 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %18, i32 0, i32 5
  store i64 4, i64* %19, align 8
  %20 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %21 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %20, i32 0, i32 7
  store i32 -1, i32* %21, align 4
  %22 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %23 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %22, i32 0, i32 8
  store i32 -1, i32* %23, align 8
  %24 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %25 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %24, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8** %25, align 8
  br label %92

; <label>:26:                                     ; preds = %8
  %27 = load %union.Closure*, %union.Closure** %4, align 8
  %28 = bitcast %union.Closure* %27 to %struct.LClosure*
  %29 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %28, i32 0, i32 5
  %30 = load %struct.Proto*, %struct.Proto** %29, align 8
  store %struct.Proto* %30, %struct.Proto** %5, align 8
  %31 = load %struct.Proto*, %struct.Proto** %5, align 8
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i32 0, i32 22
  %33 = load %struct.TString*, %struct.TString** %32, align 8
  %34 = icmp ne %struct.TString* %33, null
  br i1 %34, label %35, label %68

; <label>:35:                                     ; preds = %26
  %36 = load %struct.Proto*, %struct.Proto** %5, align 8
  %37 = getelementptr inbounds %struct.Proto, %struct.Proto* %36, i32 0, i32 22
  %38 = load %struct.TString*, %struct.TString** %37, align 8
  %39 = bitcast %struct.TString* %38 to i8*
  %40 = getelementptr inbounds i8, i8* %39, i64 24
  %41 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %42 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.Proto*, %struct.Proto** %5, align 8
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %43, i32 0, i32 22
  %45 = load %struct.TString*, %struct.TString** %44, align 8
  %46 = getelementptr inbounds %struct.TString, %struct.TString* %45, i32 0, i32 1
  %47 = load i8, i8* %46, align 8
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 20
  br i1 %49, label %50, label %57

; <label>:50:                                     ; preds = %35
  %51 = load %struct.Proto*, %struct.Proto** %5, align 8
  %52 = getelementptr inbounds %struct.Proto, %struct.Proto* %51, i32 0, i32 22
  %53 = load %struct.TString*, %struct.TString** %52, align 8
  %54 = getelementptr inbounds %struct.TString, %struct.TString* %53, i32 0, i32 4
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i64
  br label %64

; <label>:57:                                     ; preds = %35
  %58 = load %struct.Proto*, %struct.Proto** %5, align 8
  %59 = getelementptr inbounds %struct.Proto, %struct.Proto* %58, i32 0, i32 22
  %60 = load %struct.TString*, %struct.TString** %59, align 8
  %61 = getelementptr inbounds %struct.TString, %struct.TString* %60, i32 0, i32 6
  %62 = bitcast %union.anon.3* %61 to i64*
  %63 = load i64, i64* %62, align 8
  br label %64

; <label>:64:                                     ; preds = %57, %50
  %65 = phi i64 [ %56, %50 ], [ %63, %57 ]
  %66 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %67 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %66, i32 0, i32 5
  store i64 %65, i64* %67, align 8
  br label %73

; <label>:68:                                     ; preds = %26
  %69 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %70 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %69, i32 0, i32 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8** %70, align 8
  %71 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %72 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %71, i32 0, i32 5
  store i64 2, i64* %72, align 8
  br label %73

; <label>:73:                                     ; preds = %68, %64
  %74 = load %struct.Proto*, %struct.Proto** %5, align 8
  %75 = getelementptr inbounds %struct.Proto, %struct.Proto* %74, i32 0, i32 13
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %78 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 4
  %79 = load %struct.Proto*, %struct.Proto** %5, align 8
  %80 = getelementptr inbounds %struct.Proto, %struct.Proto* %79, i32 0, i32 14
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %83 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 8
  %84 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %85 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)
  %90 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %91 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  br label %92

; <label>:92:                                     ; preds = %73, %15
  %93 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %94 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %93, i32 0, i32 15
  %95 = getelementptr inbounds [60 x i8], [60 x i8]* %94, i32 0, i32 0
  %96 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %97 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %96, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.lua_Debug*, %struct.lua_Debug** %3, align 8
  %100 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  call void @luaO_chunkid(i8* %95, i8* %98, i64 %101)
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
  %16 = and i32 %15, 64
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %11
  %19 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8** %19, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8** %4, align 8
  br label %44

; <label>:20:                                     ; preds = %11
  %21 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %22 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %21, i32 0, i32 7
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 16
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
  br i1 %35, label %43, label %36

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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.CallInfo* %1, %struct.CallInfo** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %16 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %15, i32 0, i32 0
  %17 = load %union.StackValue*, %union.StackValue** %16, align 8
  %18 = bitcast %union.StackValue* %17 to %struct.TValue*
  %19 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i32 0, i32 0
  %20 = bitcast %union.Value* %19 to %struct.GCObject**
  %21 = load %struct.GCObject*, %struct.GCObject** %20, align 8
  %22 = bitcast %struct.GCObject* %21 to %union.GCUnion*
  %23 = bitcast %union.GCUnion* %22 to %union.Closure*
  %24 = bitcast %union.Closure* %23 to %struct.LClosure*
  %25 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %24, i32 0, i32 5
  %26 = load %struct.Proto*, %struct.Proto** %25, align 8
  store %struct.Proto* %26, %struct.Proto** %9, align 8
  %27 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %28 = call i32 @currentpc(%struct.CallInfo* %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.Proto*, %struct.Proto** %9, align 8
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %29, i32 0, i32 16
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %37 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %36, i32 0, i32 7
  %38 = load i16, i16* %37, align 2
  %39 = zext i16 %38 to i32
  %40 = and i32 %39, 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %3
  %43 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8** %43, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8** %4, align 8
  br label %104

; <label>:44:                                     ; preds = %3
  %45 = load i32, i32* %11, align 4
  %46 = lshr i32 %45, 0
  %47 = and i32 %46, 127
  switch i32 %47, label %90 [
    i32 69, label %48
    i32 70, label %48
    i32 77, label %56
    i32 18, label %58
    i32 9, label %58
    i32 10, label %58
    i32 11, label %58
    i32 12, label %58
    i32 13, label %59
    i32 14, label %59
    i32 15, label %59
    i32 16, label %59
    i32 19, label %60
    i32 20, label %60
    i32 21, label %60
    i32 22, label %60
    i32 23, label %60
    i32 24, label %60
    i32 25, label %60
    i32 26, label %67
    i32 27, label %67
    i32 28, label %67
    i32 29, label %67
    i32 30, label %67
    i32 31, label %67
    i32 32, label %67
    i32 33, label %67
    i32 34, label %67
    i32 35, label %67
    i32 38, label %74
    i32 39, label %74
    i32 40, label %74
    i32 41, label %74
    i32 42, label %74
    i32 43, label %74
    i32 44, label %74
    i32 45, label %74
    i32 46, label %74
    i32 47, label %74
    i32 48, label %74
    i32 49, label %74
    i32 50, label %81
    i32 51, label %82
    i32 53, label %83
    i32 54, label %84
    i32 58, label %85
    i32 59, label %86
    i32 60, label %86
    i32 63, label %86
    i32 64, label %86
    i32 36, label %88
    i32 37, label %88
  ]

; <label>:48:                                     ; preds = %44, %44
  %49 = load %struct.Proto*, %struct.Proto** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = lshr i32 %51, 7
  %53 = and i32 %52, 255
  %54 = load i8**, i8*** %7, align 8
  %55 = call i8* @getobjname(%struct.Proto* %49, i32 %50, i32 %53, i8** %54)
  store i8* %55, i8** %4, align 8
  br label %104

; <label>:56:                                     ; preds = %44
  %57 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8** %57, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8** %4, align 8
  br label %104

; <label>:58:                                     ; preds = %44, %44, %44, %44, %44
  store i32 0, i32* %8, align 4
  br label %91

; <label>:59:                                     ; preds = %44, %44, %44, %44
  store i32 1, i32* %8, align 4
  br label %91

; <label>:60:                                     ; preds = %44, %44, %44, %44, %44, %44, %44
  %61 = load i32, i32* %11, align 4
  %62 = lshr i32 %61, 0
  %63 = and i32 %62, 127
  %64 = sub i32 %63, 19
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 6
  store i32 %66, i32* %8, align 4
  br label %91

; <label>:67:                                     ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %68 = load i32, i32* %11, align 4
  %69 = lshr i32 %68, 0
  %70 = and i32 %69, 127
  %71 = sub i32 %70, 26
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 6
  store i32 %73, i32* %8, align 4
  br label %91

; <label>:74:                                     ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %75 = load i32, i32* %11, align 4
  %76 = lshr i32 %75, 0
  %77 = and i32 %76, 127
  %78 = sub i32 %77, 38
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 6
  store i32 %80, i32* %8, align 4
  br label %91

; <label>:81:                                     ; preds = %44
  store i32 18, i32* %8, align 4
  br label %91

; <label>:82:                                     ; preds = %44
  store i32 19, i32* %8, align 4
  br label %91

; <label>:83:                                     ; preds = %44
  store i32 4, i32* %8, align 4
  br label %91

; <label>:84:                                     ; preds = %44
  store i32 22, i32* %8, align 4
  br label %91

; <label>:85:                                     ; preds = %44
  store i32 5, i32* %8, align 4
  br label %91

; <label>:86:                                     ; preds = %44, %44, %44, %44
  %87 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8** %87, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8** %4, align 8
  br label %104

; <label>:88:                                     ; preds = %44, %44
  %89 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8** %89, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8** %4, align 8
  br label %104

; <label>:90:                                     ; preds = %44
  store i8* null, i8** %4, align 8
  br label %104

; <label>:91:                                     ; preds = %85, %84, %83, %82, %81, %74, %67, %60, %59, %58
  %92 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %93 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %92, i32 0, i32 7
  %94 = load %struct.global_State*, %struct.global_State** %93, align 8
  %95 = getelementptr inbounds %struct.global_State, %struct.global_State* %94, i32 0, i32 40
  %96 = load i32, i32* %8, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [25 x %struct.TString*], [25 x %struct.TString*]* %95, i64 0, i64 %97
  %99 = load %struct.TString*, %struct.TString** %98, align 8
  %100 = bitcast %struct.TString* %99 to i8*
  %101 = getelementptr inbounds i8, i8* %100, i64 24
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  %103 = load i8**, i8*** %7, align 8
  store i8* %102, i8** %103, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8** %4, align 8
  br label %104

; <label>:104:                                    ; preds = %91, %90, %88, %86, %56, %48, %42
  %105 = load i8*, i8** %4, align 8
  ret i8* %105
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.Proto* %0, %struct.Proto** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %18 = load %struct.Proto*, %struct.Proto** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @luaF_getlocalname(%struct.Proto* %18, i32 %20, i32 %21)
  %23 = load i8**, i8*** %9, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i8**, i8*** %9, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8** %5, align 8
  br label %161

; <label>:28:                                     ; preds = %4
  %29 = load %struct.Proto*, %struct.Proto** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @findsetreg(%struct.Proto* %29, i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %160

; <label>:35:                                     ; preds = %28
  %36 = load %struct.Proto*, %struct.Proto** %6, align 8
  %37 = getelementptr inbounds %struct.Proto, %struct.Proto* %36, i32 0, i32 16
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = lshr i32 %43, 0
  %45 = and i32 %44, 127
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  switch i32 %46, label %158 [
    i32 0, label %47
    i32 9, label %63
    i32 10, label %74
    i32 11, label %86
    i32 12, label %88
    i32 7, label %99
    i32 3, label %106
    i32 4, label %106
    i32 18, label %153
  ]

; <label>:47:                                     ; preds = %35
  %48 = load i32, i32* %11, align 4
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %11, align 4
  %53 = lshr i32 %52, 7
  %54 = and i32 %53, 255
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %62

; <label>:56:                                     ; preds = %47
  %57 = load %struct.Proto*, %struct.Proto** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i8**, i8*** %9, align 8
  %61 = call i8* @getobjname(%struct.Proto* %57, i32 %58, i32 %59, i8** %60)
  store i8* %61, i8** %5, align 8
  br label %161

; <label>:62:                                     ; preds = %47
  br label %159

; <label>:63:                                     ; preds = %35
  %64 = load i32, i32* %11, align 4
  %65 = lshr i32 %64, 24
  %66 = and i32 %65, 255
  store i32 %66, i32* %14, align 4
  %67 = load %struct.Proto*, %struct.Proto** %6, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i8**, i8*** %9, align 8
  call void @kname(%struct.Proto* %67, i32 %68, i8** %69)
  %70 = load %struct.Proto*, %struct.Proto** %6, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i8* @gxf(%struct.Proto* %70, i32 %71, i32 %72, i32 1)
  store i8* %73, i8** %5, align 8
  br label %161

; <label>:74:                                     ; preds = %35
  %75 = load i32, i32* %11, align 4
  %76 = lshr i32 %75, 24
  %77 = and i32 %76, 255
  store i32 %77, i32* %15, align 4
  %78 = load %struct.Proto*, %struct.Proto** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i8**, i8*** %9, align 8
  call void @rname(%struct.Proto* %78, i32 %79, i32 %80, i8** %81)
  %82 = load %struct.Proto*, %struct.Proto** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i8* @gxf(%struct.Proto* %82, i32 %83, i32 %84, i32 0)
  store i8* %85, i8** %5, align 8
  br label %161

; <label>:86:                                     ; preds = %35
  %87 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8** %87, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8** %5, align 8
  br label %161

; <label>:88:                                     ; preds = %35
  %89 = load i32, i32* %11, align 4
  %90 = lshr i32 %89, 24
  %91 = and i32 %90, 255
  store i32 %91, i32* %16, align 4
  %92 = load %struct.Proto*, %struct.Proto** %6, align 8
  %93 = load i32, i32* %16, align 4
  %94 = load i8**, i8*** %9, align 8
  call void @kname(%struct.Proto* %92, i32 %93, i8** %94)
  %95 = load %struct.Proto*, %struct.Proto** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i8* @gxf(%struct.Proto* %95, i32 %96, i32 %97, i32 0)
  store i8* %98, i8** %5, align 8
  br label %161

; <label>:99:                                     ; preds = %35
  %100 = load %struct.Proto*, %struct.Proto** %6, align 8
  %101 = load i32, i32* %11, align 4
  %102 = lshr i32 %101, 16
  %103 = and i32 %102, 255
  %104 = call i8* @upvalname(%struct.Proto* %100, i32 %103)
  %105 = load i8**, i8*** %9, align 8
  store i8* %104, i8** %105, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8** %5, align 8
  br label %161

; <label>:106:                                    ; preds = %35, %35
  %107 = load i32, i32* %12, align 4
  %108 = icmp eq i32 %107, 3
  br i1 %108, label %109, label %113

; <label>:109:                                    ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = lshr i32 %110, 15
  %112 = and i32 %111, 131071
  br label %124

; <label>:113:                                    ; preds = %106
  %114 = load %struct.Proto*, %struct.Proto** %6, align 8
  %115 = getelementptr inbounds %struct.Proto, %struct.Proto* %114, i32 0, i32 16
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = lshr i32 %121, 7
  %123 = and i32 %122, 33554431
  br label %124

; <label>:124:                                    ; preds = %113, %109
  %125 = phi i32 [ %112, %109 ], [ %123, %113 ]
  store i32 %125, i32* %17, align 4
  %126 = load %struct.Proto*, %struct.Proto** %6, align 8
  %127 = getelementptr inbounds %struct.Proto, %struct.Proto* %126, i32 0, i32 15
  %128 = load %struct.TValue*, %struct.TValue** %127, align 8
  %129 = load i32, i32* %17, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TValue, %struct.TValue* %128, i64 %130
  %132 = getelementptr inbounds %struct.TValue, %struct.TValue* %131, i32 0, i32 1
  %133 = load i8, i8* %132, align 8
  %134 = zext i8 %133 to i32
  %135 = and i32 %134, 15
  %136 = icmp eq i32 %135, 4
  br i1 %136, label %137, label %152

; <label>:137:                                    ; preds = %124
  %138 = load %struct.Proto*, %struct.Proto** %6, align 8
  %139 = getelementptr inbounds %struct.Proto, %struct.Proto* %138, i32 0, i32 15
  %140 = load %struct.TValue*, %struct.TValue** %139, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TValue, %struct.TValue* %140, i64 %142
  %144 = getelementptr inbounds %struct.TValue, %struct.TValue* %143, i32 0, i32 0
  %145 = bitcast %union.Value* %144 to %struct.GCObject**
  %146 = load %struct.GCObject*, %struct.GCObject** %145, align 8
  %147 = bitcast %struct.GCObject* %146 to %union.GCUnion*
  %148 = bitcast %union.GCUnion* %147 to %struct.TString*
  %149 = bitcast %struct.TString* %148 to i8*
  %150 = getelementptr inbounds i8, i8* %149, i64 24
  %151 = load i8**, i8*** %9, align 8
  store i8* %150, i8** %151, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8** %5, align 8
  br label %161

; <label>:152:                                    ; preds = %124
  br label %159

; <label>:153:                                    ; preds = %35
  %154 = load %struct.Proto*, %struct.Proto** %6, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i8**, i8*** %9, align 8
  call void @rkname(%struct.Proto* %154, i32 %155, i32 %156, i8** %157)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8** %5, align 8
  br label %161

; <label>:158:                                    ; preds = %35
  br label %159

; <label>:159:                                    ; preds = %158, %152, %62
  br label %160

; <label>:160:                                    ; preds = %159, %28
  store i8* null, i8** %5, align 8
  br label %161

; <label>:161:                                    ; preds = %160, %153, %137, %99, %88, %86, %74, %63, %56, %27
  %162 = load i8*, i8** %5, align 8
  ret i8* %162
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
  %16 = alloca i32, align 4
  store %struct.Proto* %0, %struct.Proto** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %17

; <label>:17:                                     ; preds = %105, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %108

; <label>:21:                                     ; preds = %17
  %22 = load %struct.Proto*, %struct.Proto** %4, align 8
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 16
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = lshr i32 %29, 0
  %31 = and i32 %30, 127
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = lshr i32 %32, 7
  %34 = and i32 %33, 255
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  switch i32 %35, label %82 [
    i32 6, label %36
    i32 77, label %52
    i32 69, label %58
    i32 70, label %58
    i32 57, label %63
  ]

; <label>:36:                                     ; preds = %21
  %37 = load i32, i32* %10, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %49

; <label>:43:                                     ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %45, %46
  %48 = icmp sle i32 %44, %47
  br label %49

; <label>:49:                                     ; preds = %43, %36
  %50 = phi i1 [ false, %36 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %13, align 4
  br label %97

; <label>:52:                                     ; preds = %21
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 2
  %56 = icmp sge i32 %53, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %13, align 4
  br label %97

; <label>:58:                                     ; preds = %21, %21
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp sge i32 %59, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %13, align 4
  br label %97

; <label>:63:                                     ; preds = %21
  %64 = load i32, i32* %10, align 4
  %65 = lshr i32 %64, 7
  %66 = and i32 %65, 33554431
  %67 = sub nsw i32 %66, 16777215
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %69, %70
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %81

; <label>:75:                                     ; preds = %63
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %81

; <label>:79:                                     ; preds = %75
  %80 = load i32, i32* %16, align 4
  store i32 %80, i32* %9, align 4
  br label %81

; <label>:81:                                     ; preds = %79, %75, %63
  store i32 0, i32* %13, align 4
  br label %97

; <label>:82:                                     ; preds = %21
  %83 = load i32, i32* %11, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [84 x i8], [84 x i8]* @luaP_opmodes, i64 0, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

; <label>:90:                                     ; preds = %82
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp eq i32 %91, %92
  br label %94

; <label>:94:                                     ; preds = %90, %82
  %95 = phi i1 [ false, %82 ], [ %93, %90 ]
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %13, align 4
  br label %97

; <label>:97:                                     ; preds = %94, %81, %58, %52, %49
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

; <label>:100:                                    ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @filterpc(i32 %101, i32 %102)
  store i32 %103, i32* %8, align 4
  br label %104

; <label>:104:                                    ; preds = %100, %97
  br label %105

; <label>:105:                                    ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %17

; <label>:108:                                    ; preds = %17
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kname(%struct.Proto*, i32, i8**) #0 {
  %4 = alloca %struct.Proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TValue*, align 8
  store %struct.Proto* %0, %struct.Proto** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %8 = load %struct.Proto*, %struct.Proto** %4, align 8
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i32 0, i32 15
  %10 = load %struct.TValue*, %struct.TValue** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %10, i64 %12
  store %struct.TValue* %13, %struct.TValue** %7, align 8
  %14 = load %struct.TValue*, %struct.TValue** %7, align 8
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 1
  %16 = load i8, i8* %15, align 8
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 15
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %29

; <label>:20:                                     ; preds = %3
  %21 = load %struct.TValue*, %struct.TValue** %7, align 8
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %21, i32 0, i32 0
  %23 = bitcast %union.Value* %22 to %struct.GCObject**
  %24 = load %struct.GCObject*, %struct.GCObject** %23, align 8
  %25 = bitcast %struct.GCObject* %24 to %union.GCUnion*
  %26 = bitcast %union.GCUnion* %25 to %struct.TString*
  %27 = bitcast %struct.TString* %26 to i8*
  %28 = getelementptr inbounds i8, i8* %27, i64 24
  br label %30

; <label>:29:                                     ; preds = %3
  br label %30

; <label>:30:                                     ; preds = %29, %20
  %31 = phi i8* [ %28, %20 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), %29 ]
  %32 = load i8**, i8*** %6, align 8
  store i8* %31, i8** %32, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gxf(%struct.Proto*, i32, i32, i32) #0 {
  %5 = alloca %struct.Proto*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.Proto* %0, %struct.Proto** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %4
  %17 = load %struct.Proto*, %struct.Proto** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i8* @upvalname(%struct.Proto* %17, i32 %18)
  store i8* %19, i8** %10, align 8
  br label %25

; <label>:20:                                     ; preds = %4
  %21 = load %struct.Proto*, %struct.Proto** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i8* @getobjname(%struct.Proto* %21, i32 %22, i32 %23, i8** %10)
  br label %25

; <label>:25:                                     ; preds = %20, %16
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)) #7
  %31 = icmp eq i32 %30, 0
  br label %32

; <label>:32:                                     ; preds = %28, %25
  %33 = phi i1 [ false, %25 ], [ %31, %28 ]
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)
  ret i8* %35
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rname(%struct.Proto*, i32, i32, i8**) #0 {
  %5 = alloca %struct.Proto*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  store %struct.Proto* %0, %struct.Proto** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %10 = load %struct.Proto*, %struct.Proto** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i8**, i8*** %8, align 8
  %14 = call i8* @getobjname(%struct.Proto* %10, i32 %11, i32 %12, i8** %13)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %4
  %18 = load i8*, i8** %9, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 99
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %17, %4
  %23 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8** %23, align 8
  br label %24

; <label>:24:                                     ; preds = %22, %17
  ret void
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
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i32 0, i32 18
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
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8** %3, align 8
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
define internal void @rkname(%struct.Proto*, i32, i32, i8**) #0 {
  %5 = alloca %struct.Proto*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store %struct.Proto* %0, %struct.Proto** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = lshr i32 %10, 24
  %12 = and i32 %11, 255
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = lshr i32 %13, 15
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %4
  %18 = load %struct.Proto*, %struct.Proto** %5, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i8**, i8*** %8, align 8
  call void @kname(%struct.Proto* %18, i32 %19, i8** %20)
  br label %26

; <label>:21:                                     ; preds = %4
  %22 = load %struct.Proto*, %struct.Proto** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i8**, i8*** %8, align 8
  call void @rname(%struct.Proto* %22, i32 %23, i32 %24, i8** %25)
  br label %26

; <label>:26:                                     ; preds = %21, %17
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

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nextline(%struct.Proto*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Proto*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Proto* %0, %struct.Proto** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.Proto*, %struct.Proto** %5, align 8
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i32 0, i32 19
  %10 = load i8*, i8** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, -128
  br i1 %16, label %17, label %28

; <label>:17:                                     ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.Proto*, %struct.Proto** %5, align 8
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i32 0, i32 19
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = add nsw i32 %18, %26
  store i32 %27, i32* %4, align 4
  br label %32

; <label>:28:                                     ; preds = %3
  %29 = load %struct.Proto*, %struct.Proto** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @luaG_getfuncline(%struct.Proto* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

; <label>:32:                                     ; preds = %28, %17
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getupvalname(%struct.CallInfo*, %struct.TValue*, i8**) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.CallInfo*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.LClosure*, align 8
  %9 = alloca i32, align 4
  store %struct.CallInfo* %0, %struct.CallInfo** %5, align 8
  store %struct.TValue* %1, %struct.TValue** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %11 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %10, i32 0, i32 0
  %12 = load %union.StackValue*, %union.StackValue** %11, align 8
  %13 = bitcast %union.StackValue* %12 to %struct.TValue*
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %13, i32 0, i32 0
  %15 = bitcast %union.Value* %14 to %struct.GCObject**
  %16 = load %struct.GCObject*, %struct.GCObject** %15, align 8
  %17 = bitcast %struct.GCObject* %16 to %union.GCUnion*
  %18 = bitcast %union.GCUnion* %17 to %union.Closure*
  %19 = bitcast %union.Closure* %18 to %struct.LClosure*
  store %struct.LClosure* %19, %struct.LClosure** %8, align 8
  store i32 0, i32* %9, align 4
  br label %20

; <label>:20:                                     ; preds = %46, %3
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.LClosure*, %struct.LClosure** %8, align 8
  %23 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %22, i32 0, i32 3
  %24 = load i8, i8* %23, align 2
  %25 = zext i8 %24 to i32
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %49

; <label>:27:                                     ; preds = %20
  %28 = load %struct.LClosure*, %struct.LClosure** %8, align 8
  %29 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %28, i32 0, i32 6
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %29, i64 0, i64 %31
  %33 = load %struct.UpVal*, %struct.UpVal** %32, align 8
  %34 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %33, i32 0, i32 3
  %35 = load %struct.TValue*, %struct.TValue** %34, align 8
  %36 = load %struct.TValue*, %struct.TValue** %6, align 8
  %37 = icmp eq %struct.TValue* %35, %36
  br i1 %37, label %38, label %45

; <label>:38:                                     ; preds = %27
  %39 = load %struct.LClosure*, %struct.LClosure** %8, align 8
  %40 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %39, i32 0, i32 5
  %41 = load %struct.Proto*, %struct.Proto** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i8* @upvalname(%struct.Proto* %41, i32 %42)
  %44 = load i8**, i8*** %7, align 8
  store i8* %43, i8** %44, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8** %4, align 8
  br label %50

; <label>:45:                                     ; preds = %27
  br label %46

; <label>:46:                                     ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %20

; <label>:49:                                     ; preds = %20
  store i8* null, i8** %4, align 8
  br label %50

; <label>:50:                                     ; preds = %49, %38
  %51 = load i8*, i8** %4, align 8
  ret i8* %51
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isinstack(%struct.CallInfo*, %struct.TValue*) #0 {
  %3 = alloca %struct.CallInfo*, align 8
  %4 = alloca %struct.TValue*, align 8
  %5 = alloca %union.StackValue*, align 8
  %6 = alloca i64, align 8
  store %struct.CallInfo* %0, %struct.CallInfo** %3, align 8
  store %struct.TValue* %1, %struct.TValue** %4, align 8
  %7 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7, i32 0, i32 0
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8
  %10 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 1
  store %union.StackValue* %10, %union.StackValue** %5, align 8
  %11 = load %struct.TValue*, %struct.TValue** %4, align 8
  %12 = bitcast %struct.TValue* %11 to %union.StackValue*
  %13 = load %union.StackValue*, %union.StackValue** %5, align 8
  %14 = ptrtoint %union.StackValue* %12 to i64
  %15 = ptrtoint %union.StackValue* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 16
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp sle i64 0, %18
  br i1 %19, label %20, label %38

; <label>:20:                                     ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %23 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %22, i32 0, i32 1
  %24 = load %union.StackValue*, %union.StackValue** %23, align 8
  %25 = load %union.StackValue*, %union.StackValue** %5, align 8
  %26 = ptrtoint %union.StackValue* %24 to i64
  %27 = ptrtoint %union.StackValue* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 16
  %30 = icmp slt i64 %21, %29
  br i1 %30, label %31, label %38

; <label>:31:                                     ; preds = %20
  %32 = load %union.StackValue*, %union.StackValue** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %union.StackValue, %union.StackValue* %32, i64 %33
  %35 = bitcast %union.StackValue* %34 to %struct.TValue*
  %36 = load %struct.TValue*, %struct.TValue** %4, align 8
  %37 = icmp eq %struct.TValue* %35, %36
  br label %38

; <label>:38:                                     ; preds = %31, %20, %2
  %39 = phi i1 [ false, %20 ], [ false, %2 ], [ %37, %31 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
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
