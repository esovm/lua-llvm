; ModuleID = 'lgc.c'
source_filename = "lgc.c"
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
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, %union.anon.2, i16, i16 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.2 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.Udata = type { %struct.GCObject*, i8, i8, i16, i64, %struct.Table*, %struct.GCObject*, [1 x %union.UValue] }
%union.UValue = type { %struct.TValue }
%union.GCUnion = type { %struct.lua_State }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.TValue] }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"error object is not a string\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"error in __gc metamethod (\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@sweepgen.nextage = internal global [7 x i8] c"\01\03\03\04\04\05\06", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.GCObject*, align 8
  %6 = alloca %struct.GCObject*, align 8
  %7 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.GCObject* %1, %struct.GCObject** %5, align 8
  store %struct.GCObject* %2, %struct.GCObject** %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 7
  %10 = load %struct.global_State*, %struct.global_State** %9, align 8
  store %struct.global_State* %10, %struct.global_State** %7, align 8
  %11 = load %struct.global_State*, %struct.global_State** %7, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sle i32 %14, 2
  br i1 %15, label %16, label %36

; <label>:16:                                     ; preds = %3
  %17 = load %struct.global_State*, %struct.global_State** %7, align 8
  %18 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  call void @reallymarkobject(%struct.global_State* %17, %struct.GCObject* %18)
  %19 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %20 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %19, i32 0, i32 2
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 7
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %35

; <label>:25:                                     ; preds = %16
  %26 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  %27 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %26, i32 0, i32 2
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, -8
  %31 = or i32 %30, 2
  %32 = trunc i32 %31 to i8
  %33 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  %34 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %33, i32 0, i32 2
  store i8 %32, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %25, %16
  br label %53

; <label>:36:                                     ; preds = %3
  %37 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %38 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %37, i32 0, i32 2
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, -64
  %42 = load %struct.global_State*, %struct.global_State** %7, align 8
  %43 = getelementptr inbounds %struct.global_State, %struct.global_State* %42, i32 0, i32 10
  %44 = load i8, i8* %43, align 4
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 24
  %47 = trunc i32 %46 to i8
  %48 = zext i8 %47 to i32
  %49 = or i32 %41, %48
  %50 = trunc i32 %49 to i8
  %51 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %52 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %51, i32 0, i32 2
  store i8 %50, i8* %52, align 1
  br label %53

; <label>:53:                                     ; preds = %36, %35
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reallymarkobject(%struct.global_State*, %struct.GCObject*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.GCObject*, align 8
  %5 = alloca %struct.UpVal*, align 8
  %6 = alloca %struct.Udata*, align 8
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.GCObject* %1, %struct.GCObject** %4, align 8
  %7 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %8 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i32 0, i32 2
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 231
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %8, align 1
  %13 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %14 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %13, i32 0, i32 1
  %15 = load i8, i8* %14, align 8
  %16 = zext i8 %15 to i32
  switch i32 %16, label %122 [
    i32 20, label %17
    i32 36, label %17
    i32 9, label %24
    i32 25, label %24
    i32 7, label %72
    i32 22, label %111
    i32 54, label %111
    i32 5, label %111
    i32 8, label %111
    i32 10, label %111
  ]

; <label>:17:                                     ; preds = %2, %2
  %18 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %19 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %18, i32 0, i32 2
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %21, 32
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %19, align 1
  br label %123

; <label>:24:                                     ; preds = %2, %2
  %25 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %26 = bitcast %struct.GCObject* %25 to %union.GCUnion*
  %27 = bitcast %union.GCUnion* %26 to %struct.UpVal*
  store %struct.UpVal* %27, %struct.UpVal** %5, align 8
  %28 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %29 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %28, i32 0, i32 3
  %30 = load %struct.TValue*, %struct.TValue** %29, align 8
  %31 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %32 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %31, i32 0, i32 4
  %33 = bitcast %union.anon.4* %32 to %struct.TValue*
  %34 = icmp ne %struct.TValue* %30, %33
  br i1 %34, label %42, label %35

; <label>:35:                                     ; preds = %24
  %36 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %37 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %36, i32 0, i32 2
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, 32
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %37, align 1
  br label %42

; <label>:42:                                     ; preds = %35, %24
  %43 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %44 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %43, i32 0, i32 3
  %45 = load %struct.TValue*, %struct.TValue** %44, align 8
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i32 0, i32 1
  %47 = load i8, i8* %46, align 8
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 64
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

; <label>:51:                                     ; preds = %42
  %52 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %53 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %52, i32 0, i32 3
  %54 = load %struct.TValue*, %struct.TValue** %53, align 8
  %55 = getelementptr inbounds %struct.TValue, %struct.TValue* %54, i32 0, i32 0
  %56 = bitcast %union.Value* %55 to %struct.GCObject**
  %57 = load %struct.GCObject*, %struct.GCObject** %56, align 8
  %58 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %57, i32 0, i32 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 24
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

; <label>:63:                                     ; preds = %51
  %64 = load %struct.global_State*, %struct.global_State** %3, align 8
  %65 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %66 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %65, i32 0, i32 3
  %67 = load %struct.TValue*, %struct.TValue** %66, align 8
  %68 = getelementptr inbounds %struct.TValue, %struct.TValue* %67, i32 0, i32 0
  %69 = bitcast %union.Value* %68 to %struct.GCObject**
  %70 = load %struct.GCObject*, %struct.GCObject** %69, align 8
  call void @reallymarkobject(%struct.global_State* %64, %struct.GCObject* %70)
  br label %71

; <label>:71:                                     ; preds = %63, %51, %42
  br label %123

; <label>:72:                                     ; preds = %2
  %73 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %74 = bitcast %struct.GCObject* %73 to %union.GCUnion*
  %75 = bitcast %union.GCUnion* %74 to %struct.Udata*
  store %struct.Udata* %75, %struct.Udata** %6, align 8
  %76 = load %struct.Udata*, %struct.Udata** %6, align 8
  %77 = getelementptr inbounds %struct.Udata, %struct.Udata* %76, i32 0, i32 3
  %78 = load i16, i16* %77, align 2
  %79 = zext i16 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %110

; <label>:81:                                     ; preds = %72
  %82 = load %struct.Udata*, %struct.Udata** %6, align 8
  %83 = getelementptr inbounds %struct.Udata, %struct.Udata* %82, i32 0, i32 5
  %84 = load %struct.Table*, %struct.Table** %83, align 8
  %85 = icmp ne %struct.Table* %84, null
  br i1 %85, label %86, label %103

; <label>:86:                                     ; preds = %81
  %87 = load %struct.Udata*, %struct.Udata** %6, align 8
  %88 = getelementptr inbounds %struct.Udata, %struct.Udata* %87, i32 0, i32 5
  %89 = load %struct.Table*, %struct.Table** %88, align 8
  %90 = getelementptr inbounds %struct.Table, %struct.Table* %89, i32 0, i32 2
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 24
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

; <label>:95:                                     ; preds = %86
  %96 = load %struct.global_State*, %struct.global_State** %3, align 8
  %97 = load %struct.Udata*, %struct.Udata** %6, align 8
  %98 = getelementptr inbounds %struct.Udata, %struct.Udata* %97, i32 0, i32 5
  %99 = load %struct.Table*, %struct.Table** %98, align 8
  %100 = bitcast %struct.Table* %99 to %union.GCUnion*
  %101 = bitcast %union.GCUnion* %100 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %96, %struct.GCObject* %101)
  br label %102

; <label>:102:                                    ; preds = %95, %86
  br label %103

; <label>:103:                                    ; preds = %102, %81
  %104 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %105 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %104, i32 0, i32 2
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %107, 32
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %105, align 1
  br label %123

; <label>:110:                                    ; preds = %72
  br label %111

; <label>:111:                                    ; preds = %2, %2, %2, %2, %2, %110
  %112 = load %struct.global_State*, %struct.global_State** %3, align 8
  %113 = getelementptr inbounds %struct.global_State, %struct.global_State* %112, i32 0, i32 23
  %114 = load %struct.GCObject*, %struct.GCObject** %113, align 8
  %115 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %116 = call %struct.GCObject** @getgclist(%struct.GCObject* %115)
  store %struct.GCObject* %114, %struct.GCObject** %116, align 8
  %117 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %118 = bitcast %struct.GCObject* %117 to %union.GCUnion*
  %119 = bitcast %union.GCUnion* %118 to %struct.GCObject*
  %120 = load %struct.global_State*, %struct.global_State** %3, align 8
  %121 = getelementptr inbounds %struct.global_State, %struct.global_State* %120, i32 0, i32 23
  store %struct.GCObject* %119, %struct.GCObject** %121, align 8
  br label %123

; <label>:122:                                    ; preds = %2
  br label %123

; <label>:123:                                    ; preds = %122, %111, %103, %71, %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_barrierback_(%struct.lua_State*, %struct.GCObject*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.GCObject*, align 8
  %5 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.GCObject* %1, %struct.GCObject** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 7
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8
  store %struct.global_State* %8, %struct.global_State** %5, align 8
  %9 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %9, i32 0, i32 2
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 7
  %14 = icmp ne i32 %13, 6
  br i1 %14, label %15, label %26

; <label>:15:                                     ; preds = %2
  %16 = load %struct.global_State*, %struct.global_State** %5, align 8
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 24
  %18 = load %struct.GCObject*, %struct.GCObject** %17, align 8
  %19 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %20 = call %struct.GCObject** @getgclist(%struct.GCObject* %19)
  store %struct.GCObject* %18, %struct.GCObject** %20, align 8
  %21 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %22 = bitcast %struct.GCObject* %21 to %union.GCUnion*
  %23 = bitcast %union.GCUnion* %22 to %struct.GCObject*
  %24 = load %struct.global_State*, %struct.global_State** %5, align 8
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i32 0, i32 24
  store %struct.GCObject* %23, %struct.GCObject** %25, align 8
  br label %26

; <label>:26:                                     ; preds = %15, %2
  %27 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %28 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %27, i32 0, i32 2
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 223
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %28, align 1
  %33 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %34 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %33, i32 0, i32 2
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, -8
  %38 = or i32 %37, 5
  %39 = trunc i32 %38 to i8
  %40 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %41 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %40, i32 0, i32 2
  store i8 %39, i8* %41, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.GCObject** @getgclist(%struct.GCObject*) #0 {
  %2 = alloca %struct.GCObject**, align 8
  %3 = alloca %struct.GCObject*, align 8
  %4 = alloca %struct.Udata*, align 8
  store %struct.GCObject* %0, %struct.GCObject** %3, align 8
  %5 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %6 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %5, i32 0, i32 1
  %7 = load i8, i8* %6, align 8
  %8 = zext i8 %7 to i32
  switch i32 %8, label %42 [
    i32 5, label %9
    i32 22, label %14
    i32 54, label %20
    i32 8, label %26
    i32 10, label %31
    i32 7, label %36
  ]

; <label>:9:                                      ; preds = %1
  %10 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %11 = bitcast %struct.GCObject* %10 to %union.GCUnion*
  %12 = bitcast %union.GCUnion* %11 to %struct.Table*
  %13 = getelementptr inbounds %struct.Table, %struct.Table* %12, i32 0, i32 10
  store %struct.GCObject** %13, %struct.GCObject*** %2, align 8
  br label %43

; <label>:14:                                     ; preds = %1
  %15 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %16 = bitcast %struct.GCObject* %15 to %union.GCUnion*
  %17 = bitcast %union.GCUnion* %16 to %union.Closure*
  %18 = bitcast %union.Closure* %17 to %struct.LClosure*
  %19 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %18, i32 0, i32 4
  store %struct.GCObject** %19, %struct.GCObject*** %2, align 8
  br label %43

; <label>:20:                                     ; preds = %1
  %21 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %22 = bitcast %struct.GCObject* %21 to %union.GCUnion*
  %23 = bitcast %union.GCUnion* %22 to %union.Closure*
  %24 = bitcast %union.Closure* %23 to %struct.CClosure*
  %25 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %24, i32 0, i32 4
  store %struct.GCObject** %25, %struct.GCObject*** %2, align 8
  br label %43

; <label>:26:                                     ; preds = %1
  %27 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %28 = bitcast %struct.GCObject* %27 to %union.GCUnion*
  %29 = bitcast %union.GCUnion* %28 to %struct.lua_State*
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 13
  store %struct.GCObject** %30, %struct.GCObject*** %2, align 8
  br label %43

; <label>:31:                                     ; preds = %1
  %32 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %33 = bitcast %struct.GCObject* %32 to %union.GCUnion*
  %34 = bitcast %union.GCUnion* %33 to %struct.Proto*
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 23
  store %struct.GCObject** %35, %struct.GCObject*** %2, align 8
  br label %43

; <label>:36:                                     ; preds = %1
  %37 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %38 = bitcast %struct.GCObject* %37 to %union.GCUnion*
  %39 = bitcast %union.GCUnion* %38 to %struct.Udata*
  store %struct.Udata* %39, %struct.Udata** %4, align 8
  %40 = load %struct.Udata*, %struct.Udata** %4, align 8
  %41 = getelementptr inbounds %struct.Udata, %struct.Udata* %40, i32 0, i32 6
  store %struct.GCObject** %41, %struct.GCObject*** %2, align 8
  br label %43

; <label>:42:                                     ; preds = %1
  store %struct.GCObject** null, %struct.GCObject*** %2, align 8
  br label %43

; <label>:43:                                     ; preds = %42, %36, %31, %26, %20, %14, %9
  %44 = load %struct.GCObject**, %struct.GCObject*** %2, align 8
  ret %struct.GCObject** %44
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_fix(%struct.lua_State*, %struct.GCObject*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.GCObject*, align 8
  %5 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.GCObject* %1, %struct.GCObject** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 7
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8
  store %struct.global_State* %8, %struct.global_State** %5, align 8
  %9 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %9, i32 0, i32 2
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 231
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %10, align 1
  %15 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %16 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %15, i32 0, i32 2
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, -8
  %20 = or i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %23 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %22, i32 0, i32 2
  store i8 %21, i8* %23, align 1
  %24 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %25 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %24, i32 0, i32 0
  %26 = load %struct.GCObject*, %struct.GCObject** %25, align 8
  %27 = load %struct.global_State*, %struct.global_State** %5, align 8
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i32 0, i32 20
  store %struct.GCObject* %26, %struct.GCObject** %28, align 8
  %29 = load %struct.global_State*, %struct.global_State** %5, align 8
  %30 = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 29
  %31 = load %struct.GCObject*, %struct.GCObject** %30, align 8
  %32 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %33 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %32, i32 0, i32 0
  store %struct.GCObject* %31, %struct.GCObject** %33, align 8
  %34 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %35 = load %struct.global_State*, %struct.global_State** %5, align 8
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %35, i32 0, i32 29
  store %struct.GCObject* %34, %struct.GCObject** %36, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.global_State*, align 8
  %8 = alloca %struct.GCObject*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 7
  %11 = load %struct.global_State*, %struct.global_State** %10, align 8
  store %struct.global_State* %11, %struct.global_State** %7, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 15
  %16 = call i8* @luaM_malloc_(%struct.lua_State* %12, i64 %13, i32 %15)
  %17 = bitcast i8* %16 to %struct.GCObject*
  store %struct.GCObject* %17, %struct.GCObject** %8, align 8
  %18 = load %struct.global_State*, %struct.global_State** %7, align 8
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 10
  %20 = load i8, i8* %19, align 4
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 24
  %23 = trunc i32 %22 to i8
  %24 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  %25 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %24, i32 0, i32 2
  store i8 %23, i8* %25, align 1
  %26 = load i32, i32* %5, align 4
  %27 = trunc i32 %26 to i8
  %28 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  %29 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %28, i32 0, i32 1
  store i8 %27, i8* %29, align 8
  %30 = load %struct.global_State*, %struct.global_State** %7, align 8
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %30, i32 0, i32 20
  %32 = load %struct.GCObject*, %struct.GCObject** %31, align 8
  %33 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  %34 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %33, i32 0, i32 0
  store %struct.GCObject* %32, %struct.GCObject** %34, align 8
  %35 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  %36 = load %struct.global_State*, %struct.global_State** %7, align 8
  %37 = getelementptr inbounds %struct.global_State, %struct.global_State* %36, i32 0, i32 20
  store %struct.GCObject* %35, %struct.GCObject** %37, align 8
  %38 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  ret %struct.GCObject* %38
}

declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_checkfinalizer(%struct.lua_State*, %struct.GCObject*, %struct.Table*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.GCObject*, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca %struct.global_State*, align 8
  %8 = alloca %struct.GCObject**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.GCObject* %1, %struct.GCObject** %5, align 8
  store %struct.Table* %2, %struct.Table** %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 7
  %11 = load %struct.global_State*, %struct.global_State** %10, align 8
  store %struct.global_State* %11, %struct.global_State** %7, align 8
  %12 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %13 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %12, i32 0, i32 2
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 64
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %42, label %18

; <label>:18:                                     ; preds = %3
  %19 = load %struct.Table*, %struct.Table** %6, align 8
  %20 = icmp eq %struct.Table* %19, null
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %18
  br label %39

; <label>:22:                                     ; preds = %18
  %23 = load %struct.Table*, %struct.Table** %6, align 8
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %23, i32 0, i32 3
  %25 = load i8, i8* %24, align 2
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %22
  br label %37

; <label>:30:                                     ; preds = %22
  %31 = load %struct.Table*, %struct.Table** %6, align 8
  %32 = load %struct.global_State*, %struct.global_State** %7, align 8
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i32 0, i32 40
  %34 = getelementptr inbounds [25 x %struct.TString*], [25 x %struct.TString*]* %33, i64 0, i64 2
  %35 = load %struct.TString*, %struct.TString** %34, align 8
  %36 = call %struct.TValue* @luaT_gettm(%struct.Table* %31, i32 2, %struct.TString* %35)
  br label %37

; <label>:37:                                     ; preds = %30, %29
  %38 = phi %struct.TValue* [ null, %29 ], [ %36, %30 ]
  br label %39

; <label>:39:                                     ; preds = %37, %21
  %40 = phi %struct.TValue* [ null, %21 ], [ %38, %37 ]
  %41 = icmp eq %struct.TValue* %40, null
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39, %3
  br label %156

; <label>:43:                                     ; preds = %39
  %44 = load %struct.global_State*, %struct.global_State** %7, align 8
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %44, i32 0, i32 11
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp sle i32 3, %47
  br i1 %48, label %49, label %87

; <label>:49:                                     ; preds = %43
  %50 = load %struct.global_State*, %struct.global_State** %7, align 8
  %51 = getelementptr inbounds %struct.global_State, %struct.global_State* %50, i32 0, i32 11
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp sle i32 %53, 6
  br i1 %54, label %55, label %87

; <label>:55:                                     ; preds = %49
  %56 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %57 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %56, i32 0, i32 2
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, -64
  %61 = load %struct.global_State*, %struct.global_State** %7, align 8
  %62 = getelementptr inbounds %struct.global_State, %struct.global_State* %61, i32 0, i32 10
  %63 = load i8, i8* %62, align 4
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 24
  %66 = trunc i32 %65 to i8
  %67 = zext i8 %66 to i32
  %68 = or i32 %60, %67
  %69 = trunc i32 %68 to i8
  %70 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %71 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %70, i32 0, i32 2
  store i8 %69, i8* %71, align 1
  %72 = load %struct.global_State*, %struct.global_State** %7, align 8
  %73 = getelementptr inbounds %struct.global_State, %struct.global_State* %72, i32 0, i32 21
  %74 = load %struct.GCObject**, %struct.GCObject*** %73, align 8
  %75 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %76 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %75, i32 0, i32 0
  %77 = icmp eq %struct.GCObject** %74, %76
  br i1 %77, label %78, label %86

; <label>:78:                                     ; preds = %55
  %79 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %80 = load %struct.global_State*, %struct.global_State** %7, align 8
  %81 = getelementptr inbounds %struct.global_State, %struct.global_State* %80, i32 0, i32 21
  %82 = load %struct.GCObject**, %struct.GCObject*** %81, align 8
  %83 = call %struct.GCObject** @sweeptolive(%struct.lua_State* %79, %struct.GCObject** %82)
  %84 = load %struct.global_State*, %struct.global_State** %7, align 8
  %85 = getelementptr inbounds %struct.global_State, %struct.global_State* %84, i32 0, i32 21
  store %struct.GCObject** %83, %struct.GCObject*** %85, align 8
  br label %86

; <label>:86:                                     ; preds = %78, %55
  br label %124

; <label>:87:                                     ; preds = %49, %43
  %88 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %89 = load %struct.global_State*, %struct.global_State** %7, align 8
  %90 = getelementptr inbounds %struct.global_State, %struct.global_State* %89, i32 0, i32 30
  %91 = load %struct.GCObject*, %struct.GCObject** %90, align 8
  %92 = icmp eq %struct.GCObject* %88, %91
  br i1 %92, label %93, label %99

; <label>:93:                                     ; preds = %87
  %94 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %95 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %94, i32 0, i32 0
  %96 = load %struct.GCObject*, %struct.GCObject** %95, align 8
  %97 = load %struct.global_State*, %struct.global_State** %7, align 8
  %98 = getelementptr inbounds %struct.global_State, %struct.global_State* %97, i32 0, i32 30
  store %struct.GCObject* %96, %struct.GCObject** %98, align 8
  br label %99

; <label>:99:                                     ; preds = %93, %87
  %100 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %101 = load %struct.global_State*, %struct.global_State** %7, align 8
  %102 = getelementptr inbounds %struct.global_State, %struct.global_State* %101, i32 0, i32 31
  %103 = load %struct.GCObject*, %struct.GCObject** %102, align 8
  %104 = icmp eq %struct.GCObject* %100, %103
  br i1 %104, label %105, label %111

; <label>:105:                                    ; preds = %99
  %106 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %107 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %106, i32 0, i32 0
  %108 = load %struct.GCObject*, %struct.GCObject** %107, align 8
  %109 = load %struct.global_State*, %struct.global_State** %7, align 8
  %110 = getelementptr inbounds %struct.global_State, %struct.global_State* %109, i32 0, i32 31
  store %struct.GCObject* %108, %struct.GCObject** %110, align 8
  br label %111

; <label>:111:                                    ; preds = %105, %99
  %112 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %113 = load %struct.global_State*, %struct.global_State** %7, align 8
  %114 = getelementptr inbounds %struct.global_State, %struct.global_State* %113, i32 0, i32 32
  %115 = load %struct.GCObject*, %struct.GCObject** %114, align 8
  %116 = icmp eq %struct.GCObject* %112, %115
  br i1 %116, label %117, label %123

; <label>:117:                                    ; preds = %111
  %118 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %119 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %118, i32 0, i32 0
  %120 = load %struct.GCObject*, %struct.GCObject** %119, align 8
  %121 = load %struct.global_State*, %struct.global_State** %7, align 8
  %122 = getelementptr inbounds %struct.global_State, %struct.global_State* %121, i32 0, i32 32
  store %struct.GCObject* %120, %struct.GCObject** %122, align 8
  br label %123

; <label>:123:                                    ; preds = %117, %111
  br label %124

; <label>:124:                                    ; preds = %123, %86
  %125 = load %struct.global_State*, %struct.global_State** %7, align 8
  %126 = getelementptr inbounds %struct.global_State, %struct.global_State* %125, i32 0, i32 20
  store %struct.GCObject** %126, %struct.GCObject*** %8, align 8
  br label %127

; <label>:127:                                    ; preds = %133, %124
  %128 = load %struct.GCObject**, %struct.GCObject*** %8, align 8
  %129 = load %struct.GCObject*, %struct.GCObject** %128, align 8
  %130 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %131 = icmp ne %struct.GCObject* %129, %130
  br i1 %131, label %132, label %137

; <label>:132:                                    ; preds = %127
  br label %133

; <label>:133:                                    ; preds = %132
  %134 = load %struct.GCObject**, %struct.GCObject*** %8, align 8
  %135 = load %struct.GCObject*, %struct.GCObject** %134, align 8
  %136 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %135, i32 0, i32 0
  store %struct.GCObject** %136, %struct.GCObject*** %8, align 8
  br label %127

; <label>:137:                                    ; preds = %127
  %138 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %139 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %138, i32 0, i32 0
  %140 = load %struct.GCObject*, %struct.GCObject** %139, align 8
  %141 = load %struct.GCObject**, %struct.GCObject*** %8, align 8
  store %struct.GCObject* %140, %struct.GCObject** %141, align 8
  %142 = load %struct.global_State*, %struct.global_State** %7, align 8
  %143 = getelementptr inbounds %struct.global_State, %struct.global_State* %142, i32 0, i32 22
  %144 = load %struct.GCObject*, %struct.GCObject** %143, align 8
  %145 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %146 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %145, i32 0, i32 0
  store %struct.GCObject* %144, %struct.GCObject** %146, align 8
  %147 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %148 = load %struct.global_State*, %struct.global_State** %7, align 8
  %149 = getelementptr inbounds %struct.global_State, %struct.global_State* %148, i32 0, i32 22
  store %struct.GCObject* %147, %struct.GCObject** %149, align 8
  %150 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %151 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %150, i32 0, i32 2
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = or i32 %153, 64
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %151, align 1
  br label %156

; <label>:156:                                    ; preds = %42, %137
  ret void
}

declare hidden %struct.TValue* @luaT_gettm(%struct.Table*, i32, %struct.TString*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.GCObject** @sweeptolive(%struct.lua_State*, %struct.GCObject**) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.GCObject**, align 8
  %5 = alloca %struct.GCObject**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.GCObject** %1, %struct.GCObject*** %4, align 8
  %6 = load %struct.GCObject**, %struct.GCObject*** %4, align 8
  store %struct.GCObject** %6, %struct.GCObject*** %5, align 8
  br label %7

; <label>:7:                                      ; preds = %11, %2
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load %struct.GCObject**, %struct.GCObject*** %4, align 8
  %10 = call %struct.GCObject** @sweeplist(%struct.lua_State* %8, %struct.GCObject** %9, i32 1, i32* null)
  store %struct.GCObject** %10, %struct.GCObject*** %4, align 8
  br label %11

; <label>:11:                                     ; preds = %7
  %12 = load %struct.GCObject**, %struct.GCObject*** %4, align 8
  %13 = load %struct.GCObject**, %struct.GCObject*** %5, align 8
  %14 = icmp eq %struct.GCObject** %12, %13
  br i1 %14, label %7, label %15

; <label>:15:                                     ; preds = %11
  %16 = load %struct.GCObject**, %struct.GCObject*** %4, align 8
  ret %struct.GCObject** %16
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_changemode(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 7
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8
  store %struct.global_State* %8, %struct.global_State** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.global_State*, %struct.global_State** %5, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 12
  %12 = load i8, i8* %11, align 2
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %9, %13
  br i1 %14, label %15, label %25

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %22

; <label>:18:                                     ; preds = %15
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = load %struct.global_State*, %struct.global_State** %5, align 8
  %21 = call i64 @entergen(%struct.lua_State* %19, %struct.global_State* %20)
  br label %24

; <label>:22:                                     ; preds = %15
  %23 = load %struct.global_State*, %struct.global_State** %5, align 8
  call void @enterinc(%struct.global_State* %23)
  br label %24

; <label>:24:                                     ; preds = %22, %18
  br label %25

; <label>:25:                                     ; preds = %24, %2
  %26 = load %struct.global_State*, %struct.global_State** %5, align 8
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @entergen(%struct.lua_State*, %struct.global_State*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.global_State* %1, %struct.global_State** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_runtilstate(%struct.lua_State* %6, i32 256)
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_runtilstate(%struct.lua_State* %7, i32 1)
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i64 @atomic(%struct.lua_State* %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @atomic2gen(%struct.lua_State* %10, %struct.global_State* %11)
  %12 = load i64, i64* %5, align 8
  ret i64 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enterinc(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8
  %4 = load %struct.global_State*, %struct.global_State** %2, align 8
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 20
  %6 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  call void @whitelist(%struct.global_State* %3, %struct.GCObject* %6)
  %7 = load %struct.global_State*, %struct.global_State** %2, align 8
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 30
  store %struct.GCObject* null, %struct.GCObject** %8, align 8
  %9 = load %struct.global_State*, %struct.global_State** %2, align 8
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i32 0, i32 31
  store %struct.GCObject* null, %struct.GCObject** %10, align 8
  %11 = load %struct.global_State*, %struct.global_State** %2, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 32
  store %struct.GCObject* null, %struct.GCObject** %12, align 8
  %13 = load %struct.global_State*, %struct.global_State** %2, align 8
  %14 = load %struct.global_State*, %struct.global_State** %2, align 8
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %14, i32 0, i32 22
  %16 = load %struct.GCObject*, %struct.GCObject** %15, align 8
  call void @whitelist(%struct.global_State* %13, %struct.GCObject* %16)
  %17 = load %struct.global_State*, %struct.global_State** %2, align 8
  %18 = load %struct.global_State*, %struct.global_State** %2, align 8
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 28
  %20 = load %struct.GCObject*, %struct.GCObject** %19, align 8
  call void @whitelist(%struct.global_State* %17, %struct.GCObject* %20)
  %21 = load %struct.global_State*, %struct.global_State** %2, align 8
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i32 0, i32 33
  store %struct.GCObject* null, %struct.GCObject** %22, align 8
  %23 = load %struct.global_State*, %struct.global_State** %2, align 8
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 34
  store %struct.GCObject* null, %struct.GCObject** %24, align 8
  %25 = load %struct.global_State*, %struct.global_State** %2, align 8
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i32 0, i32 35
  store %struct.GCObject* null, %struct.GCObject** %26, align 8
  %27 = load %struct.global_State*, %struct.global_State** %2, align 8
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i32 0, i32 11
  store i8 8, i8* %28, align 1
  %29 = load %struct.global_State*, %struct.global_State** %2, align 8
  %30 = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 12
  store i8 0, i8* %30, align 2
  %31 = load %struct.global_State*, %struct.global_State** %2, align 8
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_freeallobjects(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 7
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8
  store %struct.global_State* %6, %struct.global_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaC_changemode(%struct.lua_State* %7, i32 0)
  %8 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @separatetobefnz(%struct.global_State* %8, i32 1)
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @callallpendingfinalizers(%struct.lua_State* %9)
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = load %struct.global_State*, %struct.global_State** %3, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 20
  %13 = load %struct.GCObject*, %struct.GCObject** %12, align 8
  %14 = load %struct.global_State*, %struct.global_State** %3, align 8
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %14, i32 0, i32 38
  %16 = load %struct.lua_State*, %struct.lua_State** %15, align 8
  %17 = bitcast %struct.lua_State* %16 to %union.GCUnion*
  %18 = bitcast %union.GCUnion* %17 to %struct.GCObject*
  call void @deletelist(%struct.lua_State* %10, %struct.GCObject* %13, %struct.GCObject* %18)
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = load %struct.global_State*, %struct.global_State** %3, align 8
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %20, i32 0, i32 22
  %22 = load %struct.GCObject*, %struct.GCObject** %21, align 8
  call void @deletelist(%struct.lua_State* %19, %struct.GCObject* %22, %struct.GCObject* null)
  %23 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %24 = load %struct.global_State*, %struct.global_State** %3, align 8
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i32 0, i32 29
  %26 = load %struct.GCObject*, %struct.GCObject** %25, align 8
  call void @deletelist(%struct.lua_State* %23, %struct.GCObject* %26, %struct.GCObject* null)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @separatetobefnz(%struct.global_State*, i32) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.GCObject*, align 8
  %6 = alloca %struct.GCObject**, align 8
  %7 = alloca %struct.GCObject**, align 8
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.global_State*, %struct.global_State** %3, align 8
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 22
  store %struct.GCObject** %9, %struct.GCObject*** %6, align 8
  %10 = load %struct.global_State*, %struct.global_State** %3, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 28
  %12 = call %struct.GCObject** @findlast(%struct.GCObject** %11)
  store %struct.GCObject** %12, %struct.GCObject*** %7, align 8
  br label %13

; <label>:13:                                     ; preds = %58, %2
  %14 = load %struct.GCObject**, %struct.GCObject*** %6, align 8
  %15 = load %struct.GCObject*, %struct.GCObject** %14, align 8
  store %struct.GCObject* %15, %struct.GCObject** %5, align 8
  %16 = load %struct.global_State*, %struct.global_State** %3, align 8
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 34
  %18 = load %struct.GCObject*, %struct.GCObject** %17, align 8
  %19 = icmp ne %struct.GCObject* %15, %18
  br i1 %19, label %20, label %59

; <label>:20:                                     ; preds = %13
  %21 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %22 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %21, i32 0, i32 2
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

; <label>:30:                                     ; preds = %27
  %31 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %32 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %31, i32 0, i32 0
  store %struct.GCObject** %32, %struct.GCObject*** %6, align 8
  br label %58

; <label>:33:                                     ; preds = %27, %20
  %34 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %35 = load %struct.global_State*, %struct.global_State** %3, align 8
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %35, i32 0, i32 33
  %37 = load %struct.GCObject*, %struct.GCObject** %36, align 8
  %38 = icmp eq %struct.GCObject* %34, %37
  br i1 %38, label %39, label %45

; <label>:39:                                     ; preds = %33
  %40 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %41 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %40, i32 0, i32 0
  %42 = load %struct.GCObject*, %struct.GCObject** %41, align 8
  %43 = load %struct.global_State*, %struct.global_State** %3, align 8
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i32 0, i32 33
  store %struct.GCObject* %42, %struct.GCObject** %44, align 8
  br label %45

; <label>:45:                                     ; preds = %39, %33
  %46 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %47 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %46, i32 0, i32 0
  %48 = load %struct.GCObject*, %struct.GCObject** %47, align 8
  %49 = load %struct.GCObject**, %struct.GCObject*** %6, align 8
  store %struct.GCObject* %48, %struct.GCObject** %49, align 8
  %50 = load %struct.GCObject**, %struct.GCObject*** %7, align 8
  %51 = load %struct.GCObject*, %struct.GCObject** %50, align 8
  %52 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %53 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %52, i32 0, i32 0
  store %struct.GCObject* %51, %struct.GCObject** %53, align 8
  %54 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %55 = load %struct.GCObject**, %struct.GCObject*** %7, align 8
  store %struct.GCObject* %54, %struct.GCObject** %55, align 8
  %56 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %57 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %56, i32 0, i32 0
  store %struct.GCObject** %57, %struct.GCObject*** %7, align 8
  br label %58

; <label>:58:                                     ; preds = %45, %30
  br label %13

; <label>:59:                                     ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callallpendingfinalizers(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 7
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8
  store %struct.global_State* %6, %struct.global_State** %3, align 8
  br label %7

; <label>:7:                                      ; preds = %12, %1
  %8 = load %struct.global_State*, %struct.global_State** %3, align 8
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 28
  %10 = load %struct.GCObject*, %struct.GCObject** %9, align 8
  %11 = icmp ne %struct.GCObject* %10, null
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %7
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @GCTM(%struct.lua_State* %13)
  br label %7

; <label>:14:                                     ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deletelist(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.GCObject*, align 8
  %6 = alloca %struct.GCObject*, align 8
  %7 = alloca %struct.GCObject*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.GCObject* %1, %struct.GCObject** %5, align 8
  store %struct.GCObject* %2, %struct.GCObject** %6, align 8
  br label %8

; <label>:8:                                      ; preds = %12, %3
  %9 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %10 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  %11 = icmp ne %struct.GCObject* %9, %10
  br i1 %11, label %12, label %19

; <label>:12:                                     ; preds = %8
  %13 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %14 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %13, i32 0, i32 0
  %15 = load %struct.GCObject*, %struct.GCObject** %14, align 8
  store %struct.GCObject* %15, %struct.GCObject** %7, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %17 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  call void @freeobj(%struct.lua_State* %16, %struct.GCObject* %17)
  %18 = load %struct.GCObject*, %struct.GCObject** %7, align 8
  store %struct.GCObject* %18, %struct.GCObject** %5, align 8
  br label %8

; <label>:19:                                     ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_runtilstate(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 7
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8
  store %struct.global_State* %8, %struct.global_State** %5, align 8
  br label %9

; <label>:9:                                      ; preds = %19, %2
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.global_State*, %struct.global_State** %5, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 1, %14
  %16 = and i32 %10, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %9
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = call i64 @singlestep(%struct.lua_State* %20)
  br label %9

; <label>:22:                                     ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @singlestep(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 7
  %9 = load %struct.global_State*, %struct.global_State** %8, align 8
  store %struct.global_State* %9, %struct.global_State** %4, align 8
  %10 = load %struct.global_State*, %struct.global_State** %4, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 11
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  switch i32 %13, label %86 [
    i32 8, label %14
    i32 0, label %18
    i32 1, label %29
    i32 3, label %43
    i32 4, label %50
    i32 5, label %57
    i32 6, label %62
    i32 7, label %67
  ]

; <label>:14:                                     ; preds = %1
  %15 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @restartcollection(%struct.global_State* %15)
  %16 = load %struct.global_State*, %struct.global_State** %4, align 8
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 11
  store i8 0, i8* %17, align 1
  store i64 1, i64* %2, align 8
  br label %87

; <label>:18:                                     ; preds = %1
  %19 = load %struct.global_State*, %struct.global_State** %4, align 8
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i32 0, i32 23
  %21 = load %struct.GCObject*, %struct.GCObject** %20, align 8
  %22 = icmp eq %struct.GCObject* %21, null
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %18
  %24 = load %struct.global_State*, %struct.global_State** %4, align 8
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i32 0, i32 11
  store i8 1, i8* %25, align 1
  store i64 0, i64* %2, align 8
  br label %87

; <label>:26:                                     ; preds = %18
  %27 = load %struct.global_State*, %struct.global_State** %4, align 8
  %28 = call i64 @propagatemark(%struct.global_State* %27)
  store i64 %28, i64* %2, align 8
  br label %87

; <label>:29:                                     ; preds = %1
  %30 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %31 = call i64 @atomic(%struct.lua_State* %30)
  store i64 %31, i64* %5, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @entersweep(%struct.lua_State* %32)
  %33 = load %struct.global_State*, %struct.global_State** %4, align 8
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.global_State*, %struct.global_State** %4, align 8
  %37 = getelementptr inbounds %struct.global_State, %struct.global_State* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.global_State*, %struct.global_State** %4, align 8
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %40, i32 0, i32 4
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* %5, align 8
  store i64 %42, i64* %2, align 8
  br label %87

; <label>:43:                                     ; preds = %1
  %44 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %45 = load %struct.global_State*, %struct.global_State** %4, align 8
  %46 = load %struct.global_State*, %struct.global_State** %4, align 8
  %47 = getelementptr inbounds %struct.global_State, %struct.global_State* %46, i32 0, i32 22
  %48 = call i32 @sweepstep(%struct.lua_State* %44, %struct.global_State* %45, i32 4, %struct.GCObject** %47)
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %2, align 8
  br label %87

; <label>:50:                                     ; preds = %1
  %51 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %52 = load %struct.global_State*, %struct.global_State** %4, align 8
  %53 = load %struct.global_State*, %struct.global_State** %4, align 8
  %54 = getelementptr inbounds %struct.global_State, %struct.global_State* %53, i32 0, i32 28
  %55 = call i32 @sweepstep(%struct.lua_State* %51, %struct.global_State* %52, i32 5, %struct.GCObject** %54)
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %2, align 8
  br label %87

; <label>:57:                                     ; preds = %1
  %58 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %59 = load %struct.global_State*, %struct.global_State** %4, align 8
  %60 = call i32 @sweepstep(%struct.lua_State* %58, %struct.global_State* %59, i32 6, %struct.GCObject** null)
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %2, align 8
  br label %87

; <label>:62:                                     ; preds = %1
  %63 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %64 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @checkSizes(%struct.lua_State* %63, %struct.global_State* %64)
  %65 = load %struct.global_State*, %struct.global_State** %4, align 8
  %66 = getelementptr inbounds %struct.global_State, %struct.global_State* %65, i32 0, i32 11
  store i8 7, i8* %66, align 1
  store i64 0, i64* %2, align 8
  br label %87

; <label>:67:                                     ; preds = %1
  %68 = load %struct.global_State*, %struct.global_State** %4, align 8
  %69 = getelementptr inbounds %struct.global_State, %struct.global_State* %68, i32 0, i32 28
  %70 = load %struct.GCObject*, %struct.GCObject** %69, align 8
  %71 = icmp ne %struct.GCObject* %70, null
  br i1 %71, label %72, label %83

; <label>:72:                                     ; preds = %67
  %73 = load %struct.global_State*, %struct.global_State** %4, align 8
  %74 = getelementptr inbounds %struct.global_State, %struct.global_State* %73, i32 0, i32 16
  %75 = load i8, i8* %74, align 2
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %83, label %77

; <label>:77:                                     ; preds = %72
  %78 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %79 = call i32 @runafewfinalizers(%struct.lua_State* %78, i32 10)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = mul nsw i32 %80, 50
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %2, align 8
  br label %87

; <label>:83:                                     ; preds = %72, %67
  %84 = load %struct.global_State*, %struct.global_State** %4, align 8
  %85 = getelementptr inbounds %struct.global_State, %struct.global_State* %84, i32 0, i32 11
  store i8 8, i8* %85, align 1
  store i64 0, i64* %2, align 8
  br label %87

; <label>:86:                                     ; preds = %1
  store i64 0, i64* %2, align 8
  br label %87

; <label>:87:                                     ; preds = %86, %83, %77, %62, %57, %50, %43, %29, %26, %23, %14
  %88 = load i64, i64* %2, align 8
  ret i64 %88
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_step(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 7
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8
  store %struct.global_State* %6, %struct.global_State** %3, align 8
  %7 = load %struct.global_State*, %struct.global_State** %3, align 8
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 15
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %29

; <label>:11:                                     ; preds = %1
  %12 = load %struct.global_State*, %struct.global_State** %3, align 8
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 12
  %14 = load i8, i8* %13, align 2
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %22, label %17

; <label>:17:                                     ; preds = %11
  %18 = load %struct.global_State*, %struct.global_State** %3, align 8
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %17, %11
  %23 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %24 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @genstep(%struct.lua_State* %23, %struct.global_State* %24)
  br label %28

; <label>:25:                                     ; preds = %17
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %27 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @incstep(%struct.lua_State* %26, %struct.global_State* %27)
  br label %28

; <label>:28:                                     ; preds = %25, %22
  br label %29

; <label>:29:                                     ; preds = %28, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @genstep(%struct.lua_State*, %struct.global_State*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.global_State* %1, %struct.global_State** %4, align 8
  %8 = load %struct.global_State*, %struct.global_State** %4, align 8
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %2
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @stepgenfull(%struct.lua_State* %13, %struct.global_State* %14)
  br label %76

; <label>:15:                                     ; preds = %2
  %16 = load %struct.global_State*, %struct.global_State** %4, align 8
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = udiv i64 %19, 100
  %21 = load %struct.global_State*, %struct.global_State** %4, align 8
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i32 0, i32 14
  %23 = load i8, i8* %22, align 8
  %24 = zext i8 %23 to i32
  %25 = mul nsw i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %20, %26
  store i64 %27, i64* %6, align 8
  %28 = load %struct.global_State*, %struct.global_State** %4, align 8
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %68

; <label>:32:                                     ; preds = %15
  %33 = load %struct.global_State*, %struct.global_State** %4, align 8
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.global_State*, %struct.global_State** %4, align 8
  %37 = getelementptr inbounds %struct.global_State, %struct.global_State* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %40, %41
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %68

; <label>:44:                                     ; preds = %32
  %45 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %46 = load %struct.global_State*, %struct.global_State** %4, align 8
  %47 = call i64 @fullgen(%struct.lua_State* %45, %struct.global_State* %46)
  store i64 %47, i64* %7, align 8
  %48 = load %struct.global_State*, %struct.global_State** %4, align 8
  %49 = getelementptr inbounds %struct.global_State, %struct.global_State* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.global_State*, %struct.global_State** %4, align 8
  %52 = getelementptr inbounds %struct.global_State, %struct.global_State* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = udiv i64 %56, 2
  %58 = add i64 %55, %57
  %59 = icmp ult i64 %54, %58
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %44
  %61 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @setminordebt(%struct.global_State* %61)
  br label %67

; <label>:62:                                     ; preds = %44
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.global_State*, %struct.global_State** %4, align 8
  %65 = getelementptr inbounds %struct.global_State, %struct.global_State* %64, i32 0, i32 5
  store i64 %63, i64* %65, align 8
  %66 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @setpause(%struct.global_State* %66)
  br label %67

; <label>:67:                                     ; preds = %62, %60
  br label %75

; <label>:68:                                     ; preds = %32, %15
  %69 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %70 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @youngcollection(%struct.lua_State* %69, %struct.global_State* %70)
  %71 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @setminordebt(%struct.global_State* %71)
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.global_State*, %struct.global_State** %4, align 8
  %74 = getelementptr inbounds %struct.global_State, %struct.global_State* %73, i32 0, i32 4
  store i64 %72, i64* %74, align 8
  br label %75

; <label>:75:                                     ; preds = %68, %67
  br label %76

; <label>:76:                                     ; preds = %75, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @incstep(%struct.lua_State*, %struct.global_State*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.global_State* %1, %struct.global_State** %4, align 8
  %9 = load %struct.global_State*, %struct.global_State** %4, align 8
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i32 0, i32 18
  %11 = load i8, i8* %10, align 4
  %12 = zext i8 %11 to i32
  %13 = mul nsw i32 %12, 4
  %14 = or i32 %13, 1
  store i32 %14, i32* %5, align 4
  %15 = load %struct.global_State*, %struct.global_State** %4, align 8
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = udiv i64 %17, 16
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %18, %20
  store i64 %21, i64* %6, align 8
  %22 = load %struct.global_State*, %struct.global_State** %4, align 8
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %22, i32 0, i32 19
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i64
  %26 = icmp ule i64 %25, 62
  br i1 %26, label %27, label %38

; <label>:27:                                     ; preds = %2
  %28 = load %struct.global_State*, %struct.global_State** %4, align 8
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i32 0, i32 19
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = zext i32 %31 to i64
  %33 = shl i64 1, %32
  %34 = udiv i64 %33, 16
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %34, %36
  br label %39

; <label>:38:                                     ; preds = %2
  br label %39

; <label>:39:                                     ; preds = %38, %27
  %40 = phi i64 [ %37, %27 ], [ 9223372036854775807, %38 ]
  store i64 %40, i64* %7, align 8
  br label %41

; <label>:41:                                     ; preds = %58, %39
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %43 = call i64 @singlestep(%struct.lua_State* %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %6, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %6, align 8
  br label %47

; <label>:47:                                     ; preds = %41
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sub nsw i64 0, %49
  %51 = icmp sgt i64 %48, %50
  br i1 %51, label %52, label %58

; <label>:52:                                     ; preds = %47
  %53 = load %struct.global_State*, %struct.global_State** %4, align 8
  %54 = getelementptr inbounds %struct.global_State, %struct.global_State* %53, i32 0, i32 11
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 8
  br label %58

; <label>:58:                                     ; preds = %52, %47
  %59 = phi i1 [ false, %47 ], [ %57, %52 ]
  br i1 %59, label %41, label %60

; <label>:60:                                     ; preds = %58
  %61 = load %struct.global_State*, %struct.global_State** %4, align 8
  %62 = getelementptr inbounds %struct.global_State, %struct.global_State* %61, i32 0, i32 11
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 8
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %60
  %67 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @setpause(%struct.global_State* %67)
  br label %76

; <label>:68:                                     ; preds = %60
  %69 = load i64, i64* %6, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = sdiv i64 %69, %71
  %73 = mul i64 %72, 16
  store i64 %73, i64* %6, align 8
  %74 = load %struct.global_State*, %struct.global_State** %4, align 8
  %75 = load i64, i64* %6, align 8
  call void @luaE_setdebt(%struct.global_State* %74, i64 %75)
  br label %76

; <label>:76:                                     ; preds = %68, %66
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaC_fullgc(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 7
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8
  store %struct.global_State* %8, %struct.global_State** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = trunc i32 %9 to i8
  %11 = load %struct.global_State*, %struct.global_State** %5, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 16
  store i8 %10, i8* %12, align 2
  %13 = load %struct.global_State*, %struct.global_State** %5, align 8
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i32 0, i32 12
  %15 = load i8, i8* %14, align 2
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %2
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = load %struct.global_State*, %struct.global_State** %5, align 8
  call void @fullinc(%struct.lua_State* %19, %struct.global_State* %20)
  br label %25

; <label>:21:                                     ; preds = %2
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %23 = load %struct.global_State*, %struct.global_State** %5, align 8
  %24 = call i64 @fullgen(%struct.lua_State* %22, %struct.global_State* %23)
  br label %25

; <label>:25:                                     ; preds = %21, %18
  %26 = load %struct.global_State*, %struct.global_State** %5, align 8
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 16
  store i8 0, i8* %27, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fullinc(%struct.lua_State*, %struct.global_State*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.global_State* %1, %struct.global_State** %4, align 8
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i32 0, i32 11
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp sle i32 %8, 2
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %2
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @entersweep(%struct.lua_State* %11)
  br label %12

; <label>:12:                                     ; preds = %10, %2
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_runtilstate(%struct.lua_State* %13, i32 256)
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_runtilstate(%struct.lua_State* %14, i32 128)
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_runtilstate(%struct.lua_State* %15, i32 256)
  %16 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @setpause(%struct.global_State* %16)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fullgen(%struct.lua_State*, %struct.global_State*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.global_State* %1, %struct.global_State** %4, align 8
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @enterinc(%struct.global_State* %5)
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load %struct.global_State*, %struct.global_State** %4, align 8
  %8 = call i64 @entergen(%struct.lua_State* %6, %struct.global_State* %7)
  ret i64 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.GCObject** @sweeplist(%struct.lua_State*, %struct.GCObject**, i32, i32*) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.GCObject**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.global_State*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.GCObject*, align 8
  %14 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.GCObject** %1, %struct.GCObject*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 7
  %17 = load %struct.global_State*, %struct.global_State** %16, align 8
  store %struct.global_State* %17, %struct.global_State** %9, align 8
  %18 = load %struct.global_State*, %struct.global_State** %9, align 8
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 10
  %20 = load i8, i8* %19, align 4
  %21 = zext i8 %20 to i32
  %22 = xor i32 %21, 24
  store i32 %22, i32* %10, align 4
  %23 = load %struct.global_State*, %struct.global_State** %9, align 8
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 10
  %25 = load i8, i8* %24, align 4
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 24
  %28 = trunc i32 %27 to i8
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %30

; <label>:30:                                     ; preds = %69, %4
  %31 = load %struct.GCObject**, %struct.GCObject*** %6, align 8
  %32 = load %struct.GCObject*, %struct.GCObject** %31, align 8
  %33 = icmp ne %struct.GCObject* %32, null
  br i1 %33, label %34, label %38

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br label %38

; <label>:38:                                     ; preds = %34, %30
  %39 = phi i1 [ false, %30 ], [ %37, %34 ]
  br i1 %39, label %40, label %72

; <label>:40:                                     ; preds = %38
  %41 = load %struct.GCObject**, %struct.GCObject*** %6, align 8
  %42 = load %struct.GCObject*, %struct.GCObject** %41, align 8
  store %struct.GCObject* %42, %struct.GCObject** %13, align 8
  %43 = load %struct.GCObject*, %struct.GCObject** %13, align 8
  %44 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %43, i32 0, i32 2
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

; <label>:51:                                     ; preds = %40
  %52 = load %struct.GCObject*, %struct.GCObject** %13, align 8
  %53 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %52, i32 0, i32 0
  %54 = load %struct.GCObject*, %struct.GCObject** %53, align 8
  %55 = load %struct.GCObject**, %struct.GCObject*** %6, align 8
  store %struct.GCObject* %54, %struct.GCObject** %55, align 8
  %56 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %57 = load %struct.GCObject*, %struct.GCObject** %13, align 8
  call void @freeobj(%struct.lua_State* %56, %struct.GCObject* %57)
  br label %68

; <label>:58:                                     ; preds = %40
  %59 = load i32, i32* %14, align 4
  %60 = and i32 %59, -64
  %61 = load i32, i32* %12, align 4
  %62 = or i32 %60, %61
  %63 = trunc i32 %62 to i8
  %64 = load %struct.GCObject*, %struct.GCObject** %13, align 8
  %65 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %64, i32 0, i32 2
  store i8 %63, i8* %65, align 1
  %66 = load %struct.GCObject*, %struct.GCObject** %13, align 8
  %67 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %66, i32 0, i32 0
  store %struct.GCObject** %67, %struct.GCObject*** %6, align 8
  br label %68

; <label>:68:                                     ; preds = %58, %51
  br label %69

; <label>:69:                                     ; preds = %68
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %30

; <label>:72:                                     ; preds = %38
  %73 = load i32*, i32** %8, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

; <label>:75:                                     ; preds = %72
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  br label %78

; <label>:78:                                     ; preds = %75, %72
  %79 = load %struct.GCObject**, %struct.GCObject*** %6, align 8
  %80 = load %struct.GCObject*, %struct.GCObject** %79, align 8
  %81 = icmp eq %struct.GCObject* %80, null
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %78
  br label %85

; <label>:83:                                     ; preds = %78
  %84 = load %struct.GCObject**, %struct.GCObject*** %6, align 8
  br label %85

; <label>:85:                                     ; preds = %83, %82
  %86 = phi %struct.GCObject** [ null, %82 ], [ %84, %83 ]
  ret %struct.GCObject** %86
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeobj(%struct.lua_State*, %struct.GCObject*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.GCObject*, align 8
  %5 = alloca %struct.Udata*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.GCObject* %1, %struct.GCObject** %4, align 8
  %6 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %7 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i32 0, i32 1
  %8 = load i8, i8* %7, align 8
  %9 = zext i8 %8 to i32
  switch i32 %9, label %115 [
    i32 10, label %10
    i32 9, label %15
    i32 25, label %15
    i32 22, label %20
    i32 54, label %34
    i32 5, label %48
    i32 8, label %53
    i32 7, label %58
    i32 20, label %84
    i32 36, label %102
  ]

; <label>:10:                                     ; preds = %2
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %13 = bitcast %struct.GCObject* %12 to %union.GCUnion*
  %14 = bitcast %union.GCUnion* %13 to %struct.Proto*
  call void @luaF_freeproto(%struct.lua_State* %11, %struct.Proto* %14)
  br label %116

; <label>:15:                                     ; preds = %2, %2
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %18 = bitcast %struct.GCObject* %17 to %union.GCUnion*
  %19 = bitcast %union.GCUnion* %18 to %struct.UpVal*
  call void @freeupval(%struct.lua_State* %16, %struct.UpVal* %19)
  br label %116

; <label>:20:                                     ; preds = %2
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %23 = bitcast %struct.GCObject* %22 to i8*
  %24 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %25 = bitcast %struct.GCObject* %24 to %union.GCUnion*
  %26 = bitcast %union.GCUnion* %25 to %union.Closure*
  %27 = bitcast %union.Closure* %26 to %struct.LClosure*
  %28 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %27, i32 0, i32 3
  %29 = load i8, i8* %28, align 2
  %30 = zext i8 %29 to i32
  %31 = mul nsw i32 8, %30
  %32 = add nsw i32 32, %31
  %33 = sext i32 %32 to i64
  call void @luaM_free_(%struct.lua_State* %21, i8* %23, i64 %33)
  br label %116

; <label>:34:                                     ; preds = %2
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %37 = bitcast %struct.GCObject* %36 to i8*
  %38 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %39 = bitcast %struct.GCObject* %38 to %union.GCUnion*
  %40 = bitcast %union.GCUnion* %39 to %union.Closure*
  %41 = bitcast %union.Closure* %40 to %struct.CClosure*
  %42 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %41, i32 0, i32 3
  %43 = load i8, i8* %42, align 2
  %44 = zext i8 %43 to i32
  %45 = mul nsw i32 16, %44
  %46 = add nsw i32 32, %45
  %47 = sext i32 %46 to i64
  call void @luaM_free_(%struct.lua_State* %35, i8* %37, i64 %47)
  br label %116

; <label>:48:                                     ; preds = %2
  %49 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %50 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %51 = bitcast %struct.GCObject* %50 to %union.GCUnion*
  %52 = bitcast %union.GCUnion* %51 to %struct.Table*
  call void @luaH_free(%struct.lua_State* %49, %struct.Table* %52)
  br label %116

; <label>:53:                                     ; preds = %2
  %54 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %55 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %56 = bitcast %struct.GCObject* %55 to %union.GCUnion*
  %57 = bitcast %union.GCUnion* %56 to %struct.lua_State*
  call void @luaE_freethread(%struct.lua_State* %54, %struct.lua_State* %57)
  br label %116

; <label>:58:                                     ; preds = %2
  %59 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %60 = bitcast %struct.GCObject* %59 to %union.GCUnion*
  %61 = bitcast %union.GCUnion* %60 to %struct.Udata*
  store %struct.Udata* %61, %struct.Udata** %5, align 8
  %62 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %63 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %64 = bitcast %struct.GCObject* %63 to i8*
  %65 = load %struct.Udata*, %struct.Udata** %5, align 8
  %66 = getelementptr inbounds %struct.Udata, %struct.Udata* %65, i32 0, i32 3
  %67 = load i16, i16* %66, align 2
  %68 = zext i16 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

; <label>:70:                                     ; preds = %58
  br label %78

; <label>:71:                                     ; preds = %58
  %72 = load %struct.Udata*, %struct.Udata** %5, align 8
  %73 = getelementptr inbounds %struct.Udata, %struct.Udata* %72, i32 0, i32 3
  %74 = load i16, i16* %73, align 2
  %75 = zext i16 %74 to i64
  %76 = mul i64 16, %75
  %77 = add i64 40, %76
  br label %78

; <label>:78:                                     ; preds = %71, %70
  %79 = phi i64 [ 32, %70 ], [ %77, %71 ]
  %80 = load %struct.Udata*, %struct.Udata** %5, align 8
  %81 = getelementptr inbounds %struct.Udata, %struct.Udata* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %79, %82
  call void @luaM_free_(%struct.lua_State* %62, i8* %64, i64 %83)
  br label %116

; <label>:84:                                     ; preds = %2
  %85 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %86 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %87 = bitcast %struct.GCObject* %86 to %union.GCUnion*
  %88 = bitcast %union.GCUnion* %87 to %struct.TString*
  call void @luaS_remove(%struct.lua_State* %85, %struct.TString* %88)
  %89 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %90 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %91 = bitcast %struct.GCObject* %90 to i8*
  %92 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %93 = bitcast %struct.GCObject* %92 to %union.GCUnion*
  %94 = bitcast %union.GCUnion* %93 to %struct.TString*
  %95 = getelementptr inbounds %struct.TString, %struct.TString* %94, i32 0, i32 4
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 1
  %101 = add i64 24, %100
  call void @luaM_free_(%struct.lua_State* %89, i8* %91, i64 %101)
  br label %116

; <label>:102:                                    ; preds = %2
  %103 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %104 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %105 = bitcast %struct.GCObject* %104 to i8*
  %106 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %107 = bitcast %struct.GCObject* %106 to %union.GCUnion*
  %108 = bitcast %union.GCUnion* %107 to %struct.TString*
  %109 = getelementptr inbounds %struct.TString, %struct.TString* %108, i32 0, i32 6
  %110 = bitcast %union.anon* %109 to i64*
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, 1
  %113 = mul i64 %112, 1
  %114 = add i64 24, %113
  call void @luaM_free_(%struct.lua_State* %103, i8* %105, i64 %114)
  br label %116

; <label>:115:                                    ; preds = %2
  br label %116

; <label>:116:                                    ; preds = %115, %102, %84, %78, %53, %48, %34, %20, %15, %10
  ret void
}

declare hidden void @luaF_freeproto(%struct.lua_State*, %struct.Proto*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeupval(%struct.lua_State*, %struct.UpVal*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.UpVal*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.UpVal* %1, %struct.UpVal** %4, align 8
  %5 = load %struct.UpVal*, %struct.UpVal** %4, align 8
  %6 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %5, i32 0, i32 3
  %7 = load %struct.TValue*, %struct.TValue** %6, align 8
  %8 = load %struct.UpVal*, %struct.UpVal** %4, align 8
  %9 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %8, i32 0, i32 4
  %10 = bitcast %union.anon.4* %9 to %struct.TValue*
  %11 = icmp ne %struct.TValue* %7, %10
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %2
  %13 = load %struct.UpVal*, %struct.UpVal** %4, align 8
  call void @luaF_unlinkupval(%struct.UpVal* %13)
  br label %14

; <label>:14:                                     ; preds = %12, %2
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = load %struct.UpVal*, %struct.UpVal** %4, align 8
  %17 = bitcast %struct.UpVal* %16 to i8*
  call void @luaM_free_(%struct.lua_State* %15, i8* %17, i64 40)
  ret void
}

declare hidden void @luaM_free_(%struct.lua_State*, i8*, i64) #1

declare hidden void @luaH_free(%struct.lua_State*, %struct.Table*) #1

declare hidden void @luaE_freethread(%struct.lua_State*, %struct.lua_State*) #1

declare hidden void @luaS_remove(%struct.lua_State*, %struct.TString*) #1

declare hidden void @luaF_unlinkupval(%struct.UpVal*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atomic(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.GCObject*, align 8
  %6 = alloca %struct.GCObject*, align 8
  %7 = alloca %struct.GCObject*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 7
  %10 = load %struct.global_State*, %struct.global_State** %9, align 8
  store %struct.global_State* %10, %struct.global_State** %3, align 8
  store i64 0, i64* %4, align 8
  %11 = load %struct.global_State*, %struct.global_State** %3, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 24
  %13 = load %struct.GCObject*, %struct.GCObject** %12, align 8
  store %struct.GCObject* %13, %struct.GCObject** %7, align 8
  %14 = load %struct.global_State*, %struct.global_State** %3, align 8
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %14, i32 0, i32 24
  store %struct.GCObject* null, %struct.GCObject** %15, align 8
  %16 = load %struct.global_State*, %struct.global_State** %3, align 8
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 11
  store i8 2, i8* %17, align 1
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 2
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 24
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

; <label>:24:                                     ; preds = %1
  %25 = load %struct.global_State*, %struct.global_State** %3, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %27 = bitcast %struct.lua_State* %26 to %union.GCUnion*
  %28 = bitcast %union.GCUnion* %27 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %25, %struct.GCObject* %28)
  br label %29

; <label>:29:                                     ; preds = %24, %1
  %30 = load %struct.global_State*, %struct.global_State** %3, align 8
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 8
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 64
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %55

; <label>:37:                                     ; preds = %29
  %38 = load %struct.global_State*, %struct.global_State** %3, align 8
  %39 = getelementptr inbounds %struct.global_State, %struct.global_State* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %39, i32 0, i32 0
  %41 = bitcast %union.Value* %40 to %struct.GCObject**
  %42 = load %struct.GCObject*, %struct.GCObject** %41, align 8
  %43 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %42, i32 0, i32 2
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 24
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

; <label>:48:                                     ; preds = %37
  %49 = load %struct.global_State*, %struct.global_State** %3, align 8
  %50 = load %struct.global_State*, %struct.global_State** %3, align 8
  %51 = getelementptr inbounds %struct.global_State, %struct.global_State* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TValue, %struct.TValue* %51, i32 0, i32 0
  %53 = bitcast %union.Value* %52 to %struct.GCObject**
  %54 = load %struct.GCObject*, %struct.GCObject** %53, align 8
  call void @reallymarkobject(%struct.global_State* %49, %struct.GCObject* %54)
  br label %55

; <label>:55:                                     ; preds = %48, %37, %29
  %56 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @markmt(%struct.global_State* %56)
  %57 = load %struct.global_State*, %struct.global_State** %3, align 8
  %58 = call i64 @propagateall(%struct.global_State* %57)
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %4, align 8
  %61 = load %struct.global_State*, %struct.global_State** %3, align 8
  %62 = call i32 @remarkupvals(%struct.global_State* %61)
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %4, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %4, align 8
  %66 = load %struct.global_State*, %struct.global_State** %3, align 8
  %67 = call i64 @propagateall(%struct.global_State* %66)
  %68 = load i64, i64* %4, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %4, align 8
  %70 = load %struct.GCObject*, %struct.GCObject** %7, align 8
  %71 = load %struct.global_State*, %struct.global_State** %3, align 8
  %72 = getelementptr inbounds %struct.global_State, %struct.global_State* %71, i32 0, i32 23
  store %struct.GCObject* %70, %struct.GCObject** %72, align 8
  %73 = load %struct.global_State*, %struct.global_State** %3, align 8
  %74 = call i64 @propagateall(%struct.global_State* %73)
  %75 = load i64, i64* %4, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %4, align 8
  %77 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @convergeephemerons(%struct.global_State* %77)
  %78 = load %struct.global_State*, %struct.global_State** %3, align 8
  %79 = load %struct.global_State*, %struct.global_State** %3, align 8
  %80 = getelementptr inbounds %struct.global_State, %struct.global_State* %79, i32 0, i32 25
  %81 = load %struct.GCObject*, %struct.GCObject** %80, align 8
  call void @clearbyvalues(%struct.global_State* %78, %struct.GCObject* %81, %struct.GCObject* null)
  %82 = load %struct.global_State*, %struct.global_State** %3, align 8
  %83 = load %struct.global_State*, %struct.global_State** %3, align 8
  %84 = getelementptr inbounds %struct.global_State, %struct.global_State* %83, i32 0, i32 27
  %85 = load %struct.GCObject*, %struct.GCObject** %84, align 8
  call void @clearbyvalues(%struct.global_State* %82, %struct.GCObject* %85, %struct.GCObject* null)
  %86 = load %struct.global_State*, %struct.global_State** %3, align 8
  %87 = getelementptr inbounds %struct.global_State, %struct.global_State* %86, i32 0, i32 25
  %88 = load %struct.GCObject*, %struct.GCObject** %87, align 8
  store %struct.GCObject* %88, %struct.GCObject** %5, align 8
  %89 = load %struct.global_State*, %struct.global_State** %3, align 8
  %90 = getelementptr inbounds %struct.global_State, %struct.global_State* %89, i32 0, i32 27
  %91 = load %struct.GCObject*, %struct.GCObject** %90, align 8
  store %struct.GCObject* %91, %struct.GCObject** %6, align 8
  %92 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @separatetobefnz(%struct.global_State* %92, i32 0)
  %93 = load %struct.global_State*, %struct.global_State** %3, align 8
  %94 = call i64 @markbeingfnz(%struct.global_State* %93)
  %95 = load i64, i64* %4, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %4, align 8
  %97 = load %struct.global_State*, %struct.global_State** %3, align 8
  %98 = call i64 @propagateall(%struct.global_State* %97)
  %99 = load i64, i64* %4, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %4, align 8
  %101 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @convergeephemerons(%struct.global_State* %101)
  %102 = load %struct.global_State*, %struct.global_State** %3, align 8
  %103 = load %struct.global_State*, %struct.global_State** %3, align 8
  %104 = getelementptr inbounds %struct.global_State, %struct.global_State* %103, i32 0, i32 26
  %105 = load %struct.GCObject*, %struct.GCObject** %104, align 8
  call void @clearbykeys(%struct.global_State* %102, %struct.GCObject* %105)
  %106 = load %struct.global_State*, %struct.global_State** %3, align 8
  %107 = load %struct.global_State*, %struct.global_State** %3, align 8
  %108 = getelementptr inbounds %struct.global_State, %struct.global_State* %107, i32 0, i32 27
  %109 = load %struct.GCObject*, %struct.GCObject** %108, align 8
  call void @clearbykeys(%struct.global_State* %106, %struct.GCObject* %109)
  %110 = load %struct.global_State*, %struct.global_State** %3, align 8
  %111 = load %struct.global_State*, %struct.global_State** %3, align 8
  %112 = getelementptr inbounds %struct.global_State, %struct.global_State* %111, i32 0, i32 25
  %113 = load %struct.GCObject*, %struct.GCObject** %112, align 8
  %114 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  call void @clearbyvalues(%struct.global_State* %110, %struct.GCObject* %113, %struct.GCObject* %114)
  %115 = load %struct.global_State*, %struct.global_State** %3, align 8
  %116 = load %struct.global_State*, %struct.global_State** %3, align 8
  %117 = getelementptr inbounds %struct.global_State, %struct.global_State* %116, i32 0, i32 27
  %118 = load %struct.GCObject*, %struct.GCObject** %117, align 8
  %119 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  call void @clearbyvalues(%struct.global_State* %115, %struct.GCObject* %118, %struct.GCObject* %119)
  %120 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @luaS_clearcache(%struct.global_State* %120)
  %121 = load %struct.global_State*, %struct.global_State** %3, align 8
  %122 = getelementptr inbounds %struct.global_State, %struct.global_State* %121, i32 0, i32 10
  %123 = load i8, i8* %122, align 4
  %124 = zext i8 %123 to i32
  %125 = xor i32 %124, 24
  %126 = trunc i32 %125 to i8
  %127 = load %struct.global_State*, %struct.global_State** %3, align 8
  %128 = getelementptr inbounds %struct.global_State, %struct.global_State* %127, i32 0, i32 10
  store i8 %126, i8* %128, align 4
  %129 = load i64, i64* %4, align 8
  ret i64 %129
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atomic2gen(%struct.lua_State*, %struct.global_State*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.global_State* %1, %struct.global_State** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = load %struct.global_State*, %struct.global_State** %4, align 8
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 20
  call void @sweep2old(%struct.lua_State* %5, %struct.GCObject** %7)
  %8 = load %struct.global_State*, %struct.global_State** %4, align 8
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 20
  %10 = load %struct.GCObject*, %struct.GCObject** %9, align 8
  %11 = load %struct.global_State*, %struct.global_State** %4, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 30
  store %struct.GCObject* %10, %struct.GCObject** %12, align 8
  %13 = load %struct.global_State*, %struct.global_State** %4, align 8
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i32 0, i32 31
  store %struct.GCObject* %10, %struct.GCObject** %14, align 8
  %15 = load %struct.global_State*, %struct.global_State** %4, align 8
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 32
  store %struct.GCObject* %10, %struct.GCObject** %16, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = load %struct.global_State*, %struct.global_State** %4, align 8
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 22
  call void @sweep2old(%struct.lua_State* %17, %struct.GCObject** %19)
  %20 = load %struct.global_State*, %struct.global_State** %4, align 8
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %20, i32 0, i32 22
  %22 = load %struct.GCObject*, %struct.GCObject** %21, align 8
  %23 = load %struct.global_State*, %struct.global_State** %4, align 8
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 33
  store %struct.GCObject* %22, %struct.GCObject** %24, align 8
  %25 = load %struct.global_State*, %struct.global_State** %4, align 8
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i32 0, i32 34
  store %struct.GCObject* %22, %struct.GCObject** %26, align 8
  %27 = load %struct.global_State*, %struct.global_State** %4, align 8
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i32 0, i32 35
  store %struct.GCObject* %22, %struct.GCObject** %28, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %30 = load %struct.global_State*, %struct.global_State** %4, align 8
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %30, i32 0, i32 28
  call void @sweep2old(%struct.lua_State* %29, %struct.GCObject** %31)
  %32 = load %struct.global_State*, %struct.global_State** %4, align 8
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i32 0, i32 12
  store i8 1, i8* %33, align 2
  %34 = load %struct.global_State*, %struct.global_State** %4, align 8
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.global_State*, %struct.global_State** %4, align 8
  %37 = getelementptr inbounds %struct.global_State, %struct.global_State* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.global_State*, %struct.global_State** %4, align 8
  %40 = getelementptr inbounds %struct.global_State, %struct.global_State* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load %struct.global_State*, %struct.global_State** %4, align 8
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i32 0, i32 4
  store i64 %42, i64* %44, align 8
  %45 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %46 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @finishgencycle(%struct.lua_State* %45, %struct.global_State* %46)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @markmt(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  %3 = alloca i32, align 4
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %39, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 9
  br i1 %6, label %7, label %42

; <label>:7:                                      ; preds = %4
  %8 = load %struct.global_State*, %struct.global_State** %2, align 8
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 41
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %9, i64 0, i64 %11
  %13 = load %struct.Table*, %struct.Table** %12, align 8
  %14 = icmp ne %struct.Table* %13, null
  br i1 %14, label %15, label %38

; <label>:15:                                     ; preds = %7
  %16 = load %struct.global_State*, %struct.global_State** %2, align 8
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 41
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %17, i64 0, i64 %19
  %21 = load %struct.Table*, %struct.Table** %20, align 8
  %22 = getelementptr inbounds %struct.Table, %struct.Table* %21, i32 0, i32 2
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %15
  %28 = load %struct.global_State*, %struct.global_State** %2, align 8
  %29 = load %struct.global_State*, %struct.global_State** %2, align 8
  %30 = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 41
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %30, i64 0, i64 %32
  %34 = load %struct.Table*, %struct.Table** %33, align 8
  %35 = bitcast %struct.Table* %34 to %union.GCUnion*
  %36 = bitcast %union.GCUnion* %35 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %28, %struct.GCObject* %36)
  br label %37

; <label>:37:                                     ; preds = %27, %15
  br label %38

; <label>:38:                                     ; preds = %37, %7
  br label %39

; <label>:39:                                     ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %4

; <label>:42:                                     ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @propagateall(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  %3 = alloca i64, align 8
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

; <label>:4:                                      ; preds = %9, %1
  %5 = load %struct.global_State*, %struct.global_State** %2, align 8
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i32 0, i32 23
  %7 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  %8 = icmp ne %struct.GCObject* %7, null
  br i1 %8, label %9, label %14

; <label>:9:                                      ; preds = %4
  %10 = load %struct.global_State*, %struct.global_State** %2, align 8
  %11 = call i64 @propagatemark(%struct.global_State* %10)
  %12 = load i64, i64* %3, align 8
  %13 = add i64 %12, %11
  store i64 %13, i64* %3, align 8
  br label %4

; <label>:14:                                     ; preds = %4
  %15 = load i64, i64* %3, align 8
  ret i64 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remarkupvals(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_State**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.UpVal*, align 8
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  %7 = load %struct.global_State*, %struct.global_State** %2, align 8
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 36
  store %struct.lua_State** %8, %struct.lua_State*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

; <label>:9:                                      ; preds = %91, %1
  %10 = load %struct.lua_State**, %struct.lua_State*** %4, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8
  store %struct.lua_State* %11, %struct.lua_State** %3, align 8
  %12 = icmp ne %struct.lua_State* %11, null
  br i1 %12, label %13, label %92

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 2
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 56
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

; <label>:22:                                     ; preds = %13
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 12
  %25 = load %struct.UpVal*, %struct.UpVal** %24, align 8
  %26 = icmp ne %struct.UpVal* %25, null
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %22
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %28, i32 0, i32 14
  store %struct.lua_State** %29, %struct.lua_State*** %4, align 8
  br label %91

; <label>:30:                                     ; preds = %22, %13
  %31 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 14
  %33 = load %struct.lua_State*, %struct.lua_State** %32, align 8
  %34 = load %struct.lua_State**, %struct.lua_State*** %4, align 8
  store %struct.lua_State* %33, %struct.lua_State** %34, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 14
  store %struct.lua_State* %35, %struct.lua_State** %37, align 8
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 12
  %40 = load %struct.UpVal*, %struct.UpVal** %39, align 8
  store %struct.UpVal* %40, %struct.UpVal** %6, align 8
  br label %41

; <label>:41:                                     ; preds = %84, %30
  %42 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %43 = icmp ne %struct.UpVal* %42, null
  br i1 %43, label %44, label %90

; <label>:44:                                     ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  %47 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %48 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %47, i32 0, i32 2
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 24
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %83, label %53

; <label>:53:                                     ; preds = %44
  %54 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %55 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %54, i32 0, i32 3
  %56 = load %struct.TValue*, %struct.TValue** %55, align 8
  %57 = getelementptr inbounds %struct.TValue, %struct.TValue* %56, i32 0, i32 1
  %58 = load i8, i8* %57, align 8
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 64
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %82

; <label>:62:                                     ; preds = %53
  %63 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %64 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %63, i32 0, i32 3
  %65 = load %struct.TValue*, %struct.TValue** %64, align 8
  %66 = getelementptr inbounds %struct.TValue, %struct.TValue* %65, i32 0, i32 0
  %67 = bitcast %union.Value* %66 to %struct.GCObject**
  %68 = load %struct.GCObject*, %struct.GCObject** %67, align 8
  %69 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %68, i32 0, i32 2
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 24
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

; <label>:74:                                     ; preds = %62
  %75 = load %struct.global_State*, %struct.global_State** %2, align 8
  %76 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %77 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %76, i32 0, i32 3
  %78 = load %struct.TValue*, %struct.TValue** %77, align 8
  %79 = getelementptr inbounds %struct.TValue, %struct.TValue* %78, i32 0, i32 0
  %80 = bitcast %union.Value* %79 to %struct.GCObject**
  %81 = load %struct.GCObject*, %struct.GCObject** %80, align 8
  call void @reallymarkobject(%struct.global_State* %75, %struct.GCObject* %81)
  br label %82

; <label>:82:                                     ; preds = %74, %62, %53
  br label %83

; <label>:83:                                     ; preds = %82, %44
  br label %84

; <label>:84:                                     ; preds = %83
  %85 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %86 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %85, i32 0, i32 4
  %87 = bitcast %union.anon.4* %86 to %struct.anon.5*
  %88 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %87, i32 0, i32 0
  %89 = load %struct.UpVal*, %struct.UpVal** %88, align 8
  store %struct.UpVal* %89, %struct.UpVal** %6, align 8
  br label %41

; <label>:90:                                     ; preds = %41
  br label %91

; <label>:91:                                     ; preds = %90, %27
  br label %9

; <label>:92:                                     ; preds = %9
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convergeephemerons(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.GCObject*, align 8
  %5 = alloca %struct.GCObject*, align 8
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  br label %6

; <label>:6:                                      ; preds = %32, %1
  %7 = load %struct.global_State*, %struct.global_State** %2, align 8
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 26
  %9 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  store %struct.GCObject* %9, %struct.GCObject** %5, align 8
  %10 = load %struct.global_State*, %struct.global_State** %2, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 26
  store %struct.GCObject* null, %struct.GCObject** %11, align 8
  store i32 0, i32* %3, align 4
  br label %12

; <label>:12:                                     ; preds = %30, %6
  %13 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  store %struct.GCObject* %13, %struct.GCObject** %4, align 8
  %14 = icmp ne %struct.GCObject* %13, null
  br i1 %14, label %15, label %31

; <label>:15:                                     ; preds = %12
  %16 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %17 = bitcast %struct.GCObject* %16 to %union.GCUnion*
  %18 = bitcast %union.GCUnion* %17 to %struct.Table*
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %18, i32 0, i32 10
  %20 = load %struct.GCObject*, %struct.GCObject** %19, align 8
  store %struct.GCObject* %20, %struct.GCObject** %5, align 8
  %21 = load %struct.global_State*, %struct.global_State** %2, align 8
  %22 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %23 = bitcast %struct.GCObject* %22 to %union.GCUnion*
  %24 = bitcast %union.GCUnion* %23 to %struct.Table*
  %25 = call i32 @traverseephemeron(%struct.global_State* %21, %struct.Table* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %15
  %28 = load %struct.global_State*, %struct.global_State** %2, align 8
  %29 = call i64 @propagateall(%struct.global_State* %28)
  store i32 1, i32* %3, align 4
  br label %30

; <label>:30:                                     ; preds = %27, %15
  br label %12

; <label>:31:                                     ; preds = %12
  br label %32

; <label>:32:                                     ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %6, label %35

; <label>:35:                                     ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clearbyvalues(%struct.global_State*, %struct.GCObject*, %struct.GCObject*) #0 {
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca %struct.GCObject*, align 8
  %6 = alloca %struct.GCObject*, align 8
  %7 = alloca %struct.Table*, align 8
  %8 = alloca %union.Node*, align 8
  %9 = alloca %union.Node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TValue*, align 8
  store %struct.global_State* %0, %struct.global_State** %4, align 8
  store %struct.GCObject* %1, %struct.GCObject** %5, align 8
  store %struct.GCObject* %2, %struct.GCObject** %6, align 8
  br label %13

; <label>:13:                                     ; preds = %116, %3
  %14 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %15 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  %16 = icmp ne %struct.GCObject* %14, %15
  br i1 %16, label %17, label %122

; <label>:17:                                     ; preds = %13
  %18 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %19 = bitcast %struct.GCObject* %18 to %union.GCUnion*
  %20 = bitcast %union.GCUnion* %19 to %struct.Table*
  store %struct.Table* %20, %struct.Table** %7, align 8
  %21 = load %struct.Table*, %struct.Table** %7, align 8
  %22 = getelementptr inbounds %struct.Table, %struct.Table* %21, i32 0, i32 7
  %23 = load %union.Node*, %union.Node** %22, align 8
  %24 = load %struct.Table*, %struct.Table** %7, align 8
  %25 = getelementptr inbounds %struct.Table, %struct.Table* %24, i32 0, i32 4
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 1, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %union.Node, %union.Node* %23, i64 %29
  store %union.Node* %30, %union.Node** %9, align 8
  %31 = load %struct.Table*, %struct.Table** %7, align 8
  %32 = call i32 @luaH_realasize(%struct.Table* %31)
  store i32 %32, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %33

; <label>:33:                                     ; preds = %65, %17
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %68

; <label>:37:                                     ; preds = %33
  %38 = load %struct.Table*, %struct.Table** %7, align 8
  %39 = getelementptr inbounds %struct.Table, %struct.Table* %38, i32 0, i32 6
  %40 = load %struct.TValue*, %struct.TValue** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i64 %42
  store %struct.TValue* %43, %struct.TValue** %12, align 8
  %44 = load %struct.global_State*, %struct.global_State** %4, align 8
  %45 = load %struct.TValue*, %struct.TValue** %12, align 8
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i32 0, i32 1
  %47 = load i8, i8* %46, align 8
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 64
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

; <label>:51:                                     ; preds = %37
  %52 = load %struct.TValue*, %struct.TValue** %12, align 8
  %53 = getelementptr inbounds %struct.TValue, %struct.TValue* %52, i32 0, i32 0
  %54 = bitcast %union.Value* %53 to %struct.GCObject**
  %55 = load %struct.GCObject*, %struct.GCObject** %54, align 8
  br label %57

; <label>:56:                                     ; preds = %37
  br label %57

; <label>:57:                                     ; preds = %56, %51
  %58 = phi %struct.GCObject* [ %55, %51 ], [ null, %56 ]
  %59 = call i32 @iscleared(%struct.global_State* %44, %struct.GCObject* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

; <label>:61:                                     ; preds = %57
  %62 = load %struct.TValue*, %struct.TValue** %12, align 8
  %63 = getelementptr inbounds %struct.TValue, %struct.TValue* %62, i32 0, i32 1
  store i8 16, i8* %63, align 8
  br label %64

; <label>:64:                                     ; preds = %61, %57
  br label %65

; <label>:65:                                     ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %33

; <label>:68:                                     ; preds = %33
  %69 = load %struct.Table*, %struct.Table** %7, align 8
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %69, i32 0, i32 7
  %71 = load %union.Node*, %union.Node** %70, align 8
  %72 = getelementptr inbounds %union.Node, %union.Node* %71, i64 0
  store %union.Node* %72, %union.Node** %8, align 8
  br label %73

; <label>:73:                                     ; preds = %112, %68
  %74 = load %union.Node*, %union.Node** %8, align 8
  %75 = load %union.Node*, %union.Node** %9, align 8
  %76 = icmp ult %union.Node* %74, %75
  br i1 %76, label %77, label %115

; <label>:77:                                     ; preds = %73
  %78 = load %struct.global_State*, %struct.global_State** %4, align 8
  %79 = load %union.Node*, %union.Node** %8, align 8
  %80 = bitcast %union.Node* %79 to %struct.TValue*
  %81 = getelementptr inbounds %struct.TValue, %struct.TValue* %80, i32 0, i32 1
  %82 = load i8, i8* %81, align 8
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 64
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

; <label>:86:                                     ; preds = %77
  %87 = load %union.Node*, %union.Node** %8, align 8
  %88 = bitcast %union.Node* %87 to %struct.TValue*
  %89 = getelementptr inbounds %struct.TValue, %struct.TValue* %88, i32 0, i32 0
  %90 = bitcast %union.Value* %89 to %struct.GCObject**
  %91 = load %struct.GCObject*, %struct.GCObject** %90, align 8
  br label %93

; <label>:92:                                     ; preds = %77
  br label %93

; <label>:93:                                     ; preds = %92, %86
  %94 = phi %struct.GCObject* [ %91, %86 ], [ null, %92 ]
  %95 = call i32 @iscleared(%struct.global_State* %78, %struct.GCObject* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

; <label>:97:                                     ; preds = %93
  %98 = load %union.Node*, %union.Node** %8, align 8
  %99 = bitcast %union.Node* %98 to %struct.TValue*
  %100 = getelementptr inbounds %struct.TValue, %struct.TValue* %99, i32 0, i32 1
  store i8 16, i8* %100, align 8
  br label %101

; <label>:101:                                    ; preds = %97, %93
  %102 = load %union.Node*, %union.Node** %8, align 8
  %103 = bitcast %union.Node* %102 to %struct.TValue*
  %104 = getelementptr inbounds %struct.TValue, %struct.TValue* %103, i32 0, i32 1
  %105 = load i8, i8* %104, align 8
  %106 = zext i8 %105 to i32
  %107 = and i32 %106, 15
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

; <label>:109:                                    ; preds = %101
  %110 = load %union.Node*, %union.Node** %8, align 8
  call void @clearkey(%union.Node* %110)
  br label %111

; <label>:111:                                    ; preds = %109, %101
  br label %112

; <label>:112:                                    ; preds = %111
  %113 = load %union.Node*, %union.Node** %8, align 8
  %114 = getelementptr inbounds %union.Node, %union.Node* %113, i32 1
  store %union.Node* %114, %union.Node** %8, align 8
  br label %73

; <label>:115:                                    ; preds = %73
  br label %116

; <label>:116:                                    ; preds = %115
  %117 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %118 = bitcast %struct.GCObject* %117 to %union.GCUnion*
  %119 = bitcast %union.GCUnion* %118 to %struct.Table*
  %120 = getelementptr inbounds %struct.Table, %struct.Table* %119, i32 0, i32 10
  %121 = load %struct.GCObject*, %struct.GCObject** %120, align 8
  store %struct.GCObject* %121, %struct.GCObject** %5, align 8
  br label %13

; <label>:122:                                    ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @markbeingfnz(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  %3 = alloca %struct.GCObject*, align 8
  %4 = alloca i64, align 8
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.global_State*, %struct.global_State** %2, align 8
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i32 0, i32 28
  %7 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  store %struct.GCObject* %7, %struct.GCObject** %3, align 8
  br label %8

; <label>:8:                                      ; preds = %26, %1
  %9 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %10 = icmp ne %struct.GCObject* %9, null
  br i1 %10, label %11, label %30

; <label>:11:                                     ; preds = %8
  %12 = load i64, i64* %4, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %4, align 8
  %14 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %15 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %14, i32 0, i32 2
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 24
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %11
  %21 = load %struct.global_State*, %struct.global_State** %2, align 8
  %22 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %23 = bitcast %struct.GCObject* %22 to %union.GCUnion*
  %24 = bitcast %union.GCUnion* %23 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %21, %struct.GCObject* %24)
  br label %25

; <label>:25:                                     ; preds = %20, %11
  br label %26

; <label>:26:                                     ; preds = %25
  %27 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %28 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %27, i32 0, i32 0
  %29 = load %struct.GCObject*, %struct.GCObject** %28, align 8
  store %struct.GCObject* %29, %struct.GCObject** %3, align 8
  br label %8

; <label>:30:                                     ; preds = %8
  %31 = load i64, i64* %4, align 8
  ret i64 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clearbykeys(%struct.global_State*, %struct.GCObject*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.GCObject*, align 8
  %5 = alloca %struct.Table*, align 8
  %6 = alloca %union.Node*, align 8
  %7 = alloca %union.Node*, align 8
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.GCObject* %1, %struct.GCObject** %4, align 8
  br label %8

; <label>:8:                                      ; preds = %72, %2
  %9 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %10 = icmp ne %struct.GCObject* %9, null
  br i1 %10, label %11, label %78

; <label>:11:                                     ; preds = %8
  %12 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %13 = bitcast %struct.GCObject* %12 to %union.GCUnion*
  %14 = bitcast %union.GCUnion* %13 to %struct.Table*
  store %struct.Table* %14, %struct.Table** %5, align 8
  %15 = load %struct.Table*, %struct.Table** %5, align 8
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %15, i32 0, i32 7
  %17 = load %union.Node*, %union.Node** %16, align 8
  %18 = load %struct.Table*, %struct.Table** %5, align 8
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %18, i32 0, i32 4
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 1, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %union.Node, %union.Node* %17, i64 %23
  store %union.Node* %24, %union.Node** %6, align 8
  %25 = load %struct.Table*, %struct.Table** %5, align 8
  %26 = getelementptr inbounds %struct.Table, %struct.Table* %25, i32 0, i32 7
  %27 = load %union.Node*, %union.Node** %26, align 8
  %28 = getelementptr inbounds %union.Node, %union.Node* %27, i64 0
  store %union.Node* %28, %union.Node** %7, align 8
  br label %29

; <label>:29:                                     ; preds = %68, %11
  %30 = load %union.Node*, %union.Node** %7, align 8
  %31 = load %union.Node*, %union.Node** %6, align 8
  %32 = icmp ult %union.Node* %30, %31
  br i1 %32, label %33, label %71

; <label>:33:                                     ; preds = %29
  %34 = load %struct.global_State*, %struct.global_State** %3, align 8
  %35 = load %union.Node*, %union.Node** %7, align 8
  %36 = bitcast %union.Node* %35 to %struct.NodeKey*
  %37 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %36, i32 0, i32 2
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 64
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

; <label>:42:                                     ; preds = %33
  %43 = load %union.Node*, %union.Node** %7, align 8
  %44 = bitcast %union.Node* %43 to %struct.NodeKey*
  %45 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %44, i32 0, i32 4
  %46 = bitcast %union.Value* %45 to %struct.GCObject**
  %47 = load %struct.GCObject*, %struct.GCObject** %46, align 8
  br label %49

; <label>:48:                                     ; preds = %33
  br label %49

; <label>:49:                                     ; preds = %48, %42
  %50 = phi %struct.GCObject* [ %47, %42 ], [ null, %48 ]
  %51 = call i32 @iscleared(%struct.global_State* %34, %struct.GCObject* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

; <label>:53:                                     ; preds = %49
  %54 = load %union.Node*, %union.Node** %7, align 8
  %55 = bitcast %union.Node* %54 to %struct.TValue*
  %56 = getelementptr inbounds %struct.TValue, %struct.TValue* %55, i32 0, i32 1
  store i8 16, i8* %56, align 8
  br label %57

; <label>:57:                                     ; preds = %53, %49
  %58 = load %union.Node*, %union.Node** %7, align 8
  %59 = bitcast %union.Node* %58 to %struct.TValue*
  %60 = getelementptr inbounds %struct.TValue, %struct.TValue* %59, i32 0, i32 1
  %61 = load i8, i8* %60, align 8
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 15
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

; <label>:65:                                     ; preds = %57
  %66 = load %union.Node*, %union.Node** %7, align 8
  call void @clearkey(%union.Node* %66)
  br label %67

; <label>:67:                                     ; preds = %65, %57
  br label %68

; <label>:68:                                     ; preds = %67
  %69 = load %union.Node*, %union.Node** %7, align 8
  %70 = getelementptr inbounds %union.Node, %union.Node* %69, i32 1
  store %union.Node* %70, %union.Node** %7, align 8
  br label %29

; <label>:71:                                     ; preds = %29
  br label %72

; <label>:72:                                     ; preds = %71
  %73 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %74 = bitcast %struct.GCObject* %73 to %union.GCUnion*
  %75 = bitcast %union.GCUnion* %74 to %struct.Table*
  %76 = getelementptr inbounds %struct.Table, %struct.Table* %75, i32 0, i32 10
  %77 = load %struct.GCObject*, %struct.GCObject** %76, align 8
  store %struct.GCObject* %77, %struct.GCObject** %4, align 8
  br label %8

; <label>:78:                                     ; preds = %8
  ret void
}

declare hidden void @luaS_clearcache(%struct.global_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @propagatemark(%struct.global_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.GCObject*, align 8
  %5 = alloca %struct.lua_State*, align 8
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  %6 = load %struct.global_State*, %struct.global_State** %3, align 8
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 23
  %8 = load %struct.GCObject*, %struct.GCObject** %7, align 8
  store %struct.GCObject* %8, %struct.GCObject** %4, align 8
  %9 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %9, i32 0, i32 2
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %12, 32
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %10, align 1
  %15 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %16 = call %struct.GCObject** @getgclist(%struct.GCObject* %15)
  %17 = load %struct.GCObject*, %struct.GCObject** %16, align 8
  %18 = load %struct.global_State*, %struct.global_State** %3, align 8
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 23
  store %struct.GCObject* %17, %struct.GCObject** %19, align 8
  %20 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %21 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %20, i32 0, i32 1
  %22 = load i8, i8* %21, align 8
  %23 = zext i8 %22 to i32
  switch i32 %23, label %84 [
    i32 5, label %24
    i32 7, label %30
    i32 22, label %37
    i32 54, label %45
    i32 10, label %53
    i32 8, label %60
  ]

; <label>:24:                                     ; preds = %1
  %25 = load %struct.global_State*, %struct.global_State** %3, align 8
  %26 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %27 = bitcast %struct.GCObject* %26 to %union.GCUnion*
  %28 = bitcast %union.GCUnion* %27 to %struct.Table*
  %29 = call i64 @traversetable(%struct.global_State* %25, %struct.Table* %28)
  store i64 %29, i64* %2, align 8
  br label %85

; <label>:30:                                     ; preds = %1
  %31 = load %struct.global_State*, %struct.global_State** %3, align 8
  %32 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %33 = bitcast %struct.GCObject* %32 to %union.GCUnion*
  %34 = bitcast %union.GCUnion* %33 to %struct.Udata*
  %35 = call i32 @traverseudata(%struct.global_State* %31, %struct.Udata* %34)
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %2, align 8
  br label %85

; <label>:37:                                     ; preds = %1
  %38 = load %struct.global_State*, %struct.global_State** %3, align 8
  %39 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %40 = bitcast %struct.GCObject* %39 to %union.GCUnion*
  %41 = bitcast %union.GCUnion* %40 to %union.Closure*
  %42 = bitcast %union.Closure* %41 to %struct.LClosure*
  %43 = call i32 @traverseLclosure(%struct.global_State* %38, %struct.LClosure* %42)
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %2, align 8
  br label %85

; <label>:45:                                     ; preds = %1
  %46 = load %struct.global_State*, %struct.global_State** %3, align 8
  %47 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %48 = bitcast %struct.GCObject* %47 to %union.GCUnion*
  %49 = bitcast %union.GCUnion* %48 to %union.Closure*
  %50 = bitcast %union.Closure* %49 to %struct.CClosure*
  %51 = call i32 @traverseCclosure(%struct.global_State* %46, %struct.CClosure* %50)
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %2, align 8
  br label %85

; <label>:53:                                     ; preds = %1
  %54 = load %struct.global_State*, %struct.global_State** %3, align 8
  %55 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %56 = bitcast %struct.GCObject* %55 to %union.GCUnion*
  %57 = bitcast %union.GCUnion* %56 to %struct.Proto*
  %58 = call i32 @traverseproto(%struct.global_State* %54, %struct.Proto* %57)
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %2, align 8
  br label %85

; <label>:60:                                     ; preds = %1
  %61 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %62 = bitcast %struct.GCObject* %61 to %union.GCUnion*
  %63 = bitcast %union.GCUnion* %62 to %struct.lua_State*
  store %struct.lua_State* %63, %struct.lua_State** %5, align 8
  %64 = load %struct.global_State*, %struct.global_State** %3, align 8
  %65 = getelementptr inbounds %struct.global_State, %struct.global_State* %64, i32 0, i32 24
  %66 = load %struct.GCObject*, %struct.GCObject** %65, align 8
  %67 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %68 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %67, i32 0, i32 13
  store %struct.GCObject* %66, %struct.GCObject** %68, align 8
  %69 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %70 = bitcast %struct.lua_State* %69 to %union.GCUnion*
  %71 = bitcast %union.GCUnion* %70 to %struct.GCObject*
  %72 = load %struct.global_State*, %struct.global_State** %3, align 8
  %73 = getelementptr inbounds %struct.global_State, %struct.global_State* %72, i32 0, i32 24
  store %struct.GCObject* %71, %struct.GCObject** %73, align 8
  %74 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %75 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %74, i32 0, i32 2
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %77, 223
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %75, align 1
  %80 = load %struct.global_State*, %struct.global_State** %3, align 8
  %81 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %82 = call i32 @traversethread(%struct.global_State* %80, %struct.lua_State* %81)
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %2, align 8
  br label %85

; <label>:84:                                     ; preds = %1
  store i64 0, i64* %2, align 8
  br label %85

; <label>:85:                                     ; preds = %84, %60, %53, %45, %37, %30, %24
  %86 = load i64, i64* %2, align 8
  ret i64 %86
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @traversetable(%struct.global_State*, %struct.Table*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TValue*, align 8
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.Table* %1, %struct.Table** %4, align 8
  %8 = load %struct.Table*, %struct.Table** %4, align 8
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %8, i32 0, i32 9
  %10 = load %struct.Table*, %struct.Table** %9, align 8
  %11 = icmp eq %struct.Table* %10, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  br label %34

; <label>:13:                                     ; preds = %2
  %14 = load %struct.Table*, %struct.Table** %4, align 8
  %15 = getelementptr inbounds %struct.Table, %struct.Table* %14, i32 0, i32 9
  %16 = load %struct.Table*, %struct.Table** %15, align 8
  %17 = getelementptr inbounds %struct.Table, %struct.Table* %16, i32 0, i32 3
  %18 = load i8, i8* %17, align 2
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %13
  br label %32

; <label>:23:                                     ; preds = %13
  %24 = load %struct.Table*, %struct.Table** %4, align 8
  %25 = getelementptr inbounds %struct.Table, %struct.Table* %24, i32 0, i32 9
  %26 = load %struct.Table*, %struct.Table** %25, align 8
  %27 = load %struct.global_State*, %struct.global_State** %3, align 8
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i32 0, i32 40
  %29 = getelementptr inbounds [25 x %struct.TString*], [25 x %struct.TString*]* %28, i64 0, i64 3
  %30 = load %struct.TString*, %struct.TString** %29, align 8
  %31 = call %struct.TValue* @luaT_gettm(%struct.Table* %26, i32 3, %struct.TString* %30)
  br label %32

; <label>:32:                                     ; preds = %23, %22
  %33 = phi %struct.TValue* [ null, %22 ], [ %31, %23 ]
  br label %34

; <label>:34:                                     ; preds = %32, %12
  %35 = phi %struct.TValue* [ null, %12 ], [ %33, %32 ]
  store %struct.TValue* %35, %struct.TValue** %7, align 8
  %36 = load %struct.Table*, %struct.Table** %4, align 8
  %37 = getelementptr inbounds %struct.Table, %struct.Table* %36, i32 0, i32 9
  %38 = load %struct.Table*, %struct.Table** %37, align 8
  %39 = icmp ne %struct.Table* %38, null
  br i1 %39, label %40, label %57

; <label>:40:                                     ; preds = %34
  %41 = load %struct.Table*, %struct.Table** %4, align 8
  %42 = getelementptr inbounds %struct.Table, %struct.Table* %41, i32 0, i32 9
  %43 = load %struct.Table*, %struct.Table** %42, align 8
  %44 = getelementptr inbounds %struct.Table, %struct.Table* %43, i32 0, i32 2
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 24
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

; <label>:49:                                     ; preds = %40
  %50 = load %struct.global_State*, %struct.global_State** %3, align 8
  %51 = load %struct.Table*, %struct.Table** %4, align 8
  %52 = getelementptr inbounds %struct.Table, %struct.Table* %51, i32 0, i32 9
  %53 = load %struct.Table*, %struct.Table** %52, align 8
  %54 = bitcast %struct.Table* %53 to %union.GCUnion*
  %55 = bitcast %union.GCUnion* %54 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %50, %struct.GCObject* %55)
  br label %56

; <label>:56:                                     ; preds = %49, %40
  br label %57

; <label>:57:                                     ; preds = %56, %34
  %58 = load %struct.TValue*, %struct.TValue** %7, align 8
  %59 = icmp ne %struct.TValue* %58, null
  br i1 %59, label %60, label %125

; <label>:60:                                     ; preds = %57
  %61 = load %struct.TValue*, %struct.TValue** %7, align 8
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %61, i32 0, i32 1
  %63 = load i8, i8* %62, align 8
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 15
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %67, label %125

; <label>:67:                                     ; preds = %60
  %68 = load %struct.TValue*, %struct.TValue** %7, align 8
  %69 = getelementptr inbounds %struct.TValue, %struct.TValue* %68, i32 0, i32 0
  %70 = bitcast %union.Value* %69 to %struct.GCObject**
  %71 = load %struct.GCObject*, %struct.GCObject** %70, align 8
  %72 = bitcast %struct.GCObject* %71 to %union.GCUnion*
  %73 = bitcast %union.GCUnion* %72 to %struct.TString*
  %74 = bitcast %struct.TString* %73 to i8*
  %75 = getelementptr inbounds i8, i8* %74, i64 24
  %76 = call i8* @strchr(i8* %75, i32 107) #4
  store i8* %76, i8** %5, align 8
  %77 = load %struct.TValue*, %struct.TValue** %7, align 8
  %78 = getelementptr inbounds %struct.TValue, %struct.TValue* %77, i32 0, i32 0
  %79 = bitcast %union.Value* %78 to %struct.GCObject**
  %80 = load %struct.GCObject*, %struct.GCObject** %79, align 8
  %81 = bitcast %struct.GCObject* %80 to %union.GCUnion*
  %82 = bitcast %union.GCUnion* %81 to %struct.TString*
  %83 = bitcast %struct.TString* %82 to i8*
  %84 = getelementptr inbounds i8, i8* %83, i64 24
  %85 = call i8* @strchr(i8* %84, i32 118) #4
  store i8* %85, i8** %6, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %91, label %88

; <label>:88:                                     ; preds = %67
  %89 = load i8*, i8** %6, align 8
  %90 = icmp ne i8* %89, null
  br label %91

; <label>:91:                                     ; preds = %88, %67
  %92 = phi i1 [ true, %67 ], [ %90, %88 ]
  br i1 %92, label %93, label %125

; <label>:93:                                     ; preds = %91
  %94 = load %struct.Table*, %struct.Table** %4, align 8
  %95 = getelementptr inbounds %struct.Table, %struct.Table* %94, i32 0, i32 2
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = and i32 %97, 223
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %95, align 1
  %100 = load i8*, i8** %5, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %105, label %102

; <label>:102:                                    ; preds = %93
  %103 = load %struct.global_State*, %struct.global_State** %3, align 8
  %104 = load %struct.Table*, %struct.Table** %4, align 8
  call void @traverseweakvalue(%struct.global_State* %103, %struct.Table* %104)
  br label %124

; <label>:105:                                    ; preds = %93
  %106 = load i8*, i8** %6, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %112, label %108

; <label>:108:                                    ; preds = %105
  %109 = load %struct.global_State*, %struct.global_State** %3, align 8
  %110 = load %struct.Table*, %struct.Table** %4, align 8
  %111 = call i32 @traverseephemeron(%struct.global_State* %109, %struct.Table* %110)
  br label %123

; <label>:112:                                    ; preds = %105
  %113 = load %struct.global_State*, %struct.global_State** %3, align 8
  %114 = getelementptr inbounds %struct.global_State, %struct.global_State* %113, i32 0, i32 27
  %115 = load %struct.GCObject*, %struct.GCObject** %114, align 8
  %116 = load %struct.Table*, %struct.Table** %4, align 8
  %117 = getelementptr inbounds %struct.Table, %struct.Table* %116, i32 0, i32 10
  store %struct.GCObject* %115, %struct.GCObject** %117, align 8
  %118 = load %struct.Table*, %struct.Table** %4, align 8
  %119 = bitcast %struct.Table* %118 to %union.GCUnion*
  %120 = bitcast %union.GCUnion* %119 to %struct.GCObject*
  %121 = load %struct.global_State*, %struct.global_State** %3, align 8
  %122 = getelementptr inbounds %struct.global_State, %struct.global_State* %121, i32 0, i32 27
  store %struct.GCObject* %120, %struct.GCObject** %122, align 8
  br label %123

; <label>:123:                                    ; preds = %112, %108
  br label %124

; <label>:124:                                    ; preds = %123, %102
  br label %128

; <label>:125:                                    ; preds = %91, %60, %57
  %126 = load %struct.global_State*, %struct.global_State** %3, align 8
  %127 = load %struct.Table*, %struct.Table** %4, align 8
  call void @traversestrongtable(%struct.global_State* %126, %struct.Table* %127)
  br label %128

; <label>:128:                                    ; preds = %125, %124
  %129 = load %struct.Table*, %struct.Table** %4, align 8
  %130 = getelementptr inbounds %struct.Table, %struct.Table* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = add i32 1, %131
  %133 = load %struct.Table*, %struct.Table** %4, align 8
  %134 = getelementptr inbounds %struct.Table, %struct.Table* %133, i32 0, i32 8
  %135 = load %union.Node*, %union.Node** %134, align 8
  %136 = icmp eq %union.Node* %135, null
  br i1 %136, label %137, label %138

; <label>:137:                                    ; preds = %128
  br label %144

; <label>:138:                                    ; preds = %128
  %139 = load %struct.Table*, %struct.Table** %4, align 8
  %140 = getelementptr inbounds %struct.Table, %struct.Table* %139, i32 0, i32 4
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = shl i32 1, %142
  br label %144

; <label>:144:                                    ; preds = %138, %137
  %145 = phi i32 [ 0, %137 ], [ %143, %138 ]
  %146 = mul nsw i32 2, %145
  %147 = add i32 %132, %146
  %148 = zext i32 %147 to i64
  ret i64 %148
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverseudata(%struct.global_State*, %struct.Udata*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.Udata*, align 8
  %5 = alloca i32, align 4
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.Udata* %1, %struct.Udata** %4, align 8
  %6 = load %struct.Udata*, %struct.Udata** %4, align 8
  %7 = getelementptr inbounds %struct.Udata, %struct.Udata* %6, i32 0, i32 5
  %8 = load %struct.Table*, %struct.Table** %7, align 8
  %9 = icmp ne %struct.Table* %8, null
  br i1 %9, label %10, label %27

; <label>:10:                                     ; preds = %2
  %11 = load %struct.Udata*, %struct.Udata** %4, align 8
  %12 = getelementptr inbounds %struct.Udata, %struct.Udata* %11, i32 0, i32 5
  %13 = load %struct.Table*, %struct.Table** %12, align 8
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %13, i32 0, i32 2
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 24
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

; <label>:19:                                     ; preds = %10
  %20 = load %struct.global_State*, %struct.global_State** %3, align 8
  %21 = load %struct.Udata*, %struct.Udata** %4, align 8
  %22 = getelementptr inbounds %struct.Udata, %struct.Udata* %21, i32 0, i32 5
  %23 = load %struct.Table*, %struct.Table** %22, align 8
  %24 = bitcast %struct.Table* %23 to %union.GCUnion*
  %25 = bitcast %union.GCUnion* %24 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %20, %struct.GCObject* %25)
  br label %26

; <label>:26:                                     ; preds = %19, %10
  br label %27

; <label>:27:                                     ; preds = %26, %2
  store i32 0, i32* %5, align 4
  br label %28

; <label>:28:                                     ; preds = %74, %27
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.Udata*, %struct.Udata** %4, align 8
  %31 = getelementptr inbounds %struct.Udata, %struct.Udata* %30, i32 0, i32 3
  %32 = load i16, i16* %31, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %77

; <label>:35:                                     ; preds = %28
  %36 = load %struct.Udata*, %struct.Udata** %4, align 8
  %37 = getelementptr inbounds %struct.Udata, %struct.Udata* %36, i32 0, i32 7
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [1 x %union.UValue], [1 x %union.UValue]* %37, i64 0, i64 %39
  %41 = bitcast %union.UValue* %40 to %struct.TValue*
  %42 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i32 0, i32 1
  %43 = load i8, i8* %42, align 8
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 64
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %73

; <label>:47:                                     ; preds = %35
  %48 = load %struct.Udata*, %struct.Udata** %4, align 8
  %49 = getelementptr inbounds %struct.Udata, %struct.Udata* %48, i32 0, i32 7
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [1 x %union.UValue], [1 x %union.UValue]* %49, i64 0, i64 %51
  %53 = bitcast %union.UValue* %52 to %struct.TValue*
  %54 = getelementptr inbounds %struct.TValue, %struct.TValue* %53, i32 0, i32 0
  %55 = bitcast %union.Value* %54 to %struct.GCObject**
  %56 = load %struct.GCObject*, %struct.GCObject** %55, align 8
  %57 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %56, i32 0, i32 2
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 24
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

; <label>:62:                                     ; preds = %47
  %63 = load %struct.global_State*, %struct.global_State** %3, align 8
  %64 = load %struct.Udata*, %struct.Udata** %4, align 8
  %65 = getelementptr inbounds %struct.Udata, %struct.Udata* %64, i32 0, i32 7
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [1 x %union.UValue], [1 x %union.UValue]* %65, i64 0, i64 %67
  %69 = bitcast %union.UValue* %68 to %struct.TValue*
  %70 = getelementptr inbounds %struct.TValue, %struct.TValue* %69, i32 0, i32 0
  %71 = bitcast %union.Value* %70 to %struct.GCObject**
  %72 = load %struct.GCObject*, %struct.GCObject** %71, align 8
  call void @reallymarkobject(%struct.global_State* %63, %struct.GCObject* %72)
  br label %73

; <label>:73:                                     ; preds = %62, %47, %35
  br label %74

; <label>:74:                                     ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %28

; <label>:77:                                     ; preds = %28
  %78 = load %struct.global_State*, %struct.global_State** %3, align 8
  %79 = getelementptr inbounds %struct.global_State, %struct.global_State* %78, i32 0, i32 12
  %80 = load i8, i8* %79, align 2
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %100

; <label>:83:                                     ; preds = %77
  %84 = load %struct.global_State*, %struct.global_State** %3, align 8
  %85 = getelementptr inbounds %struct.global_State, %struct.global_State* %84, i32 0, i32 24
  %86 = load %struct.GCObject*, %struct.GCObject** %85, align 8
  %87 = load %struct.Udata*, %struct.Udata** %4, align 8
  %88 = getelementptr inbounds %struct.Udata, %struct.Udata* %87, i32 0, i32 6
  store %struct.GCObject* %86, %struct.GCObject** %88, align 8
  %89 = load %struct.Udata*, %struct.Udata** %4, align 8
  %90 = bitcast %struct.Udata* %89 to %union.GCUnion*
  %91 = bitcast %union.GCUnion* %90 to %struct.GCObject*
  %92 = load %struct.global_State*, %struct.global_State** %3, align 8
  %93 = getelementptr inbounds %struct.global_State, %struct.global_State* %92, i32 0, i32 24
  store %struct.GCObject* %91, %struct.GCObject** %93, align 8
  %94 = load %struct.Udata*, %struct.Udata** %4, align 8
  %95 = getelementptr inbounds %struct.Udata, %struct.Udata* %94, i32 0, i32 2
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = and i32 %97, 223
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %95, align 1
  br label %100

; <label>:100:                                    ; preds = %83, %77
  %101 = load %struct.Udata*, %struct.Udata** %4, align 8
  %102 = getelementptr inbounds %struct.Udata, %struct.Udata* %101, i32 0, i32 3
  %103 = load i16, i16* %102, align 2
  %104 = zext i16 %103 to i32
  %105 = add nsw i32 1, %104
  ret i32 %105
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverseLclosure(%struct.global_State*, %struct.LClosure*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.LClosure*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.UpVal*, align 8
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.LClosure* %1, %struct.LClosure** %4, align 8
  %7 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %8 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %7, i32 0, i32 5
  %9 = load %struct.Proto*, %struct.Proto** %8, align 8
  %10 = icmp ne %struct.Proto* %9, null
  br i1 %10, label %11, label %28

; <label>:11:                                     ; preds = %2
  %12 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %13 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %12, i32 0, i32 5
  %14 = load %struct.Proto*, %struct.Proto** %13, align 8
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i32 0, i32 2
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 24
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %11
  %21 = load %struct.global_State*, %struct.global_State** %3, align 8
  %22 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %23 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %22, i32 0, i32 5
  %24 = load %struct.Proto*, %struct.Proto** %23, align 8
  %25 = bitcast %struct.Proto* %24 to %union.GCUnion*
  %26 = bitcast %union.GCUnion* %25 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %21, %struct.GCObject* %26)
  br label %27

; <label>:27:                                     ; preds = %20, %11
  br label %28

; <label>:28:                                     ; preds = %27, %2
  store i32 0, i32* %5, align 4
  br label %29

; <label>:29:                                     ; preds = %59, %28
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %32 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %31, i32 0, i32 3
  %33 = load i8, i8* %32, align 2
  %34 = zext i8 %33 to i32
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %62

; <label>:36:                                     ; preds = %29
  %37 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %38 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %37, i32 0, i32 6
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %38, i64 0, i64 %40
  %42 = load %struct.UpVal*, %struct.UpVal** %41, align 8
  store %struct.UpVal* %42, %struct.UpVal** %6, align 8
  %43 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %44 = icmp ne %struct.UpVal* %43, null
  br i1 %44, label %45, label %58

; <label>:45:                                     ; preds = %36
  %46 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %47 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %46, i32 0, i32 2
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 24
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

; <label>:52:                                     ; preds = %45
  %53 = load %struct.global_State*, %struct.global_State** %3, align 8
  %54 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %55 = bitcast %struct.UpVal* %54 to %union.GCUnion*
  %56 = bitcast %union.GCUnion* %55 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %53, %struct.GCObject* %56)
  br label %57

; <label>:57:                                     ; preds = %52, %45
  br label %58

; <label>:58:                                     ; preds = %57, %36
  br label %59

; <label>:59:                                     ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %29

; <label>:62:                                     ; preds = %29
  %63 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %64 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %63, i32 0, i32 3
  %65 = load i8, i8* %64, align 2
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 1, %66
  ret i32 %67
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverseCclosure(%struct.global_State*, %struct.CClosure*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.CClosure*, align 8
  %5 = alloca i32, align 4
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.CClosure* %1, %struct.CClosure** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %49, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.CClosure*, %struct.CClosure** %4, align 8
  %9 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %8, i32 0, i32 3
  %10 = load i8, i8* %9, align 2
  %11 = zext i8 %10 to i32
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %52

; <label>:13:                                     ; preds = %6
  %14 = load %struct.CClosure*, %struct.CClosure** %4, align 8
  %15 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %14, i32 0, i32 6
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [1 x %struct.TValue], [1 x %struct.TValue]* %15, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i32 0, i32 1
  %20 = load i8, i8* %19, align 8
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 64
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %48

; <label>:24:                                     ; preds = %13
  %25 = load %struct.CClosure*, %struct.CClosure** %4, align 8
  %26 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %25, i32 0, i32 6
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [1 x %struct.TValue], [1 x %struct.TValue]* %26, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.TValue, %struct.TValue* %29, i32 0, i32 0
  %31 = bitcast %union.Value* %30 to %struct.GCObject**
  %32 = load %struct.GCObject*, %struct.GCObject** %31, align 8
  %33 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %32, i32 0, i32 2
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 24
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

; <label>:38:                                     ; preds = %24
  %39 = load %struct.global_State*, %struct.global_State** %3, align 8
  %40 = load %struct.CClosure*, %struct.CClosure** %4, align 8
  %41 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %40, i32 0, i32 6
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [1 x %struct.TValue], [1 x %struct.TValue]* %41, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.TValue, %struct.TValue* %44, i32 0, i32 0
  %46 = bitcast %union.Value* %45 to %struct.GCObject**
  %47 = load %struct.GCObject*, %struct.GCObject** %46, align 8
  call void @reallymarkobject(%struct.global_State* %39, %struct.GCObject* %47)
  br label %48

; <label>:48:                                     ; preds = %38, %24, %13
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %6

; <label>:52:                                     ; preds = %6
  %53 = load %struct.CClosure*, %struct.CClosure** %4, align 8
  %54 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %53, i32 0, i32 3
  %55 = load i8, i8* %54, align 2
  %56 = zext i8 %55 to i32
  %57 = add nsw i32 1, %56
  ret i32 %57
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverseproto(%struct.global_State*, %struct.Proto*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.Proto*, align 8
  %5 = alloca i32, align 4
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.Proto* %1, %struct.Proto** %4, align 8
  %6 = load %struct.Proto*, %struct.Proto** %4, align 8
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i32 0, i32 22
  %8 = load %struct.TString*, %struct.TString** %7, align 8
  %9 = icmp ne %struct.TString* %8, null
  br i1 %9, label %10, label %27

; <label>:10:                                     ; preds = %2
  %11 = load %struct.Proto*, %struct.Proto** %4, align 8
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i32 0, i32 22
  %13 = load %struct.TString*, %struct.TString** %12, align 8
  %14 = getelementptr inbounds %struct.TString, %struct.TString* %13, i32 0, i32 2
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 24
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

; <label>:19:                                     ; preds = %10
  %20 = load %struct.global_State*, %struct.global_State** %3, align 8
  %21 = load %struct.Proto*, %struct.Proto** %4, align 8
  %22 = getelementptr inbounds %struct.Proto, %struct.Proto* %21, i32 0, i32 22
  %23 = load %struct.TString*, %struct.TString** %22, align 8
  %24 = bitcast %struct.TString* %23 to %union.GCUnion*
  %25 = bitcast %union.GCUnion* %24 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %20, %struct.GCObject* %25)
  br label %26

; <label>:26:                                     ; preds = %19, %10
  br label %27

; <label>:27:                                     ; preds = %26, %2
  store i32 0, i32* %5, align 4
  br label %28

; <label>:28:                                     ; preds = %73, %27
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.Proto*, %struct.Proto** %4, align 8
  %31 = getelementptr inbounds %struct.Proto, %struct.Proto* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %76

; <label>:34:                                     ; preds = %28
  %35 = load %struct.Proto*, %struct.Proto** %4, align 8
  %36 = getelementptr inbounds %struct.Proto, %struct.Proto* %35, i32 0, i32 15
  %37 = load %struct.TValue*, %struct.TValue** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i64 %39
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i32 0, i32 1
  %42 = load i8, i8* %41, align 8
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 64
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %72

; <label>:46:                                     ; preds = %34
  %47 = load %struct.Proto*, %struct.Proto** %4, align 8
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i32 0, i32 15
  %49 = load %struct.TValue*, %struct.TValue** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %51
  %53 = getelementptr inbounds %struct.TValue, %struct.TValue* %52, i32 0, i32 0
  %54 = bitcast %union.Value* %53 to %struct.GCObject**
  %55 = load %struct.GCObject*, %struct.GCObject** %54, align 8
  %56 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %55, i32 0, i32 2
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 24
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

; <label>:61:                                     ; preds = %46
  %62 = load %struct.global_State*, %struct.global_State** %3, align 8
  %63 = load %struct.Proto*, %struct.Proto** %4, align 8
  %64 = getelementptr inbounds %struct.Proto, %struct.Proto* %63, i32 0, i32 15
  %65 = load %struct.TValue*, %struct.TValue** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TValue, %struct.TValue* %65, i64 %67
  %69 = getelementptr inbounds %struct.TValue, %struct.TValue* %68, i32 0, i32 0
  %70 = bitcast %union.Value* %69 to %struct.GCObject**
  %71 = load %struct.GCObject*, %struct.GCObject** %70, align 8
  call void @reallymarkobject(%struct.global_State* %62, %struct.GCObject* %71)
  br label %72

; <label>:72:                                     ; preds = %61, %46, %34
  br label %73

; <label>:73:                                     ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %28

; <label>:76:                                     ; preds = %28
  store i32 0, i32* %5, align 4
  br label %77

; <label>:77:                                     ; preds = %121, %76
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.Proto*, %struct.Proto** %4, align 8
  %80 = getelementptr inbounds %struct.Proto, %struct.Proto* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %124

; <label>:83:                                     ; preds = %77
  %84 = load %struct.Proto*, %struct.Proto** %4, align 8
  %85 = getelementptr inbounds %struct.Proto, %struct.Proto* %84, i32 0, i32 18
  %86 = load %struct.Upvaldesc*, %struct.Upvaldesc** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %86, i64 %88
  %90 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %89, i32 0, i32 0
  %91 = load %struct.TString*, %struct.TString** %90, align 8
  %92 = icmp ne %struct.TString* %91, null
  br i1 %92, label %93, label %120

; <label>:93:                                     ; preds = %83
  %94 = load %struct.Proto*, %struct.Proto** %4, align 8
  %95 = getelementptr inbounds %struct.Proto, %struct.Proto* %94, i32 0, i32 18
  %96 = load %struct.Upvaldesc*, %struct.Upvaldesc** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %96, i64 %98
  %100 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %99, i32 0, i32 0
  %101 = load %struct.TString*, %struct.TString** %100, align 8
  %102 = getelementptr inbounds %struct.TString, %struct.TString* %101, i32 0, i32 2
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 24
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

; <label>:107:                                    ; preds = %93
  %108 = load %struct.global_State*, %struct.global_State** %3, align 8
  %109 = load %struct.Proto*, %struct.Proto** %4, align 8
  %110 = getelementptr inbounds %struct.Proto, %struct.Proto* %109, i32 0, i32 18
  %111 = load %struct.Upvaldesc*, %struct.Upvaldesc** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %111, i64 %113
  %115 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %114, i32 0, i32 0
  %116 = load %struct.TString*, %struct.TString** %115, align 8
  %117 = bitcast %struct.TString* %116 to %union.GCUnion*
  %118 = bitcast %union.GCUnion* %117 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %108, %struct.GCObject* %118)
  br label %119

; <label>:119:                                    ; preds = %107, %93
  br label %120

; <label>:120:                                    ; preds = %119, %83
  br label %121

; <label>:121:                                    ; preds = %120
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %77

; <label>:124:                                    ; preds = %77
  store i32 0, i32* %5, align 4
  br label %125

; <label>:125:                                    ; preds = %166, %124
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.Proto*, %struct.Proto** %4, align 8
  %128 = getelementptr inbounds %struct.Proto, %struct.Proto* %127, i32 0, i32 10
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %169

; <label>:131:                                    ; preds = %125
  %132 = load %struct.Proto*, %struct.Proto** %4, align 8
  %133 = getelementptr inbounds %struct.Proto, %struct.Proto* %132, i32 0, i32 17
  %134 = load %struct.Proto**, %struct.Proto*** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.Proto*, %struct.Proto** %134, i64 %136
  %138 = load %struct.Proto*, %struct.Proto** %137, align 8
  %139 = icmp ne %struct.Proto* %138, null
  br i1 %139, label %140, label %165

; <label>:140:                                    ; preds = %131
  %141 = load %struct.Proto*, %struct.Proto** %4, align 8
  %142 = getelementptr inbounds %struct.Proto, %struct.Proto* %141, i32 0, i32 17
  %143 = load %struct.Proto**, %struct.Proto*** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.Proto*, %struct.Proto** %143, i64 %145
  %147 = load %struct.Proto*, %struct.Proto** %146, align 8
  %148 = getelementptr inbounds %struct.Proto, %struct.Proto* %147, i32 0, i32 2
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = and i32 %150, 24
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %164

; <label>:153:                                    ; preds = %140
  %154 = load %struct.global_State*, %struct.global_State** %3, align 8
  %155 = load %struct.Proto*, %struct.Proto** %4, align 8
  %156 = getelementptr inbounds %struct.Proto, %struct.Proto* %155, i32 0, i32 17
  %157 = load %struct.Proto**, %struct.Proto*** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.Proto*, %struct.Proto** %157, i64 %159
  %161 = load %struct.Proto*, %struct.Proto** %160, align 8
  %162 = bitcast %struct.Proto* %161 to %union.GCUnion*
  %163 = bitcast %union.GCUnion* %162 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %154, %struct.GCObject* %163)
  br label %164

; <label>:164:                                    ; preds = %153, %140
  br label %165

; <label>:165:                                    ; preds = %164, %131
  br label %166

; <label>:166:                                    ; preds = %165
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  br label %125

; <label>:169:                                    ; preds = %125
  store i32 0, i32* %5, align 4
  br label %170

; <label>:170:                                    ; preds = %214, %169
  %171 = load i32, i32* %5, align 4
  %172 = load %struct.Proto*, %struct.Proto** %4, align 8
  %173 = getelementptr inbounds %struct.Proto, %struct.Proto* %172, i32 0, i32 11
  %174 = load i32, i32* %173, align 4
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %217

; <label>:176:                                    ; preds = %170
  %177 = load %struct.Proto*, %struct.Proto** %4, align 8
  %178 = getelementptr inbounds %struct.Proto, %struct.Proto* %177, i32 0, i32 21
  %179 = load %struct.LocVar*, %struct.LocVar** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %179, i64 %181
  %183 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %182, i32 0, i32 0
  %184 = load %struct.TString*, %struct.TString** %183, align 8
  %185 = icmp ne %struct.TString* %184, null
  br i1 %185, label %186, label %213

; <label>:186:                                    ; preds = %176
  %187 = load %struct.Proto*, %struct.Proto** %4, align 8
  %188 = getelementptr inbounds %struct.Proto, %struct.Proto* %187, i32 0, i32 21
  %189 = load %struct.LocVar*, %struct.LocVar** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %189, i64 %191
  %193 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %192, i32 0, i32 0
  %194 = load %struct.TString*, %struct.TString** %193, align 8
  %195 = getelementptr inbounds %struct.TString, %struct.TString* %194, i32 0, i32 2
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = and i32 %197, 24
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %212

; <label>:200:                                    ; preds = %186
  %201 = load %struct.global_State*, %struct.global_State** %3, align 8
  %202 = load %struct.Proto*, %struct.Proto** %4, align 8
  %203 = getelementptr inbounds %struct.Proto, %struct.Proto* %202, i32 0, i32 21
  %204 = load %struct.LocVar*, %struct.LocVar** %203, align 8
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %204, i64 %206
  %208 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %207, i32 0, i32 0
  %209 = load %struct.TString*, %struct.TString** %208, align 8
  %210 = bitcast %struct.TString* %209 to %union.GCUnion*
  %211 = bitcast %union.GCUnion* %210 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %201, %struct.GCObject* %211)
  br label %212

; <label>:212:                                    ; preds = %200, %186
  br label %213

; <label>:213:                                    ; preds = %212, %176
  br label %214

; <label>:214:                                    ; preds = %213
  %215 = load i32, i32* %5, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %5, align 4
  br label %170

; <label>:217:                                    ; preds = %170
  %218 = load %struct.Proto*, %struct.Proto** %4, align 8
  %219 = getelementptr inbounds %struct.Proto, %struct.Proto* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 1, %220
  %222 = load %struct.Proto*, %struct.Proto** %4, align 8
  %223 = getelementptr inbounds %struct.Proto, %struct.Proto* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %221, %224
  %226 = load %struct.Proto*, %struct.Proto** %4, align 8
  %227 = getelementptr inbounds %struct.Proto, %struct.Proto* %226, i32 0, i32 10
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %225, %228
  %230 = load %struct.Proto*, %struct.Proto** %4, align 8
  %231 = getelementptr inbounds %struct.Proto, %struct.Proto* %230, i32 0, i32 11
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %229, %232
  ret i32 %233
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traversethread(%struct.global_State*, %struct.lua_State*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.UpVal*, align 8
  %7 = alloca %union.StackValue*, align 8
  %8 = alloca %union.StackValue*, align 8
  store %struct.global_State* %0, %struct.global_State** %4, align 8
  store %struct.lua_State* %1, %struct.lua_State** %5, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 11
  %11 = load %union.StackValue*, %union.StackValue** %10, align 8
  store %union.StackValue* %11, %union.StackValue** %7, align 8
  %12 = load %union.StackValue*, %union.StackValue** %7, align 8
  %13 = icmp eq %union.StackValue* %12, null
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %2
  store i32 1, i32* %3, align 4
  br label %145

; <label>:15:                                     ; preds = %2
  br label %16

; <label>:16:                                     ; preds = %49, %15
  %17 = load %union.StackValue*, %union.StackValue** %7, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 6
  %20 = load %union.StackValue*, %union.StackValue** %19, align 8
  %21 = icmp ult %union.StackValue* %17, %20
  br i1 %21, label %22, label %52

; <label>:22:                                     ; preds = %16
  %23 = load %union.StackValue*, %union.StackValue** %7, align 8
  %24 = bitcast %union.StackValue* %23 to %struct.TValue*
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %24, i32 0, i32 1
  %26 = load i8, i8* %25, align 8
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 64
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

; <label>:30:                                     ; preds = %22
  %31 = load %union.StackValue*, %union.StackValue** %7, align 8
  %32 = bitcast %union.StackValue* %31 to %struct.TValue*
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i32 0, i32 0
  %34 = bitcast %union.Value* %33 to %struct.GCObject**
  %35 = load %struct.GCObject*, %struct.GCObject** %34, align 8
  %36 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %35, i32 0, i32 2
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 24
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

; <label>:41:                                     ; preds = %30
  %42 = load %struct.global_State*, %struct.global_State** %4, align 8
  %43 = load %union.StackValue*, %union.StackValue** %7, align 8
  %44 = bitcast %union.StackValue* %43 to %struct.TValue*
  %45 = getelementptr inbounds %struct.TValue, %struct.TValue* %44, i32 0, i32 0
  %46 = bitcast %union.Value* %45 to %struct.GCObject**
  %47 = load %struct.GCObject*, %struct.GCObject** %46, align 8
  call void @reallymarkobject(%struct.global_State* %42, %struct.GCObject* %47)
  br label %48

; <label>:48:                                     ; preds = %41, %30, %22
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load %union.StackValue*, %union.StackValue** %7, align 8
  %51 = getelementptr inbounds %union.StackValue, %union.StackValue* %50, i32 1
  store %union.StackValue* %51, %union.StackValue** %7, align 8
  br label %16

; <label>:52:                                     ; preds = %16
  %53 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %54 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %53, i32 0, i32 12
  %55 = load %struct.UpVal*, %struct.UpVal** %54, align 8
  store %struct.UpVal* %55, %struct.UpVal** %6, align 8
  br label %56

; <label>:56:                                     ; preds = %79, %52
  %57 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %58 = icmp ne %struct.UpVal* %57, null
  br i1 %58, label %59, label %85

; <label>:59:                                     ; preds = %56
  %60 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %61 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %60, i32 0, i32 1
  %62 = load i8, i8* %61, align 8
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 25
  br i1 %64, label %65, label %78

; <label>:65:                                     ; preds = %59
  %66 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %67 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %66, i32 0, i32 2
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 24
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

; <label>:72:                                     ; preds = %65
  %73 = load %struct.global_State*, %struct.global_State** %4, align 8
  %74 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %75 = bitcast %struct.UpVal* %74 to %union.GCUnion*
  %76 = bitcast %union.GCUnion* %75 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %73, %struct.GCObject* %76)
  br label %77

; <label>:77:                                     ; preds = %72, %65
  br label %78

; <label>:78:                                     ; preds = %77, %59
  br label %79

; <label>:79:                                     ; preds = %78
  %80 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %81 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %80, i32 0, i32 4
  %82 = bitcast %union.anon.4* %81 to %struct.anon.5*
  %83 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %82, i32 0, i32 0
  %84 = load %struct.UpVal*, %struct.UpVal** %83, align 8
  store %struct.UpVal* %84, %struct.UpVal** %6, align 8
  br label %56

; <label>:85:                                     ; preds = %56
  %86 = load %struct.global_State*, %struct.global_State** %4, align 8
  %87 = getelementptr inbounds %struct.global_State, %struct.global_State* %86, i32 0, i32 11
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %132

; <label>:91:                                     ; preds = %85
  %92 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %93 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %92, i32 0, i32 11
  %94 = load %union.StackValue*, %union.StackValue** %93, align 8
  %95 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %96 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %95, i32 0, i32 20
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %union.StackValue, %union.StackValue* %94, i64 %98
  store %union.StackValue* %99, %union.StackValue** %8, align 8
  br label %100

; <label>:100:                                    ; preds = %108, %91
  %101 = load %union.StackValue*, %union.StackValue** %7, align 8
  %102 = load %union.StackValue*, %union.StackValue** %8, align 8
  %103 = icmp ult %union.StackValue* %101, %102
  br i1 %103, label %104, label %111

; <label>:104:                                    ; preds = %100
  %105 = load %union.StackValue*, %union.StackValue** %7, align 8
  %106 = bitcast %union.StackValue* %105 to %struct.TValue*
  %107 = getelementptr inbounds %struct.TValue, %struct.TValue* %106, i32 0, i32 1
  store i8 0, i8* %107, align 8
  br label %108

; <label>:108:                                    ; preds = %104
  %109 = load %union.StackValue*, %union.StackValue** %7, align 8
  %110 = getelementptr inbounds %union.StackValue, %union.StackValue* %109, i32 1
  store %union.StackValue* %110, %union.StackValue** %7, align 8
  br label %100

; <label>:111:                                    ; preds = %100
  %112 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %113 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %112, i32 0, i32 14
  %114 = load %struct.lua_State*, %struct.lua_State** %113, align 8
  %115 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %116 = icmp ne %struct.lua_State* %114, %115
  br i1 %116, label %131, label %117

; <label>:117:                                    ; preds = %111
  %118 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %119 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %118, i32 0, i32 12
  %120 = load %struct.UpVal*, %struct.UpVal** %119, align 8
  %121 = icmp ne %struct.UpVal* %120, null
  br i1 %121, label %122, label %131

; <label>:122:                                    ; preds = %117
  %123 = load %struct.global_State*, %struct.global_State** %4, align 8
  %124 = getelementptr inbounds %struct.global_State, %struct.global_State* %123, i32 0, i32 36
  %125 = load %struct.lua_State*, %struct.lua_State** %124, align 8
  %126 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %127 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %126, i32 0, i32 14
  store %struct.lua_State* %125, %struct.lua_State** %127, align 8
  %128 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %129 = load %struct.global_State*, %struct.global_State** %4, align 8
  %130 = getelementptr inbounds %struct.global_State, %struct.global_State* %129, i32 0, i32 36
  store %struct.lua_State* %128, %struct.lua_State** %130, align 8
  br label %131

; <label>:131:                                    ; preds = %122, %117, %111
  br label %140

; <label>:132:                                    ; preds = %85
  %133 = load %struct.global_State*, %struct.global_State** %4, align 8
  %134 = getelementptr inbounds %struct.global_State, %struct.global_State* %133, i32 0, i32 16
  %135 = load i8, i8* %134, align 2
  %136 = icmp ne i8 %135, 0
  br i1 %136, label %139, label %137

; <label>:137:                                    ; preds = %132
  %138 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaD_shrinkstack(%struct.lua_State* %138)
  br label %139

; <label>:139:                                    ; preds = %137, %132
  br label %140

; <label>:140:                                    ; preds = %139, %131
  %141 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %142 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %141, i32 0, i32 20
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 1, %143
  store i32 %144, i32* %3, align 4
  br label %145

; <label>:145:                                    ; preds = %140, %14
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @traverseweakvalue(%struct.global_State*, %struct.Table*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca %union.Node*, align 8
  %6 = alloca %union.Node*, align 8
  %7 = alloca i32, align 4
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.Table* %1, %struct.Table** %4, align 8
  %8 = load %struct.Table*, %struct.Table** %4, align 8
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %8, i32 0, i32 7
  %10 = load %union.Node*, %union.Node** %9, align 8
  %11 = load %struct.Table*, %struct.Table** %4, align 8
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %11, i32 0, i32 4
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 1, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %union.Node, %union.Node* %10, i64 %16
  store %union.Node* %17, %union.Node** %6, align 8
  %18 = load %struct.Table*, %struct.Table** %4, align 8
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = icmp ugt i32 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load %struct.Table*, %struct.Table** %4, align 8
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %23, i32 0, i32 7
  %25 = load %union.Node*, %union.Node** %24, align 8
  %26 = getelementptr inbounds %union.Node, %union.Node* %25, i64 0
  store %union.Node* %26, %union.Node** %5, align 8
  br label %27

; <label>:27:                                     ; preds = %93, %2
  %28 = load %union.Node*, %union.Node** %5, align 8
  %29 = load %union.Node*, %union.Node** %6, align 8
  %30 = icmp ult %union.Node* %28, %29
  br i1 %30, label %31, label %96

; <label>:31:                                     ; preds = %27
  %32 = load %union.Node*, %union.Node** %5, align 8
  %33 = bitcast %union.Node* %32 to %struct.TValue*
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i32 0, i32 1
  %35 = load i8, i8* %34, align 8
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %31
  %40 = load %union.Node*, %union.Node** %5, align 8
  call void @clearkey(%union.Node* %40)
  br label %92

; <label>:41:                                     ; preds = %31
  %42 = load %union.Node*, %union.Node** %5, align 8
  %43 = bitcast %union.Node* %42 to %struct.NodeKey*
  %44 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %43, i32 0, i32 2
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 64
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

; <label>:49:                                     ; preds = %41
  %50 = load %union.Node*, %union.Node** %5, align 8
  %51 = bitcast %union.Node* %50 to %struct.NodeKey*
  %52 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %51, i32 0, i32 4
  %53 = bitcast %union.Value* %52 to %struct.GCObject**
  %54 = load %struct.GCObject*, %struct.GCObject** %53, align 8
  %55 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %54, i32 0, i32 2
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, 24
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

; <label>:60:                                     ; preds = %49
  %61 = load %struct.global_State*, %struct.global_State** %3, align 8
  %62 = load %union.Node*, %union.Node** %5, align 8
  %63 = bitcast %union.Node* %62 to %struct.NodeKey*
  %64 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %63, i32 0, i32 4
  %65 = bitcast %union.Value* %64 to %struct.GCObject**
  %66 = load %struct.GCObject*, %struct.GCObject** %65, align 8
  call void @reallymarkobject(%struct.global_State* %61, %struct.GCObject* %66)
  br label %67

; <label>:67:                                     ; preds = %60, %49, %41
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %91, label %70

; <label>:70:                                     ; preds = %67
  %71 = load %struct.global_State*, %struct.global_State** %3, align 8
  %72 = load %union.Node*, %union.Node** %5, align 8
  %73 = bitcast %union.Node* %72 to %struct.TValue*
  %74 = getelementptr inbounds %struct.TValue, %struct.TValue* %73, i32 0, i32 1
  %75 = load i8, i8* %74, align 8
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 64
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

; <label>:79:                                     ; preds = %70
  %80 = load %union.Node*, %union.Node** %5, align 8
  %81 = bitcast %union.Node* %80 to %struct.TValue*
  %82 = getelementptr inbounds %struct.TValue, %struct.TValue* %81, i32 0, i32 0
  %83 = bitcast %union.Value* %82 to %struct.GCObject**
  %84 = load %struct.GCObject*, %struct.GCObject** %83, align 8
  br label %86

; <label>:85:                                     ; preds = %70
  br label %86

; <label>:86:                                     ; preds = %85, %79
  %87 = phi %struct.GCObject* [ %84, %79 ], [ null, %85 ]
  %88 = call i32 @iscleared(%struct.global_State* %71, %struct.GCObject* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %86
  store i32 1, i32* %7, align 4
  br label %91

; <label>:91:                                     ; preds = %90, %86, %67
  br label %92

; <label>:92:                                     ; preds = %91, %39
  br label %93

; <label>:93:                                     ; preds = %92
  %94 = load %union.Node*, %union.Node** %5, align 8
  %95 = getelementptr inbounds %union.Node, %union.Node* %94, i32 1
  store %union.Node* %95, %union.Node** %5, align 8
  br label %27

; <label>:96:                                     ; preds = %27
  %97 = load %struct.global_State*, %struct.global_State** %3, align 8
  %98 = getelementptr inbounds %struct.global_State, %struct.global_State* %97, i32 0, i32 11
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %102, label %116

; <label>:102:                                    ; preds = %96
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

; <label>:105:                                    ; preds = %102
  %106 = load %struct.global_State*, %struct.global_State** %3, align 8
  %107 = getelementptr inbounds %struct.global_State, %struct.global_State* %106, i32 0, i32 25
  %108 = load %struct.GCObject*, %struct.GCObject** %107, align 8
  %109 = load %struct.Table*, %struct.Table** %4, align 8
  %110 = getelementptr inbounds %struct.Table, %struct.Table* %109, i32 0, i32 10
  store %struct.GCObject* %108, %struct.GCObject** %110, align 8
  %111 = load %struct.Table*, %struct.Table** %4, align 8
  %112 = bitcast %struct.Table* %111 to %union.GCUnion*
  %113 = bitcast %union.GCUnion* %112 to %struct.GCObject*
  %114 = load %struct.global_State*, %struct.global_State** %3, align 8
  %115 = getelementptr inbounds %struct.global_State, %struct.global_State* %114, i32 0, i32 25
  store %struct.GCObject* %113, %struct.GCObject** %115, align 8
  br label %127

; <label>:116:                                    ; preds = %102, %96
  %117 = load %struct.global_State*, %struct.global_State** %3, align 8
  %118 = getelementptr inbounds %struct.global_State, %struct.global_State* %117, i32 0, i32 24
  %119 = load %struct.GCObject*, %struct.GCObject** %118, align 8
  %120 = load %struct.Table*, %struct.Table** %4, align 8
  %121 = getelementptr inbounds %struct.Table, %struct.Table* %120, i32 0, i32 10
  store %struct.GCObject* %119, %struct.GCObject** %121, align 8
  %122 = load %struct.Table*, %struct.Table** %4, align 8
  %123 = bitcast %struct.Table* %122 to %union.GCUnion*
  %124 = bitcast %union.GCUnion* %123 to %struct.GCObject*
  %125 = load %struct.global_State*, %struct.global_State** %3, align 8
  %126 = getelementptr inbounds %struct.global_State, %struct.global_State* %125, i32 0, i32 24
  store %struct.GCObject* %124, %struct.GCObject** %126, align 8
  br label %127

; <label>:127:                                    ; preds = %116, %105
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverseephemeron(%struct.global_State*, %struct.Table*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.Node*, align 8
  %9 = alloca %union.Node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.Table* %1, %struct.Table** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.Table*, %struct.Table** %4, align 8
  %13 = getelementptr inbounds %struct.Table, %struct.Table* %12, i32 0, i32 7
  %14 = load %union.Node*, %union.Node** %13, align 8
  %15 = load %struct.Table*, %struct.Table** %4, align 8
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %15, i32 0, i32 4
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl i32 1, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %union.Node, %union.Node* %14, i64 %20
  store %union.Node* %21, %union.Node** %9, align 8
  %22 = load %struct.Table*, %struct.Table** %4, align 8
  %23 = call i32 @luaH_realasize(%struct.Table* %22)
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %24

; <label>:24:                                     ; preds = %67, %2
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %70

; <label>:28:                                     ; preds = %24
  %29 = load %struct.Table*, %struct.Table** %4, align 8
  %30 = getelementptr inbounds %struct.Table, %struct.Table* %29, i32 0, i32 6
  %31 = load %struct.TValue*, %struct.TValue** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i64 %33
  %35 = getelementptr inbounds %struct.TValue, %struct.TValue* %34, i32 0, i32 1
  %36 = load i8, i8* %35, align 8
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 64
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %66

; <label>:40:                                     ; preds = %28
  %41 = load %struct.Table*, %struct.Table** %4, align 8
  %42 = getelementptr inbounds %struct.Table, %struct.Table* %41, i32 0, i32 6
  %43 = load %struct.TValue*, %struct.TValue** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %43, i64 %45
  %47 = getelementptr inbounds %struct.TValue, %struct.TValue* %46, i32 0, i32 0
  %48 = bitcast %union.Value* %47 to %struct.GCObject**
  %49 = load %struct.GCObject*, %struct.GCObject** %48, align 8
  %50 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %49, i32 0, i32 2
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 24
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

; <label>:55:                                     ; preds = %40
  store i32 1, i32* %5, align 4
  %56 = load %struct.global_State*, %struct.global_State** %3, align 8
  %57 = load %struct.Table*, %struct.Table** %4, align 8
  %58 = getelementptr inbounds %struct.Table, %struct.Table* %57, i32 0, i32 6
  %59 = load %struct.TValue*, %struct.TValue** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TValue, %struct.TValue* %59, i64 %61
  %63 = getelementptr inbounds %struct.TValue, %struct.TValue* %62, i32 0, i32 0
  %64 = bitcast %union.Value* %63 to %struct.GCObject**
  %65 = load %struct.GCObject*, %struct.GCObject** %64, align 8
  call void @reallymarkobject(%struct.global_State* %56, %struct.GCObject* %65)
  br label %66

; <label>:66:                                     ; preds = %55, %40, %28
  br label %67

; <label>:67:                                     ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %24

; <label>:70:                                     ; preds = %24
  %71 = load %struct.Table*, %struct.Table** %4, align 8
  %72 = getelementptr inbounds %struct.Table, %struct.Table* %71, i32 0, i32 7
  %73 = load %union.Node*, %union.Node** %72, align 8
  %74 = getelementptr inbounds %union.Node, %union.Node* %73, i64 0
  store %union.Node* %74, %union.Node** %8, align 8
  br label %75

; <label>:75:                                     ; preds = %159, %70
  %76 = load %union.Node*, %union.Node** %8, align 8
  %77 = load %union.Node*, %union.Node** %9, align 8
  %78 = icmp ult %union.Node* %76, %77
  br i1 %78, label %79, label %162

; <label>:79:                                     ; preds = %75
  %80 = load %union.Node*, %union.Node** %8, align 8
  %81 = bitcast %union.Node* %80 to %struct.TValue*
  %82 = getelementptr inbounds %struct.TValue, %struct.TValue* %81, i32 0, i32 1
  %83 = load i8, i8* %82, align 8
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 15
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

; <label>:87:                                     ; preds = %79
  %88 = load %union.Node*, %union.Node** %8, align 8
  call void @clearkey(%union.Node* %88)
  br label %158

; <label>:89:                                     ; preds = %79
  %90 = load %struct.global_State*, %struct.global_State** %3, align 8
  %91 = load %union.Node*, %union.Node** %8, align 8
  %92 = bitcast %union.Node* %91 to %struct.NodeKey*
  %93 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %92, i32 0, i32 2
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, 64
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

; <label>:98:                                     ; preds = %89
  %99 = load %union.Node*, %union.Node** %8, align 8
  %100 = bitcast %union.Node* %99 to %struct.NodeKey*
  %101 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %100, i32 0, i32 4
  %102 = bitcast %union.Value* %101 to %struct.GCObject**
  %103 = load %struct.GCObject*, %struct.GCObject** %102, align 8
  br label %105

; <label>:104:                                    ; preds = %89
  br label %105

; <label>:105:                                    ; preds = %104, %98
  %106 = phi %struct.GCObject* [ %103, %98 ], [ null, %104 ]
  %107 = call i32 @iscleared(%struct.global_State* %90, %struct.GCObject* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %130

; <label>:109:                                    ; preds = %105
  store i32 1, i32* %6, align 4
  %110 = load %union.Node*, %union.Node** %8, align 8
  %111 = bitcast %union.Node* %110 to %struct.TValue*
  %112 = getelementptr inbounds %struct.TValue, %struct.TValue* %111, i32 0, i32 1
  %113 = load i8, i8* %112, align 8
  %114 = zext i8 %113 to i32
  %115 = and i32 %114, 64
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

; <label>:117:                                    ; preds = %109
  %118 = load %union.Node*, %union.Node** %8, align 8
  %119 = bitcast %union.Node* %118 to %struct.TValue*
  %120 = getelementptr inbounds %struct.TValue, %struct.TValue* %119, i32 0, i32 0
  %121 = bitcast %union.Value* %120 to %struct.GCObject**
  %122 = load %struct.GCObject*, %struct.GCObject** %121, align 8
  %123 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %122, i32 0, i32 2
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = and i32 %125, 24
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

; <label>:128:                                    ; preds = %117
  store i32 1, i32* %7, align 4
  br label %129

; <label>:129:                                    ; preds = %128, %117, %109
  br label %157

; <label>:130:                                    ; preds = %105
  %131 = load %union.Node*, %union.Node** %8, align 8
  %132 = bitcast %union.Node* %131 to %struct.TValue*
  %133 = getelementptr inbounds %struct.TValue, %struct.TValue* %132, i32 0, i32 1
  %134 = load i8, i8* %133, align 8
  %135 = zext i8 %134 to i32
  %136 = and i32 %135, 64
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %156

; <label>:138:                                    ; preds = %130
  %139 = load %union.Node*, %union.Node** %8, align 8
  %140 = bitcast %union.Node* %139 to %struct.TValue*
  %141 = getelementptr inbounds %struct.TValue, %struct.TValue* %140, i32 0, i32 0
  %142 = bitcast %union.Value* %141 to %struct.GCObject**
  %143 = load %struct.GCObject*, %struct.GCObject** %142, align 8
  %144 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %143, i32 0, i32 2
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = and i32 %146, 24
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

; <label>:149:                                    ; preds = %138
  store i32 1, i32* %5, align 4
  %150 = load %struct.global_State*, %struct.global_State** %3, align 8
  %151 = load %union.Node*, %union.Node** %8, align 8
  %152 = bitcast %union.Node* %151 to %struct.TValue*
  %153 = getelementptr inbounds %struct.TValue, %struct.TValue* %152, i32 0, i32 0
  %154 = bitcast %union.Value* %153 to %struct.GCObject**
  %155 = load %struct.GCObject*, %struct.GCObject** %154, align 8
  call void @reallymarkobject(%struct.global_State* %150, %struct.GCObject* %155)
  br label %156

; <label>:156:                                    ; preds = %149, %138, %130
  br label %157

; <label>:157:                                    ; preds = %156, %129
  br label %158

; <label>:158:                                    ; preds = %157, %87
  br label %159

; <label>:159:                                    ; preds = %158
  %160 = load %union.Node*, %union.Node** %8, align 8
  %161 = getelementptr inbounds %union.Node, %union.Node* %160, i32 1
  store %union.Node* %161, %union.Node** %8, align 8
  br label %75

; <label>:162:                                    ; preds = %75
  %163 = load %struct.global_State*, %struct.global_State** %3, align 8
  %164 = getelementptr inbounds %struct.global_State, %struct.global_State* %163, i32 0, i32 11
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %179

; <label>:168:                                    ; preds = %162
  %169 = load %struct.global_State*, %struct.global_State** %3, align 8
  %170 = getelementptr inbounds %struct.global_State, %struct.global_State* %169, i32 0, i32 24
  %171 = load %struct.GCObject*, %struct.GCObject** %170, align 8
  %172 = load %struct.Table*, %struct.Table** %4, align 8
  %173 = getelementptr inbounds %struct.Table, %struct.Table* %172, i32 0, i32 10
  store %struct.GCObject* %171, %struct.GCObject** %173, align 8
  %174 = load %struct.Table*, %struct.Table** %4, align 8
  %175 = bitcast %struct.Table* %174 to %union.GCUnion*
  %176 = bitcast %union.GCUnion* %175 to %struct.GCObject*
  %177 = load %struct.global_State*, %struct.global_State** %3, align 8
  %178 = getelementptr inbounds %struct.global_State, %struct.global_State* %177, i32 0, i32 24
  store %struct.GCObject* %176, %struct.GCObject** %178, align 8
  br label %234

; <label>:179:                                    ; preds = %162
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %193

; <label>:182:                                    ; preds = %179
  %183 = load %struct.global_State*, %struct.global_State** %3, align 8
  %184 = getelementptr inbounds %struct.global_State, %struct.global_State* %183, i32 0, i32 26
  %185 = load %struct.GCObject*, %struct.GCObject** %184, align 8
  %186 = load %struct.Table*, %struct.Table** %4, align 8
  %187 = getelementptr inbounds %struct.Table, %struct.Table* %186, i32 0, i32 10
  store %struct.GCObject* %185, %struct.GCObject** %187, align 8
  %188 = load %struct.Table*, %struct.Table** %4, align 8
  %189 = bitcast %struct.Table* %188 to %union.GCUnion*
  %190 = bitcast %union.GCUnion* %189 to %struct.GCObject*
  %191 = load %struct.global_State*, %struct.global_State** %3, align 8
  %192 = getelementptr inbounds %struct.global_State, %struct.global_State* %191, i32 0, i32 26
  store %struct.GCObject* %190, %struct.GCObject** %192, align 8
  br label %233

; <label>:193:                                    ; preds = %179
  %194 = load i32, i32* %6, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %207

; <label>:196:                                    ; preds = %193
  %197 = load %struct.global_State*, %struct.global_State** %3, align 8
  %198 = getelementptr inbounds %struct.global_State, %struct.global_State* %197, i32 0, i32 27
  %199 = load %struct.GCObject*, %struct.GCObject** %198, align 8
  %200 = load %struct.Table*, %struct.Table** %4, align 8
  %201 = getelementptr inbounds %struct.Table, %struct.Table* %200, i32 0, i32 10
  store %struct.GCObject* %199, %struct.GCObject** %201, align 8
  %202 = load %struct.Table*, %struct.Table** %4, align 8
  %203 = bitcast %struct.Table* %202 to %union.GCUnion*
  %204 = bitcast %union.GCUnion* %203 to %struct.GCObject*
  %205 = load %struct.global_State*, %struct.global_State** %3, align 8
  %206 = getelementptr inbounds %struct.global_State, %struct.global_State* %205, i32 0, i32 27
  store %struct.GCObject* %204, %struct.GCObject** %206, align 8
  br label %232

; <label>:207:                                    ; preds = %193
  %208 = load %struct.global_State*, %struct.global_State** %3, align 8
  %209 = getelementptr inbounds %struct.global_State, %struct.global_State* %208, i32 0, i32 12
  %210 = load i8, i8* %209, align 2
  %211 = zext i8 %210 to i32
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %224

; <label>:213:                                    ; preds = %207
  %214 = load %struct.global_State*, %struct.global_State** %3, align 8
  %215 = getelementptr inbounds %struct.global_State, %struct.global_State* %214, i32 0, i32 24
  %216 = load %struct.GCObject*, %struct.GCObject** %215, align 8
  %217 = load %struct.Table*, %struct.Table** %4, align 8
  %218 = getelementptr inbounds %struct.Table, %struct.Table* %217, i32 0, i32 10
  store %struct.GCObject* %216, %struct.GCObject** %218, align 8
  %219 = load %struct.Table*, %struct.Table** %4, align 8
  %220 = bitcast %struct.Table* %219 to %union.GCUnion*
  %221 = bitcast %union.GCUnion* %220 to %struct.GCObject*
  %222 = load %struct.global_State*, %struct.global_State** %3, align 8
  %223 = getelementptr inbounds %struct.global_State, %struct.global_State* %222, i32 0, i32 24
  store %struct.GCObject* %221, %struct.GCObject** %223, align 8
  br label %231

; <label>:224:                                    ; preds = %207
  %225 = load %struct.Table*, %struct.Table** %4, align 8
  %226 = getelementptr inbounds %struct.Table, %struct.Table* %225, i32 0, i32 2
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = or i32 %228, 32
  %230 = trunc i32 %229 to i8
  store i8 %230, i8* %226, align 1
  br label %231

; <label>:231:                                    ; preds = %224, %213
  br label %232

; <label>:232:                                    ; preds = %231, %196
  br label %233

; <label>:233:                                    ; preds = %232, %182
  br label %234

; <label>:234:                                    ; preds = %233, %168
  %235 = load i32, i32* %5, align 4
  ret i32 %235
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @traversestrongtable(%struct.global_State*, %struct.Table*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.Table*, align 8
  %5 = alloca %union.Node*, align 8
  %6 = alloca %union.Node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.Table* %1, %struct.Table** %4, align 8
  %9 = load %struct.Table*, %struct.Table** %4, align 8
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %9, i32 0, i32 7
  %11 = load %union.Node*, %union.Node** %10, align 8
  %12 = load %struct.Table*, %struct.Table** %4, align 8
  %13 = getelementptr inbounds %struct.Table, %struct.Table* %12, i32 0, i32 4
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl i32 1, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %union.Node, %union.Node* %11, i64 %17
  store %union.Node* %18, %union.Node** %6, align 8
  %19 = load %struct.Table*, %struct.Table** %4, align 8
  %20 = call i32 @luaH_realasize(%struct.Table* %19)
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %21

; <label>:21:                                     ; preds = %64, %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %67

; <label>:25:                                     ; preds = %21
  %26 = load %struct.Table*, %struct.Table** %4, align 8
  %27 = getelementptr inbounds %struct.Table, %struct.Table* %26, i32 0, i32 6
  %28 = load %struct.TValue*, %struct.TValue** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i64 %30
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 8
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 64
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %63

; <label>:37:                                     ; preds = %25
  %38 = load %struct.Table*, %struct.Table** %4, align 8
  %39 = getelementptr inbounds %struct.Table, %struct.Table* %38, i32 0, i32 6
  %40 = load %struct.TValue*, %struct.TValue** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i64 %42
  %44 = getelementptr inbounds %struct.TValue, %struct.TValue* %43, i32 0, i32 0
  %45 = bitcast %union.Value* %44 to %struct.GCObject**
  %46 = load %struct.GCObject*, %struct.GCObject** %45, align 8
  %47 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %46, i32 0, i32 2
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 24
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

; <label>:52:                                     ; preds = %37
  %53 = load %struct.global_State*, %struct.global_State** %3, align 8
  %54 = load %struct.Table*, %struct.Table** %4, align 8
  %55 = getelementptr inbounds %struct.Table, %struct.Table* %54, i32 0, i32 6
  %56 = load %struct.TValue*, %struct.TValue** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TValue, %struct.TValue* %56, i64 %58
  %60 = getelementptr inbounds %struct.TValue, %struct.TValue* %59, i32 0, i32 0
  %61 = bitcast %union.Value* %60 to %struct.GCObject**
  %62 = load %struct.GCObject*, %struct.GCObject** %61, align 8
  call void @reallymarkobject(%struct.global_State* %53, %struct.GCObject* %62)
  br label %63

; <label>:63:                                     ; preds = %52, %37, %25
  br label %64

; <label>:64:                                     ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %21

; <label>:67:                                     ; preds = %21
  %68 = load %struct.Table*, %struct.Table** %4, align 8
  %69 = getelementptr inbounds %struct.Table, %struct.Table* %68, i32 0, i32 7
  %70 = load %union.Node*, %union.Node** %69, align 8
  %71 = getelementptr inbounds %union.Node, %union.Node* %70, i64 0
  store %union.Node* %71, %union.Node** %5, align 8
  br label %72

; <label>:72:                                     ; preds = %140, %67
  %73 = load %union.Node*, %union.Node** %5, align 8
  %74 = load %union.Node*, %union.Node** %6, align 8
  %75 = icmp ult %union.Node* %73, %74
  br i1 %75, label %76, label %143

; <label>:76:                                     ; preds = %72
  %77 = load %union.Node*, %union.Node** %5, align 8
  %78 = bitcast %union.Node* %77 to %struct.TValue*
  %79 = getelementptr inbounds %struct.TValue, %struct.TValue* %78, i32 0, i32 1
  %80 = load i8, i8* %79, align 8
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, 15
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

; <label>:84:                                     ; preds = %76
  %85 = load %union.Node*, %union.Node** %5, align 8
  call void @clearkey(%union.Node* %85)
  br label %139

; <label>:86:                                     ; preds = %76
  %87 = load %union.Node*, %union.Node** %5, align 8
  %88 = bitcast %union.Node* %87 to %struct.NodeKey*
  %89 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %88, i32 0, i32 2
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, 64
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %112

; <label>:94:                                     ; preds = %86
  %95 = load %union.Node*, %union.Node** %5, align 8
  %96 = bitcast %union.Node* %95 to %struct.NodeKey*
  %97 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %96, i32 0, i32 4
  %98 = bitcast %union.Value* %97 to %struct.GCObject**
  %99 = load %struct.GCObject*, %struct.GCObject** %98, align 8
  %100 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %99, i32 0, i32 2
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 24
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

; <label>:105:                                    ; preds = %94
  %106 = load %struct.global_State*, %struct.global_State** %3, align 8
  %107 = load %union.Node*, %union.Node** %5, align 8
  %108 = bitcast %union.Node* %107 to %struct.NodeKey*
  %109 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %108, i32 0, i32 4
  %110 = bitcast %union.Value* %109 to %struct.GCObject**
  %111 = load %struct.GCObject*, %struct.GCObject** %110, align 8
  call void @reallymarkobject(%struct.global_State* %106, %struct.GCObject* %111)
  br label %112

; <label>:112:                                    ; preds = %105, %94, %86
  %113 = load %union.Node*, %union.Node** %5, align 8
  %114 = bitcast %union.Node* %113 to %struct.TValue*
  %115 = getelementptr inbounds %struct.TValue, %struct.TValue* %114, i32 0, i32 1
  %116 = load i8, i8* %115, align 8
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 64
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %138

; <label>:120:                                    ; preds = %112
  %121 = load %union.Node*, %union.Node** %5, align 8
  %122 = bitcast %union.Node* %121 to %struct.TValue*
  %123 = getelementptr inbounds %struct.TValue, %struct.TValue* %122, i32 0, i32 0
  %124 = bitcast %union.Value* %123 to %struct.GCObject**
  %125 = load %struct.GCObject*, %struct.GCObject** %124, align 8
  %126 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %125, i32 0, i32 2
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %128, 24
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

; <label>:131:                                    ; preds = %120
  %132 = load %struct.global_State*, %struct.global_State** %3, align 8
  %133 = load %union.Node*, %union.Node** %5, align 8
  %134 = bitcast %union.Node* %133 to %struct.TValue*
  %135 = getelementptr inbounds %struct.TValue, %struct.TValue* %134, i32 0, i32 0
  %136 = bitcast %union.Value* %135 to %struct.GCObject**
  %137 = load %struct.GCObject*, %struct.GCObject** %136, align 8
  call void @reallymarkobject(%struct.global_State* %132, %struct.GCObject* %137)
  br label %138

; <label>:138:                                    ; preds = %131, %120, %112
  br label %139

; <label>:139:                                    ; preds = %138, %84
  br label %140

; <label>:140:                                    ; preds = %139
  %141 = load %union.Node*, %union.Node** %5, align 8
  %142 = getelementptr inbounds %union.Node, %union.Node* %141, i32 1
  store %union.Node* %142, %union.Node** %5, align 8
  br label %72

; <label>:143:                                    ; preds = %72
  %144 = load %struct.global_State*, %struct.global_State** %3, align 8
  %145 = getelementptr inbounds %struct.global_State, %struct.global_State* %144, i32 0, i32 12
  %146 = load i8, i8* %145, align 2
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %166

; <label>:149:                                    ; preds = %143
  %150 = load %struct.global_State*, %struct.global_State** %3, align 8
  %151 = getelementptr inbounds %struct.global_State, %struct.global_State* %150, i32 0, i32 24
  %152 = load %struct.GCObject*, %struct.GCObject** %151, align 8
  %153 = load %struct.Table*, %struct.Table** %4, align 8
  %154 = getelementptr inbounds %struct.Table, %struct.Table* %153, i32 0, i32 10
  store %struct.GCObject* %152, %struct.GCObject** %154, align 8
  %155 = load %struct.Table*, %struct.Table** %4, align 8
  %156 = bitcast %struct.Table* %155 to %union.GCUnion*
  %157 = bitcast %union.GCUnion* %156 to %struct.GCObject*
  %158 = load %struct.global_State*, %struct.global_State** %3, align 8
  %159 = getelementptr inbounds %struct.global_State, %struct.global_State* %158, i32 0, i32 24
  store %struct.GCObject* %157, %struct.GCObject** %159, align 8
  %160 = load %struct.Table*, %struct.Table** %4, align 8
  %161 = getelementptr inbounds %struct.Table, %struct.Table* %160, i32 0, i32 2
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = and i32 %163, 223
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %161, align 1
  br label %166

; <label>:166:                                    ; preds = %149, %143
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clearkey(%union.Node*) #0 {
  %2 = alloca %union.Node*, align 8
  store %union.Node* %0, %union.Node** %2, align 8
  %3 = load %union.Node*, %union.Node** %2, align 8
  %4 = bitcast %union.Node* %3 to %struct.NodeKey*
  %5 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %4, i32 0, i32 2
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 64
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %29

; <label>:10:                                     ; preds = %1
  %11 = load %union.Node*, %union.Node** %2, align 8
  %12 = bitcast %union.Node* %11 to %struct.NodeKey*
  %13 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %12, i32 0, i32 4
  %14 = bitcast %union.Value* %13 to %struct.GCObject**
  %15 = load %struct.GCObject*, %struct.GCObject** %14, align 8
  %16 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %15, i32 0, i32 2
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 24
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %10
  %22 = load %union.Node*, %union.Node** %2, align 8
  %23 = bitcast %union.Node* %22 to %struct.NodeKey*
  %24 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %23, i32 0, i32 2
  store i8 5, i8* %24, align 1
  %25 = load %union.Node*, %union.Node** %2, align 8
  %26 = bitcast %union.Node* %25 to %struct.NodeKey*
  %27 = getelementptr inbounds %struct.NodeKey, %struct.NodeKey* %26, i32 0, i32 4
  %28 = bitcast %union.Value* %27 to %struct.GCObject**
  store %struct.GCObject* null, %struct.GCObject** %28, align 8
  br label %29

; <label>:29:                                     ; preds = %21, %10, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscleared(%struct.global_State*, %struct.GCObject*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca %struct.GCObject*, align 8
  store %struct.global_State* %0, %struct.global_State** %4, align 8
  store %struct.GCObject* %1, %struct.GCObject** %5, align 8
  %6 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %7 = icmp eq %struct.GCObject* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

; <label>:9:                                      ; preds = %2
  %10 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %11 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 8
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 15
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %29

; <label>:16:                                     ; preds = %9
  %17 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %18 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %17, i32 0, i32 2
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 24
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

; <label>:23:                                     ; preds = %16
  %24 = load %struct.global_State*, %struct.global_State** %4, align 8
  %25 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %26 = bitcast %struct.GCObject* %25 to %union.GCUnion*
  %27 = bitcast %union.GCUnion* %26 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %24, %struct.GCObject* %27)
  br label %28

; <label>:28:                                     ; preds = %23, %16
  store i32 0, i32* %3, align 4
  br label %35

; <label>:29:                                     ; preds = %9
  %30 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %31 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %30, i32 0, i32 2
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 24
  store i32 %34, i32* %3, align 4
  br label %35

; <label>:35:                                     ; preds = %29, %28, %8
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare hidden i32 @luaH_realasize(%struct.Table*) #1

declare hidden void @luaD_shrinkstack(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sweep2old(%struct.lua_State*, %struct.GCObject**) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.GCObject**, align 8
  %5 = alloca %struct.GCObject*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.GCObject** %1, %struct.GCObject*** %4, align 8
  br label %6

; <label>:6:                                      ; preds = %36, %2
  %7 = load %struct.GCObject**, %struct.GCObject*** %4, align 8
  %8 = load %struct.GCObject*, %struct.GCObject** %7, align 8
  store %struct.GCObject* %8, %struct.GCObject** %5, align 8
  %9 = icmp ne %struct.GCObject* %8, null
  br i1 %9, label %10, label %37

; <label>:10:                                     ; preds = %6
  %11 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %12 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %11, i32 0, i32 2
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 24
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

; <label>:17:                                     ; preds = %10
  %18 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %19 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %18, i32 0, i32 0
  %20 = load %struct.GCObject*, %struct.GCObject** %19, align 8
  %21 = load %struct.GCObject**, %struct.GCObject*** %4, align 8
  store %struct.GCObject* %20, %struct.GCObject** %21, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %23 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  call void @freeobj(%struct.lua_State* %22, %struct.GCObject* %23)
  br label %36

; <label>:24:                                     ; preds = %10
  %25 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %26 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %25, i32 0, i32 2
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, -8
  %30 = or i32 %29, 4
  %31 = trunc i32 %30 to i8
  %32 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %33 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %32, i32 0, i32 2
  store i8 %31, i8* %33, align 1
  %34 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %35 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %34, i32 0, i32 0
  store %struct.GCObject** %35, %struct.GCObject*** %4, align 8
  br label %36

; <label>:36:                                     ; preds = %24, %17
  br label %6

; <label>:37:                                     ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finishgencycle(%struct.lua_State*, %struct.global_State*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.global_State* %1, %struct.global_State** %4, align 8
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @correctgraylists(%struct.global_State* %5)
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @checkSizes(%struct.lua_State* %6, %struct.global_State* %7)
  %8 = load %struct.global_State*, %struct.global_State** %4, align 8
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %8, i32 0, i32 11
  store i8 0, i8* %9, align 1
  %10 = load %struct.global_State*, %struct.global_State** %4, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 16
  %12 = load i8, i8* %11, align 2
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %16, label %14

; <label>:14:                                     ; preds = %2
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @callallpendingfinalizers(%struct.lua_State* %15)
  br label %16

; <label>:16:                                     ; preds = %14, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @correctgraylists(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  %3 = alloca %struct.GCObject**, align 8
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  %4 = load %struct.global_State*, %struct.global_State** %2, align 8
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 24
  %6 = call %struct.GCObject** @correctgraylist(%struct.GCObject** %5)
  store %struct.GCObject** %6, %struct.GCObject*** %3, align 8
  %7 = load %struct.global_State*, %struct.global_State** %2, align 8
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 25
  %9 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  %10 = load %struct.GCObject**, %struct.GCObject*** %3, align 8
  store %struct.GCObject* %9, %struct.GCObject** %10, align 8
  %11 = load %struct.global_State*, %struct.global_State** %2, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 25
  store %struct.GCObject* null, %struct.GCObject** %12, align 8
  %13 = load %struct.GCObject**, %struct.GCObject*** %3, align 8
  %14 = call %struct.GCObject** @correctgraylist(%struct.GCObject** %13)
  store %struct.GCObject** %14, %struct.GCObject*** %3, align 8
  %15 = load %struct.global_State*, %struct.global_State** %2, align 8
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 27
  %17 = load %struct.GCObject*, %struct.GCObject** %16, align 8
  %18 = load %struct.GCObject**, %struct.GCObject*** %3, align 8
  store %struct.GCObject* %17, %struct.GCObject** %18, align 8
  %19 = load %struct.global_State*, %struct.global_State** %2, align 8
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i32 0, i32 27
  store %struct.GCObject* null, %struct.GCObject** %20, align 8
  %21 = load %struct.GCObject**, %struct.GCObject*** %3, align 8
  %22 = call %struct.GCObject** @correctgraylist(%struct.GCObject** %21)
  store %struct.GCObject** %22, %struct.GCObject*** %3, align 8
  %23 = load %struct.global_State*, %struct.global_State** %2, align 8
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 26
  %25 = load %struct.GCObject*, %struct.GCObject** %24, align 8
  %26 = load %struct.GCObject**, %struct.GCObject*** %3, align 8
  store %struct.GCObject* %25, %struct.GCObject** %26, align 8
  %27 = load %struct.global_State*, %struct.global_State** %2, align 8
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i32 0, i32 26
  store %struct.GCObject* null, %struct.GCObject** %28, align 8
  %29 = load %struct.GCObject**, %struct.GCObject*** %3, align 8
  %30 = call %struct.GCObject** @correctgraylist(%struct.GCObject** %29)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkSizes(%struct.lua_State*, %struct.global_State*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.global_State* %1, %struct.global_State** %4, align 8
  %6 = load %struct.global_State*, %struct.global_State** %4, align 8
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 16
  %8 = load i8, i8* %7, align 2
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %41, label %10

; <label>:10:                                     ; preds = %2
  %11 = load %struct.global_State*, %struct.global_State** %4, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.global_State*, %struct.global_State** %4, align 8
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.global_State*, %struct.global_State** %4, align 8
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 4
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %31

; <label>:24:                                     ; preds = %10
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = load %struct.global_State*, %struct.global_State** %4, align 8
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 2
  call void @luaS_resize(%struct.lua_State* %25, i32 %30)
  br label %31

; <label>:31:                                     ; preds = %24, %10
  %32 = load %struct.global_State*, %struct.global_State** %4, align 8
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = sub nsw i64 %34, %35
  %37 = load %struct.global_State*, %struct.global_State** %4, align 8
  %38 = getelementptr inbounds %struct.global_State, %struct.global_State* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, %36
  store i64 %40, i64* %38, align 8
  br label %41

; <label>:41:                                     ; preds = %31, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.GCObject** @correctgraylist(%struct.GCObject**) #0 {
  %2 = alloca %struct.GCObject**, align 8
  %3 = alloca %struct.GCObject*, align 8
  %4 = alloca %struct.GCObject**, align 8
  %5 = alloca %struct.lua_State*, align 8
  store %struct.GCObject** %0, %struct.GCObject*** %2, align 8
  br label %6

; <label>:6:                                      ; preds = %91, %1
  %7 = load %struct.GCObject**, %struct.GCObject*** %2, align 8
  %8 = load %struct.GCObject*, %struct.GCObject** %7, align 8
  store %struct.GCObject* %8, %struct.GCObject** %3, align 8
  %9 = icmp ne %struct.GCObject* %8, null
  br i1 %9, label %10, label %92

; <label>:10:                                     ; preds = %6
  %11 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %12 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %11, i32 0, i32 1
  %13 = load i8, i8* %12, align 8
  %14 = zext i8 %13 to i32
  switch i32 %14, label %90 [
    i32 5, label %15
    i32 7, label %15
    i32 8, label %71
  ]

; <label>:15:                                     ; preds = %10, %10
  %16 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %17 = call %struct.GCObject** @getgclist(%struct.GCObject* %16)
  store %struct.GCObject** %17, %struct.GCObject*** %4, align 8
  %18 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %19 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %18, i32 0, i32 2
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 7
  %23 = icmp eq i32 %22, 5
  br i1 %23, label %24, label %38

; <label>:24:                                     ; preds = %15
  %25 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %26 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %25, i32 0, i32 2
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, 32
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %26, align 1
  %31 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %32 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %31, i32 0, i32 2
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = xor i32 %34, 3
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %32, align 1
  %37 = load %struct.GCObject**, %struct.GCObject*** %4, align 8
  store %struct.GCObject** %37, %struct.GCObject*** %2, align 8
  br label %70

; <label>:38:                                     ; preds = %15
  %39 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %40 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %39, i32 0, i32 2
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 24
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %66, label %45

; <label>:45:                                     ; preds = %38
  %46 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %47 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %46, i32 0, i32 2
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 7
  %51 = icmp eq i32 %50, 6
  br i1 %51, label %52, label %59

; <label>:52:                                     ; preds = %45
  %53 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %54 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %53, i32 0, i32 2
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = xor i32 %56, 2
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 1
  br label %59

; <label>:59:                                     ; preds = %52, %45
  %60 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %61 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %60, i32 0, i32 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %63, 32
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %61, align 1
  br label %66

; <label>:66:                                     ; preds = %59, %38
  %67 = load %struct.GCObject**, %struct.GCObject*** %4, align 8
  %68 = load %struct.GCObject*, %struct.GCObject** %67, align 8
  %69 = load %struct.GCObject**, %struct.GCObject*** %2, align 8
  store %struct.GCObject* %68, %struct.GCObject** %69, align 8
  br label %70

; <label>:70:                                     ; preds = %66, %24
  br label %91

; <label>:71:                                     ; preds = %10
  %72 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %73 = bitcast %struct.GCObject* %72 to %union.GCUnion*
  %74 = bitcast %union.GCUnion* %73 to %struct.lua_State*
  store %struct.lua_State* %74, %struct.lua_State** %5, align 8
  %75 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %76 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %75, i32 0, i32 2
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 24
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

; <label>:81:                                     ; preds = %71
  %82 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %83 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %82, i32 0, i32 13
  %84 = load %struct.GCObject*, %struct.GCObject** %83, align 8
  %85 = load %struct.GCObject**, %struct.GCObject*** %2, align 8
  store %struct.GCObject* %84, %struct.GCObject** %85, align 8
  br label %89

; <label>:86:                                     ; preds = %71
  %87 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %88 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %87, i32 0, i32 13
  store %struct.GCObject** %88, %struct.GCObject*** %2, align 8
  br label %89

; <label>:89:                                     ; preds = %86, %81
  br label %91

; <label>:90:                                     ; preds = %10
  br label %91

; <label>:91:                                     ; preds = %90, %89, %70
  br label %6

; <label>:92:                                     ; preds = %6
  %93 = load %struct.GCObject**, %struct.GCObject*** %2, align 8
  ret %struct.GCObject** %93
}

declare hidden void @luaS_resize(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whitelist(%struct.global_State*, %struct.GCObject*) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.GCObject*, align 8
  %5 = alloca i32, align 4
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store %struct.GCObject* %1, %struct.GCObject** %4, align 8
  %6 = load %struct.global_State*, %struct.global_State** %3, align 8
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 10
  %8 = load i8, i8* %7, align 4
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 24
  %11 = trunc i32 %10 to i8
  %12 = zext i8 %11 to i32
  store i32 %12, i32* %5, align 4
  br label %13

; <label>:13:                                     ; preds = %27, %2
  %14 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %15 = icmp ne %struct.GCObject* %14, null
  br i1 %15, label %16, label %31

; <label>:16:                                     ; preds = %13
  %17 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %18 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %17, i32 0, i32 2
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, -64
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %21, %22
  %24 = trunc i32 %23 to i8
  %25 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %26 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %25, i32 0, i32 2
  store i8 %24, i8* %26, align 1
  br label %27

; <label>:27:                                     ; preds = %16
  %28 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %29 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %28, i32 0, i32 0
  %30 = load %struct.GCObject*, %struct.GCObject** %29, align 8
  store %struct.GCObject* %30, %struct.GCObject** %4, align 8
  br label %13

; <label>:31:                                     ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.GCObject** @findlast(%struct.GCObject**) #0 {
  %2 = alloca %struct.GCObject**, align 8
  store %struct.GCObject** %0, %struct.GCObject*** %2, align 8
  br label %3

; <label>:3:                                      ; preds = %7, %1
  %4 = load %struct.GCObject**, %struct.GCObject*** %2, align 8
  %5 = load %struct.GCObject*, %struct.GCObject** %4, align 8
  %6 = icmp ne %struct.GCObject* %5, null
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %3
  %8 = load %struct.GCObject**, %struct.GCObject*** %2, align 8
  %9 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %9, i32 0, i32 0
  store %struct.GCObject** %10, %struct.GCObject*** %2, align 8
  br label %3

; <label>:11:                                     ; preds = %3
  %12 = load %struct.GCObject**, %struct.GCObject*** %2, align 8
  ret %struct.GCObject** %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GCTM(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.TValue*, align 8
  %5 = alloca %struct.TValue, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.GCObject*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.TValue*, align 8
  %12 = alloca %struct.TValue*, align 8
  %13 = alloca %struct.TValue*, align 8
  %14 = alloca %struct.TValue*, align 8
  %15 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 7
  %18 = load %struct.global_State*, %struct.global_State** %17, align 8
  store %struct.global_State* %18, %struct.global_State** %3, align 8
  store %struct.TValue* %5, %struct.TValue** %6, align 8
  %19 = load %struct.global_State*, %struct.global_State** %3, align 8
  %20 = call %struct.GCObject* @udata2finalize(%struct.global_State* %19)
  store %struct.GCObject* %20, %struct.GCObject** %7, align 8
  %21 = load %struct.GCObject*, %struct.GCObject** %7, align 8
  %22 = load %struct.TValue*, %struct.TValue** %6, align 8
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %22, i32 0, i32 0
  %24 = bitcast %union.Value* %23 to %struct.GCObject**
  store %struct.GCObject* %21, %struct.GCObject** %24, align 8
  %25 = load %struct.GCObject*, %struct.GCObject** %7, align 8
  %26 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %25, i32 0, i32 1
  %27 = load i8, i8* %26, align 8
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, 64
  %30 = trunc i32 %29 to i8
  %31 = load %struct.TValue*, %struct.TValue** %6, align 8
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i32 0, i32 1
  store i8 %30, i8* %32, align 8
  %33 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %34 = call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %33, %struct.TValue* %5, i32 2)
  store %struct.TValue* %34, %struct.TValue** %4, align 8
  %35 = load %struct.TValue*, %struct.TValue** %4, align 8
  %36 = getelementptr inbounds %struct.TValue, %struct.TValue* %35, i32 0, i32 1
  %37 = load i8, i8* %36, align 8
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 15
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %162, label %41

; <label>:41:                                     ; preds = %1
  %42 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 4
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %9, align 1
  %45 = load %struct.global_State*, %struct.global_State** %3, align 8
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i32 0, i32 15
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %49, i32 0, i32 4
  store i8 0, i8* %50, align 1
  %51 = load %struct.global_State*, %struct.global_State** %3, align 8
  %52 = getelementptr inbounds %struct.global_State, %struct.global_State* %51, i32 0, i32 15
  store i8 0, i8* %52, align 1
  %53 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %54 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %53, i32 0, i32 6
  %55 = load %union.StackValue*, %union.StackValue** %54, align 8
  %56 = bitcast %union.StackValue* %55 to %struct.TValue*
  store %struct.TValue* %56, %struct.TValue** %11, align 8
  %57 = load %struct.TValue*, %struct.TValue** %4, align 8
  store %struct.TValue* %57, %struct.TValue** %12, align 8
  %58 = load %struct.TValue*, %struct.TValue** %11, align 8
  %59 = getelementptr inbounds %struct.TValue, %struct.TValue* %58, i32 0, i32 0
  %60 = load %struct.TValue*, %struct.TValue** %12, align 8
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i32 0, i32 0
  %62 = bitcast %union.Value* %59 to i8*
  %63 = bitcast %union.Value* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 8, i32 8, i1 false)
  %64 = load %struct.TValue*, %struct.TValue** %12, align 8
  %65 = getelementptr inbounds %struct.TValue, %struct.TValue* %64, i32 0, i32 1
  %66 = load i8, i8* %65, align 8
  %67 = load %struct.TValue*, %struct.TValue** %11, align 8
  %68 = getelementptr inbounds %struct.TValue, %struct.TValue* %67, i32 0, i32 1
  store i8 %66, i8* %68, align 8
  %69 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %70 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %70, i32 0, i32 6
  %72 = load %union.StackValue*, %union.StackValue** %71, align 8
  %73 = getelementptr inbounds %union.StackValue, %union.StackValue* %72, i64 1
  %74 = bitcast %union.StackValue* %73 to %struct.TValue*
  store %struct.TValue* %74, %struct.TValue** %13, align 8
  store %struct.TValue* %5, %struct.TValue** %14, align 8
  %75 = load %struct.TValue*, %struct.TValue** %13, align 8
  %76 = getelementptr inbounds %struct.TValue, %struct.TValue* %75, i32 0, i32 0
  %77 = load %struct.TValue*, %struct.TValue** %14, align 8
  %78 = getelementptr inbounds %struct.TValue, %struct.TValue* %77, i32 0, i32 0
  %79 = bitcast %union.Value* %76 to i8*
  %80 = bitcast %union.Value* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 8, i32 8, i1 false)
  %81 = load %struct.TValue*, %struct.TValue** %14, align 8
  %82 = getelementptr inbounds %struct.TValue, %struct.TValue* %81, i32 0, i32 1
  %83 = load i8, i8* %82, align 8
  %84 = load %struct.TValue*, %struct.TValue** %13, align 8
  %85 = getelementptr inbounds %struct.TValue, %struct.TValue* %84, i32 0, i32 1
  store i8 %83, i8* %85, align 8
  %86 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %87 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %88 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %87, i32 0, i32 6
  %89 = load %union.StackValue*, %union.StackValue** %88, align 8
  %90 = getelementptr inbounds %union.StackValue, %union.StackValue* %89, i64 2
  store %union.StackValue* %90, %union.StackValue** %88, align 8
  %91 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %92 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %91, i32 0, i32 8
  %93 = load %struct.CallInfo*, %struct.CallInfo** %92, align 8
  %94 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %93, i32 0, i32 7
  %95 = load i16, i16* %94, align 2
  %96 = zext i16 %95 to i32
  %97 = or i32 %96, 64
  %98 = trunc i32 %97 to i16
  store i16 %98, i16* %94, align 2
  %99 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %100 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %101 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %100, i32 0, i32 6
  %102 = load %union.StackValue*, %union.StackValue** %101, align 8
  %103 = getelementptr inbounds %union.StackValue, %union.StackValue* %102, i64 -2
  %104 = bitcast %union.StackValue* %103 to i8*
  %105 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %106 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %105, i32 0, i32 11
  %107 = load %union.StackValue*, %union.StackValue** %106, align 8
  %108 = bitcast %union.StackValue* %107 to i8*
  %109 = ptrtoint i8* %104 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = call i32 @luaD_pcall(%struct.lua_State* %99, void (%struct.lua_State*, i8*)* @dothecall, i8* null, i64 %111, i64 0)
  store i32 %112, i32* %8, align 4
  %113 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %114 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %113, i32 0, i32 8
  %115 = load %struct.CallInfo*, %struct.CallInfo** %114, align 8
  %116 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %115, i32 0, i32 7
  %117 = load i16, i16* %116, align 2
  %118 = zext i16 %117 to i32
  %119 = and i32 %118, -65
  %120 = trunc i32 %119 to i16
  store i16 %120, i16* %116, align 2
  %121 = load i8, i8* %9, align 1
  %122 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %123 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %122, i32 0, i32 4
  store i8 %121, i8* %123, align 1
  %124 = load i32, i32* %10, align 4
  %125 = trunc i32 %124 to i8
  %126 = load %struct.global_State*, %struct.global_State** %3, align 8
  %127 = getelementptr inbounds %struct.global_State, %struct.global_State* %126, i32 0, i32 15
  store i8 %125, i8* %127, align 1
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %161

; <label>:130:                                    ; preds = %41
  %131 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %132 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %131, i32 0, i32 6
  %133 = load %union.StackValue*, %union.StackValue** %132, align 8
  %134 = getelementptr inbounds %union.StackValue, %union.StackValue* %133, i64 -1
  %135 = bitcast %union.StackValue* %134 to %struct.TValue*
  %136 = getelementptr inbounds %struct.TValue, %struct.TValue* %135, i32 0, i32 1
  %137 = load i8, i8* %136, align 8
  %138 = zext i8 %137 to i32
  %139 = and i32 %138, 15
  %140 = icmp eq i32 %139, 4
  br i1 %140, label %141, label %154

; <label>:141:                                    ; preds = %130
  %142 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %143 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %142, i32 0, i32 6
  %144 = load %union.StackValue*, %union.StackValue** %143, align 8
  %145 = getelementptr inbounds %union.StackValue, %union.StackValue* %144, i64 -1
  %146 = bitcast %union.StackValue* %145 to %struct.TValue*
  %147 = getelementptr inbounds %struct.TValue, %struct.TValue* %146, i32 0, i32 0
  %148 = bitcast %union.Value* %147 to %struct.GCObject**
  %149 = load %struct.GCObject*, %struct.GCObject** %148, align 8
  %150 = bitcast %struct.GCObject* %149 to %union.GCUnion*
  %151 = bitcast %union.GCUnion* %150 to %struct.TString*
  %152 = bitcast %struct.TString* %151 to i8*
  %153 = getelementptr inbounds i8, i8* %152, i64 24
  br label %155

; <label>:154:                                    ; preds = %130
  br label %155

; <label>:155:                                    ; preds = %154, %141
  %156 = phi i8* [ %153, %141 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), %154 ]
  store i8* %156, i8** %15, align 8
  %157 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaE_warning(%struct.lua_State* %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i32 1)
  %158 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %159 = load i8*, i8** %15, align 8
  call void @luaE_warning(%struct.lua_State* %158, i8* %159, i32 1)
  %160 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaE_warning(%struct.lua_State* %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i32 0)
  br label %161

; <label>:161:                                    ; preds = %155, %41
  br label %162

; <label>:162:                                    ; preds = %161, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.GCObject* @udata2finalize(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  %3 = alloca %struct.GCObject*, align 8
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  %4 = load %struct.global_State*, %struct.global_State** %2, align 8
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 28
  %6 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  store %struct.GCObject* %6, %struct.GCObject** %3, align 8
  %7 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %8 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i32 0, i32 0
  %9 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  %10 = load %struct.global_State*, %struct.global_State** %2, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 28
  store %struct.GCObject* %9, %struct.GCObject** %11, align 8
  %12 = load %struct.global_State*, %struct.global_State** %2, align 8
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 20
  %14 = load %struct.GCObject*, %struct.GCObject** %13, align 8
  %15 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %16 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %15, i32 0, i32 0
  store %struct.GCObject* %14, %struct.GCObject** %16, align 8
  %17 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %18 = load %struct.global_State*, %struct.global_State** %2, align 8
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 20
  store %struct.GCObject* %17, %struct.GCObject** %19, align 8
  %20 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %21 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %20, i32 0, i32 2
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 191
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %21, align 1
  %26 = load %struct.global_State*, %struct.global_State** %2, align 8
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 11
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sle i32 3, %29
  br i1 %30, label %31, label %54

; <label>:31:                                     ; preds = %1
  %32 = load %struct.global_State*, %struct.global_State** %2, align 8
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i32 0, i32 11
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp sle i32 %35, 6
  br i1 %36, label %37, label %54

; <label>:37:                                     ; preds = %31
  %38 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %39 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %38, i32 0, i32 2
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, -64
  %43 = load %struct.global_State*, %struct.global_State** %2, align 8
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i32 0, i32 10
  %45 = load i8, i8* %44, align 4
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 24
  %48 = trunc i32 %47 to i8
  %49 = zext i8 %48 to i32
  %50 = or i32 %42, %49
  %51 = trunc i32 %50 to i8
  %52 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %53 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %52, i32 0, i32 2
  store i8 %51, i8* %53, align 1
  br label %54

; <label>:54:                                     ; preds = %37, %31, %1
  %55 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  ret %struct.GCObject* %55
}

declare hidden %struct.TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.TValue*, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dothecall(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 6
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8
  %10 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 -2
  call void @luaD_callnoyield(%struct.lua_State* %6, %union.StackValue* %10, i32 0)
  ret void
}

declare hidden void @luaE_warning(%struct.lua_State*, i8*, i32) #1

declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restartcollection(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i32 0, i32 24
  store %struct.GCObject* null, %struct.GCObject** %4, align 8
  %5 = load %struct.global_State*, %struct.global_State** %2, align 8
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i32 0, i32 23
  store %struct.GCObject* null, %struct.GCObject** %6, align 8
  %7 = load %struct.global_State*, %struct.global_State** %2, align 8
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 26
  store %struct.GCObject* null, %struct.GCObject** %8, align 8
  %9 = load %struct.global_State*, %struct.global_State** %2, align 8
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i32 0, i32 27
  store %struct.GCObject* null, %struct.GCObject** %10, align 8
  %11 = load %struct.global_State*, %struct.global_State** %2, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 25
  store %struct.GCObject* null, %struct.GCObject** %12, align 8
  %13 = load %struct.global_State*, %struct.global_State** %2, align 8
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i32 0, i32 38
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 2
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 24
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %1
  %22 = load %struct.global_State*, %struct.global_State** %2, align 8
  %23 = load %struct.global_State*, %struct.global_State** %2, align 8
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 38
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8
  %26 = bitcast %struct.lua_State* %25 to %union.GCUnion*
  %27 = bitcast %union.GCUnion* %26 to %struct.GCObject*
  call void @reallymarkobject(%struct.global_State* %22, %struct.GCObject* %27)
  br label %28

; <label>:28:                                     ; preds = %21, %1
  %29 = load %struct.global_State*, %struct.global_State** %2, align 8
  %30 = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %30, i32 0, i32 1
  %32 = load i8, i8* %31, align 8
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 64
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

; <label>:36:                                     ; preds = %28
  %37 = load %struct.global_State*, %struct.global_State** %2, align 8
  %38 = getelementptr inbounds %struct.global_State, %struct.global_State* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TValue, %struct.TValue* %38, i32 0, i32 0
  %40 = bitcast %union.Value* %39 to %struct.GCObject**
  %41 = load %struct.GCObject*, %struct.GCObject** %40, align 8
  %42 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %41, i32 0, i32 2
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 24
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

; <label>:47:                                     ; preds = %36
  %48 = load %struct.global_State*, %struct.global_State** %2, align 8
  %49 = load %struct.global_State*, %struct.global_State** %2, align 8
  %50 = getelementptr inbounds %struct.global_State, %struct.global_State* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TValue, %struct.TValue* %50, i32 0, i32 0
  %52 = bitcast %union.Value* %51 to %struct.GCObject**
  %53 = load %struct.GCObject*, %struct.GCObject** %52, align 8
  call void @reallymarkobject(%struct.global_State* %48, %struct.GCObject* %53)
  br label %54

; <label>:54:                                     ; preds = %47, %36, %28
  %55 = load %struct.global_State*, %struct.global_State** %2, align 8
  call void @markmt(%struct.global_State* %55)
  %56 = load %struct.global_State*, %struct.global_State** %2, align 8
  %57 = call i64 @markbeingfnz(%struct.global_State* %56)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @entersweep(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 7
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8
  store %struct.global_State* %6, %struct.global_State** %3, align 8
  %7 = load %struct.global_State*, %struct.global_State** %3, align 8
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 11
  store i8 3, i8* %8, align 1
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = load %struct.global_State*, %struct.global_State** %3, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 20
  %12 = call %struct.GCObject** @sweeptolive(%struct.lua_State* %9, %struct.GCObject** %11)
  %13 = load %struct.global_State*, %struct.global_State** %3, align 8
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i32 0, i32 21
  store %struct.GCObject** %12, %struct.GCObject*** %14, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sweepstep(%struct.lua_State*, %struct.global_State*, i32, %struct.GCObject**) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.global_State*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.GCObject**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.global_State* %1, %struct.global_State** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.GCObject** %3, %struct.GCObject*** %9, align 8
  %12 = load %struct.global_State*, %struct.global_State** %7, align 8
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 21
  %14 = load %struct.GCObject**, %struct.GCObject*** %13, align 8
  %15 = icmp ne %struct.GCObject** %14, null
  br i1 %15, label %16, label %37

; <label>:16:                                     ; preds = %4
  %17 = load %struct.global_State*, %struct.global_State** %7, align 8
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %21 = load %struct.global_State*, %struct.global_State** %7, align 8
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i32 0, i32 21
  %23 = load %struct.GCObject**, %struct.GCObject*** %22, align 8
  %24 = call %struct.GCObject** @sweeplist(%struct.lua_State* %20, %struct.GCObject** %23, i32 100, i32* %11)
  %25 = load %struct.global_State*, %struct.global_State** %7, align 8
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i32 0, i32 21
  store %struct.GCObject** %24, %struct.GCObject*** %26, align 8
  %27 = load %struct.global_State*, %struct.global_State** %7, align 8
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = sub nsw i64 %29, %30
  %32 = load %struct.global_State*, %struct.global_State** %7, align 8
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %45

; <label>:37:                                     ; preds = %4
  %38 = load i32, i32* %8, align 4
  %39 = trunc i32 %38 to i8
  %40 = load %struct.global_State*, %struct.global_State** %7, align 8
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %40, i32 0, i32 11
  store i8 %39, i8* %41, align 1
  %42 = load %struct.GCObject**, %struct.GCObject*** %9, align 8
  %43 = load %struct.global_State*, %struct.global_State** %7, align 8
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i32 0, i32 21
  store %struct.GCObject** %42, %struct.GCObject*** %44, align 8
  store i32 0, i32* %5, align 4
  br label %45

; <label>:45:                                     ; preds = %37, %16
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runafewfinalizers(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.global_State*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 7
  %9 = load %struct.global_State*, %struct.global_State** %8, align 8
  store %struct.global_State* %9, %struct.global_State** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

; <label>:10:                                     ; preds = %23, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %10
  %15 = load %struct.global_State*, %struct.global_State** %5, align 8
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 28
  %17 = load %struct.GCObject*, %struct.GCObject** %16, align 8
  %18 = icmp ne %struct.GCObject* %17, null
  br label %19

; <label>:19:                                     ; preds = %14, %10
  %20 = phi i1 [ false, %10 ], [ %18, %14 ]
  br i1 %20, label %21, label %26

; <label>:21:                                     ; preds = %19
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @GCTM(%struct.lua_State* %22)
  br label %23

; <label>:23:                                     ; preds = %21
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %10

; <label>:26:                                     ; preds = %19
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stepgenfull(%struct.lua_State*, %struct.global_State*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.global_State* %1, %struct.global_State** %4, align 8
  %7 = load %struct.global_State*, %struct.global_State** %4, align 8
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.global_State*, %struct.global_State** %4, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 12
  %12 = load i8, i8* %11, align 2
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %2
  %16 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @enterinc(%struct.global_State* %16)
  br label %17

; <label>:17:                                     ; preds = %15, %2
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_runtilstate(%struct.lua_State* %18, i32 1)
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = call i64 @atomic(%struct.lua_State* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = lshr i64 %23, 3
  %25 = add i64 %22, %24
  %26 = icmp ult i64 %21, %25
  br i1 %26, label %27, label %31

; <label>:27:                                     ; preds = %17
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @atomic2gen(%struct.lua_State* %28, %struct.global_State* %29)
  %30 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @setminordebt(%struct.global_State* %30)
  br label %47

; <label>:31:                                     ; preds = %17
  %32 = load %struct.global_State*, %struct.global_State** %4, align 8
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.global_State*, %struct.global_State** %4, align 8
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.global_State*, %struct.global_State** %4, align 8
  %40 = getelementptr inbounds %struct.global_State, %struct.global_State* %39, i32 0, i32 4
  store i64 %38, i64* %40, align 8
  %41 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @entersweep(%struct.lua_State* %41)
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_runtilstate(%struct.lua_State* %42, i32 256)
  %43 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @setpause(%struct.global_State* %43)
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.global_State*, %struct.global_State** %4, align 8
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i32 0, i32 5
  store i64 %44, i64* %46, align 8
  br label %47

; <label>:47:                                     ; preds = %31, %27
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setminordebt(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8
  %4 = load %struct.global_State*, %struct.global_State** %2, align 8
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.global_State*, %struct.global_State** %2, align 8
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %6, %9
  %11 = udiv i64 %10, 100
  %12 = load %struct.global_State*, %struct.global_State** %2, align 8
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 13
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i64
  %16 = mul nsw i64 %11, %15
  %17 = sub nsw i64 0, %16
  call void @luaE_setdebt(%struct.global_State* %3, i64 %17)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setpause(%struct.global_State*) #0 {
  %2 = alloca %struct.global_State*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.global_State* %0, %struct.global_State** %2, align 8
  %7 = load %struct.global_State*, %struct.global_State** %2, align 8
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 17
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = mul nsw i32 %10, 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.global_State*, %struct.global_State** %2, align 8
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = udiv i64 %14, 100
  store i64 %15, i64* %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %6, align 8
  %19 = sdiv i64 9223372036854775807, %18
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %21, label %26

; <label>:21:                                     ; preds = %1
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = mul nsw i64 %22, %24
  br label %27

; <label>:26:                                     ; preds = %1
  br label %27

; <label>:27:                                     ; preds = %26, %21
  %28 = phi i64 [ %25, %21 ], [ 9223372036854775807, %26 ]
  store i64 %28, i64* %3, align 8
  %29 = load %struct.global_State*, %struct.global_State** %2, align 8
  %30 = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.global_State*, %struct.global_State** %2, align 8
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load i64, i64* %3, align 8
  %37 = sub i64 %35, %36
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %27
  store i64 0, i64* %4, align 8
  br label %41

; <label>:41:                                     ; preds = %40, %27
  %42 = load %struct.global_State*, %struct.global_State** %2, align 8
  %43 = load i64, i64* %4, align 8
  call void @luaE_setdebt(%struct.global_State* %42, i64 %43)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @youngcollection(%struct.lua_State*, %struct.global_State*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca %struct.GCObject**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.global_State* %1, %struct.global_State** %4, align 8
  %6 = load %struct.global_State*, %struct.global_State** %4, align 8
  %7 = load %struct.global_State*, %struct.global_State** %4, align 8
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %7, i32 0, i32 30
  %9 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  %10 = load %struct.global_State*, %struct.global_State** %4, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 32
  %12 = load %struct.GCObject*, %struct.GCObject** %11, align 8
  call void @markold(%struct.global_State* %6, %struct.GCObject* %9, %struct.GCObject* %12)
  %13 = load %struct.global_State*, %struct.global_State** %4, align 8
  %14 = load %struct.global_State*, %struct.global_State** %4, align 8
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %14, i32 0, i32 22
  %16 = load %struct.GCObject*, %struct.GCObject** %15, align 8
  %17 = load %struct.global_State*, %struct.global_State** %4, align 8
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i32 0, i32 35
  %19 = load %struct.GCObject*, %struct.GCObject** %18, align 8
  call void @markold(%struct.global_State* %13, %struct.GCObject* %16, %struct.GCObject* %19)
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = call i64 @atomic(%struct.lua_State* %20)
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %23 = load %struct.global_State*, %struct.global_State** %4, align 8
  %24 = load %struct.global_State*, %struct.global_State** %4, align 8
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i32 0, i32 20
  %26 = load %struct.global_State*, %struct.global_State** %4, align 8
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 30
  %28 = load %struct.GCObject*, %struct.GCObject** %27, align 8
  %29 = call %struct.GCObject** @sweepgen(%struct.lua_State* %22, %struct.global_State* %23, %struct.GCObject** %25, %struct.GCObject* %28)
  store %struct.GCObject** %29, %struct.GCObject*** %5, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %31 = load %struct.global_State*, %struct.global_State** %4, align 8
  %32 = load %struct.GCObject**, %struct.GCObject*** %5, align 8
  %33 = load %struct.global_State*, %struct.global_State** %4, align 8
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i32 0, i32 32
  %35 = load %struct.GCObject*, %struct.GCObject** %34, align 8
  %36 = call %struct.GCObject** @sweepgen(%struct.lua_State* %30, %struct.global_State* %31, %struct.GCObject** %32, %struct.GCObject* %35)
  %37 = load %struct.global_State*, %struct.global_State** %4, align 8
  %38 = getelementptr inbounds %struct.global_State, %struct.global_State* %37, i32 0, i32 31
  %39 = load %struct.GCObject*, %struct.GCObject** %38, align 8
  %40 = load %struct.global_State*, %struct.global_State** %4, align 8
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %40, i32 0, i32 32
  store %struct.GCObject* %39, %struct.GCObject** %41, align 8
  %42 = load %struct.GCObject**, %struct.GCObject*** %5, align 8
  %43 = load %struct.GCObject*, %struct.GCObject** %42, align 8
  %44 = load %struct.global_State*, %struct.global_State** %4, align 8
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %44, i32 0, i32 31
  store %struct.GCObject* %43, %struct.GCObject** %45, align 8
  %46 = load %struct.global_State*, %struct.global_State** %4, align 8
  %47 = getelementptr inbounds %struct.global_State, %struct.global_State* %46, i32 0, i32 20
  %48 = load %struct.GCObject*, %struct.GCObject** %47, align 8
  %49 = load %struct.global_State*, %struct.global_State** %4, align 8
  %50 = getelementptr inbounds %struct.global_State, %struct.global_State* %49, i32 0, i32 30
  store %struct.GCObject* %48, %struct.GCObject** %50, align 8
  %51 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %52 = load %struct.global_State*, %struct.global_State** %4, align 8
  %53 = load %struct.global_State*, %struct.global_State** %4, align 8
  %54 = getelementptr inbounds %struct.global_State, %struct.global_State* %53, i32 0, i32 22
  %55 = load %struct.global_State*, %struct.global_State** %4, align 8
  %56 = getelementptr inbounds %struct.global_State, %struct.global_State* %55, i32 0, i32 33
  %57 = load %struct.GCObject*, %struct.GCObject** %56, align 8
  %58 = call %struct.GCObject** @sweepgen(%struct.lua_State* %51, %struct.global_State* %52, %struct.GCObject** %54, %struct.GCObject* %57)
  store %struct.GCObject** %58, %struct.GCObject*** %5, align 8
  %59 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %60 = load %struct.global_State*, %struct.global_State** %4, align 8
  %61 = load %struct.GCObject**, %struct.GCObject*** %5, align 8
  %62 = load %struct.global_State*, %struct.global_State** %4, align 8
  %63 = getelementptr inbounds %struct.global_State, %struct.global_State* %62, i32 0, i32 35
  %64 = load %struct.GCObject*, %struct.GCObject** %63, align 8
  %65 = call %struct.GCObject** @sweepgen(%struct.lua_State* %59, %struct.global_State* %60, %struct.GCObject** %61, %struct.GCObject* %64)
  %66 = load %struct.global_State*, %struct.global_State** %4, align 8
  %67 = getelementptr inbounds %struct.global_State, %struct.global_State* %66, i32 0, i32 34
  %68 = load %struct.GCObject*, %struct.GCObject** %67, align 8
  %69 = load %struct.global_State*, %struct.global_State** %4, align 8
  %70 = getelementptr inbounds %struct.global_State, %struct.global_State* %69, i32 0, i32 35
  store %struct.GCObject* %68, %struct.GCObject** %70, align 8
  %71 = load %struct.GCObject**, %struct.GCObject*** %5, align 8
  %72 = load %struct.GCObject*, %struct.GCObject** %71, align 8
  %73 = load %struct.global_State*, %struct.global_State** %4, align 8
  %74 = getelementptr inbounds %struct.global_State, %struct.global_State* %73, i32 0, i32 34
  store %struct.GCObject* %72, %struct.GCObject** %74, align 8
  %75 = load %struct.global_State*, %struct.global_State** %4, align 8
  %76 = getelementptr inbounds %struct.global_State, %struct.global_State* %75, i32 0, i32 22
  %77 = load %struct.GCObject*, %struct.GCObject** %76, align 8
  %78 = load %struct.global_State*, %struct.global_State** %4, align 8
  %79 = getelementptr inbounds %struct.global_State, %struct.global_State* %78, i32 0, i32 33
  store %struct.GCObject* %77, %struct.GCObject** %79, align 8
  %80 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %81 = load %struct.global_State*, %struct.global_State** %4, align 8
  %82 = load %struct.global_State*, %struct.global_State** %4, align 8
  %83 = getelementptr inbounds %struct.global_State, %struct.global_State* %82, i32 0, i32 28
  %84 = call %struct.GCObject** @sweepgen(%struct.lua_State* %80, %struct.global_State* %81, %struct.GCObject** %83, %struct.GCObject* null)
  %85 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %86 = load %struct.global_State*, %struct.global_State** %4, align 8
  call void @finishgencycle(%struct.lua_State* %85, %struct.global_State* %86)
  ret void
}

declare hidden void @luaE_setdebt(%struct.global_State*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @markold(%struct.global_State*, %struct.GCObject*, %struct.GCObject*) #0 {
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca %struct.GCObject*, align 8
  %6 = alloca %struct.GCObject*, align 8
  %7 = alloca %struct.GCObject*, align 8
  store %struct.global_State* %0, %struct.global_State** %4, align 8
  store %struct.GCObject* %1, %struct.GCObject** %5, align 8
  store %struct.GCObject* %2, %struct.GCObject** %6, align 8
  %8 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  store %struct.GCObject* %8, %struct.GCObject** %7, align 8
  br label %9

; <label>:9:                                      ; preds = %38, %3
  %10 = load %struct.GCObject*, %struct.GCObject** %7, align 8
  %11 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  %12 = icmp ne %struct.GCObject* %10, %11
  br i1 %12, label %13, label %42

; <label>:13:                                     ; preds = %9
  %14 = load %struct.GCObject*, %struct.GCObject** %7, align 8
  %15 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %14, i32 0, i32 2
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 7
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %37

; <label>:20:                                     ; preds = %13
  %21 = load %struct.GCObject*, %struct.GCObject** %7, align 8
  %22 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %21, i32 0, i32 2
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

; <label>:27:                                     ; preds = %20
  %28 = load %struct.GCObject*, %struct.GCObject** %7, align 8
  %29 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %28, i32 0, i32 2
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 223
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %29, align 1
  %34 = load %struct.global_State*, %struct.global_State** %4, align 8
  %35 = load %struct.GCObject*, %struct.GCObject** %7, align 8
  call void @reallymarkobject(%struct.global_State* %34, %struct.GCObject* %35)
  br label %36

; <label>:36:                                     ; preds = %27, %20
  br label %37

; <label>:37:                                     ; preds = %36, %13
  br label %38

; <label>:38:                                     ; preds = %37
  %39 = load %struct.GCObject*, %struct.GCObject** %7, align 8
  %40 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %39, i32 0, i32 0
  %41 = load %struct.GCObject*, %struct.GCObject** %40, align 8
  store %struct.GCObject* %41, %struct.GCObject** %7, align 8
  br label %9

; <label>:42:                                     ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.GCObject** @sweepgen(%struct.lua_State*, %struct.global_State*, %struct.GCObject**, %struct.GCObject*) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.global_State*, align 8
  %7 = alloca %struct.GCObject**, align 8
  %8 = alloca %struct.GCObject*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.GCObject*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.global_State* %1, %struct.global_State** %6, align 8
  store %struct.GCObject** %2, %struct.GCObject*** %7, align 8
  store %struct.GCObject* %3, %struct.GCObject** %8, align 8
  %11 = load %struct.global_State*, %struct.global_State** %6, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 10
  %13 = load i8, i8* %12, align 4
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 24
  %16 = trunc i32 %15 to i8
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %9, align 4
  br label %18

; <label>:18:                                     ; preds = %76, %4
  %19 = load %struct.GCObject**, %struct.GCObject*** %7, align 8
  %20 = load %struct.GCObject*, %struct.GCObject** %19, align 8
  store %struct.GCObject* %20, %struct.GCObject** %10, align 8
  %21 = load %struct.GCObject*, %struct.GCObject** %8, align 8
  %22 = icmp ne %struct.GCObject* %20, %21
  br i1 %22, label %23, label %77

; <label>:23:                                     ; preds = %18
  %24 = load %struct.GCObject*, %struct.GCObject** %10, align 8
  %25 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %24, i32 0, i32 2
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 24
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %23
  %31 = load %struct.GCObject*, %struct.GCObject** %10, align 8
  %32 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %31, i32 0, i32 0
  %33 = load %struct.GCObject*, %struct.GCObject** %32, align 8
  %34 = load %struct.GCObject**, %struct.GCObject*** %7, align 8
  store %struct.GCObject* %33, %struct.GCObject** %34, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %36 = load %struct.GCObject*, %struct.GCObject** %10, align 8
  call void @freeobj(%struct.lua_State* %35, %struct.GCObject* %36)
  br label %76

; <label>:37:                                     ; preds = %23
  %38 = load %struct.GCObject*, %struct.GCObject** %10, align 8
  %39 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %38, i32 0, i32 2
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, 7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %55

; <label>:44:                                     ; preds = %37
  %45 = load %struct.GCObject*, %struct.GCObject** %10, align 8
  %46 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %45, i32 0, i32 2
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, -57
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %49, %50
  %52 = trunc i32 %51 to i8
  %53 = load %struct.GCObject*, %struct.GCObject** %10, align 8
  %54 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %53, i32 0, i32 2
  store i8 %52, i8* %54, align 1
  br label %55

; <label>:55:                                     ; preds = %44, %37
  %56 = load %struct.GCObject*, %struct.GCObject** %10, align 8
  %57 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %56, i32 0, i32 2
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, -8
  %61 = load %struct.GCObject*, %struct.GCObject** %10, align 8
  %62 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %61, i32 0, i32 2
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 7
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [7 x i8], [7 x i8]* @sweepgen.nextage, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = or i32 %60, %69
  %71 = trunc i32 %70 to i8
  %72 = load %struct.GCObject*, %struct.GCObject** %10, align 8
  %73 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %72, i32 0, i32 2
  store i8 %71, i8* %73, align 1
  %74 = load %struct.GCObject*, %struct.GCObject** %10, align 8
  %75 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %74, i32 0, i32 0
  store %struct.GCObject** %75, %struct.GCObject*** %7, align 8
  br label %76

; <label>:76:                                     ; preds = %55, %30
  br label %18

; <label>:77:                                     ; preds = %18
  %78 = load %struct.GCObject**, %struct.GCObject*** %7, align 8
  ret %struct.GCObject** %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
