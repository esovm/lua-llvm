; ModuleID = 'lapi.c'
source_filename = "lapi.c"
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
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.TValue] }
%struct.Udata = type { %struct.GCObject*, i8, i8, i16, i64, %struct.Table*, %struct.GCObject*, [1 x %union.UValue] }
%union.UValue = type { %struct.TValue }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.CallS = type { %union.StackValue*, i32 }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }

@lua_ident = constant [129 x i8] c"$LuaVersion: Lua 5.4.0  Copyright (C) 1994-2019 Lua.org, PUC-Rio $$LuaAuthors: R. Ierusalimschy, L. H. de Figueiredo, W. Celes $\00", align 16
@luaT_typenames_ = external hidden constant [12 x i8*], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"(no name)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_checkstack(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.CallInfo*, align 8
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 8
  %10 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  store %struct.CallInfo* %10, %struct.CallInfo** %6, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 10
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 6
  %16 = load %union.StackValue*, %union.StackValue** %15, align 8
  %17 = ptrtoint %union.StackValue* %13 to i64
  %18 = ptrtoint %union.StackValue* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 16
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp sgt i64 %20, %22
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %2
  store i32 1, i32* %5, align 4
  br label %48

; <label>:25:                                     ; preds = %2
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 6
  %28 = load %union.StackValue*, %union.StackValue** %27, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 11
  %31 = load %union.StackValue*, %union.StackValue** %30, align 8
  %32 = ptrtoint %union.StackValue* %28 to i64
  %33 = ptrtoint %union.StackValue* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 16
  %36 = trunc i64 %35 to i32
  %37 = add nsw i32 %36, 5
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 1000000, %39
  %41 = icmp sgt i32 %38, %40
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %25
  store i32 0, i32* %5, align 4
  br label %47

; <label>:43:                                     ; preds = %25
  %44 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @luaD_growstack(%struct.lua_State* %44, i32 %45, i32 0)
  store i32 %46, i32* %5, align 4
  br label %47

; <label>:47:                                     ; preds = %43, %42
  br label %48

; <label>:48:                                     ; preds = %47, %24
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

; <label>:51:                                     ; preds = %48
  %52 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %53 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %52, i32 0, i32 1
  %54 = load %union.StackValue*, %union.StackValue** %53, align 8
  %55 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %55, i32 0, i32 6
  %57 = load %union.StackValue*, %union.StackValue** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %union.StackValue, %union.StackValue* %57, i64 %59
  %61 = icmp ult %union.StackValue* %54, %60
  br i1 %61, label %62, label %71

; <label>:62:                                     ; preds = %51
  %63 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %63, i32 0, i32 6
  %65 = load %union.StackValue*, %union.StackValue** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %union.StackValue, %union.StackValue* %65, i64 %67
  %69 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %70 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %69, i32 0, i32 1
  store %union.StackValue* %68, %union.StackValue** %70, align 8
  br label %71

; <label>:71:                                     ; preds = %62, %51, %48
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare hidden i32 @luaD_growstack(%struct.lua_State*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_State* %1, %struct.lua_State** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %12 = icmp eq %struct.lua_State* %10, %11
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %3
  br label %57

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 6
  %18 = load %union.StackValue*, %union.StackValue** %17, align 8
  %19 = sext i32 %15 to i64
  %20 = sub i64 0, %19
  %21 = getelementptr inbounds %union.StackValue, %union.StackValue* %18, i64 %20
  store %union.StackValue* %21, %union.StackValue** %17, align 8
  store i32 0, i32* %7, align 4
  br label %22

; <label>:22:                                     ; preds = %54, %14
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %57

; <label>:26:                                     ; preds = %22
  %27 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 6
  %29 = load %union.StackValue*, %union.StackValue** %28, align 8
  %30 = bitcast %union.StackValue* %29 to %struct.TValue*
  store %struct.TValue* %30, %struct.TValue** %8, align 8
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 6
  %33 = load %union.StackValue*, %union.StackValue** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %union.StackValue, %union.StackValue* %33, i64 %35
  %37 = bitcast %union.StackValue* %36 to %struct.TValue*
  store %struct.TValue* %37, %struct.TValue** %9, align 8
  %38 = load %struct.TValue*, %struct.TValue** %8, align 8
  %39 = getelementptr inbounds %struct.TValue, %struct.TValue* %38, i32 0, i32 0
  %40 = load %struct.TValue*, %struct.TValue** %9, align 8
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i32 0, i32 0
  %42 = bitcast %union.Value* %39 to i8*
  %43 = bitcast %union.Value* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 8, i32 8, i1 false)
  %44 = load %struct.TValue*, %struct.TValue** %9, align 8
  %45 = getelementptr inbounds %struct.TValue, %struct.TValue* %44, i32 0, i32 1
  %46 = load i8, i8* %45, align 8
  %47 = load %struct.TValue*, %struct.TValue** %8, align 8
  %48 = getelementptr inbounds %struct.TValue, %struct.TValue* %47, i32 0, i32 1
  store i8 %46, i8* %48, align 8
  %49 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %50 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %51 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %50, i32 0, i32 6
  %52 = load %union.StackValue*, %union.StackValue** %51, align 8
  %53 = getelementptr inbounds %union.StackValue, %union.StackValue* %52, i32 1
  store %union.StackValue* %53, %union.StackValue** %51, align 8
  br label %54

; <label>:54:                                     ; preds = %26
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %22

; <label>:57:                                     ; preds = %13, %22
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State*, i32 (%struct.lua_State*)*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32 (%struct.lua_State*)*, align 8
  %5 = alloca i32 (%struct.lua_State*)*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 (%struct.lua_State*)* %1, i32 (%struct.lua_State*)** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 7
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 37
  %10 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %9, align 8
  store i32 (%struct.lua_State*)* %10, i32 (%struct.lua_State*)** %5, align 8
  %11 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %4, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 7
  %14 = load %struct.global_State*, %struct.global_State** %13, align 8
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %14, i32 0, i32 37
  store i32 (%struct.lua_State*)* %11, i32 (%struct.lua_State*)** %15, align 8
  %16 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %5, align 8
  ret i32 (%struct.lua_State*)* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define double @lua_version(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  ret double 5.040000e+02
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_absindex(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %8, -1001000
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %7, %2
  %11 = load i32, i32* %4, align 4
  br label %28

; <label>:12:                                     ; preds = %7
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 6
  %15 = load %union.StackValue*, %union.StackValue** %14, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 8
  %18 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %19 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %18, i32 0, i32 0
  %20 = load %union.StackValue*, %union.StackValue** %19, align 8
  %21 = ptrtoint %union.StackValue* %15 to i64
  %22 = ptrtoint %union.StackValue* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 16
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %25, %26
  br label %28

; <label>:28:                                     ; preds = %12, %10
  %29 = phi i32 [ %11, %10 ], [ %27, %12 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_gettop(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 6
  %5 = load %union.StackValue*, %union.StackValue** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 8
  %8 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8, i32 0, i32 0
  %10 = load %union.StackValue*, %union.StackValue** %9, align 8
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 1
  %12 = ptrtoint %union.StackValue* %5 to i64
  %13 = ptrtoint %union.StackValue* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 16
  %16 = trunc i64 %15 to i32
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_settop(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.StackValue*, align 8
  %6 = alloca %union.StackValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 8
  %9 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i32 0, i32 0
  %11 = load %union.StackValue*, %union.StackValue** %10, align 8
  store %union.StackValue* %11, %union.StackValue** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %37

; <label>:14:                                     ; preds = %2
  %15 = load %union.StackValue*, %union.StackValue** %5, align 8
  %16 = getelementptr inbounds %union.StackValue, %union.StackValue* %15, i64 1
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %union.StackValue, %union.StackValue* %16, i64 %18
  store %union.StackValue* %19, %union.StackValue** %6, align 8
  br label %20

; <label>:20:                                     ; preds = %26, %14
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 6
  %23 = load %union.StackValue*, %union.StackValue** %22, align 8
  %24 = load %union.StackValue*, %union.StackValue** %6, align 8
  %25 = icmp ult %union.StackValue* %23, %24
  br i1 %25, label %26, label %33

; <label>:26:                                     ; preds = %20
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 6
  %29 = load %union.StackValue*, %union.StackValue** %28, align 8
  %30 = getelementptr inbounds %union.StackValue, %union.StackValue* %29, i32 1
  store %union.StackValue* %30, %union.StackValue** %28, align 8
  %31 = bitcast %union.StackValue* %29 to %struct.TValue*
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i32 0, i32 1
  store i8 0, i8* %32, align 8
  br label %20

; <label>:33:                                     ; preds = %20
  %34 = load %union.StackValue*, %union.StackValue** %6, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 6
  store %union.StackValue* %34, %union.StackValue** %36, align 8
  br label %45

; <label>:37:                                     ; preds = %2
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 6
  %42 = load %union.StackValue*, %union.StackValue** %41, align 8
  %43 = sext i32 %39 to i64
  %44 = getelementptr inbounds %union.StackValue, %union.StackValue* %42, i64 %43
  store %union.StackValue* %44, %union.StackValue** %41, align 8
  br label %45

; <label>:45:                                     ; preds = %37, %33
  %46 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %47 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 6
  %49 = load %union.StackValue*, %union.StackValue** %48, align 8
  %50 = call i32 @luaF_close(%struct.lua_State* %46, %union.StackValue* %49, i32 0)
  ret void
}

declare hidden i32 @luaF_close(%struct.lua_State*, %union.StackValue*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_rotate(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.StackValue*, align 8
  %8 = alloca %union.StackValue*, align 8
  %9 = alloca %union.StackValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 6
  %12 = load %union.StackValue*, %union.StackValue** %11, align 8
  %13 = getelementptr inbounds %union.StackValue, %union.StackValue* %12, i64 -1
  store %union.StackValue* %13, %union.StackValue** %8, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %union.StackValue* @index2stack(%struct.lua_State* %14, i32 %15)
  store %union.StackValue* %16, %union.StackValue** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %25

; <label>:19:                                     ; preds = %3
  %20 = load %union.StackValue*, %union.StackValue** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 0, %22
  %24 = getelementptr inbounds %union.StackValue, %union.StackValue* %20, i64 %23
  br label %32

; <label>:25:                                     ; preds = %3
  %26 = load %union.StackValue*, %union.StackValue** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds %union.StackValue, %union.StackValue* %26, i64 %29
  %31 = getelementptr inbounds %union.StackValue, %union.StackValue* %30, i64 -1
  br label %32

; <label>:32:                                     ; preds = %25, %19
  %33 = phi %union.StackValue* [ %24, %19 ], [ %31, %25 ]
  store %union.StackValue* %33, %union.StackValue** %9, align 8
  %34 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %35 = load %union.StackValue*, %union.StackValue** %7, align 8
  %36 = load %union.StackValue*, %union.StackValue** %9, align 8
  call void @reverse(%struct.lua_State* %34, %union.StackValue* %35, %union.StackValue* %36)
  %37 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %38 = load %union.StackValue*, %union.StackValue** %9, align 8
  %39 = getelementptr inbounds %union.StackValue, %union.StackValue* %38, i64 1
  %40 = load %union.StackValue*, %union.StackValue** %8, align 8
  call void @reverse(%struct.lua_State* %37, %union.StackValue* %39, %union.StackValue* %40)
  %41 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %42 = load %union.StackValue*, %union.StackValue** %7, align 8
  %43 = load %union.StackValue*, %union.StackValue** %8, align 8
  call void @reverse(%struct.lua_State* %41, %union.StackValue* %42, %union.StackValue* %43)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.StackValue* @index2stack(%struct.lua_State*, i32) #0 {
  %3 = alloca %union.StackValue*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.CallInfo*, align 8
  %7 = alloca %union.StackValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 8
  %10 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  store %struct.CallInfo* %10, %struct.CallInfo** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %2
  %14 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %14, i32 0, i32 0
  %16 = load %union.StackValue*, %union.StackValue** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %union.StackValue, %union.StackValue* %16, i64 %18
  store %union.StackValue* %19, %union.StackValue** %7, align 8
  %20 = load %union.StackValue*, %union.StackValue** %7, align 8
  store %union.StackValue* %20, %union.StackValue** %3, align 8
  br label %28

; <label>:21:                                     ; preds = %2
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 6
  %24 = load %union.StackValue*, %union.StackValue** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %union.StackValue, %union.StackValue* %24, i64 %26
  store %union.StackValue* %27, %union.StackValue** %3, align 8
  br label %28

; <label>:28:                                     ; preds = %21, %13
  %29 = load %union.StackValue*, %union.StackValue** %3, align 8
  ret %union.StackValue* %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reverse(%struct.lua_State*, %union.StackValue*, %union.StackValue*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %union.StackValue*, align 8
  %6 = alloca %union.StackValue*, align 8
  %7 = alloca %struct.TValue, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca %struct.TValue*, align 8
  %12 = alloca %struct.TValue*, align 8
  %13 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %union.StackValue* %1, %union.StackValue** %5, align 8
  store %union.StackValue* %2, %union.StackValue** %6, align 8
  br label %14

; <label>:14:                                     ; preds = %63, %3
  %15 = load %union.StackValue*, %union.StackValue** %5, align 8
  %16 = load %union.StackValue*, %union.StackValue** %6, align 8
  %17 = icmp ult %union.StackValue* %15, %16
  br i1 %17, label %18, label %68

; <label>:18:                                     ; preds = %14
  store %struct.TValue* %7, %struct.TValue** %8, align 8
  %19 = load %union.StackValue*, %union.StackValue** %5, align 8
  %20 = bitcast %union.StackValue* %19 to %struct.TValue*
  store %struct.TValue* %20, %struct.TValue** %9, align 8
  %21 = load %struct.TValue*, %struct.TValue** %8, align 8
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %21, i32 0, i32 0
  %23 = load %struct.TValue*, %struct.TValue** %9, align 8
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %23, i32 0, i32 0
  %25 = bitcast %union.Value* %22 to i8*
  %26 = bitcast %union.Value* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 8, i32 8, i1 false)
  %27 = load %struct.TValue*, %struct.TValue** %9, align 8
  %28 = getelementptr inbounds %struct.TValue, %struct.TValue* %27, i32 0, i32 1
  %29 = load i8, i8* %28, align 8
  %30 = load %struct.TValue*, %struct.TValue** %8, align 8
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %30, i32 0, i32 1
  store i8 %29, i8* %31, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %33 = load %union.StackValue*, %union.StackValue** %5, align 8
  %34 = bitcast %union.StackValue* %33 to %struct.TValue*
  store %struct.TValue* %34, %struct.TValue** %10, align 8
  %35 = load %union.StackValue*, %union.StackValue** %6, align 8
  %36 = bitcast %union.StackValue* %35 to %struct.TValue*
  store %struct.TValue* %36, %struct.TValue** %11, align 8
  %37 = load %struct.TValue*, %struct.TValue** %10, align 8
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i32 0, i32 0
  %39 = load %struct.TValue*, %struct.TValue** %11, align 8
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %39, i32 0, i32 0
  %41 = bitcast %union.Value* %38 to i8*
  %42 = bitcast %union.Value* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 8, i32 8, i1 false)
  %43 = load %struct.TValue*, %struct.TValue** %11, align 8
  %44 = getelementptr inbounds %struct.TValue, %struct.TValue* %43, i32 0, i32 1
  %45 = load i8, i8* %44, align 8
  %46 = load %struct.TValue*, %struct.TValue** %10, align 8
  %47 = getelementptr inbounds %struct.TValue, %struct.TValue* %46, i32 0, i32 1
  store i8 %45, i8* %47, align 8
  %48 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %49 = load %union.StackValue*, %union.StackValue** %6, align 8
  %50 = bitcast %union.StackValue* %49 to %struct.TValue*
  store %struct.TValue* %50, %struct.TValue** %12, align 8
  store %struct.TValue* %7, %struct.TValue** %13, align 8
  %51 = load %struct.TValue*, %struct.TValue** %12, align 8
  %52 = getelementptr inbounds %struct.TValue, %struct.TValue* %51, i32 0, i32 0
  %53 = load %struct.TValue*, %struct.TValue** %13, align 8
  %54 = getelementptr inbounds %struct.TValue, %struct.TValue* %53, i32 0, i32 0
  %55 = bitcast %union.Value* %52 to i8*
  %56 = bitcast %union.Value* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 8, i32 8, i1 false)
  %57 = load %struct.TValue*, %struct.TValue** %13, align 8
  %58 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i32 0, i32 1
  %59 = load i8, i8* %58, align 8
  %60 = load %struct.TValue*, %struct.TValue** %12, align 8
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i32 0, i32 1
  store i8 %59, i8* %61, align 8
  %62 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  br label %63

; <label>:63:                                     ; preds = %18
  %64 = load %union.StackValue*, %union.StackValue** %5, align 8
  %65 = getelementptr inbounds %union.StackValue, %union.StackValue* %64, i32 1
  store %union.StackValue* %65, %union.StackValue** %5, align 8
  %66 = load %union.StackValue*, %union.StackValue** %6, align 8
  %67 = getelementptr inbounds %union.StackValue, %union.StackValue* %66, i32 -1
  store %union.StackValue* %67, %union.StackValue** %6, align 8
  br label %14

; <label>:68:                                     ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_copy(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TValue* @index2value(%struct.lua_State* %11, i32 %12)
  store %struct.TValue* %13, %struct.TValue** %7, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.TValue* @index2value(%struct.lua_State* %14, i32 %15)
  store %struct.TValue* %16, %struct.TValue** %8, align 8
  %17 = load %struct.TValue*, %struct.TValue** %8, align 8
  store %struct.TValue* %17, %struct.TValue** %9, align 8
  %18 = load %struct.TValue*, %struct.TValue** %7, align 8
  store %struct.TValue* %18, %struct.TValue** %10, align 8
  %19 = load %struct.TValue*, %struct.TValue** %9, align 8
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i32 0, i32 0
  %21 = load %struct.TValue*, %struct.TValue** %10, align 8
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %21, i32 0, i32 0
  %23 = bitcast %union.Value* %20 to i8*
  %24 = bitcast %union.Value* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 8, i32 8, i1 false)
  %25 = load %struct.TValue*, %struct.TValue** %10, align 8
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i32 0, i32 1
  %27 = load i8, i8* %26, align 8
  %28 = load %struct.TValue*, %struct.TValue** %9, align 8
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i32 0, i32 1
  store i8 %27, i8* %29, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, -1001000
  br i1 %32, label %33, label %90

; <label>:33:                                     ; preds = %3
  %34 = load %struct.TValue*, %struct.TValue** %7, align 8
  %35 = getelementptr inbounds %struct.TValue, %struct.TValue* %34, i32 0, i32 1
  %36 = load i8, i8* %35, align 8
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 64
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %88

; <label>:40:                                     ; preds = %33
  %41 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i32 0, i32 8
  %43 = load %struct.CallInfo*, %struct.CallInfo** %42, align 8
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i32 0, i32 0
  %45 = load %union.StackValue*, %union.StackValue** %44, align 8
  %46 = bitcast %union.StackValue* %45 to %struct.TValue*
  %47 = getelementptr inbounds %struct.TValue, %struct.TValue* %46, i32 0, i32 0
  %48 = bitcast %union.Value* %47 to %struct.GCObject**
  %49 = load %struct.GCObject*, %struct.GCObject** %48, align 8
  %50 = bitcast %struct.GCObject* %49 to %union.GCUnion*
  %51 = bitcast %union.GCUnion* %50 to %union.Closure*
  %52 = bitcast %union.Closure* %51 to %struct.CClosure*
  %53 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %52, i32 0, i32 2
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %88

; <label>:58:                                     ; preds = %40
  %59 = load %struct.TValue*, %struct.TValue** %7, align 8
  %60 = getelementptr inbounds %struct.TValue, %struct.TValue* %59, i32 0, i32 0
  %61 = bitcast %union.Value* %60 to %struct.GCObject**
  %62 = load %struct.GCObject*, %struct.GCObject** %61, align 8
  %63 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %62, i32 0, i32 2
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 24
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %88

; <label>:68:                                     ; preds = %58
  %69 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %70 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %70, i32 0, i32 8
  %72 = load %struct.CallInfo*, %struct.CallInfo** %71, align 8
  %73 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %72, i32 0, i32 0
  %74 = load %union.StackValue*, %union.StackValue** %73, align 8
  %75 = bitcast %union.StackValue* %74 to %struct.TValue*
  %76 = getelementptr inbounds %struct.TValue, %struct.TValue* %75, i32 0, i32 0
  %77 = bitcast %union.Value* %76 to %struct.GCObject**
  %78 = load %struct.GCObject*, %struct.GCObject** %77, align 8
  %79 = bitcast %struct.GCObject* %78 to %union.GCUnion*
  %80 = bitcast %union.GCUnion* %79 to %union.Closure*
  %81 = bitcast %union.Closure* %80 to %struct.CClosure*
  %82 = bitcast %struct.CClosure* %81 to %union.GCUnion*
  %83 = bitcast %union.GCUnion* %82 to %struct.GCObject*
  %84 = load %struct.TValue*, %struct.TValue** %7, align 8
  %85 = getelementptr inbounds %struct.TValue, %struct.TValue* %84, i32 0, i32 0
  %86 = bitcast %union.Value* %85 to %struct.GCObject**
  %87 = load %struct.GCObject*, %struct.GCObject** %86, align 8
  call void @luaC_barrier_(%struct.lua_State* %69, %struct.GCObject* %83, %struct.GCObject* %87)
  br label %89

; <label>:88:                                     ; preds = %58, %40, %33
  br label %89

; <label>:89:                                     ; preds = %88, %68
  br label %90

; <label>:90:                                     ; preds = %89, %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TValue* @index2value(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.TValue*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.CallInfo*, align 8
  %7 = alloca %union.StackValue*, align 8
  %8 = alloca %struct.CClosure*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 8
  %11 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  store %struct.CallInfo* %11, %struct.CallInfo** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %34

; <label>:14:                                     ; preds = %2
  %15 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %16 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %15, i32 0, i32 0
  %17 = load %union.StackValue*, %union.StackValue** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %17, i64 %19
  store %union.StackValue* %20, %union.StackValue** %7, align 8
  %21 = load %union.StackValue*, %union.StackValue** %7, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 6
  %24 = load %union.StackValue*, %union.StackValue** %23, align 8
  %25 = icmp uge %union.StackValue* %21, %24
  br i1 %25, label %26, label %31

; <label>:26:                                     ; preds = %14
  %27 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 7
  %29 = load %struct.global_State*, %struct.global_State** %28, align 8
  %30 = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 8
  store %struct.TValue* %30, %struct.TValue** %3, align 8
  br label %100

; <label>:31:                                     ; preds = %14
  %32 = load %union.StackValue*, %union.StackValue** %7, align 8
  %33 = bitcast %union.StackValue* %32 to %struct.TValue*
  store %struct.TValue* %33, %struct.TValue** %3, align 8
  br label %100

; <label>:34:                                     ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = icmp sle i32 %35, -1001000
  br i1 %36, label %45, label %37

; <label>:37:                                     ; preds = %34
  %38 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 6
  %40 = load %union.StackValue*, %union.StackValue** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %union.StackValue, %union.StackValue* %40, i64 %42
  %44 = bitcast %union.StackValue* %43 to %struct.TValue*
  store %struct.TValue* %44, %struct.TValue** %3, align 8
  br label %100

; <label>:45:                                     ; preds = %34
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, -1001000
  br i1 %47, label %48, label %53

; <label>:48:                                     ; preds = %45
  %49 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %49, i32 0, i32 7
  %51 = load %struct.global_State*, %struct.global_State** %50, align 8
  %52 = getelementptr inbounds %struct.global_State, %struct.global_State* %51, i32 0, i32 7
  store %struct.TValue* %52, %struct.TValue** %3, align 8
  br label %100

; <label>:53:                                     ; preds = %45
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 -1001000, %54
  store i32 %55, i32* %5, align 4
  %56 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %57 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %56, i32 0, i32 0
  %58 = load %union.StackValue*, %union.StackValue** %57, align 8
  %59 = bitcast %union.StackValue* %58 to %struct.TValue*
  %60 = getelementptr inbounds %struct.TValue, %struct.TValue* %59, i32 0, i32 1
  %61 = load i8, i8* %60, align 8
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %62, 38
  br i1 %63, label %64, label %69

; <label>:64:                                     ; preds = %53
  %65 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %65, i32 0, i32 7
  %67 = load %struct.global_State*, %struct.global_State** %66, align 8
  %68 = getelementptr inbounds %struct.global_State, %struct.global_State* %67, i32 0, i32 8
  store %struct.TValue* %68, %struct.TValue** %3, align 8
  br label %100

; <label>:69:                                     ; preds = %53
  %70 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %71 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %70, i32 0, i32 0
  %72 = load %union.StackValue*, %union.StackValue** %71, align 8
  %73 = bitcast %union.StackValue* %72 to %struct.TValue*
  %74 = getelementptr inbounds %struct.TValue, %struct.TValue* %73, i32 0, i32 0
  %75 = bitcast %union.Value* %74 to %struct.GCObject**
  %76 = load %struct.GCObject*, %struct.GCObject** %75, align 8
  %77 = bitcast %struct.GCObject* %76 to %union.GCUnion*
  %78 = bitcast %union.GCUnion* %77 to %union.Closure*
  %79 = bitcast %union.Closure* %78 to %struct.CClosure*
  store %struct.CClosure* %79, %struct.CClosure** %8, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.CClosure*, %struct.CClosure** %8, align 8
  %82 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %81, i32 0, i32 3
  %83 = load i8, i8* %82, align 2
  %84 = zext i8 %83 to i32
  %85 = icmp sle i32 %80, %84
  br i1 %85, label %86, label %93

; <label>:86:                                     ; preds = %69
  %87 = load %struct.CClosure*, %struct.CClosure** %8, align 8
  %88 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %87, i32 0, i32 6
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [1 x %struct.TValue], [1 x %struct.TValue]* %88, i64 0, i64 %91
  br label %98

; <label>:93:                                     ; preds = %69
  %94 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %95 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %94, i32 0, i32 7
  %96 = load %struct.global_State*, %struct.global_State** %95, align 8
  %97 = getelementptr inbounds %struct.global_State, %struct.global_State* %96, i32 0, i32 8
  br label %98

; <label>:98:                                     ; preds = %93, %86
  %99 = phi %struct.TValue* [ %92, %86 ], [ %97, %93 ]
  store %struct.TValue* %99, %struct.TValue** %3, align 8
  br label %100

; <label>:100:                                    ; preds = %98, %64, %48, %37, %31, %26
  %101 = load %struct.TValue*, %struct.TValue** %3, align 8
  ret %struct.TValue* %101
}

declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_pushvalue(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 6
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8
  %10 = bitcast %union.StackValue* %9 to %struct.TValue*
  store %struct.TValue* %10, %struct.TValue** %5, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.TValue* @index2value(%struct.lua_State* %11, i32 %12)
  store %struct.TValue* %13, %struct.TValue** %6, align 8
  %14 = load %struct.TValue*, %struct.TValue** %5, align 8
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 0
  %16 = load %struct.TValue*, %struct.TValue** %6, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 0
  %18 = bitcast %union.Value* %15 to i8*
  %19 = bitcast %union.Value* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 8, i32 8, i1 false)
  %20 = load %struct.TValue*, %struct.TValue** %6, align 8
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %20, i32 0, i32 1
  %22 = load i8, i8* %21, align 8
  %23 = load %struct.TValue*, %struct.TValue** %5, align 8
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %23, i32 0, i32 1
  store i8 %22, i8* %24, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 6
  %28 = load %union.StackValue*, %union.StackValue** %27, align 8
  %29 = getelementptr inbounds %union.StackValue, %union.StackValue* %28, i32 1
  store %union.StackValue* %29, %union.StackValue** %27, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_type(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TValue* @index2value(%struct.lua_State* %6, i32 %7)
  store %struct.TValue* %8, %struct.TValue** %5, align 8
  %9 = load %struct.TValue*, %struct.TValue** %5, align 8
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 8
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

; <label>:15:                                     ; preds = %2
  %16 = load %struct.TValue*, %struct.TValue** %5, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 7
  %19 = load %struct.global_State*, %struct.global_State** %18, align 8
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i32 0, i32 8
  %21 = icmp ne %struct.TValue* %16, %20
  br i1 %21, label %22, label %28

; <label>:22:                                     ; preds = %15, %2
  %23 = load %struct.TValue*, %struct.TValue** %5, align 8
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %23, i32 0, i32 1
  %25 = load i8, i8* %24, align 8
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 15
  br label %29

; <label>:28:                                     ; preds = %15
  br label %29

; <label>:29:                                     ; preds = %28, %22
  %30 = phi i32 [ %27, %22 ], [ -1, %28 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_typename(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [12 x i8*], [12 x i8*]* @luaT_typenames_, i64 0, i64 %8
  %10 = load i8*, i8** %9, align 8
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_iscfunction(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TValue* @index2value(%struct.lua_State* %6, i32 %7)
  store %struct.TValue* %8, %struct.TValue** %5, align 8
  %9 = load %struct.TValue*, %struct.TValue** %5, align 8
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 8
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 38
  br i1 %13, label %20, label %14

; <label>:14:                                     ; preds = %2
  %15 = load %struct.TValue*, %struct.TValue** %5, align 8
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 8
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 118
  br label %20

; <label>:20:                                     ; preds = %14, %2
  %21 = phi i1 [ true, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_isinteger(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TValue* @index2value(%struct.lua_State* %6, i32 %7)
  store %struct.TValue* %8, %struct.TValue** %5, align 8
  %9 = load %struct.TValue*, %struct.TValue** %5, align 8
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 8
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 35
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_isnumber(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.TValue* @index2value(%struct.lua_State* %7, i32 %8)
  store %struct.TValue* %9, %struct.TValue** %6, align 8
  %10 = load %struct.TValue*, %struct.TValue** %6, align 8
  %11 = getelementptr inbounds %struct.TValue, %struct.TValue* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 8
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, 19
  br i1 %14, label %15, label %20

; <label>:15:                                     ; preds = %2
  %16 = load %struct.TValue*, %struct.TValue** %6, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 0
  %18 = bitcast %union.Value* %17 to double*
  %19 = load double, double* %18, align 8
  store double %19, double* %5, align 8
  br label %23

; <label>:20:                                     ; preds = %2
  %21 = load %struct.TValue*, %struct.TValue** %6, align 8
  %22 = call i32 @luaV_tonumber_(%struct.TValue* %21, double* %5)
  br label %23

; <label>:23:                                     ; preds = %20, %15
  %24 = phi i32 [ 1, %15 ], [ %22, %20 ]
  ret i32 %24
}

declare hidden i32 @luaV_tonumber_(%struct.TValue*, double*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_isstring(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TValue* @index2value(%struct.lua_State* %6, i32 %7)
  store %struct.TValue* %8, %struct.TValue** %5, align 8
  %9 = load %struct.TValue*, %struct.TValue** %5, align 8
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 8
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 15
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %22, label %15

; <label>:15:                                     ; preds = %2
  %16 = load %struct.TValue*, %struct.TValue** %5, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 8
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 15
  %21 = icmp eq i32 %20, 3
  br label %22

; <label>:22:                                     ; preds = %15, %2
  %23 = phi i1 [ true, %2 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_isuserdata(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TValue* @index2value(%struct.lua_State* %6, i32 %7)
  store %struct.TValue* %8, %struct.TValue** %5, align 8
  %9 = load %struct.TValue*, %struct.TValue** %5, align 8
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 8
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 15
  %14 = icmp eq i32 %13, 7
  br i1 %14, label %21, label %15

; <label>:15:                                     ; preds = %2
  %16 = load %struct.TValue*, %struct.TValue** %5, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 8
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 2
  br label %21

; <label>:21:                                     ; preds = %15, %2
  %22 = phi i1 [ true, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_rawequal(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TValue* @index2value(%struct.lua_State* %9, i32 %10)
  store %struct.TValue* %11, %struct.TValue** %7, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.TValue* @index2value(%struct.lua_State* %12, i32 %13)
  store %struct.TValue* %14, %struct.TValue** %8, align 8
  %15 = load %struct.TValue*, %struct.TValue** %7, align 8
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 8
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %3
  %22 = load %struct.TValue*, %struct.TValue** %7, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 7
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i32 0, i32 8
  %27 = icmp ne %struct.TValue* %22, %26
  br i1 %27, label %28, label %46

; <label>:28:                                     ; preds = %21, %3
  %29 = load %struct.TValue*, %struct.TValue** %8, align 8
  %30 = getelementptr inbounds %struct.TValue, %struct.TValue* %29, i32 0, i32 1
  %31 = load i8, i8* %30, align 8
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

; <label>:35:                                     ; preds = %28
  %36 = load %struct.TValue*, %struct.TValue** %8, align 8
  %37 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 7
  %39 = load %struct.global_State*, %struct.global_State** %38, align 8
  %40 = getelementptr inbounds %struct.global_State, %struct.global_State* %39, i32 0, i32 8
  %41 = icmp ne %struct.TValue* %36, %40
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %35, %28
  %43 = load %struct.TValue*, %struct.TValue** %7, align 8
  %44 = load %struct.TValue*, %struct.TValue** %8, align 8
  %45 = call i32 @luaV_equalobj(%struct.lua_State* null, %struct.TValue* %43, %struct.TValue* %44)
  br label %47

; <label>:46:                                     ; preds = %35, %21
  br label %47

; <label>:47:                                     ; preds = %46, %42
  %48 = phi i32 [ %45, %42 ], [ 0, %46 ]
  ret i32 %48
}

declare hidden i32 @luaV_equalobj(%struct.lua_State*, %struct.TValue*, %struct.TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_arith(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 12
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 13
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %9
  br label %39

; <label>:13:                                     ; preds = %9, %2
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 6
  %16 = load %union.StackValue*, %union.StackValue** %15, align 8
  %17 = bitcast %union.StackValue* %16 to %struct.TValue*
  store %struct.TValue* %17, %struct.TValue** %5, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 6
  %20 = load %union.StackValue*, %union.StackValue** %19, align 8
  %21 = getelementptr inbounds %union.StackValue, %union.StackValue* %20, i64 -1
  %22 = bitcast %union.StackValue* %21 to %struct.TValue*
  store %struct.TValue* %22, %struct.TValue** %6, align 8
  %23 = load %struct.TValue*, %struct.TValue** %5, align 8
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %23, i32 0, i32 0
  %25 = load %struct.TValue*, %struct.TValue** %6, align 8
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i32 0, i32 0
  %27 = bitcast %union.Value* %24 to i8*
  %28 = bitcast %union.Value* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 8, i1 false)
  %29 = load %struct.TValue*, %struct.TValue** %6, align 8
  %30 = getelementptr inbounds %struct.TValue, %struct.TValue* %29, i32 0, i32 1
  %31 = load i8, i8* %30, align 8
  %32 = load %struct.TValue*, %struct.TValue** %5, align 8
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i32 0, i32 1
  store i8 %31, i8* %33, align 8
  %34 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 6
  %37 = load %union.StackValue*, %union.StackValue** %36, align 8
  %38 = getelementptr inbounds %union.StackValue, %union.StackValue* %37, i32 1
  store %union.StackValue* %38, %union.StackValue** %36, align 8
  br label %39

; <label>:39:                                     ; preds = %13, %12
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 6
  %44 = load %union.StackValue*, %union.StackValue** %43, align 8
  %45 = getelementptr inbounds %union.StackValue, %union.StackValue* %44, i64 -2
  %46 = bitcast %union.StackValue* %45 to %struct.TValue*
  %47 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 6
  %49 = load %union.StackValue*, %union.StackValue** %48, align 8
  %50 = getelementptr inbounds %union.StackValue, %union.StackValue* %49, i64 -1
  %51 = bitcast %union.StackValue* %50 to %struct.TValue*
  %52 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %52, i32 0, i32 6
  %54 = load %union.StackValue*, %union.StackValue** %53, align 8
  %55 = getelementptr inbounds %union.StackValue, %union.StackValue* %54, i64 -2
  call void @luaO_arith(%struct.lua_State* %40, i32 %41, %struct.TValue* %46, %struct.TValue* %51, %union.StackValue* %55)
  %56 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %56, i32 0, i32 6
  %58 = load %union.StackValue*, %union.StackValue** %57, align 8
  %59 = getelementptr inbounds %union.StackValue, %union.StackValue* %58, i32 -1
  store %union.StackValue* %59, %union.StackValue** %57, align 8
  ret void
}

declare hidden void @luaO_arith(%struct.lua_State*, i32, %struct.TValue*, %struct.TValue*, %union.StackValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_compare(%struct.lua_State*, i32, i32, i32) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.TValue* @index2value(%struct.lua_State* %12, i32 %13)
  store %struct.TValue* %14, %struct.TValue** %9, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.TValue* @index2value(%struct.lua_State* %15, i32 %16)
  store %struct.TValue* %17, %struct.TValue** %10, align 8
  %18 = load %struct.TValue*, %struct.TValue** %9, align 8
  %19 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i32 0, i32 1
  %20 = load i8, i8* %19, align 8
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

; <label>:24:                                     ; preds = %4
  %25 = load %struct.TValue*, %struct.TValue** %9, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 7
  %28 = load %struct.global_State*, %struct.global_State** %27, align 8
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i32 0, i32 8
  %30 = icmp ne %struct.TValue* %25, %29
  br i1 %30, label %31, label %64

; <label>:31:                                     ; preds = %24, %4
  %32 = load %struct.TValue*, %struct.TValue** %10, align 8
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i32 0, i32 1
  %34 = load i8, i8* %33, align 8
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

; <label>:38:                                     ; preds = %31
  %39 = load %struct.TValue*, %struct.TValue** %10, align 8
  %40 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 7
  %42 = load %struct.global_State*, %struct.global_State** %41, align 8
  %43 = getelementptr inbounds %struct.global_State, %struct.global_State* %42, i32 0, i32 8
  %44 = icmp ne %struct.TValue* %39, %43
  br i1 %44, label %45, label %64

; <label>:45:                                     ; preds = %38, %31
  %46 = load i32, i32* %8, align 4
  switch i32 %46, label %62 [
    i32 0, label %47
    i32 1, label %52
    i32 2, label %57
  ]

; <label>:47:                                     ; preds = %45
  %48 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %49 = load %struct.TValue*, %struct.TValue** %9, align 8
  %50 = load %struct.TValue*, %struct.TValue** %10, align 8
  %51 = call i32 @luaV_equalobj(%struct.lua_State* %48, %struct.TValue* %49, %struct.TValue* %50)
  store i32 %51, i32* %11, align 4
  br label %63

; <label>:52:                                     ; preds = %45
  %53 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %54 = load %struct.TValue*, %struct.TValue** %9, align 8
  %55 = load %struct.TValue*, %struct.TValue** %10, align 8
  %56 = call i32 @luaV_lessthan(%struct.lua_State* %53, %struct.TValue* %54, %struct.TValue* %55)
  store i32 %56, i32* %11, align 4
  br label %63

; <label>:57:                                     ; preds = %45
  %58 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %59 = load %struct.TValue*, %struct.TValue** %9, align 8
  %60 = load %struct.TValue*, %struct.TValue** %10, align 8
  %61 = call i32 @luaV_lessequal(%struct.lua_State* %58, %struct.TValue* %59, %struct.TValue* %60)
  store i32 %61, i32* %11, align 4
  br label %63

; <label>:62:                                     ; preds = %45
  br label %63

; <label>:63:                                     ; preds = %62, %57, %52, %47
  br label %64

; <label>:64:                                     ; preds = %63, %38, %24
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare hidden i32 @luaV_lessthan(%struct.lua_State*, %struct.TValue*, %struct.TValue*) #1

declare hidden i32 @luaV_lessequal(%struct.lua_State*, %struct.TValue*, %struct.TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i64 @lua_stringtonumber(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 6
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8
  %10 = bitcast %union.StackValue* %9 to %struct.TValue*
  %11 = call i64 @luaO_str2num(i8* %6, %struct.TValue* %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %2
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 6
  %17 = load %union.StackValue*, %union.StackValue** %16, align 8
  %18 = getelementptr inbounds %union.StackValue, %union.StackValue* %17, i32 1
  store %union.StackValue* %18, %union.StackValue** %16, align 8
  br label %19

; <label>:19:                                     ; preds = %14, %2
  %20 = load i64, i64* %5, align 8
  ret i64 %20
}

declare hidden i64 @luaO_str2num(i8*, %struct.TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define double @lua_tonumberx(%struct.lua_State*, i32, i32*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TValue* @index2value(%struct.lua_State* %10, i32 %11)
  store %struct.TValue* %12, %struct.TValue** %8, align 8
  %13 = load %struct.TValue*, %struct.TValue** %8, align 8
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %13, i32 0, i32 1
  %15 = load i8, i8* %14, align 8
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 19
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %3
  %19 = load %struct.TValue*, %struct.TValue** %8, align 8
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i32 0, i32 0
  %21 = bitcast %union.Value* %20 to double*
  %22 = load double, double* %21, align 8
  store double %22, double* %7, align 8
  br label %26

; <label>:23:                                     ; preds = %3
  %24 = load %struct.TValue*, %struct.TValue** %8, align 8
  %25 = call i32 @luaV_tonumber_(%struct.TValue* %24, double* %7)
  br label %26

; <label>:26:                                     ; preds = %23, %18
  %27 = phi i32 [ 1, %18 ], [ %25, %23 ]
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

; <label>:30:                                     ; preds = %26
  store double 0.000000e+00, double* %7, align 8
  br label %31

; <label>:31:                                     ; preds = %30, %26
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  br label %37

; <label>:37:                                     ; preds = %34, %31
  %38 = load double, double* %7, align 8
  ret double %38
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TValue* @index2value(%struct.lua_State* %10, i32 %11)
  store %struct.TValue* %12, %struct.TValue** %8, align 8
  %13 = load %struct.TValue*, %struct.TValue** %8, align 8
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %13, i32 0, i32 1
  %15 = load i8, i8* %14, align 8
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 35
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %3
  %19 = load %struct.TValue*, %struct.TValue** %8, align 8
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i32 0, i32 0
  %21 = bitcast %union.Value* %20 to i64*
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  br label %26

; <label>:23:                                     ; preds = %3
  %24 = load %struct.TValue*, %struct.TValue** %8, align 8
  %25 = call i32 @luaV_tointeger(%struct.TValue* %24, i64* %7, i32 0)
  br label %26

; <label>:26:                                     ; preds = %23, %18
  %27 = phi i32 [ 1, %18 ], [ %25, %23 ]
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

; <label>:30:                                     ; preds = %26
  store i64 0, i64* %7, align 8
  br label %31

; <label>:31:                                     ; preds = %30, %26
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  br label %37

; <label>:37:                                     ; preds = %34, %31
  %38 = load i64, i64* %7, align 8
  ret i64 %38
}

declare hidden i32 @luaV_tointeger(%struct.TValue*, i64*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_toboolean(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TValue* @index2value(%struct.lua_State* %6, i32 %7)
  store %struct.TValue* %8, %struct.TValue** %5, align 8
  %9 = load %struct.TValue*, %struct.TValue** %5, align 8
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 8
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

; <label>:15:                                     ; preds = %2
  %16 = load %struct.TValue*, %struct.TValue** %5, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 8
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %27

; <label>:21:                                     ; preds = %15
  %22 = load %struct.TValue*, %struct.TValue** %5, align 8
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %22, i32 0, i32 0
  %24 = bitcast %union.Value* %23 to i32*
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br label %27

; <label>:27:                                     ; preds = %21, %15
  %28 = phi i1 [ false, %15 ], [ %26, %21 ]
  br label %29

; <label>:29:                                     ; preds = %27, %2
  %30 = phi i1 [ true, %2 ], [ %28, %27 ]
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_tolstring(%struct.lua_State*, i32, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.TValue* @index2value(%struct.lua_State* %9, i32 %10)
  store %struct.TValue* %11, %struct.TValue** %8, align 8
  %12 = load %struct.TValue*, %struct.TValue** %8, align 8
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i32 0, i32 1
  %14 = load i8, i8* %13, align 8
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 15
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %46, label %18

; <label>:18:                                     ; preds = %3
  %19 = load %struct.TValue*, %struct.TValue** %8, align 8
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i32 0, i32 1
  %21 = load i8, i8* %20, align 8
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 15
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %31, label %25

; <label>:25:                                     ; preds = %18
  %26 = load i64*, i64** %7, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %25
  %29 = load i64*, i64** %7, align 8
  store i64 0, i64* %29, align 8
  br label %30

; <label>:30:                                     ; preds = %28, %25
  store i8* null, i8** %4, align 8
  br label %92

; <label>:31:                                     ; preds = %18
  %32 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %33 = load %struct.TValue*, %struct.TValue** %8, align 8
  call void @luaO_tostring(%struct.lua_State* %32, %struct.TValue* %33)
  %34 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %34, i32 0, i32 7
  %36 = load %struct.global_State*, %struct.global_State** %35, align 8
  %37 = getelementptr inbounds %struct.global_State, %struct.global_State* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %42

; <label>:40:                                     ; preds = %31
  %41 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaC_step(%struct.lua_State* %41)
  br label %42

; <label>:42:                                     ; preds = %40, %31
  %43 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call %struct.TValue* @index2value(%struct.lua_State* %43, i32 %44)
  store %struct.TValue* %45, %struct.TValue** %8, align 8
  br label %46

; <label>:46:                                     ; preds = %42, %3
  %47 = load i64*, i64** %7, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %83

; <label>:49:                                     ; preds = %46
  %50 = load %struct.TValue*, %struct.TValue** %8, align 8
  %51 = getelementptr inbounds %struct.TValue, %struct.TValue* %50, i32 0, i32 0
  %52 = bitcast %union.Value* %51 to %struct.GCObject**
  %53 = load %struct.GCObject*, %struct.GCObject** %52, align 8
  %54 = bitcast %struct.GCObject* %53 to %union.GCUnion*
  %55 = bitcast %union.GCUnion* %54 to %struct.TString*
  %56 = getelementptr inbounds %struct.TString, %struct.TString* %55, i32 0, i32 1
  %57 = load i8, i8* %56, align 8
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 20
  br i1 %59, label %60, label %70

; <label>:60:                                     ; preds = %49
  %61 = load %struct.TValue*, %struct.TValue** %8, align 8
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i32 0, i32 0
  %63 = bitcast %union.Value* %62 to %struct.GCObject**
  %64 = load %struct.GCObject*, %struct.GCObject** %63, align 8
  %65 = bitcast %struct.GCObject* %64 to %union.GCUnion*
  %66 = bitcast %union.GCUnion* %65 to %struct.TString*
  %67 = getelementptr inbounds %struct.TString, %struct.TString* %66, i32 0, i32 4
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i64
  br label %80

; <label>:70:                                     ; preds = %49
  %71 = load %struct.TValue*, %struct.TValue** %8, align 8
  %72 = getelementptr inbounds %struct.TValue, %struct.TValue* %71, i32 0, i32 0
  %73 = bitcast %union.Value* %72 to %struct.GCObject**
  %74 = load %struct.GCObject*, %struct.GCObject** %73, align 8
  %75 = bitcast %struct.GCObject* %74 to %union.GCUnion*
  %76 = bitcast %union.GCUnion* %75 to %struct.TString*
  %77 = getelementptr inbounds %struct.TString, %struct.TString* %76, i32 0, i32 6
  %78 = bitcast %union.anon* %77 to i64*
  %79 = load i64, i64* %78, align 8
  br label %80

; <label>:80:                                     ; preds = %70, %60
  %81 = phi i64 [ %69, %60 ], [ %79, %70 ]
  %82 = load i64*, i64** %7, align 8
  store i64 %81, i64* %82, align 8
  br label %83

; <label>:83:                                     ; preds = %80, %46
  %84 = load %struct.TValue*, %struct.TValue** %8, align 8
  %85 = getelementptr inbounds %struct.TValue, %struct.TValue* %84, i32 0, i32 0
  %86 = bitcast %union.Value* %85 to %struct.GCObject**
  %87 = load %struct.GCObject*, %struct.GCObject** %86, align 8
  %88 = bitcast %struct.GCObject* %87 to %union.GCUnion*
  %89 = bitcast %union.GCUnion* %88 to %struct.TString*
  %90 = bitcast %struct.TString* %89 to i8*
  %91 = getelementptr inbounds i8, i8* %90, i64 24
  store i8* %91, i8** %4, align 8
  br label %92

; <label>:92:                                     ; preds = %83, %30
  %93 = load i8*, i8** %4, align 8
  ret i8* %93
}

declare hidden void @luaO_tostring(%struct.lua_State*, %struct.TValue*) #1

declare hidden void @luaC_step(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i64 @lua_rawlen(%struct.lua_State*, i32) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.TValue* @index2value(%struct.lua_State* %7, i32 %8)
  store %struct.TValue* %9, %struct.TValue** %6, align 8
  %10 = load %struct.TValue*, %struct.TValue** %6, align 8
  %11 = getelementptr inbounds %struct.TValue, %struct.TValue* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 8
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 63
  switch i32 %14, label %52 [
    i32 20, label %15
    i32 36, label %25
    i32 7, label %35
    i32 5, label %44
  ]

; <label>:15:                                     ; preds = %2
  %16 = load %struct.TValue*, %struct.TValue** %6, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 0
  %18 = bitcast %union.Value* %17 to %struct.GCObject**
  %19 = load %struct.GCObject*, %struct.GCObject** %18, align 8
  %20 = bitcast %struct.GCObject* %19 to %union.GCUnion*
  %21 = bitcast %union.GCUnion* %20 to %struct.TString*
  %22 = getelementptr inbounds %struct.TString, %struct.TString* %21, i32 0, i32 4
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i64
  store i64 %24, i64* %3, align 8
  br label %53

; <label>:25:                                     ; preds = %2
  %26 = load %struct.TValue*, %struct.TValue** %6, align 8
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %26, i32 0, i32 0
  %28 = bitcast %union.Value* %27 to %struct.GCObject**
  %29 = load %struct.GCObject*, %struct.GCObject** %28, align 8
  %30 = bitcast %struct.GCObject* %29 to %union.GCUnion*
  %31 = bitcast %union.GCUnion* %30 to %struct.TString*
  %32 = getelementptr inbounds %struct.TString, %struct.TString* %31, i32 0, i32 6
  %33 = bitcast %union.anon* %32 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %3, align 8
  br label %53

; <label>:35:                                     ; preds = %2
  %36 = load %struct.TValue*, %struct.TValue** %6, align 8
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %36, i32 0, i32 0
  %38 = bitcast %union.Value* %37 to %struct.GCObject**
  %39 = load %struct.GCObject*, %struct.GCObject** %38, align 8
  %40 = bitcast %struct.GCObject* %39 to %union.GCUnion*
  %41 = bitcast %union.GCUnion* %40 to %struct.Udata*
  %42 = getelementptr inbounds %struct.Udata, %struct.Udata* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %3, align 8
  br label %53

; <label>:44:                                     ; preds = %2
  %45 = load %struct.TValue*, %struct.TValue** %6, align 8
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i32 0, i32 0
  %47 = bitcast %union.Value* %46 to %struct.GCObject**
  %48 = load %struct.GCObject*, %struct.GCObject** %47, align 8
  %49 = bitcast %struct.GCObject* %48 to %union.GCUnion*
  %50 = bitcast %union.GCUnion* %49 to %struct.Table*
  %51 = call i64 @luaH_getn(%struct.Table* %50)
  store i64 %51, i64* %3, align 8
  br label %53

; <label>:52:                                     ; preds = %2
  store i64 0, i64* %3, align 8
  br label %53

; <label>:53:                                     ; preds = %52, %44, %35, %25, %15
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

declare hidden i64 @luaH_getn(%struct.Table*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State*, i32) #0 {
  %3 = alloca i32 (%struct.lua_State*)*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.TValue* @index2value(%struct.lua_State* %7, i32 %8)
  store %struct.TValue* %9, %struct.TValue** %6, align 8
  %10 = load %struct.TValue*, %struct.TValue** %6, align 8
  %11 = getelementptr inbounds %struct.TValue, %struct.TValue* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 8
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, 38
  br i1 %14, label %15, label %20

; <label>:15:                                     ; preds = %2
  %16 = load %struct.TValue*, %struct.TValue** %6, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 0
  %18 = bitcast %union.Value* %17 to i32 (%struct.lua_State*)**
  %19 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %18, align 8
  store i32 (%struct.lua_State*)* %19, i32 (%struct.lua_State*)** %3, align 8
  br label %37

; <label>:20:                                     ; preds = %2
  %21 = load %struct.TValue*, %struct.TValue** %6, align 8
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %21, i32 0, i32 1
  %23 = load i8, i8* %22, align 8
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 118
  br i1 %25, label %26, label %36

; <label>:26:                                     ; preds = %20
  %27 = load %struct.TValue*, %struct.TValue** %6, align 8
  %28 = getelementptr inbounds %struct.TValue, %struct.TValue* %27, i32 0, i32 0
  %29 = bitcast %union.Value* %28 to %struct.GCObject**
  %30 = load %struct.GCObject*, %struct.GCObject** %29, align 8
  %31 = bitcast %struct.GCObject* %30 to %union.GCUnion*
  %32 = bitcast %union.GCUnion* %31 to %union.Closure*
  %33 = bitcast %union.Closure* %32 to %struct.CClosure*
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i32 0, i32 5
  %35 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %34, align 8
  store i32 (%struct.lua_State*)* %35, i32 (%struct.lua_State*)** %3, align 8
  br label %37

; <label>:36:                                     ; preds = %20
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %3, align 8
  br label %37

; <label>:37:                                     ; preds = %36, %26, %15
  %38 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %3, align 8
  ret i32 (%struct.lua_State*)* %38
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_touserdata(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TValue* @index2value(%struct.lua_State* %6, i32 %7)
  store %struct.TValue* %8, %struct.TValue** %5, align 8
  %9 = load %struct.TValue*, %struct.TValue** %5, align 8
  %10 = call i8* @touserdata(%struct.TValue* %9)
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @touserdata(%struct.TValue*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TValue*, align 8
  store %struct.TValue* %0, %struct.TValue** %3, align 8
  %4 = load %struct.TValue*, %struct.TValue** %3, align 8
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i32 0, i32 1
  %6 = load i8, i8* %5, align 8
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 15
  switch i32 %8, label %48 [
    i32 7, label %9
    i32 2, label %43
  ]

; <label>:9:                                      ; preds = %1
  %10 = load %struct.TValue*, %struct.TValue** %3, align 8
  %11 = getelementptr inbounds %struct.TValue, %struct.TValue* %10, i32 0, i32 0
  %12 = bitcast %union.Value* %11 to %struct.GCObject**
  %13 = load %struct.GCObject*, %struct.GCObject** %12, align 8
  %14 = bitcast %struct.GCObject* %13 to %union.GCUnion*
  %15 = bitcast %union.GCUnion* %14 to %struct.Udata*
  %16 = bitcast %struct.Udata* %15 to i8*
  %17 = load %struct.TValue*, %struct.TValue** %3, align 8
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %17, i32 0, i32 0
  %19 = bitcast %union.Value* %18 to %struct.GCObject**
  %20 = load %struct.GCObject*, %struct.GCObject** %19, align 8
  %21 = bitcast %struct.GCObject* %20 to %union.GCUnion*
  %22 = bitcast %union.GCUnion* %21 to %struct.Udata*
  %23 = getelementptr inbounds %struct.Udata, %struct.Udata* %22, i32 0, i32 3
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %9
  br label %40

; <label>:28:                                     ; preds = %9
  %29 = load %struct.TValue*, %struct.TValue** %3, align 8
  %30 = getelementptr inbounds %struct.TValue, %struct.TValue* %29, i32 0, i32 0
  %31 = bitcast %union.Value* %30 to %struct.GCObject**
  %32 = load %struct.GCObject*, %struct.GCObject** %31, align 8
  %33 = bitcast %struct.GCObject* %32 to %union.GCUnion*
  %34 = bitcast %union.GCUnion* %33 to %struct.Udata*
  %35 = getelementptr inbounds %struct.Udata, %struct.Udata* %34, i32 0, i32 3
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i64
  %38 = mul i64 16, %37
  %39 = add i64 40, %38
  br label %40

; <label>:40:                                     ; preds = %28, %27
  %41 = phi i64 [ 32, %27 ], [ %39, %28 ]
  %42 = getelementptr inbounds i8, i8* %16, i64 %41
  store i8* %42, i8** %2, align 8
  br label %49

; <label>:43:                                     ; preds = %1
  %44 = load %struct.TValue*, %struct.TValue** %3, align 8
  %45 = getelementptr inbounds %struct.TValue, %struct.TValue* %44, i32 0, i32 0
  %46 = bitcast %union.Value* %45 to i8**
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %2, align 8
  br label %49

; <label>:48:                                     ; preds = %1
  store i8* null, i8** %2, align 8
  br label %49

; <label>:49:                                     ; preds = %48, %43, %40
  %50 = load i8*, i8** %2, align 8
  ret i8* %50
}

; Function Attrs: noinline nounwind optnone uwtable
define %struct.lua_State* @lua_tothread(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TValue* @index2value(%struct.lua_State* %6, i32 %7)
  store %struct.TValue* %8, %struct.TValue** %5, align 8
  %9 = load %struct.TValue*, %struct.TValue** %5, align 8
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 8
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 72
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %2
  br label %22

; <label>:15:                                     ; preds = %2
  %16 = load %struct.TValue*, %struct.TValue** %5, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 0
  %18 = bitcast %union.Value* %17 to %struct.GCObject**
  %19 = load %struct.GCObject*, %struct.GCObject** %18, align 8
  %20 = bitcast %struct.GCObject* %19 to %union.GCUnion*
  %21 = bitcast %union.GCUnion* %20 to %struct.lua_State*
  br label %22

; <label>:22:                                     ; preds = %15, %14
  %23 = phi %struct.lua_State* [ null, %14 ], [ %21, %15 ]
  ret %struct.lua_State* %23
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_topointer(%struct.lua_State*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.TValue* @index2value(%struct.lua_State* %7, i32 %8)
  store %struct.TValue* %9, %struct.TValue** %6, align 8
  %10 = load %struct.TValue*, %struct.TValue** %6, align 8
  %11 = getelementptr inbounds %struct.TValue, %struct.TValue* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 8
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 63
  switch i32 %14, label %25 [
    i32 38, label %15
    i32 7, label %22
    i32 2, label %22
  ]

; <label>:15:                                     ; preds = %2
  %16 = load %struct.TValue*, %struct.TValue** %6, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 0
  %18 = bitcast %union.Value* %17 to i32 (%struct.lua_State*)**
  %19 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %18, align 8
  %20 = ptrtoint i32 (%struct.lua_State*)* %19 to i64
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %3, align 8
  br label %39

; <label>:22:                                     ; preds = %2, %2
  %23 = load %struct.TValue*, %struct.TValue** %6, align 8
  %24 = call i8* @touserdata(%struct.TValue* %23)
  store i8* %24, i8** %3, align 8
  br label %39

; <label>:25:                                     ; preds = %2
  %26 = load %struct.TValue*, %struct.TValue** %6, align 8
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %26, i32 0, i32 1
  %28 = load i8, i8* %27, align 8
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 64
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

; <label>:32:                                     ; preds = %25
  %33 = load %struct.TValue*, %struct.TValue** %6, align 8
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i32 0, i32 0
  %35 = bitcast %union.Value* %34 to %struct.GCObject**
  %36 = load %struct.GCObject*, %struct.GCObject** %35, align 8
  %37 = bitcast %struct.GCObject* %36 to i8*
  store i8* %37, i8** %3, align 8
  br label %39

; <label>:38:                                     ; preds = %25
  store i8* null, i8** %3, align 8
  br label %39

; <label>:39:                                     ; preds = %38, %32, %22, %15
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_pushnil(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 6
  %5 = load %union.StackValue*, %union.StackValue** %4, align 8
  %6 = bitcast %union.StackValue* %5 to %struct.TValue*
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i32 0, i32 1
  store i8 0, i8* %7, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 6
  %10 = load %union.StackValue*, %union.StackValue** %9, align 8
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i32 1
  store %union.StackValue* %11, %union.StackValue** %9, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_pushnumber(%struct.lua_State*, double) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store double %1, double* %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 6
  %8 = load %union.StackValue*, %union.StackValue** %7, align 8
  %9 = bitcast %union.StackValue* %8 to %struct.TValue*
  store %struct.TValue* %9, %struct.TValue** %5, align 8
  %10 = load double, double* %4, align 8
  %11 = load %struct.TValue*, %struct.TValue** %5, align 8
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %11, i32 0, i32 0
  %13 = bitcast %union.Value* %12 to double*
  store double %10, double* %13, align 8
  %14 = load %struct.TValue*, %struct.TValue** %5, align 8
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 1
  store i8 19, i8* %15, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 6
  %18 = load %union.StackValue*, %union.StackValue** %17, align 8
  %19 = getelementptr inbounds %union.StackValue, %union.StackValue* %18, i32 1
  store %union.StackValue* %19, %union.StackValue** %17, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_pushinteger(%struct.lua_State*, i64) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 6
  %8 = load %union.StackValue*, %union.StackValue** %7, align 8
  %9 = bitcast %union.StackValue* %8 to %struct.TValue*
  store %struct.TValue* %9, %struct.TValue** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.TValue*, %struct.TValue** %5, align 8
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %11, i32 0, i32 0
  %13 = bitcast %union.Value* %12 to i64*
  store i64 %10, i64* %13, align 8
  %14 = load %struct.TValue*, %struct.TValue** %5, align 8
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 1
  store i8 35, i8* %15, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 6
  %18 = load %union.StackValue*, %union.StackValue** %17, align 8
  %19 = getelementptr inbounds %union.StackValue, %union.StackValue* %18, i32 1
  store %union.StackValue* %19, %union.StackValue** %17, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TString*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %3
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = call %struct.TString* @luaS_new(%struct.lua_State* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0))
  br label %20

; <label>:15:                                     ; preds = %3
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %16, i8* %17, i64 %18)
  br label %20

; <label>:20:                                     ; preds = %15, %12
  %21 = phi %struct.TString* [ %14, %12 ], [ %19, %15 ]
  store %struct.TString* %21, %struct.TString** %7, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 6
  %24 = load %union.StackValue*, %union.StackValue** %23, align 8
  %25 = bitcast %union.StackValue* %24 to %struct.TValue*
  store %struct.TValue* %25, %struct.TValue** %8, align 8
  %26 = load %struct.TString*, %struct.TString** %7, align 8
  store %struct.TString* %26, %struct.TString** %9, align 8
  %27 = load %struct.TString*, %struct.TString** %9, align 8
  %28 = bitcast %struct.TString* %27 to %union.GCUnion*
  %29 = bitcast %union.GCUnion* %28 to %struct.GCObject*
  %30 = load %struct.TValue*, %struct.TValue** %8, align 8
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %30, i32 0, i32 0
  %32 = bitcast %union.Value* %31 to %struct.GCObject**
  store %struct.GCObject* %29, %struct.GCObject** %32, align 8
  %33 = load %struct.TString*, %struct.TString** %9, align 8
  %34 = getelementptr inbounds %struct.TString, %struct.TString* %33, i32 0, i32 1
  %35 = load i8, i8* %34, align 8
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, 64
  %38 = trunc i32 %37 to i8
  %39 = load %struct.TValue*, %struct.TValue** %8, align 8
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %39, i32 0, i32 1
  store i8 %38, i8* %40, align 8
  %41 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i32 0, i32 6
  %43 = load %union.StackValue*, %union.StackValue** %42, align 8
  %44 = getelementptr inbounds %union.StackValue, %union.StackValue* %43, i32 1
  store %union.StackValue* %44, %union.StackValue** %42, align 8
  %45 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i32 0, i32 7
  %47 = load %struct.global_State*, %struct.global_State** %46, align 8
  %48 = getelementptr inbounds %struct.global_State, %struct.global_State* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %53

; <label>:51:                                     ; preds = %20
  %52 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaC_step(%struct.lua_State* %52)
  br label %53

; <label>:53:                                     ; preds = %51, %20
  %54 = load %struct.TString*, %struct.TString** %7, align 8
  %55 = bitcast %struct.TString* %54 to i8*
  %56 = getelementptr inbounds i8, i8* %55, i64 24
  ret i8* %56
}

declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) #1

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_pushstring(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TString*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %2
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8
  %14 = bitcast %union.StackValue* %13 to %struct.TValue*
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 1
  store i8 0, i8* %15, align 8
  br label %42

; <label>:16:                                     ; preds = %2
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call %struct.TString* @luaS_new(%struct.lua_State* %17, i8* %18)
  store %struct.TString* %19, %struct.TString** %5, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 6
  %22 = load %union.StackValue*, %union.StackValue** %21, align 8
  %23 = bitcast %union.StackValue* %22 to %struct.TValue*
  store %struct.TValue* %23, %struct.TValue** %6, align 8
  %24 = load %struct.TString*, %struct.TString** %5, align 8
  store %struct.TString* %24, %struct.TString** %7, align 8
  %25 = load %struct.TString*, %struct.TString** %7, align 8
  %26 = bitcast %struct.TString* %25 to %union.GCUnion*
  %27 = bitcast %union.GCUnion* %26 to %struct.GCObject*
  %28 = load %struct.TValue*, %struct.TValue** %6, align 8
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i32 0, i32 0
  %30 = bitcast %union.Value* %29 to %struct.GCObject**
  store %struct.GCObject* %27, %struct.GCObject** %30, align 8
  %31 = load %struct.TString*, %struct.TString** %7, align 8
  %32 = getelementptr inbounds %struct.TString, %struct.TString* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 8
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, 64
  %36 = trunc i32 %35 to i8
  %37 = load %struct.TValue*, %struct.TValue** %6, align 8
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i32 0, i32 1
  store i8 %36, i8* %38, align 8
  %39 = load %struct.TString*, %struct.TString** %5, align 8
  %40 = bitcast %struct.TString* %39 to i8*
  %41 = getelementptr inbounds i8, i8* %40, i64 24
  store i8* %41, i8** %4, align 8
  br label %42

; <label>:42:                                     ; preds = %16, %10
  %43 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 6
  %45 = load %union.StackValue*, %union.StackValue** %44, align 8
  %46 = getelementptr inbounds %union.StackValue, %union.StackValue* %45, i32 1
  store %union.StackValue* %46, %union.StackValue** %44, align 8
  %47 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 7
  %49 = load %struct.global_State*, %struct.global_State** %48, align 8
  %50 = getelementptr inbounds %struct.global_State, %struct.global_State* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %55

; <label>:53:                                     ; preds = %42
  %54 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_step(%struct.lua_State* %54)
  br label %55

; <label>:55:                                     ; preds = %53, %42
  %56 = load i8*, i8** %4, align 8
  ret i8* %56
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %11 = call i8* @luaO_pushvfstring(%struct.lua_State* %8, i8* %9, %struct.__va_list_tag* %10)
  store i8* %11, i8** %7, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 7
  %14 = load %struct.global_State*, %struct.global_State** %13, align 8
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %3
  %19 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaC_step(%struct.lua_State* %19)
  br label %20

; <label>:20:                                     ; preds = %18, %3
  %21 = load i8*, i8** %7, align 8
  ret i8* %21
}

declare hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_start(i8* %8)
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0
  %12 = call i8* @luaO_pushvfstring(%struct.lua_State* %9, i8* %10, %struct.__va_list_tag* %11)
  store i8* %12, i8** %5, align 8
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0
  %14 = bitcast %struct.__va_list_tag* %13 to i8*
  call void @llvm.va_end(i8* %14)
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 7
  %17 = load %struct.global_State*, %struct.global_State** %16, align 8
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %2
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_step(%struct.lua_State* %22)
  br label %23

; <label>:23:                                     ; preds = %21, %2
  %24 = load i8*, i8** %5, align 8
  ret i8* %24
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32 (%struct.lua_State*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.CClosure*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca %struct.TValue*, align 8
  %12 = alloca %struct.CClosure*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 (%struct.lua_State*)* %1, i32 (%struct.lua_State*)** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %30

; <label>:15:                                     ; preds = %3
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 6
  %18 = load %union.StackValue*, %union.StackValue** %17, align 8
  %19 = bitcast %union.StackValue* %18 to %struct.TValue*
  store %struct.TValue* %19, %struct.TValue** %7, align 8
  %20 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %5, align 8
  %21 = load %struct.TValue*, %struct.TValue** %7, align 8
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %21, i32 0, i32 0
  %23 = bitcast %union.Value* %22 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* %20, i32 (%struct.lua_State*)** %23, align 8
  %24 = load %struct.TValue*, %struct.TValue** %7, align 8
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %24, i32 0, i32 1
  store i8 38, i8* %25, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 6
  %28 = load %union.StackValue*, %union.StackValue** %27, align 8
  %29 = getelementptr inbounds %union.StackValue, %union.StackValue* %28, i32 1
  store %union.StackValue* %29, %union.StackValue** %27, align 8
  br label %100

; <label>:30:                                     ; preds = %3
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.CClosure* @luaF_newCclosure(%struct.lua_State* %31, i32 %32)
  store %struct.CClosure* %33, %struct.CClosure** %8, align 8
  %34 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %5, align 8
  %35 = load %struct.CClosure*, %struct.CClosure** %8, align 8
  %36 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %35, i32 0, i32 5
  store i32 (%struct.lua_State*)* %34, i32 (%struct.lua_State*)** %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 6
  %40 = load %union.StackValue*, %union.StackValue** %39, align 8
  %41 = sext i32 %37 to i64
  %42 = sub i64 0, %41
  %43 = getelementptr inbounds %union.StackValue, %union.StackValue* %40, i64 %42
  store %union.StackValue* %43, %union.StackValue** %39, align 8
  br label %44

; <label>:44:                                     ; preds = %48, %30
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %6, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %73

; <label>:48:                                     ; preds = %44
  %49 = load %struct.CClosure*, %struct.CClosure** %8, align 8
  %50 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %49, i32 0, i32 6
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [1 x %struct.TValue], [1 x %struct.TValue]* %50, i64 0, i64 %52
  store %struct.TValue* %53, %struct.TValue** %9, align 8
  %54 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %54, i32 0, i32 6
  %56 = load %union.StackValue*, %union.StackValue** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %union.StackValue, %union.StackValue* %56, i64 %58
  %60 = bitcast %union.StackValue* %59 to %struct.TValue*
  store %struct.TValue* %60, %struct.TValue** %10, align 8
  %61 = load %struct.TValue*, %struct.TValue** %9, align 8
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i32 0, i32 0
  %63 = load %struct.TValue*, %struct.TValue** %10, align 8
  %64 = getelementptr inbounds %struct.TValue, %struct.TValue* %63, i32 0, i32 0
  %65 = bitcast %union.Value* %62 to i8*
  %66 = bitcast %union.Value* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 8, i32 8, i1 false)
  %67 = load %struct.TValue*, %struct.TValue** %10, align 8
  %68 = getelementptr inbounds %struct.TValue, %struct.TValue* %67, i32 0, i32 1
  %69 = load i8, i8* %68, align 8
  %70 = load %struct.TValue*, %struct.TValue** %9, align 8
  %71 = getelementptr inbounds %struct.TValue, %struct.TValue* %70, i32 0, i32 1
  store i8 %69, i8* %71, align 8
  %72 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  br label %44

; <label>:73:                                     ; preds = %44
  %74 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %75 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %74, i32 0, i32 6
  %76 = load %union.StackValue*, %union.StackValue** %75, align 8
  %77 = bitcast %union.StackValue* %76 to %struct.TValue*
  store %struct.TValue* %77, %struct.TValue** %11, align 8
  %78 = load %struct.CClosure*, %struct.CClosure** %8, align 8
  store %struct.CClosure* %78, %struct.CClosure** %12, align 8
  %79 = load %struct.CClosure*, %struct.CClosure** %12, align 8
  %80 = bitcast %struct.CClosure* %79 to %union.GCUnion*
  %81 = bitcast %union.GCUnion* %80 to %struct.GCObject*
  %82 = load %struct.TValue*, %struct.TValue** %11, align 8
  %83 = getelementptr inbounds %struct.TValue, %struct.TValue* %82, i32 0, i32 0
  %84 = bitcast %union.Value* %83 to %struct.GCObject**
  store %struct.GCObject* %81, %struct.GCObject** %84, align 8
  %85 = load %struct.TValue*, %struct.TValue** %11, align 8
  %86 = getelementptr inbounds %struct.TValue, %struct.TValue* %85, i32 0, i32 1
  store i8 118, i8* %86, align 8
  %87 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %88 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %87, i32 0, i32 6
  %89 = load %union.StackValue*, %union.StackValue** %88, align 8
  %90 = getelementptr inbounds %union.StackValue, %union.StackValue* %89, i32 1
  store %union.StackValue* %90, %union.StackValue** %88, align 8
  %91 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %92 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %91, i32 0, i32 7
  %93 = load %struct.global_State*, %struct.global_State** %92, align 8
  %94 = getelementptr inbounds %struct.global_State, %struct.global_State* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %99

; <label>:97:                                     ; preds = %73
  %98 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaC_step(%struct.lua_State* %98)
  br label %99

; <label>:99:                                     ; preds = %97, %73
  br label %100

; <label>:100:                                    ; preds = %99, %15
  ret void
}

declare hidden %struct.CClosure* @luaF_newCclosure(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_pushboolean(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 6
  %8 = load %union.StackValue*, %union.StackValue** %7, align 8
  %9 = bitcast %union.StackValue* %8 to %struct.TValue*
  store %struct.TValue* %9, %struct.TValue** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load %struct.TValue*, %struct.TValue** %5, align 8
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %13, i32 0, i32 0
  %15 = bitcast %union.Value* %14 to i32*
  store i32 %12, i32* %15, align 8
  %16 = load %struct.TValue*, %struct.TValue** %5, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 1
  store i8 1, i8* %17, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 6
  %20 = load %union.StackValue*, %union.StackValue** %19, align 8
  %21 = getelementptr inbounds %union.StackValue, %union.StackValue* %20, i32 1
  store %union.StackValue* %21, %union.StackValue** %19, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_pushlightuserdata(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 6
  %8 = load %union.StackValue*, %union.StackValue** %7, align 8
  %9 = bitcast %union.StackValue* %8 to %struct.TValue*
  store %struct.TValue* %9, %struct.TValue** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.TValue*, %struct.TValue** %5, align 8
  %12 = getelementptr inbounds %struct.TValue, %struct.TValue* %11, i32 0, i32 0
  %13 = bitcast %union.Value* %12 to i8**
  store i8* %10, i8** %13, align 8
  %14 = load %struct.TValue*, %struct.TValue** %5, align 8
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 1
  store i8 2, i8* %15, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 6
  %18 = load %union.StackValue*, %union.StackValue** %17, align 8
  %19 = getelementptr inbounds %union.StackValue, %union.StackValue* %18, i32 1
  store %union.StackValue* %19, %union.StackValue** %17, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_pushthread(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.TValue*, align 8
  %4 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 6
  %7 = load %union.StackValue*, %union.StackValue** %6, align 8
  %8 = bitcast %union.StackValue* %7 to %struct.TValue*
  store %struct.TValue* %8, %struct.TValue** %3, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  store %struct.lua_State* %9, %struct.lua_State** %4, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = bitcast %struct.lua_State* %10 to %union.GCUnion*
  %12 = bitcast %union.GCUnion* %11 to %struct.GCObject*
  %13 = load %struct.TValue*, %struct.TValue** %3, align 8
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %13, i32 0, i32 0
  %15 = bitcast %union.Value* %14 to %struct.GCObject**
  store %struct.GCObject* %12, %struct.GCObject** %15, align 8
  %16 = load %struct.TValue*, %struct.TValue** %3, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 1
  store i8 72, i8* %17, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 6
  %20 = load %union.StackValue*, %union.StackValue** %19, align 8
  %21 = getelementptr inbounds %union.StackValue, %union.StackValue* %20, i32 1
  store %union.StackValue* %21, %union.StackValue** %19, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 7
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i32 0, i32 38
  %26 = load %struct.lua_State*, %struct.lua_State** %25, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %28 = icmp eq %struct.lua_State* %26, %27
  %29 = zext i1 %28 to i32
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_getglobal(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 7
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 7
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i32 0, i32 0
  %11 = bitcast %union.Value* %10 to %struct.GCObject**
  %12 = load %struct.GCObject*, %struct.GCObject** %11, align 8
  %13 = bitcast %struct.GCObject* %12 to %union.GCUnion*
  %14 = bitcast %union.GCUnion* %13 to %struct.Table*
  store %struct.Table* %14, %struct.Table** %5, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = load %struct.Table*, %struct.Table** %5, align 8
  %17 = call %struct.TValue* @luaH_getint(%struct.Table* %16, i64 2)
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @auxgetstr(%struct.lua_State* %15, %struct.TValue* %17, i8* %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxgetstr(%struct.lua_State*, %struct.TValue*, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TString*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca %struct.TValue*, align 8
  %12 = alloca %struct.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.TValue* %1, %struct.TValue** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.TString* @luaS_new(%struct.lua_State* %13, i8* %14)
  store %struct.TString* %15, %struct.TString** %8, align 8
  %16 = load %struct.TValue*, %struct.TValue** %5, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 8
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 69
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %3
  store %struct.TValue* null, %struct.TValue** %7, align 8
  br i1 false, label %38, label %60

; <label>:22:                                     ; preds = %3
  %23 = load %struct.TValue*, %struct.TValue** %5, align 8
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %23, i32 0, i32 0
  %25 = bitcast %union.Value* %24 to %struct.GCObject**
  %26 = load %struct.GCObject*, %struct.GCObject** %25, align 8
  %27 = bitcast %struct.GCObject* %26 to %union.GCUnion*
  %28 = bitcast %union.GCUnion* %27 to %struct.Table*
  %29 = load %struct.TString*, %struct.TString** %8, align 8
  %30 = call %struct.TValue* @luaH_getstr(%struct.Table* %28, %struct.TString* %29)
  store %struct.TValue* %30, %struct.TValue** %7, align 8
  %31 = load %struct.TValue*, %struct.TValue** %7, align 8
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 8
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 15
  %36 = icmp eq i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %60

; <label>:38:                                     ; preds = %22, %21
  %39 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 6
  %41 = load %union.StackValue*, %union.StackValue** %40, align 8
  %42 = bitcast %union.StackValue* %41 to %struct.TValue*
  store %struct.TValue* %42, %struct.TValue** %9, align 8
  %43 = load %struct.TValue*, %struct.TValue** %7, align 8
  store %struct.TValue* %43, %struct.TValue** %10, align 8
  %44 = load %struct.TValue*, %struct.TValue** %9, align 8
  %45 = getelementptr inbounds %struct.TValue, %struct.TValue* %44, i32 0, i32 0
  %46 = load %struct.TValue*, %struct.TValue** %10, align 8
  %47 = getelementptr inbounds %struct.TValue, %struct.TValue* %46, i32 0, i32 0
  %48 = bitcast %union.Value* %45 to i8*
  %49 = bitcast %union.Value* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 8, i32 8, i1 false)
  %50 = load %struct.TValue*, %struct.TValue** %10, align 8
  %51 = getelementptr inbounds %struct.TValue, %struct.TValue* %50, i32 0, i32 1
  %52 = load i8, i8* %51, align 8
  %53 = load %struct.TValue*, %struct.TValue** %9, align 8
  %54 = getelementptr inbounds %struct.TValue, %struct.TValue* %53, i32 0, i32 1
  store i8 %52, i8* %54, align 8
  %55 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %56 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %56, i32 0, i32 6
  %58 = load %union.StackValue*, %union.StackValue** %57, align 8
  %59 = getelementptr inbounds %union.StackValue, %union.StackValue* %58, i32 1
  store %union.StackValue* %59, %union.StackValue** %57, align 8
  br label %96

; <label>:60:                                     ; preds = %22, %21
  %61 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %61, i32 0, i32 6
  %63 = load %union.StackValue*, %union.StackValue** %62, align 8
  %64 = bitcast %union.StackValue* %63 to %struct.TValue*
  store %struct.TValue* %64, %struct.TValue** %11, align 8
  %65 = load %struct.TString*, %struct.TString** %8, align 8
  store %struct.TString* %65, %struct.TString** %12, align 8
  %66 = load %struct.TString*, %struct.TString** %12, align 8
  %67 = bitcast %struct.TString* %66 to %union.GCUnion*
  %68 = bitcast %union.GCUnion* %67 to %struct.GCObject*
  %69 = load %struct.TValue*, %struct.TValue** %11, align 8
  %70 = getelementptr inbounds %struct.TValue, %struct.TValue* %69, i32 0, i32 0
  %71 = bitcast %union.Value* %70 to %struct.GCObject**
  store %struct.GCObject* %68, %struct.GCObject** %71, align 8
  %72 = load %struct.TString*, %struct.TString** %12, align 8
  %73 = getelementptr inbounds %struct.TString, %struct.TString* %72, i32 0, i32 1
  %74 = load i8, i8* %73, align 8
  %75 = zext i8 %74 to i32
  %76 = or i32 %75, 64
  %77 = trunc i32 %76 to i8
  %78 = load %struct.TValue*, %struct.TValue** %11, align 8
  %79 = getelementptr inbounds %struct.TValue, %struct.TValue* %78, i32 0, i32 1
  store i8 %77, i8* %79, align 8
  %80 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %80, i32 0, i32 6
  %82 = load %union.StackValue*, %union.StackValue** %81, align 8
  %83 = getelementptr inbounds %union.StackValue, %union.StackValue* %82, i32 1
  store %union.StackValue* %83, %union.StackValue** %81, align 8
  %84 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %85 = load %struct.TValue*, %struct.TValue** %5, align 8
  %86 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %87 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %86, i32 0, i32 6
  %88 = load %union.StackValue*, %union.StackValue** %87, align 8
  %89 = getelementptr inbounds %union.StackValue, %union.StackValue* %88, i64 -1
  %90 = bitcast %union.StackValue* %89 to %struct.TValue*
  %91 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %92 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %91, i32 0, i32 6
  %93 = load %union.StackValue*, %union.StackValue** %92, align 8
  %94 = getelementptr inbounds %union.StackValue, %union.StackValue* %93, i64 -1
  %95 = load %struct.TValue*, %struct.TValue** %7, align 8
  call void @luaV_finishget(%struct.lua_State* %84, %struct.TValue* %85, %struct.TValue* %90, %union.StackValue* %94, %struct.TValue* %95)
  br label %96

; <label>:96:                                     ; preds = %60, %38
  %97 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %98 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %97, i32 0, i32 6
  %99 = load %union.StackValue*, %union.StackValue** %98, align 8
  %100 = getelementptr inbounds %union.StackValue, %union.StackValue* %99, i64 -1
  %101 = bitcast %union.StackValue* %100 to %struct.TValue*
  %102 = getelementptr inbounds %struct.TValue, %struct.TValue* %101, i32 0, i32 1
  %103 = load i8, i8* %102, align 8
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 15
  ret i32 %105
}

declare hidden %struct.TValue* @luaH_getint(%struct.Table*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_gettable(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.TValue* @index2value(%struct.lua_State* %9, i32 %10)
  store %struct.TValue* %11, %struct.TValue** %6, align 8
  %12 = load %struct.TValue*, %struct.TValue** %6, align 8
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i32 0, i32 1
  %14 = load i8, i8* %13, align 8
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 69
  br i1 %16, label %18, label %17

; <label>:17:                                     ; preds = %2
  store %struct.TValue* null, %struct.TValue** %5, align 8
  br i1 false, label %38, label %57

; <label>:18:                                     ; preds = %2
  %19 = load %struct.TValue*, %struct.TValue** %6, align 8
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i32 0, i32 0
  %21 = bitcast %union.Value* %20 to %struct.GCObject**
  %22 = load %struct.GCObject*, %struct.GCObject** %21, align 8
  %23 = bitcast %struct.GCObject* %22 to %union.GCUnion*
  %24 = bitcast %union.GCUnion* %23 to %struct.Table*
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 6
  %27 = load %union.StackValue*, %union.StackValue** %26, align 8
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 -1
  %29 = bitcast %union.StackValue* %28 to %struct.TValue*
  %30 = call %struct.TValue* @luaH_get(%struct.Table* %24, %struct.TValue* %29)
  store %struct.TValue* %30, %struct.TValue** %5, align 8
  %31 = load %struct.TValue*, %struct.TValue** %5, align 8
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 8
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 15
  %36 = icmp eq i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %57

; <label>:38:                                     ; preds = %18, %17
  %39 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 6
  %41 = load %union.StackValue*, %union.StackValue** %40, align 8
  %42 = getelementptr inbounds %union.StackValue, %union.StackValue* %41, i64 -1
  %43 = bitcast %union.StackValue* %42 to %struct.TValue*
  store %struct.TValue* %43, %struct.TValue** %7, align 8
  %44 = load %struct.TValue*, %struct.TValue** %5, align 8
  store %struct.TValue* %44, %struct.TValue** %8, align 8
  %45 = load %struct.TValue*, %struct.TValue** %7, align 8
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i32 0, i32 0
  %47 = load %struct.TValue*, %struct.TValue** %8, align 8
  %48 = getelementptr inbounds %struct.TValue, %struct.TValue* %47, i32 0, i32 0
  %49 = bitcast %union.Value* %46 to i8*
  %50 = bitcast %union.Value* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 8, i32 8, i1 false)
  %51 = load %struct.TValue*, %struct.TValue** %8, align 8
  %52 = getelementptr inbounds %struct.TValue, %struct.TValue* %51, i32 0, i32 1
  %53 = load i8, i8* %52, align 8
  %54 = load %struct.TValue*, %struct.TValue** %7, align 8
  %55 = getelementptr inbounds %struct.TValue, %struct.TValue* %54, i32 0, i32 1
  store i8 %53, i8* %55, align 8
  %56 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  br label %70

; <label>:57:                                     ; preds = %18, %17
  %58 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %59 = load %struct.TValue*, %struct.TValue** %6, align 8
  %60 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %60, i32 0, i32 6
  %62 = load %union.StackValue*, %union.StackValue** %61, align 8
  %63 = getelementptr inbounds %union.StackValue, %union.StackValue* %62, i64 -1
  %64 = bitcast %union.StackValue* %63 to %struct.TValue*
  %65 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %65, i32 0, i32 6
  %67 = load %union.StackValue*, %union.StackValue** %66, align 8
  %68 = getelementptr inbounds %union.StackValue, %union.StackValue* %67, i64 -1
  %69 = load %struct.TValue*, %struct.TValue** %5, align 8
  call void @luaV_finishget(%struct.lua_State* %58, %struct.TValue* %59, %struct.TValue* %64, %union.StackValue* %68, %struct.TValue* %69)
  br label %70

; <label>:70:                                     ; preds = %57, %38
  %71 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %72 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %71, i32 0, i32 6
  %73 = load %union.StackValue*, %union.StackValue** %72, align 8
  %74 = getelementptr inbounds %union.StackValue, %union.StackValue* %73, i64 -1
  %75 = bitcast %union.StackValue* %74 to %struct.TValue*
  %76 = getelementptr inbounds %struct.TValue, %struct.TValue* %75, i32 0, i32 1
  %77 = load i8, i8* %76, align 8
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 15
  ret i32 %79
}

declare hidden %struct.TValue* @luaH_get(%struct.Table*, %struct.TValue*) #1

declare hidden void @luaV_finishget(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, %struct.TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_getfield(%struct.lua_State*, i32, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.TValue* @index2value(%struct.lua_State* %8, i32 %9)
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @auxgetstr(%struct.lua_State* %7, %struct.TValue* %10, i8* %11)
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_geti(%struct.lua_State*, i32, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca %struct.TValue, align 8
  %12 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TValue* @index2value(%struct.lua_State* %13, i32 %14)
  store %struct.TValue* %15, %struct.TValue** %7, align 8
  %16 = load %struct.TValue*, %struct.TValue** %7, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 8
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 69
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %3
  store %struct.TValue* null, %struct.TValue** %8, align 8
  br i1 false, label %65, label %83

; <label>:22:                                     ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 %23, 1
  %25 = load %struct.TValue*, %struct.TValue** %7, align 8
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i32 0, i32 0
  %27 = bitcast %union.Value* %26 to %struct.GCObject**
  %28 = load %struct.GCObject*, %struct.GCObject** %27, align 8
  %29 = bitcast %struct.GCObject* %28 to %union.GCUnion*
  %30 = bitcast %union.GCUnion* %29 to %struct.Table*
  %31 = getelementptr inbounds %struct.Table, %struct.Table* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %24, %33
  br i1 %34, label %35, label %47

; <label>:35:                                     ; preds = %22
  %36 = load %struct.TValue*, %struct.TValue** %7, align 8
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %36, i32 0, i32 0
  %38 = bitcast %union.Value* %37 to %struct.GCObject**
  %39 = load %struct.GCObject*, %struct.GCObject** %38, align 8
  %40 = bitcast %struct.GCObject* %39 to %union.GCUnion*
  %41 = bitcast %union.GCUnion* %40 to %struct.Table*
  %42 = getelementptr inbounds %struct.Table, %struct.Table* %41, i32 0, i32 6
  %43 = load %struct.TValue*, %struct.TValue** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub nsw i64 %44, 1
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %43, i64 %45
  br label %56

; <label>:47:                                     ; preds = %22
  %48 = load %struct.TValue*, %struct.TValue** %7, align 8
  %49 = getelementptr inbounds %struct.TValue, %struct.TValue* %48, i32 0, i32 0
  %50 = bitcast %union.Value* %49 to %struct.GCObject**
  %51 = load %struct.GCObject*, %struct.GCObject** %50, align 8
  %52 = bitcast %struct.GCObject* %51 to %union.GCUnion*
  %53 = bitcast %union.GCUnion* %52 to %struct.Table*
  %54 = load i64, i64* %6, align 8
  %55 = call %struct.TValue* @luaH_getint(%struct.Table* %53, i64 %54)
  br label %56

; <label>:56:                                     ; preds = %47, %35
  %57 = phi %struct.TValue* [ %46, %35 ], [ %55, %47 ]
  store %struct.TValue* %57, %struct.TValue** %8, align 8
  %58 = load %struct.TValue*, %struct.TValue** %8, align 8
  %59 = getelementptr inbounds %struct.TValue, %struct.TValue* %58, i32 0, i32 1
  %60 = load i8, i8* %59, align 8
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 15
  %63 = icmp eq i32 %62, 0
  %64 = xor i1 %63, true
  br i1 %64, label %65, label %83

; <label>:65:                                     ; preds = %56, %21
  %66 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %66, i32 0, i32 6
  %68 = load %union.StackValue*, %union.StackValue** %67, align 8
  %69 = bitcast %union.StackValue* %68 to %struct.TValue*
  store %struct.TValue* %69, %struct.TValue** %9, align 8
  %70 = load %struct.TValue*, %struct.TValue** %8, align 8
  store %struct.TValue* %70, %struct.TValue** %10, align 8
  %71 = load %struct.TValue*, %struct.TValue** %9, align 8
  %72 = getelementptr inbounds %struct.TValue, %struct.TValue* %71, i32 0, i32 0
  %73 = load %struct.TValue*, %struct.TValue** %10, align 8
  %74 = getelementptr inbounds %struct.TValue, %struct.TValue* %73, i32 0, i32 0
  %75 = bitcast %union.Value* %72 to i8*
  %76 = bitcast %union.Value* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 8, i32 8, i1 false)
  %77 = load %struct.TValue*, %struct.TValue** %10, align 8
  %78 = getelementptr inbounds %struct.TValue, %struct.TValue* %77, i32 0, i32 1
  %79 = load i8, i8* %78, align 8
  %80 = load %struct.TValue*, %struct.TValue** %9, align 8
  %81 = getelementptr inbounds %struct.TValue, %struct.TValue* %80, i32 0, i32 1
  store i8 %79, i8* %81, align 8
  %82 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  br label %96

; <label>:83:                                     ; preds = %56, %21
  store %struct.TValue* %11, %struct.TValue** %12, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.TValue*, %struct.TValue** %12, align 8
  %86 = getelementptr inbounds %struct.TValue, %struct.TValue* %85, i32 0, i32 0
  %87 = bitcast %union.Value* %86 to i64*
  store i64 %84, i64* %87, align 8
  %88 = load %struct.TValue*, %struct.TValue** %12, align 8
  %89 = getelementptr inbounds %struct.TValue, %struct.TValue* %88, i32 0, i32 1
  store i8 35, i8* %89, align 8
  %90 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %91 = load %struct.TValue*, %struct.TValue** %7, align 8
  %92 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %93 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %92, i32 0, i32 6
  %94 = load %union.StackValue*, %union.StackValue** %93, align 8
  %95 = load %struct.TValue*, %struct.TValue** %8, align 8
  call void @luaV_finishget(%struct.lua_State* %90, %struct.TValue* %91, %struct.TValue* %11, %union.StackValue* %94, %struct.TValue* %95)
  br label %96

; <label>:96:                                     ; preds = %83, %65
  %97 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %98 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %97, i32 0, i32 6
  %99 = load %union.StackValue*, %union.StackValue** %98, align 8
  %100 = getelementptr inbounds %union.StackValue, %union.StackValue* %99, i32 1
  store %union.StackValue* %100, %union.StackValue** %98, align 8
  %101 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %102 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %101, i32 0, i32 6
  %103 = load %union.StackValue*, %union.StackValue** %102, align 8
  %104 = getelementptr inbounds %union.StackValue, %union.StackValue* %103, i64 -1
  %105 = bitcast %union.StackValue* %104 to %struct.TValue*
  %106 = getelementptr inbounds %struct.TValue, %struct.TValue* %105, i32 0, i32 1
  %107 = load i8, i8* %106, align 8
  %108 = zext i8 %107 to i32
  %109 = and i32 %108, 15
  ret i32 %109
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_rawget(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Table*, align 8
  %6 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.Table* @gettable(%struct.lua_State* %7, i32 %8)
  store %struct.Table* %9, %struct.Table** %5, align 8
  %10 = load %struct.Table*, %struct.Table** %5, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8
  %14 = getelementptr inbounds %union.StackValue, %union.StackValue* %13, i64 -1
  %15 = bitcast %union.StackValue* %14 to %struct.TValue*
  %16 = call %struct.TValue* @luaH_get(%struct.Table* %10, %struct.TValue* %15)
  store %struct.TValue* %16, %struct.TValue** %6, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 6
  %19 = load %union.StackValue*, %union.StackValue** %18, align 8
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i32 -1
  store %union.StackValue* %20, %union.StackValue** %18, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = load %struct.TValue*, %struct.TValue** %6, align 8
  %23 = call i32 @finishrawget(%struct.lua_State* %21, %struct.TValue* %22)
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Table* @gettable(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TValue* @index2value(%struct.lua_State* %6, i32 %7)
  store %struct.TValue* %8, %struct.TValue** %5, align 8
  %9 = load %struct.TValue*, %struct.TValue** %5, align 8
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i32 0, i32 0
  %11 = bitcast %union.Value* %10 to %struct.GCObject**
  %12 = load %struct.GCObject*, %struct.GCObject** %11, align 8
  %13 = bitcast %struct.GCObject* %12 to %union.GCUnion*
  %14 = bitcast %union.GCUnion* %13 to %struct.Table*
  ret %struct.Table* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finishrawget(%struct.lua_State*, %struct.TValue*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.TValue*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.TValue* %1, %struct.TValue** %4, align 8
  %7 = load %struct.TValue*, %struct.TValue** %4, align 8
  %8 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i32 0, i32 1
  %9 = load i8, i8* %8, align 8
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %2
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 6
  %16 = load %union.StackValue*, %union.StackValue** %15, align 8
  %17 = bitcast %union.StackValue* %16 to %struct.TValue*
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %17, i32 0, i32 1
  store i8 0, i8* %18, align 8
  br label %37

; <label>:19:                                     ; preds = %2
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 6
  %22 = load %union.StackValue*, %union.StackValue** %21, align 8
  %23 = bitcast %union.StackValue* %22 to %struct.TValue*
  store %struct.TValue* %23, %struct.TValue** %5, align 8
  %24 = load %struct.TValue*, %struct.TValue** %4, align 8
  store %struct.TValue* %24, %struct.TValue** %6, align 8
  %25 = load %struct.TValue*, %struct.TValue** %5, align 8
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i32 0, i32 0
  %27 = load %struct.TValue*, %struct.TValue** %6, align 8
  %28 = getelementptr inbounds %struct.TValue, %struct.TValue* %27, i32 0, i32 0
  %29 = bitcast %union.Value* %26 to i8*
  %30 = bitcast %union.Value* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 8, i32 8, i1 false)
  %31 = load %struct.TValue*, %struct.TValue** %6, align 8
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 8
  %34 = load %struct.TValue*, %struct.TValue** %5, align 8
  %35 = getelementptr inbounds %struct.TValue, %struct.TValue* %34, i32 0, i32 1
  store i8 %33, i8* %35, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  br label %37

; <label>:37:                                     ; preds = %19, %13
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 6
  %40 = load %union.StackValue*, %union.StackValue** %39, align 8
  %41 = getelementptr inbounds %union.StackValue, %union.StackValue* %40, i32 1
  store %union.StackValue* %41, %union.StackValue** %39, align 8
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 6
  %44 = load %union.StackValue*, %union.StackValue** %43, align 8
  %45 = getelementptr inbounds %union.StackValue, %union.StackValue* %44, i64 -1
  %46 = bitcast %union.StackValue* %45 to %struct.TValue*
  %47 = getelementptr inbounds %struct.TValue, %struct.TValue* %46, i32 0, i32 1
  %48 = load i8, i8* %47, align 8
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 15
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_rawgeti(%struct.lua_State*, i32, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.Table* @gettable(%struct.lua_State* %8, i32 %9)
  store %struct.Table* %10, %struct.Table** %7, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load %struct.Table*, %struct.Table** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call %struct.TValue* @luaH_getint(%struct.Table* %12, i64 %13)
  %15 = call i32 @finishrawget(%struct.lua_State* %11, %struct.TValue* %14)
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_rawgetp(%struct.lua_State*, i32, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Table*, align 8
  %8 = alloca %struct.TValue, align 8
  %9 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.Table* @gettable(%struct.lua_State* %10, i32 %11)
  store %struct.Table* %12, %struct.Table** %7, align 8
  store %struct.TValue* %8, %struct.TValue** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.TValue*, %struct.TValue** %9, align 8
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 0
  %16 = bitcast %union.Value* %15 to i8**
  store i8* %13, i8** %16, align 8
  %17 = load %struct.TValue*, %struct.TValue** %9, align 8
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %17, i32 0, i32 1
  store i8 2, i8* %18, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %20 = load %struct.Table*, %struct.Table** %7, align 8
  %21 = call %struct.TValue* @luaH_get(%struct.Table* %20, %struct.TValue* %8)
  %22 = call i32 @finishrawget(%struct.lua_State* %19, %struct.TValue* %21)
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_createtable(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Table*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = call %struct.Table* @luaH_new(%struct.lua_State* %10)
  store %struct.Table* %11, %struct.Table** %7, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 6
  %14 = load %union.StackValue*, %union.StackValue** %13, align 8
  %15 = bitcast %union.StackValue* %14 to %struct.TValue*
  store %struct.TValue* %15, %struct.TValue** %8, align 8
  %16 = load %struct.Table*, %struct.Table** %7, align 8
  store %struct.Table* %16, %struct.Table** %9, align 8
  %17 = load %struct.Table*, %struct.Table** %9, align 8
  %18 = bitcast %struct.Table* %17 to %union.GCUnion*
  %19 = bitcast %union.GCUnion* %18 to %struct.GCObject*
  %20 = load %struct.TValue*, %struct.TValue** %8, align 8
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %20, i32 0, i32 0
  %22 = bitcast %union.Value* %21 to %struct.GCObject**
  store %struct.GCObject* %19, %struct.GCObject** %22, align 8
  %23 = load %struct.TValue*, %struct.TValue** %8, align 8
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %23, i32 0, i32 1
  store i8 69, i8* %24, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 6
  %27 = load %union.StackValue*, %union.StackValue** %26, align 8
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i32 1
  store %union.StackValue* %28, %union.StackValue** %26, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %39

; <label>:34:                                     ; preds = %31, %3
  %35 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %36 = load %struct.Table*, %struct.Table** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  call void @luaH_resize(%struct.lua_State* %35, %struct.Table* %36, i32 %37, i32 %38)
  br label %39

; <label>:39:                                     ; preds = %34, %31
  %40 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 7
  %42 = load %struct.global_State*, %struct.global_State** %41, align 8
  %43 = getelementptr inbounds %struct.global_State, %struct.global_State* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %48

; <label>:46:                                     ; preds = %39
  %47 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaC_step(%struct.lua_State* %47)
  br label %48

; <label>:48:                                     ; preds = %46, %39
  ret void
}

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) #1

declare hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_getmetatable(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.TValue* @index2value(%struct.lua_State* %10, i32 %11)
  store %struct.TValue* %12, %struct.TValue** %5, align 8
  %13 = load %struct.TValue*, %struct.TValue** %5, align 8
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %13, i32 0, i32 1
  %15 = load i8, i8* %14, align 8
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 15
  switch i32 %17, label %36 [
    i32 5, label %18
    i32 7, label %27
  ]

; <label>:18:                                     ; preds = %2
  %19 = load %struct.TValue*, %struct.TValue** %5, align 8
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i32 0, i32 0
  %21 = bitcast %union.Value* %20 to %struct.GCObject**
  %22 = load %struct.GCObject*, %struct.GCObject** %21, align 8
  %23 = bitcast %struct.GCObject* %22 to %union.GCUnion*
  %24 = bitcast %union.GCUnion* %23 to %struct.Table*
  %25 = getelementptr inbounds %struct.Table, %struct.Table* %24, i32 0, i32 9
  %26 = load %struct.Table*, %struct.Table** %25, align 8
  store %struct.Table* %26, %struct.Table** %6, align 8
  br label %49

; <label>:27:                                     ; preds = %2
  %28 = load %struct.TValue*, %struct.TValue** %5, align 8
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i32 0, i32 0
  %30 = bitcast %union.Value* %29 to %struct.GCObject**
  %31 = load %struct.GCObject*, %struct.GCObject** %30, align 8
  %32 = bitcast %struct.GCObject* %31 to %union.GCUnion*
  %33 = bitcast %union.GCUnion* %32 to %struct.Udata*
  %34 = getelementptr inbounds %struct.Udata, %struct.Udata* %33, i32 0, i32 5
  %35 = load %struct.Table*, %struct.Table** %34, align 8
  store %struct.Table* %35, %struct.Table** %6, align 8
  br label %49

; <label>:36:                                     ; preds = %2
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 7
  %39 = load %struct.global_State*, %struct.global_State** %38, align 8
  %40 = getelementptr inbounds %struct.global_State, %struct.global_State* %39, i32 0, i32 41
  %41 = load %struct.TValue*, %struct.TValue** %5, align 8
  %42 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i32 0, i32 1
  %43 = load i8, i8* %42, align 8
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 15
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %40, i64 0, i64 %46
  %48 = load %struct.Table*, %struct.Table** %47, align 8
  store %struct.Table* %48, %struct.Table** %6, align 8
  br label %49

; <label>:49:                                     ; preds = %36, %27, %18
  %50 = load %struct.Table*, %struct.Table** %6, align 8
  %51 = icmp ne %struct.Table* %50, null
  br i1 %51, label %52, label %70

; <label>:52:                                     ; preds = %49
  %53 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %54 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %53, i32 0, i32 6
  %55 = load %union.StackValue*, %union.StackValue** %54, align 8
  %56 = bitcast %union.StackValue* %55 to %struct.TValue*
  store %struct.TValue* %56, %struct.TValue** %8, align 8
  %57 = load %struct.Table*, %struct.Table** %6, align 8
  store %struct.Table* %57, %struct.Table** %9, align 8
  %58 = load %struct.Table*, %struct.Table** %9, align 8
  %59 = bitcast %struct.Table* %58 to %union.GCUnion*
  %60 = bitcast %union.GCUnion* %59 to %struct.GCObject*
  %61 = load %struct.TValue*, %struct.TValue** %8, align 8
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i32 0, i32 0
  %63 = bitcast %union.Value* %62 to %struct.GCObject**
  store %struct.GCObject* %60, %struct.GCObject** %63, align 8
  %64 = load %struct.TValue*, %struct.TValue** %8, align 8
  %65 = getelementptr inbounds %struct.TValue, %struct.TValue* %64, i32 0, i32 1
  store i8 69, i8* %65, align 8
  %66 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %66, i32 0, i32 6
  %68 = load %union.StackValue*, %union.StackValue** %67, align 8
  %69 = getelementptr inbounds %union.StackValue, %union.StackValue* %68, i32 1
  store %union.StackValue* %69, %union.StackValue** %67, align 8
  store i32 1, i32* %7, align 4
  br label %70

; <label>:70:                                     ; preds = %52, %49
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_getiuservalue(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TValue* @index2value(%struct.lua_State* %11, i32 %12)
  store %struct.TValue* %13, %struct.TValue** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %28, label %16

; <label>:16:                                     ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TValue*, %struct.TValue** %7, align 8
  %19 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i32 0, i32 0
  %20 = bitcast %union.Value* %19 to %struct.GCObject**
  %21 = load %struct.GCObject*, %struct.GCObject** %20, align 8
  %22 = bitcast %struct.GCObject* %21 to %union.GCUnion*
  %23 = bitcast %union.GCUnion* %22 to %struct.Udata*
  %24 = getelementptr inbounds %struct.Udata, %struct.Udata* %23, i32 0, i32 3
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp sgt i32 %17, %26
  br i1 %27, label %28, label %34

; <label>:28:                                     ; preds = %16, %3
  %29 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 6
  %31 = load %union.StackValue*, %union.StackValue** %30, align 8
  %32 = bitcast %union.StackValue* %31 to %struct.TValue*
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i32 0, i32 1
  store i8 0, i8* %33, align 8
  store i32 -1, i32* %8, align 4
  br label %71

; <label>:34:                                     ; preds = %16
  %35 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 6
  %37 = load %union.StackValue*, %union.StackValue** %36, align 8
  %38 = bitcast %union.StackValue* %37 to %struct.TValue*
  store %struct.TValue* %38, %struct.TValue** %9, align 8
  %39 = load %struct.TValue*, %struct.TValue** %7, align 8
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %39, i32 0, i32 0
  %41 = bitcast %union.Value* %40 to %struct.GCObject**
  %42 = load %struct.GCObject*, %struct.GCObject** %41, align 8
  %43 = bitcast %struct.GCObject* %42 to %union.GCUnion*
  %44 = bitcast %union.GCUnion* %43 to %struct.Udata*
  %45 = getelementptr inbounds %struct.Udata, %struct.Udata* %44, i32 0, i32 7
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [1 x %union.UValue], [1 x %union.UValue]* %45, i64 0, i64 %48
  %50 = bitcast %union.UValue* %49 to %struct.TValue*
  store %struct.TValue* %50, %struct.TValue** %10, align 8
  %51 = load %struct.TValue*, %struct.TValue** %9, align 8
  %52 = getelementptr inbounds %struct.TValue, %struct.TValue* %51, i32 0, i32 0
  %53 = load %struct.TValue*, %struct.TValue** %10, align 8
  %54 = getelementptr inbounds %struct.TValue, %struct.TValue* %53, i32 0, i32 0
  %55 = bitcast %union.Value* %52 to i8*
  %56 = bitcast %union.Value* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 8, i32 8, i1 false)
  %57 = load %struct.TValue*, %struct.TValue** %10, align 8
  %58 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i32 0, i32 1
  %59 = load i8, i8* %58, align 8
  %60 = load %struct.TValue*, %struct.TValue** %9, align 8
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i32 0, i32 1
  store i8 %59, i8* %61, align 8
  %62 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %63 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %63, i32 0, i32 6
  %65 = load %union.StackValue*, %union.StackValue** %64, align 8
  %66 = bitcast %union.StackValue* %65 to %struct.TValue*
  %67 = getelementptr inbounds %struct.TValue, %struct.TValue* %66, i32 0, i32 1
  %68 = load i8, i8* %67, align 8
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 15
  store i32 %70, i32* %8, align 4
  br label %71

; <label>:71:                                     ; preds = %34, %28
  %72 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %73 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %72, i32 0, i32 6
  %74 = load %union.StackValue*, %union.StackValue** %73, align 8
  %75 = getelementptr inbounds %union.StackValue, %union.StackValue* %74, i32 1
  store %union.StackValue* %75, %union.StackValue** %73, align 8
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_setglobal(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 7
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 7
  %10 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i32 0, i32 0
  %11 = bitcast %union.Value* %10 to %struct.GCObject**
  %12 = load %struct.GCObject*, %struct.GCObject** %11, align 8
  %13 = bitcast %struct.GCObject* %12 to %union.GCUnion*
  %14 = bitcast %union.GCUnion* %13 to %struct.Table*
  store %struct.Table* %14, %struct.Table** %5, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = load %struct.Table*, %struct.Table** %5, align 8
  %17 = call %struct.TValue* @luaH_getint(%struct.Table* %16, i64 2)
  %18 = load i8*, i8** %4, align 8
  call void @auxsetstr(%struct.lua_State* %15, %struct.TValue* %17, i8* %18)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auxsetstr(%struct.lua_State*, %struct.TValue*, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TString*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca %struct.TValue*, align 8
  %12 = alloca %struct.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.TValue* %1, %struct.TValue** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.TString* @luaS_new(%struct.lua_State* %13, i8* %14)
  store %struct.TString* %15, %struct.TString** %8, align 8
  %16 = load %struct.TValue*, %struct.TValue** %5, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 8
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 69
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %3
  store %struct.TValue* null, %struct.TValue** %7, align 8
  br i1 false, label %38, label %103

; <label>:22:                                     ; preds = %3
  %23 = load %struct.TValue*, %struct.TValue** %5, align 8
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %23, i32 0, i32 0
  %25 = bitcast %union.Value* %24 to %struct.GCObject**
  %26 = load %struct.GCObject*, %struct.GCObject** %25, align 8
  %27 = bitcast %struct.GCObject* %26 to %union.GCUnion*
  %28 = bitcast %union.GCUnion* %27 to %struct.Table*
  %29 = load %struct.TString*, %struct.TString** %8, align 8
  %30 = call %struct.TValue* @luaH_getstr(%struct.Table* %28, %struct.TString* %29)
  store %struct.TValue* %30, %struct.TValue** %7, align 8
  %31 = load %struct.TValue*, %struct.TValue** %7, align 8
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 8
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 15
  %36 = icmp eq i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %103

; <label>:38:                                     ; preds = %22, %21
  %39 = load %struct.TValue*, %struct.TValue** %7, align 8
  store %struct.TValue* %39, %struct.TValue** %9, align 8
  %40 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 6
  %42 = load %union.StackValue*, %union.StackValue** %41, align 8
  %43 = getelementptr inbounds %union.StackValue, %union.StackValue* %42, i64 -1
  %44 = bitcast %union.StackValue* %43 to %struct.TValue*
  store %struct.TValue* %44, %struct.TValue** %10, align 8
  %45 = load %struct.TValue*, %struct.TValue** %9, align 8
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i32 0, i32 0
  %47 = load %struct.TValue*, %struct.TValue** %10, align 8
  %48 = getelementptr inbounds %struct.TValue, %struct.TValue* %47, i32 0, i32 0
  %49 = bitcast %union.Value* %46 to i8*
  %50 = bitcast %union.Value* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 8, i32 8, i1 false)
  %51 = load %struct.TValue*, %struct.TValue** %10, align 8
  %52 = getelementptr inbounds %struct.TValue, %struct.TValue* %51, i32 0, i32 1
  %53 = load i8, i8* %52, align 8
  %54 = load %struct.TValue*, %struct.TValue** %9, align 8
  %55 = getelementptr inbounds %struct.TValue, %struct.TValue* %54, i32 0, i32 1
  store i8 %53, i8* %55, align 8
  %56 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %57 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %57, i32 0, i32 6
  %59 = load %union.StackValue*, %union.StackValue** %58, align 8
  %60 = getelementptr inbounds %union.StackValue, %union.StackValue* %59, i64 -1
  %61 = bitcast %union.StackValue* %60 to %struct.TValue*
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i32 0, i32 1
  %63 = load i8, i8* %62, align 8
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %97

; <label>:67:                                     ; preds = %38
  %68 = load %struct.TValue*, %struct.TValue** %5, align 8
  %69 = getelementptr inbounds %struct.TValue, %struct.TValue* %68, i32 0, i32 0
  %70 = bitcast %union.Value* %69 to %struct.GCObject**
  %71 = load %struct.GCObject*, %struct.GCObject** %70, align 8
  %72 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %71, i32 0, i32 2
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %97

; <label>:77:                                     ; preds = %67
  %78 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %78, i32 0, i32 6
  %80 = load %union.StackValue*, %union.StackValue** %79, align 8
  %81 = getelementptr inbounds %union.StackValue, %union.StackValue* %80, i64 -1
  %82 = bitcast %union.StackValue* %81 to %struct.TValue*
  %83 = getelementptr inbounds %struct.TValue, %struct.TValue* %82, i32 0, i32 0
  %84 = bitcast %union.Value* %83 to %struct.GCObject**
  %85 = load %struct.GCObject*, %struct.GCObject** %84, align 8
  %86 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %85, i32 0, i32 2
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 24
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

; <label>:91:                                     ; preds = %77
  %92 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %93 = load %struct.TValue*, %struct.TValue** %5, align 8
  %94 = getelementptr inbounds %struct.TValue, %struct.TValue* %93, i32 0, i32 0
  %95 = bitcast %union.Value* %94 to %struct.GCObject**
  %96 = load %struct.GCObject*, %struct.GCObject** %95, align 8
  call void @luaC_barrierback_(%struct.lua_State* %92, %struct.GCObject* %96)
  br label %98

; <label>:97:                                     ; preds = %77, %67, %38
  br label %98

; <label>:98:                                     ; preds = %97, %91
  %99 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %100 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %99, i32 0, i32 6
  %101 = load %union.StackValue*, %union.StackValue** %100, align 8
  %102 = getelementptr inbounds %union.StackValue, %union.StackValue* %101, i32 -1
  store %union.StackValue* %102, %union.StackValue** %100, align 8
  br label %144

; <label>:103:                                    ; preds = %22, %21
  %104 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %105 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %104, i32 0, i32 6
  %106 = load %union.StackValue*, %union.StackValue** %105, align 8
  %107 = bitcast %union.StackValue* %106 to %struct.TValue*
  store %struct.TValue* %107, %struct.TValue** %11, align 8
  %108 = load %struct.TString*, %struct.TString** %8, align 8
  store %struct.TString* %108, %struct.TString** %12, align 8
  %109 = load %struct.TString*, %struct.TString** %12, align 8
  %110 = bitcast %struct.TString* %109 to %union.GCUnion*
  %111 = bitcast %union.GCUnion* %110 to %struct.GCObject*
  %112 = load %struct.TValue*, %struct.TValue** %11, align 8
  %113 = getelementptr inbounds %struct.TValue, %struct.TValue* %112, i32 0, i32 0
  %114 = bitcast %union.Value* %113 to %struct.GCObject**
  store %struct.GCObject* %111, %struct.GCObject** %114, align 8
  %115 = load %struct.TString*, %struct.TString** %12, align 8
  %116 = getelementptr inbounds %struct.TString, %struct.TString* %115, i32 0, i32 1
  %117 = load i8, i8* %116, align 8
  %118 = zext i8 %117 to i32
  %119 = or i32 %118, 64
  %120 = trunc i32 %119 to i8
  %121 = load %struct.TValue*, %struct.TValue** %11, align 8
  %122 = getelementptr inbounds %struct.TValue, %struct.TValue* %121, i32 0, i32 1
  store i8 %120, i8* %122, align 8
  %123 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %124 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %123, i32 0, i32 6
  %125 = load %union.StackValue*, %union.StackValue** %124, align 8
  %126 = getelementptr inbounds %union.StackValue, %union.StackValue* %125, i32 1
  store %union.StackValue* %126, %union.StackValue** %124, align 8
  %127 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %128 = load %struct.TValue*, %struct.TValue** %5, align 8
  %129 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %130 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %129, i32 0, i32 6
  %131 = load %union.StackValue*, %union.StackValue** %130, align 8
  %132 = getelementptr inbounds %union.StackValue, %union.StackValue* %131, i64 -1
  %133 = bitcast %union.StackValue* %132 to %struct.TValue*
  %134 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %135 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %134, i32 0, i32 6
  %136 = load %union.StackValue*, %union.StackValue** %135, align 8
  %137 = getelementptr inbounds %union.StackValue, %union.StackValue* %136, i64 -2
  %138 = bitcast %union.StackValue* %137 to %struct.TValue*
  %139 = load %struct.TValue*, %struct.TValue** %7, align 8
  call void @luaV_finishset(%struct.lua_State* %127, %struct.TValue* %128, %struct.TValue* %133, %struct.TValue* %138, %struct.TValue* %139)
  %140 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %141 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %140, i32 0, i32 6
  %142 = load %union.StackValue*, %union.StackValue** %141, align 8
  %143 = getelementptr inbounds %union.StackValue, %union.StackValue* %142, i64 -2
  store %union.StackValue* %143, %union.StackValue** %141, align 8
  br label %144

; <label>:144:                                    ; preds = %103, %98
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_settable(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.TValue* @index2value(%struct.lua_State* %9, i32 %10)
  store %struct.TValue* %11, %struct.TValue** %5, align 8
  %12 = load %struct.TValue*, %struct.TValue** %5, align 8
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i32 0, i32 1
  %14 = load i8, i8* %13, align 8
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 69
  br i1 %16, label %18, label %17

; <label>:17:                                     ; preds = %2
  store %struct.TValue* null, %struct.TValue** %6, align 8
  br i1 false, label %38, label %99

; <label>:18:                                     ; preds = %2
  %19 = load %struct.TValue*, %struct.TValue** %5, align 8
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i32 0, i32 0
  %21 = bitcast %union.Value* %20 to %struct.GCObject**
  %22 = load %struct.GCObject*, %struct.GCObject** %21, align 8
  %23 = bitcast %struct.GCObject* %22 to %union.GCUnion*
  %24 = bitcast %union.GCUnion* %23 to %struct.Table*
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 6
  %27 = load %union.StackValue*, %union.StackValue** %26, align 8
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 -2
  %29 = bitcast %union.StackValue* %28 to %struct.TValue*
  %30 = call %struct.TValue* @luaH_get(%struct.Table* %24, %struct.TValue* %29)
  store %struct.TValue* %30, %struct.TValue** %6, align 8
  %31 = load %struct.TValue*, %struct.TValue** %6, align 8
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 8
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 15
  %36 = icmp eq i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %99

; <label>:38:                                     ; preds = %18, %17
  %39 = load %struct.TValue*, %struct.TValue** %6, align 8
  store %struct.TValue* %39, %struct.TValue** %7, align 8
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 6
  %42 = load %union.StackValue*, %union.StackValue** %41, align 8
  %43 = getelementptr inbounds %union.StackValue, %union.StackValue* %42, i64 -1
  %44 = bitcast %union.StackValue* %43 to %struct.TValue*
  store %struct.TValue* %44, %struct.TValue** %8, align 8
  %45 = load %struct.TValue*, %struct.TValue** %7, align 8
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i32 0, i32 0
  %47 = load %struct.TValue*, %struct.TValue** %8, align 8
  %48 = getelementptr inbounds %struct.TValue, %struct.TValue* %47, i32 0, i32 0
  %49 = bitcast %union.Value* %46 to i8*
  %50 = bitcast %union.Value* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 8, i32 8, i1 false)
  %51 = load %struct.TValue*, %struct.TValue** %8, align 8
  %52 = getelementptr inbounds %struct.TValue, %struct.TValue* %51, i32 0, i32 1
  %53 = load i8, i8* %52, align 8
  %54 = load %struct.TValue*, %struct.TValue** %7, align 8
  %55 = getelementptr inbounds %struct.TValue, %struct.TValue* %54, i32 0, i32 1
  store i8 %53, i8* %55, align 8
  %56 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %57 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %57, i32 0, i32 6
  %59 = load %union.StackValue*, %union.StackValue** %58, align 8
  %60 = getelementptr inbounds %union.StackValue, %union.StackValue* %59, i64 -1
  %61 = bitcast %union.StackValue* %60 to %struct.TValue*
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i32 0, i32 1
  %63 = load i8, i8* %62, align 8
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %97

; <label>:67:                                     ; preds = %38
  %68 = load %struct.TValue*, %struct.TValue** %5, align 8
  %69 = getelementptr inbounds %struct.TValue, %struct.TValue* %68, i32 0, i32 0
  %70 = bitcast %union.Value* %69 to %struct.GCObject**
  %71 = load %struct.GCObject*, %struct.GCObject** %70, align 8
  %72 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %71, i32 0, i32 2
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %97

; <label>:77:                                     ; preds = %67
  %78 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %78, i32 0, i32 6
  %80 = load %union.StackValue*, %union.StackValue** %79, align 8
  %81 = getelementptr inbounds %union.StackValue, %union.StackValue* %80, i64 -1
  %82 = bitcast %union.StackValue* %81 to %struct.TValue*
  %83 = getelementptr inbounds %struct.TValue, %struct.TValue* %82, i32 0, i32 0
  %84 = bitcast %union.Value* %83 to %struct.GCObject**
  %85 = load %struct.GCObject*, %struct.GCObject** %84, align 8
  %86 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %85, i32 0, i32 2
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 24
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

; <label>:91:                                     ; preds = %77
  %92 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %93 = load %struct.TValue*, %struct.TValue** %5, align 8
  %94 = getelementptr inbounds %struct.TValue, %struct.TValue* %93, i32 0, i32 0
  %95 = bitcast %union.Value* %94 to %struct.GCObject**
  %96 = load %struct.GCObject*, %struct.GCObject** %95, align 8
  call void @luaC_barrierback_(%struct.lua_State* %92, %struct.GCObject* %96)
  br label %98

; <label>:97:                                     ; preds = %77, %67, %38
  br label %98

; <label>:98:                                     ; preds = %97, %91
  br label %113

; <label>:99:                                     ; preds = %18, %17
  %100 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %101 = load %struct.TValue*, %struct.TValue** %5, align 8
  %102 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %103 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %102, i32 0, i32 6
  %104 = load %union.StackValue*, %union.StackValue** %103, align 8
  %105 = getelementptr inbounds %union.StackValue, %union.StackValue* %104, i64 -2
  %106 = bitcast %union.StackValue* %105 to %struct.TValue*
  %107 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %108 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %107, i32 0, i32 6
  %109 = load %union.StackValue*, %union.StackValue** %108, align 8
  %110 = getelementptr inbounds %union.StackValue, %union.StackValue* %109, i64 -1
  %111 = bitcast %union.StackValue* %110 to %struct.TValue*
  %112 = load %struct.TValue*, %struct.TValue** %6, align 8
  call void @luaV_finishset(%struct.lua_State* %100, %struct.TValue* %101, %struct.TValue* %106, %struct.TValue* %111, %struct.TValue* %112)
  br label %113

; <label>:113:                                    ; preds = %99, %98
  %114 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %115 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %114, i32 0, i32 6
  %116 = load %union.StackValue*, %union.StackValue** %115, align 8
  %117 = getelementptr inbounds %union.StackValue, %union.StackValue* %116, i64 -2
  store %union.StackValue* %117, %union.StackValue** %115, align 8
  ret void
}

declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.GCObject*) #1

declare hidden void @luaV_finishset(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %struct.TValue*, %struct.TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_setfield(%struct.lua_State*, i32, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.TValue* @index2value(%struct.lua_State* %8, i32 %9)
  %11 = load i8*, i8** %6, align 8
  call void @auxsetstr(%struct.lua_State* %7, %struct.TValue* %10, i8* %11)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_seti(%struct.lua_State*, i32, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca %struct.TValue, align 8
  %12 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TValue* @index2value(%struct.lua_State* %13, i32 %14)
  store %struct.TValue* %15, %struct.TValue** %7, align 8
  %16 = load %struct.TValue*, %struct.TValue** %7, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 8
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 69
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %3
  store %struct.TValue* null, %struct.TValue** %8, align 8
  br i1 false, label %65, label %126

; <label>:22:                                     ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 %23, 1
  %25 = load %struct.TValue*, %struct.TValue** %7, align 8
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i32 0, i32 0
  %27 = bitcast %union.Value* %26 to %struct.GCObject**
  %28 = load %struct.GCObject*, %struct.GCObject** %27, align 8
  %29 = bitcast %struct.GCObject* %28 to %union.GCUnion*
  %30 = bitcast %union.GCUnion* %29 to %struct.Table*
  %31 = getelementptr inbounds %struct.Table, %struct.Table* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %24, %33
  br i1 %34, label %35, label %47

; <label>:35:                                     ; preds = %22
  %36 = load %struct.TValue*, %struct.TValue** %7, align 8
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %36, i32 0, i32 0
  %38 = bitcast %union.Value* %37 to %struct.GCObject**
  %39 = load %struct.GCObject*, %struct.GCObject** %38, align 8
  %40 = bitcast %struct.GCObject* %39 to %union.GCUnion*
  %41 = bitcast %union.GCUnion* %40 to %struct.Table*
  %42 = getelementptr inbounds %struct.Table, %struct.Table* %41, i32 0, i32 6
  %43 = load %struct.TValue*, %struct.TValue** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub nsw i64 %44, 1
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %43, i64 %45
  br label %56

; <label>:47:                                     ; preds = %22
  %48 = load %struct.TValue*, %struct.TValue** %7, align 8
  %49 = getelementptr inbounds %struct.TValue, %struct.TValue* %48, i32 0, i32 0
  %50 = bitcast %union.Value* %49 to %struct.GCObject**
  %51 = load %struct.GCObject*, %struct.GCObject** %50, align 8
  %52 = bitcast %struct.GCObject* %51 to %union.GCUnion*
  %53 = bitcast %union.GCUnion* %52 to %struct.Table*
  %54 = load i64, i64* %6, align 8
  %55 = call %struct.TValue* @luaH_getint(%struct.Table* %53, i64 %54)
  br label %56

; <label>:56:                                     ; preds = %47, %35
  %57 = phi %struct.TValue* [ %46, %35 ], [ %55, %47 ]
  store %struct.TValue* %57, %struct.TValue** %8, align 8
  %58 = load %struct.TValue*, %struct.TValue** %8, align 8
  %59 = getelementptr inbounds %struct.TValue, %struct.TValue* %58, i32 0, i32 1
  %60 = load i8, i8* %59, align 8
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 15
  %63 = icmp eq i32 %62, 0
  %64 = xor i1 %63, true
  br i1 %64, label %65, label %126

; <label>:65:                                     ; preds = %56, %21
  %66 = load %struct.TValue*, %struct.TValue** %8, align 8
  store %struct.TValue* %66, %struct.TValue** %9, align 8
  %67 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %68 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %67, i32 0, i32 6
  %69 = load %union.StackValue*, %union.StackValue** %68, align 8
  %70 = getelementptr inbounds %union.StackValue, %union.StackValue* %69, i64 -1
  %71 = bitcast %union.StackValue* %70 to %struct.TValue*
  store %struct.TValue* %71, %struct.TValue** %10, align 8
  %72 = load %struct.TValue*, %struct.TValue** %9, align 8
  %73 = getelementptr inbounds %struct.TValue, %struct.TValue* %72, i32 0, i32 0
  %74 = load %struct.TValue*, %struct.TValue** %10, align 8
  %75 = getelementptr inbounds %struct.TValue, %struct.TValue* %74, i32 0, i32 0
  %76 = bitcast %union.Value* %73 to i8*
  %77 = bitcast %union.Value* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %77, i64 8, i32 8, i1 false)
  %78 = load %struct.TValue*, %struct.TValue** %10, align 8
  %79 = getelementptr inbounds %struct.TValue, %struct.TValue* %78, i32 0, i32 1
  %80 = load i8, i8* %79, align 8
  %81 = load %struct.TValue*, %struct.TValue** %9, align 8
  %82 = getelementptr inbounds %struct.TValue, %struct.TValue* %81, i32 0, i32 1
  store i8 %80, i8* %82, align 8
  %83 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %84 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %85 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %84, i32 0, i32 6
  %86 = load %union.StackValue*, %union.StackValue** %85, align 8
  %87 = getelementptr inbounds %union.StackValue, %union.StackValue* %86, i64 -1
  %88 = bitcast %union.StackValue* %87 to %struct.TValue*
  %89 = getelementptr inbounds %struct.TValue, %struct.TValue* %88, i32 0, i32 1
  %90 = load i8, i8* %89, align 8
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, 64
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %124

; <label>:94:                                     ; preds = %65
  %95 = load %struct.TValue*, %struct.TValue** %7, align 8
  %96 = getelementptr inbounds %struct.TValue, %struct.TValue* %95, i32 0, i32 0
  %97 = bitcast %union.Value* %96 to %struct.GCObject**
  %98 = load %struct.GCObject*, %struct.GCObject** %97, align 8
  %99 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %98, i32 0, i32 2
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = and i32 %101, 32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %124

; <label>:104:                                    ; preds = %94
  %105 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %106 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %105, i32 0, i32 6
  %107 = load %union.StackValue*, %union.StackValue** %106, align 8
  %108 = getelementptr inbounds %union.StackValue, %union.StackValue* %107, i64 -1
  %109 = bitcast %union.StackValue* %108 to %struct.TValue*
  %110 = getelementptr inbounds %struct.TValue, %struct.TValue* %109, i32 0, i32 0
  %111 = bitcast %union.Value* %110 to %struct.GCObject**
  %112 = load %struct.GCObject*, %struct.GCObject** %111, align 8
  %113 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %112, i32 0, i32 2
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 24
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

; <label>:118:                                    ; preds = %104
  %119 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %120 = load %struct.TValue*, %struct.TValue** %7, align 8
  %121 = getelementptr inbounds %struct.TValue, %struct.TValue* %120, i32 0, i32 0
  %122 = bitcast %union.Value* %121 to %struct.GCObject**
  %123 = load %struct.GCObject*, %struct.GCObject** %122, align 8
  call void @luaC_barrierback_(%struct.lua_State* %119, %struct.GCObject* %123)
  br label %125

; <label>:124:                                    ; preds = %104, %94, %65
  br label %125

; <label>:125:                                    ; preds = %124, %118
  br label %141

; <label>:126:                                    ; preds = %56, %21
  store %struct.TValue* %11, %struct.TValue** %12, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load %struct.TValue*, %struct.TValue** %12, align 8
  %129 = getelementptr inbounds %struct.TValue, %struct.TValue* %128, i32 0, i32 0
  %130 = bitcast %union.Value* %129 to i64*
  store i64 %127, i64* %130, align 8
  %131 = load %struct.TValue*, %struct.TValue** %12, align 8
  %132 = getelementptr inbounds %struct.TValue, %struct.TValue* %131, i32 0, i32 1
  store i8 35, i8* %132, align 8
  %133 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %134 = load %struct.TValue*, %struct.TValue** %7, align 8
  %135 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %136 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %135, i32 0, i32 6
  %137 = load %union.StackValue*, %union.StackValue** %136, align 8
  %138 = getelementptr inbounds %union.StackValue, %union.StackValue* %137, i64 -1
  %139 = bitcast %union.StackValue* %138 to %struct.TValue*
  %140 = load %struct.TValue*, %struct.TValue** %8, align 8
  call void @luaV_finishset(%struct.lua_State* %133, %struct.TValue* %134, %struct.TValue* %11, %struct.TValue* %139, %struct.TValue* %140)
  br label %141

; <label>:141:                                    ; preds = %126, %125
  %142 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %143 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %142, i32 0, i32 6
  %144 = load %union.StackValue*, %union.StackValue** %143, align 8
  %145 = getelementptr inbounds %union.StackValue, %union.StackValue* %144, i32 -1
  store %union.StackValue* %145, %union.StackValue** %143, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_rawset(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Table*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.Table* @gettable(%struct.lua_State* %9, i32 %10)
  store %struct.Table* %11, %struct.Table** %5, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = load %struct.Table*, %struct.Table** %5, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 6
  %16 = load %union.StackValue*, %union.StackValue** %15, align 8
  %17 = getelementptr inbounds %union.StackValue, %union.StackValue* %16, i64 -2
  %18 = bitcast %union.StackValue* %17 to %struct.TValue*
  %19 = call %struct.TValue* @luaH_set(%struct.lua_State* %12, %struct.Table* %13, %struct.TValue* %18)
  store %struct.TValue* %19, %struct.TValue** %6, align 8
  %20 = load %struct.TValue*, %struct.TValue** %6, align 8
  store %struct.TValue* %20, %struct.TValue** %7, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 6
  %23 = load %union.StackValue*, %union.StackValue** %22, align 8
  %24 = getelementptr inbounds %union.StackValue, %union.StackValue* %23, i64 -1
  %25 = bitcast %union.StackValue* %24 to %struct.TValue*
  store %struct.TValue* %25, %struct.TValue** %8, align 8
  %26 = load %struct.TValue*, %struct.TValue** %7, align 8
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %26, i32 0, i32 0
  %28 = load %struct.TValue*, %struct.TValue** %8, align 8
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i32 0, i32 0
  %30 = bitcast %union.Value* %27 to i8*
  %31 = bitcast %union.Value* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 8, i32 8, i1 false)
  %32 = load %struct.TValue*, %struct.TValue** %8, align 8
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i32 0, i32 1
  %34 = load i8, i8* %33, align 8
  %35 = load %struct.TValue*, %struct.TValue** %7, align 8
  %36 = getelementptr inbounds %struct.TValue, %struct.TValue* %35, i32 0, i32 1
  store i8 %34, i8* %36, align 8
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = load %struct.Table*, %struct.Table** %5, align 8
  %39 = getelementptr inbounds %struct.Table, %struct.Table* %38, i32 0, i32 3
  store i8 0, i8* %39, align 2
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 6
  %42 = load %union.StackValue*, %union.StackValue** %41, align 8
  %43 = getelementptr inbounds %union.StackValue, %union.StackValue* %42, i64 -1
  %44 = bitcast %union.StackValue* %43 to %struct.TValue*
  %45 = getelementptr inbounds %struct.TValue, %struct.TValue* %44, i32 0, i32 1
  %46 = load i8, i8* %45, align 8
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 64
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %78

; <label>:50:                                     ; preds = %2
  %51 = load %struct.Table*, %struct.Table** %5, align 8
  %52 = bitcast %struct.Table* %51 to %union.GCUnion*
  %53 = bitcast %union.GCUnion* %52 to %struct.GCObject*
  %54 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %53, i32 0, i32 2
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

; <label>:59:                                     ; preds = %50
  %60 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %60, i32 0, i32 6
  %62 = load %union.StackValue*, %union.StackValue** %61, align 8
  %63 = getelementptr inbounds %union.StackValue, %union.StackValue* %62, i64 -1
  %64 = bitcast %union.StackValue* %63 to %struct.TValue*
  %65 = getelementptr inbounds %struct.TValue, %struct.TValue* %64, i32 0, i32 0
  %66 = bitcast %union.Value* %65 to %struct.GCObject**
  %67 = load %struct.GCObject*, %struct.GCObject** %66, align 8
  %68 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %67, i32 0, i32 2
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, 24
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

; <label>:73:                                     ; preds = %59
  %74 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %75 = load %struct.Table*, %struct.Table** %5, align 8
  %76 = bitcast %struct.Table* %75 to %union.GCUnion*
  %77 = bitcast %union.GCUnion* %76 to %struct.GCObject*
  call void @luaC_barrierback_(%struct.lua_State* %74, %struct.GCObject* %77)
  br label %79

; <label>:78:                                     ; preds = %59, %50, %2
  br label %79

; <label>:79:                                     ; preds = %78, %73
  %80 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %80, i32 0, i32 6
  %82 = load %union.StackValue*, %union.StackValue** %81, align 8
  %83 = getelementptr inbounds %union.StackValue, %union.StackValue* %82, i64 -2
  store %union.StackValue* %83, %union.StackValue** %81, align 8
  ret void
}

declare hidden %struct.TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_rawseti(%struct.lua_State*, i32, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.Table* @gettable(%struct.lua_State* %8, i32 %9)
  store %struct.Table* %10, %struct.Table** %7, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load %struct.Table*, %struct.Table** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 6
  %16 = load %union.StackValue*, %union.StackValue** %15, align 8
  %17 = getelementptr inbounds %union.StackValue, %union.StackValue* %16, i64 -1
  %18 = bitcast %union.StackValue* %17 to %struct.TValue*
  call void @luaH_setint(%struct.lua_State* %11, %struct.Table* %12, i64 %13, %struct.TValue* %18)
  %19 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 6
  %21 = load %union.StackValue*, %union.StackValue** %20, align 8
  %22 = getelementptr inbounds %union.StackValue, %union.StackValue* %21, i64 -1
  %23 = bitcast %union.StackValue* %22 to %struct.TValue*
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %23, i32 0, i32 1
  %25 = load i8, i8* %24, align 8
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 64
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %57

; <label>:29:                                     ; preds = %3
  %30 = load %struct.Table*, %struct.Table** %7, align 8
  %31 = bitcast %struct.Table* %30 to %union.GCUnion*
  %32 = bitcast %union.GCUnion* %31 to %struct.GCObject*
  %33 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %32, i32 0, i32 2
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %57

; <label>:38:                                     ; preds = %29
  %39 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 6
  %41 = load %union.StackValue*, %union.StackValue** %40, align 8
  %42 = getelementptr inbounds %union.StackValue, %union.StackValue* %41, i64 -1
  %43 = bitcast %union.StackValue* %42 to %struct.TValue*
  %44 = getelementptr inbounds %struct.TValue, %struct.TValue* %43, i32 0, i32 0
  %45 = bitcast %union.Value* %44 to %struct.GCObject**
  %46 = load %struct.GCObject*, %struct.GCObject** %45, align 8
  %47 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %46, i32 0, i32 2
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 24
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

; <label>:52:                                     ; preds = %38
  %53 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %54 = load %struct.Table*, %struct.Table** %7, align 8
  %55 = bitcast %struct.Table* %54 to %union.GCUnion*
  %56 = bitcast %union.GCUnion* %55 to %struct.GCObject*
  call void @luaC_barrierback_(%struct.lua_State* %53, %struct.GCObject* %56)
  br label %58

; <label>:57:                                     ; preds = %38, %29, %3
  br label %58

; <label>:58:                                     ; preds = %57, %52
  %59 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %59, i32 0, i32 6
  %61 = load %union.StackValue*, %union.StackValue** %60, align 8
  %62 = getelementptr inbounds %union.StackValue, %union.StackValue* %61, i32 -1
  store %union.StackValue* %62, %union.StackValue** %60, align 8
  ret void
}

declare hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_rawsetp(%struct.lua_State*, i32, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Table*, align 8
  %8 = alloca %struct.TValue, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca %struct.TValue*, align 8
  %12 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.Table* @gettable(%struct.lua_State* %13, i32 %14)
  store %struct.Table* %15, %struct.Table** %7, align 8
  store %struct.TValue* %8, %struct.TValue** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.TValue*, %struct.TValue** %10, align 8
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %17, i32 0, i32 0
  %19 = bitcast %union.Value* %18 to i8**
  store i8* %16, i8** %19, align 8
  %20 = load %struct.TValue*, %struct.TValue** %10, align 8
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %20, i32 0, i32 1
  store i8 2, i8* %21, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %23 = load %struct.Table*, %struct.Table** %7, align 8
  %24 = call %struct.TValue* @luaH_set(%struct.lua_State* %22, %struct.Table* %23, %struct.TValue* %8)
  store %struct.TValue* %24, %struct.TValue** %9, align 8
  %25 = load %struct.TValue*, %struct.TValue** %9, align 8
  store %struct.TValue* %25, %struct.TValue** %11, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 6
  %28 = load %union.StackValue*, %union.StackValue** %27, align 8
  %29 = getelementptr inbounds %union.StackValue, %union.StackValue* %28, i64 -1
  %30 = bitcast %union.StackValue* %29 to %struct.TValue*
  store %struct.TValue* %30, %struct.TValue** %12, align 8
  %31 = load %struct.TValue*, %struct.TValue** %11, align 8
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i32 0, i32 0
  %33 = load %struct.TValue*, %struct.TValue** %12, align 8
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i32 0, i32 0
  %35 = bitcast %union.Value* %32 to i8*
  %36 = bitcast %union.Value* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 8, i32 8, i1 false)
  %37 = load %struct.TValue*, %struct.TValue** %12, align 8
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i32 0, i32 1
  %39 = load i8, i8* %38, align 8
  %40 = load %struct.TValue*, %struct.TValue** %11, align 8
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i32 0, i32 1
  store i8 %39, i8* %41, align 8
  %42 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %43 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 6
  %45 = load %union.StackValue*, %union.StackValue** %44, align 8
  %46 = getelementptr inbounds %union.StackValue, %union.StackValue* %45, i64 -1
  %47 = bitcast %union.StackValue* %46 to %struct.TValue*
  %48 = getelementptr inbounds %struct.TValue, %struct.TValue* %47, i32 0, i32 1
  %49 = load i8, i8* %48, align 8
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 64
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %81

; <label>:53:                                     ; preds = %3
  %54 = load %struct.Table*, %struct.Table** %7, align 8
  %55 = bitcast %struct.Table* %54 to %union.GCUnion*
  %56 = bitcast %union.GCUnion* %55 to %struct.GCObject*
  %57 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %56, i32 0, i32 2
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %81

; <label>:62:                                     ; preds = %53
  %63 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %63, i32 0, i32 6
  %65 = load %union.StackValue*, %union.StackValue** %64, align 8
  %66 = getelementptr inbounds %union.StackValue, %union.StackValue* %65, i64 -1
  %67 = bitcast %union.StackValue* %66 to %struct.TValue*
  %68 = getelementptr inbounds %struct.TValue, %struct.TValue* %67, i32 0, i32 0
  %69 = bitcast %union.Value* %68 to %struct.GCObject**
  %70 = load %struct.GCObject*, %struct.GCObject** %69, align 8
  %71 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %70, i32 0, i32 2
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 24
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

; <label>:76:                                     ; preds = %62
  %77 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %78 = load %struct.Table*, %struct.Table** %7, align 8
  %79 = bitcast %struct.Table* %78 to %union.GCUnion*
  %80 = bitcast %union.GCUnion* %79 to %struct.GCObject*
  call void @luaC_barrierback_(%struct.lua_State* %77, %struct.GCObject* %80)
  br label %82

; <label>:81:                                     ; preds = %62, %53, %3
  br label %82

; <label>:82:                                     ; preds = %81, %76
  %83 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %83, i32 0, i32 6
  %85 = load %union.StackValue*, %union.StackValue** %84, align 8
  %86 = getelementptr inbounds %union.StackValue, %union.StackValue* %85, i32 -1
  store %union.StackValue* %86, %union.StackValue** %84, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_setmetatable(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.TValue* @index2value(%struct.lua_State* %7, i32 %8)
  store %struct.TValue* %9, %struct.TValue** %5, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 6
  %12 = load %union.StackValue*, %union.StackValue** %11, align 8
  %13 = getelementptr inbounds %union.StackValue, %union.StackValue* %12, i64 -1
  %14 = bitcast %union.StackValue* %13 to %struct.TValue*
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 1
  %16 = load i8, i8* %15, align 8
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %2
  store %struct.Table* null, %struct.Table** %6, align 8
  br label %32

; <label>:21:                                     ; preds = %2
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 6
  %24 = load %union.StackValue*, %union.StackValue** %23, align 8
  %25 = getelementptr inbounds %union.StackValue, %union.StackValue* %24, i64 -1
  %26 = bitcast %union.StackValue* %25 to %struct.TValue*
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %26, i32 0, i32 0
  %28 = bitcast %union.Value* %27 to %struct.GCObject**
  %29 = load %struct.GCObject*, %struct.GCObject** %28, align 8
  %30 = bitcast %struct.GCObject* %29 to %union.GCUnion*
  %31 = bitcast %union.GCUnion* %30 to %struct.Table*
  store %struct.Table* %31, %struct.Table** %6, align 8
  br label %32

; <label>:32:                                     ; preds = %21, %20
  %33 = load %struct.TValue*, %struct.TValue** %5, align 8
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i32 0, i32 1
  %35 = load i8, i8* %34, align 8
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 15
  switch i32 %37, label %138 [
    i32 5, label %38
    i32 7, label %86
  ]

; <label>:38:                                     ; preds = %32
  %39 = load %struct.Table*, %struct.Table** %6, align 8
  %40 = load %struct.TValue*, %struct.TValue** %5, align 8
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i32 0, i32 0
  %42 = bitcast %union.Value* %41 to %struct.GCObject**
  %43 = load %struct.GCObject*, %struct.GCObject** %42, align 8
  %44 = bitcast %struct.GCObject* %43 to %union.GCUnion*
  %45 = bitcast %union.GCUnion* %44 to %struct.Table*
  %46 = getelementptr inbounds %struct.Table, %struct.Table* %45, i32 0, i32 9
  store %struct.Table* %39, %struct.Table** %46, align 8
  %47 = load %struct.Table*, %struct.Table** %6, align 8
  %48 = icmp ne %struct.Table* %47, null
  br i1 %48, label %49, label %85

; <label>:49:                                     ; preds = %38
  %50 = load %struct.TValue*, %struct.TValue** %5, align 8
  %51 = getelementptr inbounds %struct.TValue, %struct.TValue* %50, i32 0, i32 0
  %52 = bitcast %union.Value* %51 to %struct.GCObject**
  %53 = load %struct.GCObject*, %struct.GCObject** %52, align 8
  %54 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %53, i32 0, i32 2
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

; <label>:59:                                     ; preds = %49
  %60 = load %struct.Table*, %struct.Table** %6, align 8
  %61 = getelementptr inbounds %struct.Table, %struct.Table* %60, i32 0, i32 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 24
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

; <label>:66:                                     ; preds = %59
  %67 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %68 = load %struct.TValue*, %struct.TValue** %5, align 8
  %69 = getelementptr inbounds %struct.TValue, %struct.TValue* %68, i32 0, i32 0
  %70 = bitcast %union.Value* %69 to %struct.GCObject**
  %71 = load %struct.GCObject*, %struct.GCObject** %70, align 8
  %72 = bitcast %struct.GCObject* %71 to %union.GCUnion*
  %73 = bitcast %union.GCUnion* %72 to %struct.GCObject*
  %74 = load %struct.Table*, %struct.Table** %6, align 8
  %75 = bitcast %struct.Table* %74 to %union.GCUnion*
  %76 = bitcast %union.GCUnion* %75 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %67, %struct.GCObject* %73, %struct.GCObject* %76)
  br label %78

; <label>:77:                                     ; preds = %59, %49
  br label %78

; <label>:78:                                     ; preds = %77, %66
  %79 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %80 = load %struct.TValue*, %struct.TValue** %5, align 8
  %81 = getelementptr inbounds %struct.TValue, %struct.TValue* %80, i32 0, i32 0
  %82 = bitcast %union.Value* %81 to %struct.GCObject**
  %83 = load %struct.GCObject*, %struct.GCObject** %82, align 8
  %84 = load %struct.Table*, %struct.Table** %6, align 8
  call void @luaC_checkfinalizer(%struct.lua_State* %79, %struct.GCObject* %83, %struct.Table* %84)
  br label %85

; <label>:85:                                     ; preds = %78, %38
  br label %151

; <label>:86:                                     ; preds = %32
  %87 = load %struct.Table*, %struct.Table** %6, align 8
  %88 = load %struct.TValue*, %struct.TValue** %5, align 8
  %89 = getelementptr inbounds %struct.TValue, %struct.TValue* %88, i32 0, i32 0
  %90 = bitcast %union.Value* %89 to %struct.GCObject**
  %91 = load %struct.GCObject*, %struct.GCObject** %90, align 8
  %92 = bitcast %struct.GCObject* %91 to %union.GCUnion*
  %93 = bitcast %union.GCUnion* %92 to %struct.Udata*
  %94 = getelementptr inbounds %struct.Udata, %struct.Udata* %93, i32 0, i32 5
  store %struct.Table* %87, %struct.Table** %94, align 8
  %95 = load %struct.Table*, %struct.Table** %6, align 8
  %96 = icmp ne %struct.Table* %95, null
  br i1 %96, label %97, label %137

; <label>:97:                                     ; preds = %86
  %98 = load %struct.TValue*, %struct.TValue** %5, align 8
  %99 = getelementptr inbounds %struct.TValue, %struct.TValue* %98, i32 0, i32 0
  %100 = bitcast %union.Value* %99 to %struct.GCObject**
  %101 = load %struct.GCObject*, %struct.GCObject** %100, align 8
  %102 = bitcast %struct.GCObject* %101 to %union.GCUnion*
  %103 = bitcast %union.GCUnion* %102 to %struct.Udata*
  %104 = getelementptr inbounds %struct.Udata, %struct.Udata* %103, i32 0, i32 2
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = and i32 %106, 32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %129

; <label>:109:                                    ; preds = %97
  %110 = load %struct.Table*, %struct.Table** %6, align 8
  %111 = getelementptr inbounds %struct.Table, %struct.Table* %110, i32 0, i32 2
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = and i32 %113, 24
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

; <label>:116:                                    ; preds = %109
  %117 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %118 = load %struct.TValue*, %struct.TValue** %5, align 8
  %119 = getelementptr inbounds %struct.TValue, %struct.TValue* %118, i32 0, i32 0
  %120 = bitcast %union.Value* %119 to %struct.GCObject**
  %121 = load %struct.GCObject*, %struct.GCObject** %120, align 8
  %122 = bitcast %struct.GCObject* %121 to %union.GCUnion*
  %123 = bitcast %union.GCUnion* %122 to %struct.Udata*
  %124 = bitcast %struct.Udata* %123 to %union.GCUnion*
  %125 = bitcast %union.GCUnion* %124 to %struct.GCObject*
  %126 = load %struct.Table*, %struct.Table** %6, align 8
  %127 = bitcast %struct.Table* %126 to %union.GCUnion*
  %128 = bitcast %union.GCUnion* %127 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %117, %struct.GCObject* %125, %struct.GCObject* %128)
  br label %130

; <label>:129:                                    ; preds = %109, %97
  br label %130

; <label>:130:                                    ; preds = %129, %116
  %131 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %132 = load %struct.TValue*, %struct.TValue** %5, align 8
  %133 = getelementptr inbounds %struct.TValue, %struct.TValue* %132, i32 0, i32 0
  %134 = bitcast %union.Value* %133 to %struct.GCObject**
  %135 = load %struct.GCObject*, %struct.GCObject** %134, align 8
  %136 = load %struct.Table*, %struct.Table** %6, align 8
  call void @luaC_checkfinalizer(%struct.lua_State* %131, %struct.GCObject* %135, %struct.Table* %136)
  br label %137

; <label>:137:                                    ; preds = %130, %86
  br label %151

; <label>:138:                                    ; preds = %32
  %139 = load %struct.Table*, %struct.Table** %6, align 8
  %140 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %141 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %140, i32 0, i32 7
  %142 = load %struct.global_State*, %struct.global_State** %141, align 8
  %143 = getelementptr inbounds %struct.global_State, %struct.global_State* %142, i32 0, i32 41
  %144 = load %struct.TValue*, %struct.TValue** %5, align 8
  %145 = getelementptr inbounds %struct.TValue, %struct.TValue* %144, i32 0, i32 1
  %146 = load i8, i8* %145, align 8
  %147 = zext i8 %146 to i32
  %148 = and i32 %147, 15
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %143, i64 0, i64 %149
  store %struct.Table* %139, %struct.Table** %150, align 8
  br label %151

; <label>:151:                                    ; preds = %138, %137, %85
  %152 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %153 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %152, i32 0, i32 6
  %154 = load %union.StackValue*, %union.StackValue** %153, align 8
  %155 = getelementptr inbounds %union.StackValue, %union.StackValue* %154, i32 -1
  store %union.StackValue* %155, %union.StackValue** %153, align 8
  ret i32 1
}

declare hidden void @luaC_checkfinalizer(%struct.lua_State*, %struct.GCObject*, %struct.Table*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_setiuservalue(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TValue* @index2value(%struct.lua_State* %11, i32 %12)
  store %struct.TValue* %13, %struct.TValue** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sub i32 %14, 1
  %16 = load %struct.TValue*, %struct.TValue** %7, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 0
  %18 = bitcast %union.Value* %17 to %struct.GCObject**
  %19 = load %struct.GCObject*, %struct.GCObject** %18, align 8
  %20 = bitcast %struct.GCObject* %19 to %union.GCUnion*
  %21 = bitcast %union.GCUnion* %20 to %struct.Udata*
  %22 = getelementptr inbounds %struct.Udata, %struct.Udata* %21, i32 0, i32 3
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp ult i32 %15, %24
  br i1 %25, label %27, label %26

; <label>:26:                                     ; preds = %3
  store i32 0, i32* %8, align 4
  br label %99

; <label>:27:                                     ; preds = %3
  %28 = load %struct.TValue*, %struct.TValue** %7, align 8
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i32 0, i32 0
  %30 = bitcast %union.Value* %29 to %struct.GCObject**
  %31 = load %struct.GCObject*, %struct.GCObject** %30, align 8
  %32 = bitcast %struct.GCObject* %31 to %union.GCUnion*
  %33 = bitcast %union.GCUnion* %32 to %struct.Udata*
  %34 = getelementptr inbounds %struct.Udata, %struct.Udata* %33, i32 0, i32 7
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [1 x %union.UValue], [1 x %union.UValue]* %34, i64 0, i64 %37
  %39 = bitcast %union.UValue* %38 to %struct.TValue*
  store %struct.TValue* %39, %struct.TValue** %9, align 8
  %40 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 6
  %42 = load %union.StackValue*, %union.StackValue** %41, align 8
  %43 = getelementptr inbounds %union.StackValue, %union.StackValue* %42, i64 -1
  %44 = bitcast %union.StackValue* %43 to %struct.TValue*
  store %struct.TValue* %44, %struct.TValue** %10, align 8
  %45 = load %struct.TValue*, %struct.TValue** %9, align 8
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i32 0, i32 0
  %47 = load %struct.TValue*, %struct.TValue** %10, align 8
  %48 = getelementptr inbounds %struct.TValue, %struct.TValue* %47, i32 0, i32 0
  %49 = bitcast %union.Value* %46 to i8*
  %50 = bitcast %union.Value* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 8, i32 8, i1 false)
  %51 = load %struct.TValue*, %struct.TValue** %10, align 8
  %52 = getelementptr inbounds %struct.TValue, %struct.TValue* %51, i32 0, i32 1
  %53 = load i8, i8* %52, align 8
  %54 = load %struct.TValue*, %struct.TValue** %9, align 8
  %55 = getelementptr inbounds %struct.TValue, %struct.TValue* %54, i32 0, i32 1
  store i8 %53, i8* %55, align 8
  %56 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %57 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %57, i32 0, i32 6
  %59 = load %union.StackValue*, %union.StackValue** %58, align 8
  %60 = getelementptr inbounds %union.StackValue, %union.StackValue* %59, i64 -1
  %61 = bitcast %union.StackValue* %60 to %struct.TValue*
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i32 0, i32 1
  %63 = load i8, i8* %62, align 8
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %97

; <label>:67:                                     ; preds = %27
  %68 = load %struct.TValue*, %struct.TValue** %7, align 8
  %69 = getelementptr inbounds %struct.TValue, %struct.TValue* %68, i32 0, i32 0
  %70 = bitcast %union.Value* %69 to %struct.GCObject**
  %71 = load %struct.GCObject*, %struct.GCObject** %70, align 8
  %72 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %71, i32 0, i32 2
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %97

; <label>:77:                                     ; preds = %67
  %78 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %78, i32 0, i32 6
  %80 = load %union.StackValue*, %union.StackValue** %79, align 8
  %81 = getelementptr inbounds %union.StackValue, %union.StackValue* %80, i64 -1
  %82 = bitcast %union.StackValue* %81 to %struct.TValue*
  %83 = getelementptr inbounds %struct.TValue, %struct.TValue* %82, i32 0, i32 0
  %84 = bitcast %union.Value* %83 to %struct.GCObject**
  %85 = load %struct.GCObject*, %struct.GCObject** %84, align 8
  %86 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %85, i32 0, i32 2
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 24
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

; <label>:91:                                     ; preds = %77
  %92 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %93 = load %struct.TValue*, %struct.TValue** %7, align 8
  %94 = getelementptr inbounds %struct.TValue, %struct.TValue* %93, i32 0, i32 0
  %95 = bitcast %union.Value* %94 to %struct.GCObject**
  %96 = load %struct.GCObject*, %struct.GCObject** %95, align 8
  call void @luaC_barrierback_(%struct.lua_State* %92, %struct.GCObject* %96)
  br label %98

; <label>:97:                                     ; preds = %77, %67, %27
  br label %98

; <label>:98:                                     ; preds = %97, %91
  store i32 1, i32* %8, align 4
  br label %99

; <label>:99:                                     ; preds = %98, %26
  %100 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %101 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %100, i32 0, i32 6
  %102 = load %union.StackValue*, %union.StackValue** %101, align 8
  %103 = getelementptr inbounds %union.StackValue, %union.StackValue* %102, i32 -1
  store %union.StackValue* %103, %union.StackValue** %101, align 8
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32 (%struct.lua_State*, i32, i64)*, align 8
  %11 = alloca %union.StackValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 (%struct.lua_State*, i32, i64)* %4, i32 (%struct.lua_State*, i32, i64)** %10, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 6
  %14 = load %union.StackValue*, %union.StackValue** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = sub i64 0, %17
  %19 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 %18
  store %union.StackValue* %19, %union.StackValue** %11, align 8
  %20 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %10, align 8
  %21 = icmp ne i32 (%struct.lua_State*, i32, i64)* %20, null
  br i1 %21, label %22, label %46

; <label>:22:                                     ; preds = %5
  %23 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 19
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, -65536
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %46

; <label>:28:                                     ; preds = %22
  %29 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %10, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %30, i32 0, i32 8
  %32 = load %struct.CallInfo*, %struct.CallInfo** %31, align 8
  %33 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %32, i32 0, i32 4
  %34 = bitcast %union.anon.0* %33 to %struct.anon.1*
  %35 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %34, i32 0, i32 0
  store i32 (%struct.lua_State*, i32, i64)* %29, i32 (%struct.lua_State*, i32, i64)** %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 8
  %39 = load %struct.CallInfo*, %struct.CallInfo** %38, align 8
  %40 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %39, i32 0, i32 4
  %41 = bitcast %union.anon.0* %40 to %struct.anon.1*
  %42 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %41, i32 0, i32 2
  store i64 %36, i64* %42, align 8
  %43 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %44 = load %union.StackValue*, %union.StackValue** %11, align 8
  %45 = load i32, i32* %8, align 4
  call void @luaD_call(%struct.lua_State* %43, %union.StackValue* %44, i32 %45)
  br label %50

; <label>:46:                                     ; preds = %22, %5
  %47 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %48 = load %union.StackValue*, %union.StackValue** %11, align 8
  %49 = load i32, i32* %8, align 4
  call void @luaD_callnoyield(%struct.lua_State* %47, %union.StackValue* %48, i32 %49)
  br label %50

; <label>:50:                                     ; preds = %46, %28
  %51 = load i32, i32* %8, align 4
  %52 = icmp sle i32 %51, -1
  br i1 %52, label %53, label %71

; <label>:53:                                     ; preds = %50
  %54 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %54, i32 0, i32 8
  %56 = load %struct.CallInfo*, %struct.CallInfo** %55, align 8
  %57 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %56, i32 0, i32 1
  %58 = load %union.StackValue*, %union.StackValue** %57, align 8
  %59 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %59, i32 0, i32 6
  %61 = load %union.StackValue*, %union.StackValue** %60, align 8
  %62 = icmp ult %union.StackValue* %58, %61
  br i1 %62, label %63, label %71

; <label>:63:                                     ; preds = %53
  %64 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %64, i32 0, i32 6
  %66 = load %union.StackValue*, %union.StackValue** %65, align 8
  %67 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %68 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %67, i32 0, i32 8
  %69 = load %struct.CallInfo*, %struct.CallInfo** %68, align 8
  %70 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %69, i32 0, i32 1
  store %union.StackValue* %66, %union.StackValue** %70, align 8
  br label %71

; <label>:71:                                     ; preds = %63, %53, %50
  ret void
}

declare hidden void @luaD_call(%struct.lua_State*, %union.StackValue*, i32) #1

declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_pcallk(%struct.lua_State*, i32, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) #0 {
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32 (%struct.lua_State*, i32, i64)*, align 8
  %13 = alloca %struct.CallS, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %union.StackValue*, align 8
  %17 = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 (%struct.lua_State*, i32, i64)* %5, i32 (%struct.lua_State*, i32, i64)** %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %6
  store i64 0, i64* %15, align 8
  br label %34

; <label>:21:                                     ; preds = %6
  %22 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call %union.StackValue* @index2stack(%struct.lua_State* %22, i32 %23)
  store %union.StackValue* %24, %union.StackValue** %16, align 8
  %25 = load %union.StackValue*, %union.StackValue** %16, align 8
  %26 = bitcast %union.StackValue* %25 to i8*
  %27 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 11
  %29 = load %union.StackValue*, %union.StackValue** %28, align 8
  %30 = bitcast %union.StackValue* %29 to i8*
  %31 = ptrtoint i8* %26 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  store i64 %33, i64* %15, align 8
  br label %34

; <label>:34:                                     ; preds = %21, %20
  %35 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 6
  %37 = load %union.StackValue*, %union.StackValue** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds %union.StackValue, %union.StackValue* %37, i64 %41
  %43 = getelementptr inbounds %struct.CallS, %struct.CallS* %13, i32 0, i32 0
  store %union.StackValue* %42, %union.StackValue** %43, align 8
  %44 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %12, align 8
  %45 = icmp eq i32 (%struct.lua_State*, i32, i64)* %44, null
  br i1 %45, label %52, label %46

; <label>:46:                                     ; preds = %34
  %47 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 19
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, -65536
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %69, label %52

; <label>:52:                                     ; preds = %46, %34
  %53 = load i32, i32* %9, align 4
  %54 = getelementptr inbounds %struct.CallS, %struct.CallS* %13, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  %55 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %56 = bitcast %struct.CallS* %13 to i8*
  %57 = getelementptr inbounds %struct.CallS, %struct.CallS* %13, i32 0, i32 0
  %58 = load %union.StackValue*, %union.StackValue** %57, align 8
  %59 = bitcast %union.StackValue* %58 to i8*
  %60 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %60, i32 0, i32 11
  %62 = load %union.StackValue*, %union.StackValue** %61, align 8
  %63 = bitcast %union.StackValue* %62 to i8*
  %64 = ptrtoint i8* %59 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = load i64, i64* %15, align 8
  %68 = call i32 @luaD_pcall(%struct.lua_State* %55, void (%struct.lua_State*, i8*)* @f_call, i8* %56, i64 %66, i64 %67)
  store i32 %68, i32* %14, align 4
  br label %143

; <label>:69:                                     ; preds = %46
  %70 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %70, i32 0, i32 8
  %72 = load %struct.CallInfo*, %struct.CallInfo** %71, align 8
  store %struct.CallInfo* %72, %struct.CallInfo** %17, align 8
  %73 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %12, align 8
  %74 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %75 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %74, i32 0, i32 4
  %76 = bitcast %union.anon.0* %75 to %struct.anon.1*
  %77 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %76, i32 0, i32 0
  store i32 (%struct.lua_State*, i32, i64)* %73, i32 (%struct.lua_State*, i32, i64)** %77, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %80 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %79, i32 0, i32 4
  %81 = bitcast %union.anon.0* %80 to %struct.anon.1*
  %82 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %81, i32 0, i32 2
  store i64 %78, i64* %82, align 8
  %83 = getelementptr inbounds %struct.CallS, %struct.CallS* %13, i32 0, i32 0
  %84 = load %union.StackValue*, %union.StackValue** %83, align 8
  %85 = bitcast %union.StackValue* %84 to i8*
  %86 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %87 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %86, i32 0, i32 11
  %88 = load %union.StackValue*, %union.StackValue** %87, align 8
  %89 = bitcast %union.StackValue* %88 to i8*
  %90 = ptrtoint i8* %85 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %95 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %94, i32 0, i32 5
  %96 = bitcast %union.anon.2* %95 to i32*
  store i32 %93, i32* %96, align 8
  %97 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %98 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %97, i32 0, i32 18
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %101 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %100, i32 0, i32 4
  %102 = bitcast %union.anon.0* %101 to %struct.anon.1*
  %103 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %102, i32 0, i32 1
  store i64 %99, i64* %103, align 8
  %104 = load i64, i64* %15, align 8
  %105 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %106 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %105, i32 0, i32 18
  store i64 %104, i64* %106, align 8
  %107 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %108 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %107, i32 0, i32 7
  %109 = load i16, i16* %108, align 2
  %110 = zext i16 %109 to i32
  %111 = and i32 %110, -2
  %112 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %113 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %112, i32 0, i32 4
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = or i32 %111, %115
  %117 = trunc i32 %116 to i16
  %118 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %119 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %118, i32 0, i32 7
  store i16 %117, i16* %119, align 2
  %120 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %121 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %120, i32 0, i32 7
  %122 = load i16, i16* %121, align 2
  %123 = zext i16 %122 to i32
  %124 = or i32 %123, 8
  %125 = trunc i32 %124 to i16
  store i16 %125, i16* %121, align 2
  %126 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %127 = getelementptr inbounds %struct.CallS, %struct.CallS* %13, i32 0, i32 0
  %128 = load %union.StackValue*, %union.StackValue** %127, align 8
  %129 = load i32, i32* %9, align 4
  call void @luaD_call(%struct.lua_State* %126, %union.StackValue* %128, i32 %129)
  %130 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %131 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %130, i32 0, i32 7
  %132 = load i16, i16* %131, align 2
  %133 = zext i16 %132 to i32
  %134 = and i32 %133, -9
  %135 = trunc i32 %134 to i16
  store i16 %135, i16* %131, align 2
  %136 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %137 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %136, i32 0, i32 4
  %138 = bitcast %union.anon.0* %137 to %struct.anon.1*
  %139 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %142 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %141, i32 0, i32 18
  store i64 %140, i64* %142, align 8
  store i32 0, i32* %14, align 4
  br label %143

; <label>:143:                                    ; preds = %69, %52
  %144 = load i32, i32* %9, align 4
  %145 = icmp sle i32 %144, -1
  br i1 %145, label %146, label %164

; <label>:146:                                    ; preds = %143
  %147 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %148 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %147, i32 0, i32 8
  %149 = load %struct.CallInfo*, %struct.CallInfo** %148, align 8
  %150 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %149, i32 0, i32 1
  %151 = load %union.StackValue*, %union.StackValue** %150, align 8
  %152 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %153 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %152, i32 0, i32 6
  %154 = load %union.StackValue*, %union.StackValue** %153, align 8
  %155 = icmp ult %union.StackValue* %151, %154
  br i1 %155, label %156, label %164

; <label>:156:                                    ; preds = %146
  %157 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %158 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %157, i32 0, i32 6
  %159 = load %union.StackValue*, %union.StackValue** %158, align 8
  %160 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %161 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %160, i32 0, i32 8
  %162 = load %struct.CallInfo*, %struct.CallInfo** %161, align 8
  %163 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %162, i32 0, i32 1
  store %union.StackValue* %159, %union.StackValue** %163, align 8
  br label %164

; <label>:164:                                    ; preds = %156, %146, %143
  %165 = load i32, i32* %14, align 4
  ret i32 %165
}

declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f_call(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.CallS*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.CallS*
  store %struct.CallS* %7, %struct.CallS** %5, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load %struct.CallS*, %struct.CallS** %5, align 8
  %10 = getelementptr inbounds %struct.CallS, %struct.CallS* %9, i32 0, i32 0
  %11 = load %union.StackValue*, %union.StackValue** %10, align 8
  %12 = load %struct.CallS*, %struct.CallS** %5, align 8
  %13 = getelementptr inbounds %struct.CallS, %struct.CallS* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  call void @luaD_callnoyield(%struct.lua_State* %8, %union.StackValue* %11, i32 %14)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_load(%struct.lua_State*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, i8*, i8*) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i8* (%struct.lua_State*, i8*, i64*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.Zio, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.LClosure*, align 8
  %14 = alloca %struct.Table*, align 8
  %15 = alloca %struct.TValue*, align 8
  %16 = alloca %struct.TValue*, align 8
  %17 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i8* (%struct.lua_State*, i8*, i64*)* %1, i8* (%struct.lua_State*, i8*, i64*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

; <label>:20:                                     ; preds = %5
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %9, align 8
  br label %21

; <label>:21:                                     ; preds = %20, %5
  %22 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %23 = load i8* (%struct.lua_State*, i8*, i64*)*, i8* (%struct.lua_State*, i8*, i64*)** %7, align 8
  %24 = load i8*, i8** %8, align 8
  call void @luaZ_init(%struct.lua_State* %22, %struct.Zio* %11, i8* (%struct.lua_State*, i8*, i64*)* %23, i8* %24)
  %25 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @luaD_protectedparser(%struct.lua_State* %25, %struct.Zio* %11, i8* %26, i8* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %120

; <label>:31:                                     ; preds = %21
  %32 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 6
  %34 = load %union.StackValue*, %union.StackValue** %33, align 8
  %35 = getelementptr inbounds %union.StackValue, %union.StackValue* %34, i64 -1
  %36 = bitcast %union.StackValue* %35 to %struct.TValue*
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %36, i32 0, i32 0
  %38 = bitcast %union.Value* %37 to %struct.GCObject**
  %39 = load %struct.GCObject*, %struct.GCObject** %38, align 8
  %40 = bitcast %struct.GCObject* %39 to %union.GCUnion*
  %41 = bitcast %union.GCUnion* %40 to %union.Closure*
  %42 = bitcast %union.Closure* %41 to %struct.LClosure*
  store %struct.LClosure* %42, %struct.LClosure** %13, align 8
  %43 = load %struct.LClosure*, %struct.LClosure** %13, align 8
  %44 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %43, i32 0, i32 3
  %45 = load i8, i8* %44, align 2
  %46 = zext i8 %45 to i32
  %47 = icmp sge i32 %46, 1
  br i1 %47, label %48, label %119

; <label>:48:                                     ; preds = %31
  %49 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %49, i32 0, i32 7
  %51 = load %struct.global_State*, %struct.global_State** %50, align 8
  %52 = getelementptr inbounds %struct.global_State, %struct.global_State* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TValue, %struct.TValue* %52, i32 0, i32 0
  %54 = bitcast %union.Value* %53 to %struct.GCObject**
  %55 = load %struct.GCObject*, %struct.GCObject** %54, align 8
  %56 = bitcast %struct.GCObject* %55 to %union.GCUnion*
  %57 = bitcast %union.GCUnion* %56 to %struct.Table*
  store %struct.Table* %57, %struct.Table** %14, align 8
  %58 = load %struct.Table*, %struct.Table** %14, align 8
  %59 = call %struct.TValue* @luaH_getint(%struct.Table* %58, i64 2)
  store %struct.TValue* %59, %struct.TValue** %15, align 8
  %60 = load %struct.LClosure*, %struct.LClosure** %13, align 8
  %61 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %60, i32 0, i32 6
  %62 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %61, i64 0, i64 0
  %63 = load %struct.UpVal*, %struct.UpVal** %62, align 8
  %64 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %63, i32 0, i32 3
  %65 = load %struct.TValue*, %struct.TValue** %64, align 8
  store %struct.TValue* %65, %struct.TValue** %16, align 8
  %66 = load %struct.TValue*, %struct.TValue** %15, align 8
  store %struct.TValue* %66, %struct.TValue** %17, align 8
  %67 = load %struct.TValue*, %struct.TValue** %16, align 8
  %68 = getelementptr inbounds %struct.TValue, %struct.TValue* %67, i32 0, i32 0
  %69 = load %struct.TValue*, %struct.TValue** %17, align 8
  %70 = getelementptr inbounds %struct.TValue, %struct.TValue* %69, i32 0, i32 0
  %71 = bitcast %union.Value* %68 to i8*
  %72 = bitcast %union.Value* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 8, i32 8, i1 false)
  %73 = load %struct.TValue*, %struct.TValue** %17, align 8
  %74 = getelementptr inbounds %struct.TValue, %struct.TValue* %73, i32 0, i32 1
  %75 = load i8, i8* %74, align 8
  %76 = load %struct.TValue*, %struct.TValue** %16, align 8
  %77 = getelementptr inbounds %struct.TValue, %struct.TValue* %76, i32 0, i32 1
  store i8 %75, i8* %77, align 8
  %78 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %79 = load %struct.TValue*, %struct.TValue** %15, align 8
  %80 = getelementptr inbounds %struct.TValue, %struct.TValue* %79, i32 0, i32 1
  %81 = load i8, i8* %80, align 8
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 64
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %117

; <label>:85:                                     ; preds = %48
  %86 = load %struct.LClosure*, %struct.LClosure** %13, align 8
  %87 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %86, i32 0, i32 6
  %88 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %87, i64 0, i64 0
  %89 = load %struct.UpVal*, %struct.UpVal** %88, align 8
  %90 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %89, i32 0, i32 2
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %117

; <label>:95:                                     ; preds = %85
  %96 = load %struct.TValue*, %struct.TValue** %15, align 8
  %97 = getelementptr inbounds %struct.TValue, %struct.TValue* %96, i32 0, i32 0
  %98 = bitcast %union.Value* %97 to %struct.GCObject**
  %99 = load %struct.GCObject*, %struct.GCObject** %98, align 8
  %100 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %99, i32 0, i32 2
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 24
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

; <label>:105:                                    ; preds = %95
  %106 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %107 = load %struct.LClosure*, %struct.LClosure** %13, align 8
  %108 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %107, i32 0, i32 6
  %109 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %108, i64 0, i64 0
  %110 = load %struct.UpVal*, %struct.UpVal** %109, align 8
  %111 = bitcast %struct.UpVal* %110 to %union.GCUnion*
  %112 = bitcast %union.GCUnion* %111 to %struct.GCObject*
  %113 = load %struct.TValue*, %struct.TValue** %15, align 8
  %114 = getelementptr inbounds %struct.TValue, %struct.TValue* %113, i32 0, i32 0
  %115 = bitcast %union.Value* %114 to %struct.GCObject**
  %116 = load %struct.GCObject*, %struct.GCObject** %115, align 8
  call void @luaC_barrier_(%struct.lua_State* %106, %struct.GCObject* %112, %struct.GCObject* %116)
  br label %118

; <label>:117:                                    ; preds = %95, %85, %48
  br label %118

; <label>:118:                                    ; preds = %117, %105
  br label %119

; <label>:119:                                    ; preds = %118, %31
  br label %120

; <label>:120:                                    ; preds = %119, %21
  %121 = load i32, i32* %12, align 4
  ret i32 %121
}

declare hidden void @luaZ_init(%struct.lua_State*, %struct.Zio*, i8* (%struct.lua_State*, i8*, i64*)*, i8*) #1

declare hidden i32 @luaD_protectedparser(%struct.lua_State*, %struct.Zio*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_dump(%struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32 (%struct.lua_State*, i8*, i64, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 (%struct.lua_State*, i8*, i64, i8*)* %1, i32 (%struct.lua_State*, i8*, i64, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8
  %14 = getelementptr inbounds %union.StackValue, %union.StackValue* %13, i64 -1
  %15 = bitcast %union.StackValue* %14 to %struct.TValue*
  store %struct.TValue* %15, %struct.TValue** %10, align 8
  %16 = load %struct.TValue*, %struct.TValue** %10, align 8
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 8
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 86
  br i1 %20, label %21, label %36

; <label>:21:                                     ; preds = %4
  %22 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %23 = load %struct.TValue*, %struct.TValue** %10, align 8
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %23, i32 0, i32 0
  %25 = bitcast %union.Value* %24 to %struct.GCObject**
  %26 = load %struct.GCObject*, %struct.GCObject** %25, align 8
  %27 = bitcast %struct.GCObject* %26 to %union.GCUnion*
  %28 = bitcast %union.GCUnion* %27 to %union.Closure*
  %29 = bitcast %union.Closure* %28 to %struct.LClosure*
  %30 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %29, i32 0, i32 5
  %31 = load %struct.Proto*, %struct.Proto** %30, align 8
  %32 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @luaU_dump(%struct.lua_State* %22, %struct.Proto* %31, i32 (%struct.lua_State*, i8*, i64, i8*)* %32, i8* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  br label %37

; <label>:36:                                     ; preds = %4
  store i32 1, i32* %9, align 4
  br label %37

; <label>:37:                                     ; preds = %36, %21
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare hidden i32 @luaU_dump(%struct.lua_State*, %struct.Proto*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_status(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 3
  %5 = load i8, i8* %4, align 2
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_gc(%struct.lua_State*, i32, ...) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.global_State*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 7
  %20 = load %struct.global_State*, %struct.global_State** %19, align 8
  store %struct.global_State* %20, %struct.global_State** %7, align 8
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0
  %22 = bitcast %struct.__va_list_tag* %21 to i8*
  call void @llvm.va_start(i8* %22)
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %343 [
    i32 0, label %24
    i32 1, label %27
    i32 2, label %31
    i32 3, label %33
    i32 4, label %43
    i32 5, label %53
    i32 6, label %115
    i32 7, label %144
    i32 9, label %173
    i32 10, label %178
    i32 11, label %247
  ]

; <label>:24:                                     ; preds = %2
  %25 = load %struct.global_State*, %struct.global_State** %7, align 8
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i32 0, i32 15
  store i8 0, i8* %26, align 1
  br label %344

; <label>:27:                                     ; preds = %2
  %28 = load %struct.global_State*, %struct.global_State** %7, align 8
  call void @luaE_setdebt(%struct.global_State* %28, i64 0)
  %29 = load %struct.global_State*, %struct.global_State** %7, align 8
  %30 = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 15
  store i8 1, i8* %30, align 1
  br label %344

; <label>:31:                                     ; preds = %2
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_fullgc(%struct.lua_State* %32, i32 0)
  br label %344

; <label>:33:                                     ; preds = %2
  %34 = load %struct.global_State*, %struct.global_State** %7, align 8
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.global_State*, %struct.global_State** %7, align 8
  %38 = getelementptr inbounds %struct.global_State, %struct.global_State* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = lshr i64 %40, 10
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  br label %344

; <label>:43:                                     ; preds = %2
  %44 = load %struct.global_State*, %struct.global_State** %7, align 8
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.global_State*, %struct.global_State** %7, align 8
  %48 = getelementptr inbounds %struct.global_State, %struct.global_State* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = and i64 %50, 1023
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %6, align 4
  br label %344

; <label>:53:                                     ; preds = %2
  %54 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0
  %55 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 16
  %57 = icmp ule i32 %56, 40
  br i1 %57, label %58, label %64

; <label>:58:                                     ; preds = %53
  %59 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %54, i32 0, i32 3
  %60 = load i8*, i8** %59, align 16
  %61 = getelementptr i8, i8* %60, i32 %56
  %62 = bitcast i8* %61 to i32*
  %63 = add i32 %56, 8
  store i32 %63, i32* %55, align 16
  br label %69

; <label>:64:                                     ; preds = %53
  %65 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %54, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = bitcast i8* %66 to i32*
  %68 = getelementptr i8, i8* %66, i32 8
  store i8* %68, i8** %65, align 8
  br label %69

; <label>:69:                                     ; preds = %64, %58
  %70 = phi i32* [ %62, %58 ], [ %67, %64 ]
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  store i64 1, i64* %9, align 8
  %72 = load %struct.global_State*, %struct.global_State** %7, align 8
  %73 = getelementptr inbounds %struct.global_State, %struct.global_State* %72, i32 0, i32 15
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %10, align 1
  %75 = load %struct.global_State*, %struct.global_State** %7, align 8
  %76 = getelementptr inbounds %struct.global_State, %struct.global_State* %75, i32 0, i32 15
  store i8 1, i8* %76, align 1
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

; <label>:79:                                     ; preds = %69
  %80 = load %struct.global_State*, %struct.global_State** %7, align 8
  call void @luaE_setdebt(%struct.global_State* %80, i64 0)
  %81 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_step(%struct.lua_State* %81)
  br label %101

; <label>:82:                                     ; preds = %69
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = mul nsw i64 %84, 1024
  %86 = load %struct.global_State*, %struct.global_State** %7, align 8
  %87 = getelementptr inbounds %struct.global_State, %struct.global_State* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  store i64 %89, i64* %9, align 8
  %90 = load %struct.global_State*, %struct.global_State** %7, align 8
  %91 = load i64, i64* %9, align 8
  call void @luaE_setdebt(%struct.global_State* %90, i64 %91)
  %92 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %93 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %92, i32 0, i32 7
  %94 = load %struct.global_State*, %struct.global_State** %93, align 8
  %95 = getelementptr inbounds %struct.global_State, %struct.global_State* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %100

; <label>:98:                                     ; preds = %82
  %99 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_step(%struct.lua_State* %99)
  br label %100

; <label>:100:                                    ; preds = %98, %82
  br label %101

; <label>:101:                                    ; preds = %100, %79
  %102 = load i8, i8* %10, align 1
  %103 = load %struct.global_State*, %struct.global_State** %7, align 8
  %104 = getelementptr inbounds %struct.global_State, %struct.global_State* %103, i32 0, i32 15
  store i8 %102, i8* %104, align 1
  %105 = load i64, i64* %9, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %114

; <label>:107:                                    ; preds = %101
  %108 = load %struct.global_State*, %struct.global_State** %7, align 8
  %109 = getelementptr inbounds %struct.global_State, %struct.global_State* %108, i32 0, i32 11
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 8
  br i1 %112, label %113, label %114

; <label>:113:                                    ; preds = %107
  store i32 1, i32* %6, align 4
  br label %114

; <label>:114:                                    ; preds = %113, %107, %101
  br label %344

; <label>:115:                                    ; preds = %2
  %116 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0
  %117 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 16
  %119 = icmp ule i32 %118, 40
  br i1 %119, label %120, label %126

; <label>:120:                                    ; preds = %115
  %121 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %116, i32 0, i32 3
  %122 = load i8*, i8** %121, align 16
  %123 = getelementptr i8, i8* %122, i32 %118
  %124 = bitcast i8* %123 to i32*
  %125 = add i32 %118, 8
  store i32 %125, i32* %117, align 16
  br label %131

; <label>:126:                                    ; preds = %115
  %127 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %116, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = bitcast i8* %128 to i32*
  %130 = getelementptr i8, i8* %128, i32 8
  store i8* %130, i8** %127, align 8
  br label %131

; <label>:131:                                    ; preds = %126, %120
  %132 = phi i32* [ %124, %120 ], [ %129, %126 ]
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %11, align 4
  %134 = load %struct.global_State*, %struct.global_State** %7, align 8
  %135 = getelementptr inbounds %struct.global_State, %struct.global_State* %134, i32 0, i32 17
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = mul nsw i32 %137, 4
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %11, align 4
  %140 = sdiv i32 %139, 4
  %141 = trunc i32 %140 to i8
  %142 = load %struct.global_State*, %struct.global_State** %7, align 8
  %143 = getelementptr inbounds %struct.global_State, %struct.global_State* %142, i32 0, i32 17
  store i8 %141, i8* %143, align 1
  br label %344

; <label>:144:                                    ; preds = %2
  %145 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0
  %146 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 16
  %148 = icmp ule i32 %147, 40
  br i1 %148, label %149, label %155

; <label>:149:                                    ; preds = %144
  %150 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %145, i32 0, i32 3
  %151 = load i8*, i8** %150, align 16
  %152 = getelementptr i8, i8* %151, i32 %147
  %153 = bitcast i8* %152 to i32*
  %154 = add i32 %147, 8
  store i32 %154, i32* %146, align 16
  br label %160

; <label>:155:                                    ; preds = %144
  %156 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %145, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = bitcast i8* %157 to i32*
  %159 = getelementptr i8, i8* %157, i32 8
  store i8* %159, i8** %156, align 8
  br label %160

; <label>:160:                                    ; preds = %155, %149
  %161 = phi i32* [ %153, %149 ], [ %158, %155 ]
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %12, align 4
  %163 = load %struct.global_State*, %struct.global_State** %7, align 8
  %164 = getelementptr inbounds %struct.global_State, %struct.global_State* %163, i32 0, i32 18
  %165 = load i8, i8* %164, align 4
  %166 = zext i8 %165 to i32
  %167 = mul nsw i32 %166, 4
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %12, align 4
  %169 = sdiv i32 %168, 4
  %170 = trunc i32 %169 to i8
  %171 = load %struct.global_State*, %struct.global_State** %7, align 8
  %172 = getelementptr inbounds %struct.global_State, %struct.global_State* %171, i32 0, i32 18
  store i8 %170, i8* %172, align 4
  br label %344

; <label>:173:                                    ; preds = %2
  %174 = load %struct.global_State*, %struct.global_State** %7, align 8
  %175 = getelementptr inbounds %struct.global_State, %struct.global_State* %174, i32 0, i32 15
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  store i32 %177, i32* %6, align 4
  br label %344

; <label>:178:                                    ; preds = %2
  %179 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0
  %180 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 16
  %182 = icmp ule i32 %181, 40
  br i1 %182, label %183, label %189

; <label>:183:                                    ; preds = %178
  %184 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %179, i32 0, i32 3
  %185 = load i8*, i8** %184, align 16
  %186 = getelementptr i8, i8* %185, i32 %181
  %187 = bitcast i8* %186 to i32*
  %188 = add i32 %181, 8
  store i32 %188, i32* %180, align 16
  br label %194

; <label>:189:                                    ; preds = %178
  %190 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %179, i32 0, i32 2
  %191 = load i8*, i8** %190, align 8
  %192 = bitcast i8* %191 to i32*
  %193 = getelementptr i8, i8* %191, i32 8
  store i8* %193, i8** %190, align 8
  br label %194

; <label>:194:                                    ; preds = %189, %183
  %195 = phi i32* [ %187, %183 ], [ %192, %189 ]
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %13, align 4
  %197 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0
  %198 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 16
  %200 = icmp ule i32 %199, 40
  br i1 %200, label %201, label %207

; <label>:201:                                    ; preds = %194
  %202 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %197, i32 0, i32 3
  %203 = load i8*, i8** %202, align 16
  %204 = getelementptr i8, i8* %203, i32 %199
  %205 = bitcast i8* %204 to i32*
  %206 = add i32 %199, 8
  store i32 %206, i32* %198, align 16
  br label %212

; <label>:207:                                    ; preds = %194
  %208 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %197, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = bitcast i8* %209 to i32*
  %211 = getelementptr i8, i8* %209, i32 8
  store i8* %211, i8** %208, align 8
  br label %212

; <label>:212:                                    ; preds = %207, %201
  %213 = phi i32* [ %205, %201 ], [ %210, %207 ]
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %14, align 4
  %215 = load %struct.global_State*, %struct.global_State** %7, align 8
  %216 = getelementptr inbounds %struct.global_State, %struct.global_State* %215, i32 0, i32 12
  %217 = load i8, i8* %216, align 2
  %218 = zext i8 %217 to i32
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %225, label %220

; <label>:220:                                    ; preds = %212
  %221 = load %struct.global_State*, %struct.global_State** %7, align 8
  %222 = getelementptr inbounds %struct.global_State, %struct.global_State* %221, i32 0, i32 5
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br label %225

; <label>:225:                                    ; preds = %220, %212
  %226 = phi i1 [ true, %212 ], [ %224, %220 ]
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i32 10, i32 11
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* %13, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

; <label>:231:                                    ; preds = %225
  %232 = load i32, i32* %13, align 4
  %233 = trunc i32 %232 to i8
  %234 = load %struct.global_State*, %struct.global_State** %7, align 8
  %235 = getelementptr inbounds %struct.global_State, %struct.global_State* %234, i32 0, i32 13
  store i8 %233, i8* %235, align 1
  br label %236

; <label>:236:                                    ; preds = %231, %225
  %237 = load i32, i32* %14, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %245

; <label>:239:                                    ; preds = %236
  %240 = load i32, i32* %14, align 4
  %241 = sdiv i32 %240, 4
  %242 = trunc i32 %241 to i8
  %243 = load %struct.global_State*, %struct.global_State** %7, align 8
  %244 = getelementptr inbounds %struct.global_State, %struct.global_State* %243, i32 0, i32 14
  store i8 %242, i8* %244, align 8
  br label %245

; <label>:245:                                    ; preds = %239, %236
  %246 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_changemode(%struct.lua_State* %246, i32 1)
  br label %344

; <label>:247:                                    ; preds = %2
  %248 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0
  %249 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 16
  %251 = icmp ule i32 %250, 40
  br i1 %251, label %252, label %258

; <label>:252:                                    ; preds = %247
  %253 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %248, i32 0, i32 3
  %254 = load i8*, i8** %253, align 16
  %255 = getelementptr i8, i8* %254, i32 %250
  %256 = bitcast i8* %255 to i32*
  %257 = add i32 %250, 8
  store i32 %257, i32* %249, align 16
  br label %263

; <label>:258:                                    ; preds = %247
  %259 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %248, i32 0, i32 2
  %260 = load i8*, i8** %259, align 8
  %261 = bitcast i8* %260 to i32*
  %262 = getelementptr i8, i8* %260, i32 8
  store i8* %262, i8** %259, align 8
  br label %263

; <label>:263:                                    ; preds = %258, %252
  %264 = phi i32* [ %256, %252 ], [ %261, %258 ]
  %265 = load i32, i32* %264, align 4
  store i32 %265, i32* %15, align 4
  %266 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0
  %267 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 16
  %269 = icmp ule i32 %268, 40
  br i1 %269, label %270, label %276

; <label>:270:                                    ; preds = %263
  %271 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %266, i32 0, i32 3
  %272 = load i8*, i8** %271, align 16
  %273 = getelementptr i8, i8* %272, i32 %268
  %274 = bitcast i8* %273 to i32*
  %275 = add i32 %268, 8
  store i32 %275, i32* %267, align 16
  br label %281

; <label>:276:                                    ; preds = %263
  %277 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %266, i32 0, i32 2
  %278 = load i8*, i8** %277, align 8
  %279 = bitcast i8* %278 to i32*
  %280 = getelementptr i8, i8* %278, i32 8
  store i8* %280, i8** %277, align 8
  br label %281

; <label>:281:                                    ; preds = %276, %270
  %282 = phi i32* [ %274, %270 ], [ %279, %276 ]
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %16, align 4
  %284 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0
  %285 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 16
  %287 = icmp ule i32 %286, 40
  br i1 %287, label %288, label %294

; <label>:288:                                    ; preds = %281
  %289 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %284, i32 0, i32 3
  %290 = load i8*, i8** %289, align 16
  %291 = getelementptr i8, i8* %290, i32 %286
  %292 = bitcast i8* %291 to i32*
  %293 = add i32 %286, 8
  store i32 %293, i32* %285, align 16
  br label %299

; <label>:294:                                    ; preds = %281
  %295 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %284, i32 0, i32 2
  %296 = load i8*, i8** %295, align 8
  %297 = bitcast i8* %296 to i32*
  %298 = getelementptr i8, i8* %296, i32 8
  store i8* %298, i8** %295, align 8
  br label %299

; <label>:299:                                    ; preds = %294, %288
  %300 = phi i32* [ %292, %288 ], [ %297, %294 ]
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %17, align 4
  %302 = load %struct.global_State*, %struct.global_State** %7, align 8
  %303 = getelementptr inbounds %struct.global_State, %struct.global_State* %302, i32 0, i32 12
  %304 = load i8, i8* %303, align 2
  %305 = zext i8 %304 to i32
  %306 = icmp eq i32 %305, 1
  br i1 %306, label %312, label %307

; <label>:307:                                    ; preds = %299
  %308 = load %struct.global_State*, %struct.global_State** %7, align 8
  %309 = getelementptr inbounds %struct.global_State, %struct.global_State* %308, i32 0, i32 5
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br label %312

; <label>:312:                                    ; preds = %307, %299
  %313 = phi i1 [ true, %299 ], [ %311, %307 ]
  %314 = zext i1 %313 to i64
  %315 = select i1 %313, i32 10, i32 11
  store i32 %315, i32* %6, align 4
  %316 = load i32, i32* %15, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %324

; <label>:318:                                    ; preds = %312
  %319 = load i32, i32* %15, align 4
  %320 = sdiv i32 %319, 4
  %321 = trunc i32 %320 to i8
  %322 = load %struct.global_State*, %struct.global_State** %7, align 8
  %323 = getelementptr inbounds %struct.global_State, %struct.global_State* %322, i32 0, i32 17
  store i8 %321, i8* %323, align 1
  br label %324

; <label>:324:                                    ; preds = %318, %312
  %325 = load i32, i32* %16, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %333

; <label>:327:                                    ; preds = %324
  %328 = load i32, i32* %16, align 4
  %329 = sdiv i32 %328, 4
  %330 = trunc i32 %329 to i8
  %331 = load %struct.global_State*, %struct.global_State** %7, align 8
  %332 = getelementptr inbounds %struct.global_State, %struct.global_State* %331, i32 0, i32 18
  store i8 %330, i8* %332, align 4
  br label %333

; <label>:333:                                    ; preds = %327, %324
  %334 = load i32, i32* %17, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %341

; <label>:336:                                    ; preds = %333
  %337 = load i32, i32* %17, align 4
  %338 = trunc i32 %337 to i8
  %339 = load %struct.global_State*, %struct.global_State** %7, align 8
  %340 = getelementptr inbounds %struct.global_State, %struct.global_State* %339, i32 0, i32 19
  store i8 %338, i8* %340, align 1
  br label %341

; <label>:341:                                    ; preds = %336, %333
  %342 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_changemode(%struct.lua_State* %342, i32 0)
  br label %344

; <label>:343:                                    ; preds = %2
  store i32 -1, i32* %6, align 4
  br label %344

; <label>:344:                                    ; preds = %343, %341, %245, %173, %160, %131, %114, %43, %33, %31, %27, %24
  %345 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0
  %346 = bitcast %struct.__va_list_tag* %345 to i8*
  call void @llvm.va_end(i8* %346)
  %347 = load i32, i32* %6, align 4
  ret i32 %347
}

declare hidden void @luaE_setdebt(%struct.global_State*, i64) #1

declare hidden void @luaC_fullgc(%struct.lua_State*, i32) #1

declare hidden void @luaC_changemode(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_error(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaG_errormsg(%struct.lua_State* %4) #5
  unreachable
                                                  ; No predecessors!
  %6 = load i32, i32* %2, align 4
  ret i32 %6
}

; Function Attrs: noreturn
declare hidden void @luaG_errormsg(%struct.lua_State*) #4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_next(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Table*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.Table* @gettable(%struct.lua_State* %7, i32 %8)
  store %struct.Table* %9, %struct.Table** %5, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load %struct.Table*, %struct.Table** %5, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 6
  %14 = load %union.StackValue*, %union.StackValue** %13, align 8
  %15 = getelementptr inbounds %union.StackValue, %union.StackValue* %14, i64 -1
  %16 = call i32 @luaH_next(%struct.lua_State* %10, %struct.Table* %11, %union.StackValue* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %2
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 6
  %22 = load %union.StackValue*, %union.StackValue** %21, align 8
  %23 = getelementptr inbounds %union.StackValue, %union.StackValue* %22, i32 1
  store %union.StackValue* %23, %union.StackValue** %21, align 8
  br label %29

; <label>:24:                                     ; preds = %2
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 6
  %27 = load %union.StackValue*, %union.StackValue** %26, align 8
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %27, i64 -1
  store %union.StackValue* %28, %union.StackValue** %26, align 8
  br label %29

; <label>:29:                                     ; preds = %24, %19
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare hidden i32 @luaH_next(%struct.lua_State*, %struct.Table*, %union.StackValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_toclose(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.StackValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %union.StackValue* @index2stack(%struct.lua_State* %7, i32 %8)
  store %union.StackValue* %9, %union.StackValue** %6, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 8
  %12 = load %struct.CallInfo*, %struct.CallInfo** %11, align 8
  %13 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i32 0, i32 6
  %14 = load i16, i16* %13, align 4
  %15 = sext i16 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load %union.StackValue*, %union.StackValue** %6, align 8
  call void @luaF_newtbcupval(%struct.lua_State* %16, %union.StackValue* %17)
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, -1
  br i1 %19, label %29, label %20

; <label>:20:                                     ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 0, %21
  %23 = sub nsw i32 %22, 3
  %24 = trunc i32 %23 to i16
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 8
  %27 = load %struct.CallInfo*, %struct.CallInfo** %26, align 8
  %28 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %27, i32 0, i32 6
  store i16 %24, i16* %28, align 4
  br label %29

; <label>:29:                                     ; preds = %20, %2
  ret void
}

declare hidden void @luaF_newtbcupval(%struct.lua_State*, %union.StackValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_concat(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca %struct.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 2
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %2
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load i32, i32* %4, align 4
  call void @luaV_concat(%struct.lua_State* %10, i32 %11)
  br label %41

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %40

; <label>:15:                                     ; preds = %12
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 6
  %18 = load %union.StackValue*, %union.StackValue** %17, align 8
  %19 = bitcast %union.StackValue* %18 to %struct.TValue*
  store %struct.TValue* %19, %struct.TValue** %5, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 0)
  store %struct.TString* %21, %struct.TString** %6, align 8
  %22 = load %struct.TString*, %struct.TString** %6, align 8
  %23 = bitcast %struct.TString* %22 to %union.GCUnion*
  %24 = bitcast %union.GCUnion* %23 to %struct.GCObject*
  %25 = load %struct.TValue*, %struct.TValue** %5, align 8
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i32 0, i32 0
  %27 = bitcast %union.Value* %26 to %struct.GCObject**
  store %struct.GCObject* %24, %struct.GCObject** %27, align 8
  %28 = load %struct.TString*, %struct.TString** %6, align 8
  %29 = getelementptr inbounds %struct.TString, %struct.TString* %28, i32 0, i32 1
  %30 = load i8, i8* %29, align 8
  %31 = zext i8 %30 to i32
  %32 = or i32 %31, 64
  %33 = trunc i32 %32 to i8
  %34 = load %struct.TValue*, %struct.TValue** %5, align 8
  %35 = getelementptr inbounds %struct.TValue, %struct.TValue* %34, i32 0, i32 1
  store i8 %33, i8* %35, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 6
  %38 = load %union.StackValue*, %union.StackValue** %37, align 8
  %39 = getelementptr inbounds %union.StackValue, %union.StackValue* %38, i32 1
  store %union.StackValue* %39, %union.StackValue** %37, align 8
  br label %40

; <label>:40:                                     ; preds = %15, %12
  br label %41

; <label>:41:                                     ; preds = %40, %9
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 7
  %44 = load %struct.global_State*, %struct.global_State** %43, align 8
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %50

; <label>:48:                                     ; preds = %41
  %49 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_step(%struct.lua_State* %49)
  br label %50

; <label>:50:                                     ; preds = %48, %41
  ret void
}

declare hidden void @luaV_concat(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_len(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TValue* @index2value(%struct.lua_State* %6, i32 %7)
  store %struct.TValue* %8, %struct.TValue** %5, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 6
  %12 = load %union.StackValue*, %union.StackValue** %11, align 8
  %13 = load %struct.TValue*, %struct.TValue** %5, align 8
  call void @luaV_objlen(%struct.lua_State* %9, %union.StackValue* %12, %struct.TValue* %13)
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 6
  %16 = load %union.StackValue*, %union.StackValue** %15, align 8
  %17 = getelementptr inbounds %union.StackValue, %union.StackValue* %16, i32 1
  store %union.StackValue* %17, %union.StackValue** %15, align 8
  ret void
}

declare hidden void @luaV_objlen(%struct.lua_State*, %union.StackValue*, %struct.TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State*, i8**) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8* (i8*, i8*, i64, i64)*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = icmp ne i8** %6, null
  br i1 %7, label %8, label %15

; <label>:8:                                      ; preds = %2
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 7
  %11 = load %struct.global_State*, %struct.global_State** %10, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = load i8**, i8*** %4, align 8
  store i8* %13, i8** %14, align 8
  br label %15

; <label>:15:                                     ; preds = %8, %2
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 7
  %18 = load %struct.global_State*, %struct.global_State** %17, align 8
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 0
  %20 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %19, align 8
  store i8* (i8*, i8*, i64, i64)* %20, i8* (i8*, i8*, i64, i64)** %5, align 8
  %21 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %5, align 8
  ret i8* (i8*, i8*, i64, i64)* %21
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_setallocf(%struct.lua_State*, i8* (i8*, i8*, i64, i64)*, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8* (i8*, i8*, i64, i64)*, align 8
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* (i8*, i8*, i64, i64)* %1, i8* (i8*, i8*, i64, i64)** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 7
  %10 = load %struct.global_State*, %struct.global_State** %9, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 1
  store i8* %7, i8** %11, align 8
  %12 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %5, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 7
  %15 = load %struct.global_State*, %struct.global_State** %14, align 8
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 0
  store i8* (i8*, i8*, i64, i64)* %12, i8* (i8*, i8*, i64, i64)** %16, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_setwarnf(%struct.lua_State*, void (i8*, i8*, i32)*, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca void (i8*, i8*, i32)*, align 8
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store void (i8*, i8*, i32)* %1, void (i8*, i8*, i32)** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 7
  %10 = load %struct.global_State*, %struct.global_State** %9, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 44
  store i8* %7, i8** %11, align 8
  %12 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %5, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 7
  %15 = load %struct.global_State*, %struct.global_State** %14, align 8
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 43
  store void (i8*, i8*, i32)* %12, void (i8*, i8*, i32)** %16, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_warning(%struct.lua_State*, i8*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* %6, align 4
  call void @luaE_warning(%struct.lua_State* %7, i8* %8, i32 %9)
  ret void
}

declare hidden void @luaE_warning(%struct.lua_State*, i8*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_newuserdatauv(%struct.lua_State*, i64, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Udata*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.Udata*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.Udata* @luaS_newudata(%struct.lua_State* %10, i64 %11, i32 %12)
  store %struct.Udata* %13, %struct.Udata** %7, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 6
  %16 = load %union.StackValue*, %union.StackValue** %15, align 8
  %17 = bitcast %union.StackValue* %16 to %struct.TValue*
  store %struct.TValue* %17, %struct.TValue** %8, align 8
  %18 = load %struct.Udata*, %struct.Udata** %7, align 8
  store %struct.Udata* %18, %struct.Udata** %9, align 8
  %19 = load %struct.Udata*, %struct.Udata** %9, align 8
  %20 = bitcast %struct.Udata* %19 to %union.GCUnion*
  %21 = bitcast %union.GCUnion* %20 to %struct.GCObject*
  %22 = load %struct.TValue*, %struct.TValue** %8, align 8
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %22, i32 0, i32 0
  %24 = bitcast %union.Value* %23 to %struct.GCObject**
  store %struct.GCObject* %21, %struct.GCObject** %24, align 8
  %25 = load %struct.TValue*, %struct.TValue** %8, align 8
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i32 0, i32 1
  store i8 71, i8* %26, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 6
  %29 = load %union.StackValue*, %union.StackValue** %28, align 8
  %30 = getelementptr inbounds %union.StackValue, %union.StackValue* %29, i32 1
  store %union.StackValue* %30, %union.StackValue** %28, align 8
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 7
  %33 = load %struct.global_State*, %struct.global_State** %32, align 8
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %3
  %38 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaC_step(%struct.lua_State* %38)
  br label %39

; <label>:39:                                     ; preds = %37, %3
  %40 = load %struct.Udata*, %struct.Udata** %7, align 8
  %41 = bitcast %struct.Udata* %40 to i8*
  %42 = load %struct.Udata*, %struct.Udata** %7, align 8
  %43 = getelementptr inbounds %struct.Udata, %struct.Udata* %42, i32 0, i32 3
  %44 = load i16, i16* %43, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %39
  br label %55

; <label>:48:                                     ; preds = %39
  %49 = load %struct.Udata*, %struct.Udata** %7, align 8
  %50 = getelementptr inbounds %struct.Udata, %struct.Udata* %49, i32 0, i32 3
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i64
  %53 = mul i64 16, %52
  %54 = add i64 40, %53
  br label %55

; <label>:55:                                     ; preds = %48, %47
  %56 = phi i64 [ 32, %47 ], [ %54, %48 ]
  %57 = getelementptr inbounds i8, i8* %41, i64 %56
  ret i8* %57
}

declare hidden %struct.Udata* @luaS_newudata(%struct.lua_State*, i64, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_getupvalue(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.TValue* null, %struct.TValue** %8, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TValue* @index2value(%struct.lua_State* %11, i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = call i8* @aux_upvalue(%struct.TValue* %13, i32 %14, %struct.TValue** %8, %struct.GCObject** null)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %40

; <label>:18:                                     ; preds = %3
  %19 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 6
  %21 = load %union.StackValue*, %union.StackValue** %20, align 8
  %22 = bitcast %union.StackValue* %21 to %struct.TValue*
  store %struct.TValue* %22, %struct.TValue** %9, align 8
  %23 = load %struct.TValue*, %struct.TValue** %8, align 8
  store %struct.TValue* %23, %struct.TValue** %10, align 8
  %24 = load %struct.TValue*, %struct.TValue** %9, align 8
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %24, i32 0, i32 0
  %26 = load %struct.TValue*, %struct.TValue** %10, align 8
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %26, i32 0, i32 0
  %28 = bitcast %union.Value* %25 to i8*
  %29 = bitcast %union.Value* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 8, i32 8, i1 false)
  %30 = load %struct.TValue*, %struct.TValue** %10, align 8
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %30, i32 0, i32 1
  %32 = load i8, i8* %31, align 8
  %33 = load %struct.TValue*, %struct.TValue** %9, align 8
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i32 0, i32 1
  store i8 %32, i8* %34, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 6
  %38 = load %union.StackValue*, %union.StackValue** %37, align 8
  %39 = getelementptr inbounds %union.StackValue, %union.StackValue* %38, i32 1
  store %union.StackValue* %39, %union.StackValue** %37, align 8
  br label %40

; <label>:40:                                     ; preds = %18, %3
  %41 = load i8*, i8** %7, align 8
  ret i8* %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @aux_upvalue(%struct.TValue*, i32, %struct.TValue**, %struct.GCObject**) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TValue**, align 8
  %9 = alloca %struct.GCObject**, align 8
  %10 = alloca %struct.CClosure*, align 8
  %11 = alloca %struct.LClosure*, align 8
  %12 = alloca %struct.TString*, align 8
  %13 = alloca %struct.Proto*, align 8
  store %struct.TValue* %0, %struct.TValue** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TValue** %2, %struct.TValue*** %8, align 8
  store %struct.GCObject** %3, %struct.GCObject*** %9, align 8
  %14 = load %struct.TValue*, %struct.TValue** %6, align 8
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 1
  %16 = load i8, i8* %15, align 8
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 63
  switch i32 %18, label %112 [
    i32 54, label %19
    i32 22, label %51
  ]

; <label>:19:                                     ; preds = %4
  %20 = load %struct.TValue*, %struct.TValue** %6, align 8
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %20, i32 0, i32 0
  %22 = bitcast %union.Value* %21 to %struct.GCObject**
  %23 = load %struct.GCObject*, %struct.GCObject** %22, align 8
  %24 = bitcast %struct.GCObject* %23 to %union.GCUnion*
  %25 = bitcast %union.GCUnion* %24 to %union.Closure*
  %26 = bitcast %union.Closure* %25 to %struct.CClosure*
  store %struct.CClosure* %26, %struct.CClosure** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sub i32 %27, 1
  %29 = load %struct.CClosure*, %struct.CClosure** %10, align 8
  %30 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %29, i32 0, i32 3
  %31 = load i8, i8* %30, align 2
  %32 = zext i8 %31 to i32
  %33 = icmp ult i32 %28, %32
  br i1 %33, label %35, label %34

; <label>:34:                                     ; preds = %19
  store i8* null, i8** %5, align 8
  br label %113

; <label>:35:                                     ; preds = %19
  %36 = load %struct.CClosure*, %struct.CClosure** %10, align 8
  %37 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %36, i32 0, i32 6
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1 x %struct.TValue], [1 x %struct.TValue]* %37, i64 0, i64 %40
  %42 = load %struct.TValue**, %struct.TValue*** %8, align 8
  store %struct.TValue* %41, %struct.TValue** %42, align 8
  %43 = load %struct.GCObject**, %struct.GCObject*** %9, align 8
  %44 = icmp ne %struct.GCObject** %43, null
  br i1 %44, label %45, label %50

; <label>:45:                                     ; preds = %35
  %46 = load %struct.CClosure*, %struct.CClosure** %10, align 8
  %47 = bitcast %struct.CClosure* %46 to %union.GCUnion*
  %48 = bitcast %union.GCUnion* %47 to %struct.GCObject*
  %49 = load %struct.GCObject**, %struct.GCObject*** %9, align 8
  store %struct.GCObject* %48, %struct.GCObject** %49, align 8
  br label %50

; <label>:50:                                     ; preds = %45, %35
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %5, align 8
  br label %113

; <label>:51:                                     ; preds = %4
  %52 = load %struct.TValue*, %struct.TValue** %6, align 8
  %53 = getelementptr inbounds %struct.TValue, %struct.TValue* %52, i32 0, i32 0
  %54 = bitcast %union.Value* %53 to %struct.GCObject**
  %55 = load %struct.GCObject*, %struct.GCObject** %54, align 8
  %56 = bitcast %struct.GCObject* %55 to %union.GCUnion*
  %57 = bitcast %union.GCUnion* %56 to %union.Closure*
  %58 = bitcast %union.Closure* %57 to %struct.LClosure*
  store %struct.LClosure* %58, %struct.LClosure** %11, align 8
  %59 = load %struct.LClosure*, %struct.LClosure** %11, align 8
  %60 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %59, i32 0, i32 5
  %61 = load %struct.Proto*, %struct.Proto** %60, align 8
  store %struct.Proto* %61, %struct.Proto** %13, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sub i32 %62, 1
  %64 = load %struct.Proto*, %struct.Proto** %13, align 8
  %65 = getelementptr inbounds %struct.Proto, %struct.Proto* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %69, label %68

; <label>:68:                                     ; preds = %51
  store i8* null, i8** %5, align 8
  br label %113

; <label>:69:                                     ; preds = %51
  %70 = load %struct.LClosure*, %struct.LClosure** %11, align 8
  %71 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %70, i32 0, i32 6
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %71, i64 0, i64 %74
  %76 = load %struct.UpVal*, %struct.UpVal** %75, align 8
  %77 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %76, i32 0, i32 3
  %78 = load %struct.TValue*, %struct.TValue** %77, align 8
  %79 = load %struct.TValue**, %struct.TValue*** %8, align 8
  store %struct.TValue* %78, %struct.TValue** %79, align 8
  %80 = load %struct.GCObject**, %struct.GCObject*** %9, align 8
  %81 = icmp ne %struct.GCObject** %80, null
  br i1 %81, label %82, label %93

; <label>:82:                                     ; preds = %69
  %83 = load %struct.LClosure*, %struct.LClosure** %11, align 8
  %84 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %83, i32 0, i32 6
  %85 = load i32, i32* %7, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %84, i64 0, i64 %87
  %89 = load %struct.UpVal*, %struct.UpVal** %88, align 8
  %90 = bitcast %struct.UpVal* %89 to %union.GCUnion*
  %91 = bitcast %union.GCUnion* %90 to %struct.GCObject*
  %92 = load %struct.GCObject**, %struct.GCObject*** %9, align 8
  store %struct.GCObject* %91, %struct.GCObject** %92, align 8
  br label %93

; <label>:93:                                     ; preds = %82, %69
  %94 = load %struct.Proto*, %struct.Proto** %13, align 8
  %95 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i32 0, i32 18
  %96 = load %struct.Upvaldesc*, %struct.Upvaldesc** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %96, i64 %99
  %101 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %100, i32 0, i32 0
  %102 = load %struct.TString*, %struct.TString** %101, align 8
  store %struct.TString* %102, %struct.TString** %12, align 8
  %103 = load %struct.TString*, %struct.TString** %12, align 8
  %104 = icmp eq %struct.TString* %103, null
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %93
  br label %110

; <label>:106:                                    ; preds = %93
  %107 = load %struct.TString*, %struct.TString** %12, align 8
  %108 = bitcast %struct.TString* %107 to i8*
  %109 = getelementptr inbounds i8, i8* %108, i64 24
  br label %110

; <label>:110:                                    ; preds = %106, %105
  %111 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), %105 ], [ %109, %106 ]
  store i8* %111, i8** %5, align 8
  br label %113

; <label>:112:                                    ; preds = %4
  store i8* null, i8** %5, align 8
  br label %113

; <label>:113:                                    ; preds = %112, %110, %68, %50, %34
  %114 = load i8*, i8** %5, align 8
  ret i8* %114
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_setupvalue(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.GCObject*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca %struct.TValue*, align 8
  %12 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.TValue* null, %struct.TValue** %8, align 8
  store %struct.GCObject* null, %struct.GCObject** %9, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TValue* @index2value(%struct.lua_State* %13, i32 %14)
  store %struct.TValue* %15, %struct.TValue** %10, align 8
  %16 = load %struct.TValue*, %struct.TValue** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i8* @aux_upvalue(%struct.TValue* %16, i32 %17, %struct.TValue** %8, %struct.GCObject** %9)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %77

; <label>:21:                                     ; preds = %3
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 6
  %24 = load %union.StackValue*, %union.StackValue** %23, align 8
  %25 = getelementptr inbounds %union.StackValue, %union.StackValue* %24, i32 -1
  store %union.StackValue* %25, %union.StackValue** %23, align 8
  %26 = load %struct.TValue*, %struct.TValue** %8, align 8
  store %struct.TValue* %26, %struct.TValue** %11, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 6
  %29 = load %union.StackValue*, %union.StackValue** %28, align 8
  %30 = bitcast %union.StackValue* %29 to %struct.TValue*
  store %struct.TValue* %30, %struct.TValue** %12, align 8
  %31 = load %struct.TValue*, %struct.TValue** %11, align 8
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i32 0, i32 0
  %33 = load %struct.TValue*, %struct.TValue** %12, align 8
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i32 0, i32 0
  %35 = bitcast %union.Value* %32 to i8*
  %36 = bitcast %union.Value* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 8, i32 8, i1 false)
  %37 = load %struct.TValue*, %struct.TValue** %12, align 8
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i32 0, i32 1
  %39 = load i8, i8* %38, align 8
  %40 = load %struct.TValue*, %struct.TValue** %11, align 8
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i32 0, i32 1
  store i8 %39, i8* %41, align 8
  %42 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %43 = load %struct.TValue*, %struct.TValue** %8, align 8
  %44 = getelementptr inbounds %struct.TValue, %struct.TValue* %43, i32 0, i32 1
  %45 = load i8, i8* %44, align 8
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 64
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %75

; <label>:49:                                     ; preds = %21
  %50 = load %struct.GCObject*, %struct.GCObject** %9, align 8
  %51 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %50, i32 0, i32 2
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %75

; <label>:56:                                     ; preds = %49
  %57 = load %struct.TValue*, %struct.TValue** %8, align 8
  %58 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i32 0, i32 0
  %59 = bitcast %union.Value* %58 to %struct.GCObject**
  %60 = load %struct.GCObject*, %struct.GCObject** %59, align 8
  %61 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %60, i32 0, i32 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 24
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

; <label>:66:                                     ; preds = %56
  %67 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %68 = load %struct.GCObject*, %struct.GCObject** %9, align 8
  %69 = bitcast %struct.GCObject* %68 to %union.GCUnion*
  %70 = bitcast %union.GCUnion* %69 to %struct.GCObject*
  %71 = load %struct.TValue*, %struct.TValue** %8, align 8
  %72 = getelementptr inbounds %struct.TValue, %struct.TValue* %71, i32 0, i32 0
  %73 = bitcast %union.Value* %72 to %struct.GCObject**
  %74 = load %struct.GCObject*, %struct.GCObject** %73, align 8
  call void @luaC_barrier_(%struct.lua_State* %67, %struct.GCObject* %70, %struct.GCObject* %74)
  br label %76

; <label>:75:                                     ; preds = %56, %49, %21
  br label %76

; <label>:76:                                     ; preds = %75, %66
  br label %77

; <label>:77:                                     ; preds = %76, %3
  %78 = load i8*, i8** %7, align 8
  ret i8* %78
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_upvalueid(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.CClosure*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.TValue* @index2value(%struct.lua_State* %10, i32 %11)
  store %struct.TValue* %12, %struct.TValue** %8, align 8
  %13 = load %struct.TValue*, %struct.TValue** %8, align 8
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %13, i32 0, i32 1
  %15 = load i8, i8* %14, align 8
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 63
  switch i32 %17, label %40 [
    i32 22, label %18
    i32 54, label %25
  ]

; <label>:18:                                     ; preds = %3
  %19 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.UpVal** @getupvalref(%struct.lua_State* %19, i32 %20, i32 %21, %struct.LClosure** null)
  %23 = load %struct.UpVal*, %struct.UpVal** %22, align 8
  %24 = bitcast %struct.UpVal* %23 to i8*
  store i8* %24, i8** %4, align 8
  br label %41

; <label>:25:                                     ; preds = %3
  %26 = load %struct.TValue*, %struct.TValue** %8, align 8
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %26, i32 0, i32 0
  %28 = bitcast %union.Value* %27 to %struct.GCObject**
  %29 = load %struct.GCObject*, %struct.GCObject** %28, align 8
  %30 = bitcast %struct.GCObject* %29 to %union.GCUnion*
  %31 = bitcast %union.GCUnion* %30 to %union.Closure*
  %32 = bitcast %union.Closure* %31 to %struct.CClosure*
  store %struct.CClosure* %32, %struct.CClosure** %9, align 8
  %33 = load %struct.CClosure*, %struct.CClosure** %9, align 8
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i32 0, i32 6
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [1 x %struct.TValue], [1 x %struct.TValue]* %34, i64 0, i64 %37
  %39 = bitcast %struct.TValue* %38 to i8*
  store i8* %39, i8** %4, align 8
  br label %41

; <label>:40:                                     ; preds = %3
  store i8* null, i8** %4, align 8
  br label %41

; <label>:41:                                     ; preds = %40, %25, %18
  %42 = load i8*, i8** %4, align 8
  ret i8* %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.UpVal** @getupvalref(%struct.lua_State*, i32, i32, %struct.LClosure**) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.LClosure**, align 8
  %9 = alloca %struct.LClosure*, align 8
  %10 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.LClosure** %3, %struct.LClosure*** %8, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.TValue* @index2value(%struct.lua_State* %11, i32 %12)
  store %struct.TValue* %13, %struct.TValue** %10, align 8
  %14 = load %struct.TValue*, %struct.TValue** %10, align 8
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 0
  %16 = bitcast %union.Value* %15 to %struct.GCObject**
  %17 = load %struct.GCObject*, %struct.GCObject** %16, align 8
  %18 = bitcast %struct.GCObject* %17 to %union.GCUnion*
  %19 = bitcast %union.GCUnion* %18 to %union.Closure*
  %20 = bitcast %union.Closure* %19 to %struct.LClosure*
  store %struct.LClosure* %20, %struct.LClosure** %9, align 8
  %21 = load %struct.LClosure**, %struct.LClosure*** %8, align 8
  %22 = icmp ne %struct.LClosure** %21, null
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %4
  %24 = load %struct.LClosure*, %struct.LClosure** %9, align 8
  %25 = load %struct.LClosure**, %struct.LClosure*** %8, align 8
  store %struct.LClosure* %24, %struct.LClosure** %25, align 8
  br label %26

; <label>:26:                                     ; preds = %23, %4
  %27 = load %struct.LClosure*, %struct.LClosure** %9, align 8
  %28 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %27, i32 0, i32 6
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %28, i64 0, i64 %31
  ret %struct.UpVal** %32
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_upvaluejoin(%struct.lua_State*, i32, i32, i32, i32) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.LClosure*, align 8
  %12 = alloca %struct.UpVal**, align 8
  %13 = alloca %struct.UpVal**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.UpVal** @getupvalref(%struct.lua_State* %14, i32 %15, i32 %16, %struct.LClosure** %11)
  store %struct.UpVal** %17, %struct.UpVal*** %12, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.UpVal** @getupvalref(%struct.lua_State* %18, i32 %19, i32 %20, %struct.LClosure** null)
  store %struct.UpVal** %21, %struct.UpVal*** %13, align 8
  %22 = load %struct.UpVal**, %struct.UpVal*** %13, align 8
  %23 = load %struct.UpVal*, %struct.UpVal** %22, align 8
  %24 = load %struct.UpVal**, %struct.UpVal*** %12, align 8
  store %struct.UpVal* %23, %struct.UpVal** %24, align 8
  %25 = load %struct.LClosure*, %struct.LClosure** %11, align 8
  %26 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %25, i32 0, i32 2
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

; <label>:31:                                     ; preds = %5
  %32 = load %struct.UpVal**, %struct.UpVal*** %12, align 8
  %33 = load %struct.UpVal*, %struct.UpVal** %32, align 8
  %34 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %33, i32 0, i32 2
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 24
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

; <label>:39:                                     ; preds = %31
  %40 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %41 = load %struct.LClosure*, %struct.LClosure** %11, align 8
  %42 = bitcast %struct.LClosure* %41 to %union.GCUnion*
  %43 = bitcast %union.GCUnion* %42 to %struct.GCObject*
  %44 = load %struct.UpVal**, %struct.UpVal*** %12, align 8
  %45 = load %struct.UpVal*, %struct.UpVal** %44, align 8
  %46 = bitcast %struct.UpVal* %45 to %union.GCUnion*
  %47 = bitcast %union.GCUnion* %46 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %40, %struct.GCObject* %43, %struct.GCObject* %47)
  br label %49

; <label>:48:                                     ; preds = %31, %5
  br label %49

; <label>:49:                                     ; preds = %48, %39
  ret void
}

declare hidden %struct.TValue* @luaH_getstr(%struct.Table*, %struct.TString*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
