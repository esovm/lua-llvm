; ModuleID = 'lstring.c'
source_filename = "lstring.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%union.anon = type { i64 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32 (%struct.lua_State*)*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.TValue*, %union.Node*, %union.Node*, %struct.Table*, %struct.GCObject* }
%union.Node = type { %struct.NodeKey }
%struct.NodeKey = type { %union.Value, i8, i8, i32, %union.Value }
%union.StackValue = type { %struct.TValue }
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.UpVal*, %struct.UpVal** }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, %union.anon.2, i16, i16 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.2 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%union.GCUnion = type { %struct.lua_State }
%struct.Udata = type { %struct.GCObject*, i8, i8, i16, i64, %struct.Table*, %struct.GCObject*, [1 x %union.UValue] }
%union.UValue = type { %struct.TValue }

@.str = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaS_eqlngstr(%struct.TString*, %struct.TString*) #0 {
  %3 = alloca %struct.TString*, align 8
  %4 = alloca %struct.TString*, align 8
  %5 = alloca i64, align 8
  store %struct.TString* %0, %struct.TString** %3, align 8
  store %struct.TString* %1, %struct.TString** %4, align 8
  %6 = load %struct.TString*, %struct.TString** %3, align 8
  %7 = getelementptr inbounds %struct.TString, %struct.TString* %6, i32 0, i32 6
  %8 = bitcast %union.anon* %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.TString*, %struct.TString** %3, align 8
  %11 = load %struct.TString*, %struct.TString** %4, align 8
  %12 = icmp eq %struct.TString* %10, %11
  br i1 %12, label %32, label %13

; <label>:13:                                     ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.TString*, %struct.TString** %4, align 8
  %16 = getelementptr inbounds %struct.TString, %struct.TString* %15, i32 0, i32 6
  %17 = bitcast %union.anon* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %14, %18
  br i1 %19, label %20, label %30

; <label>:20:                                     ; preds = %13
  %21 = load %struct.TString*, %struct.TString** %3, align 8
  %22 = bitcast %struct.TString* %21 to i8*
  %23 = getelementptr inbounds i8, i8* %22, i64 24
  %24 = load %struct.TString*, %struct.TString** %4, align 8
  %25 = bitcast %struct.TString* %24 to i8*
  %26 = getelementptr inbounds i8, i8* %25, i64 24
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @memcmp(i8* %23, i8* %26, i64 %27) #5
  %29 = icmp eq i32 %28, 0
  br label %30

; <label>:30:                                     ; preds = %20, %13
  %31 = phi i1 [ false, %13 ], [ %29, %20 ]
  br label %32

; <label>:32:                                     ; preds = %30, %2
  %33 = phi i1 [ true, %2 ], [ %31, %30 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaS_hash(i8*, i64, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i64, i64* %5, align 8
  %11 = trunc i64 %10 to i32
  %12 = xor i32 %9, %11
  store i32 %12, i32* %7, align 4
  %13 = load i64, i64* %5, align 8
  %14 = lshr i64 %13, 5
  %15 = add i64 %14, 1
  store i64 %15, i64* %8, align 8
  br label %16

; <label>:16:                                     ; preds = %35, %3
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %39

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %21, 5
  %23 = load i32, i32* %7, align 4
  %24 = lshr i32 %23, 2
  %25 = add i32 %22, %24
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = sub i64 %27, 1
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = add i32 %25, %31
  %33 = load i32, i32* %7, align 4
  %34 = xor i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

; <label>:35:                                     ; preds = %20
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %5, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %5, align 8
  br label %16

; <label>:39:                                     ; preds = %16
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaS_hashlongstr(%struct.TString*) #0 {
  %2 = alloca %struct.TString*, align 8
  store %struct.TString* %0, %struct.TString** %2, align 8
  %3 = load %struct.TString*, %struct.TString** %2, align 8
  %4 = getelementptr inbounds %struct.TString, %struct.TString* %3, i32 0, i32 3
  %5 = load i8, i8* %4, align 2
  %6 = zext i8 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

; <label>:8:                                      ; preds = %1
  %9 = load %struct.TString*, %struct.TString** %2, align 8
  %10 = bitcast %struct.TString* %9 to i8*
  %11 = getelementptr inbounds i8, i8* %10, i64 24
  %12 = load %struct.TString*, %struct.TString** %2, align 8
  %13 = getelementptr inbounds %struct.TString, %struct.TString* %12, i32 0, i32 6
  %14 = bitcast %union.anon* %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TString*, %struct.TString** %2, align 8
  %17 = getelementptr inbounds %struct.TString, %struct.TString* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @luaS_hash(i8* %11, i64 %15, i32 %18)
  %20 = load %struct.TString*, %struct.TString** %2, align 8
  %21 = getelementptr inbounds %struct.TString, %struct.TString* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TString*, %struct.TString** %2, align 8
  %23 = getelementptr inbounds %struct.TString, %struct.TString* %22, i32 0, i32 3
  store i8 1, i8* %23, align 2
  br label %24

; <label>:24:                                     ; preds = %8, %1
  %25 = load %struct.TString*, %struct.TString** %2, align 8
  %26 = getelementptr inbounds %struct.TString, %struct.TString* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaS_resize(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stringtable*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TString**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 7
  %10 = load %struct.global_State*, %struct.global_State** %9, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 6
  store %struct.stringtable* %11, %struct.stringtable** %5, align 8
  %12 = load %struct.stringtable*, %struct.stringtable** %5, align 8
  %13 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %24

; <label>:18:                                     ; preds = %2
  %19 = load %struct.stringtable*, %struct.stringtable** %5, align 8
  %20 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %19, i32 0, i32 0
  %21 = load %struct.TString**, %struct.TString*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  call void @tablerehash(%struct.TString** %21, i32 %22, i32 %23)
  br label %24

; <label>:24:                                     ; preds = %18, %2
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = load %struct.stringtable*, %struct.stringtable** %5, align 8
  %27 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %26, i32 0, i32 0
  %28 = load %struct.TString**, %struct.TString*** %27, align 8
  %29 = bitcast %struct.TString** %28 to i8*
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = call i8* @luaM_realloc_(%struct.lua_State* %25, i8* %29, i64 %32, i64 %35)
  %37 = bitcast i8* %36 to %struct.TString**
  store %struct.TString** %37, %struct.TString*** %7, align 8
  %38 = load %struct.TString**, %struct.TString*** %7, align 8
  %39 = icmp eq %struct.TString** %38, null
  %40 = zext i1 %39 to i32
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

; <label>:45:                                     ; preds = %24
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %55

; <label>:49:                                     ; preds = %45
  %50 = load %struct.stringtable*, %struct.stringtable** %5, align 8
  %51 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %50, i32 0, i32 0
  %52 = load %struct.TString**, %struct.TString*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %6, align 4
  call void @tablerehash(%struct.TString** %52, i32 %53, i32 %54)
  br label %55

; <label>:55:                                     ; preds = %49, %45
  br label %71

; <label>:56:                                     ; preds = %24
  %57 = load %struct.TString**, %struct.TString*** %7, align 8
  %58 = load %struct.stringtable*, %struct.stringtable** %5, align 8
  %59 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %58, i32 0, i32 0
  store %struct.TString** %57, %struct.TString*** %59, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.stringtable*, %struct.stringtable** %5, align 8
  %62 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %70

; <label>:66:                                     ; preds = %56
  %67 = load %struct.TString**, %struct.TString*** %7, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %4, align 4
  call void @tablerehash(%struct.TString** %67, i32 %68, i32 %69)
  br label %70

; <label>:70:                                     ; preds = %66, %56
  br label %71

; <label>:71:                                     ; preds = %70, %55
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tablerehash(%struct.TString**, i32, i32) #0 {
  %4 = alloca %struct.TString**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TString*, align 8
  %9 = alloca %struct.TString*, align 8
  %10 = alloca i32, align 4
  store %struct.TString** %0, %struct.TString*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  br label %12

; <label>:12:                                     ; preds = %21, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %24

; <label>:16:                                     ; preds = %12
  %17 = load %struct.TString**, %struct.TString*** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TString*, %struct.TString** %17, i64 %19
  store %struct.TString* null, %struct.TString** %20, align 8
  br label %21

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %12

; <label>:24:                                     ; preds = %12
  store i32 0, i32* %7, align 4
  br label %25

; <label>:25:                                     ; preds = %68, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %71

; <label>:29:                                     ; preds = %25
  %30 = load %struct.TString**, %struct.TString*** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TString*, %struct.TString** %30, i64 %32
  %34 = load %struct.TString*, %struct.TString** %33, align 8
  store %struct.TString* %34, %struct.TString** %8, align 8
  %35 = load %struct.TString**, %struct.TString*** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TString*, %struct.TString** %35, i64 %37
  store %struct.TString* null, %struct.TString** %38, align 8
  br label %39

; <label>:39:                                     ; preds = %42, %29
  %40 = load %struct.TString*, %struct.TString** %8, align 8
  %41 = icmp ne %struct.TString* %40, null
  br i1 %41, label %42, label %67

; <label>:42:                                     ; preds = %39
  %43 = load %struct.TString*, %struct.TString** %8, align 8
  %44 = getelementptr inbounds %struct.TString, %struct.TString* %43, i32 0, i32 6
  %45 = bitcast %union.anon* %44 to %struct.TString**
  %46 = load %struct.TString*, %struct.TString** %45, align 8
  store %struct.TString* %46, %struct.TString** %9, align 8
  %47 = load %struct.TString*, %struct.TString** %8, align 8
  %48 = getelementptr inbounds %struct.TString, %struct.TString* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %49, %51
  store i32 %52, i32* %10, align 4
  %53 = load %struct.TString**, %struct.TString*** %4, align 8
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TString*, %struct.TString** %53, i64 %55
  %57 = load %struct.TString*, %struct.TString** %56, align 8
  %58 = load %struct.TString*, %struct.TString** %8, align 8
  %59 = getelementptr inbounds %struct.TString, %struct.TString* %58, i32 0, i32 6
  %60 = bitcast %union.anon* %59 to %struct.TString**
  store %struct.TString* %57, %struct.TString** %60, align 8
  %61 = load %struct.TString*, %struct.TString** %8, align 8
  %62 = load %struct.TString**, %struct.TString*** %4, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TString*, %struct.TString** %62, i64 %64
  store %struct.TString* %61, %struct.TString** %65, align 8
  %66 = load %struct.TString*, %struct.TString** %9, align 8
  store %struct.TString* %66, %struct.TString** %8, align 8
  br label %39

; <label>:67:                                     ; preds = %39
  br label %68

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %25

; <label>:71:                                     ; preds = %25
  ret void
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaS_clearcache(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %44, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 53
  br i1 %7, label %8, label %47

; <label>:8:                                      ; preds = %5
  store i32 0, i32* %4, align 4
  br label %9

; <label>:9:                                      ; preds = %40, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %43

; <label>:12:                                     ; preds = %9
  %13 = load %struct.global_State*, %struct.global_State** %2, align 8
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i32 0, i32 42
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [53 x [2 x %struct.TString*]], [53 x [2 x %struct.TString*]]* %14, i64 0, i64 %16
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [2 x %struct.TString*], [2 x %struct.TString*]* %17, i64 0, i64 %19
  %21 = load %struct.TString*, %struct.TString** %20, align 8
  %22 = getelementptr inbounds %struct.TString, %struct.TString* %21, i32 0, i32 2
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

; <label>:27:                                     ; preds = %12
  %28 = load %struct.global_State*, %struct.global_State** %2, align 8
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i32 0, i32 39
  %30 = load %struct.TString*, %struct.TString** %29, align 8
  %31 = load %struct.global_State*, %struct.global_State** %2, align 8
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i32 0, i32 42
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [53 x [2 x %struct.TString*]], [53 x [2 x %struct.TString*]]* %32, i64 0, i64 %34
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x %struct.TString*], [2 x %struct.TString*]* %35, i64 0, i64 %37
  store %struct.TString* %30, %struct.TString** %38, align 8
  br label %39

; <label>:39:                                     ; preds = %27, %12
  br label %40

; <label>:40:                                     ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %9

; <label>:43:                                     ; preds = %9
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %5

; <label>:47:                                     ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaS_init(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.stringtable*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 7
  %9 = load %struct.global_State*, %struct.global_State** %8, align 8
  store %struct.global_State* %9, %struct.global_State** %3, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 7
  %12 = load %struct.global_State*, %struct.global_State** %11, align 8
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 6
  store %struct.stringtable* %13, %struct.stringtable** %6, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = call i8* @luaM_malloc_(%struct.lua_State* %14, i64 1024, i32 0)
  %16 = bitcast i8* %15 to %struct.TString**
  %17 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %18 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %17, i32 0, i32 0
  store %struct.TString** %16, %struct.TString*** %18, align 8
  %19 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %20 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %19, i32 0, i32 0
  %21 = load %struct.TString**, %struct.TString*** %20, align 8
  call void @tablerehash(%struct.TString** %21, i32 0, i32 128)
  %22 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %23 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %22, i32 0, i32 2
  store i32 128, i32* %23, align 4
  %24 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %25 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i64 17)
  %26 = load %struct.global_State*, %struct.global_State** %3, align 8
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 39
  store %struct.TString* %25, %struct.TString** %27, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %29 = load %struct.global_State*, %struct.global_State** %3, align 8
  %30 = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 39
  %31 = load %struct.TString*, %struct.TString** %30, align 8
  %32 = bitcast %struct.TString* %31 to %union.GCUnion*
  %33 = bitcast %union.GCUnion* %32 to %struct.GCObject*
  call void @luaC_fix(%struct.lua_State* %28, %struct.GCObject* %33)
  store i32 0, i32* %4, align 4
  br label %34

; <label>:34:                                     ; preds = %57, %1
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 53
  br i1 %36, label %37, label %60

; <label>:37:                                     ; preds = %34
  store i32 0, i32* %5, align 4
  br label %38

; <label>:38:                                     ; preds = %53, %37
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %56

; <label>:41:                                     ; preds = %38
  %42 = load %struct.global_State*, %struct.global_State** %3, align 8
  %43 = getelementptr inbounds %struct.global_State, %struct.global_State* %42, i32 0, i32 39
  %44 = load %struct.TString*, %struct.TString** %43, align 8
  %45 = load %struct.global_State*, %struct.global_State** %3, align 8
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i32 0, i32 42
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [53 x [2 x %struct.TString*]], [53 x [2 x %struct.TString*]]* %46, i64 0, i64 %48
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x %struct.TString*], [2 x %struct.TString*]* %49, i64 0, i64 %51
  store %struct.TString* %44, %struct.TString** %52, align 8
  br label %53

; <label>:53:                                     ; preds = %41
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %38

; <label>:56:                                     ; preds = %38
  br label %57

; <label>:57:                                     ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %34

; <label>:60:                                     ; preds = %34
  ret void
}

declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #0 {
  %4 = alloca %struct.TString*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ule i64 %9, 40
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %3
  %12 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call %struct.TString* @internshrstr(%struct.lua_State* %12, i8* %13, i64 %14)
  store %struct.TString* %15, %struct.TString** %4, align 8
  br label %37

; <label>:16:                                     ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = icmp uge i64 %17, 9223372036854775783
  %19 = zext i1 %18 to i32
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %16
  %25 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaM_toobig(%struct.lua_State* %25) #6
  unreachable

; <label>:26:                                     ; preds = %16
  %27 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %27, i64 %28)
  store %struct.TString* %29, %struct.TString** %8, align 8
  %30 = load %struct.TString*, %struct.TString** %8, align 8
  %31 = bitcast %struct.TString* %30 to i8*
  %32 = getelementptr inbounds i8, i8* %31, i64 24
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = mul i64 %34, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 %35, i32 1, i1 false)
  %36 = load %struct.TString*, %struct.TString** %8, align 8
  store %struct.TString* %36, %struct.TString** %4, align 8
  br label %37

; <label>:37:                                     ; preds = %26, %11
  %38 = load %struct.TString*, %struct.TString** %4, align 8
  ret %struct.TString* %38
}

declare hidden void @luaC_fix(%struct.lua_State*, %struct.GCObject*) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.TString* @luaS_createlngstrobj(%struct.lua_State*, i64) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 7
  %10 = load %struct.global_State*, %struct.global_State** %9, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.TString* @createstrobj(%struct.lua_State* %6, i64 %7, i32 36, i32 %12)
  store %struct.TString* %13, %struct.TString** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.TString*, %struct.TString** %5, align 8
  %16 = getelementptr inbounds %struct.TString, %struct.TString* %15, i32 0, i32 6
  %17 = bitcast %union.anon* %16 to i64*
  store i64 %14, i64* %17, align 8
  %18 = load %struct.TString*, %struct.TString** %5, align 8
  ret %struct.TString* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TString* @createstrobj(%struct.lua_State*, i64, i32, i32) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TString*, align 8
  %10 = alloca %struct.GCObject*, align 8
  %11 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  %13 = add i64 %12, 1
  %14 = mul i64 %13, 1
  %15 = add i64 24, %14
  store i64 %15, i64* %11, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i64, i64* %11, align 8
  %19 = call %struct.GCObject* @luaC_newobj(%struct.lua_State* %16, i32 %17, i64 %18)
  store %struct.GCObject* %19, %struct.GCObject** %10, align 8
  %20 = load %struct.GCObject*, %struct.GCObject** %10, align 8
  %21 = bitcast %struct.GCObject* %20 to %union.GCUnion*
  %22 = bitcast %union.GCUnion* %21 to %struct.TString*
  store %struct.TString* %22, %struct.TString** %9, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.TString*, %struct.TString** %9, align 8
  %25 = getelementptr inbounds %struct.TString, %struct.TString* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TString*, %struct.TString** %9, align 8
  %27 = getelementptr inbounds %struct.TString, %struct.TString* %26, i32 0, i32 3
  store i8 0, i8* %27, align 2
  %28 = load %struct.TString*, %struct.TString** %9, align 8
  %29 = bitcast %struct.TString* %28 to i8*
  %30 = getelementptr inbounds i8, i8* %29, i64 24
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8 0, i8* %32, align 1
  %33 = load %struct.TString*, %struct.TString** %9, align 8
  ret %struct.TString* %33
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaS_remove(%struct.lua_State*, %struct.TString*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.TString*, align 8
  %5 = alloca %struct.stringtable*, align 8
  %6 = alloca %struct.TString**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.TString* %1, %struct.TString** %4, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 7
  %9 = load %struct.global_State*, %struct.global_State** %8, align 8
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i32 0, i32 6
  store %struct.stringtable* %10, %struct.stringtable** %5, align 8
  %11 = load %struct.stringtable*, %struct.stringtable** %5, align 8
  %12 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %11, i32 0, i32 0
  %13 = load %struct.TString**, %struct.TString*** %12, align 8
  %14 = load %struct.TString*, %struct.TString** %4, align 8
  %15 = getelementptr inbounds %struct.TString, %struct.TString* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.stringtable*, %struct.stringtable** %5, align 8
  %18 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %16, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TString*, %struct.TString** %13, i64 %22
  store %struct.TString** %23, %struct.TString*** %6, align 8
  br label %24

; <label>:24:                                     ; preds = %29, %2
  %25 = load %struct.TString**, %struct.TString*** %6, align 8
  %26 = load %struct.TString*, %struct.TString** %25, align 8
  %27 = load %struct.TString*, %struct.TString** %4, align 8
  %28 = icmp ne %struct.TString* %26, %27
  br i1 %28, label %29, label %34

; <label>:29:                                     ; preds = %24
  %30 = load %struct.TString**, %struct.TString*** %6, align 8
  %31 = load %struct.TString*, %struct.TString** %30, align 8
  %32 = getelementptr inbounds %struct.TString, %struct.TString* %31, i32 0, i32 6
  %33 = bitcast %union.anon* %32 to %struct.TString**
  store %struct.TString** %33, %struct.TString*** %6, align 8
  br label %24

; <label>:34:                                     ; preds = %24
  %35 = load %struct.TString**, %struct.TString*** %6, align 8
  %36 = load %struct.TString*, %struct.TString** %35, align 8
  %37 = getelementptr inbounds %struct.TString, %struct.TString* %36, i32 0, i32 6
  %38 = bitcast %union.anon* %37 to %struct.TString**
  %39 = load %struct.TString*, %struct.TString** %38, align 8
  %40 = load %struct.TString**, %struct.TString*** %6, align 8
  store %struct.TString* %39, %struct.TString** %40, align 8
  %41 = load %struct.stringtable*, %struct.stringtable** %5, align 8
  %42 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TString* @internshrstr(%struct.lua_State*, i8*, i64) #0 {
  %4 = alloca %struct.TString*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TString*, align 8
  %9 = alloca %struct.global_State*, align 8
  %10 = alloca %struct.stringtable*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TString**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 7
  %15 = load %struct.global_State*, %struct.global_State** %14, align 8
  store %struct.global_State* %15, %struct.global_State** %9, align 8
  %16 = load %struct.global_State*, %struct.global_State** %9, align 8
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 6
  store %struct.stringtable* %17, %struct.stringtable** %10, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.global_State*, %struct.global_State** %9, align 8
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @luaS_hash(i8* %18, i64 %19, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.stringtable*, %struct.stringtable** %10, align 8
  %25 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %24, i32 0, i32 0
  %26 = load %struct.TString**, %struct.TString*** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.stringtable*, %struct.stringtable** %10, align 8
  %29 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %27, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TString*, %struct.TString** %26, i64 %33
  store %struct.TString** %34, %struct.TString*** %12, align 8
  %35 = load %struct.TString**, %struct.TString*** %12, align 8
  %36 = load %struct.TString*, %struct.TString** %35, align 8
  store %struct.TString* %36, %struct.TString** %8, align 8
  br label %37

; <label>:37:                                     ; preds = %78, %3
  %38 = load %struct.TString*, %struct.TString** %8, align 8
  %39 = icmp ne %struct.TString* %38, null
  br i1 %39, label %40, label %83

; <label>:40:                                     ; preds = %37
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.TString*, %struct.TString** %8, align 8
  %43 = getelementptr inbounds %struct.TString, %struct.TString* %42, i32 0, i32 4
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i64
  %46 = icmp eq i64 %41, %45
  br i1 %46, label %47, label %77

; <label>:47:                                     ; preds = %40
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.TString*, %struct.TString** %8, align 8
  %50 = bitcast %struct.TString* %49 to i8*
  %51 = getelementptr inbounds i8, i8* %50, i64 24
  %52 = load i64, i64* %7, align 8
  %53 = mul i64 %52, 1
  %54 = call i32 @memcmp(i8* %48, i8* %51, i64 %53) #5
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %77

; <label>:56:                                     ; preds = %47
  %57 = load %struct.TString*, %struct.TString** %8, align 8
  %58 = getelementptr inbounds %struct.TString, %struct.TString* %57, i32 0, i32 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load %struct.global_State*, %struct.global_State** %9, align 8
  %62 = getelementptr inbounds %struct.global_State, %struct.global_State* %61, i32 0, i32 10
  %63 = load i8, i8* %62, align 4
  %64 = zext i8 %63 to i32
  %65 = xor i32 %64, 24
  %66 = and i32 %60, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

; <label>:68:                                     ; preds = %56
  %69 = load %struct.TString*, %struct.TString** %8, align 8
  %70 = getelementptr inbounds %struct.TString, %struct.TString* %69, i32 0, i32 2
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = xor i32 %72, 24
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %70, align 1
  br label %75

; <label>:75:                                     ; preds = %68, %56
  %76 = load %struct.TString*, %struct.TString** %8, align 8
  store %struct.TString* %76, %struct.TString** %4, align 8
  br label %132

; <label>:77:                                     ; preds = %47, %40
  br label %78

; <label>:78:                                     ; preds = %77
  %79 = load %struct.TString*, %struct.TString** %8, align 8
  %80 = getelementptr inbounds %struct.TString, %struct.TString* %79, i32 0, i32 6
  %81 = bitcast %union.anon* %80 to %struct.TString**
  %82 = load %struct.TString*, %struct.TString** %81, align 8
  store %struct.TString* %82, %struct.TString** %8, align 8
  br label %37

; <label>:83:                                     ; preds = %37
  %84 = load %struct.stringtable*, %struct.stringtable** %10, align 8
  %85 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.stringtable*, %struct.stringtable** %10, align 8
  %88 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %86, %89
  br i1 %90, label %91, label %105

; <label>:91:                                     ; preds = %83
  %92 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %93 = load %struct.stringtable*, %struct.stringtable** %10, align 8
  call void @growstrtab(%struct.lua_State* %92, %struct.stringtable* %93)
  %94 = load %struct.stringtable*, %struct.stringtable** %10, align 8
  %95 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %94, i32 0, i32 0
  %96 = load %struct.TString**, %struct.TString*** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.stringtable*, %struct.stringtable** %10, align 8
  %99 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 1
  %102 = and i32 %97, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TString*, %struct.TString** %96, i64 %103
  store %struct.TString** %104, %struct.TString*** %12, align 8
  br label %105

; <label>:105:                                    ; preds = %91, %83
  %106 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call %struct.TString* @createstrobj(%struct.lua_State* %106, i64 %107, i32 20, i32 %108)
  store %struct.TString* %109, %struct.TString** %8, align 8
  %110 = load %struct.TString*, %struct.TString** %8, align 8
  %111 = bitcast %struct.TString* %110 to i8*
  %112 = getelementptr inbounds i8, i8* %111, i64 24
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = mul i64 %114, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* %113, i64 %115, i32 1, i1 false)
  %116 = load i64, i64* %7, align 8
  %117 = trunc i64 %116 to i8
  %118 = load %struct.TString*, %struct.TString** %8, align 8
  %119 = getelementptr inbounds %struct.TString, %struct.TString* %118, i32 0, i32 4
  store i8 %117, i8* %119, align 1
  %120 = load %struct.TString**, %struct.TString*** %12, align 8
  %121 = load %struct.TString*, %struct.TString** %120, align 8
  %122 = load %struct.TString*, %struct.TString** %8, align 8
  %123 = getelementptr inbounds %struct.TString, %struct.TString* %122, i32 0, i32 6
  %124 = bitcast %union.anon* %123 to %struct.TString**
  store %struct.TString* %121, %struct.TString** %124, align 8
  %125 = load %struct.TString*, %struct.TString** %8, align 8
  %126 = load %struct.TString**, %struct.TString*** %12, align 8
  store %struct.TString* %125, %struct.TString** %126, align 8
  %127 = load %struct.stringtable*, %struct.stringtable** %10, align 8
  %128 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = load %struct.TString*, %struct.TString** %8, align 8
  store %struct.TString* %131, %struct.TString** %4, align 8
  br label %132

; <label>:132:                                    ; preds = %105, %75
  %133 = load %struct.TString*, %struct.TString** %4, align 8
  ret %struct.TString* %133
}

; Function Attrs: noreturn
declare hidden void @luaM_toobig(%struct.lua_State*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.TString*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TString**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = and i64 %10, 4294967295
  %12 = trunc i64 %11 to i32
  %13 = urem i32 %12, 53
  store i32 %13, i32* %6, align 4
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 7
  %16 = load %struct.global_State*, %struct.global_State** %15, align 8
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 42
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [53 x [2 x %struct.TString*]], [53 x [2 x %struct.TString*]]* %17, i64 0, i64 %19
  %21 = getelementptr inbounds [2 x %struct.TString*], [2 x %struct.TString*]* %20, i32 0, i32 0
  store %struct.TString** %21, %struct.TString*** %8, align 8
  store i32 0, i32* %7, align 4
  br label %22

; <label>:22:                                     ; preds = %43, %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %46

; <label>:25:                                     ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.TString**, %struct.TString*** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TString*, %struct.TString** %27, i64 %29
  %31 = load %struct.TString*, %struct.TString** %30, align 8
  %32 = bitcast %struct.TString* %31 to i8*
  %33 = getelementptr inbounds i8, i8* %32, i64 24
  %34 = call i32 @strcmp(i8* %26, i8* %33) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

; <label>:36:                                     ; preds = %25
  %37 = load %struct.TString**, %struct.TString*** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TString*, %struct.TString** %37, i64 %39
  %41 = load %struct.TString*, %struct.TString** %40, align 8
  store %struct.TString* %41, %struct.TString** %3, align 8
  br label %75

; <label>:42:                                     ; preds = %25
  br label %43

; <label>:43:                                     ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %22

; <label>:46:                                     ; preds = %22
  store i32 1, i32* %7, align 4
  br label %47

; <label>:47:                                     ; preds = %61, %46
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %64

; <label>:50:                                     ; preds = %47
  %51 = load %struct.TString**, %struct.TString*** %8, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TString*, %struct.TString** %51, i64 %54
  %56 = load %struct.TString*, %struct.TString** %55, align 8
  %57 = load %struct.TString**, %struct.TString*** %8, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TString*, %struct.TString** %57, i64 %59
  store %struct.TString* %56, %struct.TString** %60, align 8
  br label %61

; <label>:61:                                     ; preds = %50
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %7, align 4
  br label %47

; <label>:64:                                     ; preds = %47
  %65 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i64 @strlen(i8* %67) #5
  %69 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %65, i8* %66, i64 %68)
  %70 = load %struct.TString**, %struct.TString*** %8, align 8
  %71 = getelementptr inbounds %struct.TString*, %struct.TString** %70, i64 0
  store %struct.TString* %69, %struct.TString** %71, align 8
  %72 = load %struct.TString**, %struct.TString*** %8, align 8
  %73 = getelementptr inbounds %struct.TString*, %struct.TString** %72, i64 0
  %74 = load %struct.TString*, %struct.TString** %73, align 8
  store %struct.TString* %74, %struct.TString** %3, align 8
  br label %75

; <label>:75:                                     ; preds = %64, %36
  %76 = load %struct.TString*, %struct.TString** %3, align 8
  ret %struct.TString* %76
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.Udata* @luaS_newudata(%struct.lua_State*, i64, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Udata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.GCObject*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %3
  br label %19

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 16, %16
  %18 = add i64 40, %17
  br label %19

; <label>:19:                                     ; preds = %14, %13
  %20 = phi i64 [ 32, %13 ], [ %18, %14 ]
  %21 = sub i64 9223372036854775807, %20
  %22 = icmp ugt i64 %10, %21
  %23 = zext i1 %22 to i32
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %19
  %29 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaM_toobig(%struct.lua_State* %29) #6
  unreachable

; <label>:30:                                     ; preds = %19
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %30
  br label %40

; <label>:35:                                     ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 16, %37
  %39 = add i64 40, %38
  br label %40

; <label>:40:                                     ; preds = %35, %34
  %41 = phi i64 [ 32, %34 ], [ %39, %35 ]
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %41, %42
  %44 = call %struct.GCObject* @luaC_newobj(%struct.lua_State* %31, i32 7, i64 %43)
  store %struct.GCObject* %44, %struct.GCObject** %9, align 8
  %45 = load %struct.GCObject*, %struct.GCObject** %9, align 8
  %46 = bitcast %struct.GCObject* %45 to %union.GCUnion*
  %47 = bitcast %union.GCUnion* %46 to %struct.Udata*
  store %struct.Udata* %47, %struct.Udata** %7, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.Udata*, %struct.Udata** %7, align 8
  %50 = getelementptr inbounds %struct.Udata, %struct.Udata* %49, i32 0, i32 4
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = trunc i32 %51 to i16
  %53 = load %struct.Udata*, %struct.Udata** %7, align 8
  %54 = getelementptr inbounds %struct.Udata, %struct.Udata* %53, i32 0, i32 3
  store i16 %52, i16* %54, align 2
  %55 = load %struct.Udata*, %struct.Udata** %7, align 8
  %56 = getelementptr inbounds %struct.Udata, %struct.Udata* %55, i32 0, i32 5
  store %struct.Table* null, %struct.Table** %56, align 8
  store i32 0, i32* %8, align 4
  br label %57

; <label>:57:                                     ; preds = %69, %40
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %72

; <label>:61:                                     ; preds = %57
  %62 = load %struct.Udata*, %struct.Udata** %7, align 8
  %63 = getelementptr inbounds %struct.Udata, %struct.Udata* %62, i32 0, i32 7
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [1 x %union.UValue], [1 x %union.UValue]* %63, i64 0, i64 %65
  %67 = bitcast %union.UValue* %66 to %struct.TValue*
  %68 = getelementptr inbounds %struct.TValue, %struct.TValue* %67, i32 0, i32 1
  store i8 0, i8* %68, align 8
  br label %69

; <label>:69:                                     ; preds = %61
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %57

; <label>:72:                                     ; preds = %57
  %73 = load %struct.Udata*, %struct.Udata** %7, align 8
  ret %struct.Udata* %73
}

declare hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @growstrtab(%struct.lua_State*, %struct.stringtable*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.stringtable*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.stringtable* %1, %struct.stringtable** %4, align 8
  %5 = load %struct.stringtable*, %struct.stringtable** %4, align 8
  %6 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 2147483647
  %9 = zext i1 %8 to i32
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

; <label>:14:                                     ; preds = %2
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_fullgc(%struct.lua_State* %15, i32 1)
  %16 = load %struct.stringtable*, %struct.stringtable** %4, align 8
  %17 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 2147483647
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %14
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaD_throw(%struct.lua_State* %21, i32 4) #6
  unreachable

; <label>:22:                                     ; preds = %14
  br label %23

; <label>:23:                                     ; preds = %22, %2
  %24 = load %struct.stringtable*, %struct.stringtable** %4, align 8
  %25 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %26, 1073741823
  br i1 %27, label %28, label %34

; <label>:28:                                     ; preds = %23
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %30 = load %struct.stringtable*, %struct.stringtable** %4, align 8
  %31 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 2
  call void @luaS_resize(%struct.lua_State* %29, i32 %33)
  br label %34

; <label>:34:                                     ; preds = %28, %23
  ret void
}

declare hidden void @luaC_fullgc(%struct.lua_State*, i32) #2

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
