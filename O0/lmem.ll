; ModuleID = 'lmem.c'
source_filename = "lmem.c"
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

@.str = private unnamed_addr constant [26 x i8] c"too many %s (limit is %d)\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"memory allocation error: block too big\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32, i32*, i32, i32, i8*) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.lua_State*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* %17, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %7
  %25 = load i8*, i8** %10, align 8
  store i8* %25, i8** %8, align 8
  br label %81

; <label>:26:                                     ; preds = %7
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* %14, align 4
  %29 = sdiv i32 %28, 2
  %30 = icmp sge i32 %27, %29
  br i1 %30, label %31, label %46

; <label>:31:                                     ; preds = %26
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp sge i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

; <label>:40:                                     ; preds = %31
  %41 = load %struct.lua_State*, %struct.lua_State** %9, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = load i32, i32* %14, align 4
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i8* %42, i32 %43) #4
  unreachable

; <label>:44:                                     ; preds = %31
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %17, align 4
  br label %53

; <label>:46:                                     ; preds = %26
  %47 = load i32, i32* %17, align 4
  %48 = mul nsw i32 %47, 2
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %46
  store i32 4, i32* %17, align 4
  br label %52

; <label>:52:                                     ; preds = %51, %46
  br label %53

; <label>:53:                                     ; preds = %52, %44
  %54 = load %struct.lua_State*, %struct.lua_State** %9, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %58, %60
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %63, %65
  %67 = call i8* @luaM_realloc_(%struct.lua_State* %54, i8* %55, i64 %61, i64 %66)
  store i8* %67, i8** %16, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = icmp eq i8* %68, null
  %70 = zext i1 %69 to i32
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

; <label>:75:                                     ; preds = %53
  %76 = load %struct.lua_State*, %struct.lua_State** %9, align 8
  call void @luaD_throw(%struct.lua_State* %76, i32 4) #4
  unreachable

; <label>:77:                                     ; preds = %53
  %78 = load i32, i32* %17, align 4
  %79 = load i32*, i32** %12, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i8*, i8** %16, align 8
  store i8* %80, i8** %8, align 8
  br label %81

; <label>:81:                                     ; preds = %77, %24
  %82 = load i8*, i8** %8, align 8
  ret i8* %82
}

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 7
  %14 = load %struct.global_State*, %struct.global_State** %13, align 8
  store %struct.global_State* %14, %struct.global_State** %11, align 8
  %15 = load %struct.global_State*, %struct.global_State** %11, align 8
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 0
  %17 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %16, align 8
  %18 = load %struct.global_State*, %struct.global_State** %11, align 8
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i8* %17(i8* %20, i8* %21, i64 %22, i64 %23)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %4
  %28 = load i64, i64* %9, align 8
  %29 = icmp ugt i64 %28, 0
  br label %30

; <label>:30:                                     ; preds = %27, %4
  %31 = phi i1 [ false, %4 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

; <label>:37:                                     ; preds = %30
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %47

; <label>:41:                                     ; preds = %37
  %42 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i8* @tryagain(%struct.lua_State* %42, i8* %43, i64 %44, i64 %45)
  store i8* %46, i8** %10, align 8
  br label %47

; <label>:47:                                     ; preds = %41, %37
  %48 = load i8*, i8** %10, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %47
  store i8* null, i8** %5, align 8
  br label %63

; <label>:51:                                     ; preds = %47
  br label %52

; <label>:52:                                     ; preds = %51, %30
  %53 = load %struct.global_State*, %struct.global_State** %11, align 8
  %54 = getelementptr inbounds %struct.global_State, %struct.global_State* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %55, %56
  %58 = load i64, i64* %8, align 8
  %59 = sub i64 %57, %58
  %60 = load %struct.global_State*, %struct.global_State** %11, align 8
  %61 = getelementptr inbounds %struct.global_State, %struct.global_State* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  %62 = load i8*, i8** %10, align 8
  store i8* %62, i8** %5, align 8
  br label %63

; <label>:63:                                     ; preds = %52, %50
  %64 = load i8*, i8** %5, align 8
  ret i8* %64
}

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i8* @luaM_shrinkvector_(%struct.lua_State*, i8*, i32*, i32, i32) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.global_State*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 7
  %17 = load %struct.global_State*, %struct.global_State** %16, align 8
  store %struct.global_State* %17, %struct.global_State** %11, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %10, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %13, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %14, align 8
  %27 = load %struct.global_State*, %struct.global_State** %11, align 8
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i32 0, i32 0
  %29 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %28, align 8
  %30 = load %struct.global_State*, %struct.global_State** %11, align 8
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %14, align 8
  %36 = call i8* %29(i8* %32, i8* %33, i64 %34, i64 %35)
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %42

; <label>:39:                                     ; preds = %5
  %40 = load i32, i32* %9, align 4
  %41 = icmp sgt i32 %40, 0
  br label %42

; <label>:42:                                     ; preds = %39, %5
  %43 = phi i1 [ false, %5 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

; <label>:49:                                     ; preds = %42
  %50 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void @luaD_throw(%struct.lua_State* %50, i32 4) #4
  unreachable

; <label>:51:                                     ; preds = %42
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %13, align 8
  %54 = sub i64 %52, %53
  %55 = load %struct.global_State*, %struct.global_State** %11, align 8
  %56 = getelementptr inbounds %struct.global_State, %struct.global_State* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i8*, i8** %12, align 8
  ret i8* %61
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaM_toobig(%struct.lua_State*) #2 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaM_free_(%struct.lua_State*, i8*, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 7
  %10 = load %struct.global_State*, %struct.global_State** %9, align 8
  store %struct.global_State* %10, %struct.global_State** %7, align 8
  %11 = load %struct.global_State*, %struct.global_State** %7, align 8
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %11, i32 0, i32 0
  %13 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %12, align 8
  %14 = load %struct.global_State*, %struct.global_State** %7, align 8
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i8* %13(i8* %16, i8* %17, i64 %18, i64 0)
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.global_State*, %struct.global_State** %7, align 8
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = sub i64 %23, %20
  store i64 %24, i64* %22, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tryagain(%struct.lua_State*, i8*, i64, i64) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 7
  %13 = load %struct.global_State*, %struct.global_State** %12, align 8
  store %struct.global_State* %13, %struct.global_State** %10, align 8
  %14 = load %struct.global_State*, %struct.global_State** %10, align 8
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 8
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33

; <label>:21:                                     ; preds = %4
  %22 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void @luaC_fullgc(%struct.lua_State* %22, i32 1)
  %23 = load %struct.global_State*, %struct.global_State** %10, align 8
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 0
  %25 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %24, align 8
  %26 = load %struct.global_State*, %struct.global_State** %10, align 8
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i8* %25(i8* %28, i8* %29, i64 %30, i64 %31)
  store i8* %32, i8** %5, align 8
  br label %34

; <label>:33:                                     ; preds = %4
  store i8* null, i8** %5, align 8
  br label %34

; <label>:34:                                     ; preds = %33, %21
  %35 = load i8*, i8** %5, align 8
  ret i8* %35
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i8* @luaM_saferealloc_(%struct.lua_State*, i8*, i64, i64) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i8* @luaM_realloc_(%struct.lua_State* %10, i8* %11, i64 %12, i64 %13)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = icmp ugt i64 %18, 0
  br label %20

; <label>:20:                                     ; preds = %17, %4
  %21 = phi i1 [ false, %4 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %20
  %28 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaD_throw(%struct.lua_State* %28, i32 4) #4
  unreachable

; <label>:29:                                     ; preds = %20
  %30 = load i8*, i8** %9, align 8
  ret i8* %30
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.global_State*, align 8
  %9 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %3
  store i8* null, i8** %4, align 8
  br label %52

; <label>:13:                                     ; preds = %3
  %14 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 7
  %16 = load %struct.global_State*, %struct.global_State** %15, align 8
  store %struct.global_State* %16, %struct.global_State** %8, align 8
  %17 = load %struct.global_State*, %struct.global_State** %8, align 8
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i32 0, i32 0
  %19 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %18, align 8
  %20 = load %struct.global_State*, %struct.global_State** %8, align 8
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %6, align 8
  %26 = call i8* %19(i8* %22, i8* null, i64 %24, i64 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp eq i8* %27, null
  %29 = zext i1 %28 to i32
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

; <label>:34:                                     ; preds = %13
  %35 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %6, align 8
  %39 = call i8* @tryagain(%struct.lua_State* %35, i8* null, i64 %37, i64 %38)
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %34
  %43 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaD_throw(%struct.lua_State* %43, i32 4) #4
  unreachable

; <label>:44:                                     ; preds = %34
  br label %45

; <label>:45:                                     ; preds = %44, %13
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.global_State*, %struct.global_State** %8, align 8
  %48 = getelementptr inbounds %struct.global_State, %struct.global_State* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load i8*, i8** %9, align 8
  store i8* %51, i8** %4, align 8
  br label %52

; <label>:52:                                     ; preds = %45, %12
  %53 = load i8*, i8** %4, align 8
  ret i8* %53
}

declare hidden void @luaC_fullgc(%struct.lua_State*, i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
