; ModuleID = 'lstring.c'
source_filename = "lstring.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %struct.GCObject* }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i64 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
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

@.str = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8

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
  %5 = alloca i32, align 4
  %6 = alloca %struct.stringtable*, align 8
  %7 = alloca %struct.TString*, align 8
  %8 = alloca %struct.TString*, align 8
  %9 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 6
  %12 = load %struct.global_State*, %struct.global_State** %11, align 8
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 6
  store %struct.stringtable* %13, %struct.stringtable** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %16 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %55

; <label>:19:                                     ; preds = %2
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %22 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %21, i32 0, i32 0
  %23 = load %struct.TString**, %struct.TString*** %22, align 8
  %24 = bitcast %struct.TString** %23 to i8*
  %25 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %26 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = call i8* @luaM_realloc_(%struct.lua_State* %20, i8* %24, i64 %29, i64 %32)
  %34 = bitcast i8* %33 to %struct.TString**
  %35 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %36 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %35, i32 0, i32 0
  store %struct.TString** %34, %struct.TString*** %36, align 8
  %37 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %38 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %5, align 4
  br label %40

; <label>:40:                                     ; preds = %51, %19
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %54

; <label>:44:                                     ; preds = %40
  %45 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %46 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %45, i32 0, i32 0
  %47 = load %struct.TString**, %struct.TString*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TString*, %struct.TString** %47, i64 %49
  store %struct.TString* null, %struct.TString** %50, align 8
  br label %51

; <label>:51:                                     ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %40

; <label>:54:                                     ; preds = %40
  br label %55

; <label>:55:                                     ; preds = %54, %2
  store i32 0, i32* %5, align 4
  br label %56

; <label>:56:                                     ; preds = %109, %55
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %59 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %112

; <label>:62:                                     ; preds = %56
  %63 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %64 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %63, i32 0, i32 0
  %65 = load %struct.TString**, %struct.TString*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TString*, %struct.TString** %65, i64 %67
  %69 = load %struct.TString*, %struct.TString** %68, align 8
  store %struct.TString* %69, %struct.TString** %7, align 8
  %70 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %71 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %70, i32 0, i32 0
  %72 = load %struct.TString**, %struct.TString*** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TString*, %struct.TString** %72, i64 %74
  store %struct.TString* null, %struct.TString** %75, align 8
  br label %76

; <label>:76:                                     ; preds = %79, %62
  %77 = load %struct.TString*, %struct.TString** %7, align 8
  %78 = icmp ne %struct.TString* %77, null
  br i1 %78, label %79, label %108

; <label>:79:                                     ; preds = %76
  %80 = load %struct.TString*, %struct.TString** %7, align 8
  %81 = getelementptr inbounds %struct.TString, %struct.TString* %80, i32 0, i32 6
  %82 = bitcast %union.anon* %81 to %struct.TString**
  %83 = load %struct.TString*, %struct.TString** %82, align 8
  store %struct.TString* %83, %struct.TString** %8, align 8
  %84 = load %struct.TString*, %struct.TString** %7, align 8
  %85 = getelementptr inbounds %struct.TString, %struct.TString* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %4, align 4
  %88 = sub nsw i32 %87, 1
  %89 = and i32 %86, %88
  store i32 %89, i32* %9, align 4
  %90 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %91 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %90, i32 0, i32 0
  %92 = load %struct.TString**, %struct.TString*** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TString*, %struct.TString** %92, i64 %94
  %96 = load %struct.TString*, %struct.TString** %95, align 8
  %97 = load %struct.TString*, %struct.TString** %7, align 8
  %98 = getelementptr inbounds %struct.TString, %struct.TString* %97, i32 0, i32 6
  %99 = bitcast %union.anon* %98 to %struct.TString**
  store %struct.TString* %96, %struct.TString** %99, align 8
  %100 = load %struct.TString*, %struct.TString** %7, align 8
  %101 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %102 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %101, i32 0, i32 0
  %103 = load %struct.TString**, %struct.TString*** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TString*, %struct.TString** %103, i64 %105
  store %struct.TString* %100, %struct.TString** %106, align 8
  %107 = load %struct.TString*, %struct.TString** %8, align 8
  store %struct.TString* %107, %struct.TString** %7, align 8
  br label %76

; <label>:108:                                    ; preds = %76
  br label %109

; <label>:109:                                    ; preds = %108
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %56

; <label>:112:                                    ; preds = %56
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %115 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %136

; <label>:118:                                    ; preds = %112
  %119 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %120 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %121 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %120, i32 0, i32 0
  %122 = load %struct.TString**, %struct.TString*** %121, align 8
  %123 = bitcast %struct.TString** %122 to i8*
  %124 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %125 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 8
  %132 = call i8* @luaM_realloc_(%struct.lua_State* %119, i8* %123, i64 %128, i64 %131)
  %133 = bitcast i8* %132 to %struct.TString**
  %134 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %135 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %134, i32 0, i32 0
  store %struct.TString** %133, %struct.TString*** %135, align 8
  br label %136

; <label>:136:                                    ; preds = %118, %112
  %137 = load i32, i32* %4, align 4
  %138 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %139 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
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
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i32 0, i32 33
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
  %25 = and i32 %24, 3
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

; <label>:27:                                     ; preds = %12
  %28 = load %struct.global_State*, %struct.global_State** %2, align 8
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i32 0, i32 30
  %30 = load %struct.TString*, %struct.TString** %29, align 8
  %31 = load %struct.global_State*, %struct.global_State** %2, align 8
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i32 0, i32 33
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
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 6
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8
  store %struct.global_State* %8, %struct.global_State** %3, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaS_resize(%struct.lua_State* %9, i32 128)
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i64 17)
  %12 = load %struct.global_State*, %struct.global_State** %3, align 8
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 30
  store %struct.TString* %11, %struct.TString** %13, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = load %struct.global_State*, %struct.global_State** %3, align 8
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 30
  %17 = load %struct.TString*, %struct.TString** %16, align 8
  %18 = bitcast %struct.TString* %17 to %union.GCUnion*
  %19 = bitcast %union.GCUnion* %18 to %struct.GCObject*
  call void @luaC_fix(%struct.lua_State* %14, %struct.GCObject* %19)
  store i32 0, i32* %4, align 4
  br label %20

; <label>:20:                                     ; preds = %43, %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 53
  br i1 %22, label %23, label %46

; <label>:23:                                     ; preds = %20
  store i32 0, i32* %5, align 4
  br label %24

; <label>:24:                                     ; preds = %39, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %42

; <label>:27:                                     ; preds = %24
  %28 = load %struct.global_State*, %struct.global_State** %3, align 8
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i32 0, i32 30
  %30 = load %struct.TString*, %struct.TString** %29, align 8
  %31 = load %struct.global_State*, %struct.global_State** %3, align 8
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i32 0, i32 33
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [53 x [2 x %struct.TString*]], [53 x [2 x %struct.TString*]]* %32, i64 0, i64 %34
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x %struct.TString*], [2 x %struct.TString*]* %35, i64 0, i64 %37
  store %struct.TString* %30, %struct.TString** %38, align 8
  br label %39

; <label>:39:                                     ; preds = %27
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %24

; <label>:42:                                     ; preds = %24
  br label %43

; <label>:43:                                     ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %20

; <label>:46:                                     ; preds = %20
  ret void
}

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
  br label %32

; <label>:16:                                     ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = icmp uge i64 %17, 9223372036854775783
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %16
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaM_toobig(%struct.lua_State* %20) #6
  unreachable

; <label>:21:                                     ; preds = %16
  %22 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %22, i64 %23)
  store %struct.TString* %24, %struct.TString** %8, align 8
  %25 = load %struct.TString*, %struct.TString** %8, align 8
  %26 = bitcast %struct.TString* %25 to i8*
  %27 = getelementptr inbounds i8, i8* %26, i64 24
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = mul i64 %29, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 %30, i32 1, i1 false)
  %31 = load %struct.TString*, %struct.TString** %8, align 8
  store %struct.TString* %31, %struct.TString** %4, align 8
  br label %32

; <label>:32:                                     ; preds = %21, %11
  %33 = load %struct.TString*, %struct.TString** %4, align 8
  ret %struct.TString* %33
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
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 6
  %10 = load %struct.global_State*, %struct.global_State** %9, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.TString* @createstrobj(%struct.lua_State* %6, i64 %7, i32 20, i32 %12)
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
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 6
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
  %10 = alloca i32, align 4
  %11 = alloca %struct.TString**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 6
  %14 = load %struct.global_State*, %struct.global_State** %13, align 8
  store %struct.global_State* %14, %struct.global_State** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.global_State*, %struct.global_State** %9, align 8
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @luaS_hash(i8* %15, i64 %16, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.global_State*, %struct.global_State** %9, align 8
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %22, i32 0, i32 0
  %24 = load %struct.TString**, %struct.TString*** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.global_State*, %struct.global_State** %9, align 8
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  %31 = and i32 %25, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TString*, %struct.TString** %24, i64 %32
  store %struct.TString** %33, %struct.TString*** %11, align 8
  %34 = load %struct.TString**, %struct.TString*** %11, align 8
  %35 = load %struct.TString*, %struct.TString** %34, align 8
  store %struct.TString* %35, %struct.TString** %8, align 8
  br label %36

; <label>:36:                                     ; preds = %78, %3
  %37 = load %struct.TString*, %struct.TString** %8, align 8
  %38 = icmp ne %struct.TString* %37, null
  br i1 %38, label %39, label %83

; <label>:39:                                     ; preds = %36
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.TString*, %struct.TString** %8, align 8
  %42 = getelementptr inbounds %struct.TString, %struct.TString* %41, i32 0, i32 4
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i64
  %45 = icmp eq i64 %40, %44
  br i1 %45, label %46, label %77

; <label>:46:                                     ; preds = %39
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.TString*, %struct.TString** %8, align 8
  %49 = bitcast %struct.TString* %48 to i8*
  %50 = getelementptr inbounds i8, i8* %49, i64 24
  %51 = load i64, i64* %7, align 8
  %52 = mul i64 %51, 1
  %53 = call i32 @memcmp(i8* %47, i8* %50, i64 %52) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %77

; <label>:55:                                     ; preds = %46
  %56 = load %struct.TString*, %struct.TString** %8, align 8
  %57 = getelementptr inbounds %struct.TString, %struct.TString* %56, i32 0, i32 2
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = xor i32 %59, 3
  %61 = load %struct.global_State*, %struct.global_State** %9, align 8
  %62 = getelementptr inbounds %struct.global_State, %struct.global_State* %61, i32 0, i32 9
  %63 = load i8, i8* %62, align 4
  %64 = zext i8 %63 to i32
  %65 = xor i32 %64, 3
  %66 = and i32 %60, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

; <label>:68:                                     ; preds = %55
  %69 = load %struct.TString*, %struct.TString** %8, align 8
  %70 = getelementptr inbounds %struct.TString, %struct.TString* %69, i32 0, i32 2
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = xor i32 %72, 3
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %70, align 1
  br label %75

; <label>:75:                                     ; preds = %68, %55
  %76 = load %struct.TString*, %struct.TString** %8, align 8
  store %struct.TString* %76, %struct.TString** %4, align 8
  br label %147

; <label>:77:                                     ; preds = %46, %39
  br label %78

; <label>:78:                                     ; preds = %77
  %79 = load %struct.TString*, %struct.TString** %8, align 8
  %80 = getelementptr inbounds %struct.TString, %struct.TString* %79, i32 0, i32 6
  %81 = bitcast %union.anon* %80 to %struct.TString**
  %82 = load %struct.TString*, %struct.TString** %81, align 8
  store %struct.TString* %82, %struct.TString** %8, align 8
  br label %36

; <label>:83:                                     ; preds = %36
  %84 = load %struct.global_State*, %struct.global_State** %9, align 8
  %85 = getelementptr inbounds %struct.global_State, %struct.global_State* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.global_State*, %struct.global_State** %9, align 8
  %89 = getelementptr inbounds %struct.global_State, %struct.global_State* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp sge i32 %87, %91
  br i1 %92, label %93, label %119

; <label>:93:                                     ; preds = %83
  %94 = load %struct.global_State*, %struct.global_State** %9, align 8
  %95 = getelementptr inbounds %struct.global_State, %struct.global_State* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = icmp sle i32 %97, 1073741823
  br i1 %98, label %99, label %119

; <label>:99:                                     ; preds = %93
  %100 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %101 = load %struct.global_State*, %struct.global_State** %9, align 8
  %102 = getelementptr inbounds %struct.global_State, %struct.global_State* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %104, 2
  call void @luaS_resize(%struct.lua_State* %100, i32 %105)
  %106 = load %struct.global_State*, %struct.global_State** %9, align 8
  %107 = getelementptr inbounds %struct.global_State, %struct.global_State* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %107, i32 0, i32 0
  %109 = load %struct.TString**, %struct.TString*** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.global_State*, %struct.global_State** %9, align 8
  %112 = getelementptr inbounds %struct.global_State, %struct.global_State* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 1
  %116 = and i32 %110, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TString*, %struct.TString** %109, i64 %117
  store %struct.TString** %118, %struct.TString*** %11, align 8
  br label %119

; <label>:119:                                    ; preds = %99, %93, %83
  %120 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call %struct.TString* @createstrobj(%struct.lua_State* %120, i64 %121, i32 4, i32 %122)
  store %struct.TString* %123, %struct.TString** %8, align 8
  %124 = load %struct.TString*, %struct.TString** %8, align 8
  %125 = bitcast %struct.TString* %124 to i8*
  %126 = getelementptr inbounds i8, i8* %125, i64 24
  %127 = load i8*, i8** %6, align 8
  %128 = load i64, i64* %7, align 8
  %129 = mul i64 %128, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %127, i64 %129, i32 1, i1 false)
  %130 = load i64, i64* %7, align 8
  %131 = trunc i64 %130 to i8
  %132 = load %struct.TString*, %struct.TString** %8, align 8
  %133 = getelementptr inbounds %struct.TString, %struct.TString* %132, i32 0, i32 4
  store i8 %131, i8* %133, align 1
  %134 = load %struct.TString**, %struct.TString*** %11, align 8
  %135 = load %struct.TString*, %struct.TString** %134, align 8
  %136 = load %struct.TString*, %struct.TString** %8, align 8
  %137 = getelementptr inbounds %struct.TString, %struct.TString* %136, i32 0, i32 6
  %138 = bitcast %union.anon* %137 to %struct.TString**
  store %struct.TString* %135, %struct.TString** %138, align 8
  %139 = load %struct.TString*, %struct.TString** %8, align 8
  %140 = load %struct.TString**, %struct.TString*** %11, align 8
  store %struct.TString* %139, %struct.TString** %140, align 8
  %141 = load %struct.global_State*, %struct.global_State** %9, align 8
  %142 = getelementptr inbounds %struct.global_State, %struct.global_State* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  %146 = load %struct.TString*, %struct.TString** %8, align 8
  store %struct.TString* %146, %struct.TString** %4, align 8
  br label %147

; <label>:147:                                    ; preds = %119, %75
  %148 = load %struct.TString*, %struct.TString** %4, align 8
  ret %struct.TString* %148
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
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 6
  %16 = load %struct.global_State*, %struct.global_State** %15, align 8
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 33
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
define hidden %struct.Udata* @luaS_newudata(%struct.lua_State*, i64) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.Udata*, align 8
  %6 = alloca %struct.GCObject*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.Udata*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ugt i64 %9, 9223372036854775767
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %2
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaM_toobig(%struct.lua_State* %12) #6
  unreachable

; <label>:13:                                     ; preds = %2
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = add i64 40, %15
  %17 = call %struct.GCObject* @luaC_newobj(%struct.lua_State* %14, i32 7, i64 %16)
  store %struct.GCObject* %17, %struct.GCObject** %6, align 8
  %18 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  %19 = bitcast %struct.GCObject* %18 to %union.GCUnion*
  %20 = bitcast %union.GCUnion* %19 to %struct.Udata*
  store %struct.Udata* %20, %struct.Udata** %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.Udata*, %struct.Udata** %5, align 8
  %23 = getelementptr inbounds %struct.Udata, %struct.Udata* %22, i32 0, i32 5
  store i64 %21, i64* %23, align 8
  %24 = load %struct.Udata*, %struct.Udata** %5, align 8
  %25 = getelementptr inbounds %struct.Udata, %struct.Udata* %24, i32 0, i32 4
  store %struct.Table* null, %struct.Table** %25, align 8
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %7, align 8
  %26 = load %struct.Udata*, %struct.Udata** %5, align 8
  store %struct.Udata* %26, %struct.Udata** %8, align 8
  %27 = load %struct.Udata*, %struct.Udata** %8, align 8
  %28 = getelementptr inbounds %struct.Udata, %struct.Udata* %27, i32 0, i32 6
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 0
  %31 = bitcast %union.Value* %28 to i8*
  %32 = bitcast %union.Value* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 8, i32 8, i1 false)
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = trunc i32 %35 to i8
  %37 = load %struct.Udata*, %struct.Udata** %8, align 8
  %38 = getelementptr inbounds %struct.Udata, %struct.Udata* %37, i32 0, i32 3
  store i8 %36, i8* %38, align 2
  %39 = load %struct.Udata*, %struct.Udata** %5, align 8
  ret %struct.Udata* %39
}

declare hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i64) #2

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
