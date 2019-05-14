; ModuleID = 'lapi.c'
source_filename = "lapi.c"
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
%struct.UpVal = type { %struct.lua_TValue*, i64, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.UpVal*, i32 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i64, i16, i16 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%union.GCUnion = type { %struct.lua_State }
%union.Closure = type { %struct.CClosure }
%struct.Udata = type { %struct.GCObject*, i8, i8, i8, %struct.Table*, i64, %union.Value }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.CallS = type { %struct.lua_TValue*, i32 }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }

@lua_ident = constant [129 x i8] c"$LuaVersion: Lua 5.3.5  Copyright (C) 1994-2018 Lua.org, PUC-Rio $$LuaAuthors: R. Ierusalimschy, L. H. de Figueiredo, W. Celes $\00", align 16
@lua_version.version = internal constant double 5.030000e+02, align 8
@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8
@luaT_typenames_ = external hidden constant [11 x i8*], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"(*no name)\00", align 1

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
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 7
  %10 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  store %struct.CallInfo* %10, %struct.CallInfo** %6, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 9
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 5
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8
  %17 = ptrtoint %struct.lua_TValue* %13 to i64
  %18 = ptrtoint %struct.lua_TValue* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 16
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp sgt i64 %20, %22
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %2
  store i32 1, i32* %5, align 4
  br label %50

; <label>:25:                                     ; preds = %2
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 5
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %27, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 10
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %30, align 8
  %32 = ptrtoint %struct.lua_TValue* %28 to i64
  %33 = ptrtoint %struct.lua_TValue* %31 to i64
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
  br label %49

; <label>:43:                                     ; preds = %25
  %44 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %45 = bitcast i32* %4 to i8*
  %46 = call i32 @luaD_rawrunprotected(%struct.lua_State* %44, void (%struct.lua_State*, i8*)* @growstack, i8* %45)
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %49

; <label>:49:                                     ; preds = %43, %42
  br label %50

; <label>:50:                                     ; preds = %49, %24
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %73

; <label>:53:                                     ; preds = %50
  %54 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %55 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %54, i32 0, i32 1
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %55, align 8
  %57 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %57, i32 0, i32 5
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 %61
  %63 = icmp ult %struct.lua_TValue* %56, %62
  br i1 %63, label %64, label %73

; <label>:64:                                     ; preds = %53
  %65 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %65, i32 0, i32 5
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %67, i64 %69
  %71 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %72 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %71, i32 0, i32 1
  store %struct.lua_TValue* %70, %struct.lua_TValue** %72, align 8
  br label %73

; <label>:73:                                     ; preds = %64, %53, %50
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @growstack(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = load i32, i32* %5, align 4
  call void @luaD_growstack(%struct.lua_State* %9, i32 %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_State* %1, %struct.lua_State** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %11 = icmp eq %struct.lua_State* %9, %10
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %3
  br label %46

; <label>:13:                                     ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 5
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %18 = sext i32 %14 to i64
  %19 = sub i64 0, %18
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 %19
  store %struct.lua_TValue* %20, %struct.lua_TValue** %16, align 8
  store i32 0, i32* %7, align 4
  br label %21

; <label>:21:                                     ; preds = %43, %13
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %46

; <label>:25:                                     ; preds = %21
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 5
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %27, align 8
  store %struct.lua_TValue* %28, %struct.lua_TValue** %8, align 8
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %30, i32 0, i32 5
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i64 %34
  %36 = bitcast %struct.lua_TValue* %29 to i8*
  %37 = bitcast %struct.lua_TValue* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 16, i32 8, i1 false)
  %38 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 5
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %40, align 8
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i32 1
  store %struct.lua_TValue* %42, %struct.lua_TValue** %40, align 8
  br label %43

; <label>:43:                                     ; preds = %25
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %21

; <label>:46:                                     ; preds = %12, %21
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
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 6
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 27
  %10 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %9, align 8
  store i32 (%struct.lua_State*)* %10, i32 (%struct.lua_State*)** %5, align 8
  %11 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %4, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 6
  %14 = load %struct.global_State*, %struct.global_State** %13, align 8
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %14, i32 0, i32 27
  store i32 (%struct.lua_State*)* %11, i32 (%struct.lua_State*)** %15, align 8
  %16 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %5, align 8
  ret i32 (%struct.lua_State*)* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define double* @lua_version(%struct.lua_State*) #0 {
  %2 = alloca double*, align 8
  %3 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5 = icmp eq %struct.lua_State* %4, null
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store double* @lua_version.version, double** %2, align 8
  br label %13

; <label>:7:                                      ; preds = %1
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 6
  %10 = load %struct.global_State*, %struct.global_State** %9, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 29
  %12 = load double*, double** %11, align 8
  store double* %12, double** %2, align 8
  br label %13

; <label>:13:                                     ; preds = %7, %6
  %14 = load double*, double** %2, align 8
  ret double* %14
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
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 5
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 7
  %18 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %19 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %18, i32 0, i32 0
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8
  %21 = ptrtoint %struct.lua_TValue* %15 to i64
  %22 = ptrtoint %struct.lua_TValue* %20 to i64
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
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 5
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 7
  %8 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8, i32 0, i32 0
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i64 1
  %12 = ptrtoint %struct.lua_TValue* %5 to i64
  %13 = ptrtoint %struct.lua_TValue* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 16
  %16 = trunc i64 %15 to i32
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_settop(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 7
  %8 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8, i32 0, i32 0
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  store %struct.lua_TValue* %10, %struct.lua_TValue** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %38

; <label>:13:                                     ; preds = %2
  br label %14

; <label>:14:                                     ; preds = %24, %13
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 5
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 1
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 %21
  %23 = icmp ult %struct.lua_TValue* %17, %22
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %14
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 5
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %26, align 8
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i32 1
  store %struct.lua_TValue* %28, %struct.lua_TValue** %26, align 8
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i32 0, i32 1
  store i32 0, i32* %29, align 8
  br label %14

; <label>:30:                                     ; preds = %14
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i64 1
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i64 %34
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 5
  store %struct.lua_TValue* %35, %struct.lua_TValue** %37, align 8
  br label %46

; <label>:38:                                     ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  %41 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i32 0, i32 5
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %42, align 8
  %44 = sext i32 %40 to i64
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i64 %44
  store %struct.lua_TValue* %45, %struct.lua_TValue** %42, align 8
  br label %46

; <label>:46:                                     ; preds = %38, %30
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_rotate(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 5
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i64 -1
  store %struct.lua_TValue* %13, %struct.lua_TValue** %8, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %14, i32 %15)
  store %struct.lua_TValue* %16, %struct.lua_TValue** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %25

; <label>:19:                                     ; preds = %3
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 0, %22
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %23
  br label %32

; <label>:25:                                     ; preds = %3
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i64 %29
  %31 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i64 -1
  br label %32

; <label>:32:                                     ; preds = %25, %19
  %33 = phi %struct.lua_TValue* [ %24, %19 ], [ %31, %25 ]
  store %struct.lua_TValue* %33, %struct.lua_TValue** %9, align 8
  %34 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  call void @reverse(%struct.lua_State* %34, %struct.lua_TValue* %35, %struct.lua_TValue* %36)
  %37 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 1
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @reverse(%struct.lua_State* %37, %struct.lua_TValue* %39, %struct.lua_TValue* %40)
  %41 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @reverse(%struct.lua_State* %41, %struct.lua_TValue* %42, %struct.lua_TValue* %43)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lua_TValue* @index2addr(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_TValue*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.CallInfo*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.CClosure*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 7
  %11 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  store %struct.CallInfo* %11, %struct.CallInfo** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %29

; <label>:14:                                     ; preds = %2
  %15 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %16 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %15, i32 0, i32 0
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 %19
  store %struct.lua_TValue* %20, %struct.lua_TValue** %7, align 8
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 5
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %23, align 8
  %25 = icmp uge %struct.lua_TValue* %21, %24
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %14
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %3, align 8
  br label %83

; <label>:27:                                     ; preds = %14
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %28, %struct.lua_TValue** %3, align 8
  br label %83

; <label>:29:                                     ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp sle i32 %30, -1001000
  br i1 %31, label %39, label %32

; <label>:32:                                     ; preds = %29
  %33 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %33, i32 0, i32 5
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i64 %37
  store %struct.lua_TValue* %38, %struct.lua_TValue** %3, align 8
  br label %83

; <label>:39:                                     ; preds = %29
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, -1001000
  br i1 %41, label %42, label %47

; <label>:42:                                     ; preds = %39
  %43 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 6
  %45 = load %struct.global_State*, %struct.global_State** %44, align 8
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i32 0, i32 7
  store %struct.lua_TValue* %46, %struct.lua_TValue** %3, align 8
  br label %83

; <label>:47:                                     ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = sub nsw i32 -1001000, %48
  store i32 %49, i32* %5, align 4
  %50 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %51 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %50, i32 0, i32 0
  %52 = load %struct.lua_TValue*, %struct.lua_TValue** %51, align 8
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 22
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %47
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %3, align 8
  br label %83

; <label>:57:                                     ; preds = %47
  %58 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %59 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %58, i32 0, i32 0
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i32 0, i32 0
  %62 = bitcast %union.Value* %61 to %struct.GCObject**
  %63 = load %struct.GCObject*, %struct.GCObject** %62, align 8
  %64 = bitcast %struct.GCObject* %63 to %union.GCUnion*
  %65 = bitcast %union.GCUnion* %64 to %union.Closure*
  %66 = bitcast %union.Closure* %65 to %struct.CClosure*
  store %struct.CClosure* %66, %struct.CClosure** %8, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.CClosure*, %struct.CClosure** %8, align 8
  %69 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %68, i32 0, i32 3
  %70 = load i8, i8* %69, align 2
  %71 = zext i8 %70 to i32
  %72 = icmp sle i32 %67, %71
  br i1 %72, label %73, label %80

; <label>:73:                                     ; preds = %57
  %74 = load %struct.CClosure*, %struct.CClosure** %8, align 8
  %75 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %74, i32 0, i32 6
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [1 x %struct.lua_TValue], [1 x %struct.lua_TValue]* %75, i64 0, i64 %78
  br label %81

; <label>:80:                                     ; preds = %57
  br label %81

; <label>:81:                                     ; preds = %80, %73
  %82 = phi %struct.lua_TValue* [ %79, %73 ], [ @luaO_nilobject_, %80 ]
  store %struct.lua_TValue* %82, %struct.lua_TValue** %3, align 8
  br label %83

; <label>:83:                                     ; preds = %81, %56, %42, %32, %27, %26
  %84 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8
  ret %struct.lua_TValue* %84
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reverse(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.lua_TValue, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %6, align 8
  br label %11

; <label>:11:                                     ; preds = %32, %3
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %14 = icmp ult %struct.lua_TValue* %12, %13
  br i1 %14, label %15, label %37

; <label>:15:                                     ; preds = %11
  store %struct.lua_TValue* %7, %struct.lua_TValue** %8, align 8
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %18 = bitcast %struct.lua_TValue* %16 to i8*
  %19 = bitcast %struct.lua_TValue* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false)
  %20 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  store %struct.lua_TValue* %21, %struct.lua_TValue** %9, align 8
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %24 = bitcast %struct.lua_TValue* %22 to i8*
  %25 = bitcast %struct.lua_TValue* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 16, i32 8, i1 false)
  %26 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  store %struct.lua_TValue* %27, %struct.lua_TValue** %10, align 8
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %29 = bitcast %struct.lua_TValue* %28 to i8*
  %30 = bitcast %struct.lua_TValue* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false)
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  br label %32

; <label>:32:                                     ; preds = %15
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 1
  store %struct.lua_TValue* %34, %struct.lua_TValue** %5, align 8
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i32 -1
  store %struct.lua_TValue* %36, %struct.lua_TValue** %6, align 8
  br label %11

; <label>:37:                                     ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_copy(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %10, i32 %11)
  store %struct.lua_TValue* %12, %struct.lua_TValue** %7, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %13, i32 %14)
  store %struct.lua_TValue* %15, %struct.lua_TValue** %8, align 8
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %16, %struct.lua_TValue** %9, align 8
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %19 = bitcast %struct.lua_TValue* %17 to i8*
  %20 = bitcast %struct.lua_TValue* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 8, i1 false)
  %21 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, -1001000
  br i1 %23, label %24, label %78

; <label>:24:                                     ; preds = %3
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 64
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %76

; <label>:30:                                     ; preds = %24
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 7
  %33 = load %struct.CallInfo*, %struct.CallInfo** %32, align 8
  %34 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %33, i32 0, i32 0
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %34, align 8
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i32 0, i32 0
  %37 = bitcast %union.Value* %36 to %struct.GCObject**
  %38 = load %struct.GCObject*, %struct.GCObject** %37, align 8
  %39 = bitcast %struct.GCObject* %38 to %union.GCUnion*
  %40 = bitcast %union.GCUnion* %39 to %union.Closure*
  %41 = bitcast %union.Closure* %40 to %struct.CClosure*
  %42 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %41, i32 0, i32 2
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %76

; <label>:47:                                     ; preds = %30
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i32 0, i32 0
  %50 = bitcast %union.Value* %49 to %struct.GCObject**
  %51 = load %struct.GCObject*, %struct.GCObject** %50, align 8
  %52 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %51, i32 0, i32 2
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 3
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %76

; <label>:57:                                     ; preds = %47
  %58 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %59 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %59, i32 0, i32 7
  %61 = load %struct.CallInfo*, %struct.CallInfo** %60, align 8
  %62 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %61, i32 0, i32 0
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i32 0, i32 0
  %65 = bitcast %union.Value* %64 to %struct.GCObject**
  %66 = load %struct.GCObject*, %struct.GCObject** %65, align 8
  %67 = bitcast %struct.GCObject* %66 to %union.GCUnion*
  %68 = bitcast %union.GCUnion* %67 to %union.Closure*
  %69 = bitcast %union.Closure* %68 to %struct.CClosure*
  %70 = bitcast %struct.CClosure* %69 to %union.GCUnion*
  %71 = bitcast %union.GCUnion* %70 to %struct.GCObject*
  %72 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %73 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %72, i32 0, i32 0
  %74 = bitcast %union.Value* %73 to %struct.GCObject**
  %75 = load %struct.GCObject*, %struct.GCObject** %74, align 8
  call void @luaC_barrier_(%struct.lua_State* %58, %struct.GCObject* %71, %struct.GCObject* %75)
  br label %77

; <label>:76:                                     ; preds = %47, %30, %24
  br label %77

; <label>:77:                                     ; preds = %76, %57
  br label %78

; <label>:78:                                     ; preds = %77, %3
  ret void
}

declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_pushvalue(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 5
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %8, %struct.lua_TValue** %5, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %10, i32 %11)
  %13 = bitcast %struct.lua_TValue* %9 to i8*
  %14 = bitcast %struct.lua_TValue* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 5
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 1
  store %struct.lua_TValue* %19, %struct.lua_TValue** %17, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_type(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %6, i32 %7)
  store %struct.lua_TValue* %8, %struct.lua_TValue** %5, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %10 = icmp ne %struct.lua_TValue* %9, @luaO_nilobject_
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %2
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 15
  br label %17

; <label>:16:                                     ; preds = %2
  br label %17

; <label>:17:                                     ; preds = %16, %11
  %18 = phi i32 [ %15, %11 ], [ -1, %16 ]
  ret i32 %18
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
  %9 = getelementptr inbounds [11 x i8*], [11 x i8*]* @luaT_typenames_, i64 0, i64 %8
  %10 = load i8*, i8** %9, align 8
  ret i8* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_iscfunction(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %6, i32 %7)
  store %struct.lua_TValue* %8, %struct.lua_TValue** %5, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 22
  br i1 %12, label %18, label %13

; <label>:13:                                     ; preds = %2
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 102
  br label %18

; <label>:18:                                     ; preds = %13, %2
  %19 = phi i1 [ true, %2 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_isinteger(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %6, i32 %7)
  store %struct.lua_TValue* %8, %struct.lua_TValue** %5, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 19
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_isnumber(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %7, i32 %8)
  store %struct.lua_TValue* %9, %struct.lua_TValue** %6, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %2
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %17 = bitcast %union.Value* %16 to double*
  %18 = load double, double* %17, align 8
  store double %18, double* %5, align 8
  br label %22

; <label>:19:                                     ; preds = %2
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %21 = call i32 @luaV_tonumber_(%struct.lua_TValue* %20, double* %5)
  br label %22

; <label>:22:                                     ; preds = %19, %14
  %23 = phi i32 [ 1, %14 ], [ %21, %19 ]
  ret i32 %23
}

declare hidden i32 @luaV_tonumber_(%struct.lua_TValue*, double*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_isstring(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %6, i32 %7)
  store %struct.lua_TValue* %8, %struct.lua_TValue** %5, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 15
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %20, label %14

; <label>:14:                                     ; preds = %2
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 15
  %19 = icmp eq i32 %18, 3
  br label %20

; <label>:20:                                     ; preds = %14, %2
  %21 = phi i1 [ true, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_isuserdata(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %6, i32 %7)
  store %struct.lua_TValue* %8, %struct.lua_TValue** %5, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 71
  br i1 %12, label %18, label %13

; <label>:13:                                     ; preds = %2
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 2
  br label %18

; <label>:18:                                     ; preds = %13, %2
  %19 = phi i1 [ true, %2 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_rawequal(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %9, i32 %10)
  store %struct.lua_TValue* %11, %struct.lua_TValue** %7, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %12, i32 %13)
  store %struct.lua_TValue* %14, %struct.lua_TValue** %8, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %16 = icmp ne %struct.lua_TValue* %15, @luaO_nilobject_
  br i1 %16, label %17, label %24

; <label>:17:                                     ; preds = %3
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %19 = icmp ne %struct.lua_TValue* %18, @luaO_nilobject_
  br i1 %19, label %20, label %24

; <label>:20:                                     ; preds = %17
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %23 = call i32 @luaV_equalobj(%struct.lua_State* null, %struct.lua_TValue* %21, %struct.lua_TValue* %22)
  br label %25

; <label>:24:                                     ; preds = %17, %3
  br label %25

; <label>:25:                                     ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 0, %24 ]
  ret i32 %26
}

declare hidden i32 @luaV_equalobj(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_arith(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 12
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 13
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  br label %28

; <label>:12:                                     ; preds = %8, %2
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 5
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8
  store %struct.lua_TValue* %15, %struct.lua_TValue** %5, align 8
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 5
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 -1
  %21 = bitcast %struct.lua_TValue* %16 to i8*
  %22 = bitcast %struct.lua_TValue* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false)
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 5
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8
  %27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 1
  store %struct.lua_TValue* %27, %struct.lua_TValue** %25, align 8
  br label %28

; <label>:28:                                     ; preds = %12, %11
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 5
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 -2
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 5
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %36, align 8
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i64 -1
  %39 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 5
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %40, align 8
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i64 -2
  call void @luaO_arith(%struct.lua_State* %29, i32 %30, %struct.lua_TValue* %34, %struct.lua_TValue* %38, %struct.lua_TValue* %42)
  %43 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 5
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %44, align 8
  %46 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %45, i32 -1
  store %struct.lua_TValue* %46, %struct.lua_TValue** %44, align 8
  ret void
}

declare hidden void @luaO_arith(%struct.lua_State*, i32, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_compare(%struct.lua_State*, i32, i32, i32) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %12, i32 %13)
  store %struct.lua_TValue* %14, %struct.lua_TValue** %9, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %15, i32 %16)
  store %struct.lua_TValue* %17, %struct.lua_TValue** %10, align 8
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %19 = icmp ne %struct.lua_TValue* %18, @luaO_nilobject_
  br i1 %19, label %20, label %42

; <label>:20:                                     ; preds = %4
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %22 = icmp ne %struct.lua_TValue* %21, @luaO_nilobject_
  br i1 %22, label %23, label %42

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %40 [
    i32 0, label %25
    i32 1, label %30
    i32 2, label %35
  ]

; <label>:25:                                     ; preds = %23
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %29 = call i32 @luaV_equalobj(%struct.lua_State* %26, %struct.lua_TValue* %27, %struct.lua_TValue* %28)
  store i32 %29, i32* %11, align 4
  br label %41

; <label>:30:                                     ; preds = %23
  %31 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %34 = call i32 @luaV_lessthan(%struct.lua_State* %31, %struct.lua_TValue* %32, %struct.lua_TValue* %33)
  store i32 %34, i32* %11, align 4
  br label %41

; <label>:35:                                     ; preds = %23
  %36 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %39 = call i32 @luaV_lessequal(%struct.lua_State* %36, %struct.lua_TValue* %37, %struct.lua_TValue* %38)
  store i32 %39, i32* %11, align 4
  br label %41

; <label>:40:                                     ; preds = %23
  br label %41

; <label>:41:                                     ; preds = %40, %35, %30, %25
  br label %42

; <label>:42:                                     ; preds = %41, %20, %4
  %43 = load i32, i32* %11, align 4
  ret i32 %43
}

declare hidden i32 @luaV_lessthan(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #1

declare hidden i32 @luaV_lessequal(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i64 @lua_stringtonumber(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 5
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %10 = call i64 @luaO_str2num(i8* %6, %struct.lua_TValue* %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %2
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 5
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 1
  store %struct.lua_TValue* %17, %struct.lua_TValue** %15, align 8
  br label %18

; <label>:18:                                     ; preds = %13, %2
  %19 = load i64, i64* %5, align 8
  ret i64 %19
}

declare hidden i64 @luaO_str2num(i8*, %struct.lua_TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define double @lua_tonumberx(%struct.lua_State*, i32, i32*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %10, i32 %11)
  store %struct.lua_TValue* %12, %struct.lua_TValue** %8, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %3
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 0
  %20 = bitcast %union.Value* %19 to double*
  %21 = load double, double* %20, align 8
  store double %21, double* %7, align 8
  br label %25

; <label>:22:                                     ; preds = %3
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %24 = call i32 @luaV_tonumber_(%struct.lua_TValue* %23, double* %7)
  br label %25

; <label>:25:                                     ; preds = %22, %17
  %26 = phi i32 [ 1, %17 ], [ %24, %22 ]
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

; <label>:29:                                     ; preds = %25
  store double 0.000000e+00, double* %7, align 8
  br label %30

; <label>:30:                                     ; preds = %29, %25
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  br label %36

; <label>:36:                                     ; preds = %33, %30
  %37 = load double, double* %7, align 8
  ret double %37
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %10, i32 %11)
  store %struct.lua_TValue* %12, %struct.lua_TValue** %8, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 19
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %3
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 0
  %20 = bitcast %union.Value* %19 to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  br label %25

; <label>:22:                                     ; preds = %3
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %24 = call i32 @luaV_tointeger(%struct.lua_TValue* %23, i64* %7, i32 0)
  br label %25

; <label>:25:                                     ; preds = %22, %17
  %26 = phi i32 [ 1, %17 ], [ %24, %22 ]
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

; <label>:29:                                     ; preds = %25
  store i64 0, i64* %7, align 8
  br label %30

; <label>:30:                                     ; preds = %29, %25
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  br label %36

; <label>:36:                                     ; preds = %33, %30
  %37 = load i64, i64* %7, align 8
  ret i64 %37
}

declare hidden i32 @luaV_tointeger(%struct.lua_TValue*, i64*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_toboolean(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %6, i32 %7)
  store %struct.lua_TValue* %8, %struct.lua_TValue** %5, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

; <label>:13:                                     ; preds = %2
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %24

; <label>:18:                                     ; preds = %13
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 0
  %21 = bitcast %union.Value* %20 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br label %24

; <label>:24:                                     ; preds = %18, %13
  %25 = phi i1 [ false, %13 ], [ %23, %18 ]
  br label %26

; <label>:26:                                     ; preds = %24, %2
  %27 = phi i1 [ true, %2 ], [ %25, %24 ]
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_tolstring(%struct.lua_State*, i32, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %9, i32 %10)
  store %struct.lua_TValue* %11, %struct.lua_TValue** %8, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 15
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %44, label %17

; <label>:17:                                     ; preds = %3
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 15
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %29, label %23

; <label>:23:                                     ; preds = %17
  %24 = load i64*, i64** %7, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %23
  %27 = load i64*, i64** %7, align 8
  store i64 0, i64* %27, align 8
  br label %28

; <label>:28:                                     ; preds = %26, %23
  store i8* null, i8** %4, align 8
  br label %90

; <label>:29:                                     ; preds = %17
  %30 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaO_tostring(%struct.lua_State* %30, %struct.lua_TValue* %31)
  %32 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 6
  %34 = load %struct.global_State*, %struct.global_State** %33, align 8
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %29
  %39 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaC_step(%struct.lua_State* %39)
  br label %40

; <label>:40:                                     ; preds = %38, %29
  %41 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %41, i32 %42)
  store %struct.lua_TValue* %43, %struct.lua_TValue** %8, align 8
  br label %44

; <label>:44:                                     ; preds = %40, %3
  %45 = load i64*, i64** %7, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %81

; <label>:47:                                     ; preds = %44
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i32 0, i32 0
  %50 = bitcast %union.Value* %49 to %struct.GCObject**
  %51 = load %struct.GCObject*, %struct.GCObject** %50, align 8
  %52 = bitcast %struct.GCObject* %51 to %union.GCUnion*
  %53 = bitcast %union.GCUnion* %52 to %struct.TString*
  %54 = getelementptr inbounds %struct.TString, %struct.TString* %53, i32 0, i32 1
  %55 = load i8, i8* %54, align 8
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %68

; <label>:58:                                     ; preds = %47
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i32 0, i32 0
  %61 = bitcast %union.Value* %60 to %struct.GCObject**
  %62 = load %struct.GCObject*, %struct.GCObject** %61, align 8
  %63 = bitcast %struct.GCObject* %62 to %union.GCUnion*
  %64 = bitcast %union.GCUnion* %63 to %struct.TString*
  %65 = getelementptr inbounds %struct.TString, %struct.TString* %64, i32 0, i32 4
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i64
  br label %78

; <label>:68:                                     ; preds = %47
  %69 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i32 0, i32 0
  %71 = bitcast %union.Value* %70 to %struct.GCObject**
  %72 = load %struct.GCObject*, %struct.GCObject** %71, align 8
  %73 = bitcast %struct.GCObject* %72 to %union.GCUnion*
  %74 = bitcast %union.GCUnion* %73 to %struct.TString*
  %75 = getelementptr inbounds %struct.TString, %struct.TString* %74, i32 0, i32 6
  %76 = bitcast %union.anon* %75 to i64*
  %77 = load i64, i64* %76, align 8
  br label %78

; <label>:78:                                     ; preds = %68, %58
  %79 = phi i64 [ %67, %58 ], [ %77, %68 ]
  %80 = load i64*, i64** %7, align 8
  store i64 %79, i64* %80, align 8
  br label %81

; <label>:81:                                     ; preds = %78, %44
  %82 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %83 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %82, i32 0, i32 0
  %84 = bitcast %union.Value* %83 to %struct.GCObject**
  %85 = load %struct.GCObject*, %struct.GCObject** %84, align 8
  %86 = bitcast %struct.GCObject* %85 to %union.GCUnion*
  %87 = bitcast %union.GCUnion* %86 to %struct.TString*
  %88 = bitcast %struct.TString* %87 to i8*
  %89 = getelementptr inbounds i8, i8* %88, i64 24
  store i8* %89, i8** %4, align 8
  br label %90

; <label>:90:                                     ; preds = %81, %28
  %91 = load i8*, i8** %4, align 8
  ret i8* %91
}

declare hidden void @luaO_tostring(%struct.lua_State*, %struct.lua_TValue*) #1

declare hidden void @luaC_step(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i64 @lua_rawlen(%struct.lua_State*, i32) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %7, i32 %8)
  store %struct.lua_TValue* %9, %struct.lua_TValue** %6, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 63
  switch i32 %13, label %51 [
    i32 4, label %14
    i32 20, label %24
    i32 7, label %34
    i32 5, label %43
  ]

; <label>:14:                                     ; preds = %2
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %17 = bitcast %union.Value* %16 to %struct.GCObject**
  %18 = load %struct.GCObject*, %struct.GCObject** %17, align 8
  %19 = bitcast %struct.GCObject* %18 to %union.GCUnion*
  %20 = bitcast %union.GCUnion* %19 to %struct.TString*
  %21 = getelementptr inbounds %struct.TString, %struct.TString* %20, i32 0, i32 4
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i64
  store i64 %23, i64* %3, align 8
  br label %52

; <label>:24:                                     ; preds = %2
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %27 = bitcast %union.Value* %26 to %struct.GCObject**
  %28 = load %struct.GCObject*, %struct.GCObject** %27, align 8
  %29 = bitcast %struct.GCObject* %28 to %union.GCUnion*
  %30 = bitcast %union.GCUnion* %29 to %struct.TString*
  %31 = getelementptr inbounds %struct.TString, %struct.TString* %30, i32 0, i32 6
  %32 = bitcast %union.anon* %31 to i64*
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %3, align 8
  br label %52

; <label>:34:                                     ; preds = %2
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i32 0, i32 0
  %37 = bitcast %union.Value* %36 to %struct.GCObject**
  %38 = load %struct.GCObject*, %struct.GCObject** %37, align 8
  %39 = bitcast %struct.GCObject* %38 to %union.GCUnion*
  %40 = bitcast %union.GCUnion* %39 to %struct.Udata*
  %41 = getelementptr inbounds %struct.Udata, %struct.Udata* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %3, align 8
  br label %52

; <label>:43:                                     ; preds = %2
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i32 0, i32 0
  %46 = bitcast %union.Value* %45 to %struct.GCObject**
  %47 = load %struct.GCObject*, %struct.GCObject** %46, align 8
  %48 = bitcast %struct.GCObject* %47 to %union.GCUnion*
  %49 = bitcast %union.GCUnion* %48 to %struct.Table*
  %50 = call i64 @luaH_getn(%struct.Table* %49)
  store i64 %50, i64* %3, align 8
  br label %52

; <label>:51:                                     ; preds = %2
  store i64 0, i64* %3, align 8
  br label %52

; <label>:52:                                     ; preds = %51, %43, %34, %24, %14
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare hidden i64 @luaH_getn(%struct.Table*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State*, i32) #0 {
  %3 = alloca i32 (%struct.lua_State*)*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %7, i32 %8)
  store %struct.lua_TValue* %9, %struct.lua_TValue** %6, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 22
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %2
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %17 = bitcast %union.Value* %16 to i32 (%struct.lua_State*)**
  %18 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %17, align 8
  store i32 (%struct.lua_State*)* %18, i32 (%struct.lua_State*)** %3, align 8
  br label %35

; <label>:19:                                     ; preds = %2
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 102
  br i1 %23, label %24, label %34

; <label>:24:                                     ; preds = %19
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %27 = bitcast %union.Value* %26 to %struct.GCObject**
  %28 = load %struct.GCObject*, %struct.GCObject** %27, align 8
  %29 = bitcast %struct.GCObject* %28 to %union.GCUnion*
  %30 = bitcast %union.GCUnion* %29 to %union.Closure*
  %31 = bitcast %union.Closure* %30 to %struct.CClosure*
  %32 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %31, i32 0, i32 5
  %33 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %32, align 8
  store i32 (%struct.lua_State*)* %33, i32 (%struct.lua_State*)** %3, align 8
  br label %35

; <label>:34:                                     ; preds = %19
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %3, align 8
  br label %35

; <label>:35:                                     ; preds = %34, %24, %14
  %36 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %3, align 8
  ret i32 (%struct.lua_State*)* %36
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_touserdata(%struct.lua_State*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %7, i32 %8)
  store %struct.lua_TValue* %9, %struct.lua_TValue** %6, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 15
  switch i32 %13, label %28 [
    i32 7, label %14
    i32 2, label %23
  ]

; <label>:14:                                     ; preds = %2
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %17 = bitcast %union.Value* %16 to %struct.GCObject**
  %18 = load %struct.GCObject*, %struct.GCObject** %17, align 8
  %19 = bitcast %struct.GCObject* %18 to %union.GCUnion*
  %20 = bitcast %union.GCUnion* %19 to %struct.Udata*
  %21 = bitcast %struct.Udata* %20 to i8*
  %22 = getelementptr inbounds i8, i8* %21, i64 40
  store i8* %22, i8** %3, align 8
  br label %29

; <label>:23:                                     ; preds = %2
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 0, i32 0
  %26 = bitcast %union.Value* %25 to i8**
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %3, align 8
  br label %29

; <label>:28:                                     ; preds = %2
  store i8* null, i8** %3, align 8
  br label %29

; <label>:29:                                     ; preds = %28, %23, %14
  %30 = load i8*, i8** %3, align 8
  ret i8* %30
}

; Function Attrs: noinline nounwind optnone uwtable
define %struct.lua_State* @lua_tothread(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %6, i32 %7)
  store %struct.lua_TValue* %8, %struct.lua_TValue** %5, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 72
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %2
  br label %21

; <label>:14:                                     ; preds = %2
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %17 = bitcast %union.Value* %16 to %struct.GCObject**
  %18 = load %struct.GCObject*, %struct.GCObject** %17, align 8
  %19 = bitcast %struct.GCObject* %18 to %union.GCUnion*
  %20 = bitcast %union.GCUnion* %19 to %struct.lua_State*
  br label %21

; <label>:21:                                     ; preds = %14, %13
  %22 = phi %struct.lua_State* [ null, %13 ], [ %20, %14 ]
  ret %struct.lua_State* %22
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_topointer(%struct.lua_State*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %7, i32 %8)
  store %struct.lua_TValue* %9, %struct.lua_TValue** %6, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 63
  switch i32 %13, label %69 [
    i32 5, label %14
    i32 6, label %22
    i32 38, label %31
    i32 22, label %40
    i32 8, label %47
    i32 7, label %55
    i32 2, label %64
  ]

; <label>:14:                                     ; preds = %2
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %17 = bitcast %union.Value* %16 to %struct.GCObject**
  %18 = load %struct.GCObject*, %struct.GCObject** %17, align 8
  %19 = bitcast %struct.GCObject* %18 to %union.GCUnion*
  %20 = bitcast %union.GCUnion* %19 to %struct.Table*
  %21 = bitcast %struct.Table* %20 to i8*
  store i8* %21, i8** %3, align 8
  br label %70

; <label>:22:                                     ; preds = %2
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 0
  %25 = bitcast %union.Value* %24 to %struct.GCObject**
  %26 = load %struct.GCObject*, %struct.GCObject** %25, align 8
  %27 = bitcast %struct.GCObject* %26 to %union.GCUnion*
  %28 = bitcast %union.GCUnion* %27 to %union.Closure*
  %29 = bitcast %union.Closure* %28 to %struct.LClosure*
  %30 = bitcast %struct.LClosure* %29 to i8*
  store i8* %30, i8** %3, align 8
  br label %70

; <label>:31:                                     ; preds = %2
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 0, i32 0
  %34 = bitcast %union.Value* %33 to %struct.GCObject**
  %35 = load %struct.GCObject*, %struct.GCObject** %34, align 8
  %36 = bitcast %struct.GCObject* %35 to %union.GCUnion*
  %37 = bitcast %union.GCUnion* %36 to %union.Closure*
  %38 = bitcast %union.Closure* %37 to %struct.CClosure*
  %39 = bitcast %struct.CClosure* %38 to i8*
  store i8* %39, i8** %3, align 8
  br label %70

; <label>:40:                                     ; preds = %2
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i32 0, i32 0
  %43 = bitcast %union.Value* %42 to i32 (%struct.lua_State*)**
  %44 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %43, align 8
  %45 = ptrtoint i32 (%struct.lua_State*)* %44 to i64
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %3, align 8
  br label %70

; <label>:47:                                     ; preds = %2
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i32 0, i32 0
  %50 = bitcast %union.Value* %49 to %struct.GCObject**
  %51 = load %struct.GCObject*, %struct.GCObject** %50, align 8
  %52 = bitcast %struct.GCObject* %51 to %union.GCUnion*
  %53 = bitcast %union.GCUnion* %52 to %struct.lua_State*
  %54 = bitcast %struct.lua_State* %53 to i8*
  store i8* %54, i8** %3, align 8
  br label %70

; <label>:55:                                     ; preds = %2
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %57 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %56, i32 0, i32 0
  %58 = bitcast %union.Value* %57 to %struct.GCObject**
  %59 = load %struct.GCObject*, %struct.GCObject** %58, align 8
  %60 = bitcast %struct.GCObject* %59 to %union.GCUnion*
  %61 = bitcast %union.GCUnion* %60 to %struct.Udata*
  %62 = bitcast %struct.Udata* %61 to i8*
  %63 = getelementptr inbounds i8, i8* %62, i64 40
  store i8* %63, i8** %3, align 8
  br label %70

; <label>:64:                                     ; preds = %2
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i32 0, i32 0
  %67 = bitcast %union.Value* %66 to i8**
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %3, align 8
  br label %70

; <label>:69:                                     ; preds = %2
  store i8* null, i8** %3, align 8
  br label %70

; <label>:70:                                     ; preds = %69, %64, %55, %47, %40, %31, %22, %14
  %71 = load i8*, i8** %3, align 8
  ret i8* %71
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_pushnil(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 5
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %6 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %5, i32 0, i32 1
  store i32 0, i32* %6, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 5
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 1
  store %struct.lua_TValue* %10, %struct.lua_TValue** %8, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_pushnumber(%struct.lua_State*, double) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store double %1, double* %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 5
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %8, %struct.lua_TValue** %5, align 8
  %9 = load double, double* %4, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %12 = bitcast %union.Value* %11 to double*
  store double %9, double* %12, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 1
  store i32 3, i32* %14, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 5
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 1
  store %struct.lua_TValue* %18, %struct.lua_TValue** %16, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_pushinteger(%struct.lua_State*, i64) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 5
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %8, %struct.lua_TValue** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %12 = bitcast %union.Value* %11 to i64*
  store i64 %9, i64* %12, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 1
  store i32 19, i32* %14, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 5
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 1
  store %struct.lua_TValue* %18, %struct.lua_TValue** %16, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TString*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
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
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 5
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %23, align 8
  store %struct.lua_TValue* %24, %struct.lua_TValue** %8, align 8
  %25 = load %struct.TString*, %struct.TString** %7, align 8
  store %struct.TString* %25, %struct.TString** %9, align 8
  %26 = load %struct.TString*, %struct.TString** %9, align 8
  %27 = bitcast %struct.TString* %26 to %union.GCUnion*
  %28 = bitcast %union.GCUnion* %27 to %struct.GCObject*
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 0
  %31 = bitcast %union.Value* %30 to %struct.GCObject**
  store %struct.GCObject* %28, %struct.GCObject** %31, align 8
  %32 = load %struct.TString*, %struct.TString** %9, align 8
  %33 = getelementptr inbounds %struct.TString, %struct.TString* %32, i32 0, i32 1
  %34 = load i8, i8* %33, align 8
  %35 = zext i8 %34 to i32
  %36 = or i32 %35, 64
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 5
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %40, align 8
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i32 1
  store %struct.lua_TValue* %42, %struct.lua_TValue** %40, align 8
  %43 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 6
  %45 = load %struct.global_State*, %struct.global_State** %44, align 8
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %51

; <label>:49:                                     ; preds = %20
  %50 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaC_step(%struct.lua_State* %50)
  br label %51

; <label>:51:                                     ; preds = %49, %20
  %52 = load %struct.TString*, %struct.TString** %7, align 8
  %53 = bitcast %struct.TString* %52 to i8*
  %54 = getelementptr inbounds i8, i8* %53, i64 24
  ret i8* %54
}

declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) #1

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_pushstring(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TString*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %2
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 5
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 1
  store i32 0, i32* %14, align 8
  br label %39

; <label>:15:                                     ; preds = %2
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call %struct.TString* @luaS_new(%struct.lua_State* %16, i8* %17)
  store %struct.TString* %18, %struct.TString** %5, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 5
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8
  store %struct.lua_TValue* %21, %struct.lua_TValue** %6, align 8
  %22 = load %struct.TString*, %struct.TString** %5, align 8
  store %struct.TString* %22, %struct.TString** %7, align 8
  %23 = load %struct.TString*, %struct.TString** %7, align 8
  %24 = bitcast %struct.TString* %23 to %union.GCUnion*
  %25 = bitcast %union.GCUnion* %24 to %struct.GCObject*
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 0, i32 0
  %28 = bitcast %union.Value* %27 to %struct.GCObject**
  store %struct.GCObject* %25, %struct.GCObject** %28, align 8
  %29 = load %struct.TString*, %struct.TString** %7, align 8
  %30 = getelementptr inbounds %struct.TString, %struct.TString* %29, i32 0, i32 1
  %31 = load i8, i8* %30, align 8
  %32 = zext i8 %31 to i32
  %33 = or i32 %32, 64
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TString*, %struct.TString** %5, align 8
  %37 = bitcast %struct.TString* %36 to i8*
  %38 = getelementptr inbounds i8, i8* %37, i64 24
  store i8* %38, i8** %4, align 8
  br label %39

; <label>:39:                                     ; preds = %15, %10
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 5
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %41, align 8
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 1
  store %struct.lua_TValue* %43, %struct.lua_TValue** %41, align 8
  %44 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i32 0, i32 6
  %46 = load %struct.global_State*, %struct.global_State** %45, align 8
  %47 = getelementptr inbounds %struct.global_State, %struct.global_State* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %52

; <label>:50:                                     ; preds = %39
  %51 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_step(%struct.lua_State* %51)
  br label %52

; <label>:52:                                     ; preds = %50, %39
  %53 = load i8*, i8** %4, align 8
  ret i8* %53
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
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 6
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
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 6
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
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.CClosure*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca %struct.CClosure*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 (%struct.lua_State*)* %1, i32 (%struct.lua_State*)** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

; <label>:14:                                     ; preds = %3
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 5
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  store %struct.lua_TValue* %17, %struct.lua_TValue** %7, align 8
  %18 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %5, align 8
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 0
  %21 = bitcast %union.Value* %20 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* %18, i32 (%struct.lua_State*)** %21, align 8
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 0, i32 1
  store i32 22, i32* %23, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 5
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8
  %27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 1
  store %struct.lua_TValue* %27, %struct.lua_TValue** %25, align 8
  br label %88

; <label>:28:                                     ; preds = %3
  %29 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.CClosure* @luaF_newCclosure(%struct.lua_State* %29, i32 %30)
  store %struct.CClosure* %31, %struct.CClosure** %8, align 8
  %32 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %5, align 8
  %33 = load %struct.CClosure*, %struct.CClosure** %8, align 8
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i32 0, i32 5
  store i32 (%struct.lua_State*)* %32, i32 (%struct.lua_State*)** %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 5
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8
  %39 = sext i32 %35 to i64
  %40 = sub i64 0, %39
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %40
  store %struct.lua_TValue* %41, %struct.lua_TValue** %37, align 8
  br label %42

; <label>:42:                                     ; preds = %46, %28
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  %45 = icmp ne i32 %43, 0
  br i1 %45, label %46, label %62

; <label>:46:                                     ; preds = %42
  %47 = load %struct.CClosure*, %struct.CClosure** %8, align 8
  %48 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %47, i32 0, i32 6
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1 x %struct.lua_TValue], [1 x %struct.lua_TValue]* %48, i64 0, i64 %50
  store %struct.lua_TValue* %51, %struct.lua_TValue** %9, align 8
  %52 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %53 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %54 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %53, i32 0, i32 5
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i64 %57
  %59 = bitcast %struct.lua_TValue* %52 to i8*
  %60 = bitcast %struct.lua_TValue* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 16, i32 8, i1 false)
  %61 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  br label %42

; <label>:62:                                     ; preds = %42
  %63 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %63, i32 0, i32 5
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8
  store %struct.lua_TValue* %65, %struct.lua_TValue** %10, align 8
  %66 = load %struct.CClosure*, %struct.CClosure** %8, align 8
  store %struct.CClosure* %66, %struct.CClosure** %11, align 8
  %67 = load %struct.CClosure*, %struct.CClosure** %11, align 8
  %68 = bitcast %struct.CClosure* %67 to %union.GCUnion*
  %69 = bitcast %union.GCUnion* %68 to %struct.GCObject*
  %70 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %70, i32 0, i32 0
  %72 = bitcast %union.Value* %71 to %struct.GCObject**
  store %struct.GCObject* %69, %struct.GCObject** %72, align 8
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %74 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i32 0, i32 1
  store i32 102, i32* %74, align 8
  %75 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %76 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %75, i32 0, i32 5
  %77 = load %struct.lua_TValue*, %struct.lua_TValue** %76, align 8
  %78 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %77, i32 1
  store %struct.lua_TValue* %78, %struct.lua_TValue** %76, align 8
  %79 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %79, i32 0, i32 6
  %81 = load %struct.global_State*, %struct.global_State** %80, align 8
  %82 = getelementptr inbounds %struct.global_State, %struct.global_State* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %87

; <label>:85:                                     ; preds = %62
  %86 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaC_step(%struct.lua_State* %86)
  br label %87

; <label>:87:                                     ; preds = %85, %62
  br label %88

; <label>:88:                                     ; preds = %87, %14
  ret void
}

declare hidden %struct.CClosure* @luaF_newCclosure(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_pushboolean(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 5
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %8, %struct.lua_TValue** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %14 = bitcast %union.Value* %13 to i32*
  store i32 %11, i32* %14, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 1
  store i32 1, i32* %16, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 5
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 1
  store %struct.lua_TValue* %20, %struct.lua_TValue** %18, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_pushlightuserdata(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 5
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %8, %struct.lua_TValue** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 0
  %12 = bitcast %union.Value* %11 to i8**
  store i8* %9, i8** %12, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 1
  store i32 2, i32* %14, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 5
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 1
  store %struct.lua_TValue* %18, %struct.lua_TValue** %16, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_pushthread(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.lua_TValue*, align 8
  %4 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 5
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  store %struct.lua_TValue* %7, %struct.lua_TValue** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  store %struct.lua_State* %8, %struct.lua_State** %4, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = bitcast %struct.lua_State* %9 to %union.GCUnion*
  %11 = bitcast %union.GCUnion* %10 to %struct.GCObject*
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %14 = bitcast %union.Value* %13 to %struct.GCObject**
  store %struct.GCObject* %11, %struct.GCObject** %14, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 1
  store i32 72, i32* %16, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 5
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 1
  store %struct.lua_TValue* %20, %struct.lua_TValue** %18, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 6
  %23 = load %struct.global_State*, %struct.global_State** %22, align 8
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 28
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %27 = icmp eq %struct.lua_State* %25, %26
  %28 = zext i1 %27 to i32
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_getglobal(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 6
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 7
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 0
  %11 = bitcast %union.Value* %10 to %struct.GCObject**
  %12 = load %struct.GCObject*, %struct.GCObject** %11, align 8
  %13 = bitcast %struct.GCObject* %12 to %union.GCUnion*
  %14 = bitcast %union.GCUnion* %13 to %struct.Table*
  store %struct.Table* %14, %struct.Table** %5, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = load %struct.Table*, %struct.Table** %5, align 8
  %17 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %16, i64 2)
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @auxgetstr(%struct.lua_State* %15, %struct.lua_TValue* %17, i8* %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxgetstr(%struct.lua_State*, %struct.lua_TValue*, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.TString*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca %struct.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.TString* @luaS_new(%struct.lua_State* %12, i8* %13)
  store %struct.TString* %14, %struct.TString** %8, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 69
  br i1 %18, label %20, label %19

; <label>:19:                                     ; preds = %3
  store %struct.lua_TValue* null, %struct.lua_TValue** %7, align 8
  br i1 false, label %34, label %47

; <label>:20:                                     ; preds = %3
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 0
  %23 = bitcast %union.Value* %22 to %struct.GCObject**
  %24 = load %struct.GCObject*, %struct.GCObject** %23, align 8
  %25 = bitcast %struct.GCObject* %24 to %union.GCUnion*
  %26 = bitcast %union.GCUnion* %25 to %struct.Table*
  %27 = load %struct.TString*, %struct.TString** %8, align 8
  %28 = call %struct.lua_TValue* @luaH_getstr(%struct.Table* %26, %struct.TString* %27)
  store %struct.lua_TValue* %28, %struct.lua_TValue** %7, align 8
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %47

; <label>:34:                                     ; preds = %20, %19
  %35 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 5
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %36, align 8
  store %struct.lua_TValue* %37, %struct.lua_TValue** %9, align 8
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %40 = bitcast %struct.lua_TValue* %38 to i8*
  %41 = bitcast %struct.lua_TValue* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false)
  %42 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %43 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 5
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %44, align 8
  %46 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %45, i32 1
  store %struct.lua_TValue* %46, %struct.lua_TValue** %44, align 8
  br label %80

; <label>:47:                                     ; preds = %20, %19
  %48 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %49 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %48, i32 0, i32 5
  %50 = load %struct.lua_TValue*, %struct.lua_TValue** %49, align 8
  store %struct.lua_TValue* %50, %struct.lua_TValue** %10, align 8
  %51 = load %struct.TString*, %struct.TString** %8, align 8
  store %struct.TString* %51, %struct.TString** %11, align 8
  %52 = load %struct.TString*, %struct.TString** %11, align 8
  %53 = bitcast %struct.TString* %52 to %union.GCUnion*
  %54 = bitcast %union.GCUnion* %53 to %struct.GCObject*
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i32 0, i32 0
  %57 = bitcast %union.Value* %56 to %struct.GCObject**
  store %struct.GCObject* %54, %struct.GCObject** %57, align 8
  %58 = load %struct.TString*, %struct.TString** %11, align 8
  %59 = getelementptr inbounds %struct.TString, %struct.TString* %58, i32 0, i32 1
  %60 = load i8, i8* %59, align 8
  %61 = zext i8 %60 to i32
  %62 = or i32 %61, 64
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %65, i32 0, i32 5
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %67, i32 1
  store %struct.lua_TValue* %68, %struct.lua_TValue** %66, align 8
  %69 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %70 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %71 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %72 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %71, i32 0, i32 5
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %72, align 8
  %74 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i64 -1
  %75 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %76 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %75, i32 0, i32 5
  %77 = load %struct.lua_TValue*, %struct.lua_TValue** %76, align 8
  %78 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %77, i64 -1
  %79 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  call void @luaV_finishget(%struct.lua_State* %69, %struct.lua_TValue* %70, %struct.lua_TValue* %74, %struct.lua_TValue* %78, %struct.lua_TValue* %79)
  br label %80

; <label>:80:                                     ; preds = %47, %34
  %81 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %82 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %81, i32 0, i32 5
  %83 = load %struct.lua_TValue*, %struct.lua_TValue** %82, align 8
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i64 -1
  %85 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, 15
  ret i32 %87
}

declare hidden %struct.lua_TValue* @luaH_getint(%struct.Table*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_gettable(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %8, i32 %9)
  store %struct.lua_TValue* %10, %struct.lua_TValue** %5, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 69
  br i1 %14, label %16, label %15

; <label>:15:                                     ; preds = %2
  store %struct.lua_TValue* null, %struct.lua_TValue** %6, align 8
  br i1 false, label %33, label %43

; <label>:16:                                     ; preds = %2
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 0
  %19 = bitcast %union.Value* %18 to %struct.GCObject**
  %20 = load %struct.GCObject*, %struct.GCObject** %19, align 8
  %21 = bitcast %struct.GCObject* %20 to %union.GCUnion*
  %22 = bitcast %union.GCUnion* %21 to %struct.Table*
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 5
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %24, align 8
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 -1
  %27 = call %struct.lua_TValue* @luaH_get(%struct.Table* %22, %struct.lua_TValue* %26)
  store %struct.lua_TValue* %27, %struct.lua_TValue** %6, align 8
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %43

; <label>:33:                                     ; preds = %16, %15
  %34 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %34, i32 0, i32 5
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %35, align 8
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i64 -1
  store %struct.lua_TValue* %37, %struct.lua_TValue** %7, align 8
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %40 = bitcast %struct.lua_TValue* %38 to i8*
  %41 = bitcast %struct.lua_TValue* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false)
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  br label %55

; <label>:43:                                     ; preds = %16, %15
  %44 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %46 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %47 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %46, i32 0, i32 5
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i64 -1
  %50 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %51 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %50, i32 0, i32 5
  %52 = load %struct.lua_TValue*, %struct.lua_TValue** %51, align 8
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %52, i64 -1
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  call void @luaV_finishget(%struct.lua_State* %44, %struct.lua_TValue* %45, %struct.lua_TValue* %49, %struct.lua_TValue* %53, %struct.lua_TValue* %54)
  br label %55

; <label>:55:                                     ; preds = %43, %33
  %56 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %56, i32 0, i32 5
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %57, align 8
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 -1
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 15
  ret i32 %62
}

declare hidden %struct.lua_TValue* @luaH_get(%struct.Table*, %struct.lua_TValue*) #1

declare hidden void @luaV_finishget(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) #1

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
  %10 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %8, i32 %9)
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @auxgetstr(%struct.lua_State* %7, %struct.lua_TValue* %10, i8* %11)
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_geti(%struct.lua_State*, i32, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %11, i32 %12)
  store %struct.lua_TValue* %13, %struct.lua_TValue** %7, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 69
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %3
  store %struct.lua_TValue* null, %struct.lua_TValue** %8, align 8
  br i1 false, label %33, label %46

; <label>:19:                                     ; preds = %3
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 0
  %22 = bitcast %union.Value* %21 to %struct.GCObject**
  %23 = load %struct.GCObject*, %struct.GCObject** %22, align 8
  %24 = bitcast %struct.GCObject* %23 to %union.GCUnion*
  %25 = bitcast %union.GCUnion* %24 to %struct.Table*
  %26 = load i64, i64* %6, align 8
  %27 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %25, i64 %26)
  store %struct.lua_TValue* %27, %struct.lua_TValue** %8, align 8
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %46

; <label>:33:                                     ; preds = %19, %18
  %34 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %34, i32 0, i32 5
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %35, align 8
  store %struct.lua_TValue* %36, %struct.lua_TValue** %9, align 8
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %39 = bitcast %struct.lua_TValue* %37 to i8*
  %40 = bitcast %struct.lua_TValue* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 16, i32 8, i1 false)
  %41 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %42 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 5
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %43, align 8
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i32 1
  store %struct.lua_TValue* %45, %struct.lua_TValue** %43, align 8
  br label %71

; <label>:46:                                     ; preds = %19, %18
  %47 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 5
  %49 = load %struct.lua_TValue*, %struct.lua_TValue** %48, align 8
  store %struct.lua_TValue* %49, %struct.lua_TValue** %10, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %52 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %51, i32 0, i32 0
  %53 = bitcast %union.Value* %52 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %54, i32 0, i32 1
  store i32 19, i32* %55, align 8
  %56 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %56, i32 0, i32 5
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %57, align 8
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i32 1
  store %struct.lua_TValue* %59, %struct.lua_TValue** %57, align 8
  %60 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %62 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %62, i32 0, i32 5
  %64 = load %struct.lua_TValue*, %struct.lua_TValue** %63, align 8
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %64, i64 -1
  %66 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %66, i32 0, i32 5
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i64 -1
  %70 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaV_finishget(%struct.lua_State* %60, %struct.lua_TValue* %61, %struct.lua_TValue* %65, %struct.lua_TValue* %69, %struct.lua_TValue* %70)
  br label %71

; <label>:71:                                     ; preds = %46, %33
  %72 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %73 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %72, i32 0, i32 5
  %74 = load %struct.lua_TValue*, %struct.lua_TValue** %73, align 8
  %75 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %74, i64 -1
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 15
  ret i32 %78
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_rawget(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %7, i32 %8)
  store %struct.lua_TValue* %9, %struct.lua_TValue** %5, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 5
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i64 -1
  store %struct.lua_TValue* %13, %struct.lua_TValue** %6, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %17 = bitcast %union.Value* %16 to %struct.GCObject**
  %18 = load %struct.GCObject*, %struct.GCObject** %17, align 8
  %19 = bitcast %struct.GCObject* %18 to %union.GCUnion*
  %20 = bitcast %union.GCUnion* %19 to %struct.Table*
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 5
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %22, align 8
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i64 -1
  %25 = call %struct.lua_TValue* @luaH_get(%struct.Table* %20, %struct.lua_TValue* %24)
  %26 = bitcast %struct.lua_TValue* %14 to i8*
  %27 = bitcast %struct.lua_TValue* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false)
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 5
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %30, align 8
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i64 -1
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 15
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_rawgeti(%struct.lua_State*, i32, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %9, i32 %10)
  store %struct.lua_TValue* %11, %struct.lua_TValue** %7, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 5
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8
  store %struct.lua_TValue* %14, %struct.lua_TValue** %8, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 0, i32 0
  %18 = bitcast %union.Value* %17 to %struct.GCObject**
  %19 = load %struct.GCObject*, %struct.GCObject** %18, align 8
  %20 = bitcast %struct.GCObject* %19 to %union.GCUnion*
  %21 = bitcast %union.GCUnion* %20 to %struct.Table*
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %21, i64 %22)
  %24 = bitcast %struct.lua_TValue* %15 to i8*
  %25 = bitcast %struct.lua_TValue* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 16, i32 8, i1 false)
  %26 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 5
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %28, align 8
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 1
  store %struct.lua_TValue* %30, %struct.lua_TValue** %28, align 8
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 5
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 -1
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 15
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_rawgetp(%struct.lua_State*, i32, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.lua_TValue, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %11, i32 %12)
  store %struct.lua_TValue* %13, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %8, %struct.lua_TValue** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %17 = bitcast %union.Value* %16 to i8**
  store i8* %14, i8** %17, align 8
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 1
  store i32 2, i32* %19, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 5
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %21, align 8
  store %struct.lua_TValue* %22, %struct.lua_TValue** %10, align 8
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 0, i32 0
  %26 = bitcast %union.Value* %25 to %struct.GCObject**
  %27 = load %struct.GCObject*, %struct.GCObject** %26, align 8
  %28 = bitcast %struct.GCObject* %27 to %union.GCUnion*
  %29 = bitcast %union.GCUnion* %28 to %struct.Table*
  %30 = call %struct.lua_TValue* @luaH_get(%struct.Table* %29, %struct.lua_TValue* %8)
  %31 = bitcast %struct.lua_TValue* %23 to i8*
  %32 = bitcast %struct.lua_TValue* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false)
  %33 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %34 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %34, i32 0, i32 5
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %35, align 8
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i32 1
  store %struct.lua_TValue* %37, %struct.lua_TValue** %35, align 8
  %38 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 5
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %39, align 8
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i64 -1
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 15
  ret i32 %44
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_createtable(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Table*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = call %struct.Table* @luaH_new(%struct.lua_State* %10)
  store %struct.Table* %11, %struct.Table** %7, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 5
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8
  store %struct.lua_TValue* %14, %struct.lua_TValue** %8, align 8
  %15 = load %struct.Table*, %struct.Table** %7, align 8
  store %struct.Table* %15, %struct.Table** %9, align 8
  %16 = load %struct.Table*, %struct.Table** %9, align 8
  %17 = bitcast %struct.Table* %16 to %union.GCUnion*
  %18 = bitcast %union.GCUnion* %17 to %struct.GCObject*
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 0
  %21 = bitcast %union.Value* %20 to %struct.GCObject**
  store %struct.GCObject* %18, %struct.GCObject** %21, align 8
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 0, i32 1
  store i32 69, i32* %23, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 5
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8
  %27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 1
  store %struct.lua_TValue* %27, %struct.lua_TValue** %25, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %33, label %30

; <label>:30:                                     ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %38

; <label>:33:                                     ; preds = %30, %3
  %34 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %35 = load %struct.Table*, %struct.Table** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  call void @luaH_resize(%struct.lua_State* %34, %struct.Table* %35, i32 %36, i32 %37)
  br label %38

; <label>:38:                                     ; preds = %33, %30
  %39 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 6
  %41 = load %struct.global_State*, %struct.global_State** %40, align 8
  %42 = getelementptr inbounds %struct.global_State, %struct.global_State* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %38
  %46 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaC_step(%struct.lua_State* %46)
  br label %47

; <label>:47:                                     ; preds = %45, %38
  ret void
}

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) #1

declare hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_getmetatable(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %10, i32 %11)
  store %struct.lua_TValue* %12, %struct.lua_TValue** %5, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 15
  switch i32 %16, label %35 [
    i32 5, label %17
    i32 7, label %26
  ]

; <label>:17:                                     ; preds = %2
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 0
  %20 = bitcast %union.Value* %19 to %struct.GCObject**
  %21 = load %struct.GCObject*, %struct.GCObject** %20, align 8
  %22 = bitcast %struct.GCObject* %21 to %union.GCUnion*
  %23 = bitcast %union.GCUnion* %22 to %struct.Table*
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %23, i32 0, i32 9
  %25 = load %struct.Table*, %struct.Table** %24, align 8
  store %struct.Table* %25, %struct.Table** %6, align 8
  br label %47

; <label>:26:                                     ; preds = %2
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i32 0, i32 0
  %29 = bitcast %union.Value* %28 to %struct.GCObject**
  %30 = load %struct.GCObject*, %struct.GCObject** %29, align 8
  %31 = bitcast %struct.GCObject* %30 to %union.GCUnion*
  %32 = bitcast %union.GCUnion* %31 to %struct.Udata*
  %33 = getelementptr inbounds %struct.Udata, %struct.Udata* %32, i32 0, i32 4
  %34 = load %struct.Table*, %struct.Table** %33, align 8
  store %struct.Table* %34, %struct.Table** %6, align 8
  br label %47

; <label>:35:                                     ; preds = %2
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 6
  %38 = load %struct.global_State*, %struct.global_State** %37, align 8
  %39 = getelementptr inbounds %struct.global_State, %struct.global_State* %38, i32 0, i32 32
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 15
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %39, i64 0, i64 %44
  %46 = load %struct.Table*, %struct.Table** %45, align 8
  store %struct.Table* %46, %struct.Table** %6, align 8
  br label %47

; <label>:47:                                     ; preds = %35, %26, %17
  %48 = load %struct.Table*, %struct.Table** %6, align 8
  %49 = icmp ne %struct.Table* %48, null
  br i1 %49, label %50, label %67

; <label>:50:                                     ; preds = %47
  %51 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %52 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %51, i32 0, i32 5
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %52, align 8
  store %struct.lua_TValue* %53, %struct.lua_TValue** %8, align 8
  %54 = load %struct.Table*, %struct.Table** %6, align 8
  store %struct.Table* %54, %struct.Table** %9, align 8
  %55 = load %struct.Table*, %struct.Table** %9, align 8
  %56 = bitcast %struct.Table* %55 to %union.GCUnion*
  %57 = bitcast %union.GCUnion* %56 to %struct.GCObject*
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i32 0, i32 0
  %60 = bitcast %union.Value* %59 to %struct.GCObject**
  store %struct.GCObject* %57, %struct.GCObject** %60, align 8
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i32 0, i32 1
  store i32 69, i32* %62, align 8
  %63 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %63, i32 0, i32 5
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i32 1
  store %struct.lua_TValue* %66, %struct.lua_TValue** %64, align 8
  store i32 1, i32* %7, align 4
  br label %67

; <label>:67:                                     ; preds = %50, %47
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_getuservalue(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.Udata*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %8, i32 %9)
  store %struct.lua_TValue* %10, %struct.lua_TValue** %5, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 5
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  store %struct.lua_TValue* %13, %struct.lua_TValue** %6, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 0
  %16 = bitcast %union.Value* %15 to %struct.GCObject**
  %17 = load %struct.GCObject*, %struct.GCObject** %16, align 8
  %18 = bitcast %struct.GCObject* %17 to %union.GCUnion*
  %19 = bitcast %union.GCUnion* %18 to %struct.Udata*
  store %struct.Udata* %19, %struct.Udata** %7, align 8
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 0
  %22 = load %struct.Udata*, %struct.Udata** %7, align 8
  %23 = getelementptr inbounds %struct.Udata, %struct.Udata* %22, i32 0, i32 6
  %24 = bitcast %union.Value* %21 to i8*
  %25 = bitcast %union.Value* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 8, i32 8, i1 false)
  %26 = load %struct.Udata*, %struct.Udata** %7, align 8
  %27 = getelementptr inbounds %struct.Udata, %struct.Udata* %26, i32 0, i32 3
  %28 = load i8, i8* %27, align 2
  %29 = zext i8 %28 to i32
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %31 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 5
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %33, align 8
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i32 1
  store %struct.lua_TValue* %35, %struct.lua_TValue** %33, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 5
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8
  %39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 -1
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 15
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_setglobal(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 6
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 7
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 0
  %11 = bitcast %union.Value* %10 to %struct.GCObject**
  %12 = load %struct.GCObject*, %struct.GCObject** %11, align 8
  %13 = bitcast %struct.GCObject* %12 to %union.GCUnion*
  %14 = bitcast %union.GCUnion* %13 to %struct.Table*
  store %struct.Table* %14, %struct.Table** %5, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = load %struct.Table*, %struct.Table** %5, align 8
  %17 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %16, i64 2)
  %18 = load i8*, i8** %4, align 8
  call void @auxsetstr(%struct.lua_State* %15, %struct.lua_TValue* %17, i8* %18)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auxsetstr(%struct.lua_State*, %struct.lua_TValue*, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.TString*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.TString* @luaS_new(%struct.lua_State* %11, i8* %12)
  store %struct.TString* %13, %struct.TString** %8, align 8
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 69
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %3
  store %struct.lua_TValue* null, %struct.lua_TValue** %7, align 8
  br i1 false, label %88, label %93

; <label>:19:                                     ; preds = %3
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 0
  %22 = bitcast %union.Value* %21 to %struct.GCObject**
  %23 = load %struct.GCObject*, %struct.GCObject** %22, align 8
  %24 = bitcast %struct.GCObject* %23 to %union.GCUnion*
  %25 = bitcast %union.GCUnion* %24 to %struct.Table*
  %26 = load %struct.TString*, %struct.TString** %8, align 8
  %27 = call %struct.lua_TValue* @luaH_getstr(%struct.Table* %25, %struct.TString* %26)
  store %struct.lua_TValue* %27, %struct.lua_TValue** %7, align 8
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %19
  br label %85

; <label>:33:                                     ; preds = %19
  %34 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %34, i32 0, i32 5
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %35, align 8
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i64 -1
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 64
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %75

; <label>:42:                                     ; preds = %33
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i32 0, i32 0
  %45 = bitcast %union.Value* %44 to %struct.GCObject**
  %46 = load %struct.GCObject*, %struct.GCObject** %45, align 8
  %47 = bitcast %struct.GCObject* %46 to %union.GCUnion*
  %48 = bitcast %union.GCUnion* %47 to %struct.Table*
  %49 = getelementptr inbounds %struct.Table, %struct.Table* %48, i32 0, i32 2
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %75

; <label>:54:                                     ; preds = %42
  %55 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %55, i32 0, i32 5
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %56, align 8
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i64 -1
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i32 0, i32 0
  %60 = bitcast %union.Value* %59 to %struct.GCObject**
  %61 = load %struct.GCObject*, %struct.GCObject** %60, align 8
  %62 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %61, i32 0, i32 2
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 3
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

; <label>:67:                                     ; preds = %54
  %68 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %69 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i32 0, i32 0
  %71 = bitcast %union.Value* %70 to %struct.GCObject**
  %72 = load %struct.GCObject*, %struct.GCObject** %71, align 8
  %73 = bitcast %struct.GCObject* %72 to %union.GCUnion*
  %74 = bitcast %union.GCUnion* %73 to %struct.Table*
  call void @luaC_barrierback_(%struct.lua_State* %68, %struct.Table* %74)
  br label %76

; <label>:75:                                     ; preds = %54, %42, %33
  br label %76

; <label>:76:                                     ; preds = %75, %67
  %77 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %78 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %79 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %79, i32 0, i32 5
  %81 = load %struct.lua_TValue*, %struct.lua_TValue** %80, align 8
  %82 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %81, i64 -1
  %83 = bitcast %struct.lua_TValue* %78 to i8*
  %84 = bitcast %struct.lua_TValue* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %84, i64 16, i32 8, i1 false)
  br label %85

; <label>:85:                                     ; preds = %76, %32
  %86 = phi i32 [ 0, %32 ], [ 1, %76 ]
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

; <label>:88:                                     ; preds = %85, %18
  %89 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %89, i32 0, i32 5
  %91 = load %struct.lua_TValue*, %struct.lua_TValue** %90, align 8
  %92 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %91, i32 -1
  store %struct.lua_TValue* %92, %struct.lua_TValue** %90, align 8
  br label %130

; <label>:93:                                     ; preds = %85, %18
  %94 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %95 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %94, i32 0, i32 5
  %96 = load %struct.lua_TValue*, %struct.lua_TValue** %95, align 8
  store %struct.lua_TValue* %96, %struct.lua_TValue** %9, align 8
  %97 = load %struct.TString*, %struct.TString** %8, align 8
  store %struct.TString* %97, %struct.TString** %10, align 8
  %98 = load %struct.TString*, %struct.TString** %10, align 8
  %99 = bitcast %struct.TString* %98 to %union.GCUnion*
  %100 = bitcast %union.GCUnion* %99 to %struct.GCObject*
  %101 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %102 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %101, i32 0, i32 0
  %103 = bitcast %union.Value* %102 to %struct.GCObject**
  store %struct.GCObject* %100, %struct.GCObject** %103, align 8
  %104 = load %struct.TString*, %struct.TString** %10, align 8
  %105 = getelementptr inbounds %struct.TString, %struct.TString* %104, i32 0, i32 1
  %106 = load i8, i8* %105, align 8
  %107 = zext i8 %106 to i32
  %108 = or i32 %107, 64
  %109 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %110 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %112 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %111, i32 0, i32 5
  %113 = load %struct.lua_TValue*, %struct.lua_TValue** %112, align 8
  %114 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %113, i32 1
  store %struct.lua_TValue* %114, %struct.lua_TValue** %112, align 8
  %115 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %116 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %117 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %118 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %117, i32 0, i32 5
  %119 = load %struct.lua_TValue*, %struct.lua_TValue** %118, align 8
  %120 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %119, i64 -1
  %121 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %122 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %121, i32 0, i32 5
  %123 = load %struct.lua_TValue*, %struct.lua_TValue** %122, align 8
  %124 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %123, i64 -2
  %125 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  call void @luaV_finishset(%struct.lua_State* %115, %struct.lua_TValue* %116, %struct.lua_TValue* %120, %struct.lua_TValue* %124, %struct.lua_TValue* %125)
  %126 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %127 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %126, i32 0, i32 5
  %128 = load %struct.lua_TValue*, %struct.lua_TValue** %127, align 8
  %129 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i64 -2
  store %struct.lua_TValue* %129, %struct.lua_TValue** %127, align 8
  br label %130

; <label>:130:                                    ; preds = %93, %88
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_settable(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %7, i32 %8)
  store %struct.lua_TValue* %9, %struct.lua_TValue** %5, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 69
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %2
  store %struct.lua_TValue* null, %struct.lua_TValue** %6, align 8
  br i1 false, label %99, label %87

; <label>:15:                                     ; preds = %2
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 0, i32 0
  %18 = bitcast %union.Value* %17 to %struct.GCObject**
  %19 = load %struct.GCObject*, %struct.GCObject** %18, align 8
  %20 = bitcast %struct.GCObject* %19 to %union.GCUnion*
  %21 = bitcast %union.GCUnion* %20 to %struct.Table*
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 5
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %23, align 8
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i64 -2
  %26 = call %struct.lua_TValue* @luaH_get(%struct.Table* %21, %struct.lua_TValue* %25)
  store %struct.lua_TValue* %26, %struct.lua_TValue** %6, align 8
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %15
  br label %84

; <label>:32:                                     ; preds = %15
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %33, i32 0, i32 5
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %34, align 8
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i64 -1
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 64
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %74

; <label>:41:                                     ; preds = %32
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 0, i32 0
  %44 = bitcast %union.Value* %43 to %struct.GCObject**
  %45 = load %struct.GCObject*, %struct.GCObject** %44, align 8
  %46 = bitcast %struct.GCObject* %45 to %union.GCUnion*
  %47 = bitcast %union.GCUnion* %46 to %struct.Table*
  %48 = getelementptr inbounds %struct.Table, %struct.Table* %47, i32 0, i32 2
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %74

; <label>:53:                                     ; preds = %41
  %54 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %54, i32 0, i32 5
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %55, align 8
  %57 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %56, i64 -1
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i32 0, i32 0
  %59 = bitcast %union.Value* %58 to %struct.GCObject**
  %60 = load %struct.GCObject*, %struct.GCObject** %59, align 8
  %61 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %60, i32 0, i32 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 3
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

; <label>:66:                                     ; preds = %53
  %67 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i32 0, i32 0
  %70 = bitcast %union.Value* %69 to %struct.GCObject**
  %71 = load %struct.GCObject*, %struct.GCObject** %70, align 8
  %72 = bitcast %struct.GCObject* %71 to %union.GCUnion*
  %73 = bitcast %union.GCUnion* %72 to %struct.Table*
  call void @luaC_barrierback_(%struct.lua_State* %67, %struct.Table* %73)
  br label %75

; <label>:74:                                     ; preds = %53, %41, %32
  br label %75

; <label>:75:                                     ; preds = %74, %66
  %76 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %77 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %78 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %78, i32 0, i32 5
  %80 = load %struct.lua_TValue*, %struct.lua_TValue** %79, align 8
  %81 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %80, i64 -1
  %82 = bitcast %struct.lua_TValue* %77 to i8*
  %83 = bitcast %struct.lua_TValue* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 16, i32 8, i1 false)
  br label %84

; <label>:84:                                     ; preds = %75, %31
  %85 = phi i32 [ 0, %31 ], [ 1, %75 ]
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %99, label %87

; <label>:87:                                     ; preds = %84, %14
  %88 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %89 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %90 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %91 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %90, i32 0, i32 5
  %92 = load %struct.lua_TValue*, %struct.lua_TValue** %91, align 8
  %93 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %92, i64 -2
  %94 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %95 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %94, i32 0, i32 5
  %96 = load %struct.lua_TValue*, %struct.lua_TValue** %95, align 8
  %97 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %96, i64 -1
  %98 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  call void @luaV_finishset(%struct.lua_State* %88, %struct.lua_TValue* %89, %struct.lua_TValue* %93, %struct.lua_TValue* %97, %struct.lua_TValue* %98)
  br label %99

; <label>:99:                                     ; preds = %87, %84, %14
  %100 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %101 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %100, i32 0, i32 5
  %102 = load %struct.lua_TValue*, %struct.lua_TValue** %101, align 8
  %103 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %102, i64 -2
  store %struct.lua_TValue* %103, %struct.lua_TValue** %101, align 8
  ret void
}

declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.Table*) #1

declare hidden void @luaV_finishset(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) #1

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
  %10 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %8, i32 %9)
  %11 = load i8*, i8** %6, align 8
  call void @auxsetstr(%struct.lua_State* %7, %struct.lua_TValue* %10, i8* %11)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_seti(%struct.lua_State*, i32, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %10, i32 %11)
  store %struct.lua_TValue* %12, %struct.lua_TValue** %7, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 69
  br i1 %16, label %18, label %17

; <label>:17:                                     ; preds = %3
  store %struct.lua_TValue* null, %struct.lua_TValue** %8, align 8
  br i1 false, label %87, label %92

; <label>:18:                                     ; preds = %3
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 0
  %21 = bitcast %union.Value* %20 to %struct.GCObject**
  %22 = load %struct.GCObject*, %struct.GCObject** %21, align 8
  %23 = bitcast %struct.GCObject* %22 to %union.GCUnion*
  %24 = bitcast %union.GCUnion* %23 to %struct.Table*
  %25 = load i64, i64* %6, align 8
  %26 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %24, i64 %25)
  store %struct.lua_TValue* %26, %struct.lua_TValue** %8, align 8
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %18
  br label %84

; <label>:32:                                     ; preds = %18
  %33 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %33, i32 0, i32 5
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %34, align 8
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i64 -1
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 64
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %74

; <label>:41:                                     ; preds = %32
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 0, i32 0
  %44 = bitcast %union.Value* %43 to %struct.GCObject**
  %45 = load %struct.GCObject*, %struct.GCObject** %44, align 8
  %46 = bitcast %struct.GCObject* %45 to %union.GCUnion*
  %47 = bitcast %union.GCUnion* %46 to %struct.Table*
  %48 = getelementptr inbounds %struct.Table, %struct.Table* %47, i32 0, i32 2
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %74

; <label>:53:                                     ; preds = %41
  %54 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %54, i32 0, i32 5
  %56 = load %struct.lua_TValue*, %struct.lua_TValue** %55, align 8
  %57 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %56, i64 -1
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i32 0, i32 0
  %59 = bitcast %union.Value* %58 to %struct.GCObject**
  %60 = load %struct.GCObject*, %struct.GCObject** %59, align 8
  %61 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %60, i32 0, i32 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 3
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

; <label>:66:                                     ; preds = %53
  %67 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i32 0, i32 0
  %70 = bitcast %union.Value* %69 to %struct.GCObject**
  %71 = load %struct.GCObject*, %struct.GCObject** %70, align 8
  %72 = bitcast %struct.GCObject* %71 to %union.GCUnion*
  %73 = bitcast %union.GCUnion* %72 to %struct.Table*
  call void @luaC_barrierback_(%struct.lua_State* %67, %struct.Table* %73)
  br label %75

; <label>:74:                                     ; preds = %53, %41, %32
  br label %75

; <label>:75:                                     ; preds = %74, %66
  %76 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %77 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %78 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %78, i32 0, i32 5
  %80 = load %struct.lua_TValue*, %struct.lua_TValue** %79, align 8
  %81 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %80, i64 -1
  %82 = bitcast %struct.lua_TValue* %77 to i8*
  %83 = bitcast %struct.lua_TValue* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 16, i32 8, i1 false)
  br label %84

; <label>:84:                                     ; preds = %75, %31
  %85 = phi i32 [ 0, %31 ], [ 1, %75 ]
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

; <label>:87:                                     ; preds = %84, %17
  %88 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %89 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %88, i32 0, i32 5
  %90 = load %struct.lua_TValue*, %struct.lua_TValue** %89, align 8
  %91 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %90, i32 -1
  store %struct.lua_TValue* %91, %struct.lua_TValue** %89, align 8
  br label %121

; <label>:92:                                     ; preds = %84, %17
  %93 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %94 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %93, i32 0, i32 5
  %95 = load %struct.lua_TValue*, %struct.lua_TValue** %94, align 8
  store %struct.lua_TValue* %95, %struct.lua_TValue** %9, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %98 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %97, i32 0, i32 0
  %99 = bitcast %union.Value* %98 to i64*
  store i64 %96, i64* %99, align 8
  %100 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %101 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %100, i32 0, i32 1
  store i32 19, i32* %101, align 8
  %102 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %103 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %102, i32 0, i32 5
  %104 = load %struct.lua_TValue*, %struct.lua_TValue** %103, align 8
  %105 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %104, i32 1
  store %struct.lua_TValue* %105, %struct.lua_TValue** %103, align 8
  %106 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %107 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %108 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %109 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %108, i32 0, i32 5
  %110 = load %struct.lua_TValue*, %struct.lua_TValue** %109, align 8
  %111 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %110, i64 -1
  %112 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %113 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %112, i32 0, i32 5
  %114 = load %struct.lua_TValue*, %struct.lua_TValue** %113, align 8
  %115 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %114, i64 -2
  %116 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaV_finishset(%struct.lua_State* %106, %struct.lua_TValue* %107, %struct.lua_TValue* %111, %struct.lua_TValue* %115, %struct.lua_TValue* %116)
  %117 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %118 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %117, i32 0, i32 5
  %119 = load %struct.lua_TValue*, %struct.lua_TValue** %118, align 8
  %120 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %119, i64 -2
  store %struct.lua_TValue* %120, %struct.lua_TValue** %118, align 8
  br label %121

; <label>:121:                                    ; preds = %92, %87
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_rawset(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %7, i32 %8)
  store %struct.lua_TValue* %9, %struct.lua_TValue** %5, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 0
  %13 = bitcast %union.Value* %12 to %struct.GCObject**
  %14 = load %struct.GCObject*, %struct.GCObject** %13, align 8
  %15 = bitcast %struct.GCObject* %14 to %union.GCUnion*
  %16 = bitcast %union.GCUnion* %15 to %struct.Table*
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 5
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 -2
  %21 = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %10, %struct.Table* %16, %struct.lua_TValue* %20)
  store %struct.lua_TValue* %21, %struct.lua_TValue** %6, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 5
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8
  %27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i64 -1
  %28 = bitcast %struct.lua_TValue* %23 to i8*
  %29 = bitcast %struct.lua_TValue* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false)
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %31 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i32 0, i32 0
  %32 = bitcast %union.Value* %31 to %struct.GCObject**
  %33 = load %struct.GCObject*, %struct.GCObject** %32, align 8
  %34 = bitcast %struct.GCObject* %33 to %union.GCUnion*
  %35 = bitcast %union.GCUnion* %34 to %struct.Table*
  %36 = getelementptr inbounds %struct.Table, %struct.Table* %35, i32 0, i32 3
  store i8 0, i8* %36, align 2
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 5
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %38, align 8
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i64 -1
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 64
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %78

; <label>:45:                                     ; preds = %2
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %47 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i32 0, i32 0
  %48 = bitcast %union.Value* %47 to %struct.GCObject**
  %49 = load %struct.GCObject*, %struct.GCObject** %48, align 8
  %50 = bitcast %struct.GCObject* %49 to %union.GCUnion*
  %51 = bitcast %union.GCUnion* %50 to %struct.Table*
  %52 = getelementptr inbounds %struct.Table, %struct.Table* %51, i32 0, i32 2
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %78

; <label>:57:                                     ; preds = %45
  %58 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %58, i32 0, i32 5
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i64 -1
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i32 0, i32 0
  %63 = bitcast %union.Value* %62 to %struct.GCObject**
  %64 = load %struct.GCObject*, %struct.GCObject** %63, align 8
  %65 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %64, i32 0, i32 2
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 3
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

; <label>:70:                                     ; preds = %57
  %71 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %72 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %73 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %72, i32 0, i32 0
  %74 = bitcast %union.Value* %73 to %struct.GCObject**
  %75 = load %struct.GCObject*, %struct.GCObject** %74, align 8
  %76 = bitcast %struct.GCObject* %75 to %union.GCUnion*
  %77 = bitcast %union.GCUnion* %76 to %struct.Table*
  call void @luaC_barrierback_(%struct.lua_State* %71, %struct.Table* %77)
  br label %79

; <label>:78:                                     ; preds = %57, %45, %2
  br label %79

; <label>:79:                                     ; preds = %78, %70
  %80 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %80, i32 0, i32 5
  %82 = load %struct.lua_TValue*, %struct.lua_TValue** %81, align 8
  %83 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %82, i64 -2
  store %struct.lua_TValue* %83, %struct.lua_TValue** %81, align 8
  ret void
}

declare hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_rawseti(%struct.lua_State*, i32, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %8, i32 %9)
  store %struct.lua_TValue* %10, %struct.lua_TValue** %7, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %14 = bitcast %union.Value* %13 to %struct.GCObject**
  %15 = load %struct.GCObject*, %struct.GCObject** %14, align 8
  %16 = bitcast %struct.GCObject* %15 to %union.GCUnion*
  %17 = bitcast %union.GCUnion* %16 to %struct.Table*
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 5
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 -1
  call void @luaH_setint(%struct.lua_State* %11, %struct.Table* %17, i64 %18, %struct.lua_TValue* %22)
  %23 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 5
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %24, align 8
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 -1
  %27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 64
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %64

; <label>:31:                                     ; preds = %3
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 0, i32 0
  %34 = bitcast %union.Value* %33 to %struct.GCObject**
  %35 = load %struct.GCObject*, %struct.GCObject** %34, align 8
  %36 = bitcast %struct.GCObject* %35 to %union.GCUnion*
  %37 = bitcast %union.GCUnion* %36 to %struct.Table*
  %38 = getelementptr inbounds %struct.Table, %struct.Table* %37, i32 0, i32 2
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %64

; <label>:43:                                     ; preds = %31
  %44 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i32 0, i32 5
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %45, align 8
  %47 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i64 -1
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %47, i32 0, i32 0
  %49 = bitcast %union.Value* %48 to %struct.GCObject**
  %50 = load %struct.GCObject*, %struct.GCObject** %49, align 8
  %51 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %50, i32 0, i32 2
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 3
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

; <label>:56:                                     ; preds = %43
  %57 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i32 0, i32 0
  %60 = bitcast %union.Value* %59 to %struct.GCObject**
  %61 = load %struct.GCObject*, %struct.GCObject** %60, align 8
  %62 = bitcast %struct.GCObject* %61 to %union.GCUnion*
  %63 = bitcast %union.GCUnion* %62 to %struct.Table*
  call void @luaC_barrierback_(%struct.lua_State* %57, %struct.Table* %63)
  br label %65

; <label>:64:                                     ; preds = %43, %31, %3
  br label %65

; <label>:65:                                     ; preds = %64, %56
  %66 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %66, i32 0, i32 5
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i32 -1
  store %struct.lua_TValue* %69, %struct.lua_TValue** %67, align 8
  ret void
}

declare hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.lua_TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_rawsetp(%struct.lua_State*, i32, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.lua_TValue, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %11, i32 %12)
  store %struct.lua_TValue* %13, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %8, %struct.lua_TValue** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %17 = bitcast %union.Value* %16 to i8**
  store i8* %14, i8** %17, align 8
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 1
  store i32 2, i32* %19, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 0
  %23 = bitcast %union.Value* %22 to %struct.GCObject**
  %24 = load %struct.GCObject*, %struct.GCObject** %23, align 8
  %25 = bitcast %struct.GCObject* %24 to %union.GCUnion*
  %26 = bitcast %union.GCUnion* %25 to %struct.Table*
  %27 = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %20, %struct.Table* %26, %struct.lua_TValue* %8)
  store %struct.lua_TValue* %27, %struct.lua_TValue** %9, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %30, i32 0, i32 5
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %31, align 8
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i64 -1
  %34 = bitcast %struct.lua_TValue* %29 to i8*
  %35 = bitcast %struct.lua_TValue* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false)
  %36 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 5
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8
  %39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 -1
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 64
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %77

; <label>:44:                                     ; preds = %3
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %46 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %45, i32 0, i32 0
  %47 = bitcast %union.Value* %46 to %struct.GCObject**
  %48 = load %struct.GCObject*, %struct.GCObject** %47, align 8
  %49 = bitcast %struct.GCObject* %48 to %union.GCUnion*
  %50 = bitcast %union.GCUnion* %49 to %struct.Table*
  %51 = getelementptr inbounds %struct.Table, %struct.Table* %50, i32 0, i32 2
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %77

; <label>:56:                                     ; preds = %44
  %57 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %57, i32 0, i32 5
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %58, align 8
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 -1
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i32 0, i32 0
  %62 = bitcast %union.Value* %61 to %struct.GCObject**
  %63 = load %struct.GCObject*, %struct.GCObject** %62, align 8
  %64 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %63, i32 0, i32 2
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 3
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

; <label>:69:                                     ; preds = %56
  %70 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %71 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %71, i32 0, i32 0
  %73 = bitcast %union.Value* %72 to %struct.GCObject**
  %74 = load %struct.GCObject*, %struct.GCObject** %73, align 8
  %75 = bitcast %struct.GCObject* %74 to %union.GCUnion*
  %76 = bitcast %union.GCUnion* %75 to %struct.Table*
  call void @luaC_barrierback_(%struct.lua_State* %70, %struct.Table* %76)
  br label %78

; <label>:77:                                     ; preds = %56, %44, %3
  br label %78

; <label>:78:                                     ; preds = %77, %69
  %79 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %79, i32 0, i32 5
  %81 = load %struct.lua_TValue*, %struct.lua_TValue** %80, align 8
  %82 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %81, i32 -1
  store %struct.lua_TValue* %82, %struct.lua_TValue** %80, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_setmetatable(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %7, i32 %8)
  store %struct.lua_TValue* %9, %struct.lua_TValue** %5, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 5
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i64 -1
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %2
  store %struct.Table* null, %struct.Table** %6, align 8
  br label %28

; <label>:18:                                     ; preds = %2
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 5
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i64 -1
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 0, i32 0
  %24 = bitcast %union.Value* %23 to %struct.GCObject**
  %25 = load %struct.GCObject*, %struct.GCObject** %24, align 8
  %26 = bitcast %struct.GCObject* %25 to %union.GCUnion*
  %27 = bitcast %union.GCUnion* %26 to %struct.Table*
  store %struct.Table* %27, %struct.Table** %6, align 8
  br label %28

; <label>:28:                                     ; preds = %18, %17
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 15
  switch i32 %32, label %133 [
    i32 5, label %33
    i32 7, label %81
  ]

; <label>:33:                                     ; preds = %28
  %34 = load %struct.Table*, %struct.Table** %6, align 8
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i32 0, i32 0
  %37 = bitcast %union.Value* %36 to %struct.GCObject**
  %38 = load %struct.GCObject*, %struct.GCObject** %37, align 8
  %39 = bitcast %struct.GCObject* %38 to %union.GCUnion*
  %40 = bitcast %union.GCUnion* %39 to %struct.Table*
  %41 = getelementptr inbounds %struct.Table, %struct.Table* %40, i32 0, i32 9
  store %struct.Table* %34, %struct.Table** %41, align 8
  %42 = load %struct.Table*, %struct.Table** %6, align 8
  %43 = icmp ne %struct.Table* %42, null
  br i1 %43, label %44, label %80

; <label>:44:                                     ; preds = %33
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %46 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %45, i32 0, i32 0
  %47 = bitcast %union.Value* %46 to %struct.GCObject**
  %48 = load %struct.GCObject*, %struct.GCObject** %47, align 8
  %49 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %48, i32 0, i32 2
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

; <label>:54:                                     ; preds = %44
  %55 = load %struct.Table*, %struct.Table** %6, align 8
  %56 = getelementptr inbounds %struct.Table, %struct.Table* %55, i32 0, i32 2
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 3
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

; <label>:61:                                     ; preds = %54
  %62 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i32 0, i32 0
  %65 = bitcast %union.Value* %64 to %struct.GCObject**
  %66 = load %struct.GCObject*, %struct.GCObject** %65, align 8
  %67 = bitcast %struct.GCObject* %66 to %union.GCUnion*
  %68 = bitcast %union.GCUnion* %67 to %struct.GCObject*
  %69 = load %struct.Table*, %struct.Table** %6, align 8
  %70 = bitcast %struct.Table* %69 to %union.GCUnion*
  %71 = bitcast %union.GCUnion* %70 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %62, %struct.GCObject* %68, %struct.GCObject* %71)
  br label %73

; <label>:72:                                     ; preds = %54, %44
  br label %73

; <label>:73:                                     ; preds = %72, %61
  %74 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i32 0, i32 0
  %77 = bitcast %union.Value* %76 to %struct.GCObject**
  %78 = load %struct.GCObject*, %struct.GCObject** %77, align 8
  %79 = load %struct.Table*, %struct.Table** %6, align 8
  call void @luaC_checkfinalizer(%struct.lua_State* %74, %struct.GCObject* %78, %struct.Table* %79)
  br label %80

; <label>:80:                                     ; preds = %73, %33
  br label %145

; <label>:81:                                     ; preds = %28
  %82 = load %struct.Table*, %struct.Table** %6, align 8
  %83 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i32 0, i32 0
  %85 = bitcast %union.Value* %84 to %struct.GCObject**
  %86 = load %struct.GCObject*, %struct.GCObject** %85, align 8
  %87 = bitcast %struct.GCObject* %86 to %union.GCUnion*
  %88 = bitcast %union.GCUnion* %87 to %struct.Udata*
  %89 = getelementptr inbounds %struct.Udata, %struct.Udata* %88, i32 0, i32 4
  store %struct.Table* %82, %struct.Table** %89, align 8
  %90 = load %struct.Table*, %struct.Table** %6, align 8
  %91 = icmp ne %struct.Table* %90, null
  br i1 %91, label %92, label %132

; <label>:92:                                     ; preds = %81
  %93 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %94 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %93, i32 0, i32 0
  %95 = bitcast %union.Value* %94 to %struct.GCObject**
  %96 = load %struct.GCObject*, %struct.GCObject** %95, align 8
  %97 = bitcast %struct.GCObject* %96 to %union.GCUnion*
  %98 = bitcast %union.GCUnion* %97 to %struct.Udata*
  %99 = getelementptr inbounds %struct.Udata, %struct.Udata* %98, i32 0, i32 2
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = and i32 %101, 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %124

; <label>:104:                                    ; preds = %92
  %105 = load %struct.Table*, %struct.Table** %6, align 8
  %106 = getelementptr inbounds %struct.Table, %struct.Table* %105, i32 0, i32 2
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %108, 3
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

; <label>:111:                                    ; preds = %104
  %112 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %113 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %114 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %113, i32 0, i32 0
  %115 = bitcast %union.Value* %114 to %struct.GCObject**
  %116 = load %struct.GCObject*, %struct.GCObject** %115, align 8
  %117 = bitcast %struct.GCObject* %116 to %union.GCUnion*
  %118 = bitcast %union.GCUnion* %117 to %struct.Udata*
  %119 = bitcast %struct.Udata* %118 to %union.GCUnion*
  %120 = bitcast %union.GCUnion* %119 to %struct.GCObject*
  %121 = load %struct.Table*, %struct.Table** %6, align 8
  %122 = bitcast %struct.Table* %121 to %union.GCUnion*
  %123 = bitcast %union.GCUnion* %122 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %112, %struct.GCObject* %120, %struct.GCObject* %123)
  br label %125

; <label>:124:                                    ; preds = %104, %92
  br label %125

; <label>:125:                                    ; preds = %124, %111
  %126 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %127 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %128 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %127, i32 0, i32 0
  %129 = bitcast %union.Value* %128 to %struct.GCObject**
  %130 = load %struct.GCObject*, %struct.GCObject** %129, align 8
  %131 = load %struct.Table*, %struct.Table** %6, align 8
  call void @luaC_checkfinalizer(%struct.lua_State* %126, %struct.GCObject* %130, %struct.Table* %131)
  br label %132

; <label>:132:                                    ; preds = %125, %81
  br label %145

; <label>:133:                                    ; preds = %28
  %134 = load %struct.Table*, %struct.Table** %6, align 8
  %135 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %136 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %135, i32 0, i32 6
  %137 = load %struct.global_State*, %struct.global_State** %136, align 8
  %138 = getelementptr inbounds %struct.global_State, %struct.global_State* %137, i32 0, i32 32
  %139 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %140 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, 15
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %138, i64 0, i64 %143
  store %struct.Table* %134, %struct.Table** %144, align 8
  br label %145

; <label>:145:                                    ; preds = %133, %132, %80
  %146 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %147 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %146, i32 0, i32 5
  %148 = load %struct.lua_TValue*, %struct.lua_TValue** %147, align 8
  %149 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %148, i32 -1
  store %struct.lua_TValue* %149, %struct.lua_TValue** %147, align 8
  ret i32 1
}

declare hidden void @luaC_checkfinalizer(%struct.lua_State*, %struct.GCObject*, %struct.Table*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_setuservalue(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.Udata*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %8, i32 %9)
  store %struct.lua_TValue* %10, %struct.lua_TValue** %5, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 5
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 -1
  store %struct.lua_TValue* %14, %struct.lua_TValue** %6, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %17 = bitcast %union.Value* %16 to %struct.GCObject**
  %18 = load %struct.GCObject*, %struct.GCObject** %17, align 8
  %19 = bitcast %struct.GCObject* %18 to %union.GCUnion*
  %20 = bitcast %union.GCUnion* %19 to %struct.Udata*
  store %struct.Udata* %20, %struct.Udata** %7, align 8
  %21 = load %struct.Udata*, %struct.Udata** %7, align 8
  %22 = getelementptr inbounds %struct.Udata, %struct.Udata* %21, i32 0, i32 6
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 0
  %25 = bitcast %union.Value* %22 to i8*
  %26 = bitcast %union.Value* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 8, i32 8, i1 false)
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = trunc i32 %29 to i8
  %31 = load %struct.Udata*, %struct.Udata** %7, align 8
  %32 = getelementptr inbounds %struct.Udata, %struct.Udata* %31, i32 0, i32 3
  store i8 %30, i8* %32, align 2
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %33, i32 0, i32 5
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %34, align 8
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i64 -1
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 64
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %79

; <label>:41:                                     ; preds = %2
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 0, i32 0
  %44 = bitcast %union.Value* %43 to %struct.GCObject**
  %45 = load %struct.GCObject*, %struct.GCObject** %44, align 8
  %46 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %45, i32 0, i32 2
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %79

; <label>:51:                                     ; preds = %41
  %52 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %52, i32 0, i32 5
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %54, i64 -1
  %56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i32 0, i32 0
  %57 = bitcast %union.Value* %56 to %struct.GCObject**
  %58 = load %struct.GCObject*, %struct.GCObject** %57, align 8
  %59 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %58, i32 0, i32 2
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 3
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

; <label>:64:                                     ; preds = %51
  %65 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %66 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %67 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %66, i32 0, i32 0
  %68 = bitcast %union.Value* %67 to %struct.GCObject**
  %69 = load %struct.GCObject*, %struct.GCObject** %68, align 8
  %70 = bitcast %struct.GCObject* %69 to %union.GCUnion*
  %71 = bitcast %union.GCUnion* %70 to %struct.GCObject*
  %72 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %73 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %72, i32 0, i32 5
  %74 = load %struct.lua_TValue*, %struct.lua_TValue** %73, align 8
  %75 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %74, i64 -1
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i32 0, i32 0
  %77 = bitcast %union.Value* %76 to %struct.GCObject**
  %78 = load %struct.GCObject*, %struct.GCObject** %77, align 8
  call void @luaC_barrier_(%struct.lua_State* %65, %struct.GCObject* %71, %struct.GCObject* %78)
  br label %80

; <label>:79:                                     ; preds = %51, %41, %2
  br label %80

; <label>:80:                                     ; preds = %79, %64
  %81 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %82 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %81, i32 0, i32 5
  %83 = load %struct.lua_TValue*, %struct.lua_TValue** %82, align 8
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i32 -1
  store %struct.lua_TValue* %84, %struct.lua_TValue** %82, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32 (%struct.lua_State*, i32, i64)*, align 8
  %11 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 (%struct.lua_State*, i32, i64)* %4, i32 (%struct.lua_State*, i32, i64)** %10, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 5
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = sub i64 0, %17
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i64 %18
  store %struct.lua_TValue* %19, %struct.lua_TValue** %11, align 8
  %20 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %10, align 8
  %21 = icmp ne i32 (%struct.lua_State*, i32, i64)* %20, null
  br i1 %21, label %22, label %46

; <label>:22:                                     ; preds = %5
  %23 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 21
  %25 = load i16, i16* %24, align 4
  %26 = zext i16 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %46

; <label>:28:                                     ; preds = %22
  %29 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %10, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %30, i32 0, i32 7
  %32 = load %struct.CallInfo*, %struct.CallInfo** %31, align 8
  %33 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %32, i32 0, i32 4
  %34 = bitcast %union.anon.0* %33 to %struct.anon.2*
  %35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %34, i32 0, i32 0
  store i32 (%struct.lua_State*, i32, i64)* %29, i32 (%struct.lua_State*, i32, i64)** %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 7
  %39 = load %struct.CallInfo*, %struct.CallInfo** %38, align 8
  %40 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %39, i32 0, i32 4
  %41 = bitcast %union.anon.0* %40 to %struct.anon.2*
  %42 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %41, i32 0, i32 2
  store i64 %36, i64* %42, align 8
  %43 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %45 = load i32, i32* %8, align 4
  call void @luaD_call(%struct.lua_State* %43, %struct.lua_TValue* %44, i32 %45)
  br label %50

; <label>:46:                                     ; preds = %22, %5
  %47 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %49 = load i32, i32* %8, align 4
  call void @luaD_callnoyield(%struct.lua_State* %47, %struct.lua_TValue* %48, i32 %49)
  br label %50

; <label>:50:                                     ; preds = %46, %28
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %71

; <label>:53:                                     ; preds = %50
  %54 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %54, i32 0, i32 7
  %56 = load %struct.CallInfo*, %struct.CallInfo** %55, align 8
  %57 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %56, i32 0, i32 1
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %57, align 8
  %59 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %59, i32 0, i32 5
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8
  %62 = icmp ult %struct.lua_TValue* %58, %61
  br i1 %62, label %63, label %71

; <label>:63:                                     ; preds = %53
  %64 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %64, i32 0, i32 5
  %66 = load %struct.lua_TValue*, %struct.lua_TValue** %65, align 8
  %67 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %68 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %67, i32 0, i32 7
  %69 = load %struct.CallInfo*, %struct.CallInfo** %68, align 8
  %70 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %69, i32 0, i32 1
  store %struct.lua_TValue* %66, %struct.lua_TValue** %70, align 8
  br label %71

; <label>:71:                                     ; preds = %63, %53, %50
  ret void
}

declare hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) #1

declare hidden void @luaD_callnoyield(%struct.lua_State*, %struct.lua_TValue*, i32) #1

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
  %16 = alloca %struct.lua_TValue*, align 8
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
  %24 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %22, i32 %23)
  store %struct.lua_TValue* %24, %struct.lua_TValue** %16, align 8
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %26 = bitcast %struct.lua_TValue* %25 to i8*
  %27 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 10
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %28, align 8
  %30 = bitcast %struct.lua_TValue* %29 to i8*
  %31 = ptrtoint i8* %26 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  store i64 %33, i64* %15, align 8
  br label %34

; <label>:34:                                     ; preds = %21, %20
  %35 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 5
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i64 %41
  %43 = getelementptr inbounds %struct.CallS, %struct.CallS* %13, i32 0, i32 0
  store %struct.lua_TValue* %42, %struct.lua_TValue** %43, align 8
  %44 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %12, align 8
  %45 = icmp eq i32 (%struct.lua_State*, i32, i64)* %44, null
  br i1 %45, label %52, label %46

; <label>:46:                                     ; preds = %34
  %47 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 21
  %49 = load i16, i16* %48, align 4
  %50 = zext i16 %49 to i32
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %69

; <label>:52:                                     ; preds = %46, %34
  %53 = load i32, i32* %9, align 4
  %54 = getelementptr inbounds %struct.CallS, %struct.CallS* %13, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  %55 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %56 = bitcast %struct.CallS* %13 to i8*
  %57 = getelementptr inbounds %struct.CallS, %struct.CallS* %13, i32 0, i32 0
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %57, align 8
  %59 = bitcast %struct.lua_TValue* %58 to i8*
  %60 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %60, i32 0, i32 10
  %62 = load %struct.lua_TValue*, %struct.lua_TValue** %61, align 8
  %63 = bitcast %struct.lua_TValue* %62 to i8*
  %64 = ptrtoint i8* %59 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = load i64, i64* %15, align 8
  %68 = call i32 @luaD_pcall(%struct.lua_State* %55, void (%struct.lua_State*, i8*)* @f_call, i8* %56, i64 %66, i64 %67)
  store i32 %68, i32* %14, align 4
  br label %141

; <label>:69:                                     ; preds = %46
  %70 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %70, i32 0, i32 7
  %72 = load %struct.CallInfo*, %struct.CallInfo** %71, align 8
  store %struct.CallInfo* %72, %struct.CallInfo** %17, align 8
  %73 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %12, align 8
  %74 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %75 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %74, i32 0, i32 4
  %76 = bitcast %union.anon.0* %75 to %struct.anon.2*
  %77 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %76, i32 0, i32 0
  store i32 (%struct.lua_State*, i32, i64)* %73, i32 (%struct.lua_State*, i32, i64)** %77, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %80 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %79, i32 0, i32 4
  %81 = bitcast %union.anon.0* %80 to %struct.anon.2*
  %82 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %81, i32 0, i32 2
  store i64 %78, i64* %82, align 8
  %83 = getelementptr inbounds %struct.CallS, %struct.CallS* %13, i32 0, i32 0
  %84 = load %struct.lua_TValue*, %struct.lua_TValue** %83, align 8
  %85 = bitcast %struct.lua_TValue* %84 to i8*
  %86 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %87 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %86, i32 0, i32 10
  %88 = load %struct.lua_TValue*, %struct.lua_TValue** %87, align 8
  %89 = bitcast %struct.lua_TValue* %88 to i8*
  %90 = ptrtoint i8* %85 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %94 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %93, i32 0, i32 5
  store i64 %92, i64* %94, align 8
  %95 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %96 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %95, i32 0, i32 17
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %99 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %98, i32 0, i32 4
  %100 = bitcast %union.anon.0* %99 to %struct.anon.2*
  %101 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %100, i32 0, i32 1
  store i64 %97, i64* %101, align 8
  %102 = load i64, i64* %15, align 8
  %103 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %104 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %103, i32 0, i32 17
  store i64 %102, i64* %104, align 8
  %105 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %106 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %105, i32 0, i32 7
  %107 = load i16, i16* %106, align 2
  %108 = zext i16 %107 to i32
  %109 = and i32 %108, -2
  %110 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %111 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %110, i32 0, i32 24
  %112 = load i8, i8* %111, align 4
  %113 = zext i8 %112 to i32
  %114 = or i32 %109, %113
  %115 = trunc i32 %114 to i16
  %116 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %117 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %116, i32 0, i32 7
  store i16 %115, i16* %117, align 2
  %118 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %119 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %118, i32 0, i32 7
  %120 = load i16, i16* %119, align 2
  %121 = zext i16 %120 to i32
  %122 = or i32 %121, 16
  %123 = trunc i32 %122 to i16
  store i16 %123, i16* %119, align 2
  %124 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %125 = getelementptr inbounds %struct.CallS, %struct.CallS* %13, i32 0, i32 0
  %126 = load %struct.lua_TValue*, %struct.lua_TValue** %125, align 8
  %127 = load i32, i32* %9, align 4
  call void @luaD_call(%struct.lua_State* %124, %struct.lua_TValue* %126, i32 %127)
  %128 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %129 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %128, i32 0, i32 7
  %130 = load i16, i16* %129, align 2
  %131 = zext i16 %130 to i32
  %132 = and i32 %131, -17
  %133 = trunc i32 %132 to i16
  store i16 %133, i16* %129, align 2
  %134 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  %135 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %134, i32 0, i32 4
  %136 = bitcast %union.anon.0* %135 to %struct.anon.2*
  %137 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %140 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %139, i32 0, i32 17
  store i64 %138, i64* %140, align 8
  store i32 0, i32* %14, align 4
  br label %141

; <label>:141:                                    ; preds = %69, %52
  %142 = load i32, i32* %9, align 4
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %162

; <label>:144:                                    ; preds = %141
  %145 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %146 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %145, i32 0, i32 7
  %147 = load %struct.CallInfo*, %struct.CallInfo** %146, align 8
  %148 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %147, i32 0, i32 1
  %149 = load %struct.lua_TValue*, %struct.lua_TValue** %148, align 8
  %150 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %151 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %150, i32 0, i32 5
  %152 = load %struct.lua_TValue*, %struct.lua_TValue** %151, align 8
  %153 = icmp ult %struct.lua_TValue* %149, %152
  br i1 %153, label %154, label %162

; <label>:154:                                    ; preds = %144
  %155 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %156 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %155, i32 0, i32 5
  %157 = load %struct.lua_TValue*, %struct.lua_TValue** %156, align 8
  %158 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %159 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %158, i32 0, i32 7
  %160 = load %struct.CallInfo*, %struct.CallInfo** %159, align 8
  %161 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %160, i32 0, i32 1
  store %struct.lua_TValue* %157, %struct.lua_TValue** %161, align 8
  br label %162

; <label>:162:                                    ; preds = %154, %144, %141
  %163 = load i32, i32* %14, align 4
  ret i32 %163
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
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %12 = load %struct.CallS*, %struct.CallS** %5, align 8
  %13 = getelementptr inbounds %struct.CallS, %struct.CallS* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  call void @luaD_callnoyield(%struct.lua_State* %8, %struct.lua_TValue* %11, i32 %14)
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
  %15 = alloca %struct.lua_TValue*, align 8
  %16 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i8* (%struct.lua_State*, i8*, i64*)* %1, i8* (%struct.lua_State*, i8*, i64*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

; <label>:19:                                     ; preds = %5
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %9, align 8
  br label %20

; <label>:20:                                     ; preds = %19, %5
  %21 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %22 = load i8* (%struct.lua_State*, i8*, i64*)*, i8* (%struct.lua_State*, i8*, i64*)** %7, align 8
  %23 = load i8*, i8** %8, align 8
  call void @luaZ_init(%struct.lua_State* %21, %struct.Zio* %11, i8* (%struct.lua_State*, i8*, i64*)* %22, i8* %23)
  %24 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @luaD_protectedparser(%struct.lua_State* %24, %struct.Zio* %11, i8* %25, i8* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %102

; <label>:30:                                     ; preds = %20
  %31 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 5
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i64 -1
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i32 0, i32 0
  %36 = bitcast %union.Value* %35 to %struct.GCObject**
  %37 = load %struct.GCObject*, %struct.GCObject** %36, align 8
  %38 = bitcast %struct.GCObject* %37 to %union.GCUnion*
  %39 = bitcast %union.GCUnion* %38 to %union.Closure*
  %40 = bitcast %union.Closure* %39 to %struct.LClosure*
  store %struct.LClosure* %40, %struct.LClosure** %13, align 8
  %41 = load %struct.LClosure*, %struct.LClosure** %13, align 8
  %42 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %41, i32 0, i32 3
  %43 = load i8, i8* %42, align 2
  %44 = zext i8 %43 to i32
  %45 = icmp sge i32 %44, 1
  br i1 %45, label %46, label %101

; <label>:46:                                     ; preds = %30
  %47 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 6
  %49 = load %struct.global_State*, %struct.global_State** %48, align 8
  %50 = getelementptr inbounds %struct.global_State, %struct.global_State* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %50, i32 0, i32 0
  %52 = bitcast %union.Value* %51 to %struct.GCObject**
  %53 = load %struct.GCObject*, %struct.GCObject** %52, align 8
  %54 = bitcast %struct.GCObject* %53 to %union.GCUnion*
  %55 = bitcast %union.GCUnion* %54 to %struct.Table*
  store %struct.Table* %55, %struct.Table** %14, align 8
  %56 = load %struct.Table*, %struct.Table** %14, align 8
  %57 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %56, i64 2)
  store %struct.lua_TValue* %57, %struct.lua_TValue** %15, align 8
  %58 = load %struct.LClosure*, %struct.LClosure** %13, align 8
  %59 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %58, i32 0, i32 6
  %60 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %59, i64 0, i64 0
  %61 = load %struct.UpVal*, %struct.UpVal** %60, align 8
  %62 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %61, i32 0, i32 0
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8
  store %struct.lua_TValue* %63, %struct.lua_TValue** %16, align 8
  %64 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8
  %66 = bitcast %struct.lua_TValue* %64 to i8*
  %67 = bitcast %struct.lua_TValue* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 16, i32 8, i1 false)
  %68 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %69 = load %struct.LClosure*, %struct.LClosure** %13, align 8
  %70 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %69, i32 0, i32 6
  %71 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %70, i64 0, i64 0
  %72 = load %struct.UpVal*, %struct.UpVal** %71, align 8
  %73 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %72, i32 0, i32 0
  %74 = load %struct.lua_TValue*, %struct.lua_TValue** %73, align 8
  %75 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 64
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %99

; <label>:79:                                     ; preds = %46
  %80 = load %struct.LClosure*, %struct.LClosure** %13, align 8
  %81 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %80, i32 0, i32 6
  %82 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %81, i64 0, i64 0
  %83 = load %struct.UpVal*, %struct.UpVal** %82, align 8
  %84 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %83, i32 0, i32 0
  %85 = load %struct.lua_TValue*, %struct.lua_TValue** %84, align 8
  %86 = load %struct.LClosure*, %struct.LClosure** %13, align 8
  %87 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %86, i32 0, i32 6
  %88 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %87, i64 0, i64 0
  %89 = load %struct.UpVal*, %struct.UpVal** %88, align 8
  %90 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %89, i32 0, i32 2
  %91 = bitcast %union.anon.3* %90 to %struct.lua_TValue*
  %92 = icmp ne %struct.lua_TValue* %85, %91
  br i1 %92, label %99, label %93

; <label>:93:                                     ; preds = %79
  %94 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %95 = load %struct.LClosure*, %struct.LClosure** %13, align 8
  %96 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %95, i32 0, i32 6
  %97 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %96, i64 0, i64 0
  %98 = load %struct.UpVal*, %struct.UpVal** %97, align 8
  call void @luaC_upvalbarrier_(%struct.lua_State* %94, %struct.UpVal* %98)
  br label %100

; <label>:99:                                     ; preds = %79, %46
  br label %100

; <label>:100:                                    ; preds = %99, %93
  br label %101

; <label>:101:                                    ; preds = %100, %30
  br label %102

; <label>:102:                                    ; preds = %101, %20
  %103 = load i32, i32* %12, align 4
  ret i32 %103
}

declare hidden void @luaZ_init(%struct.lua_State*, %struct.Zio*, i8* (%struct.lua_State*, i8*, i64*)*, i8*) #1

declare hidden i32 @luaD_protectedparser(%struct.lua_State*, %struct.Zio*, i8*, i8*) #1

declare hidden void @luaC_upvalbarrier_(%struct.lua_State*, %struct.UpVal*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_dump(%struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32 (%struct.lua_State*, i8*, i64, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 (%struct.lua_State*, i8*, i64, i8*)* %1, i32 (%struct.lua_State*, i8*, i64, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 5
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 -1
  store %struct.lua_TValue* %14, %struct.lua_TValue** %10, align 8
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 70
  br i1 %18, label %19, label %34

; <label>:19:                                     ; preds = %4
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 0
  %23 = bitcast %union.Value* %22 to %struct.GCObject**
  %24 = load %struct.GCObject*, %struct.GCObject** %23, align 8
  %25 = bitcast %struct.GCObject* %24 to %union.GCUnion*
  %26 = bitcast %union.GCUnion* %25 to %union.Closure*
  %27 = bitcast %union.Closure* %26 to %struct.LClosure*
  %28 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %27, i32 0, i32 5
  %29 = load %struct.Proto*, %struct.Proto** %28, align 8
  %30 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @luaU_dump(%struct.lua_State* %20, %struct.Proto* %29, i32 (%struct.lua_State*, i8*, i64, i8*)* %30, i8* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  br label %35

; <label>:34:                                     ; preds = %4
  store i32 1, i32* %9, align 4
  br label %35

; <label>:35:                                     ; preds = %34, %19
  %36 = load i32, i32* %9, align 4
  ret i32 %36
}

declare hidden i32 @luaU_dump(%struct.lua_State*, %struct.Proto*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_status(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 4
  %5 = load i8, i8* %4, align 4
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_gc(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.global_State*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 6
  %13 = load %struct.global_State*, %struct.global_State** %12, align 8
  store %struct.global_State* %13, %struct.global_State** %8, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %111 [
    i32 0, label %15
    i32 1, label %18
    i32 2, label %22
    i32 3, label %24
    i32 4, label %34
    i32 5, label %44
    i32 6, label %88
    i32 7, label %95
    i32 9, label %106
  ]

; <label>:15:                                     ; preds = %3
  %16 = load %struct.global_State*, %struct.global_State** %8, align 8
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 12
  store i8 0, i8* %17, align 1
  br label %112

; <label>:18:                                     ; preds = %3
  %19 = load %struct.global_State*, %struct.global_State** %8, align 8
  call void @luaE_setdebt(%struct.global_State* %19, i64 0)
  %20 = load %struct.global_State*, %struct.global_State** %8, align 8
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %20, i32 0, i32 12
  store i8 1, i8* %21, align 1
  br label %112

; <label>:22:                                     ; preds = %3
  %23 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaC_fullgc(%struct.lua_State* %23, i32 0)
  br label %112

; <label>:24:                                     ; preds = %3
  %25 = load %struct.global_State*, %struct.global_State** %8, align 8
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.global_State*, %struct.global_State** %8, align 8
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = lshr i64 %31, 10
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  br label %112

; <label>:34:                                     ; preds = %3
  %35 = load %struct.global_State*, %struct.global_State** %8, align 8
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.global_State*, %struct.global_State** %8, align 8
  %39 = getelementptr inbounds %struct.global_State, %struct.global_State* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = and i64 %41, 1023
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  br label %112

; <label>:44:                                     ; preds = %3
  store i64 1, i64* %9, align 8
  %45 = load %struct.global_State*, %struct.global_State** %8, align 8
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i32 0, i32 12
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %10, align 1
  %48 = load %struct.global_State*, %struct.global_State** %8, align 8
  %49 = getelementptr inbounds %struct.global_State, %struct.global_State* %48, i32 0, i32 12
  store i8 1, i8* %49, align 1
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %44
  %53 = load %struct.global_State*, %struct.global_State** %8, align 8
  call void @luaE_setdebt(%struct.global_State* %53, i64 -2400)
  %54 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaC_step(%struct.lua_State* %54)
  br label %74

; <label>:55:                                     ; preds = %44
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = mul nsw i64 %57, 1024
  %59 = load %struct.global_State*, %struct.global_State** %8, align 8
  %60 = getelementptr inbounds %struct.global_State, %struct.global_State* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  store i64 %62, i64* %9, align 8
  %63 = load %struct.global_State*, %struct.global_State** %8, align 8
  %64 = load i64, i64* %9, align 8
  call void @luaE_setdebt(%struct.global_State* %63, i64 %64)
  %65 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %65, i32 0, i32 6
  %67 = load %struct.global_State*, %struct.global_State** %66, align 8
  %68 = getelementptr inbounds %struct.global_State, %struct.global_State* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %73

; <label>:71:                                     ; preds = %55
  %72 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaC_step(%struct.lua_State* %72)
  br label %73

; <label>:73:                                     ; preds = %71, %55
  br label %74

; <label>:74:                                     ; preds = %73, %52
  %75 = load i8, i8* %10, align 1
  %76 = load %struct.global_State*, %struct.global_State** %8, align 8
  %77 = getelementptr inbounds %struct.global_State, %struct.global_State* %76, i32 0, i32 12
  store i8 %75, i8* %77, align 1
  %78 = load i64, i64* %9, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %87

; <label>:80:                                     ; preds = %74
  %81 = load %struct.global_State*, %struct.global_State** %8, align 8
  %82 = getelementptr inbounds %struct.global_State, %struct.global_State* %81, i32 0, i32 10
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 7
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %80
  store i32 1, i32* %7, align 4
  br label %87

; <label>:87:                                     ; preds = %86, %80, %74
  br label %112

; <label>:88:                                     ; preds = %3
  %89 = load %struct.global_State*, %struct.global_State** %8, align 8
  %90 = getelementptr inbounds %struct.global_State, %struct.global_State* %89, i32 0, i32 25
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.global_State*, %struct.global_State** %8, align 8
  %94 = getelementptr inbounds %struct.global_State, %struct.global_State* %93, i32 0, i32 25
  store i32 %92, i32* %94, align 4
  br label %112

; <label>:95:                                     ; preds = %3
  %96 = load %struct.global_State*, %struct.global_State** %8, align 8
  %97 = getelementptr inbounds %struct.global_State, %struct.global_State* %96, i32 0, i32 26
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 40
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %95
  store i32 40, i32* %6, align 4
  br label %102

; <label>:102:                                    ; preds = %101, %95
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.global_State*, %struct.global_State** %8, align 8
  %105 = getelementptr inbounds %struct.global_State, %struct.global_State* %104, i32 0, i32 26
  store i32 %103, i32* %105, align 8
  br label %112

; <label>:106:                                    ; preds = %3
  %107 = load %struct.global_State*, %struct.global_State** %8, align 8
  %108 = getelementptr inbounds %struct.global_State, %struct.global_State* %107, i32 0, i32 12
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  store i32 %110, i32* %7, align 4
  br label %112

; <label>:111:                                    ; preds = %3
  store i32 -1, i32* %7, align 4
  br label %112

; <label>:112:                                    ; preds = %111, %106, %102, %88, %87, %34, %24, %22, %18, %15
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare hidden void @luaE_setdebt(%struct.global_State*, i64) #1

declare hidden void @luaC_fullgc(%struct.lua_State*, i32) #1

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
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %7, i32 %8)
  store %struct.lua_TValue* %9, %struct.lua_TValue** %5, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 0
  %13 = bitcast %union.Value* %12 to %struct.GCObject**
  %14 = load %struct.GCObject*, %struct.GCObject** %13, align 8
  %15 = bitcast %struct.GCObject* %14 to %union.GCUnion*
  %16 = bitcast %union.GCUnion* %15 to %struct.Table*
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 5
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i64 -1
  %21 = call i32 @luaH_next(%struct.lua_State* %10, %struct.Table* %16, %struct.lua_TValue* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

; <label>:24:                                     ; preds = %2
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 5
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %26, align 8
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i32 1
  store %struct.lua_TValue* %28, %struct.lua_TValue** %26, align 8
  br label %34

; <label>:29:                                     ; preds = %2
  %30 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %30, i32 0, i32 5
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %31, align 8
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i64 -1
  store %struct.lua_TValue* %33, %struct.lua_TValue** %31, align 8
  br label %34

; <label>:34:                                     ; preds = %29, %24
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare hidden i32 @luaH_next(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_concat(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
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
  br label %39

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %38

; <label>:15:                                     ; preds = %12
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 5
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8
  store %struct.lua_TValue* %18, %struct.lua_TValue** %5, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 0)
  store %struct.TString* %20, %struct.TString** %6, align 8
  %21 = load %struct.TString*, %struct.TString** %6, align 8
  %22 = bitcast %struct.TString* %21 to %union.GCUnion*
  %23 = bitcast %union.GCUnion* %22 to %struct.GCObject*
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 0, i32 0
  %26 = bitcast %union.Value* %25 to %struct.GCObject**
  store %struct.GCObject* %23, %struct.GCObject** %26, align 8
  %27 = load %struct.TString*, %struct.TString** %6, align 8
  %28 = getelementptr inbounds %struct.TString, %struct.TString* %27, i32 0, i32 1
  %29 = load i8, i8* %28, align 8
  %30 = zext i8 %29 to i32
  %31 = or i32 %30, 64
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %34, i32 0, i32 5
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %35, align 8
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i32 1
  store %struct.lua_TValue* %37, %struct.lua_TValue** %35, align 8
  br label %38

; <label>:38:                                     ; preds = %15, %12
  br label %39

; <label>:39:                                     ; preds = %38, %9
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 6
  %42 = load %struct.global_State*, %struct.global_State** %41, align 8
  %43 = getelementptr inbounds %struct.global_State, %struct.global_State* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %48

; <label>:46:                                     ; preds = %39
  %47 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_step(%struct.lua_State* %47)
  br label %48

; <label>:48:                                     ; preds = %46, %39
  ret void
}

declare hidden void @luaV_concat(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_len(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %6, i32 %7)
  store %struct.lua_TValue* %8, %struct.lua_TValue** %5, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 5
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  call void @luaV_objlen(%struct.lua_State* %9, %struct.lua_TValue* %12, %struct.lua_TValue* %13)
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 5
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 1
  store %struct.lua_TValue* %17, %struct.lua_TValue** %15, align 8
  ret void
}

declare hidden void @luaV_objlen(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #1

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
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 6
  %11 = load %struct.global_State*, %struct.global_State** %10, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = load i8**, i8*** %4, align 8
  store i8* %13, i8** %14, align 8
  br label %15

; <label>:15:                                     ; preds = %8, %2
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 6
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
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 6
  %10 = load %struct.global_State*, %struct.global_State** %9, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 1
  store i8* %7, i8** %11, align 8
  %12 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %5, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 6
  %15 = load %struct.global_State*, %struct.global_State** %14, align 8
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 0
  store i8* (i8*, i8*, i64, i64)* %12, i8* (i8*, i8*, i64, i64)** %16, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_newuserdata(%struct.lua_State*, i64) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.Udata*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.Udata*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call %struct.Udata* @luaS_newudata(%struct.lua_State* %8, i64 %9)
  store %struct.Udata* %10, %struct.Udata** %5, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 5
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  store %struct.lua_TValue* %13, %struct.lua_TValue** %6, align 8
  %14 = load %struct.Udata*, %struct.Udata** %5, align 8
  store %struct.Udata* %14, %struct.Udata** %7, align 8
  %15 = load %struct.Udata*, %struct.Udata** %7, align 8
  %16 = bitcast %struct.Udata* %15 to %union.GCUnion*
  %17 = bitcast %union.GCUnion* %16 to %struct.GCObject*
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 0
  %20 = bitcast %union.Value* %19 to %struct.GCObject**
  store %struct.GCObject* %17, %struct.GCObject** %20, align 8
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 1
  store i32 71, i32* %22, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 5
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %24, align 8
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 1
  store %struct.lua_TValue* %26, %struct.lua_TValue** %24, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 6
  %29 = load %struct.global_State*, %struct.global_State** %28, align 8
  %30 = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %2
  %34 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_step(%struct.lua_State* %34)
  br label %35

; <label>:35:                                     ; preds = %33, %2
  %36 = load %struct.Udata*, %struct.Udata** %5, align 8
  %37 = bitcast %struct.Udata* %36 to i8*
  %38 = getelementptr inbounds i8, i8* %37, i64 40
  ret i8* %38
}

declare hidden %struct.Udata* @luaS_newudata(%struct.lua_State*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_getupvalue(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.lua_TValue* null, %struct.lua_TValue** %8, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %10, i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = call i8* @aux_upvalue(%struct.lua_TValue* %12, i32 %13, %struct.lua_TValue** %8, %struct.CClosure** null, %struct.UpVal** null)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %30

; <label>:17:                                     ; preds = %3
  %18 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 5
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8
  store %struct.lua_TValue* %20, %struct.lua_TValue** %9, align 8
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %23 = bitcast %struct.lua_TValue* %21 to i8*
  %24 = bitcast %struct.lua_TValue* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false)
  %25 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 5
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %27, align 8
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 1
  store %struct.lua_TValue* %29, %struct.lua_TValue** %27, align 8
  br label %30

; <label>:30:                                     ; preds = %17, %3
  %31 = load i8*, i8** %7, align 8
  ret i8* %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @aux_upvalue(%struct.lua_TValue*, i32, %struct.lua_TValue**, %struct.CClosure**, %struct.UpVal**) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lua_TValue**, align 8
  %10 = alloca %struct.CClosure**, align 8
  %11 = alloca %struct.UpVal**, align 8
  %12 = alloca %struct.CClosure*, align 8
  %13 = alloca %struct.LClosure*, align 8
  %14 = alloca %struct.TString*, align 8
  %15 = alloca %struct.Proto*, align 8
  store %struct.lua_TValue* %0, %struct.lua_TValue** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.lua_TValue** %2, %struct.lua_TValue*** %9, align 8
  store %struct.CClosure** %3, %struct.CClosure*** %10, align 8
  store %struct.UpVal** %4, %struct.UpVal*** %11, align 8
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 63
  switch i32 %19, label %113 [
    i32 38, label %20
    i32 6, label %52
  ]

; <label>:20:                                     ; preds = %5
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 0
  %23 = bitcast %union.Value* %22 to %struct.GCObject**
  %24 = load %struct.GCObject*, %struct.GCObject** %23, align 8
  %25 = bitcast %struct.GCObject* %24 to %union.GCUnion*
  %26 = bitcast %union.GCUnion* %25 to %union.Closure*
  %27 = bitcast %union.Closure* %26 to %struct.CClosure*
  store %struct.CClosure* %27, %struct.CClosure** %12, align 8
  %28 = load i32, i32* %8, align 4
  %29 = icmp sle i32 1, %28
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %20
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.CClosure*, %struct.CClosure** %12, align 8
  %33 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i32 0, i32 3
  %34 = load i8, i8* %33, align 2
  %35 = zext i8 %34 to i32
  %36 = icmp sle i32 %31, %35
  br i1 %36, label %38, label %37

; <label>:37:                                     ; preds = %30, %20
  store i8* null, i8** %6, align 8
  br label %114

; <label>:38:                                     ; preds = %30
  %39 = load %struct.CClosure*, %struct.CClosure** %12, align 8
  %40 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %39, i32 0, i32 6
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [1 x %struct.lua_TValue], [1 x %struct.lua_TValue]* %40, i64 0, i64 %43
  %45 = load %struct.lua_TValue**, %struct.lua_TValue*** %9, align 8
  store %struct.lua_TValue* %44, %struct.lua_TValue** %45, align 8
  %46 = load %struct.CClosure**, %struct.CClosure*** %10, align 8
  %47 = icmp ne %struct.CClosure** %46, null
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %38
  %49 = load %struct.CClosure*, %struct.CClosure** %12, align 8
  %50 = load %struct.CClosure**, %struct.CClosure*** %10, align 8
  store %struct.CClosure* %49, %struct.CClosure** %50, align 8
  br label %51

; <label>:51:                                     ; preds = %48, %38
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %6, align 8
  br label %114

; <label>:52:                                     ; preds = %5
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i32 0, i32 0
  %55 = bitcast %union.Value* %54 to %struct.GCObject**
  %56 = load %struct.GCObject*, %struct.GCObject** %55, align 8
  %57 = bitcast %struct.GCObject* %56 to %union.GCUnion*
  %58 = bitcast %union.GCUnion* %57 to %union.Closure*
  %59 = bitcast %union.Closure* %58 to %struct.LClosure*
  store %struct.LClosure* %59, %struct.LClosure** %13, align 8
  %60 = load %struct.LClosure*, %struct.LClosure** %13, align 8
  %61 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %60, i32 0, i32 5
  %62 = load %struct.Proto*, %struct.Proto** %61, align 8
  store %struct.Proto* %62, %struct.Proto** %15, align 8
  %63 = load i32, i32* %8, align 4
  %64 = icmp sle i32 1, %63
  br i1 %64, label %65, label %71

; <label>:65:                                     ; preds = %52
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.Proto*, %struct.Proto** %15, align 8
  %68 = getelementptr inbounds %struct.Proto, %struct.Proto* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = icmp sle i32 %66, %69
  br i1 %70, label %72, label %71

; <label>:71:                                     ; preds = %65, %52
  store i8* null, i8** %6, align 8
  br label %114

; <label>:72:                                     ; preds = %65
  %73 = load %struct.LClosure*, %struct.LClosure** %13, align 8
  %74 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %73, i32 0, i32 6
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %74, i64 0, i64 %77
  %79 = load %struct.UpVal*, %struct.UpVal** %78, align 8
  %80 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %79, i32 0, i32 0
  %81 = load %struct.lua_TValue*, %struct.lua_TValue** %80, align 8
  %82 = load %struct.lua_TValue**, %struct.lua_TValue*** %9, align 8
  store %struct.lua_TValue* %81, %struct.lua_TValue** %82, align 8
  %83 = load %struct.UpVal**, %struct.UpVal*** %11, align 8
  %84 = icmp ne %struct.UpVal** %83, null
  br i1 %84, label %85, label %94

; <label>:85:                                     ; preds = %72
  %86 = load %struct.LClosure*, %struct.LClosure** %13, align 8
  %87 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %86, i32 0, i32 6
  %88 = load i32, i32* %8, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %87, i64 0, i64 %90
  %92 = load %struct.UpVal*, %struct.UpVal** %91, align 8
  %93 = load %struct.UpVal**, %struct.UpVal*** %11, align 8
  store %struct.UpVal* %92, %struct.UpVal** %93, align 8
  br label %94

; <label>:94:                                     ; preds = %85, %72
  %95 = load %struct.Proto*, %struct.Proto** %15, align 8
  %96 = getelementptr inbounds %struct.Proto, %struct.Proto* %95, i32 0, i32 19
  %97 = load %struct.Upvaldesc*, %struct.Upvaldesc** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %97, i64 %100
  %102 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %101, i32 0, i32 0
  %103 = load %struct.TString*, %struct.TString** %102, align 8
  store %struct.TString* %103, %struct.TString** %14, align 8
  %104 = load %struct.TString*, %struct.TString** %14, align 8
  %105 = icmp eq %struct.TString* %104, null
  br i1 %105, label %106, label %107

; <label>:106:                                    ; preds = %94
  br label %111

; <label>:107:                                    ; preds = %94
  %108 = load %struct.TString*, %struct.TString** %14, align 8
  %109 = bitcast %struct.TString* %108 to i8*
  %110 = getelementptr inbounds i8, i8* %109, i64 24
  br label %111

; <label>:111:                                    ; preds = %107, %106
  %112 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %106 ], [ %110, %107 ]
  store i8* %112, i8** %6, align 8
  br label %114

; <label>:113:                                    ; preds = %5
  store i8* null, i8** %6, align 8
  br label %114

; <label>:114:                                    ; preds = %113, %111, %71, %51, %37
  %115 = load i8*, i8** %6, align 8
  ret i8* %115
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_setupvalue(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.CClosure*, align 8
  %10 = alloca %struct.UpVal*, align 8
  %11 = alloca %struct.lua_TValue*, align 8
  %12 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.lua_TValue* null, %struct.lua_TValue** %8, align 8
  store %struct.CClosure* null, %struct.CClosure** %9, align 8
  store %struct.UpVal* null, %struct.UpVal** %10, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %13, i32 %14)
  store %struct.lua_TValue* %15, %struct.lua_TValue** %11, align 8
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i8* @aux_upvalue(%struct.lua_TValue* %16, i32 %17, %struct.lua_TValue** %8, %struct.CClosure** %9, %struct.UpVal** %10)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %102

; <label>:21:                                     ; preds = %3
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 5
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %23, align 8
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 -1
  store %struct.lua_TValue* %25, %struct.lua_TValue** %23, align 8
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %26, %struct.lua_TValue** %12, align 8
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %28, i32 0, i32 5
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %29, align 8
  %31 = bitcast %struct.lua_TValue* %27 to i8*
  %32 = bitcast %struct.lua_TValue* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false)
  %33 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %34 = load %struct.CClosure*, %struct.CClosure** %9, align 8
  %35 = icmp ne %struct.CClosure* %34, null
  br i1 %35, label %36, label %76

; <label>:36:                                     ; preds = %21
  %37 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 5
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %38, align 8
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 64
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %74

; <label>:44:                                     ; preds = %36
  %45 = load %struct.CClosure*, %struct.CClosure** %9, align 8
  %46 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %45, i32 0, i32 2
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %74

; <label>:51:                                     ; preds = %44
  %52 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %52, i32 0, i32 5
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %54, i32 0, i32 0
  %56 = bitcast %union.Value* %55 to %struct.GCObject**
  %57 = load %struct.GCObject*, %struct.GCObject** %56, align 8
  %58 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %57, i32 0, i32 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 3
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

; <label>:63:                                     ; preds = %51
  %64 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %65 = load %struct.CClosure*, %struct.CClosure** %9, align 8
  %66 = bitcast %struct.CClosure* %65 to %union.GCUnion*
  %67 = bitcast %union.GCUnion* %66 to %struct.GCObject*
  %68 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %68, i32 0, i32 5
  %70 = load %struct.lua_TValue*, %struct.lua_TValue** %69, align 8
  %71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %70, i32 0, i32 0
  %72 = bitcast %union.Value* %71 to %struct.GCObject**
  %73 = load %struct.GCObject*, %struct.GCObject** %72, align 8
  call void @luaC_barrier_(%struct.lua_State* %64, %struct.GCObject* %67, %struct.GCObject* %73)
  br label %75

; <label>:74:                                     ; preds = %51, %44, %36
  br label %75

; <label>:75:                                     ; preds = %74, %63
  br label %101

; <label>:76:                                     ; preds = %21
  %77 = load %struct.UpVal*, %struct.UpVal** %10, align 8
  %78 = icmp ne %struct.UpVal* %77, null
  br i1 %78, label %79, label %100

; <label>:79:                                     ; preds = %76
  %80 = load %struct.UpVal*, %struct.UpVal** %10, align 8
  %81 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %80, i32 0, i32 0
  %82 = load %struct.lua_TValue*, %struct.lua_TValue** %81, align 8
  %83 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, 64
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

; <label>:87:                                     ; preds = %79
  %88 = load %struct.UpVal*, %struct.UpVal** %10, align 8
  %89 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %88, i32 0, i32 0
  %90 = load %struct.lua_TValue*, %struct.lua_TValue** %89, align 8
  %91 = load %struct.UpVal*, %struct.UpVal** %10, align 8
  %92 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %91, i32 0, i32 2
  %93 = bitcast %union.anon.3* %92 to %struct.lua_TValue*
  %94 = icmp ne %struct.lua_TValue* %90, %93
  br i1 %94, label %98, label %95

; <label>:95:                                     ; preds = %87
  %96 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %97 = load %struct.UpVal*, %struct.UpVal** %10, align 8
  call void @luaC_upvalbarrier_(%struct.lua_State* %96, %struct.UpVal* %97)
  br label %99

; <label>:98:                                     ; preds = %87, %79
  br label %99

; <label>:99:                                     ; preds = %98, %95
  br label %100

; <label>:100:                                    ; preds = %99, %76
  br label %101

; <label>:101:                                    ; preds = %100, %75
  br label %102

; <label>:102:                                    ; preds = %101, %3
  %103 = load i8*, i8** %7, align 8
  ret i8* %103
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @lua_upvalueid(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.CClosure*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %10, i32 %11)
  store %struct.lua_TValue* %12, %struct.lua_TValue** %8, align 8
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 63
  switch i32 %16, label %39 [
    i32 6, label %17
    i32 38, label %24
  ]

; <label>:17:                                     ; preds = %3
  %18 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.UpVal** @getupvalref(%struct.lua_State* %18, i32 %19, i32 %20)
  %22 = load %struct.UpVal*, %struct.UpVal** %21, align 8
  %23 = bitcast %struct.UpVal* %22 to i8*
  store i8* %23, i8** %4, align 8
  br label %40

; <label>:24:                                     ; preds = %3
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %27 = bitcast %union.Value* %26 to %struct.GCObject**
  %28 = load %struct.GCObject*, %struct.GCObject** %27, align 8
  %29 = bitcast %struct.GCObject* %28 to %union.GCUnion*
  %30 = bitcast %union.GCUnion* %29 to %union.Closure*
  %31 = bitcast %union.Closure* %30 to %struct.CClosure*
  store %struct.CClosure* %31, %struct.CClosure** %9, align 8
  %32 = load %struct.CClosure*, %struct.CClosure** %9, align 8
  %33 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %32, i32 0, i32 6
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [1 x %struct.lua_TValue], [1 x %struct.lua_TValue]* %33, i64 0, i64 %36
  %38 = bitcast %struct.lua_TValue* %37 to i8*
  store i8* %38, i8** %4, align 8
  br label %40

; <label>:39:                                     ; preds = %3
  store i8* null, i8** %4, align 8
  br label %40

; <label>:40:                                     ; preds = %39, %24, %17
  %41 = load i8*, i8** %4, align 8
  ret i8* %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.UpVal** @getupvalref(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.LClosure*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %9, i32 %10)
  store %struct.lua_TValue* %11, %struct.lua_TValue** %8, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %14 = bitcast %union.Value* %13 to %struct.GCObject**
  %15 = load %struct.GCObject*, %struct.GCObject** %14, align 8
  %16 = bitcast %struct.GCObject* %15 to %union.GCUnion*
  %17 = bitcast %union.GCUnion* %16 to %union.Closure*
  %18 = bitcast %union.Closure* %17 to %struct.LClosure*
  store %struct.LClosure* %18, %struct.LClosure** %7, align 8
  %19 = load %struct.LClosure*, %struct.LClosure** %7, align 8
  %20 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %19, i32 0, i32 6
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %20, i64 0, i64 %23
  ret %struct.UpVal** %24
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_upvaluejoin(%struct.lua_State*, i32, i32, i32, i32) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.UpVal**, align 8
  %12 = alloca %struct.UpVal**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.UpVal** @getupvalref(%struct.lua_State* %13, i32 %14, i32 %15)
  store %struct.UpVal** %16, %struct.UpVal*** %11, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.UpVal** @getupvalref(%struct.lua_State* %17, i32 %18, i32 %19)
  store %struct.UpVal** %20, %struct.UpVal*** %12, align 8
  %21 = load %struct.UpVal**, %struct.UpVal*** %11, align 8
  %22 = load %struct.UpVal*, %struct.UpVal** %21, align 8
  %23 = load %struct.UpVal**, %struct.UpVal*** %12, align 8
  %24 = load %struct.UpVal*, %struct.UpVal** %23, align 8
  %25 = icmp eq %struct.UpVal* %22, %24
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %5
  br label %78

; <label>:27:                                     ; preds = %5
  %28 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %29 = load %struct.UpVal**, %struct.UpVal*** %11, align 8
  %30 = load %struct.UpVal*, %struct.UpVal** %29, align 8
  call void @luaC_upvdeccount(%struct.lua_State* %28, %struct.UpVal* %30)
  %31 = load %struct.UpVal**, %struct.UpVal*** %12, align 8
  %32 = load %struct.UpVal*, %struct.UpVal** %31, align 8
  %33 = load %struct.UpVal**, %struct.UpVal*** %11, align 8
  store %struct.UpVal* %32, %struct.UpVal** %33, align 8
  %34 = load %struct.UpVal**, %struct.UpVal*** %11, align 8
  %35 = load %struct.UpVal*, %struct.UpVal** %34, align 8
  %36 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.UpVal**, %struct.UpVal*** %11, align 8
  %40 = load %struct.UpVal*, %struct.UpVal** %39, align 8
  %41 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %40, i32 0, i32 0
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %41, align 8
  %43 = load %struct.UpVal**, %struct.UpVal*** %11, align 8
  %44 = load %struct.UpVal*, %struct.UpVal** %43, align 8
  %45 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %44, i32 0, i32 2
  %46 = bitcast %union.anon.3* %45 to %struct.lua_TValue*
  %47 = icmp ne %struct.lua_TValue* %42, %46
  br i1 %47, label %48, label %54

; <label>:48:                                     ; preds = %27
  %49 = load %struct.UpVal**, %struct.UpVal*** %11, align 8
  %50 = load %struct.UpVal*, %struct.UpVal** %49, align 8
  %51 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %50, i32 0, i32 2
  %52 = bitcast %union.anon.3* %51 to %struct.anon.4*
  %53 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %52, i32 0, i32 1
  store i32 1, i32* %53, align 8
  br label %54

; <label>:54:                                     ; preds = %48, %27
  %55 = load %struct.UpVal**, %struct.UpVal*** %11, align 8
  %56 = load %struct.UpVal*, %struct.UpVal** %55, align 8
  %57 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %56, i32 0, i32 0
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %57, align 8
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 64
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

; <label>:63:                                     ; preds = %54
  %64 = load %struct.UpVal**, %struct.UpVal*** %11, align 8
  %65 = load %struct.UpVal*, %struct.UpVal** %64, align 8
  %66 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %65, i32 0, i32 0
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8
  %68 = load %struct.UpVal**, %struct.UpVal*** %11, align 8
  %69 = load %struct.UpVal*, %struct.UpVal** %68, align 8
  %70 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %69, i32 0, i32 2
  %71 = bitcast %union.anon.3* %70 to %struct.lua_TValue*
  %72 = icmp ne %struct.lua_TValue* %67, %71
  br i1 %72, label %77, label %73

; <label>:73:                                     ; preds = %63
  %74 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %75 = load %struct.UpVal**, %struct.UpVal*** %11, align 8
  %76 = load %struct.UpVal*, %struct.UpVal** %75, align 8
  call void @luaC_upvalbarrier_(%struct.lua_State* %74, %struct.UpVal* %76)
  br label %78

; <label>:77:                                     ; preds = %63, %54
  br label %78

; <label>:78:                                     ; preds = %26, %77, %73
  ret void
}

declare hidden void @luaC_upvdeccount(%struct.lua_State*, %struct.UpVal*) #1

declare hidden void @luaD_growstack(%struct.lua_State*, i32) #1

declare hidden %struct.lua_TValue* @luaH_getstr(%struct.Table*, %struct.TString*) #1

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
