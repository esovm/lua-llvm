; ModuleID = 'ldo.c'
source_filename = "ldo.c"
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
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.UpVal*, %struct.UpVal** }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_longjmp = type { %struct.lua_longjmp*, [1 x %struct.__jmp_buf_tag], i32 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, %union.anon.2, i16, i16 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.2 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%union.StackValue = type { %struct.TValue }
%union.GCUnion = type { %struct.lua_State }
%struct.anon = type { i32*, i32, i32 }
%struct.anon.3 = type { i16, i16 }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.TValue] }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.SParser = type { %struct.Zio*, %struct.Mbuffer, %struct.Dyndata, i8*, i8* }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.Dyndata = type { %struct.anon.6, %struct.Labellist, %struct.Labellist }
%struct.anon.6 = type { %struct.Vardesc*, i32, i32 }
%struct.Vardesc = type { i16 }
%struct.Labellist = type { %struct.Labeldesc*, i32, i32 }
%struct.Labeldesc = type { %struct.TString*, i32, i32, i8, i8 }

@.str = private unnamed_addr constant [24 x i8] c"error in error handling\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"stack overflow\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"cannot resume non-suspended coroutine\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"cannot resume dead coroutine\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"C stack overflow\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"attempt to yield across a C-call boundary\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"attempt to yield from outside a coroutine\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"attempt to load a %s chunk (mode is '%s')\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaD_seterrorobj(%struct.lua_State*, i32, %union.StackValue*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.StackValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TString*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TString*, align 8
  %11 = alloca %struct.TValue*, align 8
  %12 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.StackValue* %2, %union.StackValue** %6, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %59 [
    i32 4, label %14
    i32 5, label %36
    i32 -2, label %55
  ]

; <label>:14:                                     ; preds = %3
  %15 = load %union.StackValue*, %union.StackValue** %6, align 8
  %16 = bitcast %union.StackValue* %15 to %struct.TValue*
  store %struct.TValue* %16, %struct.TValue** %7, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 7
  %19 = load %struct.global_State*, %struct.global_State** %18, align 8
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %19, i32 0, i32 39
  %21 = load %struct.TString*, %struct.TString** %20, align 8
  store %struct.TString* %21, %struct.TString** %8, align 8
  %22 = load %struct.TString*, %struct.TString** %8, align 8
  %23 = bitcast %struct.TString* %22 to %union.GCUnion*
  %24 = bitcast %union.GCUnion* %23 to %struct.GCObject*
  %25 = load %struct.TValue*, %struct.TValue** %7, align 8
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i32 0, i32 0
  %27 = bitcast %union.Value* %26 to %struct.GCObject**
  store %struct.GCObject* %24, %struct.GCObject** %27, align 8
  %28 = load %struct.TString*, %struct.TString** %8, align 8
  %29 = getelementptr inbounds %struct.TString, %struct.TString* %28, i32 0, i32 1
  %30 = load i8, i8* %29, align 8
  %31 = zext i8 %30 to i32
  %32 = or i32 %31, 64
  %33 = trunc i32 %32 to i8
  %34 = load %struct.TValue*, %struct.TValue** %7, align 8
  %35 = getelementptr inbounds %struct.TValue, %struct.TValue* %34, i32 0, i32 1
  store i8 %33, i8* %35, align 8
  br label %79

; <label>:36:                                     ; preds = %3
  %37 = load %union.StackValue*, %union.StackValue** %6, align 8
  %38 = bitcast %union.StackValue* %37 to %struct.TValue*
  store %struct.TValue* %38, %struct.TValue** %9, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %40 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i64 23)
  store %struct.TString* %40, %struct.TString** %10, align 8
  %41 = load %struct.TString*, %struct.TString** %10, align 8
  %42 = bitcast %struct.TString* %41 to %union.GCUnion*
  %43 = bitcast %union.GCUnion* %42 to %struct.GCObject*
  %44 = load %struct.TValue*, %struct.TValue** %9, align 8
  %45 = getelementptr inbounds %struct.TValue, %struct.TValue* %44, i32 0, i32 0
  %46 = bitcast %union.Value* %45 to %struct.GCObject**
  store %struct.GCObject* %43, %struct.GCObject** %46, align 8
  %47 = load %struct.TString*, %struct.TString** %10, align 8
  %48 = getelementptr inbounds %struct.TString, %struct.TString* %47, i32 0, i32 1
  %49 = load i8, i8* %48, align 8
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, 64
  %52 = trunc i32 %51 to i8
  %53 = load %struct.TValue*, %struct.TValue** %9, align 8
  %54 = getelementptr inbounds %struct.TValue, %struct.TValue* %53, i32 0, i32 1
  store i8 %52, i8* %54, align 8
  br label %79

; <label>:55:                                     ; preds = %3
  %56 = load %union.StackValue*, %union.StackValue** %6, align 8
  %57 = bitcast %union.StackValue* %56 to %struct.TValue*
  %58 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i32 0, i32 1
  store i8 0, i8* %58, align 8
  br label %79

; <label>:59:                                     ; preds = %3
  %60 = load %union.StackValue*, %union.StackValue** %6, align 8
  %61 = bitcast %union.StackValue* %60 to %struct.TValue*
  store %struct.TValue* %61, %struct.TValue** %11, align 8
  %62 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %62, i32 0, i32 6
  %64 = load %union.StackValue*, %union.StackValue** %63, align 8
  %65 = getelementptr inbounds %union.StackValue, %union.StackValue* %64, i64 -1
  %66 = bitcast %union.StackValue* %65 to %struct.TValue*
  store %struct.TValue* %66, %struct.TValue** %12, align 8
  %67 = load %struct.TValue*, %struct.TValue** %11, align 8
  %68 = getelementptr inbounds %struct.TValue, %struct.TValue* %67, i32 0, i32 0
  %69 = load %struct.TValue*, %struct.TValue** %12, align 8
  %70 = getelementptr inbounds %struct.TValue, %struct.TValue* %69, i32 0, i32 0
  %71 = bitcast %union.Value* %68 to i8*
  %72 = bitcast %union.Value* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 8, i32 8, i1 false)
  %73 = load %struct.TValue*, %struct.TValue** %12, align 8
  %74 = getelementptr inbounds %struct.TValue, %struct.TValue* %73, i32 0, i32 1
  %75 = load i8, i8* %74, align 8
  %76 = load %struct.TValue*, %struct.TValue** %11, align 8
  %77 = getelementptr inbounds %struct.TValue, %struct.TValue* %76, i32 0, i32 1
  store i8 %75, i8* %77, align 8
  %78 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  br label %79

; <label>:79:                                     ; preds = %59, %55, %36, %14
  %80 = load %union.StackValue*, %union.StackValue** %6, align 8
  %81 = getelementptr inbounds %union.StackValue, %union.StackValue* %80, i64 1
  %82 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %83 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %82, i32 0, i32 6
  store %union.StackValue* %81, %union.StackValue** %83, align 8
  ret void
}

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaD_throw(%struct.lua_State*, i32) #3 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.global_State*, align 8
  %6 = alloca %struct.TValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 15
  %10 = load %struct.lua_longjmp*, %struct.lua_longjmp** %9, align 8
  %11 = icmp ne %struct.lua_longjmp* %10, null
  br i1 %11, label %12, label %23

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 15
  %16 = load %struct.lua_longjmp*, %struct.lua_longjmp** %15, align 8
  %17 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %16, i32 0, i32 2
  store volatile i32 %13, i32* %17, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 15
  %20 = load %struct.lua_longjmp*, %struct.lua_longjmp** %19, align 8
  %21 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %20, i32 0, i32 1
  %22 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %21, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %22, i32 1) #8
  unreachable

; <label>:23:                                     ; preds = %2
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 7
  %26 = load %struct.global_State*, %struct.global_State** %25, align 8
  store %struct.global_State* %26, %struct.global_State** %5, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %28, i32 0, i32 11
  %30 = load %union.StackValue*, %union.StackValue** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @luaF_close(%struct.lua_State* %27, %union.StackValue* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = trunc i32 %33 to i8
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 3
  store i8 %34, i8* %36, align 2
  %37 = load %struct.global_State*, %struct.global_State** %5, align 8
  %38 = getelementptr inbounds %struct.global_State, %struct.global_State* %37, i32 0, i32 38
  %39 = load %struct.lua_State*, %struct.lua_State** %38, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 15
  %41 = load %struct.lua_longjmp*, %struct.lua_longjmp** %40, align 8
  %42 = icmp ne %struct.lua_longjmp* %41, null
  br i1 %42, label %43, label %72

; <label>:43:                                     ; preds = %23
  %44 = load %struct.global_State*, %struct.global_State** %5, align 8
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %44, i32 0, i32 38
  %46 = load %struct.lua_State*, %struct.lua_State** %45, align 8
  %47 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %46, i32 0, i32 6
  %48 = load %union.StackValue*, %union.StackValue** %47, align 8
  %49 = getelementptr inbounds %union.StackValue, %union.StackValue* %48, i32 1
  store %union.StackValue* %49, %union.StackValue** %47, align 8
  %50 = bitcast %union.StackValue* %48 to %struct.TValue*
  store %struct.TValue* %50, %struct.TValue** %6, align 8
  %51 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %52 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %51, i32 0, i32 6
  %53 = load %union.StackValue*, %union.StackValue** %52, align 8
  %54 = getelementptr inbounds %union.StackValue, %union.StackValue* %53, i64 -1
  %55 = bitcast %union.StackValue* %54 to %struct.TValue*
  store %struct.TValue* %55, %struct.TValue** %7, align 8
  %56 = load %struct.TValue*, %struct.TValue** %6, align 8
  %57 = getelementptr inbounds %struct.TValue, %struct.TValue* %56, i32 0, i32 0
  %58 = load %struct.TValue*, %struct.TValue** %7, align 8
  %59 = getelementptr inbounds %struct.TValue, %struct.TValue* %58, i32 0, i32 0
  %60 = bitcast %union.Value* %57 to i8*
  %61 = bitcast %union.Value* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 8, i32 8, i1 false)
  %62 = load %struct.TValue*, %struct.TValue** %7, align 8
  %63 = getelementptr inbounds %struct.TValue, %struct.TValue* %62, i32 0, i32 1
  %64 = load i8, i8* %63, align 8
  %65 = load %struct.TValue*, %struct.TValue** %6, align 8
  %66 = getelementptr inbounds %struct.TValue, %struct.TValue* %65, i32 0, i32 1
  store i8 %64, i8* %66, align 8
  %67 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %68 = load %struct.global_State*, %struct.global_State** %5, align 8
  %69 = getelementptr inbounds %struct.global_State, %struct.global_State* %68, i32 0, i32 38
  %70 = load %struct.lua_State*, %struct.lua_State** %69, align 8
  %71 = load i32, i32* %4, align 4
  call void @luaD_throw(%struct.lua_State* %70, i32 %71) #9
  unreachable

; <label>:72:                                     ; preds = %23
  %73 = load %struct.global_State*, %struct.global_State** %5, align 8
  %74 = getelementptr inbounds %struct.global_State, %struct.global_State* %73, i32 0, i32 37
  %75 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %74, align 8
  %76 = icmp ne i32 (%struct.lua_State*)* %75, null
  br i1 %76, label %77, label %106

; <label>:77:                                     ; preds = %72
  %78 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %80, i32 0, i32 6
  %82 = load %union.StackValue*, %union.StackValue** %81, align 8
  call void @luaD_seterrorobj(%struct.lua_State* %78, i32 %79, %union.StackValue* %82)
  %83 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %83, i32 0, i32 8
  %85 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8
  %86 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %85, i32 0, i32 1
  %87 = load %union.StackValue*, %union.StackValue** %86, align 8
  %88 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %89 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %88, i32 0, i32 6
  %90 = load %union.StackValue*, %union.StackValue** %89, align 8
  %91 = icmp ult %union.StackValue* %87, %90
  br i1 %91, label %92, label %100

; <label>:92:                                     ; preds = %77
  %93 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %94 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %93, i32 0, i32 6
  %95 = load %union.StackValue*, %union.StackValue** %94, align 8
  %96 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %97 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %96, i32 0, i32 8
  %98 = load %struct.CallInfo*, %struct.CallInfo** %97, align 8
  %99 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %98, i32 0, i32 1
  store %union.StackValue* %95, %union.StackValue** %99, align 8
  br label %100

; <label>:100:                                    ; preds = %92, %77
  %101 = load %struct.global_State*, %struct.global_State** %5, align 8
  %102 = getelementptr inbounds %struct.global_State, %struct.global_State* %101, i32 0, i32 37
  %103 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %102, align 8
  %104 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %105 = call i32 %103(%struct.lua_State* %104)
  br label %106

; <label>:106:                                    ; preds = %100, %72
  call void @abort() #8
  unreachable
                                                  ; No predecessors!
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @longjmp(%struct.__jmp_buf_tag*, i32) #4

declare hidden i32 @luaF_close(%struct.lua_State*, %union.StackValue*, i32) #1

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca void (%struct.lua_State*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lua_longjmp, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store void (%struct.lua_State*, i8*)* %1, void (%struct.lua_State*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 19
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 5
  %14 = load i16, i16* %13, align 4
  %15 = zext i16 %14 to i32
  %16 = sub i32 %11, %15
  store i32 %16, i32* %7, align 4
  %17 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %8, i32 0, i32 2
  store volatile i32 0, i32* %17, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 15
  %20 = load %struct.lua_longjmp*, %struct.lua_longjmp** %19, align 8
  %21 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %8, i32 0, i32 0
  store %struct.lua_longjmp* %20, %struct.lua_longjmp** %21, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 15
  store %struct.lua_longjmp* %8, %struct.lua_longjmp** %23, align 8
  %24 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %8, i32 0, i32 1
  %25 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %24, i32 0, i32 0
  %26 = call i32 @_setjmp(%struct.__jmp_buf_tag* %25) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

; <label>:28:                                     ; preds = %3
  %29 = load void (%struct.lua_State*, i8*)*, void (%struct.lua_State*, i8*)** %5, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %31 = load i8*, i8** %6, align 8
  call void %29(%struct.lua_State* %30, i8* %31)
  br label %32

; <label>:32:                                     ; preds = %28, %3
  %33 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %8, i32 0, i32 0
  %34 = load %struct.lua_longjmp*, %struct.lua_longjmp** %33, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 15
  store %struct.lua_longjmp* %34, %struct.lua_longjmp** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 5
  %40 = load i16, i16* %39, align 4
  %41 = zext i16 %40 to i32
  %42 = add i32 %37, %41
  %43 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 19
  store i32 %42, i32* %44, align 8
  %45 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %8, i32 0, i32 2
  %46 = load volatile i32, i32* %45, align 8
  ret i32 %46
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #5

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaD_reallocstack(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.StackValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 20
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 11
  %16 = load %union.StackValue*, %union.StackValue** %15, align 8
  %17 = bitcast %union.StackValue* %16 to i8*
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 16
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 16
  %24 = call i8* @luaM_realloc_(%struct.lua_State* %13, i8* %17, i64 %20, i64 %23)
  %25 = bitcast i8* %24 to %union.StackValue*
  store %union.StackValue* %25, %union.StackValue** %9, align 8
  %26 = load %union.StackValue*, %union.StackValue** %9, align 8
  %27 = icmp eq %union.StackValue* %26, null
  %28 = zext i1 %27 to i32
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

; <label>:33:                                     ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

; <label>:36:                                     ; preds = %33
  %37 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaD_throw(%struct.lua_State* %37, i32 4) #9
  unreachable

; <label>:38:                                     ; preds = %33
  store i32 0, i32* %4, align 4
  br label %75

; <label>:39:                                     ; preds = %3
  br label %40

; <label>:40:                                     ; preds = %51, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %54

; <label>:44:                                     ; preds = %40
  %45 = load %union.StackValue*, %union.StackValue** %9, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %union.StackValue, %union.StackValue* %45, i64 %47
  %49 = bitcast %union.StackValue* %48 to %struct.TValue*
  %50 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i32 0, i32 1
  store i8 0, i8* %50, align 8
  br label %51

; <label>:51:                                     ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %40

; <label>:54:                                     ; preds = %40
  %55 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %56 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %56, i32 0, i32 11
  %58 = load %union.StackValue*, %union.StackValue** %57, align 8
  %59 = load %union.StackValue*, %union.StackValue** %9, align 8
  call void @correctstack(%struct.lua_State* %55, %union.StackValue* %58, %union.StackValue* %59)
  %60 = load %union.StackValue*, %union.StackValue** %9, align 8
  %61 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %61, i32 0, i32 11
  store %union.StackValue* %60, %union.StackValue** %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %64, i32 0, i32 20
  store i32 %63, i32* %65, align 4
  %66 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %66, i32 0, i32 11
  %68 = load %union.StackValue*, %union.StackValue** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %union.StackValue, %union.StackValue* %68, i64 %70
  %72 = getelementptr inbounds %union.StackValue, %union.StackValue* %71, i64 -5
  %73 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %73, i32 0, i32 10
  store %union.StackValue* %72, %union.StackValue** %74, align 8
  store i32 1, i32* %4, align 4
  br label %75

; <label>:75:                                     ; preds = %54, %38
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @correctstack(%struct.lua_State*, %union.StackValue*, %union.StackValue*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %union.StackValue*, align 8
  %6 = alloca %union.StackValue*, align 8
  %7 = alloca %struct.CallInfo*, align 8
  %8 = alloca %struct.UpVal*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %union.StackValue* %1, %union.StackValue** %5, align 8
  store %union.StackValue* %2, %union.StackValue** %6, align 8
  %9 = load %union.StackValue*, %union.StackValue** %5, align 8
  %10 = load %union.StackValue*, %union.StackValue** %6, align 8
  %11 = icmp eq %union.StackValue* %9, %10
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %3
  br label %101

; <label>:13:                                     ; preds = %3
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 6
  %16 = load %union.StackValue*, %union.StackValue** %15, align 8
  %17 = load %union.StackValue*, %union.StackValue** %5, align 8
  %18 = ptrtoint %union.StackValue* %16 to i64
  %19 = ptrtoint %union.StackValue* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 16
  %22 = load %union.StackValue*, %union.StackValue** %6, align 8
  %23 = getelementptr inbounds %union.StackValue, %union.StackValue* %22, i64 %21
  %24 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 6
  store %union.StackValue* %23, %union.StackValue** %25, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 12
  %28 = load %struct.UpVal*, %struct.UpVal** %27, align 8
  store %struct.UpVal* %28, %struct.UpVal** %8, align 8
  br label %29

; <label>:29:                                     ; preds = %47, %13
  %30 = load %struct.UpVal*, %struct.UpVal** %8, align 8
  %31 = icmp ne %struct.UpVal* %30, null
  br i1 %31, label %32, label %53

; <label>:32:                                     ; preds = %29
  %33 = load %struct.UpVal*, %struct.UpVal** %8, align 8
  %34 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %33, i32 0, i32 3
  %35 = load %struct.TValue*, %struct.TValue** %34, align 8
  %36 = bitcast %struct.TValue* %35 to %union.StackValue*
  %37 = load %union.StackValue*, %union.StackValue** %5, align 8
  %38 = ptrtoint %union.StackValue* %36 to i64
  %39 = ptrtoint %union.StackValue* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 16
  %42 = load %union.StackValue*, %union.StackValue** %6, align 8
  %43 = getelementptr inbounds %union.StackValue, %union.StackValue* %42, i64 %41
  %44 = bitcast %union.StackValue* %43 to %struct.TValue*
  %45 = load %struct.UpVal*, %struct.UpVal** %8, align 8
  %46 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %45, i32 0, i32 3
  store %struct.TValue* %44, %struct.TValue** %46, align 8
  br label %47

; <label>:47:                                     ; preds = %32
  %48 = load %struct.UpVal*, %struct.UpVal** %8, align 8
  %49 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %48, i32 0, i32 4
  %50 = bitcast %union.anon.4* %49 to %struct.anon.5*
  %51 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %50, i32 0, i32 0
  %52 = load %struct.UpVal*, %struct.UpVal** %51, align 8
  store %struct.UpVal* %52, %struct.UpVal** %8, align 8
  br label %29

; <label>:53:                                     ; preds = %29
  %54 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %54, i32 0, i32 8
  %56 = load %struct.CallInfo*, %struct.CallInfo** %55, align 8
  store %struct.CallInfo* %56, %struct.CallInfo** %7, align 8
  br label %57

; <label>:57:                                     ; preds = %97, %53
  %58 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %59 = icmp ne %struct.CallInfo* %58, null
  br i1 %59, label %60, label %101

; <label>:60:                                     ; preds = %57
  %61 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %62 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %61, i32 0, i32 1
  %63 = load %union.StackValue*, %union.StackValue** %62, align 8
  %64 = load %union.StackValue*, %union.StackValue** %5, align 8
  %65 = ptrtoint %union.StackValue* %63 to i64
  %66 = ptrtoint %union.StackValue* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 16
  %69 = load %union.StackValue*, %union.StackValue** %6, align 8
  %70 = getelementptr inbounds %union.StackValue, %union.StackValue* %69, i64 %68
  %71 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %72 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %71, i32 0, i32 1
  store %union.StackValue* %70, %union.StackValue** %72, align 8
  %73 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %74 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %73, i32 0, i32 0
  %75 = load %union.StackValue*, %union.StackValue** %74, align 8
  %76 = load %union.StackValue*, %union.StackValue** %5, align 8
  %77 = ptrtoint %union.StackValue* %75 to i64
  %78 = ptrtoint %union.StackValue* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 16
  %81 = load %union.StackValue*, %union.StackValue** %6, align 8
  %82 = getelementptr inbounds %union.StackValue, %union.StackValue* %81, i64 %80
  %83 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %84 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %83, i32 0, i32 0
  store %union.StackValue* %82, %union.StackValue** %84, align 8
  %85 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %86 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %85, i32 0, i32 7
  %87 = load i16, i16* %86, align 2
  %88 = zext i16 %87 to i32
  %89 = and i32 %88, 2
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

; <label>:91:                                     ; preds = %60
  %92 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %93 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %92, i32 0, i32 4
  %94 = bitcast %union.anon.0* %93 to %struct.anon*
  %95 = getelementptr inbounds %struct.anon, %struct.anon* %94, i32 0, i32 1
  store i32 1, i32* %95, align 8
  br label %96

; <label>:96:                                     ; preds = %91, %60
  br label %97

; <label>:97:                                     ; preds = %96
  %98 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %99 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %98, i32 0, i32 2
  %100 = load %struct.CallInfo*, %struct.CallInfo** %99, align 8
  store %struct.CallInfo* %100, %struct.CallInfo** %7, align 8
  br label %57

; <label>:101:                                    ; preds = %12, %57
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaD_growstack(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 20
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = mul nsw i32 2, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %16, 1000000
  %18 = zext i1 %17 to i32
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

; <label>:23:                                     ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %23
  %27 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaD_throw(%struct.lua_State* %27, i32 5) #9
  unreachable

; <label>:28:                                     ; preds = %23
  store i32 0, i32* %4, align 4
  br label %76

; <label>:29:                                     ; preds = %3
  %30 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %30, i32 0, i32 6
  %32 = load %union.StackValue*, %union.StackValue** %31, align 8
  %33 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %33, i32 0, i32 11
  %35 = load %union.StackValue*, %union.StackValue** %34, align 8
  %36 = ptrtoint %union.StackValue* %32 to i64
  %37 = ptrtoint %union.StackValue* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 16
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %40, %41
  %43 = add nsw i32 %42, 5
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %44, 1000000
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %29
  store i32 1000000, i32* %9, align 4
  br label %47

; <label>:47:                                     ; preds = %46, %29
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %53

; <label>:51:                                     ; preds = %47
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %9, align 4
  br label %53

; <label>:53:                                     ; preds = %51, %47
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 1000000
  %56 = zext i1 %55 to i32
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

; <label>:61:                                     ; preds = %53
  %62 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @luaD_reallocstack(%struct.lua_State* %62, i32 1000200, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

; <label>:67:                                     ; preds = %61
  %68 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #9
  unreachable

; <label>:69:                                     ; preds = %61
  store i32 0, i32* %4, align 4
  br label %76

; <label>:70:                                     ; preds = %53
  br label %71

; <label>:71:                                     ; preds = %70
  %72 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @luaD_reallocstack(%struct.lua_State* %72, i32 %73, i32 %74)
  store i32 %75, i32* %4, align 4
  br label %76

; <label>:76:                                     ; preds = %71, %69, %28
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaD_shrinkstack(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i32 @stackinuse(%struct.lua_State* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = sdiv i32 %8, 8
  %10 = add nsw i32 %7, %9
  %11 = add nsw i32 %10, 10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 1000000
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %1
  store i32 1000000, i32* %4, align 4
  br label %15

; <label>:15:                                     ; preds = %14, %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 %16, 999995
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 20
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %28

; <label>:24:                                     ; preds = %18
  %25 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @luaD_reallocstack(%struct.lua_State* %25, i32 %26, i32 0)
  br label %29

; <label>:28:                                     ; preds = %18, %15
  br label %29

; <label>:29:                                     ; preds = %28, %24
  %30 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaE_shrinkCI(%struct.lua_State* %30)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stackinuse(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.CallInfo*, align 8
  %4 = alloca %union.StackValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 6
  %7 = load %union.StackValue*, %union.StackValue** %6, align 8
  store %union.StackValue* %7, %union.StackValue** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 8
  %10 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  store %struct.CallInfo* %10, %struct.CallInfo** %3, align 8
  br label %11

; <label>:11:                                     ; preds = %25, %1
  %12 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %13 = icmp ne %struct.CallInfo* %12, null
  br i1 %13, label %14, label %29

; <label>:14:                                     ; preds = %11
  %15 = load %union.StackValue*, %union.StackValue** %4, align 8
  %16 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %17 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %16, i32 0, i32 1
  %18 = load %union.StackValue*, %union.StackValue** %17, align 8
  %19 = icmp ult %union.StackValue* %15, %18
  br i1 %19, label %20, label %24

; <label>:20:                                     ; preds = %14
  %21 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %22 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %21, i32 0, i32 1
  %23 = load %union.StackValue*, %union.StackValue** %22, align 8
  store %union.StackValue* %23, %union.StackValue** %4, align 8
  br label %24

; <label>:24:                                     ; preds = %20, %14
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %27 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %26, i32 0, i32 2
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8
  store %struct.CallInfo* %28, %struct.CallInfo** %3, align 8
  br label %11

; <label>:29:                                     ; preds = %11
  %30 = load %union.StackValue*, %union.StackValue** %4, align 8
  %31 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 11
  %33 = load %union.StackValue*, %union.StackValue** %32, align 8
  %34 = ptrtoint %union.StackValue* %30 to i64
  %35 = ptrtoint %union.StackValue* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 16
  %38 = trunc i64 %37 to i32
  %39 = add nsw i32 %38, 1
  ret i32 %39
}

declare hidden void @luaE_shrinkCI(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaD_inctop(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 10
  %5 = load %union.StackValue*, %union.StackValue** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 6
  %8 = load %union.StackValue*, %union.StackValue** %7, align 8
  %9 = ptrtoint %union.StackValue* %5 to i64
  %10 = ptrtoint %union.StackValue* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 16
  %13 = icmp sle i64 %12, 1
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %1
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = call i32 @luaD_growstack(%struct.lua_State* %15, i32 1, i32 1)
  br label %18

; <label>:17:                                     ; preds = %1
  br label %18

; <label>:18:                                     ; preds = %17, %14
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 6
  %21 = load %union.StackValue*, %union.StackValue** %20, align 8
  %22 = getelementptr inbounds %union.StackValue, %union.StackValue* %21, i32 1
  store %union.StackValue* %22, %union.StackValue** %20, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaD_hook(%struct.lua_State*, i32, i32, i32, i32) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca void (%struct.lua_State*, %struct.lua_Debug*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.CallInfo*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.lua_Debug, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 17
  %19 = load volatile void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %18, align 8
  store void (%struct.lua_State*, %struct.lua_Debug*)* %19, void (%struct.lua_State*, %struct.lua_Debug*)** %11, align 8
  %20 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %11, align 8
  %21 = icmp ne void (%struct.lua_State*, %struct.lua_Debug*)* %20, null
  br i1 %21, label %22, label %149

; <label>:22:                                     ; preds = %5
  %23 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 4
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %149

; <label>:28:                                     ; preds = %22
  store i32 4, i32* %12, align 4
  %29 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 8
  %31 = load %struct.CallInfo*, %struct.CallInfo** %30, align 8
  store %struct.CallInfo* %31, %struct.CallInfo** %13, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 6
  %34 = load %union.StackValue*, %union.StackValue** %33, align 8
  %35 = bitcast %union.StackValue* %34 to i8*
  %36 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 11
  %38 = load %union.StackValue*, %union.StackValue** %37, align 8
  %39 = bitcast %union.StackValue* %38 to i8*
  %40 = ptrtoint i8* %35 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  store i64 %42, i64* %14, align 8
  %43 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i32 0, i32 1
  %45 = load %union.StackValue*, %union.StackValue** %44, align 8
  %46 = bitcast %union.StackValue* %45 to i8*
  %47 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 11
  %49 = load %union.StackValue*, %union.StackValue** %48, align 8
  %50 = bitcast %union.StackValue* %49 to i8*
  %51 = ptrtoint i8* %46 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  store i64 %53, i64* %15, align 8
  %54 = load i32, i32* %7, align 4
  %55 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %16, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %16, i32 0, i32 6
  store i32 %56, i32* %57, align 8
  %58 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  %59 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %16, i32 0, i32 16
  store %struct.CallInfo* %58, %struct.CallInfo** %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

; <label>:62:                                     ; preds = %28
  %63 = load i32, i32* %12, align 4
  %64 = or i32 %63, 128
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %9, align 4
  %66 = trunc i32 %65 to i16
  %67 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  %68 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %67, i32 0, i32 5
  %69 = bitcast %union.anon.2* %68 to %struct.anon.3*
  %70 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %69, i32 0, i32 0
  store i16 %66, i16* %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = trunc i32 %71 to i16
  %73 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  %74 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %73, i32 0, i32 5
  %75 = bitcast %union.anon.2* %74 to %struct.anon.3*
  %76 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %75, i32 0, i32 1
  store i16 %72, i16* %76, align 2
  br label %77

; <label>:77:                                     ; preds = %62, %28
  %78 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %78, i32 0, i32 10
  %80 = load %union.StackValue*, %union.StackValue** %79, align 8
  %81 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %82 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %81, i32 0, i32 6
  %83 = load %union.StackValue*, %union.StackValue** %82, align 8
  %84 = ptrtoint %union.StackValue* %80 to i64
  %85 = ptrtoint %union.StackValue* %83 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 16
  %88 = icmp sle i64 %87, 20
  br i1 %88, label %89, label %92

; <label>:89:                                     ; preds = %77
  %90 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %91 = call i32 @luaD_growstack(%struct.lua_State* %90, i32 20, i32 1)
  br label %93

; <label>:92:                                     ; preds = %77
  br label %93

; <label>:93:                                     ; preds = %92, %89
  %94 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %95 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %94, i32 0, i32 6
  %96 = load %union.StackValue*, %union.StackValue** %95, align 8
  %97 = getelementptr inbounds %union.StackValue, %union.StackValue* %96, i64 20
  %98 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  %99 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %98, i32 0, i32 1
  %100 = load %union.StackValue*, %union.StackValue** %99, align 8
  %101 = icmp ugt %union.StackValue* %97, %100
  br i1 %101, label %102, label %109

; <label>:102:                                    ; preds = %93
  %103 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %104 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %103, i32 0, i32 6
  %105 = load %union.StackValue*, %union.StackValue** %104, align 8
  %106 = getelementptr inbounds %union.StackValue, %union.StackValue* %105, i64 20
  %107 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  %108 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %107, i32 0, i32 1
  store %union.StackValue* %106, %union.StackValue** %108, align 8
  br label %109

; <label>:109:                                    ; preds = %102, %93
  %110 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %111 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %110, i32 0, i32 4
  store i8 0, i8* %111, align 1
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  %114 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %113, i32 0, i32 7
  %115 = load i16, i16* %114, align 2
  %116 = zext i16 %115 to i32
  %117 = or i32 %116, %112
  %118 = trunc i32 %117 to i16
  store i16 %118, i16* %114, align 2
  %119 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %11, align 8
  %120 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void %119(%struct.lua_State* %120, %struct.lua_Debug* %16)
  %121 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %122 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %121, i32 0, i32 4
  store i8 1, i8* %122, align 1
  %123 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %124 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %123, i32 0, i32 11
  %125 = load %union.StackValue*, %union.StackValue** %124, align 8
  %126 = bitcast %union.StackValue* %125 to i8*
  %127 = load i64, i64* %15, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = bitcast i8* %128 to %union.StackValue*
  %130 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  %131 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %130, i32 0, i32 1
  store %union.StackValue* %129, %union.StackValue** %131, align 8
  %132 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %133 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %132, i32 0, i32 11
  %134 = load %union.StackValue*, %union.StackValue** %133, align 8
  %135 = bitcast %union.StackValue* %134 to i8*
  %136 = load i64, i64* %14, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = bitcast i8* %137 to %union.StackValue*
  %139 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %140 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %139, i32 0, i32 6
  store %union.StackValue* %138, %union.StackValue** %140, align 8
  %141 = load i32, i32* %12, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  %144 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %143, i32 0, i32 7
  %145 = load i16, i16* %144, align 2
  %146 = zext i16 %145 to i32
  %147 = and i32 %146, %142
  %148 = trunc i32 %147 to i16
  store i16 %148, i16* %144, align 2
  br label %149

; <label>:149:                                    ; preds = %109, %22, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaD_hookcall(%struct.lua_State*, %struct.CallInfo*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.CallInfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Proto*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.CallInfo* %1, %struct.CallInfo** %4, align 8
  %7 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %8 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %7, i32 0, i32 7
  %9 = load i16, i16* %8, align 2
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 16
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 4, i32 0
  store i32 %14, i32* %5, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 23
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

; <label>:20:                                     ; preds = %2
  br label %57

; <label>:21:                                     ; preds = %2
  %22 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %23 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %22, i32 0, i32 0
  %24 = load %union.StackValue*, %union.StackValue** %23, align 8
  %25 = bitcast %union.StackValue* %24 to %struct.TValue*
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i32 0, i32 0
  %27 = bitcast %union.Value* %26 to %struct.GCObject**
  %28 = load %struct.GCObject*, %struct.GCObject** %27, align 8
  %29 = bitcast %struct.GCObject* %28 to %union.GCUnion*
  %30 = bitcast %union.GCUnion* %29 to %union.Closure*
  %31 = bitcast %union.Closure* %30 to %struct.LClosure*
  %32 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %31, i32 0, i32 5
  %33 = load %struct.Proto*, %struct.Proto** %32, align 8
  store %struct.Proto* %33, %struct.Proto** %6, align 8
  %34 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %35 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %34, i32 0, i32 1
  %36 = load %union.StackValue*, %union.StackValue** %35, align 8
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 6
  store %union.StackValue* %36, %union.StackValue** %38, align 8
  %39 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %40 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %39, i32 0, i32 4
  %41 = bitcast %union.anon.0* %40 to %struct.anon*
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %42, align 8
  %45 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.Proto*, %struct.Proto** %6, align 8
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i32 0, i32 3
  %49 = load i8, i8* %48, align 2
  %50 = zext i8 %49 to i32
  call void @luaD_hook(%struct.lua_State* %45, i32 %46, i32 -1, i32 1, i32 %50)
  %51 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %52 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %51, i32 0, i32 4
  %53 = bitcast %union.anon.0* %52 to %struct.anon*
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 -1
  store i32* %56, i32** %54, align 8
  br label %57

; <label>:57:                                     ; preds = %21, %20
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaD_tryfuncTM(%struct.lua_State*, %union.StackValue*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %union.StackValue*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca %union.StackValue*, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %union.StackValue* %1, %union.StackValue** %4, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = load %union.StackValue*, %union.StackValue** %4, align 8
  %13 = bitcast %union.StackValue* %12 to %struct.TValue*
  %14 = call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %11, %struct.TValue* %13, i32 23)
  store %struct.TValue* %14, %struct.TValue** %5, align 8
  %15 = load %struct.TValue*, %struct.TValue** %5, align 8
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 8
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 15
  %20 = icmp eq i32 %19, 6
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

; <label>:27:                                     ; preds = %2
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = load %union.StackValue*, %union.StackValue** %4, align 8
  %30 = bitcast %union.StackValue* %29 to %struct.TValue*
  call void @luaG_typeerror(%struct.lua_State* %28, %struct.TValue* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #9
  unreachable

; <label>:31:                                     ; preds = %2
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 6
  %34 = load %union.StackValue*, %union.StackValue** %33, align 8
  store %union.StackValue* %34, %union.StackValue** %6, align 8
  br label %35

; <label>:35:                                     ; preds = %57, %31
  %36 = load %union.StackValue*, %union.StackValue** %6, align 8
  %37 = load %union.StackValue*, %union.StackValue** %4, align 8
  %38 = icmp ugt %union.StackValue* %36, %37
  br i1 %38, label %39, label %60

; <label>:39:                                     ; preds = %35
  %40 = load %union.StackValue*, %union.StackValue** %6, align 8
  %41 = bitcast %union.StackValue* %40 to %struct.TValue*
  store %struct.TValue* %41, %struct.TValue** %7, align 8
  %42 = load %union.StackValue*, %union.StackValue** %6, align 8
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
  br label %57

; <label>:57:                                     ; preds = %39
  %58 = load %union.StackValue*, %union.StackValue** %6, align 8
  %59 = getelementptr inbounds %union.StackValue, %union.StackValue* %58, i32 -1
  store %union.StackValue* %59, %union.StackValue** %6, align 8
  br label %35

; <label>:60:                                     ; preds = %35
  %61 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %61, i32 0, i32 6
  %63 = load %union.StackValue*, %union.StackValue** %62, align 8
  %64 = getelementptr inbounds %union.StackValue, %union.StackValue* %63, i32 1
  store %union.StackValue* %64, %union.StackValue** %62, align 8
  %65 = load %union.StackValue*, %union.StackValue** %4, align 8
  %66 = bitcast %union.StackValue* %65 to %struct.TValue*
  store %struct.TValue* %66, %struct.TValue** %9, align 8
  %67 = load %struct.TValue*, %struct.TValue** %5, align 8
  store %struct.TValue* %67, %struct.TValue** %10, align 8
  %68 = load %struct.TValue*, %struct.TValue** %9, align 8
  %69 = getelementptr inbounds %struct.TValue, %struct.TValue* %68, i32 0, i32 0
  %70 = load %struct.TValue*, %struct.TValue** %10, align 8
  %71 = getelementptr inbounds %struct.TValue, %struct.TValue* %70, i32 0, i32 0
  %72 = bitcast %union.Value* %69 to i8*
  %73 = bitcast %union.Value* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 8, i32 8, i1 false)
  %74 = load %struct.TValue*, %struct.TValue** %10, align 8
  %75 = getelementptr inbounds %struct.TValue, %struct.TValue* %74, i32 0, i32 1
  %76 = load i8, i8* %75, align 8
  %77 = load %struct.TValue*, %struct.TValue** %9, align 8
  %78 = getelementptr inbounds %struct.TValue, %struct.TValue* %77, i32 0, i32 1
  store i8 %76, i8* %78, align 8
  %79 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  ret void
}

declare hidden %struct.TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.TValue*, i32) #1

; Function Attrs: noreturn
declare hidden void @luaG_typeerror(%struct.lua_State*, %struct.TValue*, i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaD_poscall(%struct.lua_State*, %struct.CallInfo*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.CallInfo*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.CallInfo* %1, %struct.CallInfo** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 23
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

; <label>:11:                                     ; preds = %3
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 6
  %16 = load %union.StackValue*, %union.StackValue** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 0, %18
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %16, i64 %19
  %21 = load i32, i32* %6, align 4
  %22 = call %union.StackValue* @rethook(%struct.lua_State* %12, %struct.CallInfo* %13, %union.StackValue* %20, i32 %21)
  %23 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 6
  store %union.StackValue* %22, %union.StackValue** %24, align 8
  br label %25

; <label>:25:                                     ; preds = %11, %3
  %26 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %27 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %26, i32 0, i32 2
  %28 = load %struct.CallInfo*, %struct.CallInfo** %27, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 8
  store %struct.CallInfo* %28, %struct.CallInfo** %30, align 8
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %32 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %33 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %32, i32 0, i32 0
  %34 = load %union.StackValue*, %union.StackValue** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %37 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %36, i32 0, i32 6
  %38 = load i16, i16* %37, align 4
  %39 = sext i16 %38 to i32
  call void @moveresults(%struct.lua_State* %31, %union.StackValue* %34, i32 %35, i32 %39)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.StackValue* @rethook(%struct.lua_State*, %struct.CallInfo*, %union.StackValue*, i32) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.CallInfo*, align 8
  %7 = alloca %union.StackValue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.Proto*, align 8
  %12 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.CallInfo* %1, %struct.CallInfo** %6, align 8
  store %union.StackValue* %2, %union.StackValue** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 6
  %15 = load %union.StackValue*, %union.StackValue** %14, align 8
  %16 = bitcast %union.StackValue* %15 to i8*
  %17 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 11
  %19 = load %union.StackValue*, %union.StackValue** %18, align 8
  %20 = bitcast %union.StackValue* %19 to i8*
  %21 = ptrtoint i8* %16 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  store i64 %23, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %25 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %24, i32 0, i32 7
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 6
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %74, label %30

; <label>:30:                                     ; preds = %4
  %31 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %31, i32 0, i32 0
  %33 = load %union.StackValue*, %union.StackValue** %32, align 8
  %34 = bitcast %union.StackValue* %33 to %struct.TValue*
  %35 = getelementptr inbounds %struct.TValue, %struct.TValue* %34, i32 0, i32 0
  %36 = bitcast %union.Value* %35 to %struct.GCObject**
  %37 = load %struct.GCObject*, %struct.GCObject** %36, align 8
  %38 = bitcast %struct.GCObject* %37 to %union.GCUnion*
  %39 = bitcast %union.GCUnion* %38 to %union.Closure*
  %40 = bitcast %union.Closure* %39 to %struct.LClosure*
  %41 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %40, i32 0, i32 5
  %42 = load %struct.Proto*, %struct.Proto** %41, align 8
  store %struct.Proto* %42, %struct.Proto** %11, align 8
  %43 = load %struct.Proto*, %struct.Proto** %11, align 8
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %43, i32 0, i32 4
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %59

; <label>:47:                                     ; preds = %30
  %48 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %49 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %48, i32 0, i32 4
  %50 = bitcast %union.anon.0* %49 to %struct.anon*
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.Proto*, %struct.Proto** %11, align 8
  %54 = getelementptr inbounds %struct.Proto, %struct.Proto* %53, i32 0, i32 3
  %55 = load i8, i8* %54, align 2
  %56 = zext i8 %55 to i32
  %57 = add nsw i32 %52, %56
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %59

; <label>:59:                                     ; preds = %47, %30
  %60 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %60, i32 0, i32 6
  %62 = load %union.StackValue*, %union.StackValue** %61, align 8
  %63 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %64 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %63, i32 0, i32 1
  %65 = load %union.StackValue*, %union.StackValue** %64, align 8
  %66 = icmp ult %union.StackValue* %62, %65
  br i1 %66, label %67, label %73

; <label>:67:                                     ; preds = %59
  %68 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %69 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %68, i32 0, i32 1
  %70 = load %union.StackValue*, %union.StackValue** %69, align 8
  %71 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %72 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %71, i32 0, i32 6
  store %union.StackValue* %70, %union.StackValue** %72, align 8
  br label %73

; <label>:73:                                     ; preds = %67, %59
  br label %74

; <label>:74:                                     ; preds = %73, %4
  %75 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %76 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %75, i32 0, i32 23
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 2
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %107

; <label>:80:                                     ; preds = %74
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %83 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %82, i32 0, i32 0
  %84 = load %union.StackValue*, %union.StackValue** %83, align 8
  %85 = sext i32 %81 to i64
  %86 = getelementptr inbounds %union.StackValue, %union.StackValue* %84, i64 %85
  store %union.StackValue* %86, %union.StackValue** %83, align 8
  %87 = load %union.StackValue*, %union.StackValue** %7, align 8
  %88 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %89 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %88, i32 0, i32 0
  %90 = load %union.StackValue*, %union.StackValue** %89, align 8
  %91 = ptrtoint %union.StackValue* %87 to i64
  %92 = ptrtoint %union.StackValue* %90 to i64
  %93 = sub i64 %91, %92
  %94 = sdiv exact i64 %93, 16
  %95 = trunc i64 %94 to i16
  %96 = zext i16 %95 to i32
  store i32 %96, i32* %12, align 4
  %97 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %8, align 4
  call void @luaD_hook(%struct.lua_State* %97, i32 1, i32 -1, i32 %98, i32 %99)
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %102 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %101, i32 0, i32 0
  %103 = load %union.StackValue*, %union.StackValue** %102, align 8
  %104 = sext i32 %100 to i64
  %105 = sub i64 0, %104
  %106 = getelementptr inbounds %union.StackValue, %union.StackValue* %103, i64 %105
  store %union.StackValue* %106, %union.StackValue** %102, align 8
  br label %107

; <label>:107:                                    ; preds = %80, %74
  %108 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %109 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %108, i32 0, i32 2
  %110 = load %struct.CallInfo*, %struct.CallInfo** %109, align 8
  %111 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %110, i32 0, i32 7
  %112 = load i16, i16* %111, align 2
  %113 = zext i16 %112 to i32
  %114 = and i32 %113, 2
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %126, label %116

; <label>:116:                                    ; preds = %107
  %117 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %118 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %117, i32 0, i32 2
  %119 = load %struct.CallInfo*, %struct.CallInfo** %118, align 8
  %120 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %119, i32 0, i32 4
  %121 = bitcast %union.anon.0* %120 to %struct.anon*
  %122 = getelementptr inbounds %struct.anon, %struct.anon* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %125 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %124, i32 0, i32 9
  store i32* %123, i32** %125, align 8
  br label %126

; <label>:126:                                    ; preds = %116, %107
  %127 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %128 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %127, i32 0, i32 11
  %129 = load %union.StackValue*, %union.StackValue** %128, align 8
  %130 = bitcast %union.StackValue* %129 to i8*
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = bitcast i8* %132 to %union.StackValue*
  ret %union.StackValue* %133
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moveresults(%struct.lua_State*, %union.StackValue*, i32, i32) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %union.StackValue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.StackValue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TValue*, align 8
  %12 = alloca %struct.TValue*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TValue*, align 8
  %15 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %union.StackValue* %1, %union.StackValue** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %58 [
    i32 0, label %17
    i32 1, label %21
    i32 -1, label %56
  ]

; <label>:17:                                     ; preds = %4
  %18 = load %union.StackValue*, %union.StackValue** %6, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 6
  store %union.StackValue* %18, %union.StackValue** %20, align 8
  br label %156

; <label>:21:                                     ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

; <label>:24:                                     ; preds = %21
  %25 = load %union.StackValue*, %union.StackValue** %6, align 8
  %26 = bitcast %union.StackValue* %25 to %struct.TValue*
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %26, i32 0, i32 1
  store i8 0, i8* %27, align 8
  br label %51

; <label>:28:                                     ; preds = %21
  %29 = load %union.StackValue*, %union.StackValue** %6, align 8
  %30 = bitcast %union.StackValue* %29 to %struct.TValue*
  store %struct.TValue* %30, %struct.TValue** %11, align 8
  %31 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 6
  %33 = load %union.StackValue*, %union.StackValue** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 0, %35
  %37 = getelementptr inbounds %union.StackValue, %union.StackValue* %33, i64 %36
  %38 = bitcast %union.StackValue* %37 to %struct.TValue*
  store %struct.TValue* %38, %struct.TValue** %12, align 8
  %39 = load %struct.TValue*, %struct.TValue** %11, align 8
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %39, i32 0, i32 0
  %41 = load %struct.TValue*, %struct.TValue** %12, align 8
  %42 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i32 0, i32 0
  %43 = bitcast %union.Value* %40 to i8*
  %44 = bitcast %union.Value* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 8, i32 8, i1 false)
  %45 = load %struct.TValue*, %struct.TValue** %12, align 8
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i32 0, i32 1
  %47 = load i8, i8* %46, align 8
  %48 = load %struct.TValue*, %struct.TValue** %11, align 8
  %49 = getelementptr inbounds %struct.TValue, %struct.TValue* %48, i32 0, i32 1
  store i8 %47, i8* %49, align 8
  %50 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  br label %51

; <label>:51:                                     ; preds = %28, %24
  %52 = load %union.StackValue*, %union.StackValue** %6, align 8
  %53 = getelementptr inbounds %union.StackValue, %union.StackValue* %52, i64 1
  %54 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %54, i32 0, i32 6
  store %union.StackValue* %53, %union.StackValue** %55, align 8
  br label %156

; <label>:56:                                     ; preds = %4
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %8, align 4
  br label %90

; <label>:58:                                     ; preds = %4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, -1
  br i1 %60, label %61, label %89

; <label>:61:                                     ; preds = %58
  %62 = load %union.StackValue*, %union.StackValue** %6, align 8
  %63 = bitcast %union.StackValue* %62 to i8*
  %64 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %64, i32 0, i32 11
  %66 = load %union.StackValue*, %union.StackValue** %65, align 8
  %67 = bitcast %union.StackValue* %66 to i8*
  %68 = ptrtoint i8* %63 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  store i64 %70, i64* %13, align 8
  %71 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %72 = load %union.StackValue*, %union.StackValue** %6, align 8
  %73 = call i32 @luaF_close(%struct.lua_State* %71, %union.StackValue* %72, i32 0)
  %74 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %75 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %74, i32 0, i32 11
  %76 = load %union.StackValue*, %union.StackValue** %75, align 8
  %77 = bitcast %union.StackValue* %76 to i8*
  %78 = load i64, i64* %13, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = bitcast i8* %79 to %union.StackValue*
  store %union.StackValue* %80, %union.StackValue** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 0, %81
  %83 = sub nsw i32 %82, 3
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %88

; <label>:86:                                     ; preds = %61
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %8, align 4
  br label %88

; <label>:88:                                     ; preds = %86, %61
  br label %89

; <label>:89:                                     ; preds = %88, %58
  br label %90

; <label>:90:                                     ; preds = %89, %56
  %91 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %92 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %91, i32 0, i32 6
  %93 = load %union.StackValue*, %union.StackValue** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = sub i64 0, %95
  %97 = getelementptr inbounds %union.StackValue, %union.StackValue* %93, i64 %96
  store %union.StackValue* %97, %union.StackValue** %9, align 8
  store i32 0, i32* %10, align 4
  br label %98

; <label>:98:                                     ; preds = %131, %90
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %106

; <label>:102:                                    ; preds = %98
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %103, %104
  br label %106

; <label>:106:                                    ; preds = %102, %98
  %107 = phi i1 [ false, %98 ], [ %105, %102 ]
  br i1 %107, label %108, label %134

; <label>:108:                                    ; preds = %106
  %109 = load %union.StackValue*, %union.StackValue** %6, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %union.StackValue, %union.StackValue* %109, i64 %111
  %113 = bitcast %union.StackValue* %112 to %struct.TValue*
  store %struct.TValue* %113, %struct.TValue** %14, align 8
  %114 = load %union.StackValue*, %union.StackValue** %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %union.StackValue, %union.StackValue* %114, i64 %116
  %118 = bitcast %union.StackValue* %117 to %struct.TValue*
  store %struct.TValue* %118, %struct.TValue** %15, align 8
  %119 = load %struct.TValue*, %struct.TValue** %14, align 8
  %120 = getelementptr inbounds %struct.TValue, %struct.TValue* %119, i32 0, i32 0
  %121 = load %struct.TValue*, %struct.TValue** %15, align 8
  %122 = getelementptr inbounds %struct.TValue, %struct.TValue* %121, i32 0, i32 0
  %123 = bitcast %union.Value* %120 to i8*
  %124 = bitcast %union.Value* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 8, i32 8, i1 false)
  %125 = load %struct.TValue*, %struct.TValue** %15, align 8
  %126 = getelementptr inbounds %struct.TValue, %struct.TValue* %125, i32 0, i32 1
  %127 = load i8, i8* %126, align 8
  %128 = load %struct.TValue*, %struct.TValue** %14, align 8
  %129 = getelementptr inbounds %struct.TValue, %struct.TValue* %128, i32 0, i32 1
  store i8 %127, i8* %129, align 8
  %130 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  br label %131

; <label>:131:                                    ; preds = %108
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %98

; <label>:134:                                    ; preds = %106
  br label %135

; <label>:135:                                    ; preds = %146, %134
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %149

; <label>:139:                                    ; preds = %135
  %140 = load %union.StackValue*, %union.StackValue** %6, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %union.StackValue, %union.StackValue* %140, i64 %142
  %144 = bitcast %union.StackValue* %143 to %struct.TValue*
  %145 = getelementptr inbounds %struct.TValue, %struct.TValue* %144, i32 0, i32 1
  store i8 0, i8* %145, align 8
  br label %146

; <label>:146:                                    ; preds = %139
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %135

; <label>:149:                                    ; preds = %135
  %150 = load %union.StackValue*, %union.StackValue** %6, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %union.StackValue, %union.StackValue* %150, i64 %152
  %154 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %155 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %154, i32 0, i32 6
  store %union.StackValue* %153, %union.StackValue** %155, align 8
  br label %156

; <label>:156:                                    ; preds = %149, %51, %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaD_pretailcall(%struct.lua_State*, %struct.CallInfo*, %union.StackValue*, i32) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.CallInfo*, align 8
  %7 = alloca %union.StackValue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Proto*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TValue*, align 8
  %14 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.CallInfo* %1, %struct.CallInfo** %6, align 8
  store %union.StackValue* %2, %union.StackValue** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %union.StackValue*, %union.StackValue** %7, align 8
  %16 = bitcast %union.StackValue* %15 to %struct.TValue*
  %17 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i32 0, i32 0
  %18 = bitcast %union.Value* %17 to %struct.GCObject**
  %19 = load %struct.GCObject*, %struct.GCObject** %18, align 8
  %20 = bitcast %struct.GCObject* %19 to %union.GCUnion*
  %21 = bitcast %union.GCUnion* %20 to %union.Closure*
  %22 = bitcast %union.Closure* %21 to %struct.LClosure*
  %23 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %22, i32 0, i32 5
  %24 = load %struct.Proto*, %struct.Proto** %23, align 8
  store %struct.Proto* %24, %struct.Proto** %9, align 8
  %25 = load %struct.Proto*, %struct.Proto** %9, align 8
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %25, i32 0, i32 5
  %27 = load i8, i8* %26, align 4
  %28 = zext i8 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load %struct.Proto*, %struct.Proto** %9, align 8
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %29, i32 0, i32 3
  %31 = load i8, i8* %30, align 2
  %32 = zext i8 %31 to i32
  store i32 %32, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %33

; <label>:33:                                     ; preds = %62, %4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %65

; <label>:37:                                     ; preds = %33
  %38 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %39 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %38, i32 0, i32 0
  %40 = load %union.StackValue*, %union.StackValue** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %union.StackValue, %union.StackValue* %40, i64 %42
  %44 = bitcast %union.StackValue* %43 to %struct.TValue*
  store %struct.TValue* %44, %struct.TValue** %13, align 8
  %45 = load %union.StackValue*, %union.StackValue** %7, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %union.StackValue, %union.StackValue* %45, i64 %47
  %49 = bitcast %union.StackValue* %48 to %struct.TValue*
  store %struct.TValue* %49, %struct.TValue** %14, align 8
  %50 = load %struct.TValue*, %struct.TValue** %13, align 8
  %51 = getelementptr inbounds %struct.TValue, %struct.TValue* %50, i32 0, i32 0
  %52 = load %struct.TValue*, %struct.TValue** %14, align 8
  %53 = getelementptr inbounds %struct.TValue, %struct.TValue* %52, i32 0, i32 0
  %54 = bitcast %union.Value* %51 to i8*
  %55 = bitcast %union.Value* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 8, i32 8, i1 false)
  %56 = load %struct.TValue*, %struct.TValue** %14, align 8
  %57 = getelementptr inbounds %struct.TValue, %struct.TValue* %56, i32 0, i32 1
  %58 = load i8, i8* %57, align 8
  %59 = load %struct.TValue*, %struct.TValue** %13, align 8
  %60 = getelementptr inbounds %struct.TValue, %struct.TValue* %59, i32 0, i32 1
  store i8 %58, i8* %60, align 8
  %61 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  br label %62

; <label>:62:                                     ; preds = %37
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %33

; <label>:65:                                     ; preds = %33
  %66 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %66, i32 0, i32 10
  %68 = load %union.StackValue*, %union.StackValue** %67, align 8
  %69 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %70 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %69, i32 0, i32 6
  %71 = load %union.StackValue*, %union.StackValue** %70, align 8
  %72 = ptrtoint %union.StackValue* %68 to i64
  %73 = ptrtoint %union.StackValue* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 16
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp sle i64 %75, %77
  br i1 %78, label %79, label %92

; <label>:79:                                     ; preds = %65
  %80 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @luaD_growstack(%struct.lua_State* %80, i32 %81, i32 1)
  %83 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %83, i32 0, i32 7
  %85 = load %struct.global_State*, %struct.global_State** %84, align 8
  %86 = getelementptr inbounds %struct.global_State, %struct.global_State* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %91

; <label>:89:                                     ; preds = %79
  %90 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaC_step(%struct.lua_State* %90)
  br label %91

; <label>:91:                                     ; preds = %89, %79
  br label %93

; <label>:92:                                     ; preds = %65
  br label %93

; <label>:93:                                     ; preds = %92, %91
  %94 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %95 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %94, i32 0, i32 0
  %96 = load %union.StackValue*, %union.StackValue** %95, align 8
  store %union.StackValue* %96, %union.StackValue** %7, align 8
  br label %97

; <label>:97:                                     ; preds = %108, %93
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %111

; <label>:101:                                    ; preds = %97
  %102 = load %union.StackValue*, %union.StackValue** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %union.StackValue, %union.StackValue* %102, i64 %104
  %106 = bitcast %union.StackValue* %105 to %struct.TValue*
  %107 = getelementptr inbounds %struct.TValue, %struct.TValue* %106, i32 0, i32 1
  store i8 0, i8* %107, align 8
  br label %108

; <label>:108:                                    ; preds = %101
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %97

; <label>:111:                                    ; preds = %97
  %112 = load %union.StackValue*, %union.StackValue** %7, align 8
  %113 = getelementptr inbounds %union.StackValue, %union.StackValue* %112, i64 1
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %union.StackValue, %union.StackValue* %113, i64 %115
  %117 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %118 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %117, i32 0, i32 1
  store %union.StackValue* %116, %union.StackValue** %118, align 8
  %119 = load %struct.Proto*, %struct.Proto** %9, align 8
  %120 = getelementptr inbounds %struct.Proto, %struct.Proto* %119, i32 0, i32 16
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %123 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %122, i32 0, i32 4
  %124 = bitcast %union.anon.0* %123 to %struct.anon*
  %125 = getelementptr inbounds %struct.anon, %struct.anon* %124, i32 0, i32 0
  store i32* %121, i32** %125, align 8
  %126 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %127 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %126, i32 0, i32 7
  %128 = load i16, i16* %127, align 2
  %129 = zext i16 %128 to i32
  %130 = or i32 %129, 16
  %131 = trunc i32 %130 to i16
  store i16 %131, i16* %127, align 2
  %132 = load %union.StackValue*, %union.StackValue** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %union.StackValue, %union.StackValue* %132, i64 %134
  %136 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %137 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %136, i32 0, i32 6
  store %union.StackValue* %135, %union.StackValue** %137, align 8
  ret void
}

declare hidden void @luaC_step(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaD_call(%struct.lua_State*, %union.StackValue*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %union.StackValue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.lua_State*)*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.CallInfo*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.CallInfo*, align 8
  %14 = alloca %struct.Proto*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %union.StackValue* %1, %union.StackValue** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %union.StackValue*, %union.StackValue** %5, align 8
  %20 = bitcast %union.StackValue* %19 to %struct.TValue*
  store %struct.TValue* %20, %struct.TValue** %8, align 8
  %21 = load %struct.TValue*, %struct.TValue** %8, align 8
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %21, i32 0, i32 1
  %23 = load i8, i8* %22, align 8
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 63
  switch i32 %25, label %273 [
    i32 54, label %26
    i32 38, label %36
    i32 22, label %142
  ]

; <label>:26:                                     ; preds = %3
  %27 = load %struct.TValue*, %struct.TValue** %8, align 8
  %28 = getelementptr inbounds %struct.TValue, %struct.TValue* %27, i32 0, i32 0
  %29 = bitcast %union.Value* %28 to %struct.GCObject**
  %30 = load %struct.GCObject*, %struct.GCObject** %29, align 8
  %31 = bitcast %struct.GCObject* %30 to %union.GCUnion*
  %32 = bitcast %union.GCUnion* %31 to %union.Closure*
  %33 = bitcast %union.Closure* %32 to %struct.CClosure*
  %34 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %33, i32 0, i32 5
  %35 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %34, align 8
  store i32 (%struct.lua_State*)* %35, i32 (%struct.lua_State*)** %7, align 8
  br label %41

; <label>:36:                                     ; preds = %3
  %37 = load %struct.TValue*, %struct.TValue** %8, align 8
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %37, i32 0, i32 0
  %39 = bitcast %union.Value* %38 to i32 (%struct.lua_State*)**
  %40 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %39, align 8
  store i32 (%struct.lua_State*)* %40, i32 (%struct.lua_State*)** %7, align 8
  br label %41

; <label>:41:                                     ; preds = %36, %26
  %42 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 10
  %44 = load %union.StackValue*, %union.StackValue** %43, align 8
  %45 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i32 0, i32 6
  %47 = load %union.StackValue*, %union.StackValue** %46, align 8
  %48 = ptrtoint %union.StackValue* %44 to i64
  %49 = ptrtoint %union.StackValue* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 16
  %52 = icmp sle i64 %51, 20
  br i1 %52, label %53, label %81

; <label>:53:                                     ; preds = %41
  %54 = load %union.StackValue*, %union.StackValue** %5, align 8
  %55 = bitcast %union.StackValue* %54 to i8*
  %56 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %56, i32 0, i32 11
  %58 = load %union.StackValue*, %union.StackValue** %57, align 8
  %59 = bitcast %union.StackValue* %58 to i8*
  %60 = ptrtoint i8* %55 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  store i64 %62, i64* %11, align 8
  %63 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %63, i32 0, i32 7
  %65 = load %struct.global_State*, %struct.global_State** %64, align 8
  %66 = getelementptr inbounds %struct.global_State, %struct.global_State* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %53
  %70 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaC_step(%struct.lua_State* %70)
  br label %71

; <label>:71:                                     ; preds = %69, %53
  %72 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %73 = call i32 @luaD_growstack(%struct.lua_State* %72, i32 20, i32 1)
  %74 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %75 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %74, i32 0, i32 11
  %76 = load %union.StackValue*, %union.StackValue** %75, align 8
  %77 = bitcast %union.StackValue* %76 to i8*
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = bitcast i8* %79 to %union.StackValue*
  store %union.StackValue* %80, %union.StackValue** %5, align 8
  br label %82

; <label>:81:                                     ; preds = %41
  br label %82

; <label>:82:                                     ; preds = %81, %71
  %83 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %84 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %83, i32 0, i32 8
  %85 = load %struct.CallInfo*, %struct.CallInfo** %84, align 8
  %86 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %85, i32 0, i32 3
  %87 = load %struct.CallInfo*, %struct.CallInfo** %86, align 8
  %88 = icmp ne %struct.CallInfo* %87, null
  br i1 %88, label %89, label %95

; <label>:89:                                     ; preds = %82
  %90 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %91 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %90, i32 0, i32 8
  %92 = load %struct.CallInfo*, %struct.CallInfo** %91, align 8
  %93 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %92, i32 0, i32 3
  %94 = load %struct.CallInfo*, %struct.CallInfo** %93, align 8
  br label %98

; <label>:95:                                     ; preds = %82
  %96 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %97 = call %struct.CallInfo* @luaE_extendCI(%struct.lua_State* %96)
  br label %98

; <label>:98:                                     ; preds = %95, %89
  %99 = phi %struct.CallInfo* [ %94, %89 ], [ %97, %95 ]
  %100 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %101 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %100, i32 0, i32 8
  store %struct.CallInfo* %99, %struct.CallInfo** %101, align 8
  store %struct.CallInfo* %99, %struct.CallInfo** %10, align 8
  %102 = load i32, i32* %6, align 4
  %103 = trunc i32 %102 to i16
  %104 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %105 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %104, i32 0, i32 6
  store i16 %103, i16* %105, align 4
  %106 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %107 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %106, i32 0, i32 7
  store i16 2, i16* %107, align 2
  %108 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %109 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %108, i32 0, i32 6
  %110 = load %union.StackValue*, %union.StackValue** %109, align 8
  %111 = getelementptr inbounds %union.StackValue, %union.StackValue* %110, i64 20
  %112 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %113 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %112, i32 0, i32 1
  store %union.StackValue* %111, %union.StackValue** %113, align 8
  %114 = load %union.StackValue*, %union.StackValue** %5, align 8
  %115 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %116 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %115, i32 0, i32 0
  store %union.StackValue* %114, %union.StackValue** %116, align 8
  %117 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %118 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %117, i32 0, i32 23
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, 1
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %135

; <label>:122:                                    ; preds = %98
  %123 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %124 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %123, i32 0, i32 6
  %125 = load %union.StackValue*, %union.StackValue** %124, align 8
  %126 = load %union.StackValue*, %union.StackValue** %5, align 8
  %127 = ptrtoint %union.StackValue* %125 to i64
  %128 = ptrtoint %union.StackValue* %126 to i64
  %129 = sub i64 %127, %128
  %130 = sdiv exact i64 %129, 16
  %131 = trunc i64 %130 to i32
  %132 = sub nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  %133 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %134 = load i32, i32* %12, align 4
  call void @luaD_hook(%struct.lua_State* %133, i32 0, i32 -1, i32 1, i32 %134)
  br label %135

; <label>:135:                                    ; preds = %122, %98
  %136 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %7, align 8
  %137 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %138 = call i32 %136(%struct.lua_State* %137)
  store i32 %138, i32* %9, align 4
  %139 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %140 = load %struct.CallInfo*, %struct.CallInfo** %10, align 8
  %141 = load i32, i32* %9, align 4
  call void @luaD_poscall(%struct.lua_State* %139, %struct.CallInfo* %140, i32 %141)
  br label %279

; <label>:142:                                    ; preds = %3
  %143 = load %struct.TValue*, %struct.TValue** %8, align 8
  %144 = getelementptr inbounds %struct.TValue, %struct.TValue* %143, i32 0, i32 0
  %145 = bitcast %union.Value* %144 to %struct.GCObject**
  %146 = load %struct.GCObject*, %struct.GCObject** %145, align 8
  %147 = bitcast %struct.GCObject* %146 to %union.GCUnion*
  %148 = bitcast %union.GCUnion* %147 to %union.Closure*
  %149 = bitcast %union.Closure* %148 to %struct.LClosure*
  %150 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %149, i32 0, i32 5
  %151 = load %struct.Proto*, %struct.Proto** %150, align 8
  store %struct.Proto* %151, %struct.Proto** %14, align 8
  %152 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %153 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %152, i32 0, i32 6
  %154 = load %union.StackValue*, %union.StackValue** %153, align 8
  %155 = load %union.StackValue*, %union.StackValue** %5, align 8
  %156 = ptrtoint %union.StackValue* %154 to i64
  %157 = ptrtoint %union.StackValue* %155 to i64
  %158 = sub i64 %156, %157
  %159 = sdiv exact i64 %158, 16
  %160 = trunc i64 %159 to i32
  %161 = sub nsw i32 %160, 1
  store i32 %161, i32* %15, align 4
  %162 = load %struct.Proto*, %struct.Proto** %14, align 8
  %163 = getelementptr inbounds %struct.Proto, %struct.Proto* %162, i32 0, i32 3
  %164 = load i8, i8* %163, align 2
  %165 = zext i8 %164 to i32
  store i32 %165, i32* %16, align 4
  %166 = load %struct.Proto*, %struct.Proto** %14, align 8
  %167 = getelementptr inbounds %struct.Proto, %struct.Proto* %166, i32 0, i32 5
  %168 = load i8, i8* %167, align 4
  %169 = zext i8 %168 to i32
  store i32 %169, i32* %17, align 4
  %170 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %171 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %170, i32 0, i32 10
  %172 = load %union.StackValue*, %union.StackValue** %171, align 8
  %173 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %174 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %173, i32 0, i32 6
  %175 = load %union.StackValue*, %union.StackValue** %174, align 8
  %176 = ptrtoint %union.StackValue* %172 to i64
  %177 = ptrtoint %union.StackValue* %175 to i64
  %178 = sub i64 %176, %177
  %179 = sdiv exact i64 %178, 16
  %180 = load i32, i32* %17, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp sle i64 %179, %181
  br i1 %182, label %183, label %212

; <label>:183:                                    ; preds = %142
  %184 = load %union.StackValue*, %union.StackValue** %5, align 8
  %185 = bitcast %union.StackValue* %184 to i8*
  %186 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %187 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %186, i32 0, i32 11
  %188 = load %union.StackValue*, %union.StackValue** %187, align 8
  %189 = bitcast %union.StackValue* %188 to i8*
  %190 = ptrtoint i8* %185 to i64
  %191 = ptrtoint i8* %189 to i64
  %192 = sub i64 %190, %191
  store i64 %192, i64* %18, align 8
  %193 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %194 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %193, i32 0, i32 7
  %195 = load %struct.global_State*, %struct.global_State** %194, align 8
  %196 = getelementptr inbounds %struct.global_State, %struct.global_State* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = icmp sgt i64 %197, 0
  br i1 %198, label %199, label %201

; <label>:199:                                    ; preds = %183
  %200 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaC_step(%struct.lua_State* %200)
  br label %201

; <label>:201:                                    ; preds = %199, %183
  %202 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %203 = load i32, i32* %17, align 4
  %204 = call i32 @luaD_growstack(%struct.lua_State* %202, i32 %203, i32 1)
  %205 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %206 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %205, i32 0, i32 11
  %207 = load %union.StackValue*, %union.StackValue** %206, align 8
  %208 = bitcast %union.StackValue* %207 to i8*
  %209 = load i64, i64* %18, align 8
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  %211 = bitcast i8* %210 to %union.StackValue*
  store %union.StackValue* %211, %union.StackValue** %5, align 8
  br label %213

; <label>:212:                                    ; preds = %142
  br label %213

; <label>:213:                                    ; preds = %212, %201
  %214 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %215 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %214, i32 0, i32 8
  %216 = load %struct.CallInfo*, %struct.CallInfo** %215, align 8
  %217 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %216, i32 0, i32 3
  %218 = load %struct.CallInfo*, %struct.CallInfo** %217, align 8
  %219 = icmp ne %struct.CallInfo* %218, null
  br i1 %219, label %220, label %226

; <label>:220:                                    ; preds = %213
  %221 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %222 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %221, i32 0, i32 8
  %223 = load %struct.CallInfo*, %struct.CallInfo** %222, align 8
  %224 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %223, i32 0, i32 3
  %225 = load %struct.CallInfo*, %struct.CallInfo** %224, align 8
  br label %229

; <label>:226:                                    ; preds = %213
  %227 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %228 = call %struct.CallInfo* @luaE_extendCI(%struct.lua_State* %227)
  br label %229

; <label>:229:                                    ; preds = %226, %220
  %230 = phi %struct.CallInfo* [ %225, %220 ], [ %228, %226 ]
  %231 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %232 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %231, i32 0, i32 8
  store %struct.CallInfo* %230, %struct.CallInfo** %232, align 8
  store %struct.CallInfo* %230, %struct.CallInfo** %13, align 8
  %233 = load i32, i32* %6, align 4
  %234 = trunc i32 %233 to i16
  %235 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  %236 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %235, i32 0, i32 6
  store i16 %234, i16* %236, align 4
  %237 = load %struct.Proto*, %struct.Proto** %14, align 8
  %238 = getelementptr inbounds %struct.Proto, %struct.Proto* %237, i32 0, i32 16
  %239 = load i32*, i32** %238, align 8
  %240 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  %241 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %240, i32 0, i32 4
  %242 = bitcast %union.anon.0* %241 to %struct.anon*
  %243 = getelementptr inbounds %struct.anon, %struct.anon* %242, i32 0, i32 0
  store i32* %239, i32** %243, align 8
  %244 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  %245 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %244, i32 0, i32 7
  store i16 0, i16* %245, align 2
  %246 = load %union.StackValue*, %union.StackValue** %5, align 8
  %247 = getelementptr inbounds %union.StackValue, %union.StackValue* %246, i64 1
  %248 = load i32, i32* %17, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %union.StackValue, %union.StackValue* %247, i64 %249
  %251 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  %252 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %251, i32 0, i32 1
  store %union.StackValue* %250, %union.StackValue** %252, align 8
  %253 = load %union.StackValue*, %union.StackValue** %5, align 8
  %254 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  %255 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %254, i32 0, i32 0
  store %union.StackValue* %253, %union.StackValue** %255, align 8
  br label %256

; <label>:256:                                    ; preds = %267, %229
  %257 = load i32, i32* %15, align 4
  %258 = load i32, i32* %16, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %270

; <label>:260:                                    ; preds = %256
  %261 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %262 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %261, i32 0, i32 6
  %263 = load %union.StackValue*, %union.StackValue** %262, align 8
  %264 = getelementptr inbounds %union.StackValue, %union.StackValue* %263, i32 1
  store %union.StackValue* %264, %union.StackValue** %262, align 8
  %265 = bitcast %union.StackValue* %263 to %struct.TValue*
  %266 = getelementptr inbounds %struct.TValue, %struct.TValue* %265, i32 0, i32 1
  store i8 0, i8* %266, align 8
  br label %267

; <label>:267:                                    ; preds = %260
  %268 = load i32, i32* %15, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %15, align 4
  br label %256

; <label>:270:                                    ; preds = %256
  %271 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %272 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  call void @luaV_execute(%struct.lua_State* %271, %struct.CallInfo* %272)
  br label %279

; <label>:273:                                    ; preds = %3
  %274 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %275 = load %union.StackValue*, %union.StackValue** %5, align 8
  call void @luaD_tryfuncTM(%struct.lua_State* %274, %union.StackValue* %275)
  %276 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %277 = load %union.StackValue*, %union.StackValue** %5, align 8
  %278 = load i32, i32* %6, align 4
  call void @luaD_call(%struct.lua_State* %276, %union.StackValue* %277, i32 %278)
  br label %279

; <label>:279:                                    ; preds = %273, %270, %135
  ret void
}

declare hidden %struct.CallInfo* @luaE_extendCI(%struct.lua_State*) #1

declare hidden void @luaV_execute(%struct.lua_State*, %struct.CallInfo*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %union.StackValue*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %union.StackValue* %1, %union.StackValue** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 19
  %9 = load i32, i32* %8, align 8
  %10 = add i32 %9, 65546
  store i32 %10, i32* %8, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 19
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp uge i32 %14, 2200
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %3
  %17 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaE_freeCI(%struct.lua_State* %17)
  br label %18

; <label>:18:                                     ; preds = %16, %3
  %19 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %20 = load %union.StackValue*, %union.StackValue** %5, align 8
  %21 = load i32, i32* %6, align 4
  call void @luaD_call(%struct.lua_State* %19, %union.StackValue* %20, i32 %21)
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 19
  %24 = load i32, i32* %23, align 8
  %25 = sub i32 %24, 65546
  store i32 %25, i32* %23, align 8
  ret void
}

declare hidden void @luaE_freeCI(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_resume(%struct.lua_State*, %struct.lua_State*, i32, i32*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.lua_State* %1, %struct.lua_State** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 3
  %13 = load i8, i8* %12, align 2
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

; <label>:16:                                     ; preds = %4
  %17 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 8
  %19 = load %struct.CallInfo*, %struct.CallInfo** %18, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 16
  %22 = icmp ne %struct.CallInfo* %19, %21
  br i1 %22, label %23, label %27

; <label>:23:                                     ; preds = %16
  %24 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @resume_error(%struct.lua_State* %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0), i32 %25)
  store i32 %26, i32* %5, align 4
  br label %147

; <label>:27:                                     ; preds = %16
  br label %39

; <label>:28:                                     ; preds = %4
  %29 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 3
  %31 = load i8, i8* %30, align 2
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %38

; <label>:34:                                     ; preds = %28
  %35 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @resume_error(%struct.lua_State* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i32 %36)
  store i32 %37, i32* %5, align 4
  br label %147

; <label>:38:                                     ; preds = %28
  br label %39

; <label>:39:                                     ; preds = %38, %27
  %40 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %41 = icmp eq %struct.lua_State* %40, null
  br i1 %41, label %42, label %45

; <label>:42:                                     ; preds = %39
  %43 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 19
  store i32 1, i32* %44, align 8
  br label %63

; <label>:45:                                     ; preds = %39
  %46 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %47 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %46, i32 0, i32 19
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 65535
  %50 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %51 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %50, i32 0, i32 5
  %52 = load i16, i16* %51, align 4
  %53 = zext i16 %52 to i32
  %54 = sub i32 %49, %53
  %55 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %55, i32 0, i32 5
  %57 = load i16, i16* %56, align 4
  %58 = zext i16 %57 to i32
  %59 = add i32 %54, %58
  %60 = add i32 %59, 10
  %61 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %61, i32 0, i32 19
  store i32 %60, i32* %62, align 8
  br label %63

; <label>:63:                                     ; preds = %45, %42
  %64 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %64, i32 0, i32 19
  %66 = load i32, i32* %65, align 8
  %67 = icmp uge i32 %66, 2200
  br i1 %67, label %68, label %72

; <label>:68:                                     ; preds = %63
  %69 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @resume_error(%struct.lua_State* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 %70)
  store i32 %71, i32* %5, align 4
  br label %147

; <label>:72:                                     ; preds = %63
  %73 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %74 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %75 = bitcast i32* %8 to i8*
  %76 = call i32 @luaD_rawrunprotected(%struct.lua_State* %74, void (%struct.lua_State*, i8*)* @resume, i8* %75)
  store i32 %76, i32* %10, align 4
  br label %77

; <label>:77:                                     ; preds = %87, %72
  %78 = load i32, i32* %10, align 4
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %85

; <label>:80:                                     ; preds = %77
  %81 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @recover(%struct.lua_State* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br label %85

; <label>:85:                                     ; preds = %80, %77
  %86 = phi i1 [ false, %77 ], [ %84, %80 ]
  br i1 %86, label %87, label %91

; <label>:87:                                     ; preds = %85
  %88 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %89 = bitcast i32* %10 to i8*
  %90 = call i32 @luaD_rawrunprotected(%struct.lua_State* %88, void (%struct.lua_State*, i8*)* @unroll, i8* %89)
  store i32 %90, i32* %10, align 4
  br label %77

; <label>:91:                                     ; preds = %85
  %92 = load i32, i32* %10, align 4
  %93 = icmp sgt i32 %92, 1
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = sext i32 %97 to i64
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

; <label>:100:                                    ; preds = %91
  br label %118

; <label>:101:                                    ; preds = %91
  %102 = load i32, i32* %10, align 4
  %103 = trunc i32 %102 to i8
  %104 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %105 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %104, i32 0, i32 3
  store i8 %103, i8* %105, align 2
  %106 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %109 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %108, i32 0, i32 6
  %110 = load %union.StackValue*, %union.StackValue** %109, align 8
  call void @luaD_seterrorobj(%struct.lua_State* %106, i32 %107, %union.StackValue* %110)
  %111 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %112 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %111, i32 0, i32 6
  %113 = load %union.StackValue*, %union.StackValue** %112, align 8
  %114 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %115 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %114, i32 0, i32 8
  %116 = load %struct.CallInfo*, %struct.CallInfo** %115, align 8
  %117 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %116, i32 0, i32 1
  store %union.StackValue* %113, %union.StackValue** %117, align 8
  br label %118

; <label>:118:                                    ; preds = %101, %100
  %119 = load i32, i32* %10, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %128

; <label>:121:                                    ; preds = %118
  %122 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %123 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %122, i32 0, i32 8
  %124 = load %struct.CallInfo*, %struct.CallInfo** %123, align 8
  %125 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %124, i32 0, i32 5
  %126 = bitcast %union.anon.2* %125 to i32*
  %127 = load i32, i32* %126, align 8
  br label %143

; <label>:128:                                    ; preds = %118
  %129 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %130 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %129, i32 0, i32 6
  %131 = load %union.StackValue*, %union.StackValue** %130, align 8
  %132 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %133 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %132, i32 0, i32 8
  %134 = load %struct.CallInfo*, %struct.CallInfo** %133, align 8
  %135 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %134, i32 0, i32 0
  %136 = load %union.StackValue*, %union.StackValue** %135, align 8
  %137 = getelementptr inbounds %union.StackValue, %union.StackValue* %136, i64 1
  %138 = ptrtoint %union.StackValue* %131 to i64
  %139 = ptrtoint %union.StackValue* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sdiv exact i64 %140, 16
  %142 = trunc i64 %141 to i32
  br label %143

; <label>:143:                                    ; preds = %128, %121
  %144 = phi i32 [ %127, %121 ], [ %142, %128 ]
  %145 = load i32*, i32** %9, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %5, align 4
  br label %147

; <label>:147:                                    ; preds = %143, %68, %34, %23
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resume_error(%struct.lua_State*, i8*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 6
  %12 = load %union.StackValue*, %union.StackValue** %11, align 8
  %13 = sext i32 %9 to i64
  %14 = sub i64 0, %13
  %15 = getelementptr inbounds %union.StackValue, %union.StackValue* %12, i64 %14
  store %union.StackValue* %15, %union.StackValue** %11, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 6
  %18 = load %union.StackValue*, %union.StackValue** %17, align 8
  %19 = bitcast %union.StackValue* %18 to %struct.TValue*
  store %struct.TValue* %19, %struct.TValue** %7, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call %struct.TString* @luaS_new(%struct.lua_State* %20, i8* %21)
  store %struct.TString* %22, %struct.TString** %8, align 8
  %23 = load %struct.TString*, %struct.TString** %8, align 8
  %24 = bitcast %struct.TString* %23 to %union.GCUnion*
  %25 = bitcast %union.GCUnion* %24 to %struct.GCObject*
  %26 = load %struct.TValue*, %struct.TValue** %7, align 8
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %26, i32 0, i32 0
  %28 = bitcast %union.Value* %27 to %struct.GCObject**
  store %struct.GCObject* %25, %struct.GCObject** %28, align 8
  %29 = load %struct.TString*, %struct.TString** %8, align 8
  %30 = getelementptr inbounds %struct.TString, %struct.TString* %29, i32 0, i32 1
  %31 = load i8, i8* %30, align 8
  %32 = zext i8 %31 to i32
  %33 = or i32 %32, 64
  %34 = trunc i32 %33 to i8
  %35 = load %struct.TValue*, %struct.TValue** %7, align 8
  %36 = getelementptr inbounds %struct.TValue, %struct.TValue* %35, i32 0, i32 1
  store i8 %34, i8* %36, align 8
  %37 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 6
  %39 = load %union.StackValue*, %union.StackValue** %38, align 8
  %40 = getelementptr inbounds %union.StackValue, %union.StackValue* %39, i32 1
  store %union.StackValue* %40, %union.StackValue** %38, align 8
  ret i32 2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resume(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.StackValue*, align 8
  %7 = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 6
  %13 = load %union.StackValue*, %union.StackValue** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = sub i64 0, %15
  %17 = getelementptr inbounds %union.StackValue, %union.StackValue* %13, i64 %16
  store %union.StackValue* %17, %union.StackValue** %6, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 8
  %20 = load %struct.CallInfo*, %struct.CallInfo** %19, align 8
  store %struct.CallInfo* %20, %struct.CallInfo** %7, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 3
  %23 = load i8, i8* %22, align 2
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

; <label>:26:                                     ; preds = %2
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %28 = load %union.StackValue*, %union.StackValue** %6, align 8
  %29 = getelementptr inbounds %union.StackValue, %union.StackValue* %28, i64 -1
  call void @luaD_call(%struct.lua_State* %27, %union.StackValue* %29, i32 -1)
  br label %68

; <label>:30:                                     ; preds = %2
  %31 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 3
  store i8 0, i8* %32, align 2
  %33 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %34 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %33, i32 0, i32 7
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 2
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

; <label>:39:                                     ; preds = %30
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %41 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  call void @luaV_execute(%struct.lua_State* %40, %struct.CallInfo* %41)
  br label %66

; <label>:42:                                     ; preds = %30
  %43 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i32 0, i32 4
  %45 = bitcast %union.anon.0* %44 to %struct.anon.1*
  %46 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %45, i32 0, i32 0
  %47 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %46, align 8
  %48 = icmp ne i32 (%struct.lua_State*, i32, i64)* %47, null
  br i1 %48, label %49, label %62

; <label>:49:                                     ; preds = %42
  %50 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %51 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %50, i32 0, i32 4
  %52 = bitcast %union.anon.0* %51 to %struct.anon.1*
  %53 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %52, i32 0, i32 0
  %54 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %53, align 8
  %55 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %56 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %57 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %56, i32 0, i32 4
  %58 = bitcast %union.anon.0* %57 to %struct.anon.1*
  %59 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 %54(%struct.lua_State* %55, i32 1, i64 %60)
  store i32 %61, i32* %5, align 4
  br label %62

; <label>:62:                                     ; preds = %49, %42
  %63 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %64 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %65 = load i32, i32* %5, align 4
  call void @luaD_poscall(%struct.lua_State* %63, %struct.CallInfo* %64, i32 %65)
  br label %66

; <label>:66:                                     ; preds = %62, %39
  %67 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @unroll(%struct.lua_State* %67, i8* null)
  br label %68

; <label>:68:                                     ; preds = %66, %26
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recover(%struct.lua_State*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.StackValue*, align 8
  %7 = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = call %struct.CallInfo* @findpcall(%struct.lua_State* %8)
  store %struct.CallInfo* %9, %struct.CallInfo** %7, align 8
  %10 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %11 = icmp eq %struct.CallInfo* %10, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

; <label>:13:                                     ; preds = %2
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 11
  %16 = load %union.StackValue*, %union.StackValue** %15, align 8
  %17 = bitcast %union.StackValue* %16 to i8*
  %18 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %19 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %18, i32 0, i32 5
  %20 = bitcast %union.anon.2* %19 to i32*
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %17, i64 %22
  %24 = bitcast i8* %23 to %union.StackValue*
  store %union.StackValue* %24, %union.StackValue** %6, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %26 = load %union.StackValue*, %union.StackValue** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @luaF_close(%struct.lua_State* %25, %union.StackValue* %26, i32 %27)
  %29 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 11
  %31 = load %union.StackValue*, %union.StackValue** %30, align 8
  %32 = bitcast %union.StackValue* %31 to i8*
  %33 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %34 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %33, i32 0, i32 5
  %35 = bitcast %union.anon.2* %34 to i32*
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %32, i64 %37
  %39 = bitcast i8* %38 to %union.StackValue*
  store %union.StackValue* %39, %union.StackValue** %6, align 8
  %40 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %union.StackValue*, %union.StackValue** %6, align 8
  call void @luaD_seterrorobj(%struct.lua_State* %40, i32 %41, %union.StackValue* %42)
  %43 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %44 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i32 0, i32 8
  store %struct.CallInfo* %43, %struct.CallInfo** %45, align 8
  %46 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %47 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %46, i32 0, i32 7
  %48 = load i16, i16* %47, align 2
  %49 = zext i16 %48 to i32
  %50 = and i32 %49, 1
  %51 = trunc i32 %50 to i8
  %52 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %52, i32 0, i32 4
  store i8 %51, i8* %53, align 1
  %54 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaD_shrinkstack(%struct.lua_State* %54)
  %55 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %56 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %55, i32 0, i32 4
  %57 = bitcast %union.anon.0* %56 to %struct.anon.1*
  %58 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %60, i32 0, i32 18
  store i64 %59, i64* %61, align 8
  store i32 1, i32* %3, align 4
  br label %62

; <label>:62:                                     ; preds = %13, %12
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unroll(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %2
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  call void @finishCcall(%struct.lua_State* %9, i32 %12)
  br label %13

; <label>:13:                                     ; preds = %8, %2
  br label %14

; <label>:14:                                     ; preds = %34, %13
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 8
  %17 = load %struct.CallInfo*, %struct.CallInfo** %16, align 8
  store %struct.CallInfo* %17, %struct.CallInfo** %5, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 16
  %20 = icmp ne %struct.CallInfo* %17, %19
  br i1 %20, label %21, label %35

; <label>:21:                                     ; preds = %14
  %22 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %23 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %22, i32 0, i32 7
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 2
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %21
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @finishCcall(%struct.lua_State* %29, i32 1)
  br label %34

; <label>:30:                                     ; preds = %21
  %31 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaV_finishOp(%struct.lua_State* %31)
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %33 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  call void @luaV_execute(%struct.lua_State* %32, %struct.CallInfo* %33)
  br label %34

; <label>:34:                                     ; preds = %30, %28
  br label %14

; <label>:35:                                     ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_isyieldable(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 19
  %5 = load i32, i32* %4, align 8
  %6 = and i32 %5, -65536
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_yieldk(%struct.lua_State*, i32, i64, i32 (%struct.lua_State*, i32, i64)*) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32 (%struct.lua_State*, i32, i64)*, align 8
  %9 = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 (%struct.lua_State*, i32, i64)* %3, i32 (%struct.lua_State*, i32, i64)** %8, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 8
  %12 = load %struct.CallInfo*, %struct.CallInfo** %11, align 8
  store %struct.CallInfo* %12, %struct.CallInfo** %9, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 19
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, -65536
  %18 = icmp eq i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

; <label>:25:                                     ; preds = %4
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 7
  %29 = load %struct.global_State*, %struct.global_State** %28, align 8
  %30 = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 38
  %31 = load %struct.lua_State*, %struct.lua_State** %30, align 8
  %32 = icmp ne %struct.lua_State* %26, %31
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %25
  %34 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0)) #9
  unreachable

; <label>:35:                                     ; preds = %25
  %36 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0)) #9
  unreachable

; <label>:37:                                     ; preds = %4
  %38 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 3
  store i8 1, i8* %39, align 2
  %40 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %41 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %40, i32 0, i32 7
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %43, 2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

; <label>:46:                                     ; preds = %37
  %47 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %48 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %47, i32 0, i32 5
  %49 = bitcast %union.anon.2* %48 to i32*
  store i32 0, i32* %49, align 8
  br label %69

; <label>:50:                                     ; preds = %37
  %51 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %8, align 8
  %52 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %53 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %52, i32 0, i32 4
  %54 = bitcast %union.anon.0* %53 to %struct.anon.1*
  %55 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %54, i32 0, i32 0
  store i32 (%struct.lua_State*, i32, i64)* %51, i32 (%struct.lua_State*, i32, i64)** %55, align 8
  %56 = icmp ne i32 (%struct.lua_State*, i32, i64)* %51, null
  br i1 %56, label %57, label %63

; <label>:57:                                     ; preds = %50
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %60 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %59, i32 0, i32 4
  %61 = bitcast %union.anon.0* %60 to %struct.anon.1*
  %62 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %61, i32 0, i32 2
  store i64 %58, i64* %62, align 8
  br label %63

; <label>:63:                                     ; preds = %57, %50
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %66 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %65, i32 0, i32 5
  %67 = bitcast %union.anon.2* %66 to i32*
  store i32 %64, i32* %67, align 8
  %68 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaD_throw(%struct.lua_State* %68, i32 1) #9
  unreachable

; <label>:69:                                     ; preds = %46
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca void (%struct.lua_State*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.CallInfo*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca %union.StackValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store void (%struct.lua_State*, i8*)* %1, void (%struct.lua_State*, i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 8
  %18 = load %struct.CallInfo*, %struct.CallInfo** %17, align 8
  store %struct.CallInfo* %18, %struct.CallInfo** %12, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 4
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %13, align 1
  %22 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 18
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 18
  store i64 %25, i64* %27, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %29 = load void (%struct.lua_State*, i8*)*, void (%struct.lua_State*, i8*)** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @luaD_rawrunprotected(%struct.lua_State* %28, void (%struct.lua_State*, i8*)* %29, i8* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %68

; <label>:39:                                     ; preds = %5
  %40 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 11
  %42 = load %union.StackValue*, %union.StackValue** %41, align 8
  %43 = bitcast %union.StackValue* %42 to i8*
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = bitcast i8* %45 to %union.StackValue*
  store %union.StackValue* %46, %union.StackValue** %15, align 8
  %47 = load %struct.CallInfo*, %struct.CallInfo** %12, align 8
  %48 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %49 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %48, i32 0, i32 8
  store %struct.CallInfo* %47, %struct.CallInfo** %49, align 8
  %50 = load i8, i8* %13, align 1
  %51 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %52 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %51, i32 0, i32 4
  store i8 %50, i8* %52, align 1
  %53 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %54 = load %union.StackValue*, %union.StackValue** %15, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @luaF_close(%struct.lua_State* %53, %union.StackValue* %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %57, i32 0, i32 11
  %59 = load %union.StackValue*, %union.StackValue** %58, align 8
  %60 = bitcast %union.StackValue* %59 to i8*
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = bitcast i8* %62 to %union.StackValue*
  store %union.StackValue* %63, %union.StackValue** %15, align 8
  %64 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load %union.StackValue*, %union.StackValue** %15, align 8
  call void @luaD_seterrorobj(%struct.lua_State* %64, i32 %65, %union.StackValue* %66)
  %67 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void @luaD_shrinkstack(%struct.lua_State* %67)
  br label %68

; <label>:68:                                     ; preds = %39, %5
  %69 = load i64, i64* %14, align 8
  %70 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %70, i32 0, i32 18
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %11, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaD_protectedparser(%struct.lua_State*, %struct.Zio*, i8*, i8*) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.Zio*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.SParser, align 8
  %10 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.Zio* %1, %struct.Zio** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 19
  %13 = load i32, i32* %12, align 8
  %14 = add i32 %13, 65536
  store i32 %14, i32* %12, align 8
  %15 = load %struct.Zio*, %struct.Zio** %6, align 8
  %16 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 0
  store %struct.Zio* %15, %struct.Zio** %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 4
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 3
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %22 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %22, i32 0, i32 0
  store %struct.Vardesc* null, %struct.Vardesc** %23, align 8
  %24 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %25 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %25, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %28 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %28, i32 0, i32 0
  store %struct.Labeldesc* null, %struct.Labeldesc** %29, align 8
  %30 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %31 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %31, i32 0, i32 2
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %34 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %34, i32 0, i32 0
  store %struct.Labeldesc* null, %struct.Labeldesc** %35, align 8
  %36 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %37 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %37, i32 0, i32 2
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 1
  %40 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %39, i32 0, i32 0
  store i8* null, i8** %40, align 8
  %41 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 1
  %42 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %44 = bitcast %struct.SParser* %9 to i8*
  %45 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i32 0, i32 6
  %47 = load %union.StackValue*, %union.StackValue** %46, align 8
  %48 = bitcast %union.StackValue* %47 to i8*
  %49 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %49, i32 0, i32 11
  %51 = load %union.StackValue*, %union.StackValue** %50, align 8
  %52 = bitcast %union.StackValue* %51 to i8*
  %53 = ptrtoint i8* %48 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %56, i32 0, i32 18
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @luaD_pcall(%struct.lua_State* %43, void (%struct.lua_State*, i8*)* @f_parser, i8* %44, i64 %55, i64 %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %61 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 1
  %62 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 1
  %65 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = mul i64 %66, 1
  %68 = call i8* @luaM_saferealloc_(%struct.lua_State* %60, i8* %63, i64 %67, i64 0)
  %69 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 1
  %70 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %74 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %75 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %75, i32 0, i32 0
  %77 = load %struct.Vardesc*, %struct.Vardesc** %76, align 8
  %78 = bitcast %struct.Vardesc* %77 to i8*
  %79 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %80 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 2
  call void @luaM_free_(%struct.lua_State* %73, i8* %78, i64 %84)
  %85 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %86 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %87 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %87, i32 0, i32 0
  %89 = load %struct.Labeldesc*, %struct.Labeldesc** %88, align 8
  %90 = bitcast %struct.Labeldesc* %89 to i8*
  %91 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %92 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 24
  call void @luaM_free_(%struct.lua_State* %85, i8* %90, i64 %96)
  %97 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %98 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %99 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %99, i32 0, i32 0
  %101 = load %struct.Labeldesc*, %struct.Labeldesc** %100, align 8
  %102 = bitcast %struct.Labeldesc* %101 to i8*
  %103 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %104 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 24
  call void @luaM_free_(%struct.lua_State* %97, i8* %102, i64 %108)
  %109 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %110 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %109, i32 0, i32 19
  %111 = load i32, i32* %110, align 8
  %112 = sub i32 %111, 65536
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* %10, align 4
  ret i32 %113
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f_parser(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.LClosure*, align 8
  %6 = alloca %struct.SParser*, align 8
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.SParser*
  store %struct.SParser* %9, %struct.SParser** %6, align 8
  %10 = load %struct.SParser*, %struct.SParser** %6, align 8
  %11 = getelementptr inbounds %struct.SParser, %struct.SParser* %10, i32 0, i32 0
  %12 = load %struct.Zio*, %struct.Zio** %11, align 8
  %13 = getelementptr inbounds %struct.Zio, %struct.Zio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = icmp ugt i64 %14, 0
  br i1 %16, label %17, label %26

; <label>:17:                                     ; preds = %2
  %18 = load %struct.SParser*, %struct.SParser** %6, align 8
  %19 = getelementptr inbounds %struct.SParser, %struct.SParser* %18, i32 0, i32 0
  %20 = load %struct.Zio*, %struct.Zio** %19, align 8
  %21 = getelementptr inbounds %struct.Zio, %struct.Zio* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %21, align 8
  %24 = load i8, i8* %22, align 1
  %25 = zext i8 %24 to i32
  br label %31

; <label>:26:                                     ; preds = %2
  %27 = load %struct.SParser*, %struct.SParser** %6, align 8
  %28 = getelementptr inbounds %struct.SParser, %struct.SParser* %27, i32 0, i32 0
  %29 = load %struct.Zio*, %struct.Zio** %28, align 8
  %30 = call i32 @luaZ_fill(%struct.Zio* %29)
  br label %31

; <label>:31:                                     ; preds = %26, %17
  %32 = phi i32 [ %25, %17 ], [ %30, %26 ]
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %50

; <label>:37:                                     ; preds = %31
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %39 = load %struct.SParser*, %struct.SParser** %6, align 8
  %40 = getelementptr inbounds %struct.SParser, %struct.SParser* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  call void @checkmode(%struct.lua_State* %38, i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %43 = load %struct.SParser*, %struct.SParser** %6, align 8
  %44 = getelementptr inbounds %struct.SParser, %struct.SParser* %43, i32 0, i32 0
  %45 = load %struct.Zio*, %struct.Zio** %44, align 8
  %46 = load %struct.SParser*, %struct.SParser** %6, align 8
  %47 = getelementptr inbounds %struct.SParser, %struct.SParser* %46, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  %49 = call %struct.LClosure* @luaU_undump(%struct.lua_State* %42, %struct.Zio* %45, i8* %48)
  store %struct.LClosure* %49, %struct.LClosure** %5, align 8
  br label %68

; <label>:50:                                     ; preds = %31
  %51 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %52 = load %struct.SParser*, %struct.SParser** %6, align 8
  %53 = getelementptr inbounds %struct.SParser, %struct.SParser* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  call void @checkmode(%struct.lua_State* %51, i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  %55 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %56 = load %struct.SParser*, %struct.SParser** %6, align 8
  %57 = getelementptr inbounds %struct.SParser, %struct.SParser* %56, i32 0, i32 0
  %58 = load %struct.Zio*, %struct.Zio** %57, align 8
  %59 = load %struct.SParser*, %struct.SParser** %6, align 8
  %60 = getelementptr inbounds %struct.SParser, %struct.SParser* %59, i32 0, i32 1
  %61 = load %struct.SParser*, %struct.SParser** %6, align 8
  %62 = getelementptr inbounds %struct.SParser, %struct.SParser* %61, i32 0, i32 2
  %63 = load %struct.SParser*, %struct.SParser** %6, align 8
  %64 = getelementptr inbounds %struct.SParser, %struct.SParser* %63, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call %struct.LClosure* @luaY_parser(%struct.lua_State* %55, %struct.Zio* %58, %struct.Mbuffer* %60, %struct.Dyndata* %62, i8* %65, i32 %66)
  store %struct.LClosure* %67, %struct.LClosure** %5, align 8
  br label %68

; <label>:68:                                     ; preds = %50, %37
  %69 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %70 = load %struct.LClosure*, %struct.LClosure** %5, align 8
  call void @luaF_initupvals(%struct.lua_State* %69, %struct.LClosure* %70)
  ret void
}

declare hidden i8* @luaM_saferealloc_(%struct.lua_State*, i8*, i64, i64) #1

declare hidden void @luaM_free_(%struct.lua_State*, i8*, i64) #1

declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.CallInfo* @findpcall(%struct.lua_State*) #0 {
  %2 = alloca %struct.CallInfo*, align 8
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 8
  %7 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  store %struct.CallInfo* %7, %struct.CallInfo** %4, align 8
  br label %8

; <label>:8:                                      ; preds = %21, %1
  %9 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %10 = icmp ne %struct.CallInfo* %9, null
  br i1 %10, label %11, label %25

; <label>:11:                                     ; preds = %8
  %12 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %13 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i32 0, i32 7
  %14 = load i16, i16* %13, align 2
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %11
  %19 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  store %struct.CallInfo* %19, %struct.CallInfo** %2, align 8
  br label %26

; <label>:20:                                     ; preds = %11
  br label %21

; <label>:21:                                     ; preds = %20
  %22 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %23 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %22, i32 0, i32 2
  %24 = load %struct.CallInfo*, %struct.CallInfo** %23, align 8
  store %struct.CallInfo* %24, %struct.CallInfo** %4, align 8
  br label %8

; <label>:25:                                     ; preds = %8
  store %struct.CallInfo* null, %struct.CallInfo** %2, align 8
  br label %26

; <label>:26:                                     ; preds = %25, %18
  %27 = load %struct.CallInfo*, %struct.CallInfo** %2, align 8
  ret %struct.CallInfo* %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finishCcall(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.CallInfo*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 8
  %9 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8
  store %struct.CallInfo* %9, %struct.CallInfo** %5, align 8
  %10 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %11 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %10, i32 0, i32 7
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

; <label>:16:                                     ; preds = %2
  %17 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %18 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %17, i32 0, i32 7
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, -9
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %18, align 2
  %23 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %24 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %23, i32 0, i32 4
  %25 = bitcast %union.anon.0* %24 to %struct.anon.1*
  %26 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %28, i32 0, i32 18
  store i64 %27, i64* %29, align 8
  br label %30

; <label>:30:                                     ; preds = %16, %2
  %31 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %31, i32 0, i32 6
  %33 = load i16, i16* %32, align 4
  %34 = sext i16 %33 to i32
  %35 = icmp sle i32 %34, -1
  br i1 %35, label %36, label %54

; <label>:36:                                     ; preds = %30
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 8
  %39 = load %struct.CallInfo*, %struct.CallInfo** %38, align 8
  %40 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %39, i32 0, i32 1
  %41 = load %union.StackValue*, %union.StackValue** %40, align 8
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 6
  %44 = load %union.StackValue*, %union.StackValue** %43, align 8
  %45 = icmp ult %union.StackValue* %41, %44
  br i1 %45, label %46, label %54

; <label>:46:                                     ; preds = %36
  %47 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 6
  %49 = load %union.StackValue*, %union.StackValue** %48, align 8
  %50 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %51 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %50, i32 0, i32 8
  %52 = load %struct.CallInfo*, %struct.CallInfo** %51, align 8
  %53 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %52, i32 0, i32 1
  store %union.StackValue* %49, %union.StackValue** %53, align 8
  br label %54

; <label>:54:                                     ; preds = %46, %36, %30
  %55 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %56 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %55, i32 0, i32 4
  %57 = bitcast %union.anon.0* %56 to %struct.anon.1*
  %58 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %57, i32 0, i32 0
  %59 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %58, align 8
  %60 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %63 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %62, i32 0, i32 4
  %64 = bitcast %union.anon.0* %63 to %struct.anon.1*
  %65 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 %59(%struct.lua_State* %60, i32 %61, i64 %66)
  store i32 %67, i32* %6, align 4
  %68 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %69 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %70 = load i32, i32* %6, align 4
  call void @luaD_poscall(%struct.lua_State* %68, %struct.CallInfo* %69, i32 %70)
  ret void
}

declare hidden void @luaV_finishOp(%struct.lua_State*) #1

declare hidden i32 @luaZ_fill(%struct.Zio*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkmode(%struct.lua_State*, i8*, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %23

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = call i8* @strchr(i8* %10, i32 %14) #11
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %9
  %18 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0), i8* %19, i8* %20)
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaD_throw(%struct.lua_State* %22, i32 3) #9
  unreachable

; <label>:23:                                     ; preds = %9, %3
  ret void
}

declare hidden %struct.LClosure* @luaU_undump(%struct.lua_State*, %struct.Zio*, i8*) #1

declare hidden %struct.LClosure* @luaY_parser(%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Dyndata*, i8*, i32) #1

declare hidden void @luaF_initupvals(%struct.lua_State*, %struct.LClosure*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #7

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind returns_twice }
attributes #11 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
