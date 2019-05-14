; ModuleID = 'lfunc.c'
source_filename = "lfunc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %struct.GCObject* }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, {}*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
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
%union.GCUnion = type { %struct.lua_State }
%union.Closure = type { %struct.CClosure }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.CClosure* @luaF_newCclosure(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.GCObject*, align 8
  %6 = alloca %struct.CClosure*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = mul i64 16, %10
  %12 = trunc i64 %11 to i32
  %13 = add nsw i32 48, %12
  %14 = sext i32 %13 to i64
  %15 = call %struct.GCObject* @luaC_newobj(%struct.lua_State* %7, i32 38, i64 %14)
  store %struct.GCObject* %15, %struct.GCObject** %5, align 8
  %16 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %17 = bitcast %struct.GCObject* %16 to %union.GCUnion*
  %18 = bitcast %union.GCUnion* %17 to %union.Closure*
  %19 = bitcast %union.Closure* %18 to %struct.CClosure*
  store %struct.CClosure* %19, %struct.CClosure** %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = trunc i32 %20 to i8
  %22 = load %struct.CClosure*, %struct.CClosure** %6, align 8
  %23 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %22, i32 0, i32 3
  store i8 %21, i8* %23, align 2
  %24 = load %struct.CClosure*, %struct.CClosure** %6, align 8
  ret %struct.CClosure* %24
}

declare hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.GCObject*, align 8
  %6 = alloca %struct.LClosure*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = mul i64 8, %10
  %12 = trunc i64 %11 to i32
  %13 = add nsw i32 40, %12
  %14 = sext i32 %13 to i64
  %15 = call %struct.GCObject* @luaC_newobj(%struct.lua_State* %7, i32 6, i64 %14)
  store %struct.GCObject* %15, %struct.GCObject** %5, align 8
  %16 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %17 = bitcast %struct.GCObject* %16 to %union.GCUnion*
  %18 = bitcast %union.GCUnion* %17 to %union.Closure*
  %19 = bitcast %union.Closure* %18 to %struct.LClosure*
  store %struct.LClosure* %19, %struct.LClosure** %6, align 8
  %20 = load %struct.LClosure*, %struct.LClosure** %6, align 8
  %21 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %20, i32 0, i32 5
  store %struct.Proto* null, %struct.Proto** %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = trunc i32 %22 to i8
  %24 = load %struct.LClosure*, %struct.LClosure** %6, align 8
  %25 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %24, i32 0, i32 3
  store i8 %23, i8* %25, align 2
  br label %26

; <label>:26:                                     ; preds = %30, %2
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %4, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %36

; <label>:30:                                     ; preds = %26
  %31 = load %struct.LClosure*, %struct.LClosure** %6, align 8
  %32 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %31, i32 0, i32 6
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %32, i64 0, i64 %34
  store %struct.UpVal* null, %struct.UpVal** %35, align 8
  br label %26

; <label>:36:                                     ; preds = %26
  %37 = load %struct.LClosure*, %struct.LClosure** %6, align 8
  ret %struct.LClosure* %37
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaF_initupvals(%struct.lua_State*, %struct.LClosure*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.LClosure*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.UpVal*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.LClosure* %1, %struct.LClosure** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %35, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %10 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %9, i32 0, i32 3
  %11 = load i8, i8* %10, align 2
  %12 = zext i8 %11 to i32
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %38

; <label>:14:                                     ; preds = %7
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = call i8* @luaM_realloc_(%struct.lua_State* %15, i8* null, i64 0, i64 32)
  %17 = bitcast i8* %16 to %struct.UpVal*
  store %struct.UpVal* %17, %struct.UpVal** %6, align 8
  %18 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %19 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %18, i32 0, i32 1
  store i64 1, i64* %19, align 8
  %20 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %21 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %20, i32 0, i32 2
  %22 = bitcast %union.anon.3* %21 to %struct.lua_TValue*
  %23 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %24 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %23, i32 0, i32 0
  store %struct.lua_TValue* %22, %struct.lua_TValue** %24, align 8
  %25 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %26 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %25, i32 0, i32 0
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %26, align 8
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i32 0, i32 1
  store i32 0, i32* %28, align 8
  %29 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %30 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %31 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %30, i32 0, i32 6
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %31, i64 0, i64 %33
  store %struct.UpVal* %29, %struct.UpVal** %34, align 8
  br label %35

; <label>:35:                                     ; preds = %14
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %7

; <label>:38:                                     ; preds = %7
  ret void
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.UpVal* @luaF_findupval(%struct.lua_State*, %struct.lua_TValue*) #0 {
  %3 = alloca %struct.UpVal*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.UpVal**, align 8
  %7 = alloca %struct.UpVal*, align 8
  %8 = alloca %struct.UpVal*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 11
  store %struct.UpVal** %10, %struct.UpVal*** %6, align 8
  br label %11

; <label>:11:                                     ; preds = %32, %2
  %12 = load %struct.UpVal**, %struct.UpVal*** %6, align 8
  %13 = load %struct.UpVal*, %struct.UpVal** %12, align 8
  %14 = icmp ne %struct.UpVal* %13, null
  br i1 %14, label %15, label %22

; <label>:15:                                     ; preds = %11
  %16 = load %struct.UpVal**, %struct.UpVal*** %6, align 8
  %17 = load %struct.UpVal*, %struct.UpVal** %16, align 8
  store %struct.UpVal* %17, %struct.UpVal** %7, align 8
  %18 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %17, i32 0, i32 0
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %21 = icmp uge %struct.lua_TValue* %19, %20
  br label %22

; <label>:22:                                     ; preds = %15, %11
  %23 = phi i1 [ false, %11 ], [ %21, %15 ]
  br i1 %23, label %24, label %37

; <label>:24:                                     ; preds = %22
  %25 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %26 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %25, i32 0, i32 0
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %26, align 8
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %29 = icmp eq %struct.lua_TValue* %27, %28
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %24
  %31 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  store %struct.UpVal* %31, %struct.UpVal** %3, align 8
  br label %78

; <label>:32:                                     ; preds = %24
  %33 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %34 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %33, i32 0, i32 2
  %35 = bitcast %union.anon.3* %34 to %struct.anon.4*
  %36 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %35, i32 0, i32 0
  store %struct.UpVal** %36, %struct.UpVal*** %6, align 8
  br label %11

; <label>:37:                                     ; preds = %22
  %38 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %39 = call i8* @luaM_realloc_(%struct.lua_State* %38, i8* null, i64 0, i64 32)
  %40 = bitcast i8* %39 to %struct.UpVal*
  store %struct.UpVal* %40, %struct.UpVal** %8, align 8
  %41 = load %struct.UpVal*, %struct.UpVal** %8, align 8
  %42 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.UpVal**, %struct.UpVal*** %6, align 8
  %44 = load %struct.UpVal*, %struct.UpVal** %43, align 8
  %45 = load %struct.UpVal*, %struct.UpVal** %8, align 8
  %46 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %45, i32 0, i32 2
  %47 = bitcast %union.anon.3* %46 to %struct.anon.4*
  %48 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %47, i32 0, i32 0
  store %struct.UpVal* %44, %struct.UpVal** %48, align 8
  %49 = load %struct.UpVal*, %struct.UpVal** %8, align 8
  %50 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %49, i32 0, i32 2
  %51 = bitcast %union.anon.3* %50 to %struct.anon.4*
  %52 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %51, i32 0, i32 1
  store i32 1, i32* %52, align 8
  %53 = load %struct.UpVal*, %struct.UpVal** %8, align 8
  %54 = load %struct.UpVal**, %struct.UpVal*** %6, align 8
  store %struct.UpVal* %53, %struct.UpVal** %54, align 8
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %56 = load %struct.UpVal*, %struct.UpVal** %8, align 8
  %57 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %56, i32 0, i32 0
  store %struct.lua_TValue* %55, %struct.lua_TValue** %57, align 8
  %58 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %58, i32 0, i32 13
  %60 = load %struct.lua_State*, %struct.lua_State** %59, align 8
  %61 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %62 = icmp ne %struct.lua_State* %60, %61
  br i1 %62, label %76, label %63

; <label>:63:                                     ; preds = %37
  %64 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %64, i32 0, i32 6
  %66 = load %struct.global_State*, %struct.global_State** %65, align 8
  %67 = getelementptr inbounds %struct.global_State, %struct.global_State* %66, i32 0, i32 23
  %68 = load %struct.lua_State*, %struct.lua_State** %67, align 8
  %69 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %70 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %69, i32 0, i32 13
  store %struct.lua_State* %68, %struct.lua_State** %70, align 8
  %71 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %72 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %73 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %72, i32 0, i32 6
  %74 = load %struct.global_State*, %struct.global_State** %73, align 8
  %75 = getelementptr inbounds %struct.global_State, %struct.global_State* %74, i32 0, i32 23
  store %struct.lua_State* %71, %struct.lua_State** %75, align 8
  br label %76

; <label>:76:                                     ; preds = %63, %37
  %77 = load %struct.UpVal*, %struct.UpVal** %8, align 8
  store %struct.UpVal* %77, %struct.UpVal** %3, align 8
  br label %78

; <label>:78:                                     ; preds = %76, %30
  %79 = load %struct.UpVal*, %struct.UpVal** %3, align 8
  ret %struct.UpVal* %79
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaF_close(%struct.lua_State*, %struct.lua_TValue*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca %struct.UpVal*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %4, align 8
  br label %7

; <label>:7:                                      ; preds = %75, %2
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 11
  %10 = load %struct.UpVal*, %struct.UpVal** %9, align 8
  %11 = icmp ne %struct.UpVal* %10, null
  br i1 %11, label %12, label %20

; <label>:12:                                     ; preds = %7
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 11
  %15 = load %struct.UpVal*, %struct.UpVal** %14, align 8
  store %struct.UpVal* %15, %struct.UpVal** %5, align 8
  %16 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %15, i32 0, i32 0
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %19 = icmp uge %struct.lua_TValue* %17, %18
  br label %20

; <label>:20:                                     ; preds = %12, %7
  %21 = phi i1 [ false, %7 ], [ %19, %12 ]
  br i1 %21, label %22, label %76

; <label>:22:                                     ; preds = %20
  %23 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %24 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %23, i32 0, i32 2
  %25 = bitcast %union.anon.3* %24 to %struct.anon.4*
  %26 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %25, i32 0, i32 0
  %27 = load %struct.UpVal*, %struct.UpVal** %26, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %28, i32 0, i32 11
  store %struct.UpVal* %27, %struct.UpVal** %29, align 8
  %30 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %31 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

; <label>:34:                                     ; preds = %22
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %37 = bitcast %struct.UpVal* %36 to i8*
  %38 = call i8* @luaM_realloc_(%struct.lua_State* %35, i8* %37, i64 32, i64 0)
  br label %75

; <label>:39:                                     ; preds = %22
  %40 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %41 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %40, i32 0, i32 2
  %42 = bitcast %union.anon.3* %41 to %struct.lua_TValue*
  store %struct.lua_TValue* %42, %struct.lua_TValue** %6, align 8
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %44 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %45 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %44, i32 0, i32 0
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %45, align 8
  %47 = bitcast %struct.lua_TValue* %43 to i8*
  %48 = bitcast %struct.lua_TValue* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 16, i32 8, i1 false)
  %49 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %50 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %51 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %50, i32 0, i32 2
  %52 = bitcast %union.anon.3* %51 to %struct.lua_TValue*
  %53 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %54 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %53, i32 0, i32 0
  store %struct.lua_TValue* %52, %struct.lua_TValue** %54, align 8
  %55 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %56 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %55, i32 0, i32 0
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %56, align 8
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 64
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

; <label>:62:                                     ; preds = %39
  %63 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %64 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %63, i32 0, i32 0
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8
  %66 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %67 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %66, i32 0, i32 2
  %68 = bitcast %union.anon.3* %67 to %struct.lua_TValue*
  %69 = icmp ne %struct.lua_TValue* %65, %68
  br i1 %69, label %73, label %70

; <label>:70:                                     ; preds = %62
  %71 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %72 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  call void @luaC_upvalbarrier_(%struct.lua_State* %71, %struct.UpVal* %72)
  br label %74

; <label>:73:                                     ; preds = %62, %39
  br label %74

; <label>:74:                                     ; preds = %73, %70
  br label %75

; <label>:75:                                     ; preds = %74, %34
  br label %7

; <label>:76:                                     ; preds = %20
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

declare hidden void @luaC_upvalbarrier_(%struct.lua_State*, %struct.UpVal*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.GCObject*, align 8
  %4 = alloca %struct.Proto*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call %struct.GCObject* @luaC_newobj(%struct.lua_State* %5, i32 9, i64 120)
  store %struct.GCObject* %6, %struct.GCObject** %3, align 8
  %7 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %8 = bitcast %struct.GCObject* %7 to %union.GCUnion*
  %9 = bitcast %union.GCUnion* %8 to %struct.Proto*
  store %struct.Proto* %9, %struct.Proto** %4, align 8
  %10 = load %struct.Proto*, %struct.Proto** %4, align 8
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i32 0, i32 14
  store %struct.lua_TValue* null, %struct.lua_TValue** %11, align 8
  %12 = load %struct.Proto*, %struct.Proto** %4, align 8
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 7
  store i32 0, i32* %13, align 4
  %14 = load %struct.Proto*, %struct.Proto** %4, align 8
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i32 0, i32 16
  store %struct.Proto** null, %struct.Proto*** %15, align 8
  %16 = load %struct.Proto*, %struct.Proto** %4, align 8
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 10
  store i32 0, i32* %17, align 8
  %18 = load %struct.Proto*, %struct.Proto** %4, align 8
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i32 0, i32 15
  store i32* null, i32** %19, align 8
  %20 = load %struct.Proto*, %struct.Proto** %4, align 8
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 20
  store %struct.LClosure* null, %struct.LClosure** %21, align 8
  %22 = load %struct.Proto*, %struct.Proto** %4, align 8
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 8
  store i32 0, i32* %23, align 8
  %24 = load %struct.Proto*, %struct.Proto** %4, align 8
  %25 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i32 0, i32 17
  store i32* null, i32** %25, align 8
  %26 = load %struct.Proto*, %struct.Proto** %4, align 8
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 9
  store i32 0, i32* %27, align 4
  %28 = load %struct.Proto*, %struct.Proto** %4, align 8
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 19
  store %struct.Upvaldesc* null, %struct.Upvaldesc** %29, align 8
  %30 = load %struct.Proto*, %struct.Proto** %4, align 8
  %31 = getelementptr inbounds %struct.Proto, %struct.Proto* %30, i32 0, i32 6
  store i32 0, i32* %31, align 8
  %32 = load %struct.Proto*, %struct.Proto** %4, align 8
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %32, i32 0, i32 3
  store i8 0, i8* %33, align 2
  %34 = load %struct.Proto*, %struct.Proto** %4, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 4
  store i8 0, i8* %35, align 1
  %36 = load %struct.Proto*, %struct.Proto** %4, align 8
  %37 = getelementptr inbounds %struct.Proto, %struct.Proto* %36, i32 0, i32 5
  store i8 0, i8* %37, align 4
  %38 = load %struct.Proto*, %struct.Proto** %4, align 8
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i32 0, i32 18
  store %struct.LocVar* null, %struct.LocVar** %39, align 8
  %40 = load %struct.Proto*, %struct.Proto** %4, align 8
  %41 = getelementptr inbounds %struct.Proto, %struct.Proto* %40, i32 0, i32 11
  store i32 0, i32* %41, align 4
  %42 = load %struct.Proto*, %struct.Proto** %4, align 8
  %43 = getelementptr inbounds %struct.Proto, %struct.Proto* %42, i32 0, i32 12
  store i32 0, i32* %43, align 8
  %44 = load %struct.Proto*, %struct.Proto** %4, align 8
  %45 = getelementptr inbounds %struct.Proto, %struct.Proto* %44, i32 0, i32 13
  store i32 0, i32* %45, align 4
  %46 = load %struct.Proto*, %struct.Proto** %4, align 8
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i32 0, i32 21
  store %struct.TString* null, %struct.TString** %47, align 8
  %48 = load %struct.Proto*, %struct.Proto** %4, align 8
  ret %struct.Proto* %48
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaF_freeproto(%struct.lua_State*, %struct.Proto*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.Proto*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.Proto* %1, %struct.Proto** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = load %struct.Proto*, %struct.Proto** %4, align 8
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i32 0, i32 15
  %8 = load i32*, i32** %7, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = load %struct.Proto*, %struct.Proto** %4, align 8
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = call i8* @luaM_realloc_(%struct.lua_State* %5, i8* %9, i64 %14, i64 0)
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load %struct.Proto*, %struct.Proto** %4, align 8
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 16
  %19 = load %struct.Proto**, %struct.Proto*** %18, align 8
  %20 = bitcast %struct.Proto** %19 to i8*
  %21 = load %struct.Proto*, %struct.Proto** %4, align 8
  %22 = getelementptr inbounds %struct.Proto, %struct.Proto* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = call i8* @luaM_realloc_(%struct.lua_State* %16, i8* %20, i64 %25, i64 0)
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %28 = load %struct.Proto*, %struct.Proto** %4, align 8
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 14
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %29, align 8
  %31 = bitcast %struct.lua_TValue* %30 to i8*
  %32 = load %struct.Proto*, %struct.Proto** %4, align 8
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 16
  %37 = call i8* @luaM_realloc_(%struct.lua_State* %27, i8* %31, i64 %36, i64 0)
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %39 = load %struct.Proto*, %struct.Proto** %4, align 8
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %39, i32 0, i32 17
  %41 = load i32*, i32** %40, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = load %struct.Proto*, %struct.Proto** %4, align 8
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = call i8* @luaM_realloc_(%struct.lua_State* %38, i8* %42, i64 %47, i64 0)
  %49 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %50 = load %struct.Proto*, %struct.Proto** %4, align 8
  %51 = getelementptr inbounds %struct.Proto, %struct.Proto* %50, i32 0, i32 18
  %52 = load %struct.LocVar*, %struct.LocVar** %51, align 8
  %53 = bitcast %struct.LocVar* %52 to i8*
  %54 = load %struct.Proto*, %struct.Proto** %4, align 8
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %54, i32 0, i32 11
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 16
  %59 = call i8* @luaM_realloc_(%struct.lua_State* %49, i8* %53, i64 %58, i64 0)
  %60 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %61 = load %struct.Proto*, %struct.Proto** %4, align 8
  %62 = getelementptr inbounds %struct.Proto, %struct.Proto* %61, i32 0, i32 19
  %63 = load %struct.Upvaldesc*, %struct.Upvaldesc** %62, align 8
  %64 = bitcast %struct.Upvaldesc* %63 to i8*
  %65 = load %struct.Proto*, %struct.Proto** %4, align 8
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 16
  %70 = call i8* @luaM_realloc_(%struct.lua_State* %60, i8* %64, i64 %69, i64 0)
  %71 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %72 = load %struct.Proto*, %struct.Proto** %4, align 8
  %73 = bitcast %struct.Proto* %72 to i8*
  %74 = call i8* @luaM_realloc_(%struct.lua_State* %71, i8* %73, i64 120, i64 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i8* @luaF_getlocalname(%struct.Proto*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.Proto*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.Proto* %0, %struct.Proto** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %57, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.Proto*, %struct.Proto** %5, align 8
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i32 0, i32 11
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %26

; <label>:15:                                     ; preds = %9
  %16 = load %struct.Proto*, %struct.Proto** %5, align 8
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 18
  %18 = load %struct.LocVar*, %struct.LocVar** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %18, i64 %20
  %22 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp sle i32 %23, %24
  br label %26

; <label>:26:                                     ; preds = %15, %9
  %27 = phi i1 [ false, %9 ], [ %25, %15 ]
  br i1 %27, label %28, label %60

; <label>:28:                                     ; preds = %26
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.Proto*, %struct.Proto** %5, align 8
  %31 = getelementptr inbounds %struct.Proto, %struct.Proto* %30, i32 0, i32 18
  %32 = load %struct.LocVar*, %struct.LocVar** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %32, i64 %34
  %36 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %29, %37
  br i1 %38, label %39, label %56

; <label>:39:                                     ; preds = %28
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %55

; <label>:44:                                     ; preds = %39
  %45 = load %struct.Proto*, %struct.Proto** %5, align 8
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %45, i32 0, i32 18
  %47 = load %struct.LocVar*, %struct.LocVar** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %47, i64 %49
  %51 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %50, i32 0, i32 0
  %52 = load %struct.TString*, %struct.TString** %51, align 8
  %53 = bitcast %struct.TString* %52 to i8*
  %54 = getelementptr inbounds i8, i8* %53, i64 24
  store i8* %54, i8** %4, align 8
  br label %61

; <label>:55:                                     ; preds = %39
  br label %56

; <label>:56:                                     ; preds = %55, %28
  br label %57

; <label>:57:                                     ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %9

; <label>:60:                                     ; preds = %26
  store i8* null, i8** %4, align 8
  br label %61

; <label>:61:                                     ; preds = %60, %44
  %62 = load i8*, i8** %4, align 8
  ret i8* %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
