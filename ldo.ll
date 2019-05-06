; ModuleID = 'ldo.c'
source_filename = "ldo.c"
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
%struct.lua_longjmp = type { %struct.lua_longjmp*, [1 x %struct.__jmp_buf_tag], i32 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i64, i16, i16 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%union.GCUnion = type { %struct.lua_State }
%struct.anon.1 = type { %struct.lua_TValue*, i32* }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.SParser = type { %struct.Zio*, %struct.Mbuffer, %struct.Dyndata, i8*, i8* }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.Dyndata = type { %struct.anon.5, %struct.Labellist, %struct.Labellist }
%struct.anon.5 = type { %struct.Vardesc*, i32, i32 }
%struct.Vardesc = type { i16 }
%struct.Labellist = type { %struct.Labeldesc*, i32, i32 }
%struct.Labeldesc = type { %struct.TString*, i32, i32, i8 }

@.str = private unnamed_addr constant [15 x i8] c"stack overflow\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"cannot resume non-suspended coroutine\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot resume dead coroutine\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"C stack overflow\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"attempt to yield across a C-call boundary\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"attempt to yield from outside a coroutine\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"error in error handling\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"attempt to load a %s chunk (mode is '%s')\00", align 1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define hidden void @luaD_throw(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.global_State*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 14
  %9 = load %struct.lua_longjmp*, %struct.lua_longjmp** %8, align 8
  %10 = icmp ne %struct.lua_longjmp* %9, null
  br i1 %10, label %11, label %22

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 14
  %15 = load %struct.lua_longjmp*, %struct.lua_longjmp** %14, align 8
  %16 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %15, i32 0, i32 2
  store volatile i32 %12, i32* %16, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 14
  %19 = load %struct.lua_longjmp*, %struct.lua_longjmp** %18, align 8
  %20 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %19, i32 0, i32 1
  %21 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %20, i32 0, i32 0
  call void @longjmp(%struct.__jmp_buf_tag* %21, i32 1) #8
  unreachable

; <label>:22:                                     ; preds = %2
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 6
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8
  store %struct.global_State* %25, %struct.global_State** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = trunc i32 %26 to i8
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %28, i32 0, i32 4
  store i8 %27, i8* %29, align 4
  %30 = load %struct.global_State*, %struct.global_State** %5, align 8
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %30, i32 0, i32 28
  %32 = load %struct.lua_State*, %struct.lua_State** %31, align 8
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 14
  %34 = load %struct.lua_longjmp*, %struct.lua_longjmp** %33, align 8
  %35 = icmp ne %struct.lua_longjmp* %34, null
  br i1 %35, label %36, label %55

; <label>:36:                                     ; preds = %22
  %37 = load %struct.global_State*, %struct.global_State** %5, align 8
  %38 = getelementptr inbounds %struct.global_State, %struct.global_State* %37, i32 0, i32 28
  %39 = load %struct.lua_State*, %struct.lua_State** %38, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 5
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %40, align 8
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i32 1
  store %struct.lua_TValue* %42, %struct.lua_TValue** %40, align 8
  store %struct.lua_TValue* %41, %struct.lua_TValue** %6, align 8
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %44 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i32 0, i32 5
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %45, align 8
  %47 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i64 -1
  %48 = bitcast %struct.lua_TValue* %43 to i8*
  %49 = bitcast %struct.lua_TValue* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 16, i32 8, i1 false)
  %50 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %51 = load %struct.global_State*, %struct.global_State** %5, align 8
  %52 = getelementptr inbounds %struct.global_State, %struct.global_State* %51, i32 0, i32 28
  %53 = load %struct.lua_State*, %struct.lua_State** %52, align 8
  %54 = load i32, i32* %4, align 4
  call void @luaD_throw(%struct.lua_State* %53, i32 %54) #9
  unreachable

; <label>:55:                                     ; preds = %22
  %56 = load %struct.global_State*, %struct.global_State** %5, align 8
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %56, i32 0, i32 27
  %58 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %57, align 8
  %59 = icmp ne i32 (%struct.lua_State*)* %58, null
  br i1 %59, label %60, label %89

; <label>:60:                                     ; preds = %55
  %61 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %63, i32 0, i32 5
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8
  call void @seterrorobj(%struct.lua_State* %61, i32 %62, %struct.lua_TValue* %65)
  %66 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %66, i32 0, i32 7
  %68 = load %struct.CallInfo*, %struct.CallInfo** %67, align 8
  %69 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %68, i32 0, i32 1
  %70 = load %struct.lua_TValue*, %struct.lua_TValue** %69, align 8
  %71 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %72 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %71, i32 0, i32 5
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %72, align 8
  %74 = icmp ult %struct.lua_TValue* %70, %73
  br i1 %74, label %75, label %83

; <label>:75:                                     ; preds = %60
  %76 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %77 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %76, i32 0, i32 5
  %78 = load %struct.lua_TValue*, %struct.lua_TValue** %77, align 8
  %79 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %79, i32 0, i32 7
  %81 = load %struct.CallInfo*, %struct.CallInfo** %80, align 8
  %82 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %81, i32 0, i32 1
  store %struct.lua_TValue* %78, %struct.lua_TValue** %82, align 8
  br label %83

; <label>:83:                                     ; preds = %75, %60
  %84 = load %struct.global_State*, %struct.global_State** %5, align 8
  %85 = getelementptr inbounds %struct.global_State, %struct.global_State* %84, i32 0, i32 27
  %86 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %85, align 8
  %87 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %88 = call i32 %86(%struct.lua_State* %87)
  br label %89

; <label>:89:                                     ; preds = %83, %55
  call void @abort() #8
  unreachable
                                                  ; No predecessors!
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @longjmp(%struct.__jmp_buf_tag*, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seterrorobj(%struct.lua_State*, i32, %struct.lua_TValue*) #3 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.TString*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.TString*, align 8
  %11 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.lua_TValue* %2, %struct.lua_TValue** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %50 [
    i32 4, label %13
    i32 6, label %33
  ]

; <label>:13:                                     ; preds = %3
  %14 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  store %struct.lua_TValue* %14, %struct.lua_TValue** %7, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 6
  %17 = load %struct.global_State*, %struct.global_State** %16, align 8
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i32 0, i32 30
  %19 = load %struct.TString*, %struct.TString** %18, align 8
  store %struct.TString* %19, %struct.TString** %8, align 8
  %20 = load %struct.TString*, %struct.TString** %8, align 8
  %21 = bitcast %struct.TString* %20 to %union.GCUnion*
  %22 = bitcast %union.GCUnion* %21 to %struct.GCObject*
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 0
  %25 = bitcast %union.Value* %24 to %struct.GCObject**
  store %struct.GCObject* %22, %struct.GCObject** %25, align 8
  %26 = load %struct.TString*, %struct.TString** %8, align 8
  %27 = getelementptr inbounds %struct.TString, %struct.TString* %26, i32 0, i32 1
  %28 = load i8, i8* %27, align 8
  %29 = zext i8 %28 to i32
  %30 = or i32 %29, 64
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  br label %60

; <label>:33:                                     ; preds = %3
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  store %struct.lua_TValue* %34, %struct.lua_TValue** %9, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %36 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i64 23)
  store %struct.TString* %36, %struct.TString** %10, align 8
  %37 = load %struct.TString*, %struct.TString** %10, align 8
  %38 = bitcast %struct.TString* %37 to %union.GCUnion*
  %39 = bitcast %union.GCUnion* %38 to %struct.GCObject*
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i32 0, i32 0
  %42 = bitcast %union.Value* %41 to %struct.GCObject**
  store %struct.GCObject* %39, %struct.GCObject** %42, align 8
  %43 = load %struct.TString*, %struct.TString** %10, align 8
  %44 = getelementptr inbounds %struct.TString, %struct.TString* %43, i32 0, i32 1
  %45 = load i8, i8* %44, align 8
  %46 = zext i8 %45 to i32
  %47 = or i32 %46, 64
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %60

; <label>:50:                                     ; preds = %3
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  store %struct.lua_TValue* %51, %struct.lua_TValue** %11, align 8
  %52 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %53 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %54 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %53, i32 0, i32 5
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %54, align 8
  %56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i64 -1
  %57 = bitcast %struct.lua_TValue* %52 to i8*
  %58 = bitcast %struct.lua_TValue* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 16, i32 8, i1 false)
  %59 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  br label %60

; <label>:60:                                     ; preds = %50, %33, %13
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i64 1
  %63 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %63, i32 0, i32 5
  store %struct.lua_TValue* %62, %struct.lua_TValue** %64, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*) #3 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca void (%struct.lua_State*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.lua_longjmp, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store void (%struct.lua_State*, i8*)* %1, void (%struct.lua_State*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 22
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %7, align 2
  %12 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %8, i32 0, i32 2
  store volatile i32 0, i32* %12, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 14
  %15 = load %struct.lua_longjmp*, %struct.lua_longjmp** %14, align 8
  %16 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %8, i32 0, i32 0
  store %struct.lua_longjmp* %15, %struct.lua_longjmp** %16, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 14
  store %struct.lua_longjmp* %8, %struct.lua_longjmp** %18, align 8
  %19 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %8, i32 0, i32 1
  %20 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %19, i32 0, i32 0
  %21 = call i32 @_setjmp(%struct.__jmp_buf_tag* %20) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

; <label>:23:                                     ; preds = %3
  %24 = load void (%struct.lua_State*, i8*)*, void (%struct.lua_State*, i8*)** %5, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %26 = load i8*, i8** %6, align 8
  call void %24(%struct.lua_State* %25, i8* %26)
  br label %27

; <label>:27:                                     ; preds = %23, %3
  %28 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %8, i32 0, i32 0
  %29 = load %struct.lua_longjmp*, %struct.lua_longjmp** %28, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %30, i32 0, i32 14
  store %struct.lua_longjmp* %29, %struct.lua_longjmp** %31, align 8
  %32 = load i16, i16* %7, align 2
  %33 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %33, i32 0, i32 22
  store i16 %32, i16* %34, align 2
  %35 = getelementptr inbounds %struct.lua_longjmp, %struct.lua_longjmp* %8, i32 0, i32 2
  %36 = load volatile i32, i32* %35, align 8
  ret i32 %36
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #4

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaD_reallocstack(%struct.lua_State*, i32) #3 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 10
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %9, %struct.lua_TValue** %5, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 18
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 10
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8
  %17 = bitcast %struct.lua_TValue* %16 to i8*
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 18
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 16
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 16
  %26 = call i8* @luaM_realloc_(%struct.lua_State* %13, i8* %17, i64 %22, i64 %25)
  %27 = bitcast i8* %26 to %struct.lua_TValue*
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %28, i32 0, i32 10
  store %struct.lua_TValue* %27, %struct.lua_TValue** %29, align 8
  br label %30

; <label>:30:                                     ; preds = %42, %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %45

; <label>:34:                                     ; preds = %30
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 10
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i64 %39
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i32 0, i32 1
  store i32 0, i32* %41, align 8
  br label %42

; <label>:42:                                     ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %30

; <label>:45:                                     ; preds = %30
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 18
  store i32 %46, i32* %48, align 8
  %49 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %49, i32 0, i32 10
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %51, i64 %53
  %55 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %54, i64 -5
  %56 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %56, i32 0, i32 9
  store %struct.lua_TValue* %55, %struct.lua_TValue** %57, align 8
  %58 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  call void @correctstack(%struct.lua_State* %58, %struct.lua_TValue* %59)
  ret void
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @correctstack(%struct.lua_State*, %struct.lua_TValue*) #3 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca %struct.CallInfo*, align 8
  %6 = alloca %struct.UpVal*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %4, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 5
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %11 = ptrtoint %struct.lua_TValue* %9 to i64
  %12 = ptrtoint %struct.lua_TValue* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 16
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 10
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 %14
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 5
  store %struct.lua_TValue* %18, %struct.lua_TValue** %20, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 11
  %23 = load %struct.UpVal*, %struct.UpVal** %22, align 8
  store %struct.UpVal* %23, %struct.UpVal** %6, align 8
  br label %24

; <label>:24:                                     ; preds = %42, %2
  %25 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %26 = icmp ne %struct.UpVal* %25, null
  br i1 %26, label %27, label %48

; <label>:27:                                     ; preds = %24
  %28 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %29 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %28, i32 0, i32 0
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %29, align 8
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %32 = ptrtoint %struct.lua_TValue* %30 to i64
  %33 = ptrtoint %struct.lua_TValue* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 16
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 10
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8
  %39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i64 %35
  %40 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %41 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %40, i32 0, i32 0
  store %struct.lua_TValue* %39, %struct.lua_TValue** %41, align 8
  br label %42

; <label>:42:                                     ; preds = %27
  %43 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %44 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %43, i32 0, i32 2
  %45 = bitcast %union.anon.3* %44 to %struct.anon.4*
  %46 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %45, i32 0, i32 0
  %47 = load %struct.UpVal*, %struct.UpVal** %46, align 8
  store %struct.UpVal* %47, %struct.UpVal** %6, align 8
  br label %24

; <label>:48:                                     ; preds = %24
  %49 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %49, i32 0, i32 7
  %51 = load %struct.CallInfo*, %struct.CallInfo** %50, align 8
  store %struct.CallInfo* %51, %struct.CallInfo** %5, align 8
  br label %52

; <label>:52:                                     ; preds = %110, %48
  %53 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %54 = icmp ne %struct.CallInfo* %53, null
  br i1 %54, label %55, label %114

; <label>:55:                                     ; preds = %52
  %56 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %57 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %56, i32 0, i32 1
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %57, align 8
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %60 = ptrtoint %struct.lua_TValue* %58 to i64
  %61 = ptrtoint %struct.lua_TValue* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 16
  %64 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %64, i32 0, i32 10
  %66 = load %struct.lua_TValue*, %struct.lua_TValue** %65, align 8
  %67 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %66, i64 %63
  %68 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %69 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %68, i32 0, i32 1
  store %struct.lua_TValue* %67, %struct.lua_TValue** %69, align 8
  %70 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %71 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %70, i32 0, i32 0
  %72 = load %struct.lua_TValue*, %struct.lua_TValue** %71, align 8
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %74 = ptrtoint %struct.lua_TValue* %72 to i64
  %75 = ptrtoint %struct.lua_TValue* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 16
  %78 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %78, i32 0, i32 10
  %80 = load %struct.lua_TValue*, %struct.lua_TValue** %79, align 8
  %81 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %80, i64 %77
  %82 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %83 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %82, i32 0, i32 0
  store %struct.lua_TValue* %81, %struct.lua_TValue** %83, align 8
  %84 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %85 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %84, i32 0, i32 7
  %86 = load i16, i16* %85, align 2
  %87 = zext i16 %86 to i32
  %88 = and i32 %87, 2
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %109

; <label>:90:                                     ; preds = %55
  %91 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %92 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %91, i32 0, i32 4
  %93 = bitcast %union.anon.0* %92 to %struct.anon.1*
  %94 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %93, i32 0, i32 0
  %95 = load %struct.lua_TValue*, %struct.lua_TValue** %94, align 8
  %96 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %97 = ptrtoint %struct.lua_TValue* %95 to i64
  %98 = ptrtoint %struct.lua_TValue* %96 to i64
  %99 = sub i64 %97, %98
  %100 = sdiv exact i64 %99, 16
  %101 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %102 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %101, i32 0, i32 10
  %103 = load %struct.lua_TValue*, %struct.lua_TValue** %102, align 8
  %104 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %103, i64 %100
  %105 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %106 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %105, i32 0, i32 4
  %107 = bitcast %union.anon.0* %106 to %struct.anon.1*
  %108 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %107, i32 0, i32 0
  store %struct.lua_TValue* %104, %struct.lua_TValue** %108, align 8
  br label %109

; <label>:109:                                    ; preds = %90, %55
  br label %110

; <label>:110:                                    ; preds = %109
  %111 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %112 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %111, i32 0, i32 2
  %113 = load %struct.CallInfo*, %struct.CallInfo** %112, align 8
  store %struct.CallInfo* %113, %struct.CallInfo** %5, align 8
  br label %52

; <label>:114:                                    ; preds = %52
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaD_growstack(%struct.lua_State*, i32) #3 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 18
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 1000000
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %2
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaD_throw(%struct.lua_State* %14, i32 6) #9
  unreachable

; <label>:15:                                     ; preds = %2
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 5
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 10
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8
  %22 = ptrtoint %struct.lua_TValue* %18 to i64
  %23 = ptrtoint %struct.lua_TValue* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 16
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %26, %27
  %29 = add nsw i32 %28, 5
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 2, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 1000000
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %15
  store i32 1000000, i32* %7, align 4
  br label %35

; <label>:35:                                     ; preds = %34, %15
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %7, align 4
  br label %41

; <label>:41:                                     ; preds = %39, %35
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 1000000
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %41
  %45 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaD_reallocstack(%struct.lua_State* %45, i32 1000200)
  %46 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)) #9
  unreachable

; <label>:47:                                     ; preds = %41
  %48 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %49 = load i32, i32* %7, align 4
  call void @luaD_reallocstack(%struct.lua_State* %48, i32 %49)
  br label %50

; <label>:50:                                     ; preds = %47
  br label %51

; <label>:51:                                     ; preds = %50
  ret void
}

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaD_shrinkstack(%struct.lua_State*) #3 {
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
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 18
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 1000000
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %15
  %21 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaE_freeCI(%struct.lua_State* %21)
  br label %24

; <label>:22:                                     ; preds = %15
  %23 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaE_shrinkCI(%struct.lua_State* %23)
  br label %24

; <label>:24:                                     ; preds = %22, %20
  %25 = load i32, i32* %3, align 4
  %26 = icmp sle i32 %25, 999995
  br i1 %26, label %27, label %36

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 18
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %27
  %34 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %35 = load i32, i32* %4, align 4
  call void @luaD_reallocstack(%struct.lua_State* %34, i32 %35)
  br label %37

; <label>:36:                                     ; preds = %27, %24
  br label %37

; <label>:37:                                     ; preds = %36, %33
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stackinuse(%struct.lua_State*) #3 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.CallInfo*, align 8
  %4 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 5
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  store %struct.lua_TValue* %7, %struct.lua_TValue** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 7
  %10 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  store %struct.CallInfo* %10, %struct.CallInfo** %3, align 8
  br label %11

; <label>:11:                                     ; preds = %25, %1
  %12 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %13 = icmp ne %struct.CallInfo* %12, null
  br i1 %13, label %14, label %29

; <label>:14:                                     ; preds = %11
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %16 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %17 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %16, i32 0, i32 1
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8
  %19 = icmp ult %struct.lua_TValue* %15, %18
  br i1 %19, label %20, label %24

; <label>:20:                                     ; preds = %14
  %21 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %22 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %21, i32 0, i32 1
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %22, align 8
  store %struct.lua_TValue* %23, %struct.lua_TValue** %4, align 8
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
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %31 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 10
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8
  %34 = ptrtoint %struct.lua_TValue* %30 to i64
  %35 = ptrtoint %struct.lua_TValue* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 16
  %38 = trunc i64 %37 to i32
  %39 = add nsw i32 %38, 1
  ret i32 %39
}

declare hidden void @luaE_freeCI(%struct.lua_State*) #5

declare hidden void @luaE_shrinkCI(%struct.lua_State*) #5

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaD_inctop(%struct.lua_State*) #3 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 9
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 5
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %9 = ptrtoint %struct.lua_TValue* %5 to i64
  %10 = ptrtoint %struct.lua_TValue* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 16
  %13 = icmp sle i64 %12, 1
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %1
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaD_growstack(%struct.lua_State* %15, i32 1)
  br label %17

; <label>:16:                                     ; preds = %1
  br label %17

; <label>:17:                                     ; preds = %16, %14
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 5
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 1
  store %struct.lua_TValue* %21, %struct.lua_TValue** %19, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaD_hook(%struct.lua_State*, i32, i32) #3 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca void (%struct.lua_State*, %struct.lua_Debug*)*, align 8
  %8 = alloca %struct.CallInfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.lua_Debug, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 16
  %14 = load volatile void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %13, align 8
  store void (%struct.lua_State*, %struct.lua_Debug*)* %14, void (%struct.lua_State*, %struct.lua_Debug*)** %7, align 8
  %15 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %7, align 8
  %16 = icmp ne void (%struct.lua_State*, %struct.lua_Debug*)* %15, null
  br i1 %16, label %17, label %112

; <label>:17:                                     ; preds = %3
  %18 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 24
  %20 = load i8, i8* %19, align 4
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %112

; <label>:23:                                     ; preds = %17
  %24 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 7
  %26 = load %struct.CallInfo*, %struct.CallInfo** %25, align 8
  store %struct.CallInfo* %26, %struct.CallInfo** %8, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 5
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %28, align 8
  %30 = bitcast %struct.lua_TValue* %29 to i8*
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 10
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8
  %34 = bitcast %struct.lua_TValue* %33 to i8*
  %35 = ptrtoint i8* %30 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  store i64 %37, i64* %9, align 8
  %38 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8
  %39 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %38, i32 0, i32 1
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %39, align 8
  %41 = bitcast %struct.lua_TValue* %40 to i8*
  %42 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 10
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %43, align 8
  %45 = bitcast %struct.lua_TValue* %44 to i8*
  %46 = ptrtoint i8* %41 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  store i64 %48, i64* %10, align 8
  %49 = load i32, i32* %5, align 4
  %50 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %11, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %11, i32 0, i32 5
  store i32 %51, i32* %52, align 8
  %53 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8
  %54 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %11, i32 0, i32 13
  store %struct.CallInfo* %53, %struct.CallInfo** %54, align 8
  %55 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %55, i32 0, i32 9
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %56, align 8
  %58 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %58, i32 0, i32 5
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8
  %61 = ptrtoint %struct.lua_TValue* %57 to i64
  %62 = ptrtoint %struct.lua_TValue* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sdiv exact i64 %63, 16
  %65 = icmp sle i64 %64, 20
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %23
  %67 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaD_growstack(%struct.lua_State* %67, i32 20)
  br label %69

; <label>:68:                                     ; preds = %23
  br label %69

; <label>:69:                                     ; preds = %68, %66
  %70 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %70, i32 0, i32 5
  %72 = load %struct.lua_TValue*, %struct.lua_TValue** %71, align 8
  %73 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %72, i64 20
  %74 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8
  %75 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %74, i32 0, i32 1
  store %struct.lua_TValue* %73, %struct.lua_TValue** %75, align 8
  %76 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %77 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %76, i32 0, i32 24
  store i8 0, i8* %77, align 4
  %78 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8
  %79 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %78, i32 0, i32 7
  %80 = load i16, i16* %79, align 2
  %81 = zext i16 %80 to i32
  %82 = or i32 %81, 4
  %83 = trunc i32 %82 to i16
  store i16 %83, i16* %79, align 2
  %84 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %7, align 8
  %85 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void %84(%struct.lua_State* %85, %struct.lua_Debug* %11)
  %86 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %87 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %86, i32 0, i32 24
  store i8 1, i8* %87, align 4
  %88 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %89 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %88, i32 0, i32 10
  %90 = load %struct.lua_TValue*, %struct.lua_TValue** %89, align 8
  %91 = bitcast %struct.lua_TValue* %90 to i8*
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = bitcast i8* %93 to %struct.lua_TValue*
  %95 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8
  %96 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %95, i32 0, i32 1
  store %struct.lua_TValue* %94, %struct.lua_TValue** %96, align 8
  %97 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %98 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %97, i32 0, i32 10
  %99 = load %struct.lua_TValue*, %struct.lua_TValue** %98, align 8
  %100 = bitcast %struct.lua_TValue* %99 to i8*
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = bitcast i8* %102 to %struct.lua_TValue*
  %104 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %105 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %104, i32 0, i32 5
  store %struct.lua_TValue* %103, %struct.lua_TValue** %105, align 8
  %106 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8
  %107 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %106, i32 0, i32 7
  %108 = load i16, i16* %107, align 2
  %109 = zext i16 %108 to i32
  %110 = and i32 %109, -5
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* %107, align 2
  br label %112

; <label>:112:                                    ; preds = %69, %17, %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaD_poscall(%struct.lua_State*, %struct.CallInfo*, %struct.lua_TValue*, i32) #3 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.CallInfo*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.CallInfo* %1, %struct.CallInfo** %6, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %13 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i32 0, i32 6
  %14 = load i16, i16* %13, align 8
  %15 = sext i16 %14 to i32
  store i32 %15, i32* %10, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 23
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 6
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %55

; <label>:21:                                     ; preds = %4
  %22 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 23
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 2
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

; <label>:27:                                     ; preds = %21
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %29 = bitcast %struct.lua_TValue* %28 to i8*
  %30 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %30, i32 0, i32 10
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %31, align 8
  %33 = bitcast %struct.lua_TValue* %32 to i8*
  %34 = ptrtoint i8* %29 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  store i64 %36, i64* %11, align 8
  %37 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaD_hook(%struct.lua_State* %37, i32 1, i32 -1)
  %38 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 10
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %39, align 8
  %41 = bitcast %struct.lua_TValue* %40 to i8*
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = bitcast i8* %43 to %struct.lua_TValue*
  store %struct.lua_TValue* %44, %struct.lua_TValue** %7, align 8
  br label %45

; <label>:45:                                     ; preds = %27, %21
  %46 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %47 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %46, i32 0, i32 2
  %48 = load %struct.CallInfo*, %struct.CallInfo** %47, align 8
  %49 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %48, i32 0, i32 4
  %50 = bitcast %union.anon.0* %49 to %struct.anon.1*
  %51 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %54 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %53, i32 0, i32 8
  store i32* %52, i32** %54, align 8
  br label %55

; <label>:55:                                     ; preds = %45, %4
  %56 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %57 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %56, i32 0, i32 0
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %57, align 8
  store %struct.lua_TValue* %58, %struct.lua_TValue** %9, align 8
  %59 = load %struct.CallInfo*, %struct.CallInfo** %6, align 8
  %60 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %59, i32 0, i32 2
  %61 = load %struct.CallInfo*, %struct.CallInfo** %60, align 8
  %62 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %62, i32 0, i32 7
  store %struct.CallInfo* %61, %struct.CallInfo** %63, align 8
  %64 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %66 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @moveresults(%struct.lua_State* %64, %struct.lua_TValue* %65, %struct.lua_TValue* %66, i32 %67, i32 %68)
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moveresults(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, i32, i32) #3 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lua_TValue*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.lua_TValue*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.lua_TValue*, align 8
  %17 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  switch i32 %18, label %59 [
    i32 0, label %19
    i32 1, label %20
    i32 -1, label %31
  ]

; <label>:19:                                     ; preds = %5
  br label %122

; <label>:20:                                     ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %20
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %8, align 8
  br label %24

; <label>:24:                                     ; preds = %23, %20
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  store %struct.lua_TValue* %25, %struct.lua_TValue** %12, align 8
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %28 = bitcast %struct.lua_TValue* %26 to i8*
  %29 = bitcast %struct.lua_TValue* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false)
  %30 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  br label %122

; <label>:31:                                     ; preds = %5
  store i32 0, i32* %13, align 4
  br label %32

; <label>:32:                                     ; preds = %49, %31
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %52

; <label>:36:                                     ; preds = %32
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i64 %39
  store %struct.lua_TValue* %40, %struct.lua_TValue** %14, align 8
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i64 %44
  %46 = bitcast %struct.lua_TValue* %41 to i8*
  %47 = bitcast %struct.lua_TValue* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 16, i32 8, i1 false)
  %48 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  br label %49

; <label>:49:                                     ; preds = %36
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %32

; <label>:52:                                     ; preds = %32
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i64 %55
  %57 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %57, i32 0, i32 5
  store %struct.lua_TValue* %56, %struct.lua_TValue** %58, align 8
  store i32 0, i32* %6, align 4
  br label %129

; <label>:59:                                     ; preds = %5
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %85

; <label>:63:                                     ; preds = %59
  store i32 0, i32* %15, align 4
  br label %64

; <label>:64:                                     ; preds = %81, %63
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %84

; <label>:68:                                     ; preds = %64
  %69 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i64 %71
  store %struct.lua_TValue* %72, %struct.lua_TValue** %16, align 8
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %74 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %74, i64 %76
  %78 = bitcast %struct.lua_TValue* %73 to i8*
  %79 = bitcast %struct.lua_TValue* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 16, i32 8, i1 false)
  %80 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  br label %81

; <label>:81:                                     ; preds = %68
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %15, align 4
  br label %64

; <label>:84:                                     ; preds = %64
  br label %121

; <label>:85:                                     ; preds = %59
  store i32 0, i32* %15, align 4
  br label %86

; <label>:86:                                     ; preds = %103, %85
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %106

; <label>:90:                                     ; preds = %86
  %91 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %91, i64 %93
  store %struct.lua_TValue* %94, %struct.lua_TValue** %17, align 8
  %95 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8
  %96 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %96, i64 %98
  %100 = bitcast %struct.lua_TValue* %95 to i8*
  %101 = bitcast %struct.lua_TValue* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 16, i32 8, i1 false)
  %102 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  br label %103

; <label>:103:                                    ; preds = %90
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %15, align 4
  br label %86

; <label>:106:                                    ; preds = %86
  br label %107

; <label>:107:                                    ; preds = %117, %106
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %120

; <label>:111:                                    ; preds = %107
  %112 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %112, i64 %114
  %116 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %115, i32 0, i32 1
  store i32 0, i32* %116, align 8
  br label %117

; <label>:117:                                    ; preds = %111
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %107

; <label>:120:                                    ; preds = %107
  br label %121

; <label>:121:                                    ; preds = %120, %84
  br label %122

; <label>:122:                                    ; preds = %121, %24, %19
  %123 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %123, i64 %125
  %127 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %128 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %127, i32 0, i32 5
  store %struct.lua_TValue* %126, %struct.lua_TValue** %128, align 8
  store i32 1, i32* %6, align 4
  br label %129

; <label>:129:                                    ; preds = %122, %52
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaD_precall(%struct.lua_State*, %struct.lua_TValue*, i32) #3 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.lua_State*)*, align 8
  %9 = alloca %struct.CallInfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.lua_TValue*, align 8
  %13 = alloca %struct.Proto*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 63
  switch i32 %21, label %288 [
    i32 38, label %22
    i32 22, label %32
    i32 6, label %134
  ]

; <label>:22:                                     ; preds = %3
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 0
  %25 = bitcast %union.Value* %24 to %struct.GCObject**
  %26 = load %struct.GCObject*, %struct.GCObject** %25, align 8
  %27 = bitcast %struct.GCObject* %26 to %union.GCUnion*
  %28 = bitcast %union.GCUnion* %27 to %union.Closure*
  %29 = bitcast %union.Closure* %28 to %struct.CClosure*
  %30 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %29, i32 0, i32 5
  %31 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %30, align 8
  store i32 (%struct.lua_State*)* %31, i32 (%struct.lua_State*)** %8, align 8
  br label %37

; <label>:32:                                     ; preds = %3
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 0
  %35 = bitcast %union.Value* %34 to i32 (%struct.lua_State*)**
  %36 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %35, align 8
  store i32 (%struct.lua_State*)* %36, i32 (%struct.lua_State*)** %8, align 8
  br label %37

; <label>:37:                                     ; preds = %32, %22
  %38 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 9
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %39, align 8
  %41 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i32 0, i32 5
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %42, align 8
  %44 = ptrtoint %struct.lua_TValue* %40 to i64
  %45 = ptrtoint %struct.lua_TValue* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 16
  %48 = icmp sle i64 %47, 20
  br i1 %48, label %49, label %76

; <label>:49:                                     ; preds = %37
  %50 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %51 = bitcast %struct.lua_TValue* %50 to i8*
  %52 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %52, i32 0, i32 10
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8
  %55 = bitcast %struct.lua_TValue* %54 to i8*
  %56 = ptrtoint i8* %51 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  store i64 %58, i64* %11, align 8
  %59 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %59, i32 0, i32 6
  %61 = load %struct.global_State*, %struct.global_State** %60, align 8
  %62 = getelementptr inbounds %struct.global_State, %struct.global_State* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %67

; <label>:65:                                     ; preds = %49
  %66 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaC_step(%struct.lua_State* %66)
  br label %67

; <label>:67:                                     ; preds = %65, %49
  %68 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaD_growstack(%struct.lua_State* %68, i32 20)
  %69 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %70 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %69, i32 0, i32 10
  %71 = load %struct.lua_TValue*, %struct.lua_TValue** %70, align 8
  %72 = bitcast %struct.lua_TValue* %71 to i8*
  %73 = load i64, i64* %11, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = bitcast i8* %74 to %struct.lua_TValue*
  store %struct.lua_TValue* %75, %struct.lua_TValue** %6, align 8
  br label %77

; <label>:76:                                     ; preds = %37
  br label %77

; <label>:77:                                     ; preds = %76, %67
  %78 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %79 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %78, i32 0, i32 7
  %80 = load %struct.CallInfo*, %struct.CallInfo** %79, align 8
  %81 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %80, i32 0, i32 3
  %82 = load %struct.CallInfo*, %struct.CallInfo** %81, align 8
  %83 = icmp ne %struct.CallInfo* %82, null
  br i1 %83, label %84, label %90

; <label>:84:                                     ; preds = %77
  %85 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %86 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %85, i32 0, i32 7
  %87 = load %struct.CallInfo*, %struct.CallInfo** %86, align 8
  %88 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %87, i32 0, i32 3
  %89 = load %struct.CallInfo*, %struct.CallInfo** %88, align 8
  br label %93

; <label>:90:                                     ; preds = %77
  %91 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %92 = call %struct.CallInfo* @luaE_extendCI(%struct.lua_State* %91)
  br label %93

; <label>:93:                                     ; preds = %90, %84
  %94 = phi %struct.CallInfo* [ %89, %84 ], [ %92, %90 ]
  %95 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %96 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %95, i32 0, i32 7
  store %struct.CallInfo* %94, %struct.CallInfo** %96, align 8
  store %struct.CallInfo* %94, %struct.CallInfo** %9, align 8
  %97 = load i32, i32* %7, align 4
  %98 = trunc i32 %97 to i16
  %99 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %100 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %99, i32 0, i32 6
  store i16 %98, i16* %100, align 8
  %101 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %102 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %103 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %102, i32 0, i32 0
  store %struct.lua_TValue* %101, %struct.lua_TValue** %103, align 8
  %104 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %105 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %104, i32 0, i32 5
  %106 = load %struct.lua_TValue*, %struct.lua_TValue** %105, align 8
  %107 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %106, i64 20
  %108 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %109 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %108, i32 0, i32 1
  store %struct.lua_TValue* %107, %struct.lua_TValue** %109, align 8
  %110 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %111 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %110, i32 0, i32 7
  store i16 0, i16* %111, align 2
  %112 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %113 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %112, i32 0, i32 23
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, 1
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

; <label>:117:                                    ; preds = %93
  %118 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaD_hook(%struct.lua_State* %118, i32 0, i32 -1)
  br label %119

; <label>:119:                                    ; preds = %117, %93
  %120 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %8, align 8
  %121 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %122 = call i32 %120(%struct.lua_State* %121)
  store i32 %122, i32* %10, align 4
  %123 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %124 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %125 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %126 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %125, i32 0, i32 5
  %127 = load %struct.lua_TValue*, %struct.lua_TValue** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = sub i64 0, %129
  %131 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %127, i64 %130
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @luaD_poscall(%struct.lua_State* %123, %struct.CallInfo* %124, %struct.lua_TValue* %131, i32 %132)
  store i32 1, i32* %4, align 4
  br label %335

; <label>:134:                                    ; preds = %3
  %135 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %136 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %135, i32 0, i32 0
  %137 = bitcast %union.Value* %136 to %struct.GCObject**
  %138 = load %struct.GCObject*, %struct.GCObject** %137, align 8
  %139 = bitcast %struct.GCObject* %138 to %union.GCUnion*
  %140 = bitcast %union.GCUnion* %139 to %union.Closure*
  %141 = bitcast %union.Closure* %140 to %struct.LClosure*
  %142 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %141, i32 0, i32 5
  %143 = load %struct.Proto*, %struct.Proto** %142, align 8
  store %struct.Proto* %143, %struct.Proto** %13, align 8
  %144 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %145 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %144, i32 0, i32 5
  %146 = load %struct.lua_TValue*, %struct.lua_TValue** %145, align 8
  %147 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %148 = ptrtoint %struct.lua_TValue* %146 to i64
  %149 = ptrtoint %struct.lua_TValue* %147 to i64
  %150 = sub i64 %148, %149
  %151 = sdiv exact i64 %150, 16
  %152 = trunc i64 %151 to i32
  %153 = sub nsw i32 %152, 1
  store i32 %153, i32* %14, align 4
  %154 = load %struct.Proto*, %struct.Proto** %13, align 8
  %155 = getelementptr inbounds %struct.Proto, %struct.Proto* %154, i32 0, i32 5
  %156 = load i8, i8* %155, align 4
  %157 = zext i8 %156 to i32
  store i32 %157, i32* %15, align 4
  %158 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %159 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %158, i32 0, i32 9
  %160 = load %struct.lua_TValue*, %struct.lua_TValue** %159, align 8
  %161 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %162 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %161, i32 0, i32 5
  %163 = load %struct.lua_TValue*, %struct.lua_TValue** %162, align 8
  %164 = ptrtoint %struct.lua_TValue* %160 to i64
  %165 = ptrtoint %struct.lua_TValue* %163 to i64
  %166 = sub i64 %164, %165
  %167 = sdiv exact i64 %166, 16
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = icmp sle i64 %167, %169
  br i1 %170, label %171, label %199

; <label>:171:                                    ; preds = %134
  %172 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %173 = bitcast %struct.lua_TValue* %172 to i8*
  %174 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %175 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %174, i32 0, i32 10
  %176 = load %struct.lua_TValue*, %struct.lua_TValue** %175, align 8
  %177 = bitcast %struct.lua_TValue* %176 to i8*
  %178 = ptrtoint i8* %173 to i64
  %179 = ptrtoint i8* %177 to i64
  %180 = sub i64 %178, %179
  store i64 %180, i64* %16, align 8
  %181 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %182 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %181, i32 0, i32 6
  %183 = load %struct.global_State*, %struct.global_State** %182, align 8
  %184 = getelementptr inbounds %struct.global_State, %struct.global_State* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp sgt i64 %185, 0
  br i1 %186, label %187, label %189

; <label>:187:                                    ; preds = %171
  %188 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaC_step(%struct.lua_State* %188)
  br label %189

; <label>:189:                                    ; preds = %187, %171
  %190 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %191 = load i32, i32* %15, align 4
  call void @luaD_growstack(%struct.lua_State* %190, i32 %191)
  %192 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %193 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %192, i32 0, i32 10
  %194 = load %struct.lua_TValue*, %struct.lua_TValue** %193, align 8
  %195 = bitcast %struct.lua_TValue* %194 to i8*
  %196 = load i64, i64* %16, align 8
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  %198 = bitcast i8* %197 to %struct.lua_TValue*
  store %struct.lua_TValue* %198, %struct.lua_TValue** %6, align 8
  br label %200

; <label>:199:                                    ; preds = %134
  br label %200

; <label>:200:                                    ; preds = %199, %189
  %201 = load %struct.Proto*, %struct.Proto** %13, align 8
  %202 = getelementptr inbounds %struct.Proto, %struct.Proto* %201, i32 0, i32 4
  %203 = load i8, i8* %202, align 1
  %204 = icmp ne i8 %203, 0
  br i1 %204, label %205, label %210

; <label>:205:                                    ; preds = %200
  %206 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %207 = load %struct.Proto*, %struct.Proto** %13, align 8
  %208 = load i32, i32* %14, align 4
  %209 = call %struct.lua_TValue* @adjust_varargs(%struct.lua_State* %206, %struct.Proto* %207, i32 %208)
  store %struct.lua_TValue* %209, %struct.lua_TValue** %12, align 8
  br label %230

; <label>:210:                                    ; preds = %200
  br label %211

; <label>:211:                                    ; preds = %224, %210
  %212 = load i32, i32* %14, align 4
  %213 = load %struct.Proto*, %struct.Proto** %13, align 8
  %214 = getelementptr inbounds %struct.Proto, %struct.Proto* %213, i32 0, i32 3
  %215 = load i8, i8* %214, align 2
  %216 = zext i8 %215 to i32
  %217 = icmp slt i32 %212, %216
  br i1 %217, label %218, label %227

; <label>:218:                                    ; preds = %211
  %219 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %220 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %219, i32 0, i32 5
  %221 = load %struct.lua_TValue*, %struct.lua_TValue** %220, align 8
  %222 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %221, i32 1
  store %struct.lua_TValue* %222, %struct.lua_TValue** %220, align 8
  %223 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %221, i32 0, i32 1
  store i32 0, i32* %223, align 8
  br label %224

; <label>:224:                                    ; preds = %218
  %225 = load i32, i32* %14, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %14, align 4
  br label %211

; <label>:227:                                    ; preds = %211
  %228 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %229 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %228, i64 1
  store %struct.lua_TValue* %229, %struct.lua_TValue** %12, align 8
  br label %230

; <label>:230:                                    ; preds = %227, %205
  %231 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %232 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %231, i32 0, i32 7
  %233 = load %struct.CallInfo*, %struct.CallInfo** %232, align 8
  %234 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %233, i32 0, i32 3
  %235 = load %struct.CallInfo*, %struct.CallInfo** %234, align 8
  %236 = icmp ne %struct.CallInfo* %235, null
  br i1 %236, label %237, label %243

; <label>:237:                                    ; preds = %230
  %238 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %239 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %238, i32 0, i32 7
  %240 = load %struct.CallInfo*, %struct.CallInfo** %239, align 8
  %241 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %240, i32 0, i32 3
  %242 = load %struct.CallInfo*, %struct.CallInfo** %241, align 8
  br label %246

; <label>:243:                                    ; preds = %230
  %244 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %245 = call %struct.CallInfo* @luaE_extendCI(%struct.lua_State* %244)
  br label %246

; <label>:246:                                    ; preds = %243, %237
  %247 = phi %struct.CallInfo* [ %242, %237 ], [ %245, %243 ]
  %248 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %249 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %248, i32 0, i32 7
  store %struct.CallInfo* %247, %struct.CallInfo** %249, align 8
  store %struct.CallInfo* %247, %struct.CallInfo** %9, align 8
  %250 = load i32, i32* %7, align 4
  %251 = trunc i32 %250 to i16
  %252 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %253 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %252, i32 0, i32 6
  store i16 %251, i16* %253, align 8
  %254 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %255 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %256 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %255, i32 0, i32 0
  store %struct.lua_TValue* %254, %struct.lua_TValue** %256, align 8
  %257 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %258 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %259 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %258, i32 0, i32 4
  %260 = bitcast %union.anon.0* %259 to %struct.anon.1*
  %261 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %260, i32 0, i32 0
  store %struct.lua_TValue* %257, %struct.lua_TValue** %261, align 8
  %262 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %263 = load i32, i32* %15, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %262, i64 %264
  %266 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %267 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %266, i32 0, i32 1
  store %struct.lua_TValue* %265, %struct.lua_TValue** %267, align 8
  %268 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %269 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %268, i32 0, i32 5
  store %struct.lua_TValue* %265, %struct.lua_TValue** %269, align 8
  %270 = load %struct.Proto*, %struct.Proto** %13, align 8
  %271 = getelementptr inbounds %struct.Proto, %struct.Proto* %270, i32 0, i32 15
  %272 = load i32*, i32** %271, align 8
  %273 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %274 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %273, i32 0, i32 4
  %275 = bitcast %union.anon.0* %274 to %struct.anon.1*
  %276 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %275, i32 0, i32 1
  store i32* %272, i32** %276, align 8
  %277 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %278 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %277, i32 0, i32 7
  store i16 2, i16* %278, align 2
  %279 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %280 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %279, i32 0, i32 23
  %281 = load i32, i32* %280, align 8
  %282 = and i32 %281, 1
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

; <label>:284:                                    ; preds = %246
  %285 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %286 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  call void @callhook(%struct.lua_State* %285, %struct.CallInfo* %286)
  br label %287

; <label>:287:                                    ; preds = %284, %246
  store i32 0, i32* %4, align 4
  br label %335

; <label>:288:                                    ; preds = %3
  %289 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %290 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %289, i32 0, i32 9
  %291 = load %struct.lua_TValue*, %struct.lua_TValue** %290, align 8
  %292 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %293 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %292, i32 0, i32 5
  %294 = load %struct.lua_TValue*, %struct.lua_TValue** %293, align 8
  %295 = ptrtoint %struct.lua_TValue* %291 to i64
  %296 = ptrtoint %struct.lua_TValue* %294 to i64
  %297 = sub i64 %295, %296
  %298 = sdiv exact i64 %297, 16
  %299 = icmp sle i64 %298, 1
  br i1 %299, label %300, label %327

; <label>:300:                                    ; preds = %288
  %301 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %302 = bitcast %struct.lua_TValue* %301 to i8*
  %303 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %304 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %303, i32 0, i32 10
  %305 = load %struct.lua_TValue*, %struct.lua_TValue** %304, align 8
  %306 = bitcast %struct.lua_TValue* %305 to i8*
  %307 = ptrtoint i8* %302 to i64
  %308 = ptrtoint i8* %306 to i64
  %309 = sub i64 %307, %308
  store i64 %309, i64* %17, align 8
  %310 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %311 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %310, i32 0, i32 6
  %312 = load %struct.global_State*, %struct.global_State** %311, align 8
  %313 = getelementptr inbounds %struct.global_State, %struct.global_State* %312, i32 0, i32 3
  %314 = load i64, i64* %313, align 8
  %315 = icmp sgt i64 %314, 0
  br i1 %315, label %316, label %318

; <label>:316:                                    ; preds = %300
  %317 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaC_step(%struct.lua_State* %317)
  br label %318

; <label>:318:                                    ; preds = %316, %300
  %319 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaD_growstack(%struct.lua_State* %319, i32 1)
  %320 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %321 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %320, i32 0, i32 10
  %322 = load %struct.lua_TValue*, %struct.lua_TValue** %321, align 8
  %323 = bitcast %struct.lua_TValue* %322 to i8*
  %324 = load i64, i64* %17, align 8
  %325 = getelementptr inbounds i8, i8* %323, i64 %324
  %326 = bitcast i8* %325 to %struct.lua_TValue*
  store %struct.lua_TValue* %326, %struct.lua_TValue** %6, align 8
  br label %328

; <label>:327:                                    ; preds = %288
  br label %328

; <label>:328:                                    ; preds = %327, %318
  %329 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %330 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  call void @tryfuncTM(%struct.lua_State* %329, %struct.lua_TValue* %330)
  %331 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %332 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %333 = load i32, i32* %7, align 4
  %334 = call i32 @luaD_precall(%struct.lua_State* %331, %struct.lua_TValue* %332, i32 %333)
  store i32 %334, i32* %4, align 4
  br label %335

; <label>:335:                                    ; preds = %328, %287, %119
  %336 = load i32, i32* %4, align 4
  ret i32 %336
}

declare hidden void @luaC_step(%struct.lua_State*) #5

declare hidden %struct.CallInfo* @luaE_extendCI(%struct.lua_State*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lua_TValue* @adjust_varargs(%struct.lua_State*, %struct.Proto*, i32) #3 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.Proto*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.Proto* %1, %struct.Proto** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.Proto*, %struct.Proto** %5, align 8
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 3
  %14 = load i8, i8* %13, align 2
  %15 = zext i8 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 5
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 0, %20
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 %21
  store %struct.lua_TValue* %22, %struct.lua_TValue** %10, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 5
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %24, align 8
  store %struct.lua_TValue* %25, %struct.lua_TValue** %9, align 8
  store i32 0, i32* %7, align 4
  br label %26

; <label>:26:                                     ; preds = %54, %3
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br label %34

; <label>:34:                                     ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br i1 %35, label %36, label %57

; <label>:36:                                     ; preds = %34
  %37 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 5
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %38, align 8
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i32 1
  store %struct.lua_TValue* %40, %struct.lua_TValue** %38, align 8
  store %struct.lua_TValue* %39, %struct.lua_TValue** %11, align 8
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i64 %44
  %46 = bitcast %struct.lua_TValue* %41 to i8*
  %47 = bitcast %struct.lua_TValue* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 16, i32 8, i1 false)
  %48 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %49 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %49, i64 %51
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %52, i32 0, i32 1
  store i32 0, i32* %53, align 8
  br label %54

; <label>:54:                                     ; preds = %36
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %26

; <label>:57:                                     ; preds = %34
  br label %58

; <label>:58:                                     ; preds = %68, %57
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %71

; <label>:62:                                     ; preds = %58
  %63 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %63, i32 0, i32 5
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %64, align 8
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i32 1
  store %struct.lua_TValue* %66, %struct.lua_TValue** %64, align 8
  %67 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i32 0, i32 1
  store i32 0, i32* %67, align 8
  br label %68

; <label>:68:                                     ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %58

; <label>:71:                                     ; preds = %58
  %72 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  ret %struct.lua_TValue* %72
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callhook(%struct.lua_State*, %struct.CallInfo*) #3 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.CallInfo*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.CallInfo* %1, %struct.CallInfo** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %7 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %6, i32 0, i32 4
  %8 = bitcast %union.anon.0* %7 to %struct.anon.1*
  %9 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %11, i32** %9, align 8
  %12 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %13 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i32 0, i32 2
  %14 = load %struct.CallInfo*, %struct.CallInfo** %13, align 8
  %15 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %14, i32 0, i32 7
  %16 = load i16, i16* %15, align 2
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 2
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

; <label>:20:                                     ; preds = %2
  %21 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %22 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %21, i32 0, i32 2
  %23 = load %struct.CallInfo*, %struct.CallInfo** %22, align 8
  %24 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %23, i32 0, i32 4
  %25 = bitcast %union.anon.0* %24 to %struct.anon.1*
  %26 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 -1
  %29 = load i32, i32* %28, align 4
  %30 = lshr i32 %29, 0
  %31 = and i32 %30, 63
  %32 = icmp eq i32 %31, 37
  br i1 %32, label %33, label %40

; <label>:33:                                     ; preds = %20
  %34 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %35 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %34, i32 0, i32 7
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i32
  %38 = or i32 %37, 32
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %35, align 2
  store i32 4, i32* %5, align 4
  br label %40

; <label>:40:                                     ; preds = %33, %20, %2
  %41 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %42 = load i32, i32* %5, align 4
  call void @luaD_hook(%struct.lua_State* %41, i32 %42, i32 -1)
  %43 = load %struct.CallInfo*, %struct.CallInfo** %4, align 8
  %44 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %43, i32 0, i32 4
  %45 = bitcast %union.anon.0* %44 to %struct.anon.1*
  %46 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 -1
  store i32* %48, i32** %46, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tryfuncTM(%struct.lua_State*, %struct.lua_TValue*) #3 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %4, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %11 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %9, %struct.lua_TValue* %10, i32 23)
  store %struct.lua_TValue* %11, %struct.lua_TValue** %5, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 15
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %20, label %17

; <label>:17:                                     ; preds = %2
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  call void @luaG_typeerror(%struct.lua_State* %18, %struct.lua_TValue* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #9
  unreachable

; <label>:20:                                     ; preds = %2
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 5
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %22, align 8
  store %struct.lua_TValue* %23, %struct.lua_TValue** %6, align 8
  br label %24

; <label>:24:                                     ; preds = %36, %20
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %27 = icmp ugt %struct.lua_TValue* %25, %26
  br i1 %27, label %28, label %39

; <label>:28:                                     ; preds = %24
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  store %struct.lua_TValue* %29, %struct.lua_TValue** %7, align 8
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i64 -1
  %33 = bitcast %struct.lua_TValue* %30 to i8*
  %34 = bitcast %struct.lua_TValue* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 16, i32 8, i1 false)
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  br label %36

; <label>:36:                                     ; preds = %28
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 -1
  store %struct.lua_TValue* %38, %struct.lua_TValue** %6, align 8
  br label %24

; <label>:39:                                     ; preds = %24
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 5
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %41, align 8
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 1
  store %struct.lua_TValue* %43, %struct.lua_TValue** %41, align 8
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  store %struct.lua_TValue* %44, %struct.lua_TValue** %8, align 8
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %47 = bitcast %struct.lua_TValue* %45 to i8*
  %48 = bitcast %struct.lua_TValue* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 16, i32 8, i1 false)
  %49 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) #3 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 22
  %9 = load i16, i16* %8, align 2
  %10 = add i16 %9, 1
  store i16 %10, i16* %8, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp sge i32 %11, 200
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %3
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @stackerror(%struct.lua_State* %14)
  br label %15

; <label>:15:                                     ; preds = %13, %3
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @luaD_precall(%struct.lua_State* %16, %struct.lua_TValue* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %15
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaV_execute(%struct.lua_State* %22)
  br label %23

; <label>:23:                                     ; preds = %21, %15
  %24 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 22
  %26 = load i16, i16* %25, align 2
  %27 = add i16 %26, -1
  store i16 %27, i16* %25, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stackerror(%struct.lua_State*) #3 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 22
  %5 = load i16, i16* %4, align 2
  %6 = zext i16 %5 to i32
  %7 = icmp eq i32 %6, 200
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %1
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)) #9
  unreachable

; <label>:10:                                     ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 22
  %13 = load i16, i16* %12, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp sge i32 %14, 225
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %10
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaD_throw(%struct.lua_State* %17, i32 6) #9
  unreachable

; <label>:18:                                     ; preds = %10
  br label %19

; <label>:19:                                     ; preds = %18
  ret void
}

declare hidden void @luaV_execute(%struct.lua_State*) #5

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaD_callnoyield(%struct.lua_State*, %struct.lua_TValue*, i32) #3 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 21
  %9 = load i16, i16* %8, align 4
  %10 = add i16 %9, 1
  store i16 %10, i16* %8, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %13 = load i32, i32* %6, align 4
  call void @luaD_call(%struct.lua_State* %11, %struct.lua_TValue* %12, i32 %13)
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 21
  %16 = load i16, i16* %15, align 4
  %17 = add i16 %16, -1
  store i16 %17, i16* %15, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_resume(%struct.lua_State*, %struct.lua_State*, i32) #3 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.lua_State* %1, %struct.lua_State** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 21
  %12 = load i16, i16* %11, align 4
  store i16 %12, i16* %9, align 2
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 4
  %15 = load i8, i8* %14, align 4
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

; <label>:18:                                     ; preds = %3
  %19 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 7
  %21 = load %struct.CallInfo*, %struct.CallInfo** %20, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 15
  %24 = icmp ne %struct.CallInfo* %21, %23
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %18
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @resume_error(%struct.lua_State* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), i32 %27)
  store i32 %28, i32* %4, align 4
  br label %121

; <label>:29:                                     ; preds = %18
  br label %41

; <label>:30:                                     ; preds = %3
  %31 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 4
  %33 = load i8, i8* %32, align 4
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %40

; <label>:36:                                     ; preds = %30
  %37 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @resume_error(%struct.lua_State* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 %38)
  store i32 %39, i32* %4, align 4
  br label %121

; <label>:40:                                     ; preds = %30
  br label %41

; <label>:41:                                     ; preds = %40, %29
  %42 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %43 = icmp ne %struct.lua_State* %42, null
  br i1 %43, label %44, label %50

; <label>:44:                                     ; preds = %41
  %45 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i32 0, i32 22
  %47 = load i16, i16* %46, align 2
  %48 = zext i16 %47 to i32
  %49 = add nsw i32 %48, 1
  br label %51

; <label>:50:                                     ; preds = %41
  br label %51

; <label>:51:                                     ; preds = %50, %44
  %52 = phi i32 [ %49, %44 ], [ 1, %50 ]
  %53 = trunc i32 %52 to i16
  %54 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %54, i32 0, i32 22
  store i16 %53, i16* %55, align 2
  %56 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %56, i32 0, i32 22
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = icmp sge i32 %59, 200
  br i1 %60, label %61, label %65

; <label>:61:                                     ; preds = %51
  %62 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @resume_error(%struct.lua_State* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 %63)
  store i32 %64, i32* %4, align 4
  br label %121

; <label>:65:                                     ; preds = %51
  %66 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %67 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %68 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %67, i32 0, i32 21
  store i16 0, i16* %68, align 4
  %69 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %70 = bitcast i32* %7 to i8*
  %71 = call i32 @luaD_rawrunprotected(%struct.lua_State* %69, void (%struct.lua_State*, i8*)* @resume, i8* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %65
  store i32 2, i32* %8, align 4
  br label %112

; <label>:75:                                     ; preds = %65
  br label %76

; <label>:76:                                     ; preds = %86, %75
  %77 = load i32, i32* %8, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %84

; <label>:79:                                     ; preds = %76
  %80 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @recover(%struct.lua_State* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br label %84

; <label>:84:                                     ; preds = %79, %76
  %85 = phi i1 [ false, %76 ], [ %83, %79 ]
  br i1 %85, label %86, label %90

; <label>:86:                                     ; preds = %84
  %87 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %88 = bitcast i32* %8 to i8*
  %89 = call i32 @luaD_rawrunprotected(%struct.lua_State* %87, void (%struct.lua_State*, i8*)* @unroll, i8* %88)
  store i32 %89, i32* %8, align 4
  br label %76

; <label>:90:                                     ; preds = %84
  %91 = load i32, i32* %8, align 4
  %92 = icmp sgt i32 %91, 1
  br i1 %92, label %93, label %110

; <label>:93:                                     ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = trunc i32 %94 to i8
  %96 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %97 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %96, i32 0, i32 4
  store i8 %95, i8* %97, align 4
  %98 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %101 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %100, i32 0, i32 5
  %102 = load %struct.lua_TValue*, %struct.lua_TValue** %101, align 8
  call void @seterrorobj(%struct.lua_State* %98, i32 %99, %struct.lua_TValue* %102)
  %103 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %104 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %103, i32 0, i32 5
  %105 = load %struct.lua_TValue*, %struct.lua_TValue** %104, align 8
  %106 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %107 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %106, i32 0, i32 7
  %108 = load %struct.CallInfo*, %struct.CallInfo** %107, align 8
  %109 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %108, i32 0, i32 1
  store %struct.lua_TValue* %105, %struct.lua_TValue** %109, align 8
  br label %111

; <label>:110:                                    ; preds = %90
  br label %111

; <label>:111:                                    ; preds = %110, %93
  br label %112

; <label>:112:                                    ; preds = %111, %74
  %113 = load i16, i16* %9, align 2
  %114 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %115 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %114, i32 0, i32 21
  store i16 %113, i16* %115, align 4
  %116 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %117 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %116, i32 0, i32 22
  %118 = load i16, i16* %117, align 2
  %119 = add i16 %118, -1
  store i16 %119, i16* %117, align 2
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %4, align 4
  br label %121

; <label>:121:                                    ; preds = %112, %61, %36, %25
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resume_error(%struct.lua_State*, i8*, i32) #3 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 5
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %13 = sext i32 %9 to i64
  %14 = sub i64 0, %13
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i64 %14
  store %struct.lua_TValue* %15, %struct.lua_TValue** %11, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 5
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8
  store %struct.lua_TValue* %18, %struct.lua_TValue** %7, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call %struct.TString* @luaS_new(%struct.lua_State* %19, i8* %20)
  store %struct.TString* %21, %struct.TString** %8, align 8
  %22 = load %struct.TString*, %struct.TString** %8, align 8
  %23 = bitcast %struct.TString* %22 to %union.GCUnion*
  %24 = bitcast %union.GCUnion* %23 to %struct.GCObject*
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %27 = bitcast %union.Value* %26 to %struct.GCObject**
  store %struct.GCObject* %24, %struct.GCObject** %27, align 8
  %28 = load %struct.TString*, %struct.TString** %8, align 8
  %29 = getelementptr inbounds %struct.TString, %struct.TString* %28, i32 0, i32 1
  %30 = load i8, i8* %29, align 8
  %31 = zext i8 %30 to i32
  %32 = or i32 %31, 64
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 5
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %36, align 8
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 1
  store %struct.lua_TValue* %38, %struct.lua_TValue** %36, align 8
  ret i32 2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resume(%struct.lua_State*, i8*) #3 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 5
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = sub i64 0, %15
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 %16
  store %struct.lua_TValue* %17, %struct.lua_TValue** %6, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 7
  %20 = load %struct.CallInfo*, %struct.CallInfo** %19, align 8
  store %struct.CallInfo* %20, %struct.CallInfo** %7, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 4
  %23 = load i8, i8* %22, align 4
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

; <label>:26:                                     ; preds = %2
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i64 -1
  %30 = call i32 @luaD_precall(%struct.lua_State* %27, %struct.lua_TValue* %29, i32 -1)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

; <label>:32:                                     ; preds = %26
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaV_execute(%struct.lua_State* %33)
  br label %34

; <label>:34:                                     ; preds = %32, %26
  br label %92

; <label>:35:                                     ; preds = %2
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 4
  store i8 0, i8* %37, align 4
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 10
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %39, align 8
  %41 = bitcast %struct.lua_TValue* %40 to i8*
  %42 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %43 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = bitcast i8* %45 to %struct.lua_TValue*
  %47 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %48 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %47, i32 0, i32 0
  store %struct.lua_TValue* %46, %struct.lua_TValue** %48, align 8
  %49 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %50 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %49, i32 0, i32 7
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %52, 2
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %35
  %56 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaV_execute(%struct.lua_State* %56)
  br label %90

; <label>:57:                                     ; preds = %35
  %58 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %59 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %58, i32 0, i32 4
  %60 = bitcast %union.anon.0* %59 to %struct.anon.2*
  %61 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %60, i32 0, i32 0
  %62 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %61, align 8
  %63 = icmp ne i32 (%struct.lua_State*, i32, i64)* %62, null
  br i1 %63, label %64, label %84

; <label>:64:                                     ; preds = %57
  %65 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %66 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %65, i32 0, i32 4
  %67 = bitcast %union.anon.0* %66 to %struct.anon.2*
  %68 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %67, i32 0, i32 0
  %69 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %68, align 8
  %70 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %71 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %72 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %71, i32 0, i32 4
  %73 = bitcast %union.anon.0* %72 to %struct.anon.2*
  %74 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 %69(%struct.lua_State* %70, i32 1, i64 %75)
  store i32 %76, i32* %5, align 4
  %77 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %78 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %77, i32 0, i32 5
  %79 = load %struct.lua_TValue*, %struct.lua_TValue** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = sub i64 0, %81
  %83 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %79, i64 %82
  store %struct.lua_TValue* %83, %struct.lua_TValue** %6, align 8
  br label %84

; <label>:84:                                     ; preds = %64, %57
  %85 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %86 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %87 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @luaD_poscall(%struct.lua_State* %85, %struct.CallInfo* %86, %struct.lua_TValue* %87, i32 %88)
  br label %90

; <label>:90:                                     ; preds = %84, %55
  %91 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @unroll(%struct.lua_State* %91, i8* null)
  br label %92

; <label>:92:                                     ; preds = %90, %34
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recover(%struct.lua_State*, i32) #3 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lua_TValue*, align 8
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
  br label %49

; <label>:13:                                     ; preds = %2
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 10
  %16 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8
  %17 = bitcast %struct.lua_TValue* %16 to i8*
  %18 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %19 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = bitcast i8* %21 to %struct.lua_TValue*
  store %struct.lua_TValue* %22, %struct.lua_TValue** %6, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  call void @luaF_close(%struct.lua_State* %23, %struct.lua_TValue* %24)
  %25 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  call void @seterrorobj(%struct.lua_State* %25, i32 %26, %struct.lua_TValue* %27)
  %28 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 7
  store %struct.CallInfo* %28, %struct.CallInfo** %30, align 8
  %31 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %31, i32 0, i32 7
  %33 = load i16, i16* %32, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, 1
  %36 = trunc i32 %35 to i8
  %37 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 24
  store i8 %36, i8* %38, align 4
  %39 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 21
  store i16 0, i16* %40, align 4
  %41 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaD_shrinkstack(%struct.lua_State* %41)
  %42 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %43 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %42, i32 0, i32 4
  %44 = bitcast %union.anon.0* %43 to %struct.anon.2*
  %45 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 17
  store i64 %46, i64* %48, align 8
  store i32 1, i32* %3, align 4
  br label %49

; <label>:49:                                     ; preds = %13, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unroll(%struct.lua_State*, i8*) #3 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %12

; <label>:7:                                      ; preds = %2
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  call void @finishCcall(%struct.lua_State* %8, i32 %11)
  br label %12

; <label>:12:                                     ; preds = %7, %2
  br label %13

; <label>:13:                                     ; preds = %34, %12
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 7
  %16 = load %struct.CallInfo*, %struct.CallInfo** %15, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 15
  %19 = icmp ne %struct.CallInfo* %16, %18
  br i1 %19, label %20, label %35

; <label>:20:                                     ; preds = %13
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 7
  %23 = load %struct.CallInfo*, %struct.CallInfo** %22, align 8
  %24 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %23, i32 0, i32 7
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 2
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

; <label>:29:                                     ; preds = %20
  %30 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @finishCcall(%struct.lua_State* %30, i32 1)
  br label %34

; <label>:31:                                     ; preds = %20
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaV_finishOp(%struct.lua_State* %32)
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaV_execute(%struct.lua_State* %33)
  br label %34

; <label>:34:                                     ; preds = %31, %29
  br label %13

; <label>:35:                                     ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_isyieldable(%struct.lua_State*) #3 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 21
  %5 = load i16, i16* %4, align 4
  %6 = zext i16 %5 to i32
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @lua_yieldk(%struct.lua_State*, i32, i64, i32 (%struct.lua_State*, i32, i64)*) #3 {
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
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 7
  %12 = load %struct.CallInfo*, %struct.CallInfo** %11, align 8
  store %struct.CallInfo* %12, %struct.CallInfo** %9, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 21
  %16 = load i16, i16* %15, align 4
  %17 = zext i16 %16 to i32
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %31

; <label>:19:                                     ; preds = %4
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 6
  %23 = load %struct.global_State*, %struct.global_State** %22, align 8
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %23, i32 0, i32 28
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8
  %26 = icmp ne %struct.lua_State* %20, %25
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %19
  %28 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0)) #9
  unreachable

; <label>:29:                                     ; preds = %19
  %30 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0)) #9
  unreachable

; <label>:31:                                     ; preds = %4
  %32 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %32, i32 0, i32 4
  store i8 1, i8* %33, align 4
  %34 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %35 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %34, i32 0, i32 0
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %35, align 8
  %37 = bitcast %struct.lua_TValue* %36 to i8*
  %38 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 10
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %39, align 8
  %41 = bitcast %struct.lua_TValue* %40 to i8*
  %42 = ptrtoint i8* %37 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %46 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %45, i32 0, i32 5
  store i64 %44, i64* %46, align 8
  %47 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %48 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %47, i32 0, i32 7
  %49 = load i16, i16* %48, align 2
  %50 = zext i16 %49 to i32
  %51 = and i32 %50, 2
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %31
  br label %79

; <label>:54:                                     ; preds = %31
  %55 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %8, align 8
  %56 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %57 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %56, i32 0, i32 4
  %58 = bitcast %union.anon.0* %57 to %struct.anon.2*
  %59 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %58, i32 0, i32 0
  store i32 (%struct.lua_State*, i32, i64)* %55, i32 (%struct.lua_State*, i32, i64)** %59, align 8
  %60 = icmp ne i32 (%struct.lua_State*, i32, i64)* %55, null
  br i1 %60, label %61, label %67

; <label>:61:                                     ; preds = %54
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %64 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %63, i32 0, i32 4
  %65 = bitcast %union.anon.0* %64 to %struct.anon.2*
  %66 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %65, i32 0, i32 2
  store i64 %62, i64* %66, align 8
  br label %67

; <label>:67:                                     ; preds = %61, %54
  %68 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %68, i32 0, i32 5
  %70 = load %struct.lua_TValue*, %struct.lua_TValue** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = sub i64 0, %72
  %74 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %70, i64 %73
  %75 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %74, i64 -1
  %76 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %77 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %76, i32 0, i32 0
  store %struct.lua_TValue* %75, %struct.lua_TValue** %77, align 8
  %78 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaD_throw(%struct.lua_State* %78, i32 1) #9
  unreachable

; <label>:79:                                     ; preds = %53
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) #3 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca void (%struct.lua_State*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.CallInfo*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i16, align 2
  %15 = alloca i64, align 8
  %16 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store void (%struct.lua_State*, i8*)* %1, void (%struct.lua_State*, i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 7
  %19 = load %struct.CallInfo*, %struct.CallInfo** %18, align 8
  store %struct.CallInfo* %19, %struct.CallInfo** %12, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 24
  %22 = load i8, i8* %21, align 4
  store i8 %22, i8* %13, align 1
  %23 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 21
  %25 = load i16, i16* %24, align 4
  store i16 %25, i16* %14, align 2
  %26 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 17
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %15, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %30, i32 0, i32 17
  store i64 %29, i64* %31, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %33 = load void (%struct.lua_State*, i8*)*, void (%struct.lua_State*, i8*)** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @luaD_rawrunprotected(%struct.lua_State* %32, void (%struct.lua_State*, i8*)* %33, i8* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %61

; <label>:38:                                     ; preds = %5
  %39 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 10
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %40, align 8
  %42 = bitcast %struct.lua_TValue* %41 to i8*
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = bitcast i8* %44 to %struct.lua_TValue*
  store %struct.lua_TValue* %45, %struct.lua_TValue** %16, align 8
  %46 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  call void @luaF_close(%struct.lua_State* %46, %struct.lua_TValue* %47)
  %48 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  call void @seterrorobj(%struct.lua_State* %48, i32 %49, %struct.lua_TValue* %50)
  %51 = load %struct.CallInfo*, %struct.CallInfo** %12, align 8
  %52 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %52, i32 0, i32 7
  store %struct.CallInfo* %51, %struct.CallInfo** %53, align 8
  %54 = load i8, i8* %13, align 1
  %55 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %55, i32 0, i32 24
  store i8 %54, i8* %56, align 4
  %57 = load i16, i16* %14, align 2
  %58 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %58, i32 0, i32 21
  store i16 %57, i16* %59, align 4
  %60 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void @luaD_shrinkstack(%struct.lua_State* %60)
  br label %61

; <label>:61:                                     ; preds = %38, %5
  %62 = load i64, i64* %15, align 8
  %63 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %64 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %63, i32 0, i32 17
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare hidden void @luaF_close(%struct.lua_State*, %struct.lua_TValue*) #5

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaD_protectedparser(%struct.lua_State*, %struct.Zio*, i8*, i8*) #3 {
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
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i32 0, i32 21
  %13 = load i16, i16* %12, align 4
  %14 = add i16 %13, 1
  store i16 %14, i16* %12, align 4
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
  %23 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %22, i32 0, i32 0
  store %struct.Vardesc* null, %struct.Vardesc** %23, align 8
  %24 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %25 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %25, i32 0, i32 2
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
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i32 0, i32 5
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %46, align 8
  %48 = bitcast %struct.lua_TValue* %47 to i8*
  %49 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %49, i32 0, i32 10
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %50, align 8
  %52 = bitcast %struct.lua_TValue* %51 to i8*
  %53 = ptrtoint i8* %48 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %56, i32 0, i32 17
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
  %68 = call i8* @luaM_realloc_(%struct.lua_State* %60, i8* %63, i64 %67, i64 0)
  %69 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 1
  %70 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %74 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %75 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %75, i32 0, i32 0
  %77 = load %struct.Vardesc*, %struct.Vardesc** %76, align 8
  %78 = bitcast %struct.Vardesc* %77 to i8*
  %79 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %80 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 2
  %85 = call i8* @luaM_realloc_(%struct.lua_State* %73, i8* %78, i64 %84, i64 0)
  %86 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %87 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %88 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %88, i32 0, i32 0
  %90 = load %struct.Labeldesc*, %struct.Labeldesc** %89, align 8
  %91 = bitcast %struct.Labeldesc* %90 to i8*
  %92 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %93 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 24
  %98 = call i8* @luaM_realloc_(%struct.lua_State* %86, i8* %91, i64 %97, i64 0)
  %99 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %100 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %101 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %101, i32 0, i32 0
  %103 = load %struct.Labeldesc*, %struct.Labeldesc** %102, align 8
  %104 = bitcast %struct.Labeldesc* %103 to i8*
  %105 = getelementptr inbounds %struct.SParser, %struct.SParser* %9, i32 0, i32 2
  %106 = getelementptr inbounds %struct.Dyndata, %struct.Dyndata* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.Labellist, %struct.Labellist* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 24
  %111 = call i8* @luaM_realloc_(%struct.lua_State* %99, i8* %104, i64 %110, i64 0)
  %112 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %113 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %112, i32 0, i32 21
  %114 = load i16, i16* %113, align 4
  %115 = add i16 %114, -1
  store i16 %115, i16* %113, align 4
  %116 = load i32, i32* %10, align 4
  ret i32 %116
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f_parser(%struct.lua_State*, i8*) #3 {
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

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #5

declare hidden %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.lua_TValue*, i32) #5

; Function Attrs: noreturn
declare hidden void @luaG_typeerror(%struct.lua_State*, %struct.lua_TValue*, i8*) #6

declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.CallInfo* @findpcall(%struct.lua_State*) #3 {
  %2 = alloca %struct.CallInfo*, align 8
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.CallInfo*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i32 0, i32 7
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
  %16 = and i32 %15, 16
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
define internal void @finishCcall(%struct.lua_State*, i32) #3 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.CallInfo*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i32 0, i32 7
  %9 = load %struct.CallInfo*, %struct.CallInfo** %8, align 8
  store %struct.CallInfo* %9, %struct.CallInfo** %5, align 8
  %10 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %11 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %10, i32 0, i32 7
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 16
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

; <label>:16:                                     ; preds = %2
  %17 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %18 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %17, i32 0, i32 7
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, -17
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %18, align 2
  %23 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %24 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %23, i32 0, i32 4
  %25 = bitcast %union.anon.0* %24 to %struct.anon.2*
  %26 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %28, i32 0, i32 17
  store i64 %27, i64* %29, align 8
  br label %30

; <label>:30:                                     ; preds = %16, %2
  %31 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %31, i32 0, i32 6
  %33 = load i16, i16* %32, align 8
  %34 = sext i16 %33 to i32
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %54

; <label>:36:                                     ; preds = %30
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 7
  %39 = load %struct.CallInfo*, %struct.CallInfo** %38, align 8
  %40 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %39, i32 0, i32 1
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %40, align 8
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 5
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %43, align 8
  %45 = icmp ult %struct.lua_TValue* %41, %44
  br i1 %45, label %46, label %54

; <label>:46:                                     ; preds = %36
  %47 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 5
  %49 = load %struct.lua_TValue*, %struct.lua_TValue** %48, align 8
  %50 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %51 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %50, i32 0, i32 7
  %52 = load %struct.CallInfo*, %struct.CallInfo** %51, align 8
  %53 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %52, i32 0, i32 1
  store %struct.lua_TValue* %49, %struct.lua_TValue** %53, align 8
  br label %54

; <label>:54:                                     ; preds = %46, %36, %30
  %55 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %56 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %55, i32 0, i32 4
  %57 = bitcast %union.anon.0* %56 to %struct.anon.2*
  %58 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %57, i32 0, i32 0
  %59 = load i32 (%struct.lua_State*, i32, i64)*, i32 (%struct.lua_State*, i32, i64)** %58, align 8
  %60 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %63 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %62, i32 0, i32 4
  %64 = bitcast %union.anon.0* %63 to %struct.anon.2*
  %65 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 %59(%struct.lua_State* %60, i32 %61, i64 %66)
  store i32 %67, i32* %6, align 4
  %68 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %69 = load %struct.CallInfo*, %struct.CallInfo** %5, align 8
  %70 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %71 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %70, i32 0, i32 5
  %72 = load %struct.lua_TValue*, %struct.lua_TValue** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %72, i64 %75
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @luaD_poscall(%struct.lua_State* %68, %struct.CallInfo* %69, %struct.lua_TValue* %76, i32 %77)
  ret void
}

declare hidden void @luaV_finishOp(%struct.lua_State*) #5

declare hidden i32 @luaZ_fill(%struct.Zio*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkmode(%struct.lua_State*, i8*, i8*) #3 {
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

declare hidden %struct.LClosure* @luaU_undump(%struct.lua_State*, %struct.Zio*, i8*) #5

declare hidden %struct.LClosure* @luaY_parser(%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Dyndata*, i8*, i32) #5

declare hidden void @luaF_initupvals(%struct.lua_State*, %struct.LClosure*) #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #7

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #5

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
