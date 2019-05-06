; ModuleID = 'lstate.c'
source_filename = "lstate.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %struct.GCObject* }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i16, i16, i32, i8 }
%struct.UpVal = type { %struct.lua_TValue*, i64, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.UpVal*, i32 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i64, i16, i16 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i64 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.2 }
%struct.anon.2 = type { %union.Value, i32, i32 }
%struct.LX = type { [8 x i8], %struct.lua_State }
%union.GCUnion = type { %struct.lua_State }
%struct.LG = type { %struct.LX, %struct.global_State }

@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaE_setdebt(%struct.global_State*, i64) #0 {
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.global_State* %0, %struct.global_State** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.global_State*, %struct.global_State** %3, align 8
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.global_State*, %struct.global_State** %3, align 8
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %8, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = sub nsw i64 %14, 9223372036854775807
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = sub nsw i64 %18, 9223372036854775807
  store i64 %19, i64* %4, align 8
  br label %20

; <label>:20:                                     ; preds = %17, %2
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = sub nsw i64 %21, %22
  %24 = load %struct.global_State*, %struct.global_State** %3, align 8
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.global_State*, %struct.global_State** %3, align 8
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i32 0, i32 3
  store i64 %26, i64* %28, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.CallInfo* @luaE_extendCI(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaM_realloc_(%struct.lua_State* %4, i8* null, i64 0, i64 72)
  %6 = bitcast i8* %5 to %struct.CallInfo*
  store %struct.CallInfo* %6, %struct.CallInfo** %3, align 8
  %7 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 7
  %10 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %11 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %10, i32 0, i32 3
  store %struct.CallInfo* %7, %struct.CallInfo** %11, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 7
  %14 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  %15 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %16 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %15, i32 0, i32 2
  store %struct.CallInfo* %14, %struct.CallInfo** %16, align 8
  %17 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %18 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %17, i32 0, i32 3
  store %struct.CallInfo* null, %struct.CallInfo** %18, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 3
  %21 = load i16, i16* %20, align 2
  %22 = add i16 %21, 1
  store i16 %22, i16* %20, align 2
  %23 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  ret %struct.CallInfo* %23
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaE_freeCI(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.CallInfo*, align 8
  %4 = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 7
  %7 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  store %struct.CallInfo* %7, %struct.CallInfo** %3, align 8
  %8 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8, i32 0, i32 3
  %10 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  store %struct.CallInfo* %10, %struct.CallInfo** %4, align 8
  %11 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %12 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %11, i32 0, i32 3
  store %struct.CallInfo* null, %struct.CallInfo** %12, align 8
  br label %13

; <label>:13:                                     ; preds = %16, %1
  %14 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  store %struct.CallInfo* %14, %struct.CallInfo** %3, align 8
  %15 = icmp ne %struct.CallInfo* %14, null
  br i1 %15, label %16, label %28

; <label>:16:                                     ; preds = %13
  %17 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %18 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %17, i32 0, i32 3
  %19 = load %struct.CallInfo*, %struct.CallInfo** %18, align 8
  store %struct.CallInfo* %19, %struct.CallInfo** %4, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %21 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %22 = bitcast %struct.CallInfo* %21 to i8*
  %23 = call i8* @luaM_realloc_(%struct.lua_State* %20, i8* %22, i64 72, i64 0)
  %24 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 3
  %26 = load i16, i16* %25, align 2
  %27 = add i16 %26, -1
  store i16 %27, i16* %25, align 2
  br label %13

; <label>:28:                                     ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaE_shrinkCI(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.CallInfo*, align 8
  %4 = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 7
  %7 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  store %struct.CallInfo* %7, %struct.CallInfo** %3, align 8
  br label %8

; <label>:8:                                      ; preds = %22, %1
  %9 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %10 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %9, i32 0, i32 3
  %11 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %12 = icmp ne %struct.CallInfo* %11, null
  br i1 %12, label %13, label %20

; <label>:13:                                     ; preds = %8
  %14 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %14, i32 0, i32 3
  %16 = load %struct.CallInfo*, %struct.CallInfo** %15, align 8
  %17 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %16, i32 0, i32 3
  %18 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  store %struct.CallInfo* %18, %struct.CallInfo** %4, align 8
  %19 = icmp ne %struct.CallInfo* %18, null
  br label %20

; <label>:20:                                     ; preds = %13, %8
  %21 = phi i1 [ false, %8 ], [ %19, %13 ]
  br i1 %21, label %22, label %40

; <label>:22:                                     ; preds = %20
  %23 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %24 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %25 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %24, i32 0, i32 3
  %26 = load %struct.CallInfo*, %struct.CallInfo** %25, align 8
  %27 = bitcast %struct.CallInfo* %26 to i8*
  %28 = call i8* @luaM_realloc_(%struct.lua_State* %23, i8* %27, i64 72, i64 0)
  %29 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 3
  %31 = load i16, i16* %30, align 2
  %32 = add i16 %31, -1
  store i16 %32, i16* %30, align 2
  %33 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %34 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %35 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %34, i32 0, i32 3
  store %struct.CallInfo* %33, %struct.CallInfo** %35, align 8
  %36 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %37 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %38 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %37, i32 0, i32 2
  store %struct.CallInfo* %36, %struct.CallInfo** %38, align 8
  %39 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  store %struct.CallInfo* %39, %struct.CallInfo** %3, align 8
  br label %8

; <label>:40:                                     ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define %struct.lua_State* @lua_newthread(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 6
  %9 = load %struct.global_State*, %struct.global_State** %8, align 8
  store %struct.global_State* %9, %struct.global_State** %3, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 6
  %12 = load %struct.global_State*, %struct.global_State** %11, align 8
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %1
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaC_step(%struct.lua_State* %17)
  br label %18

; <label>:18:                                     ; preds = %16, %1
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = call i8* @luaM_realloc_(%struct.lua_State* %19, i8* null, i64 8, i64 216)
  %21 = bitcast i8* %20 to %struct.LX*
  %22 = getelementptr inbounds %struct.LX, %struct.LX* %21, i32 0, i32 1
  store %struct.lua_State* %22, %struct.lua_State** %4, align 8
  %23 = load %struct.global_State*, %struct.global_State** %3, align 8
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 9
  %25 = load i8, i8* %24, align 4
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 3
  %28 = trunc i32 %27 to i8
  %29 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 2
  store i8 %28, i8* %30, align 1
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 1
  store i8 8, i8* %32, align 8
  %33 = load %struct.global_State*, %struct.global_State** %3, align 8
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i32 0, i32 13
  %35 = load %struct.GCObject*, %struct.GCObject** %34, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 0
  store %struct.GCObject* %35, %struct.GCObject** %37, align 8
  %38 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %39 = bitcast %struct.lua_State* %38 to %union.GCUnion*
  %40 = bitcast %union.GCUnion* %39 to %struct.GCObject*
  %41 = load %struct.global_State*, %struct.global_State** %3, align 8
  %42 = getelementptr inbounds %struct.global_State, %struct.global_State* %41, i32 0, i32 13
  store %struct.GCObject* %40, %struct.GCObject** %42, align 8
  %43 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 5
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %44, align 8
  store %struct.lua_TValue* %45, %struct.lua_TValue** %5, align 8
  %46 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  store %struct.lua_State* %46, %struct.lua_State** %6, align 8
  %47 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %48 = bitcast %struct.lua_State* %47 to %union.GCUnion*
  %49 = bitcast %union.GCUnion* %48 to %struct.GCObject*
  %50 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %51 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %50, i32 0, i32 0
  %52 = bitcast %union.Value* %51 to %struct.GCObject**
  store %struct.GCObject* %49, %struct.GCObject** %52, align 8
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i32 0, i32 1
  store i32 72, i32* %54, align 8
  %55 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %55, i32 0, i32 5
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %56, align 8
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i32 1
  store %struct.lua_TValue* %58, %struct.lua_TValue** %56, align 8
  %59 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %60 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @preinit_thread(%struct.lua_State* %59, %struct.global_State* %60)
  %61 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %61, i32 0, i32 23
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %64, i32 0, i32 23
  store i32 %63, i32* %65, align 8
  %66 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %66, i32 0, i32 19
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %70 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %69, i32 0, i32 19
  store i32 %68, i32* %70, align 4
  %71 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %72 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %71, i32 0, i32 16
  %73 = load volatile void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %72, align 8
  %74 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %75 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %74, i32 0, i32 16
  store volatile void (%struct.lua_State*, %struct.lua_Debug*)* %73, void (%struct.lua_State*, %struct.lua_Debug*)** %75, align 8
  %76 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %77 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %76, i32 0, i32 19
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %79, i32 0, i32 20
  store i32 %78, i32* %80, align 8
  %81 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %82 = bitcast %struct.lua_State* %81 to i8*
  %83 = getelementptr inbounds i8, i8* %82, i64 -8
  %84 = load %struct.global_State*, %struct.global_State** %3, align 8
  %85 = getelementptr inbounds %struct.global_State, %struct.global_State* %84, i32 0, i32 28
  %86 = load %struct.lua_State*, %struct.lua_State** %85, align 8
  %87 = bitcast %struct.lua_State* %86 to i8*
  %88 = getelementptr inbounds i8, i8* %87, i64 -8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %88, i64 8, i32 1, i1 false)
  %89 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %90 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %91 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @stack_init(%struct.lua_State* %90, %struct.lua_State* %91)
  %92 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  ret %struct.lua_State* %92
}

declare hidden void @luaC_step(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preinit_thread(%struct.lua_State*, %struct.global_State*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.global_State* %1, %struct.global_State** %4, align 8
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 6
  store %struct.global_State* %5, %struct.global_State** %7, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 10
  store %struct.lua_TValue* null, %struct.lua_TValue** %9, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 7
  store %struct.CallInfo* null, %struct.CallInfo** %11, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 3
  store i16 0, i16* %13, align 2
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 18
  store i32 0, i32* %15, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 13
  store %struct.lua_State* %16, %struct.lua_State** %18, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 14
  store %struct.lua_longjmp* null, %struct.lua_longjmp** %20, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 22
  store i16 0, i16* %22, align 2
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 16
  store volatile void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)** %24, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 23
  store i32 0, i32* %26, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 19
  store i32 0, i32* %28, align 4
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 24
  store i8 1, i8* %30, align 4
  %31 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 19
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %34, i32 0, i32 20
  store i32 %33, i32* %35, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 11
  store %struct.UpVal* null, %struct.UpVal** %37, align 8
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 21
  store i16 1, i16* %39, align 4
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 4
  store i8 0, i8* %41, align 4
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 17
  store i64 0, i64* %43, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stack_init(%struct.lua_State*, %struct.lua_State*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.lua_State* %1, %struct.lua_State** %4, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = call i8* @luaM_realloc_(%struct.lua_State* %7, i8* null, i64 0, i64 640)
  %9 = bitcast i8* %8 to %struct.lua_TValue*
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 10
  store %struct.lua_TValue* %9, %struct.lua_TValue** %11, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 18
  store i32 40, i32* %13, align 8
  store i32 0, i32* %5, align 4
  br label %14

; <label>:14:                                     ; preds = %25, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 40
  br i1 %16, label %17, label %28

; <label>:17:                                     ; preds = %14
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 10
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %22
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 1
  store i32 0, i32* %24, align 8
  br label %25

; <label>:25:                                     ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %14

; <label>:28:                                     ; preds = %14
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 10
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %30, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 5
  store %struct.lua_TValue* %31, %struct.lua_TValue** %33, align 8
  %34 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %34, i32 0, i32 10
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %35, align 8
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 18
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i64 %40
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i64 -5
  %43 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 9
  store %struct.lua_TValue* %42, %struct.lua_TValue** %44, align 8
  %45 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i32 0, i32 15
  store %struct.CallInfo* %46, %struct.CallInfo** %6, align 8
  %47 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %48 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %47, i32 0, i32 2
  store %struct.CallInfo* null, %struct.CallInfo** %48, align 8
  %49 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %50 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %49, i32 0, i32 3
  store %struct.CallInfo* null, %struct.CallInfo** %50, align 8
  %51 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %52 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %51, i32 0, i32 7
  store i16 0, i16* %52, align 2
  %53 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %54 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %53, i32 0, i32 5
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %54, align 8
  %56 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %57 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %56, i32 0, i32 0
  store %struct.lua_TValue* %55, %struct.lua_TValue** %57, align 8
  %58 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %58, i32 0, i32 5
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i32 1
  store %struct.lua_TValue* %61, %struct.lua_TValue** %59, align 8
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i32 0, i32 1
  store i32 0, i32* %62, align 8
  %63 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %63, i32 0, i32 5
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i64 20
  %67 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %68 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %67, i32 0, i32 1
  store %struct.lua_TValue* %66, %struct.lua_TValue** %68, align 8
  %69 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %70 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %70, i32 0, i32 7
  store %struct.CallInfo* %69, %struct.CallInfo** %71, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaE_freethread(%struct.lua_State*, %struct.lua_State*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.LX*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.lua_State* %1, %struct.lua_State** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %7 = bitcast %struct.lua_State* %6 to i8*
  %8 = getelementptr inbounds i8, i8* %7, i64 -8
  %9 = bitcast i8* %8 to %struct.LX*
  store %struct.LX* %9, %struct.LX** %5, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 10
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  call void @luaF_close(%struct.lua_State* %10, %struct.lua_TValue* %13)
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @freestack(%struct.lua_State* %15)
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load %struct.LX*, %struct.LX** %5, align 8
  %18 = bitcast %struct.LX* %17 to i8*
  %19 = call i8* @luaM_realloc_(%struct.lua_State* %16, i8* %18, i64 216, i64 0)
  ret void
}

declare hidden void @luaF_close(%struct.lua_State*, %struct.lua_TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freestack(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 10
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %6 = icmp eq %struct.lua_TValue* %5, null
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  br label %25

; <label>:8:                                      ; preds = %1
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 15
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 7
  store %struct.CallInfo* %10, %struct.CallInfo** %12, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaE_freeCI(%struct.lua_State* %13)
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 10
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %18 = bitcast %struct.lua_TValue* %17 to i8*
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 18
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 16
  %24 = call i8* @luaM_realloc_(%struct.lua_State* %14, i8* %18, i64 %23, i64 0)
  br label %25

; <label>:25:                                     ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8* (i8*, i8*, i64, i64)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca %struct.global_State*, align 8
  %9 = alloca %struct.LG*, align 8
  store i8* (i8*, i8*, i64, i64)* %0, i8* (i8*, i8*, i64, i64)** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* %10(i8* %11, i8* null, i64 8, i64 1552)
  %13 = bitcast i8* %12 to %struct.LG*
  store %struct.LG* %13, %struct.LG** %9, align 8
  %14 = load %struct.LG*, %struct.LG** %9, align 8
  %15 = icmp eq %struct.LG* %14, null
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %2
  store %struct.lua_State* null, %struct.lua_State** %3, align 8
  br label %128

; <label>:17:                                     ; preds = %2
  %18 = load %struct.LG*, %struct.LG** %9, align 8
  %19 = getelementptr inbounds %struct.LG, %struct.LG* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.LX, %struct.LX* %19, i32 0, i32 1
  store %struct.lua_State* %20, %struct.lua_State** %7, align 8
  %21 = load %struct.LG*, %struct.LG** %9, align 8
  %22 = getelementptr inbounds %struct.LG, %struct.LG* %21, i32 0, i32 1
  store %struct.global_State* %22, %struct.global_State** %8, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 0
  store %struct.GCObject* null, %struct.GCObject** %24, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 1
  store i8 8, i8* %26, align 8
  %27 = load %struct.global_State*, %struct.global_State** %8, align 8
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i32 0, i32 9
  store i8 1, i8* %28, align 4
  %29 = load %struct.global_State*, %struct.global_State** %8, align 8
  %30 = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 9
  %31 = load i8, i8* %30, align 4
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 3
  %34 = trunc i32 %33 to i8
  %35 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 2
  store i8 %34, i8* %36, align 1
  %37 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %38 = load %struct.global_State*, %struct.global_State** %8, align 8
  call void @preinit_thread(%struct.lua_State* %37, %struct.global_State* %38)
  %39 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %4, align 8
  %40 = load %struct.global_State*, %struct.global_State** %8, align 8
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %40, i32 0, i32 0
  store i8* (i8*, i8*, i64, i64)* %39, i8* (i8*, i8*, i64, i64)** %41, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.global_State*, %struct.global_State** %8, align 8
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %46 = load %struct.global_State*, %struct.global_State** %8, align 8
  %47 = getelementptr inbounds %struct.global_State, %struct.global_State* %46, i32 0, i32 28
  store %struct.lua_State* %45, %struct.lua_State** %47, align 8
  %48 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %49 = call i32 @makeseed(%struct.lua_State* %48)
  %50 = load %struct.global_State*, %struct.global_State** %8, align 8
  %51 = getelementptr inbounds %struct.global_State, %struct.global_State* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 8
  %52 = load %struct.global_State*, %struct.global_State** %8, align 8
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %52, i32 0, i32 12
  store i8 0, i8* %53, align 1
  %54 = load %struct.global_State*, %struct.global_State** %8, align 8
  %55 = getelementptr inbounds %struct.global_State, %struct.global_State* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  %56 = load %struct.global_State*, %struct.global_State** %8, align 8
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %57, i32 0, i32 1
  store i32 0, i32* %58, align 8
  %59 = load %struct.global_State*, %struct.global_State** %8, align 8
  %60 = getelementptr inbounds %struct.global_State, %struct.global_State* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %60, i32 0, i32 2
  store i32 0, i32* %61, align 4
  %62 = load %struct.global_State*, %struct.global_State** %8, align 8
  %63 = getelementptr inbounds %struct.global_State, %struct.global_State* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %63, i32 0, i32 0
  store %struct.TString** null, %struct.TString*** %64, align 8
  %65 = load %struct.global_State*, %struct.global_State** %8, align 8
  %66 = getelementptr inbounds %struct.global_State, %struct.global_State* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %66, i32 0, i32 1
  store i32 0, i32* %67, align 8
  %68 = load %struct.global_State*, %struct.global_State** %8, align 8
  %69 = getelementptr inbounds %struct.global_State, %struct.global_State* %68, i32 0, i32 27
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %69, align 8
  %70 = load %struct.global_State*, %struct.global_State** %8, align 8
  %71 = getelementptr inbounds %struct.global_State, %struct.global_State* %70, i32 0, i32 29
  store double* null, double** %71, align 8
  %72 = load %struct.global_State*, %struct.global_State** %8, align 8
  %73 = getelementptr inbounds %struct.global_State, %struct.global_State* %72, i32 0, i32 10
  store i8 7, i8* %73, align 1
  %74 = load %struct.global_State*, %struct.global_State** %8, align 8
  %75 = getelementptr inbounds %struct.global_State, %struct.global_State* %74, i32 0, i32 11
  store i8 0, i8* %75, align 2
  %76 = load %struct.global_State*, %struct.global_State** %8, align 8
  %77 = getelementptr inbounds %struct.global_State, %struct.global_State* %76, i32 0, i32 22
  store %struct.GCObject* null, %struct.GCObject** %77, align 8
  %78 = load %struct.global_State*, %struct.global_State** %8, align 8
  %79 = getelementptr inbounds %struct.global_State, %struct.global_State* %78, i32 0, i32 21
  store %struct.GCObject* null, %struct.GCObject** %79, align 8
  %80 = load %struct.global_State*, %struct.global_State** %8, align 8
  %81 = getelementptr inbounds %struct.global_State, %struct.global_State* %80, i32 0, i32 15
  store %struct.GCObject* null, %struct.GCObject** %81, align 8
  %82 = load %struct.global_State*, %struct.global_State** %8, align 8
  %83 = getelementptr inbounds %struct.global_State, %struct.global_State* %82, i32 0, i32 13
  store %struct.GCObject* null, %struct.GCObject** %83, align 8
  %84 = load %struct.global_State*, %struct.global_State** %8, align 8
  %85 = getelementptr inbounds %struct.global_State, %struct.global_State* %84, i32 0, i32 14
  store %struct.GCObject** null, %struct.GCObject*** %85, align 8
  %86 = load %struct.global_State*, %struct.global_State** %8, align 8
  %87 = getelementptr inbounds %struct.global_State, %struct.global_State* %86, i32 0, i32 17
  store %struct.GCObject* null, %struct.GCObject** %87, align 8
  %88 = load %struct.global_State*, %struct.global_State** %8, align 8
  %89 = getelementptr inbounds %struct.global_State, %struct.global_State* %88, i32 0, i32 16
  store %struct.GCObject* null, %struct.GCObject** %89, align 8
  %90 = load %struct.global_State*, %struct.global_State** %8, align 8
  %91 = getelementptr inbounds %struct.global_State, %struct.global_State* %90, i32 0, i32 20
  store %struct.GCObject* null, %struct.GCObject** %91, align 8
  %92 = load %struct.global_State*, %struct.global_State** %8, align 8
  %93 = getelementptr inbounds %struct.global_State, %struct.global_State* %92, i32 0, i32 19
  store %struct.GCObject* null, %struct.GCObject** %93, align 8
  %94 = load %struct.global_State*, %struct.global_State** %8, align 8
  %95 = getelementptr inbounds %struct.global_State, %struct.global_State* %94, i32 0, i32 18
  store %struct.GCObject* null, %struct.GCObject** %95, align 8
  %96 = load %struct.global_State*, %struct.global_State** %8, align 8
  %97 = getelementptr inbounds %struct.global_State, %struct.global_State* %96, i32 0, i32 23
  store %struct.lua_State* null, %struct.lua_State** %97, align 8
  %98 = load %struct.global_State*, %struct.global_State** %8, align 8
  %99 = getelementptr inbounds %struct.global_State, %struct.global_State* %98, i32 0, i32 2
  store i64 1552, i64* %99, align 8
  %100 = load %struct.global_State*, %struct.global_State** %8, align 8
  %101 = getelementptr inbounds %struct.global_State, %struct.global_State* %100, i32 0, i32 3
  store i64 0, i64* %101, align 8
  %102 = load %struct.global_State*, %struct.global_State** %8, align 8
  %103 = getelementptr inbounds %struct.global_State, %struct.global_State* %102, i32 0, i32 24
  store i32 0, i32* %103, align 8
  %104 = load %struct.global_State*, %struct.global_State** %8, align 8
  %105 = getelementptr inbounds %struct.global_State, %struct.global_State* %104, i32 0, i32 25
  store i32 200, i32* %105, align 4
  %106 = load %struct.global_State*, %struct.global_State** %8, align 8
  %107 = getelementptr inbounds %struct.global_State, %struct.global_State* %106, i32 0, i32 26
  store i32 200, i32* %107, align 8
  store i32 0, i32* %6, align 4
  br label %108

; <label>:108:                                    ; preds = %117, %17
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %109, 9
  br i1 %110, label %111, label %120

; <label>:111:                                    ; preds = %108
  %112 = load %struct.global_State*, %struct.global_State** %8, align 8
  %113 = getelementptr inbounds %struct.global_State, %struct.global_State* %112, i32 0, i32 32
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %113, i64 0, i64 %115
  store %struct.Table* null, %struct.Table** %116, align 8
  br label %117

; <label>:117:                                    ; preds = %111
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %108

; <label>:120:                                    ; preds = %108
  %121 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %122 = call i32 @luaD_rawrunprotected(%struct.lua_State* %121, void (%struct.lua_State*, i8*)* @f_luaopen, i8* null)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

; <label>:124:                                    ; preds = %120
  %125 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  call void @close_state(%struct.lua_State* %125)
  store %struct.lua_State* null, %struct.lua_State** %7, align 8
  br label %126

; <label>:126:                                    ; preds = %124, %120
  %127 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  store %struct.lua_State* %127, %struct.lua_State** %3, align 8
  br label %128

; <label>:128:                                    ; preds = %126, %16
  %129 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  ret %struct.lua_State* %129
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @makeseed(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %10 = call i64 @time(i64* null) #4
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = ptrtoint %struct.lua_State* %12 to i64
  store i64 %13, i64* %6, align 8
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = bitcast i64* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 1, i1 false)
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = ptrtoint i32* %4 to i64
  store i64 %23, i64* %7, align 8
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = bitcast i64* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 8, i32 1, i1 false)
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  store i64 ptrtoint (%struct.lua_TValue* @luaO_nilobject_ to i64), i64* %8, align 8
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = bitcast i64* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 8, i32 1, i1 false)
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  store i64 ptrtoint (%struct.lua_State* (i8* (i8*, i8*, i64, i64)*, i8*)* @lua_newstate to i64), i64* %9, align 8
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = bitcast i64* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 8, i32 1, i1 false)
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %5, align 4
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @luaS_hash(i8* %51, i64 %53, i32 %54)
  ret i32 %55
}

declare hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f_luaopen(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 6
  %8 = load %struct.global_State*, %struct.global_State** %7, align 8
  store %struct.global_State* %8, %struct.global_State** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @stack_init(%struct.lua_State* %10, %struct.lua_State* %11)
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = load %struct.global_State*, %struct.global_State** %5, align 8
  call void @init_registry(%struct.lua_State* %12, %struct.global_State* %13)
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaS_init(%struct.lua_State* %14)
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaT_init(%struct.lua_State* %15)
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaX_init(%struct.lua_State* %16)
  %17 = load %struct.global_State*, %struct.global_State** %5, align 8
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i32 0, i32 12
  store i8 1, i8* %18, align 1
  %19 = call double* @lua_version(%struct.lua_State* null)
  %20 = load %struct.global_State*, %struct.global_State** %5, align 8
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %20, i32 0, i32 29
  store double* %19, double** %21, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_state(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 6
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8
  store %struct.global_State* %6, %struct.global_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 10
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  call void @luaF_close(%struct.lua_State* %7, %struct.lua_TValue* %10)
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaC_freeallobjects(%struct.lua_State* %11)
  %12 = load %struct.global_State*, %struct.global_State** %3, align 8
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i32 0, i32 29
  %14 = load double*, double** %13, align 8
  %15 = icmp ne double* %14, null
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %1
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  br label %18

; <label>:18:                                     ; preds = %16, %1
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 6
  %22 = load %struct.global_State*, %struct.global_State** %21, align 8
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %23, i32 0, i32 0
  %25 = load %struct.TString**, %struct.TString*** %24, align 8
  %26 = bitcast %struct.TString** %25 to i8*
  %27 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 6
  %29 = load %struct.global_State*, %struct.global_State** %28, align 8
  %30 = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = call i8* @luaM_realloc_(%struct.lua_State* %19, i8* %26, i64 %34, i64 0)
  %36 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @freestack(%struct.lua_State* %36)
  %37 = load %struct.global_State*, %struct.global_State** %3, align 8
  %38 = getelementptr inbounds %struct.global_State, %struct.global_State* %37, i32 0, i32 0
  %39 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %38, align 8
  %40 = load %struct.global_State*, %struct.global_State** %3, align 8
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %44 = bitcast %struct.lua_State* %43 to i8*
  %45 = getelementptr inbounds i8, i8* %44, i64 -8
  %46 = bitcast i8* %45 to %struct.LX*
  %47 = bitcast %struct.LX* %46 to i8*
  %48 = call i8* %39(i8* %42, i8* %47, i64 1552, i64 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_close(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 6
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i32 0, i32 28
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  store %struct.lua_State* %7, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @close_state(%struct.lua_State* %8)
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare hidden i32 @luaS_hash(i8*, i64, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_registry(%struct.lua_State*, %struct.global_State*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca %struct.lua_TValue, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.Table*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_State*, align 8
  %11 = alloca %struct.lua_TValue*, align 8
  %12 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.global_State* %1, %struct.global_State** %4, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = call %struct.Table* @luaH_new(%struct.lua_State* %13)
  store %struct.Table* %14, %struct.Table** %6, align 8
  %15 = load %struct.global_State*, %struct.global_State** %4, align 8
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 7
  store %struct.lua_TValue* %16, %struct.lua_TValue** %7, align 8
  %17 = load %struct.Table*, %struct.Table** %6, align 8
  store %struct.Table* %17, %struct.Table** %8, align 8
  %18 = load %struct.Table*, %struct.Table** %8, align 8
  %19 = bitcast %struct.Table* %18 to %union.GCUnion*
  %20 = bitcast %union.GCUnion* %19 to %struct.GCObject*
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 0
  %23 = bitcast %union.Value* %22 to %struct.GCObject**
  store %struct.GCObject* %20, %struct.GCObject** %23, align 8
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 0, i32 1
  store i32 69, i32* %25, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = load %struct.Table*, %struct.Table** %6, align 8
  call void @luaH_resize(%struct.lua_State* %26, %struct.Table* %27, i32 2, i32 0)
  store %struct.lua_TValue* %5, %struct.lua_TValue** %9, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  store %struct.lua_State* %28, %struct.lua_State** %10, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %10, align 8
  %30 = bitcast %struct.lua_State* %29 to %union.GCUnion*
  %31 = bitcast %union.GCUnion* %30 to %struct.GCObject*
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 0, i32 0
  %34 = bitcast %union.Value* %33 to %struct.GCObject**
  store %struct.GCObject* %31, %struct.GCObject** %34, align 8
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i32 0, i32 1
  store i32 72, i32* %36, align 8
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = load %struct.Table*, %struct.Table** %6, align 8
  call void @luaH_setint(%struct.lua_State* %37, %struct.Table* %38, i64 1, %struct.lua_TValue* %5)
  store %struct.lua_TValue* %5, %struct.lua_TValue** %11, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %40 = call %struct.Table* @luaH_new(%struct.lua_State* %39)
  store %struct.Table* %40, %struct.Table** %12, align 8
  %41 = load %struct.Table*, %struct.Table** %12, align 8
  %42 = bitcast %struct.Table* %41 to %union.GCUnion*
  %43 = bitcast %union.GCUnion* %42 to %struct.GCObject*
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i32 0, i32 0
  %46 = bitcast %union.Value* %45 to %struct.GCObject**
  store %struct.GCObject* %43, %struct.GCObject** %46, align 8
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %47, i32 0, i32 1
  store i32 69, i32* %48, align 8
  %49 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %50 = load %struct.Table*, %struct.Table** %6, align 8
  call void @luaH_setint(%struct.lua_State* %49, %struct.Table* %50, i64 2, %struct.lua_TValue* %5)
  ret void
}

declare hidden void @luaS_init(%struct.lua_State*) #1

declare hidden void @luaT_init(%struct.lua_State*) #1

declare hidden void @luaX_init(%struct.lua_State*) #1

declare double* @lua_version(%struct.lua_State*) #1

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) #1

declare hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) #1

declare hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.lua_TValue*) #1

declare hidden void @luaC_freeallobjects(%struct.lua_State*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
