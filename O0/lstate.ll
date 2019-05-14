; ModuleID = 'lstate.c'
source_filename = "lstate.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32 (%struct.lua_State*)*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
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
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i64 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.TValue*, %union.Node*, %union.Node*, %struct.Table*, %struct.GCObject* }
%union.Node = type { %struct.NodeKey }
%struct.NodeKey = type { %union.Value, i8, i8, i32, %union.Value }
%struct.anon = type { i32*, i32, i32 }
%struct.LX = type { [8 x i8], %struct.lua_State }
%union.GCUnion = type { %struct.lua_State }
%struct.LG = type { %struct.LX, %struct.global_State }

@.str = private unnamed_addr constant [17 x i8] c"C stack overflow\00", align 1

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
define hidden void @luaE_enterCcall(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 19
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 65535
  store i32 %7, i32* %3, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 19
  %10 = load i32, i32* %9, align 8
  %11 = add i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = load i32, i32* %3, align 4
  %13 = icmp sge i32 %12, 2200
  br i1 %13, label %14, label %39

; <label>:14:                                     ; preds = %1
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaE_freeCI(%struct.lua_State* %15)
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 19
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 65535
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp sge i32 %20, 2200
  br i1 %21, label %22, label %38

; <label>:22:                                     ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = icmp sle i32 %23, 2212
  br i1 %24, label %25, label %31

; <label>:25:                                     ; preds = %22
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 19
  %28 = load i32, i32* %27, align 8
  %29 = add i32 %28, 14
  store i32 %29, i32* %27, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)) #5
  unreachable

; <label>:31:                                     ; preds = %22
  %32 = load i32, i32* %3, align 4
  %33 = icmp sge i32 %32, 2475
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %31
  %35 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaD_throw(%struct.lua_State* %35, i32 5) #5
  unreachable

; <label>:36:                                     ; preds = %31
  br label %37

; <label>:37:                                     ; preds = %36
  br label %38

; <label>:38:                                     ; preds = %37, %14
  br label %39

; <label>:39:                                     ; preds = %38, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaE_freeCI(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.CallInfo*, align 8
  %4 = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 8
  %7 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  store %struct.CallInfo* %7, %struct.CallInfo** %3, align 8
  %8 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %9 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %8, i32 0, i32 3
  %10 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  store %struct.CallInfo* %10, %struct.CallInfo** %4, align 8
  %11 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %12 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %11, i32 0, i32 3
  store %struct.CallInfo* null, %struct.CallInfo** %12, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 5
  %15 = load i16, i16* %14, align 4
  %16 = zext i16 %15 to i32
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 19
  %19 = load i32, i32* %18, align 8
  %20 = sub i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %21

; <label>:21:                                     ; preds = %24, %1
  %22 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  store %struct.CallInfo* %22, %struct.CallInfo** %3, align 8
  %23 = icmp ne %struct.CallInfo* %22, null
  br i1 %23, label %24, label %35

; <label>:24:                                     ; preds = %21
  %25 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %26 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %25, i32 0, i32 3
  %27 = load %struct.CallInfo*, %struct.CallInfo** %26, align 8
  store %struct.CallInfo* %27, %struct.CallInfo** %4, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %29 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %30 = bitcast %struct.CallInfo* %29 to i8*
  call void @luaM_free_(%struct.lua_State* %28, i8* %30, i64 64)
  %31 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 5
  %33 = load i16, i16* %32, align 4
  %34 = add i16 %33, -1
  store i16 %34, i16* %32, align 4
  br label %21

; <label>:35:                                     ; preds = %21
  %36 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 5
  %38 = load i16, i16* %37, align 4
  %39 = zext i16 %38 to i32
  %40 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 19
  %42 = load i32, i32* %41, align 8
  %43 = add i32 %42, %39
  store i32 %43, i32* %41, align 8
  ret void
}

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #1

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.CallInfo* @luaE_extendCI(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaE_enterCcall(%struct.lua_State* %4)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i8* @luaM_malloc_(%struct.lua_State* %5, i64 64, i32 0)
  %7 = bitcast i8* %6 to %struct.CallInfo*
  store %struct.CallInfo* %7, %struct.CallInfo** %3, align 8
  %8 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 8
  %11 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %12 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %11, i32 0, i32 3
  store %struct.CallInfo* %8, %struct.CallInfo** %12, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 8
  %15 = load %struct.CallInfo*, %struct.CallInfo** %14, align 8
  %16 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %17 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %16, i32 0, i32 2
  store %struct.CallInfo* %15, %struct.CallInfo** %17, align 8
  %18 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %19 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %18, i32 0, i32 3
  store %struct.CallInfo* null, %struct.CallInfo** %19, align 8
  %20 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %21 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %20, i32 0, i32 4
  %22 = bitcast %union.anon.0* %21 to %struct.anon*
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 5
  %26 = load i16, i16* %25, align 4
  %27 = add i16 %26, 1
  store i16 %27, i16* %25, align 4
  %28 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  ret %struct.CallInfo* %28
}

declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) #2

declare hidden void @luaM_free_(%struct.lua_State*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaE_shrinkCI(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.CallInfo*, align 8
  %4 = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 8
  %7 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  store %struct.CallInfo* %7, %struct.CallInfo** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 5
  %10 = load i16, i16* %9, align 4
  %11 = zext i16 %10 to i32
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 19
  %14 = load i32, i32* %13, align 8
  %15 = sub i32 %14, %11
  store i32 %15, i32* %13, align 8
  br label %16

; <label>:16:                                     ; preds = %30, %1
  %17 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %18 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %17, i32 0, i32 3
  %19 = load %struct.CallInfo*, %struct.CallInfo** %18, align 8
  %20 = icmp ne %struct.CallInfo* %19, null
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %16
  %22 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %23 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %22, i32 0, i32 3
  %24 = load %struct.CallInfo*, %struct.CallInfo** %23, align 8
  %25 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %24, i32 0, i32 3
  %26 = load %struct.CallInfo*, %struct.CallInfo** %25, align 8
  store %struct.CallInfo* %26, %struct.CallInfo** %4, align 8
  %27 = icmp ne %struct.CallInfo* %26, null
  br label %28

; <label>:28:                                     ; preds = %21, %16
  %29 = phi i1 [ false, %16 ], [ %27, %21 ]
  br i1 %29, label %30, label %47

; <label>:30:                                     ; preds = %28
  %31 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %32 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %33 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %32, i32 0, i32 3
  %34 = load %struct.CallInfo*, %struct.CallInfo** %33, align 8
  %35 = bitcast %struct.CallInfo* %34 to i8*
  call void @luaM_free_(%struct.lua_State* %31, i8* %35, i64 64)
  %36 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 5
  %38 = load i16, i16* %37, align 4
  %39 = add i16 %38, -1
  store i16 %39, i16* %37, align 4
  %40 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %41 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %42 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %41, i32 0, i32 3
  store %struct.CallInfo* %40, %struct.CallInfo** %42, align 8
  %43 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %44 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %45 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %44, i32 0, i32 2
  store %struct.CallInfo* %43, %struct.CallInfo** %45, align 8
  %46 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  store %struct.CallInfo* %46, %struct.CallInfo** %3, align 8
  br label %16

; <label>:47:                                     ; preds = %28
  %48 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %49 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %48, i32 0, i32 5
  %50 = load i16, i16* %49, align 4
  %51 = zext i16 %50 to i32
  %52 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %52, i32 0, i32 19
  %54 = load i32, i32* %53, align 8
  %55 = add i32 %54, %51
  store i32 %55, i32* %53, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define %struct.lua_State* @lua_newthread(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.global_State*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 7
  %9 = load %struct.global_State*, %struct.global_State** %8, align 8
  store %struct.global_State* %9, %struct.global_State** %3, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 7
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
  %20 = call i8* @luaM_malloc_(%struct.lua_State* %19, i64 208, i32 8)
  %21 = bitcast i8* %20 to %struct.LX*
  %22 = getelementptr inbounds %struct.LX, %struct.LX* %21, i32 0, i32 1
  store %struct.lua_State* %22, %struct.lua_State** %4, align 8
  %23 = load %struct.global_State*, %struct.global_State** %3, align 8
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 10
  %25 = load i8, i8* %24, align 4
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 24
  %28 = trunc i32 %27 to i8
  %29 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 2
  store i8 %28, i8* %30, align 1
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 1
  store i8 8, i8* %32, align 8
  %33 = load %struct.global_State*, %struct.global_State** %3, align 8
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i32 0, i32 20
  %35 = load %struct.GCObject*, %struct.GCObject** %34, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 0
  store %struct.GCObject* %35, %struct.GCObject** %37, align 8
  %38 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %39 = bitcast %struct.lua_State* %38 to %union.GCUnion*
  %40 = bitcast %union.GCUnion* %39 to %struct.GCObject*
  %41 = load %struct.global_State*, %struct.global_State** %3, align 8
  %42 = getelementptr inbounds %struct.global_State, %struct.global_State* %41, i32 0, i32 20
  store %struct.GCObject* %40, %struct.GCObject** %42, align 8
  %43 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 6
  %45 = load %union.StackValue*, %union.StackValue** %44, align 8
  %46 = bitcast %union.StackValue* %45 to %struct.TValue*
  store %struct.TValue* %46, %struct.TValue** %5, align 8
  %47 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  store %struct.lua_State* %47, %struct.lua_State** %6, align 8
  %48 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %49 = bitcast %struct.lua_State* %48 to %union.GCUnion*
  %50 = bitcast %union.GCUnion* %49 to %struct.GCObject*
  %51 = load %struct.TValue*, %struct.TValue** %5, align 8
  %52 = getelementptr inbounds %struct.TValue, %struct.TValue* %51, i32 0, i32 0
  %53 = bitcast %union.Value* %52 to %struct.GCObject**
  store %struct.GCObject* %50, %struct.GCObject** %53, align 8
  %54 = load %struct.TValue*, %struct.TValue** %5, align 8
  %55 = getelementptr inbounds %struct.TValue, %struct.TValue* %54, i32 0, i32 1
  store i8 72, i8* %55, align 8
  %56 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %56, i32 0, i32 6
  %58 = load %union.StackValue*, %union.StackValue** %57, align 8
  %59 = getelementptr inbounds %union.StackValue, %union.StackValue* %58, i32 1
  store %union.StackValue* %59, %union.StackValue** %57, align 8
  %60 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %61 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @preinit_thread(%struct.lua_State* %60, %struct.global_State* %61)
  %62 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %62, i32 0, i32 23
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %65, i32 0, i32 23
  store i32 %64, i32* %66, align 8
  %67 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %68 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %67, i32 0, i32 21
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %70, i32 0, i32 21
  store i32 %69, i32* %71, align 8
  %72 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %73 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %72, i32 0, i32 17
  %74 = load volatile void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %73, align 8
  %75 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %76 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %75, i32 0, i32 17
  store volatile void (%struct.lua_State*, %struct.lua_Debug*)* %74, void (%struct.lua_State*, %struct.lua_Debug*)** %76, align 8
  %77 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %78 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %77, i32 0, i32 21
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %80, i32 0, i32 22
  store i32 %79, i32* %81, align 4
  %82 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %83 = bitcast %struct.lua_State* %82 to i8*
  %84 = getelementptr inbounds i8, i8* %83, i64 -8
  %85 = load %struct.global_State*, %struct.global_State** %3, align 8
  %86 = getelementptr inbounds %struct.global_State, %struct.global_State* %85, i32 0, i32 38
  %87 = load %struct.lua_State*, %struct.lua_State** %86, align 8
  %88 = bitcast %struct.lua_State* %87 to i8*
  %89 = getelementptr inbounds i8, i8* %88, i64 -8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %89, i64 8, i32 1, i1 false)
  %90 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %91 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %92 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @stack_init(%struct.lua_State* %91, %struct.lua_State* %92)
  %93 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  ret %struct.lua_State* %93
}

declare hidden void @luaC_step(%struct.lua_State*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preinit_thread(%struct.lua_State*, %struct.global_State*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.global_State* %1, %struct.global_State** %4, align 8
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 7
  store %struct.global_State* %5, %struct.global_State** %7, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 11
  store %union.StackValue* null, %union.StackValue** %9, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 8
  store %struct.CallInfo* null, %struct.CallInfo** %11, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 5
  store i16 0, i16* %13, align 4
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 20
  store i32 0, i32* %15, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 14
  store %struct.lua_State* %16, %struct.lua_State** %18, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 15
  store %struct.lua_longjmp* null, %struct.lua_longjmp** %20, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 19
  store i32 0, i32* %22, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 17
  store volatile void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)** %24, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 23
  store i32 0, i32* %26, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 21
  store i32 0, i32* %28, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 4
  store i8 1, i8* %30, align 1
  %31 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 21
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %34, i32 0, i32 22
  store i32 %33, i32* %35, align 4
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 12
  store %struct.UpVal* null, %struct.UpVal** %37, align 8
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 3
  store i8 0, i8* %39, align 2
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 18
  store i64 0, i64* %41, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stack_init(%struct.lua_State*, %struct.lua_State*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.lua_State* %1, %struct.lua_State** %4, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = call i8* @luaM_malloc_(%struct.lua_State* %7, i64 640, i32 0)
  %9 = bitcast i8* %8 to %union.StackValue*
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 11
  store %union.StackValue* %9, %union.StackValue** %11, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 20
  store i32 40, i32* %13, align 4
  store i32 0, i32* %5, align 4
  br label %14

; <label>:14:                                     ; preds = %26, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 40
  br i1 %16, label %17, label %29

; <label>:17:                                     ; preds = %14
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 11
  %20 = load %union.StackValue*, %union.StackValue** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %union.StackValue, %union.StackValue* %20, i64 %22
  %24 = bitcast %union.StackValue* %23 to %struct.TValue*
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %24, i32 0, i32 1
  store i8 0, i8* %25, align 8
  br label %26

; <label>:26:                                     ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %14

; <label>:29:                                     ; preds = %14
  %30 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %30, i32 0, i32 11
  %32 = load %union.StackValue*, %union.StackValue** %31, align 8
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %33, i32 0, i32 6
  store %union.StackValue* %32, %union.StackValue** %34, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 11
  %37 = load %union.StackValue*, %union.StackValue** %36, align 8
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 20
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %union.StackValue, %union.StackValue* %37, i64 %41
  %43 = getelementptr inbounds %union.StackValue, %union.StackValue* %42, i64 -5
  %44 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i32 0, i32 10
  store %union.StackValue* %43, %union.StackValue** %45, align 8
  %46 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %47 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %46, i32 0, i32 16
  store %struct.CallInfo* %47, %struct.CallInfo** %6, align 8
  %48 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %49 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %48, i32 0, i32 2
  store %struct.CallInfo* null, %struct.CallInfo** %49, align 8
  %50 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %51 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %50, i32 0, i32 3
  store %struct.CallInfo* null, %struct.CallInfo** %51, align 8
  %52 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %53 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %52, i32 0, i32 7
  store i16 2, i16* %53, align 2
  %54 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %54, i32 0, i32 6
  %56 = load %union.StackValue*, %union.StackValue** %55, align 8
  %57 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %58 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %57, i32 0, i32 0
  store %union.StackValue* %56, %union.StackValue** %58, align 8
  %59 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %60 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %59, i32 0, i32 4
  %61 = bitcast %union.anon.0* %60 to %struct.anon.1*
  %62 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %61, i32 0, i32 0
  store i32 (%struct.lua_State*, i32, i64)* null, i32 (%struct.lua_State*, i32, i64)** %62, align 8
  %63 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %64 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %63, i32 0, i32 6
  store i16 0, i16* %64, align 4
  %65 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %65, i32 0, i32 6
  %67 = load %union.StackValue*, %union.StackValue** %66, align 8
  %68 = bitcast %union.StackValue* %67 to %struct.TValue*
  %69 = getelementptr inbounds %struct.TValue, %struct.TValue* %68, i32 0, i32 1
  store i8 0, i8* %69, align 8
  %70 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %70, i32 0, i32 6
  %72 = load %union.StackValue*, %union.StackValue** %71, align 8
  %73 = getelementptr inbounds %union.StackValue, %union.StackValue* %72, i32 1
  store %union.StackValue* %73, %union.StackValue** %71, align 8
  %74 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %75 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %74, i32 0, i32 6
  %76 = load %union.StackValue*, %union.StackValue** %75, align 8
  %77 = getelementptr inbounds %union.StackValue, %union.StackValue* %76, i64 20
  %78 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %79 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %78, i32 0, i32 1
  store %union.StackValue* %77, %union.StackValue** %79, align 8
  %80 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %81 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %82 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %81, i32 0, i32 8
  store %struct.CallInfo* %80, %struct.CallInfo** %82, align 8
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
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 11
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8
  %14 = call i32 @luaF_close(%struct.lua_State* %10, %union.StackValue* %13, i32 -1)
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @freestack(%struct.lua_State* %16)
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = load %struct.LX*, %struct.LX** %5, align 8
  %19 = bitcast %struct.LX* %18 to i8*
  call void @luaM_free_(%struct.lua_State* %17, i8* %19, i64 208)
  ret void
}

declare hidden i32 @luaF_close(%struct.lua_State*, %union.StackValue*, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freestack(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 11
  %5 = load %union.StackValue*, %union.StackValue** %4, align 8
  %6 = icmp eq %union.StackValue* %5, null
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  br label %24

; <label>:8:                                      ; preds = %1
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 16
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 8
  store %struct.CallInfo* %10, %struct.CallInfo** %12, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaE_freeCI(%struct.lua_State* %13)
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 11
  %17 = load %union.StackValue*, %union.StackValue** %16, align 8
  %18 = bitcast %union.StackValue* %17 to i8*
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 20
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 16
  call void @luaM_free_(%struct.lua_State* %14, i8* %18, i64 %23)
  br label %24

; <label>:24:                                     ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_resetthread(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.CallInfo*, align 8
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 16
  store %struct.CallInfo* %6, %struct.CallInfo** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 11
  %10 = load %union.StackValue*, %union.StackValue** %9, align 8
  %11 = call i32 @luaF_close(%struct.lua_State* %7, %union.StackValue* %10, i32 -2)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 11
  %14 = load %union.StackValue*, %union.StackValue** %13, align 8
  %15 = bitcast %union.StackValue* %14 to %struct.TValue*
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %15, i32 0, i32 1
  store i8 0, i8* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, -2
  br i1 %18, label %19, label %26

; <label>:19:                                     ; preds = %1
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 11
  %24 = load %union.StackValue*, %union.StackValue** %23, align 8
  %25 = getelementptr inbounds %union.StackValue, %union.StackValue* %24, i64 1
  call void @luaD_seterrorobj(%struct.lua_State* %20, i32 %21, %union.StackValue* %25)
  br label %33

; <label>:26:                                     ; preds = %1
  store i32 0, i32* %4, align 4
  %27 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 11
  %29 = load %union.StackValue*, %union.StackValue** %28, align 8
  %30 = getelementptr inbounds %union.StackValue, %union.StackValue* %29, i64 1
  %31 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 6
  store %union.StackValue* %30, %union.StackValue** %32, align 8
  br label %33

; <label>:33:                                     ; preds = %26, %19
  %34 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %35 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %34, i32 0, i32 7
  store i16 2, i16* %35, align 2
  %36 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 11
  %38 = load %union.StackValue*, %union.StackValue** %37, align 8
  %39 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %40 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %39, i32 0, i32 0
  store %union.StackValue* %38, %union.StackValue** %40, align 8
  %41 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i32 0, i32 6
  %43 = load %union.StackValue*, %union.StackValue** %42, align 8
  %44 = getelementptr inbounds %union.StackValue, %union.StackValue* %43, i64 20
  %45 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %46 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %45, i32 0, i32 1
  store %union.StackValue* %44, %union.StackValue** %46, align 8
  %47 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %48 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %49 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %48, i32 0, i32 8
  store %struct.CallInfo* %47, %struct.CallInfo** %49, align 8
  %50 = load i32, i32* %4, align 4
  %51 = trunc i32 %50 to i8
  %52 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %52, i32 0, i32 3
  store i8 %51, i8* %53, align 2
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare hidden void @luaD_seterrorobj(%struct.lua_State*, i32, %union.StackValue*) #2

; Function Attrs: noinline nounwind optnone uwtable
define %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8* (i8*, i8*, i64, i64)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca %struct.global_State*, align 8
  %9 = alloca %struct.LG*, align 8
  %10 = alloca %struct.TValue*, align 8
  store i8* (i8*, i8*, i64, i64)* %0, i8* (i8*, i8*, i64, i64)** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* %11(i8* %12, i8* null, i64 8, i64 1616)
  %14 = bitcast i8* %13 to %struct.LG*
  store %struct.LG* %14, %struct.LG** %9, align 8
  %15 = load %struct.LG*, %struct.LG** %9, align 8
  %16 = icmp eq %struct.LG* %15, null
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %2
  store %struct.lua_State* null, %struct.lua_State** %3, align 8
  br label %159

; <label>:18:                                     ; preds = %2
  %19 = load %struct.LG*, %struct.LG** %9, align 8
  %20 = getelementptr inbounds %struct.LG, %struct.LG* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.LX, %struct.LX* %20, i32 0, i32 1
  store %struct.lua_State* %21, %struct.lua_State** %7, align 8
  %22 = load %struct.LG*, %struct.LG** %9, align 8
  %23 = getelementptr inbounds %struct.LG, %struct.LG* %22, i32 0, i32 1
  store %struct.global_State* %23, %struct.global_State** %8, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 1
  store i8 8, i8* %25, align 8
  %26 = load %struct.global_State*, %struct.global_State** %8, align 8
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 10
  store i8 8, i8* %27, align 4
  %28 = load %struct.global_State*, %struct.global_State** %8, align 8
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i32 0, i32 10
  %30 = load i8, i8* %29, align 4
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 24
  %33 = trunc i32 %32 to i8
  %34 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %34, i32 0, i32 2
  store i8 %33, i8* %35, align 1
  %36 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %37 = load %struct.global_State*, %struct.global_State** %8, align 8
  call void @preinit_thread(%struct.lua_State* %36, %struct.global_State* %37)
  %38 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %39 = bitcast %struct.lua_State* %38 to %union.GCUnion*
  %40 = bitcast %union.GCUnion* %39 to %struct.GCObject*
  %41 = load %struct.global_State*, %struct.global_State** %8, align 8
  %42 = getelementptr inbounds %struct.global_State, %struct.global_State* %41, i32 0, i32 20
  store %struct.GCObject* %40, %struct.GCObject** %42, align 8
  %43 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 0
  store %struct.GCObject* null, %struct.GCObject** %44, align 8
  %45 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %4, align 8
  %46 = load %struct.global_State*, %struct.global_State** %8, align 8
  %47 = getelementptr inbounds %struct.global_State, %struct.global_State* %46, i32 0, i32 0
  store i8* (i8*, i8*, i64, i64)* %45, i8* (i8*, i8*, i64, i64)** %47, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.global_State*, %struct.global_State** %8, align 8
  %50 = getelementptr inbounds %struct.global_State, %struct.global_State* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.global_State*, %struct.global_State** %8, align 8
  %52 = getelementptr inbounds %struct.global_State, %struct.global_State* %51, i32 0, i32 43
  store void (i8*, i8*, i32)* null, void (i8*, i8*, i32)** %52, align 8
  %53 = load %struct.global_State*, %struct.global_State** %8, align 8
  %54 = getelementptr inbounds %struct.global_State, %struct.global_State* %53, i32 0, i32 44
  store i8* null, i8** %54, align 8
  %55 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %56 = load %struct.global_State*, %struct.global_State** %8, align 8
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %56, i32 0, i32 38
  store %struct.lua_State* %55, %struct.lua_State** %57, align 8
  %58 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %59 = call i32 @luai_makeseed(%struct.lua_State* %58)
  %60 = load %struct.global_State*, %struct.global_State** %8, align 8
  %61 = getelementptr inbounds %struct.global_State, %struct.global_State* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 8
  %62 = load %struct.global_State*, %struct.global_State** %8, align 8
  %63 = getelementptr inbounds %struct.global_State, %struct.global_State* %62, i32 0, i32 15
  store i8 0, i8* %63, align 1
  %64 = load %struct.global_State*, %struct.global_State** %8, align 8
  %65 = getelementptr inbounds %struct.global_State, %struct.global_State* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %65, i32 0, i32 1
  store i32 0, i32* %66, align 8
  %67 = load %struct.global_State*, %struct.global_State** %8, align 8
  %68 = getelementptr inbounds %struct.global_State, %struct.global_State* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %68, i32 0, i32 2
  store i32 0, i32* %69, align 4
  %70 = load %struct.global_State*, %struct.global_State** %8, align 8
  %71 = getelementptr inbounds %struct.global_State, %struct.global_State* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %71, i32 0, i32 0
  store %struct.TString** null, %struct.TString*** %72, align 8
  %73 = load %struct.global_State*, %struct.global_State** %8, align 8
  %74 = getelementptr inbounds %struct.global_State, %struct.global_State* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TValue, %struct.TValue* %74, i32 0, i32 1
  store i8 0, i8* %75, align 8
  %76 = load %struct.global_State*, %struct.global_State** %8, align 8
  %77 = getelementptr inbounds %struct.global_State, %struct.global_State* %76, i32 0, i32 37
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %77, align 8
  %78 = load %struct.global_State*, %struct.global_State** %8, align 8
  %79 = getelementptr inbounds %struct.global_State, %struct.global_State* %78, i32 0, i32 11
  store i8 8, i8* %79, align 1
  %80 = load %struct.global_State*, %struct.global_State** %8, align 8
  %81 = getelementptr inbounds %struct.global_State, %struct.global_State* %80, i32 0, i32 12
  store i8 0, i8* %81, align 2
  %82 = load %struct.global_State*, %struct.global_State** %8, align 8
  %83 = getelementptr inbounds %struct.global_State, %struct.global_State* %82, i32 0, i32 16
  store i8 0, i8* %83, align 2
  %84 = load %struct.global_State*, %struct.global_State** %8, align 8
  %85 = getelementptr inbounds %struct.global_State, %struct.global_State* %84, i32 0, i32 29
  store %struct.GCObject* null, %struct.GCObject** %85, align 8
  %86 = load %struct.global_State*, %struct.global_State** %8, align 8
  %87 = getelementptr inbounds %struct.global_State, %struct.global_State* %86, i32 0, i32 28
  store %struct.GCObject* null, %struct.GCObject** %87, align 8
  %88 = load %struct.global_State*, %struct.global_State** %8, align 8
  %89 = getelementptr inbounds %struct.global_State, %struct.global_State* %88, i32 0, i32 22
  store %struct.GCObject* null, %struct.GCObject** %89, align 8
  %90 = load %struct.global_State*, %struct.global_State** %8, align 8
  %91 = getelementptr inbounds %struct.global_State, %struct.global_State* %90, i32 0, i32 32
  store %struct.GCObject* null, %struct.GCObject** %91, align 8
  %92 = load %struct.global_State*, %struct.global_State** %8, align 8
  %93 = getelementptr inbounds %struct.global_State, %struct.global_State* %92, i32 0, i32 31
  store %struct.GCObject* null, %struct.GCObject** %93, align 8
  %94 = load %struct.global_State*, %struct.global_State** %8, align 8
  %95 = getelementptr inbounds %struct.global_State, %struct.global_State* %94, i32 0, i32 30
  store %struct.GCObject* null, %struct.GCObject** %95, align 8
  %96 = load %struct.global_State*, %struct.global_State** %8, align 8
  %97 = getelementptr inbounds %struct.global_State, %struct.global_State* %96, i32 0, i32 35
  store %struct.GCObject* null, %struct.GCObject** %97, align 8
  %98 = load %struct.global_State*, %struct.global_State** %8, align 8
  %99 = getelementptr inbounds %struct.global_State, %struct.global_State* %98, i32 0, i32 34
  store %struct.GCObject* null, %struct.GCObject** %99, align 8
  %100 = load %struct.global_State*, %struct.global_State** %8, align 8
  %101 = getelementptr inbounds %struct.global_State, %struct.global_State* %100, i32 0, i32 33
  store %struct.GCObject* null, %struct.GCObject** %101, align 8
  %102 = load %struct.global_State*, %struct.global_State** %8, align 8
  %103 = getelementptr inbounds %struct.global_State, %struct.global_State* %102, i32 0, i32 21
  store %struct.GCObject** null, %struct.GCObject*** %103, align 8
  %104 = load %struct.global_State*, %struct.global_State** %8, align 8
  %105 = getelementptr inbounds %struct.global_State, %struct.global_State* %104, i32 0, i32 24
  store %struct.GCObject* null, %struct.GCObject** %105, align 8
  %106 = load %struct.global_State*, %struct.global_State** %8, align 8
  %107 = getelementptr inbounds %struct.global_State, %struct.global_State* %106, i32 0, i32 23
  store %struct.GCObject* null, %struct.GCObject** %107, align 8
  %108 = load %struct.global_State*, %struct.global_State** %8, align 8
  %109 = getelementptr inbounds %struct.global_State, %struct.global_State* %108, i32 0, i32 27
  store %struct.GCObject* null, %struct.GCObject** %109, align 8
  %110 = load %struct.global_State*, %struct.global_State** %8, align 8
  %111 = getelementptr inbounds %struct.global_State, %struct.global_State* %110, i32 0, i32 26
  store %struct.GCObject* null, %struct.GCObject** %111, align 8
  %112 = load %struct.global_State*, %struct.global_State** %8, align 8
  %113 = getelementptr inbounds %struct.global_State, %struct.global_State* %112, i32 0, i32 25
  store %struct.GCObject* null, %struct.GCObject** %113, align 8
  %114 = load %struct.global_State*, %struct.global_State** %8, align 8
  %115 = getelementptr inbounds %struct.global_State, %struct.global_State* %114, i32 0, i32 36
  store %struct.lua_State* null, %struct.lua_State** %115, align 8
  %116 = load %struct.global_State*, %struct.global_State** %8, align 8
  %117 = getelementptr inbounds %struct.global_State, %struct.global_State* %116, i32 0, i32 2
  store i64 1616, i64* %117, align 8
  %118 = load %struct.global_State*, %struct.global_State** %8, align 8
  %119 = getelementptr inbounds %struct.global_State, %struct.global_State* %118, i32 0, i32 3
  store i64 0, i64* %119, align 8
  %120 = load %struct.global_State*, %struct.global_State** %8, align 8
  %121 = getelementptr inbounds %struct.global_State, %struct.global_State* %120, i32 0, i32 5
  store i64 0, i64* %121, align 8
  %122 = load %struct.global_State*, %struct.global_State** %8, align 8
  %123 = getelementptr inbounds %struct.global_State, %struct.global_State* %122, i32 0, i32 8
  store %struct.TValue* %123, %struct.TValue** %10, align 8
  %124 = load %struct.TValue*, %struct.TValue** %10, align 8
  %125 = getelementptr inbounds %struct.TValue, %struct.TValue* %124, i32 0, i32 0
  %126 = bitcast %union.Value* %125 to i64*
  store i64 0, i64* %126, align 8
  %127 = load %struct.TValue*, %struct.TValue** %10, align 8
  %128 = getelementptr inbounds %struct.TValue, %struct.TValue* %127, i32 0, i32 1
  store i8 35, i8* %128, align 8
  %129 = load %struct.global_State*, %struct.global_State** %8, align 8
  %130 = getelementptr inbounds %struct.global_State, %struct.global_State* %129, i32 0, i32 17
  store i8 50, i8* %130, align 1
  %131 = load %struct.global_State*, %struct.global_State** %8, align 8
  %132 = getelementptr inbounds %struct.global_State, %struct.global_State* %131, i32 0, i32 18
  store i8 25, i8* %132, align 4
  %133 = load %struct.global_State*, %struct.global_State** %8, align 8
  %134 = getelementptr inbounds %struct.global_State, %struct.global_State* %133, i32 0, i32 19
  store i8 13, i8* %134, align 1
  %135 = load %struct.global_State*, %struct.global_State** %8, align 8
  %136 = getelementptr inbounds %struct.global_State, %struct.global_State* %135, i32 0, i32 14
  store i8 25, i8* %136, align 8
  %137 = load %struct.global_State*, %struct.global_State** %8, align 8
  %138 = getelementptr inbounds %struct.global_State, %struct.global_State* %137, i32 0, i32 13
  store i8 20, i8* %138, align 1
  store i32 0, i32* %6, align 4
  br label %139

; <label>:139:                                    ; preds = %148, %18
  %140 = load i32, i32* %6, align 4
  %141 = icmp slt i32 %140, 9
  br i1 %141, label %142, label %151

; <label>:142:                                    ; preds = %139
  %143 = load %struct.global_State*, %struct.global_State** %8, align 8
  %144 = getelementptr inbounds %struct.global_State, %struct.global_State* %143, i32 0, i32 41
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %144, i64 0, i64 %146
  store %struct.Table* null, %struct.Table** %147, align 8
  br label %148

; <label>:148:                                    ; preds = %142
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %6, align 4
  br label %139

; <label>:151:                                    ; preds = %139
  %152 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %153 = call i32 @luaD_rawrunprotected(%struct.lua_State* %152, void (%struct.lua_State*, i8*)* @f_luaopen, i8* null)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

; <label>:155:                                    ; preds = %151
  %156 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  call void @close_state(%struct.lua_State* %156)
  store %struct.lua_State* null, %struct.lua_State** %7, align 8
  br label %157

; <label>:157:                                    ; preds = %155, %151
  %158 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  store %struct.lua_State* %158, %struct.lua_State** %3, align 8
  br label %159

; <label>:159:                                    ; preds = %157, %17
  %160 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  ret %struct.lua_State* %160
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luai_makeseed(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca [24 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %9 = call i64 @time(i64* null) #6
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = ptrtoint %struct.lua_State* %11 to i64
  store i64 %12, i64* %6, align 8
  %13 = getelementptr inbounds [24 x i8], [24 x i8]* %3, i32 0, i32 0
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = bitcast i64* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 8, i32 1, i1 false)
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %19, 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = ptrtoint i32* %4 to i64
  store i64 %22, i64* %7, align 8
  %23 = getelementptr inbounds [24 x i8], [24 x i8]* %3, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = bitcast i64* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 8, i32 1, i1 false)
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  store i64 ptrtoint (%struct.lua_State* (i8* (i8*, i8*, i64, i64)*, i8*)* @lua_newstate to i64), i64* %8, align 8
  %32 = getelementptr inbounds [24 x i8], [24 x i8]* %3, i32 0, i32 0
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = bitcast i64* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 8, i32 1, i1 false)
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = getelementptr inbounds [24 x i8], [24 x i8]* %3, i32 0, i32 0
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @luaS_hash(i8* %41, i64 %43, i32 %44)
  ret i32 %45
}

declare hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f_luaopen(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 7
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
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i32 0, i32 15
  store i8 1, i8* %18, align 1
  %19 = load %struct.global_State*, %struct.global_State** %5, align 8
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i32 0, i32 8
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %20, i32 0, i32 1
  store i8 0, i8* %21, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_state(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 7
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8
  store %struct.global_State* %6, %struct.global_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 11
  %10 = load %union.StackValue*, %union.StackValue** %9, align 8
  %11 = call i32 @luaF_close(%struct.lua_State* %7, %union.StackValue* %10, i32 -2)
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaC_freeallobjects(%struct.lua_State* %12)
  %13 = load %struct.global_State*, %struct.global_State** %3, align 8
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i32 0, i32 1
  %16 = load i8, i8* %15, align 8
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %1
  %21 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  br label %22

; <label>:22:                                     ; preds = %20, %1
  %23 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 7
  %26 = load %struct.global_State*, %struct.global_State** %25, align 8
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %27, i32 0, i32 0
  %29 = load %struct.TString**, %struct.TString*** %28, align 8
  %30 = bitcast %struct.TString** %29 to i8*
  %31 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 7
  %33 = load %struct.global_State*, %struct.global_State** %32, align 8
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  call void @luaM_free_(%struct.lua_State* %23, i8* %30, i64 %38)
  %39 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @freestack(%struct.lua_State* %39)
  %40 = load %struct.global_State*, %struct.global_State** %3, align 8
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %40, i32 0, i32 0
  %42 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %41, align 8
  %43 = load %struct.global_State*, %struct.global_State** %3, align 8
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %47 = bitcast %struct.lua_State* %46 to i8*
  %48 = getelementptr inbounds i8, i8* %47, i64 -8
  %49 = bitcast i8* %48 to %struct.LX*
  %50 = bitcast %struct.LX* %49 to i8*
  %51 = call i8* %42(i8* %45, i8* %50, i64 1616, i64 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @lua_close(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 7
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i32 0, i32 38
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  store %struct.lua_State* %7, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @close_state(%struct.lua_State* %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaE_warning(%struct.lua_State*, i8*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (i8*, i8*, i32)*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 7
  %10 = load %struct.global_State*, %struct.global_State** %9, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i32 0, i32 43
  %12 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %11, align 8
  store void (i8*, i8*, i32)* %12, void (i8*, i8*, i32)** %7, align 8
  %13 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %7, align 8
  %14 = icmp ne void (i8*, i8*, i32)* %13, null
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %3
  %16 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %7, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 7
  %19 = load %struct.global_State*, %struct.global_State** %18, align 8
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i32 0, i32 44
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  call void %16(i8* %21, i8* %22, i32 %23)
  br label %24

; <label>:24:                                     ; preds = %15, %3
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #4

declare hidden i32 @luaS_hash(i8*, i64, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_registry(%struct.lua_State*, %struct.global_State*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.global_State*, align 8
  %5 = alloca %struct.TValue, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.Table*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.lua_State*, align 8
  %11 = alloca %struct.TValue*, align 8
  %12 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.global_State* %1, %struct.global_State** %4, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = call %struct.Table* @luaH_new(%struct.lua_State* %13)
  store %struct.Table* %14, %struct.Table** %6, align 8
  %15 = load %struct.global_State*, %struct.global_State** %4, align 8
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 7
  store %struct.TValue* %16, %struct.TValue** %7, align 8
  %17 = load %struct.Table*, %struct.Table** %6, align 8
  store %struct.Table* %17, %struct.Table** %8, align 8
  %18 = load %struct.Table*, %struct.Table** %8, align 8
  %19 = bitcast %struct.Table* %18 to %union.GCUnion*
  %20 = bitcast %union.GCUnion* %19 to %struct.GCObject*
  %21 = load %struct.TValue*, %struct.TValue** %7, align 8
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %21, i32 0, i32 0
  %23 = bitcast %union.Value* %22 to %struct.GCObject**
  store %struct.GCObject* %20, %struct.GCObject** %23, align 8
  %24 = load %struct.TValue*, %struct.TValue** %7, align 8
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %24, i32 0, i32 1
  store i8 69, i8* %25, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = load %struct.Table*, %struct.Table** %6, align 8
  call void @luaH_resize(%struct.lua_State* %26, %struct.Table* %27, i32 2, i32 0)
  store %struct.TValue* %5, %struct.TValue** %9, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  store %struct.lua_State* %28, %struct.lua_State** %10, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %10, align 8
  %30 = bitcast %struct.lua_State* %29 to %union.GCUnion*
  %31 = bitcast %union.GCUnion* %30 to %struct.GCObject*
  %32 = load %struct.TValue*, %struct.TValue** %9, align 8
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i32 0, i32 0
  %34 = bitcast %union.Value* %33 to %struct.GCObject**
  store %struct.GCObject* %31, %struct.GCObject** %34, align 8
  %35 = load %struct.TValue*, %struct.TValue** %9, align 8
  %36 = getelementptr inbounds %struct.TValue, %struct.TValue* %35, i32 0, i32 1
  store i8 72, i8* %36, align 8
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = load %struct.Table*, %struct.Table** %6, align 8
  call void @luaH_setint(%struct.lua_State* %37, %struct.Table* %38, i64 1, %struct.TValue* %5)
  store %struct.TValue* %5, %struct.TValue** %11, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %40 = call %struct.Table* @luaH_new(%struct.lua_State* %39)
  store %struct.Table* %40, %struct.Table** %12, align 8
  %41 = load %struct.Table*, %struct.Table** %12, align 8
  %42 = bitcast %struct.Table* %41 to %union.GCUnion*
  %43 = bitcast %union.GCUnion* %42 to %struct.GCObject*
  %44 = load %struct.TValue*, %struct.TValue** %11, align 8
  %45 = getelementptr inbounds %struct.TValue, %struct.TValue* %44, i32 0, i32 0
  %46 = bitcast %union.Value* %45 to %struct.GCObject**
  store %struct.GCObject* %43, %struct.GCObject** %46, align 8
  %47 = load %struct.TValue*, %struct.TValue** %11, align 8
  %48 = getelementptr inbounds %struct.TValue, %struct.TValue* %47, i32 0, i32 1
  store i8 69, i8* %48, align 8
  %49 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %50 = load %struct.Table*, %struct.Table** %6, align 8
  call void @luaH_setint(%struct.lua_State* %49, %struct.Table* %50, i64 2, %struct.TValue* %5)
  ret void
}

declare hidden void @luaS_init(%struct.lua_State*) #2

declare hidden void @luaT_init(%struct.lua_State*) #2

declare hidden void @luaX_init(%struct.lua_State*) #2

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) #2

declare hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) #2

declare hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.TValue*) #2

declare hidden void @luaC_freeallobjects(%struct.lua_State*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
