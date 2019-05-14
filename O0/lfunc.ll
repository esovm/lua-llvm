; ModuleID = 'lfunc.c'
source_filename = "lfunc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.TValue] }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, {}*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
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
%union.GCUnion = type { %struct.lua_State }
%union.Closure = type { %struct.CClosure }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"attempt to close non-closable variable '%s'\00", align 1

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
  %9 = mul nsw i32 16, %8
  %10 = add nsw i32 32, %9
  %11 = sext i32 %10 to i64
  %12 = call %struct.GCObject* @luaC_newobj(%struct.lua_State* %7, i32 54, i64 %11)
  store %struct.GCObject* %12, %struct.GCObject** %5, align 8
  %13 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %14 = bitcast %struct.GCObject* %13 to %union.GCUnion*
  %15 = bitcast %union.GCUnion* %14 to %union.Closure*
  %16 = bitcast %union.Closure* %15 to %struct.CClosure*
  store %struct.CClosure* %16, %struct.CClosure** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = trunc i32 %17 to i8
  %19 = load %struct.CClosure*, %struct.CClosure** %6, align 8
  %20 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %19, i32 0, i32 3
  store i8 %18, i8* %20, align 2
  %21 = load %struct.CClosure*, %struct.CClosure** %6, align 8
  ret %struct.CClosure* %21
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
  %9 = mul nsw i32 8, %8
  %10 = add nsw i32 32, %9
  %11 = sext i32 %10 to i64
  %12 = call %struct.GCObject* @luaC_newobj(%struct.lua_State* %7, i32 22, i64 %11)
  store %struct.GCObject* %12, %struct.GCObject** %5, align 8
  %13 = load %struct.GCObject*, %struct.GCObject** %5, align 8
  %14 = bitcast %struct.GCObject* %13 to %union.GCUnion*
  %15 = bitcast %union.GCUnion* %14 to %union.Closure*
  %16 = bitcast %union.Closure* %15 to %struct.LClosure*
  store %struct.LClosure* %16, %struct.LClosure** %6, align 8
  %17 = load %struct.LClosure*, %struct.LClosure** %6, align 8
  %18 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %17, i32 0, i32 5
  store %struct.Proto* null, %struct.Proto** %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = trunc i32 %19 to i8
  %21 = load %struct.LClosure*, %struct.LClosure** %6, align 8
  %22 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %21, i32 0, i32 3
  store i8 %20, i8* %22, align 2
  br label %23

; <label>:23:                                     ; preds = %27, %2
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %4, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %33

; <label>:27:                                     ; preds = %23
  %28 = load %struct.LClosure*, %struct.LClosure** %6, align 8
  %29 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %28, i32 0, i32 6
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %29, i64 0, i64 %31
  store %struct.UpVal* null, %struct.UpVal** %32, align 8
  br label %23

; <label>:33:                                     ; preds = %23
  %34 = load %struct.LClosure*, %struct.LClosure** %6, align 8
  ret %struct.LClosure* %34
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaF_initupvals(%struct.lua_State*, %struct.LClosure*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.LClosure*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.GCObject*, align 8
  %7 = alloca %struct.UpVal*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.LClosure* %1, %struct.LClosure** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %59, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %11 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %10, i32 0, i32 3
  %12 = load i8, i8* %11, align 2
  %13 = zext i8 %12 to i32
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %62

; <label>:15:                                     ; preds = %8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = call %struct.GCObject* @luaC_newobj(%struct.lua_State* %16, i32 9, i64 40)
  store %struct.GCObject* %17, %struct.GCObject** %6, align 8
  %18 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  %19 = bitcast %struct.GCObject* %18 to %union.GCUnion*
  %20 = bitcast %union.GCUnion* %19 to %struct.UpVal*
  store %struct.UpVal* %20, %struct.UpVal** %7, align 8
  %21 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %22 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %21, i32 0, i32 4
  %23 = bitcast %union.anon.4* %22 to %struct.TValue*
  %24 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %25 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %24, i32 0, i32 3
  store %struct.TValue* %23, %struct.TValue** %25, align 8
  %26 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %27 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %26, i32 0, i32 3
  %28 = load %struct.TValue*, %struct.TValue** %27, align 8
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i32 0, i32 1
  store i8 0, i8* %29, align 8
  %30 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %31 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %32 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %31, i32 0, i32 6
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %32, i64 0, i64 %34
  store %struct.UpVal* %30, %struct.UpVal** %35, align 8
  %36 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %37 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %36, i32 0, i32 2
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

; <label>:42:                                     ; preds = %15
  %43 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  %44 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %43, i32 0, i32 2
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 24
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

; <label>:49:                                     ; preds = %42
  %50 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %51 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %52 = bitcast %struct.LClosure* %51 to %union.GCUnion*
  %53 = bitcast %union.GCUnion* %52 to %struct.GCObject*
  %54 = load %struct.GCObject*, %struct.GCObject** %6, align 8
  %55 = bitcast %struct.GCObject* %54 to %union.GCUnion*
  %56 = bitcast %union.GCUnion* %55 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %50, %struct.GCObject* %53, %struct.GCObject* %56)
  br label %58

; <label>:57:                                     ; preds = %42, %15
  br label %58

; <label>:58:                                     ; preds = %57, %49
  br label %59

; <label>:59:                                     ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %8

; <label>:62:                                     ; preds = %8
  ret void
}

declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.UpVal* @luaF_findupval(%struct.lua_State*, %union.StackValue*) #0 {
  %3 = alloca %struct.UpVal*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %union.StackValue*, align 8
  %6 = alloca %struct.UpVal**, align 8
  %7 = alloca %struct.UpVal*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %union.StackValue* %1, %union.StackValue** %5, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 12
  store %struct.UpVal** %9, %struct.UpVal*** %6, align 8
  br label %10

; <label>:10:                                     ; preds = %46, %2
  %11 = load %struct.UpVal**, %struct.UpVal*** %6, align 8
  %12 = load %struct.UpVal*, %struct.UpVal** %11, align 8
  store %struct.UpVal* %12, %struct.UpVal** %7, align 8
  %13 = icmp ne %struct.UpVal* %12, null
  br i1 %13, label %14, label %21

; <label>:14:                                     ; preds = %10
  %15 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %16 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %15, i32 0, i32 3
  %17 = load %struct.TValue*, %struct.TValue** %16, align 8
  %18 = bitcast %struct.TValue* %17 to %union.StackValue*
  %19 = load %union.StackValue*, %union.StackValue** %5, align 8
  %20 = icmp uge %union.StackValue* %18, %19
  br label %21

; <label>:21:                                     ; preds = %14, %10
  %22 = phi i1 [ false, %10 ], [ %20, %14 ]
  br i1 %22, label %23, label %51

; <label>:23:                                     ; preds = %21
  %24 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %25 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %24, i32 0, i32 3
  %26 = load %struct.TValue*, %struct.TValue** %25, align 8
  %27 = bitcast %struct.TValue* %26 to %union.StackValue*
  %28 = load %union.StackValue*, %union.StackValue** %5, align 8
  %29 = icmp eq %union.StackValue* %27, %28
  br i1 %29, label %30, label %46

; <label>:30:                                     ; preds = %23
  %31 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %32 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %31, i32 0, i32 2
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 7
  %37 = load %struct.global_State*, %struct.global_State** %36, align 8
  %38 = getelementptr inbounds %struct.global_State, %struct.global_State* %37, i32 0, i32 10
  %39 = load i8, i8* %38, align 4
  %40 = zext i8 %39 to i32
  %41 = xor i32 %40, 24
  %42 = and i32 %34, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

; <label>:44:                                     ; preds = %30
  %45 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  store %struct.UpVal* %45, %struct.UpVal** %3, align 8
  br label %56

; <label>:46:                                     ; preds = %30, %23
  %47 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %48 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %47, i32 0, i32 4
  %49 = bitcast %union.anon.4* %48 to %struct.anon.5*
  %50 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %49, i32 0, i32 0
  store %struct.UpVal** %50, %struct.UpVal*** %6, align 8
  br label %10

; <label>:51:                                     ; preds = %21
  %52 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %53 = load %union.StackValue*, %union.StackValue** %5, align 8
  %54 = load %struct.UpVal**, %struct.UpVal*** %6, align 8
  %55 = call %struct.UpVal* @newupval(%struct.lua_State* %52, i32 9, %union.StackValue* %53, %struct.UpVal** %54)
  store %struct.UpVal* %55, %struct.UpVal** %3, align 8
  br label %56

; <label>:56:                                     ; preds = %51, %44
  %57 = load %struct.UpVal*, %struct.UpVal** %3, align 8
  ret %struct.UpVal* %57
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.UpVal* @newupval(%struct.lua_State*, i32, %union.StackValue*, %struct.UpVal**) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.StackValue*, align 8
  %8 = alloca %struct.UpVal**, align 8
  %9 = alloca %struct.GCObject*, align 8
  %10 = alloca %struct.UpVal*, align 8
  %11 = alloca %struct.UpVal*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.StackValue* %2, %union.StackValue** %7, align 8
  store %struct.UpVal** %3, %struct.UpVal*** %8, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.GCObject* @luaC_newobj(%struct.lua_State* %12, i32 %13, i64 40)
  store %struct.GCObject* %14, %struct.GCObject** %9, align 8
  %15 = load %struct.GCObject*, %struct.GCObject** %9, align 8
  %16 = bitcast %struct.GCObject* %15 to %union.GCUnion*
  %17 = bitcast %union.GCUnion* %16 to %struct.UpVal*
  store %struct.UpVal* %17, %struct.UpVal** %10, align 8
  %18 = load %struct.UpVal**, %struct.UpVal*** %8, align 8
  %19 = load %struct.UpVal*, %struct.UpVal** %18, align 8
  store %struct.UpVal* %19, %struct.UpVal** %11, align 8
  %20 = load %union.StackValue*, %union.StackValue** %7, align 8
  %21 = bitcast %union.StackValue* %20 to %struct.TValue*
  %22 = load %struct.UpVal*, %struct.UpVal** %10, align 8
  %23 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %22, i32 0, i32 3
  store %struct.TValue* %21, %struct.TValue** %23, align 8
  %24 = load %struct.UpVal*, %struct.UpVal** %11, align 8
  %25 = load %struct.UpVal*, %struct.UpVal** %10, align 8
  %26 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %25, i32 0, i32 4
  %27 = bitcast %union.anon.4* %26 to %struct.anon.5*
  %28 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %27, i32 0, i32 0
  store %struct.UpVal* %24, %struct.UpVal** %28, align 8
  %29 = load %struct.UpVal**, %struct.UpVal*** %8, align 8
  %30 = load %struct.UpVal*, %struct.UpVal** %10, align 8
  %31 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %30, i32 0, i32 4
  %32 = bitcast %union.anon.4* %31 to %struct.anon.5*
  %33 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %32, i32 0, i32 1
  store %struct.UpVal** %29, %struct.UpVal*** %33, align 8
  %34 = load %struct.UpVal*, %struct.UpVal** %11, align 8
  %35 = icmp ne %struct.UpVal* %34, null
  br i1 %35, label %36, label %45

; <label>:36:                                     ; preds = %4
  %37 = load %struct.UpVal*, %struct.UpVal** %10, align 8
  %38 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %37, i32 0, i32 4
  %39 = bitcast %union.anon.4* %38 to %struct.anon.5*
  %40 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %39, i32 0, i32 0
  %41 = load %struct.UpVal*, %struct.UpVal** %11, align 8
  %42 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %41, i32 0, i32 4
  %43 = bitcast %union.anon.4* %42 to %struct.anon.5*
  %44 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %43, i32 0, i32 1
  store %struct.UpVal** %40, %struct.UpVal*** %44, align 8
  br label %45

; <label>:45:                                     ; preds = %36, %4
  %46 = load %struct.UpVal*, %struct.UpVal** %10, align 8
  %47 = load %struct.UpVal**, %struct.UpVal*** %8, align 8
  store %struct.UpVal* %46, %struct.UpVal** %47, align 8
  %48 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %49 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %48, i32 0, i32 14
  %50 = load %struct.lua_State*, %struct.lua_State** %49, align 8
  %51 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %52 = icmp ne %struct.lua_State* %50, %51
  br i1 %52, label %66, label %53

; <label>:53:                                     ; preds = %45
  %54 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %54, i32 0, i32 7
  %56 = load %struct.global_State*, %struct.global_State** %55, align 8
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %56, i32 0, i32 36
  %58 = load %struct.lua_State*, %struct.lua_State** %57, align 8
  %59 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %59, i32 0, i32 14
  store %struct.lua_State* %58, %struct.lua_State** %60, align 8
  %61 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %62 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %62, i32 0, i32 7
  %64 = load %struct.global_State*, %struct.global_State** %63, align 8
  %65 = getelementptr inbounds %struct.global_State, %struct.global_State* %64, i32 0, i32 36
  store %struct.lua_State* %61, %struct.lua_State** %65, align 8
  br label %66

; <label>:66:                                     ; preds = %53, %45
  %67 = load %struct.UpVal*, %struct.UpVal** %10, align 8
  ret %struct.UpVal* %67
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaF_newtbcupval(%struct.lua_State*, %union.StackValue*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %union.StackValue*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %union.StackValue* %1, %union.StackValue** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load %union.StackValue*, %union.StackValue** %4, align 8
  %8 = bitcast %union.StackValue* %7 to i8*
  %9 = call i32 @luaD_rawrunprotected(%struct.lua_State* %6, void (%struct.lua_State*, i8*)* @trynewtbcupval, i8* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

; <label>:17:                                     ; preds = %2
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = load %union.StackValue*, %union.StackValue** %4, align 8
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 1
  call void @luaD_seterrorobj(%struct.lua_State* %18, i32 4, %union.StackValue* %20)
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = load %union.StackValue*, %union.StackValue** %4, align 8
  %23 = bitcast %union.StackValue* %22 to %struct.TValue*
  %24 = load %union.StackValue*, %union.StackValue** %4, align 8
  %25 = getelementptr inbounds %union.StackValue, %union.StackValue* %24, i64 1
  %26 = bitcast %union.StackValue* %25 to %struct.TValue*
  %27 = call i32 @prepclosingmethod(%struct.lua_State* %21, %struct.TValue* %23, %struct.TValue* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %17
  %30 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @callclose(%struct.lua_State* %30, i8* null)
  br label %31

; <label>:31:                                     ; preds = %29, %17
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaD_throw(%struct.lua_State* %32, i32 4) #4
  unreachable

; <label>:33:                                     ; preds = %2
  ret void
}

declare hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trynewtbcupval(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %union.StackValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %union.StackValue*
  store %union.StackValue* %7, %union.StackValue** %5, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load %union.StackValue*, %union.StackValue** %5, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 12
  %12 = call %struct.UpVal* @newupval(%struct.lua_State* %8, i32 25, %union.StackValue* %9, %struct.UpVal** %11)
  ret void
}

declare hidden void @luaD_seterrorobj(%struct.lua_State*, i32, %union.StackValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepclosingmethod(%struct.lua_State*, %struct.TValue*, %struct.TValue*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %union.StackValue*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca %struct.TValue*, align 8
  %12 = alloca %struct.TValue*, align 8
  %13 = alloca %struct.TValue*, align 8
  %14 = alloca %struct.TValue*, align 8
  %15 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.TValue* %1, %struct.TValue** %6, align 8
  store %struct.TValue* %2, %struct.TValue** %7, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 6
  %18 = load %union.StackValue*, %union.StackValue** %17, align 8
  store %union.StackValue* %18, %union.StackValue** %8, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %20 = load %struct.TValue*, %struct.TValue** %6, align 8
  %21 = call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %19, %struct.TValue* %20, i32 24)
  store %struct.TValue* %21, %struct.TValue** %9, align 8
  %22 = load %struct.TValue*, %struct.TValue** %9, align 8
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %22, i32 0, i32 1
  %24 = load i8, i8* %23, align 8
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %3
  store i32 0, i32* %4, align 4
  br label %81

; <label>:29:                                     ; preds = %3
  %30 = load %union.StackValue*, %union.StackValue** %8, align 8
  %31 = bitcast %union.StackValue* %30 to %struct.TValue*
  store %struct.TValue* %31, %struct.TValue** %10, align 8
  %32 = load %struct.TValue*, %struct.TValue** %9, align 8
  store %struct.TValue* %32, %struct.TValue** %11, align 8
  %33 = load %struct.TValue*, %struct.TValue** %10, align 8
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i32 0, i32 0
  %35 = load %struct.TValue*, %struct.TValue** %11, align 8
  %36 = getelementptr inbounds %struct.TValue, %struct.TValue* %35, i32 0, i32 0
  %37 = bitcast %union.Value* %34 to i8*
  %38 = bitcast %union.Value* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 8, i32 8, i1 false)
  %39 = load %struct.TValue*, %struct.TValue** %11, align 8
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %39, i32 0, i32 1
  %41 = load i8, i8* %40, align 8
  %42 = load %struct.TValue*, %struct.TValue** %10, align 8
  %43 = getelementptr inbounds %struct.TValue, %struct.TValue* %42, i32 0, i32 1
  store i8 %41, i8* %43, align 8
  %44 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %45 = load %union.StackValue*, %union.StackValue** %8, align 8
  %46 = getelementptr inbounds %union.StackValue, %union.StackValue* %45, i64 1
  %47 = bitcast %union.StackValue* %46 to %struct.TValue*
  store %struct.TValue* %47, %struct.TValue** %12, align 8
  %48 = load %struct.TValue*, %struct.TValue** %6, align 8
  store %struct.TValue* %48, %struct.TValue** %13, align 8
  %49 = load %struct.TValue*, %struct.TValue** %12, align 8
  %50 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i32 0, i32 0
  %51 = load %struct.TValue*, %struct.TValue** %13, align 8
  %52 = getelementptr inbounds %struct.TValue, %struct.TValue* %51, i32 0, i32 0
  %53 = bitcast %union.Value* %50 to i8*
  %54 = bitcast %union.Value* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 8, i32 8, i1 false)
  %55 = load %struct.TValue*, %struct.TValue** %13, align 8
  %56 = getelementptr inbounds %struct.TValue, %struct.TValue* %55, i32 0, i32 1
  %57 = load i8, i8* %56, align 8
  %58 = load %struct.TValue*, %struct.TValue** %12, align 8
  %59 = getelementptr inbounds %struct.TValue, %struct.TValue* %58, i32 0, i32 1
  store i8 %57, i8* %59, align 8
  %60 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %61 = load %union.StackValue*, %union.StackValue** %8, align 8
  %62 = getelementptr inbounds %union.StackValue, %union.StackValue* %61, i64 2
  %63 = bitcast %union.StackValue* %62 to %struct.TValue*
  store %struct.TValue* %63, %struct.TValue** %14, align 8
  %64 = load %struct.TValue*, %struct.TValue** %7, align 8
  store %struct.TValue* %64, %struct.TValue** %15, align 8
  %65 = load %struct.TValue*, %struct.TValue** %14, align 8
  %66 = getelementptr inbounds %struct.TValue, %struct.TValue* %65, i32 0, i32 0
  %67 = load %struct.TValue*, %struct.TValue** %15, align 8
  %68 = getelementptr inbounds %struct.TValue, %struct.TValue* %67, i32 0, i32 0
  %69 = bitcast %union.Value* %66 to i8*
  %70 = bitcast %union.Value* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 8, i32 8, i1 false)
  %71 = load %struct.TValue*, %struct.TValue** %15, align 8
  %72 = getelementptr inbounds %struct.TValue, %struct.TValue* %71, i32 0, i32 1
  %73 = load i8, i8* %72, align 8
  %74 = load %struct.TValue*, %struct.TValue** %14, align 8
  %75 = getelementptr inbounds %struct.TValue, %struct.TValue* %74, i32 0, i32 1
  store i8 %73, i8* %75, align 8
  %76 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %77 = load %union.StackValue*, %union.StackValue** %8, align 8
  %78 = getelementptr inbounds %union.StackValue, %union.StackValue* %77, i64 3
  %79 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %79, i32 0, i32 6
  store %union.StackValue* %78, %union.StackValue** %80, align 8
  store i32 1, i32* %4, align 4
  br label %81

; <label>:81:                                     ; preds = %29, %28
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callclose(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 6
  %9 = load %union.StackValue*, %union.StackValue** %8, align 8
  %10 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 -3
  call void @luaD_callnoyield(%struct.lua_State* %6, %union.StackValue* %10, i32 0)
  ret void
}

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaF_unlinkupval(%struct.UpVal*) #0 {
  %2 = alloca %struct.UpVal*, align 8
  store %struct.UpVal* %0, %struct.UpVal** %2, align 8
  %3 = load %struct.UpVal*, %struct.UpVal** %2, align 8
  %4 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %3, i32 0, i32 4
  %5 = bitcast %union.anon.4* %4 to %struct.anon.5*
  %6 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %5, i32 0, i32 0
  %7 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %8 = load %struct.UpVal*, %struct.UpVal** %2, align 8
  %9 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %8, i32 0, i32 4
  %10 = bitcast %union.anon.4* %9 to %struct.anon.5*
  %11 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %10, i32 0, i32 1
  %12 = load %struct.UpVal**, %struct.UpVal*** %11, align 8
  store %struct.UpVal* %7, %struct.UpVal** %12, align 8
  %13 = load %struct.UpVal*, %struct.UpVal** %2, align 8
  %14 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %13, i32 0, i32 4
  %15 = bitcast %union.anon.4* %14 to %struct.anon.5*
  %16 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %15, i32 0, i32 0
  %17 = load %struct.UpVal*, %struct.UpVal** %16, align 8
  %18 = icmp ne %struct.UpVal* %17, null
  br i1 %18, label %19, label %33

; <label>:19:                                     ; preds = %1
  %20 = load %struct.UpVal*, %struct.UpVal** %2, align 8
  %21 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %20, i32 0, i32 4
  %22 = bitcast %union.anon.4* %21 to %struct.anon.5*
  %23 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %22, i32 0, i32 1
  %24 = load %struct.UpVal**, %struct.UpVal*** %23, align 8
  %25 = load %struct.UpVal*, %struct.UpVal** %2, align 8
  %26 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %25, i32 0, i32 4
  %27 = bitcast %union.anon.4* %26 to %struct.anon.5*
  %28 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %27, i32 0, i32 0
  %29 = load %struct.UpVal*, %struct.UpVal** %28, align 8
  %30 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %29, i32 0, i32 4
  %31 = bitcast %union.anon.4* %30 to %struct.anon.5*
  %32 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %31, i32 0, i32 1
  store %struct.UpVal** %24, %struct.UpVal*** %32, align 8
  br label %33

; <label>:33:                                     ; preds = %19, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaF_close(%struct.lua_State*, %union.StackValue*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %union.StackValue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.UpVal*, align 8
  %8 = alloca %union.StackValue*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca %struct.TValue*, align 8
  %12 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %union.StackValue* %1, %union.StackValue** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %13

; <label>:13:                                     ; preds = %135, %3
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 12
  %16 = load %struct.UpVal*, %struct.UpVal** %15, align 8
  store %struct.UpVal* %16, %struct.UpVal** %7, align 8
  %17 = icmp ne %struct.UpVal* %16, null
  br i1 %17, label %18, label %25

; <label>:18:                                     ; preds = %13
  %19 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %20 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %19, i32 0, i32 3
  %21 = load %struct.TValue*, %struct.TValue** %20, align 8
  %22 = bitcast %struct.TValue* %21 to %union.StackValue*
  %23 = load %union.StackValue*, %union.StackValue** %5, align 8
  %24 = icmp uge %union.StackValue* %22, %23
  br label %25

; <label>:25:                                     ; preds = %18, %13
  %26 = phi i1 [ false, %13 ], [ %24, %18 ]
  br i1 %26, label %27, label %136

; <label>:27:                                     ; preds = %25
  %28 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %29 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %28, i32 0, i32 3
  %30 = load %struct.TValue*, %struct.TValue** %29, align 8
  %31 = bitcast %struct.TValue* %30 to %union.StackValue*
  store %union.StackValue* %31, %union.StackValue** %8, align 8
  %32 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %33 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %32, i32 0, i32 4
  %34 = bitcast %union.anon.4* %33 to %struct.TValue*
  store %struct.TValue* %34, %struct.TValue** %9, align 8
  %35 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  call void @luaF_unlinkupval(%struct.UpVal* %35)
  %36 = load %struct.TValue*, %struct.TValue** %9, align 8
  store %struct.TValue* %36, %struct.TValue** %10, align 8
  %37 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %38 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %37, i32 0, i32 3
  %39 = load %struct.TValue*, %struct.TValue** %38, align 8
  store %struct.TValue* %39, %struct.TValue** %11, align 8
  %40 = load %struct.TValue*, %struct.TValue** %10, align 8
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i32 0, i32 0
  %42 = load %struct.TValue*, %struct.TValue** %11, align 8
  %43 = getelementptr inbounds %struct.TValue, %struct.TValue* %42, i32 0, i32 0
  %44 = bitcast %union.Value* %41 to i8*
  %45 = bitcast %union.Value* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 8, i32 8, i1 false)
  %46 = load %struct.TValue*, %struct.TValue** %11, align 8
  %47 = getelementptr inbounds %struct.TValue, %struct.TValue* %46, i32 0, i32 1
  %48 = load i8, i8* %47, align 8
  %49 = load %struct.TValue*, %struct.TValue** %10, align 8
  %50 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i32 0, i32 1
  store i8 %48, i8* %50, align 8
  %51 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %52 = load %struct.TValue*, %struct.TValue** %9, align 8
  %53 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %54 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %53, i32 0, i32 3
  store %struct.TValue* %52, %struct.TValue** %54, align 8
  %55 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %56 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %55, i32 0, i32 2
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 24
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

; <label>:61:                                     ; preds = %27
  %62 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %63 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %62, i32 0, i32 2
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %65, 32
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %63, align 1
  br label %68

; <label>:68:                                     ; preds = %61, %27
  %69 = load %struct.TValue*, %struct.TValue** %9, align 8
  %70 = getelementptr inbounds %struct.TValue, %struct.TValue* %69, i32 0, i32 1
  %71 = load i8, i8* %70, align 8
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 64
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %101

; <label>:75:                                     ; preds = %68
  %76 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %77 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %76, i32 0, i32 2
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %79, 32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %101

; <label>:82:                                     ; preds = %75
  %83 = load %struct.TValue*, %struct.TValue** %9, align 8
  %84 = getelementptr inbounds %struct.TValue, %struct.TValue* %83, i32 0, i32 0
  %85 = bitcast %union.Value* %84 to %struct.GCObject**
  %86 = load %struct.GCObject*, %struct.GCObject** %85, align 8
  %87 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %86, i32 0, i32 2
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %89, 24
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

; <label>:92:                                     ; preds = %82
  %93 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %94 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %95 = bitcast %struct.UpVal* %94 to %union.GCUnion*
  %96 = bitcast %union.GCUnion* %95 to %struct.GCObject*
  %97 = load %struct.TValue*, %struct.TValue** %9, align 8
  %98 = getelementptr inbounds %struct.TValue, %struct.TValue* %97, i32 0, i32 0
  %99 = bitcast %union.Value* %98 to %struct.GCObject**
  %100 = load %struct.GCObject*, %struct.GCObject** %99, align 8
  call void @luaC_barrier_(%struct.lua_State* %93, %struct.GCObject* %96, %struct.GCObject* %100)
  br label %102

; <label>:101:                                    ; preds = %82, %75, %68
  br label %102

; <label>:102:                                    ; preds = %101, %92
  %103 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %104 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %103, i32 0, i32 1
  %105 = load i8, i8* %104, align 8
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %106, 25
  br i1 %107, label %108, label %135

; <label>:108:                                    ; preds = %102
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, -1
  br i1 %110, label %111, label %135

; <label>:111:                                    ; preds = %108
  %112 = load %union.StackValue*, %union.StackValue** %5, align 8
  %113 = bitcast %union.StackValue* %112 to i8*
  %114 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %115 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %114, i32 0, i32 11
  %116 = load %union.StackValue*, %union.StackValue** %115, align 8
  %117 = bitcast %union.StackValue* %116 to i8*
  %118 = ptrtoint i8* %113 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  store i64 %120, i64* %12, align 8
  %121 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %122 = load %struct.UpVal*, %struct.UpVal** %7, align 8
  %123 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %122, i32 0, i32 3
  %124 = load %struct.TValue*, %struct.TValue** %123, align 8
  %125 = load %union.StackValue*, %union.StackValue** %8, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @callclosemth(%struct.lua_State* %121, %struct.TValue* %124, %union.StackValue* %125, i32 %126)
  store i32 %127, i32* %6, align 4
  %128 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %129 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %128, i32 0, i32 11
  %130 = load %union.StackValue*, %union.StackValue** %129, align 8
  %131 = bitcast %union.StackValue* %130 to i8*
  %132 = load i64, i64* %12, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = bitcast i8* %133 to %union.StackValue*
  store %union.StackValue* %134, %union.StackValue** %5, align 8
  br label %135

; <label>:135:                                    ; preds = %111, %108, %102
  br label %13

; <label>:136:                                    ; preds = %25
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callclosemth(%struct.lua_State*, %struct.TValue*, %union.StackValue*, i32) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %union.StackValue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.TValue* %1, %struct.TValue** %6, align 8
  store %union.StackValue* %2, %union.StackValue** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %63

; <label>:19:                                     ; preds = %4
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %21 = load %struct.TValue*, %struct.TValue** %6, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 7
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i32 0, i32 8
  %26 = call i32 @prepclosingmethod(%struct.lua_State* %20, %struct.TValue* %21, %struct.TValue* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %19
  %29 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @callclose(%struct.lua_State* %29, i8* null)
  br label %62

; <label>:30:                                     ; preds = %19
  %31 = load %struct.TValue*, %struct.TValue** %6, align 8
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 8
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 15
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %61, label %37

; <label>:37:                                     ; preds = %30
  %38 = load %union.StackValue*, %union.StackValue** %7, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 8
  %41 = load %struct.CallInfo*, %struct.CallInfo** %40, align 8
  %42 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %41, i32 0, i32 0
  %43 = load %union.StackValue*, %union.StackValue** %42, align 8
  %44 = ptrtoint %union.StackValue* %38 to i64
  %45 = ptrtoint %union.StackValue* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 16
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %9, align 4
  %49 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %50 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %51 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %50, i32 0, i32 8
  %52 = load %struct.CallInfo*, %struct.CallInfo** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i8* @luaG_findlocal(%struct.lua_State* %49, %struct.CallInfo* %52, i32 %53, %union.StackValue** null)
  store i8* %54, i8** %10, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %37
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %10, align 8
  br label %58

; <label>:58:                                     ; preds = %57, %37
  %59 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %60 = load i8*, i8** %10, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %59, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i8* %60) #4
  unreachable

; <label>:61:                                     ; preds = %30
  br label %62

; <label>:62:                                     ; preds = %61, %28
  br label %91

; <label>:63:                                     ; preds = %4
  %64 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %union.StackValue*, %union.StackValue** %7, align 8
  call void @luaD_seterrorobj(%struct.lua_State* %64, i32 %65, %union.StackValue* %66)
  %67 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %68 = load %struct.TValue*, %struct.TValue** %6, align 8
  %69 = load %union.StackValue*, %union.StackValue** %7, align 8
  %70 = bitcast %union.StackValue* %69 to %struct.TValue*
  %71 = call i32 @prepclosingmethod(%struct.lua_State* %67, %struct.TValue* %68, %struct.TValue* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %90

; <label>:73:                                     ; preds = %63
  %74 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %75 = load %union.StackValue*, %union.StackValue** %7, align 8
  %76 = bitcast %union.StackValue* %75 to i8*
  %77 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %78 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %77, i32 0, i32 11
  %79 = load %union.StackValue*, %union.StackValue** %78, align 8
  %80 = bitcast %union.StackValue* %79 to i8*
  %81 = ptrtoint i8* %76 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = call i32 @luaD_pcall(%struct.lua_State* %74, void (%struct.lua_State*, i8*)* @callclose, i8* null, i64 %83, i64 0)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

; <label>:87:                                     ; preds = %73
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %8, align 4
  br label %89

; <label>:89:                                     ; preds = %87, %73
  br label %90

; <label>:90:                                     ; preds = %89, %63
  br label %91

; <label>:91:                                     ; preds = %90, %62
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.GCObject*, align 8
  %4 = alloca %struct.Proto*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call %struct.GCObject* @luaC_newobj(%struct.lua_State* %5, i32 10, i64 128)
  store %struct.GCObject* %6, %struct.GCObject** %3, align 8
  %7 = load %struct.GCObject*, %struct.GCObject** %3, align 8
  %8 = bitcast %struct.GCObject* %7 to %union.GCUnion*
  %9 = bitcast %union.GCUnion* %8 to %struct.Proto*
  store %struct.Proto* %9, %struct.Proto** %4, align 8
  %10 = load %struct.Proto*, %struct.Proto** %4, align 8
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i32 0, i32 15
  store %struct.TValue* null, %struct.TValue** %11, align 8
  %12 = load %struct.Proto*, %struct.Proto** %4, align 8
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 7
  store i32 0, i32* %13, align 4
  %14 = load %struct.Proto*, %struct.Proto** %4, align 8
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i32 0, i32 17
  store %struct.Proto** null, %struct.Proto*** %15, align 8
  %16 = load %struct.Proto*, %struct.Proto** %4, align 8
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 10
  store i32 0, i32* %17, align 8
  %18 = load %struct.Proto*, %struct.Proto** %4, align 8
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i32 0, i32 16
  store i32* null, i32** %19, align 8
  %20 = load %struct.Proto*, %struct.Proto** %4, align 8
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 8
  store i32 0, i32* %21, align 8
  %22 = load %struct.Proto*, %struct.Proto** %4, align 8
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 19
  store i8* null, i8** %23, align 8
  %24 = load %struct.Proto*, %struct.Proto** %4, align 8
  %25 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i32 0, i32 9
  store i32 0, i32* %25, align 4
  %26 = load %struct.Proto*, %struct.Proto** %4, align 8
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 20
  store %struct.AbsLineInfo* null, %struct.AbsLineInfo** %27, align 8
  %28 = load %struct.Proto*, %struct.Proto** %4, align 8
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 12
  store i32 0, i32* %29, align 8
  %30 = load %struct.Proto*, %struct.Proto** %4, align 8
  %31 = getelementptr inbounds %struct.Proto, %struct.Proto* %30, i32 0, i32 18
  store %struct.Upvaldesc* null, %struct.Upvaldesc** %31, align 8
  %32 = load %struct.Proto*, %struct.Proto** %4, align 8
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %32, i32 0, i32 6
  store i32 0, i32* %33, align 8
  %34 = load %struct.Proto*, %struct.Proto** %4, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 3
  store i8 0, i8* %35, align 2
  %36 = load %struct.Proto*, %struct.Proto** %4, align 8
  %37 = getelementptr inbounds %struct.Proto, %struct.Proto* %36, i32 0, i32 4
  store i8 0, i8* %37, align 1
  %38 = load %struct.Proto*, %struct.Proto** %4, align 8
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i32 0, i32 5
  store i8 0, i8* %39, align 4
  %40 = load %struct.Proto*, %struct.Proto** %4, align 8
  %41 = getelementptr inbounds %struct.Proto, %struct.Proto* %40, i32 0, i32 21
  store %struct.LocVar* null, %struct.LocVar** %41, align 8
  %42 = load %struct.Proto*, %struct.Proto** %4, align 8
  %43 = getelementptr inbounds %struct.Proto, %struct.Proto* %42, i32 0, i32 11
  store i32 0, i32* %43, align 4
  %44 = load %struct.Proto*, %struct.Proto** %4, align 8
  %45 = getelementptr inbounds %struct.Proto, %struct.Proto* %44, i32 0, i32 13
  store i32 0, i32* %45, align 4
  %46 = load %struct.Proto*, %struct.Proto** %4, align 8
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i32 0, i32 14
  store i32 0, i32* %47, align 8
  %48 = load %struct.Proto*, %struct.Proto** %4, align 8
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %48, i32 0, i32 22
  store %struct.TString* null, %struct.TString** %49, align 8
  %50 = load %struct.Proto*, %struct.Proto** %4, align 8
  ret %struct.Proto* %50
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaF_freeproto(%struct.lua_State*, %struct.Proto*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.Proto*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.Proto* %1, %struct.Proto** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = load %struct.Proto*, %struct.Proto** %4, align 8
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i32 0, i32 16
  %8 = load i32*, i32** %7, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = load %struct.Proto*, %struct.Proto** %4, align 8
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  call void @luaM_free_(%struct.lua_State* %5, i8* %9, i64 %14)
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = load %struct.Proto*, %struct.Proto** %4, align 8
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 17
  %18 = load %struct.Proto**, %struct.Proto*** %17, align 8
  %19 = bitcast %struct.Proto** %18 to i8*
  %20 = load %struct.Proto*, %struct.Proto** %4, align 8
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  call void @luaM_free_(%struct.lua_State* %15, i8* %19, i64 %24)
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = load %struct.Proto*, %struct.Proto** %4, align 8
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 15
  %28 = load %struct.TValue*, %struct.TValue** %27, align 8
  %29 = bitcast %struct.TValue* %28 to i8*
  %30 = load %struct.Proto*, %struct.Proto** %4, align 8
  %31 = getelementptr inbounds %struct.Proto, %struct.Proto* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 16
  call void @luaM_free_(%struct.lua_State* %25, i8* %29, i64 %34)
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = load %struct.Proto*, %struct.Proto** %4, align 8
  %37 = getelementptr inbounds %struct.Proto, %struct.Proto* %36, i32 0, i32 19
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.Proto*, %struct.Proto** %4, align 8
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 1
  call void @luaM_free_(%struct.lua_State* %35, i8* %38, i64 %43)
  %44 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %45 = load %struct.Proto*, %struct.Proto** %4, align 8
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %45, i32 0, i32 20
  %47 = load %struct.AbsLineInfo*, %struct.AbsLineInfo** %46, align 8
  %48 = bitcast %struct.AbsLineInfo* %47 to i8*
  %49 = load %struct.Proto*, %struct.Proto** %4, align 8
  %50 = getelementptr inbounds %struct.Proto, %struct.Proto* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 8
  call void @luaM_free_(%struct.lua_State* %44, i8* %48, i64 %53)
  %54 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %55 = load %struct.Proto*, %struct.Proto** %4, align 8
  %56 = getelementptr inbounds %struct.Proto, %struct.Proto* %55, i32 0, i32 21
  %57 = load %struct.LocVar*, %struct.LocVar** %56, align 8
  %58 = bitcast %struct.LocVar* %57 to i8*
  %59 = load %struct.Proto*, %struct.Proto** %4, align 8
  %60 = getelementptr inbounds %struct.Proto, %struct.Proto* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 16
  call void @luaM_free_(%struct.lua_State* %54, i8* %58, i64 %63)
  %64 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %65 = load %struct.Proto*, %struct.Proto** %4, align 8
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i32 0, i32 18
  %67 = load %struct.Upvaldesc*, %struct.Upvaldesc** %66, align 8
  %68 = bitcast %struct.Upvaldesc* %67 to i8*
  %69 = load %struct.Proto*, %struct.Proto** %4, align 8
  %70 = getelementptr inbounds %struct.Proto, %struct.Proto* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 16
  call void @luaM_free_(%struct.lua_State* %64, i8* %68, i64 %73)
  %74 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %75 = load %struct.Proto*, %struct.Proto** %4, align 8
  %76 = bitcast %struct.Proto* %75 to i8*
  call void @luaM_free_(%struct.lua_State* %74, i8* %76, i64 128)
  ret void
}

declare hidden void @luaM_free_(%struct.lua_State*, i8*, i64) #1

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
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 21
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
  %31 = getelementptr inbounds %struct.Proto, %struct.Proto* %30, i32 0, i32 21
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
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %45, i32 0, i32 21
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

declare hidden %struct.TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.TValue*, i32) #1

declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) #1

declare hidden i8* @luaG_findlocal(%struct.lua_State*, %struct.CallInfo*, i32, %union.StackValue**) #1

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #2

declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
