; ModuleID = 'lvm.c'
source_filename = "lvm.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %struct.GCObject* }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%union.GCUnion = type { %struct.lua_State }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon.3 }
%union.anon.3 = type { i64 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.4 }
%struct.anon.4 = type { %union.Value, i32, i32 }
%struct.UpVal = type { %struct.lua_TValue*, i64, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.UpVal*, i32 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon, i64, i16, i16 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.Udata = type { %struct.GCObject*, i8, i8, i8, %struct.Table*, i64, %union.Value }
%struct.anon = type { %struct.lua_TValue*, i32* }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }

@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"'__index' chain too long; possible loop\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"'__newindex' chain too long; possible loop\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"string length overflow\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"get length of\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"attempt to divide by zero\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"attempt to perform 'n%%0'\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"'for' limit must be a number\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"'for' step must be a number\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"'for' initial value must be a number\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaV_tonumber_(%struct.lua_TValue*, double*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca double*, align 8
  %6 = alloca %struct.lua_TValue, align 8
  store %struct.lua_TValue* %0, %struct.lua_TValue** %4, align 8
  store double* %1, double** %5, align 8
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 19
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %2
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %14 = bitcast %union.Value* %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = sitofp i64 %15 to double
  %17 = load double*, double** %5, align 8
  store double %16, double* %17, align 8
  store i32 1, i32* %3, align 4
  br label %85

; <label>:18:                                     ; preds = %2
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 15
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %84

; <label>:24:                                     ; preds = %18
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %27 = bitcast %union.Value* %26 to %struct.GCObject**
  %28 = load %struct.GCObject*, %struct.GCObject** %27, align 8
  %29 = bitcast %struct.GCObject* %28 to %union.GCUnion*
  %30 = bitcast %union.GCUnion* %29 to %struct.TString*
  %31 = bitcast %struct.TString* %30 to i8*
  %32 = getelementptr inbounds i8, i8* %31, i64 24
  %33 = call i64 @luaO_str2num(i8* %32, %struct.lua_TValue* %6)
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i32 0, i32 0
  %36 = bitcast %union.Value* %35 to %struct.GCObject**
  %37 = load %struct.GCObject*, %struct.GCObject** %36, align 8
  %38 = bitcast %struct.GCObject* %37 to %union.GCUnion*
  %39 = bitcast %union.GCUnion* %38 to %struct.TString*
  %40 = getelementptr inbounds %struct.TString, %struct.TString* %39, i32 0, i32 1
  %41 = load i8, i8* %40, align 8
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %44, label %54

; <label>:44:                                     ; preds = %24
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %46 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %45, i32 0, i32 0
  %47 = bitcast %union.Value* %46 to %struct.GCObject**
  %48 = load %struct.GCObject*, %struct.GCObject** %47, align 8
  %49 = bitcast %struct.GCObject* %48 to %union.GCUnion*
  %50 = bitcast %union.GCUnion* %49 to %struct.TString*
  %51 = getelementptr inbounds %struct.TString, %struct.TString* %50, i32 0, i32 4
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i64
  br label %64

; <label>:54:                                     ; preds = %24
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i32 0, i32 0
  %57 = bitcast %union.Value* %56 to %struct.GCObject**
  %58 = load %struct.GCObject*, %struct.GCObject** %57, align 8
  %59 = bitcast %struct.GCObject* %58 to %union.GCUnion*
  %60 = bitcast %union.GCUnion* %59 to %struct.TString*
  %61 = getelementptr inbounds %struct.TString, %struct.TString* %60, i32 0, i32 6
  %62 = bitcast %union.anon.3* %61 to i64*
  %63 = load i64, i64* %62, align 8
  br label %64

; <label>:64:                                     ; preds = %54, %44
  %65 = phi i64 [ %53, %44 ], [ %63, %54 ]
  %66 = add i64 %65, 1
  %67 = icmp eq i64 %33, %66
  br i1 %67, label %68, label %84

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 19
  br i1 %71, label %72, label %77

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i32 0, i32 0
  %74 = bitcast %union.Value* %73 to i64*
  %75 = load i64, i64* %74, align 8
  %76 = sitofp i64 %75 to double
  br label %81

; <label>:77:                                     ; preds = %68
  %78 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i32 0, i32 0
  %79 = bitcast %union.Value* %78 to double*
  %80 = load double, double* %79, align 8
  br label %81

; <label>:81:                                     ; preds = %77, %72
  %82 = phi double [ %76, %72 ], [ %80, %77 ]
  %83 = load double*, double** %5, align 8
  store double %82, double* %83, align 8
  store i32 1, i32* %3, align 4
  br label %85

; <label>:84:                                     ; preds = %64, %18
  store i32 0, i32* %3, align 4
  br label %85

; <label>:85:                                     ; preds = %84, %81, %11
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare hidden i64 @luaO_str2num(i8*, %struct.lua_TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaV_tointeger(%struct.lua_TValue*, i64*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lua_TValue, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store %struct.lua_TValue* %0, %struct.lua_TValue** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %11

; <label>:11:                                     ; preds = %112, %3
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %51

; <label>:16:                                     ; preds = %11
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 0
  %19 = bitcast %union.Value* %18 to double*
  %20 = load double, double* %19, align 8
  store double %20, double* %9, align 8
  %21 = load double, double* %9, align 8
  %22 = call double @llvm.floor.f64(double %21)
  store double %22, double* %10, align 8
  %23 = load double, double* %9, align 8
  %24 = load double, double* %10, align 8
  %25 = fcmp une double %23, %24
  br i1 %25, label %26, label %38

; <label>:26:                                     ; preds = %16
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %26
  store i32 0, i32* %4, align 4
  br label %116

; <label>:30:                                     ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %30
  %34 = load double, double* %10, align 8
  %35 = fadd double %34, 1.000000e+00
  store double %35, double* %10, align 8
  br label %36

; <label>:36:                                     ; preds = %33, %30
  br label %37

; <label>:37:                                     ; preds = %36
  br label %38

; <label>:38:                                     ; preds = %37, %16
  %39 = load double, double* %10, align 8
  %40 = fcmp oge double %39, 0xC3E0000000000000
  br i1 %40, label %41, label %48

; <label>:41:                                     ; preds = %38
  %42 = load double, double* %10, align 8
  %43 = fcmp olt double %42, 0x43E0000000000000
  br i1 %43, label %44, label %48

; <label>:44:                                     ; preds = %41
  %45 = load double, double* %10, align 8
  %46 = fptosi double %45 to i64
  %47 = load i64*, i64** %6, align 8
  store i64 %46, i64* %47, align 8
  br label %48

; <label>:48:                                     ; preds = %44, %41, %38
  %49 = phi i1 [ false, %41 ], [ false, %38 ], [ true, %44 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %116

; <label>:51:                                     ; preds = %11
  %52 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 19
  br i1 %55, label %56, label %62

; <label>:56:                                     ; preds = %51
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i32 0, i32 0
  %59 = bitcast %union.Value* %58 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %6, align 8
  store i64 %60, i64* %61, align 8
  store i32 1, i32* %4, align 4
  br label %116

; <label>:62:                                     ; preds = %51
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, 15
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %68, label %113

; <label>:68:                                     ; preds = %62
  %69 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i32 0, i32 0
  %71 = bitcast %union.Value* %70 to %struct.GCObject**
  %72 = load %struct.GCObject*, %struct.GCObject** %71, align 8
  %73 = bitcast %struct.GCObject* %72 to %union.GCUnion*
  %74 = bitcast %union.GCUnion* %73 to %struct.TString*
  %75 = bitcast %struct.TString* %74 to i8*
  %76 = getelementptr inbounds i8, i8* %75, i64 24
  %77 = call i64 @luaO_str2num(i8* %76, %struct.lua_TValue* %8)
  %78 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %79 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %78, i32 0, i32 0
  %80 = bitcast %union.Value* %79 to %struct.GCObject**
  %81 = load %struct.GCObject*, %struct.GCObject** %80, align 8
  %82 = bitcast %struct.GCObject* %81 to %union.GCUnion*
  %83 = bitcast %union.GCUnion* %82 to %struct.TString*
  %84 = getelementptr inbounds %struct.TString, %struct.TString* %83, i32 0, i32 1
  %85 = load i8, i8* %84, align 8
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, 4
  br i1 %87, label %88, label %98

; <label>:88:                                     ; preds = %68
  %89 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %90 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %89, i32 0, i32 0
  %91 = bitcast %union.Value* %90 to %struct.GCObject**
  %92 = load %struct.GCObject*, %struct.GCObject** %91, align 8
  %93 = bitcast %struct.GCObject* %92 to %union.GCUnion*
  %94 = bitcast %union.GCUnion* %93 to %struct.TString*
  %95 = getelementptr inbounds %struct.TString, %struct.TString* %94, i32 0, i32 4
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i64
  br label %108

; <label>:98:                                     ; preds = %68
  %99 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %100 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %99, i32 0, i32 0
  %101 = bitcast %union.Value* %100 to %struct.GCObject**
  %102 = load %struct.GCObject*, %struct.GCObject** %101, align 8
  %103 = bitcast %struct.GCObject* %102 to %union.GCUnion*
  %104 = bitcast %union.GCUnion* %103 to %struct.TString*
  %105 = getelementptr inbounds %struct.TString, %struct.TString* %104, i32 0, i32 6
  %106 = bitcast %union.anon.3* %105 to i64*
  %107 = load i64, i64* %106, align 8
  br label %108

; <label>:108:                                    ; preds = %98, %88
  %109 = phi i64 [ %97, %88 ], [ %107, %98 ]
  %110 = add i64 %109, 1
  %111 = icmp eq i64 %77, %110
  br i1 %111, label %112, label %113

; <label>:112:                                    ; preds = %108
  store %struct.lua_TValue* %8, %struct.lua_TValue** %5, align 8
  br label %11

; <label>:113:                                    ; preds = %108, %62
  br label %114

; <label>:114:                                    ; preds = %113
  br label %115

; <label>:115:                                    ; preds = %114
  store i32 0, i32* %4, align 4
  br label %116

; <label>:116:                                    ; preds = %115, %56, %48, %29
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaV_finishget(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lua_TValue*, align 8
  %13 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %3, %struct.lua_TValue** %9, align 8
  store %struct.lua_TValue* %4, %struct.lua_TValue** %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

; <label>:14:                                     ; preds = %125, %5
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 2000
  br i1 %16, label %17, label %128

; <label>:17:                                     ; preds = %14
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %19 = icmp eq %struct.lua_TValue* %18, null
  br i1 %19, label %20, label %32

; <label>:20:                                     ; preds = %17
  %21 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %23 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %21, %struct.lua_TValue* %22, i32 0)
  store %struct.lua_TValue* %23, %struct.lua_TValue** %12, align 8
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %20
  %29 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  call void @luaG_typeerror(%struct.lua_State* %29, %struct.lua_TValue* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #7
  unreachable

; <label>:31:                                     ; preds = %20
  br label %84

; <label>:32:                                     ; preds = %17
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 0
  %35 = bitcast %union.Value* %34 to %struct.GCObject**
  %36 = load %struct.GCObject*, %struct.GCObject** %35, align 8
  %37 = bitcast %struct.GCObject* %36 to %union.GCUnion*
  %38 = bitcast %union.GCUnion* %37 to %struct.Table*
  %39 = getelementptr inbounds %struct.Table, %struct.Table* %38, i32 0, i32 9
  %40 = load %struct.Table*, %struct.Table** %39, align 8
  %41 = icmp eq %struct.Table* %40, null
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %32
  br label %76

; <label>:43:                                     ; preds = %32
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i32 0, i32 0
  %46 = bitcast %union.Value* %45 to %struct.GCObject**
  %47 = load %struct.GCObject*, %struct.GCObject** %46, align 8
  %48 = bitcast %struct.GCObject* %47 to %union.GCUnion*
  %49 = bitcast %union.GCUnion* %48 to %struct.Table*
  %50 = getelementptr inbounds %struct.Table, %struct.Table* %49, i32 0, i32 9
  %51 = load %struct.Table*, %struct.Table** %50, align 8
  %52 = getelementptr inbounds %struct.Table, %struct.Table* %51, i32 0, i32 3
  %53 = load i8, i8* %52, align 2
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %43
  br label %74

; <label>:58:                                     ; preds = %43
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i32 0, i32 0
  %61 = bitcast %union.Value* %60 to %struct.GCObject**
  %62 = load %struct.GCObject*, %struct.GCObject** %61, align 8
  %63 = bitcast %struct.GCObject* %62 to %union.GCUnion*
  %64 = bitcast %union.GCUnion* %63 to %struct.Table*
  %65 = getelementptr inbounds %struct.Table, %struct.Table* %64, i32 0, i32 9
  %66 = load %struct.Table*, %struct.Table** %65, align 8
  %67 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %68 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %67, i32 0, i32 6
  %69 = load %struct.global_State*, %struct.global_State** %68, align 8
  %70 = getelementptr inbounds %struct.global_State, %struct.global_State* %69, i32 0, i32 31
  %71 = getelementptr inbounds [24 x %struct.TString*], [24 x %struct.TString*]* %70, i64 0, i64 0
  %72 = load %struct.TString*, %struct.TString** %71, align 8
  %73 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %66, i32 0, %struct.TString* %72)
  br label %74

; <label>:74:                                     ; preds = %58, %57
  %75 = phi %struct.lua_TValue* [ null, %57 ], [ %73, %58 ]
  br label %76

; <label>:76:                                     ; preds = %74, %42
  %77 = phi %struct.lua_TValue* [ null, %42 ], [ %75, %74 ]
  store %struct.lua_TValue* %77, %struct.lua_TValue** %12, align 8
  %78 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %79 = icmp eq %struct.lua_TValue* %78, null
  br i1 %79, label %80, label %83

; <label>:80:                                     ; preds = %76
  %81 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %82 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %81, i32 0, i32 1
  store i32 0, i32* %82, align 8
  br label %130

; <label>:83:                                     ; preds = %76
  br label %84

; <label>:84:                                     ; preds = %83, %31
  %85 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %86 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 15
  %89 = icmp eq i32 %88, 6
  br i1 %89, label %90, label %96

; <label>:90:                                     ; preds = %84
  %91 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %92 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %93 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %94 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %95 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  call void @luaT_callTM(%struct.lua_State* %91, %struct.lua_TValue* %92, %struct.lua_TValue* %93, %struct.lua_TValue* %94, %struct.lua_TValue* %95, i32 1)
  br label %130

; <label>:96:                                     ; preds = %84
  %97 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  store %struct.lua_TValue* %97, %struct.lua_TValue** %7, align 8
  %98 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %99 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 69
  br i1 %101, label %103, label %102

; <label>:102:                                    ; preds = %96
  store %struct.lua_TValue* null, %struct.lua_TValue** %10, align 8
  br i1 false, label %117, label %124

; <label>:103:                                    ; preds = %96
  %104 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %105 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %104, i32 0, i32 0
  %106 = bitcast %union.Value* %105 to %struct.GCObject**
  %107 = load %struct.GCObject*, %struct.GCObject** %106, align 8
  %108 = bitcast %struct.GCObject* %107 to %union.GCUnion*
  %109 = bitcast %union.GCUnion* %108 to %struct.Table*
  %110 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %111 = call %struct.lua_TValue* @luaH_get(%struct.Table* %109, %struct.lua_TValue* %110)
  store %struct.lua_TValue* %111, %struct.lua_TValue** %10, align 8
  %112 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %113 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 0
  %116 = xor i1 %115, true
  br i1 %116, label %117, label %124

; <label>:117:                                    ; preds = %103, %102
  %118 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  store %struct.lua_TValue* %118, %struct.lua_TValue** %13, align 8
  %119 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8
  %120 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %121 = bitcast %struct.lua_TValue* %119 to i8*
  %122 = bitcast %struct.lua_TValue* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %122, i64 16, i32 8, i1 false)
  %123 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  br label %130

; <label>:124:                                    ; preds = %103, %102
  br label %125

; <label>:125:                                    ; preds = %124
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %14

; <label>:128:                                    ; preds = %14
  %129 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %129, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0)) #7
  unreachable

; <label>:130:                                    ; preds = %117, %90, %80
  ret void
}

declare hidden %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.lua_TValue*, i32) #1

; Function Attrs: noreturn
declare hidden void @luaG_typeerror(%struct.lua_State*, %struct.lua_TValue*, i8*) #3

declare hidden %struct.lua_TValue* @luaT_gettm(%struct.Table*, i32, %struct.TString*) #1

declare hidden void @luaT_callTM(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32) #1

declare hidden %struct.lua_TValue* @luaH_get(%struct.Table*, %struct.lua_TValue*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaV_finishset(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lua_TValue*, align 8
  %13 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %3, %struct.lua_TValue** %9, align 8
  store %struct.lua_TValue* %4, %struct.lua_TValue** %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

; <label>:14:                                     ; preds = %195, %5
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 2000
  br i1 %16, label %17, label %198

; <label>:17:                                     ; preds = %14
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %19 = icmp ne %struct.lua_TValue* %18, null
  br i1 %19, label %20, label %103

; <label>:20:                                     ; preds = %17
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 0
  %23 = bitcast %union.Value* %22 to %struct.GCObject**
  %24 = load %struct.GCObject*, %struct.GCObject** %23, align 8
  %25 = bitcast %struct.GCObject* %24 to %union.GCUnion*
  %26 = bitcast %union.GCUnion* %25 to %struct.Table*
  store %struct.Table* %26, %struct.Table** %13, align 8
  %27 = load %struct.Table*, %struct.Table** %13, align 8
  %28 = getelementptr inbounds %struct.Table, %struct.Table* %27, i32 0, i32 9
  %29 = load %struct.Table*, %struct.Table** %28, align 8
  %30 = icmp eq %struct.Table* %29, null
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %20
  br label %55

; <label>:32:                                     ; preds = %20
  %33 = load %struct.Table*, %struct.Table** %13, align 8
  %34 = getelementptr inbounds %struct.Table, %struct.Table* %33, i32 0, i32 9
  %35 = load %struct.Table*, %struct.Table** %34, align 8
  %36 = getelementptr inbounds %struct.Table, %struct.Table* %35, i32 0, i32 3
  %37 = load i8, i8* %36, align 2
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 2
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %32
  br label %53

; <label>:42:                                     ; preds = %32
  %43 = load %struct.Table*, %struct.Table** %13, align 8
  %44 = getelementptr inbounds %struct.Table, %struct.Table* %43, i32 0, i32 9
  %45 = load %struct.Table*, %struct.Table** %44, align 8
  %46 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %47 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %46, i32 0, i32 6
  %48 = load %struct.global_State*, %struct.global_State** %47, align 8
  %49 = getelementptr inbounds %struct.global_State, %struct.global_State* %48, i32 0, i32 31
  %50 = getelementptr inbounds [24 x %struct.TString*], [24 x %struct.TString*]* %49, i64 0, i64 1
  %51 = load %struct.TString*, %struct.TString** %50, align 8
  %52 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %45, i32 1, %struct.TString* %51)
  br label %53

; <label>:53:                                     ; preds = %42, %41
  %54 = phi %struct.lua_TValue* [ null, %41 ], [ %52, %42 ]
  br label %55

; <label>:55:                                     ; preds = %53, %31
  %56 = phi %struct.lua_TValue* [ null, %31 ], [ %54, %53 ]
  store %struct.lua_TValue* %56, %struct.lua_TValue** %12, align 8
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %58 = icmp eq %struct.lua_TValue* %57, null
  br i1 %58, label %59, label %102

; <label>:59:                                     ; preds = %55
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %61 = icmp eq %struct.lua_TValue* %60, @luaO_nilobject_
  br i1 %61, label %62, label %67

; <label>:62:                                     ; preds = %59
  %63 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %64 = load %struct.Table*, %struct.Table** %13, align 8
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %66 = call %struct.lua_TValue* @luaH_newkey(%struct.lua_State* %63, %struct.Table* %64, %struct.lua_TValue* %65)
  store %struct.lua_TValue* %66, %struct.lua_TValue** %10, align 8
  br label %67

; <label>:67:                                     ; preds = %62, %59
  %68 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %69 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %70 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %71 = bitcast %struct.lua_TValue* %69 to i8*
  %72 = bitcast %struct.lua_TValue* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 16, i32 8, i1 false)
  %73 = load %struct.Table*, %struct.Table** %13, align 8
  %74 = getelementptr inbounds %struct.Table, %struct.Table* %73, i32 0, i32 3
  store i8 0, i8* %74, align 2
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 64
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %100

; <label>:80:                                     ; preds = %67
  %81 = load %struct.Table*, %struct.Table** %13, align 8
  %82 = getelementptr inbounds %struct.Table, %struct.Table* %81, i32 0, i32 2
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

; <label>:87:                                     ; preds = %80
  %88 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %89 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %88, i32 0, i32 0
  %90 = bitcast %union.Value* %89 to %struct.GCObject**
  %91 = load %struct.GCObject*, %struct.GCObject** %90, align 8
  %92 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %91, i32 0, i32 2
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 3
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

; <label>:97:                                     ; preds = %87
  %98 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %99 = load %struct.Table*, %struct.Table** %13, align 8
  call void @luaC_barrierback_(%struct.lua_State* %98, %struct.Table* %99)
  br label %101

; <label>:100:                                    ; preds = %87, %80, %67
  br label %101

; <label>:101:                                    ; preds = %100, %97
  br label %200

; <label>:102:                                    ; preds = %55
  br label %114

; <label>:103:                                    ; preds = %17
  %104 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %105 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %106 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %104, %struct.lua_TValue* %105, i32 1)
  store %struct.lua_TValue* %106, %struct.lua_TValue** %12, align 8
  %107 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

; <label>:110:                                    ; preds = %103
  %111 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %112 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  call void @luaG_typeerror(%struct.lua_State* %111, %struct.lua_TValue* %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #7
  unreachable

; <label>:113:                                    ; preds = %103
  br label %114

; <label>:114:                                    ; preds = %113, %102
  %115 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %116 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, 15
  %119 = icmp eq i32 %118, 6
  br i1 %119, label %120, label %126

; <label>:120:                                    ; preds = %114
  %121 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %122 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %123 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %124 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %125 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  call void @luaT_callTM(%struct.lua_State* %121, %struct.lua_TValue* %122, %struct.lua_TValue* %123, %struct.lua_TValue* %124, %struct.lua_TValue* %125, i32 0)
  br label %200

; <label>:126:                                    ; preds = %114
  %127 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  store %struct.lua_TValue* %127, %struct.lua_TValue** %7, align 8
  %128 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %129 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 69
  br i1 %131, label %133, label %132

; <label>:132:                                    ; preds = %126
  store %struct.lua_TValue* null, %struct.lua_TValue** %10, align 8
  br i1 false, label %193, label %194

; <label>:133:                                    ; preds = %126
  %134 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %135 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %134, i32 0, i32 0
  %136 = bitcast %union.Value* %135 to %struct.GCObject**
  %137 = load %struct.GCObject*, %struct.GCObject** %136, align 8
  %138 = bitcast %struct.GCObject* %137 to %union.GCUnion*
  %139 = bitcast %union.GCUnion* %138 to %struct.Table*
  %140 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %141 = call %struct.lua_TValue* @luaH_get(%struct.Table* %139, %struct.lua_TValue* %140)
  store %struct.lua_TValue* %141, %struct.lua_TValue** %10, align 8
  %142 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %143 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

; <label>:146:                                    ; preds = %133
  br label %190

; <label>:147:                                    ; preds = %133
  %148 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %149 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = and i32 %150, 64
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %183

; <label>:153:                                    ; preds = %147
  %154 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %155 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %154, i32 0, i32 0
  %156 = bitcast %union.Value* %155 to %struct.GCObject**
  %157 = load %struct.GCObject*, %struct.GCObject** %156, align 8
  %158 = bitcast %struct.GCObject* %157 to %union.GCUnion*
  %159 = bitcast %union.GCUnion* %158 to %struct.Table*
  %160 = getelementptr inbounds %struct.Table, %struct.Table* %159, i32 0, i32 2
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = and i32 %162, 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %183

; <label>:165:                                    ; preds = %153
  %166 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %167 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %166, i32 0, i32 0
  %168 = bitcast %union.Value* %167 to %struct.GCObject**
  %169 = load %struct.GCObject*, %struct.GCObject** %168, align 8
  %170 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %169, i32 0, i32 2
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = and i32 %172, 3
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %183

; <label>:175:                                    ; preds = %165
  %176 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %177 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %178 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %177, i32 0, i32 0
  %179 = bitcast %union.Value* %178 to %struct.GCObject**
  %180 = load %struct.GCObject*, %struct.GCObject** %179, align 8
  %181 = bitcast %struct.GCObject* %180 to %union.GCUnion*
  %182 = bitcast %union.GCUnion* %181 to %struct.Table*
  call void @luaC_barrierback_(%struct.lua_State* %176, %struct.Table* %182)
  br label %184

; <label>:183:                                    ; preds = %165, %153, %147
  br label %184

; <label>:184:                                    ; preds = %183, %175
  %185 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %186 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %187 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %188 = bitcast %struct.lua_TValue* %186 to i8*
  %189 = bitcast %struct.lua_TValue* %187 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %188, i8* %189, i64 16, i32 8, i1 false)
  br label %190

; <label>:190:                                    ; preds = %184, %146
  %191 = phi i32 [ 0, %146 ], [ 1, %184 ]
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

; <label>:193:                                    ; preds = %190, %132
  br label %200

; <label>:194:                                    ; preds = %190, %132
  br label %195

; <label>:195:                                    ; preds = %194
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %11, align 4
  br label %14

; <label>:198:                                    ; preds = %14
  %199 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %199, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0)) #7
  unreachable

; <label>:200:                                    ; preds = %193, %120, %101
  ret void
}

declare hidden %struct.lua_TValue* @luaH_newkey(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #1

declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.Table*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaV_lessthan(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %6, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %7, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 15
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %3
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 15
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %24

; <label>:20:                                     ; preds = %14
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %23 = call i32 @LTnum(%struct.lua_TValue* %21, %struct.lua_TValue* %22)
  store i32 %23, i32* %4, align 4
  br label %66

; <label>:24:                                     ; preds = %14, %3
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 15
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %52

; <label>:30:                                     ; preds = %24
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 15
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %52

; <label>:36:                                     ; preds = %30
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 0
  %39 = bitcast %union.Value* %38 to %struct.GCObject**
  %40 = load %struct.GCObject*, %struct.GCObject** %39, align 8
  %41 = bitcast %struct.GCObject* %40 to %union.GCUnion*
  %42 = bitcast %union.GCUnion* %41 to %struct.TString*
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i32 0, i32 0
  %45 = bitcast %union.Value* %44 to %struct.GCObject**
  %46 = load %struct.GCObject*, %struct.GCObject** %45, align 8
  %47 = bitcast %struct.GCObject* %46 to %union.GCUnion*
  %48 = bitcast %union.GCUnion* %47 to %struct.TString*
  %49 = call i32 @l_strcmp(%struct.TString* %42, %struct.TString* %48)
  %50 = icmp slt i32 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %66

; <label>:52:                                     ; preds = %30, %24
  %53 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %56 = call i32 @luaT_callorderTM(%struct.lua_State* %53, %struct.lua_TValue* %54, %struct.lua_TValue* %55, i32 20)
  store i32 %56, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

; <label>:58:                                     ; preds = %52
  %59 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  call void @luaG_ordererror(%struct.lua_State* %59, %struct.lua_TValue* %60, %struct.lua_TValue* %61) #7
  unreachable

; <label>:62:                                     ; preds = %52
  br label %63

; <label>:63:                                     ; preds = %62
  br label %64

; <label>:64:                                     ; preds = %63
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

; <label>:66:                                     ; preds = %64, %36, %20
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LTnum(%struct.lua_TValue*, %struct.lua_TValue*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  store %struct.lua_TValue* %0, %struct.lua_TValue** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 19
  br i1 %11, label %12, label %36

; <label>:12:                                     ; preds = %2
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 0
  %15 = bitcast %union.Value* %14 to i64*
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 19
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %12
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 0
  %25 = bitcast %union.Value* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %22, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %68

; <label>:29:                                     ; preds = %12
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 0
  %33 = bitcast %union.Value* %32 to double*
  %34 = load double, double* %33, align 8
  %35 = call i32 @LTintfloat(i64 %30, double %34)
  store i32 %35, i32* %3, align 4
  br label %68

; <label>:36:                                     ; preds = %2
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 0
  %39 = bitcast %union.Value* %38 to double*
  %40 = load double, double* %39, align 8
  store double %40, double* %7, align 8
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %53

; <label>:45:                                     ; preds = %36
  %46 = load double, double* %7, align 8
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %47, i32 0, i32 0
  %49 = bitcast %union.Value* %48 to double*
  %50 = load double, double* %49, align 8
  %51 = fcmp olt double %46, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %68

; <label>:53:                                     ; preds = %36
  %54 = load double, double* %7, align 8
  %55 = load double, double* %7, align 8
  %56 = fcmp oeq double %54, %55
  br i1 %56, label %58, label %57

; <label>:57:                                     ; preds = %53
  store i32 0, i32* %3, align 4
  br label %68

; <label>:58:                                     ; preds = %53
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i32 0, i32 0
  %61 = bitcast %union.Value* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = load double, double* %7, align 8
  %64 = call i32 @LEintfloat(i64 %62, double %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %3, align 4
  br label %68

; <label>:68:                                     ; preds = %58, %57, %45, %29, %21
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l_strcmp(%struct.TString*, %struct.TString*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TString*, align 8
  %5 = alloca %struct.TString*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TString* %0, %struct.TString** %4, align 8
  store %struct.TString* %1, %struct.TString** %5, align 8
  %12 = load %struct.TString*, %struct.TString** %4, align 8
  %13 = bitcast %struct.TString* %12 to i8*
  %14 = getelementptr inbounds i8, i8* %13, i64 24
  store i8* %14, i8** %6, align 8
  %15 = load %struct.TString*, %struct.TString** %4, align 8
  %16 = getelementptr inbounds %struct.TString, %struct.TString* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 8
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %2
  %21 = load %struct.TString*, %struct.TString** %4, align 8
  %22 = getelementptr inbounds %struct.TString, %struct.TString* %21, i32 0, i32 4
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i64
  br label %30

; <label>:25:                                     ; preds = %2
  %26 = load %struct.TString*, %struct.TString** %4, align 8
  %27 = getelementptr inbounds %struct.TString, %struct.TString* %26, i32 0, i32 6
  %28 = bitcast %union.anon.3* %27 to i64*
  %29 = load i64, i64* %28, align 8
  br label %30

; <label>:30:                                     ; preds = %25, %20
  %31 = phi i64 [ %24, %20 ], [ %29, %25 ]
  store i64 %31, i64* %7, align 8
  %32 = load %struct.TString*, %struct.TString** %5, align 8
  %33 = bitcast %struct.TString* %32 to i8*
  %34 = getelementptr inbounds i8, i8* %33, i64 24
  store i8* %34, i8** %8, align 8
  %35 = load %struct.TString*, %struct.TString** %5, align 8
  %36 = getelementptr inbounds %struct.TString, %struct.TString* %35, i32 0, i32 1
  %37 = load i8, i8* %36, align 8
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %45

; <label>:40:                                     ; preds = %30
  %41 = load %struct.TString*, %struct.TString** %5, align 8
  %42 = getelementptr inbounds %struct.TString, %struct.TString* %41, i32 0, i32 4
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i64
  br label %50

; <label>:45:                                     ; preds = %30
  %46 = load %struct.TString*, %struct.TString** %5, align 8
  %47 = getelementptr inbounds %struct.TString, %struct.TString* %46, i32 0, i32 6
  %48 = bitcast %union.anon.3* %47 to i64*
  %49 = load i64, i64* %48, align 8
  br label %50

; <label>:50:                                     ; preds = %45, %40
  %51 = phi i64 [ %44, %40 ], [ %49, %45 ]
  store i64 %51, i64* %9, align 8
  br label %52

; <label>:52:                                     ; preds = %93, %50
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @strcoll(i8* %53, i8* %54) #8
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

; <label>:58:                                     ; preds = %52
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %3, align 4
  br label %94

; <label>:60:                                     ; preds = %52
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @strlen(i8* %61) #8
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

; <label>:66:                                     ; preds = %60
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 0, i32 1
  store i32 %71, i32* %3, align 4
  br label %94

; <label>:72:                                     ; preds = %60
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %72
  store i32 -1, i32* %3, align 4
  br label %94

; <label>:77:                                     ; preds = %72
  br label %78

; <label>:78:                                     ; preds = %77
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 %81
  store i8* %83, i8** %6, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %7, align 8
  %86 = sub i64 %85, %84
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 %87
  store i8* %89, i8** %8, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %9, align 8
  %92 = sub i64 %91, %90
  store i64 %92, i64* %9, align 8
  br label %93

; <label>:93:                                     ; preds = %78
  br label %52

; <label>:94:                                     ; preds = %76, %66, %58
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare hidden i32 @luaT_callorderTM(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, i32) #1

; Function Attrs: noreturn
declare hidden void @luaG_ordererror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #3

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaV_lessequal(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %6, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %7, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 15
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %3
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 15
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %24

; <label>:20:                                     ; preds = %14
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %23 = call i32 @LEnum(%struct.lua_TValue* %21, %struct.lua_TValue* %22)
  store i32 %23, i32* %4, align 4
  br label %92

; <label>:24:                                     ; preds = %14, %3
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 15
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %52

; <label>:30:                                     ; preds = %24
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 15
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %52

; <label>:36:                                     ; preds = %30
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 0
  %39 = bitcast %union.Value* %38 to %struct.GCObject**
  %40 = load %struct.GCObject*, %struct.GCObject** %39, align 8
  %41 = bitcast %struct.GCObject* %40 to %union.GCUnion*
  %42 = bitcast %union.GCUnion* %41 to %struct.TString*
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i32 0, i32 0
  %45 = bitcast %union.Value* %44 to %struct.GCObject**
  %46 = load %struct.GCObject*, %struct.GCObject** %45, align 8
  %47 = bitcast %struct.GCObject* %46 to %union.GCUnion*
  %48 = bitcast %union.GCUnion* %47 to %struct.TString*
  %49 = call i32 @l_strcmp(%struct.TString* %42, %struct.TString* %48)
  %50 = icmp sle i32 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %92

; <label>:52:                                     ; preds = %30, %24
  %53 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %56 = call i32 @luaT_callorderTM(%struct.lua_State* %53, %struct.lua_TValue* %54, %struct.lua_TValue* %55, i32 21)
  store i32 %56, i32* %8, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %60

; <label>:58:                                     ; preds = %52
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %92

; <label>:60:                                     ; preds = %52
  %61 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %61, i32 0, i32 7
  %63 = load %struct.CallInfo*, %struct.CallInfo** %62, align 8
  %64 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %63, i32 0, i32 7
  %65 = load i16, i16* %64, align 2
  %66 = zext i16 %65 to i32
  %67 = or i32 %66, 128
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %64, align 2
  %69 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %70 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %71 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %72 = call i32 @luaT_callorderTM(%struct.lua_State* %69, %struct.lua_TValue* %70, %struct.lua_TValue* %71, i32 20)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %73, i32 0, i32 7
  %75 = load %struct.CallInfo*, %struct.CallInfo** %74, align 8
  %76 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %75, i32 0, i32 7
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = xor i32 %78, 128
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %76, align 2
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %87

; <label>:83:                                     ; preds = %60
  %84 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %85 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %86 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  call void @luaG_ordererror(%struct.lua_State* %84, %struct.lua_TValue* %85, %struct.lua_TValue* %86) #7
  unreachable

; <label>:87:                                     ; preds = %60
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %4, align 4
  br label %92

; <label>:92:                                     ; preds = %87, %58, %36, %20
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LEnum(%struct.lua_TValue*, %struct.lua_TValue*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  store %struct.lua_TValue* %0, %struct.lua_TValue** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 19
  br i1 %11, label %12, label %36

; <label>:12:                                     ; preds = %2
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i32 0, i32 0
  %15 = bitcast %union.Value* %14 to i64*
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 19
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %12
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 0
  %25 = bitcast %union.Value* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %22, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %68

; <label>:29:                                     ; preds = %12
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 0
  %33 = bitcast %union.Value* %32 to double*
  %34 = load double, double* %33, align 8
  %35 = call i32 @LEintfloat(i64 %30, double %34)
  store i32 %35, i32* %3, align 4
  br label %68

; <label>:36:                                     ; preds = %2
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 0
  %39 = bitcast %union.Value* %38 to double*
  %40 = load double, double* %39, align 8
  store double %40, double* %7, align 8
  %41 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %42 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %53

; <label>:45:                                     ; preds = %36
  %46 = load double, double* %7, align 8
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %47, i32 0, i32 0
  %49 = bitcast %union.Value* %48 to double*
  %50 = load double, double* %49, align 8
  %51 = fcmp ole double %46, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %68

; <label>:53:                                     ; preds = %36
  %54 = load double, double* %7, align 8
  %55 = load double, double* %7, align 8
  %56 = fcmp oeq double %54, %55
  br i1 %56, label %58, label %57

; <label>:57:                                     ; preds = %53
  store i32 0, i32* %3, align 4
  br label %68

; <label>:58:                                     ; preds = %53
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i32 0, i32 0
  %61 = bitcast %union.Value* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = load double, double* %7, align 8
  %64 = call i32 @LTintfloat(i64 %62, double %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %3, align 4
  br label %68

; <label>:68:                                     ; preds = %58, %57, %45, %29, %21
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaV_equalobj(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %6, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %7, align 8
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 63
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 63
  %19 = icmp ne i32 %14, %18
  br i1 %19, label %20, label %72

; <label>:20:                                     ; preds = %3
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 15
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 15
  %29 = icmp ne i32 %24, %28
  br i1 %29, label %36, label %30

; <label>:30:                                     ; preds = %20
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 15
  %35 = icmp ne i32 %34, 3
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %30, %20
  store i32 0, i32* %4, align 4
  br label %442

; <label>:37:                                     ; preds = %30
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 19
  br i1 %41, label %42, label %47

; <label>:42:                                     ; preds = %37
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i32 0, i32 0
  %45 = bitcast %union.Value* %44 to i64*
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %9, align 8
  br i1 true, label %51, label %69

; <label>:47:                                     ; preds = %37
  %48 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %49 = call i32 @luaV_tointeger(%struct.lua_TValue* %48, i64* %9, i32 0)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

; <label>:51:                                     ; preds = %47, %42
  %52 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 19
  br i1 %55, label %56, label %61

; <label>:56:                                     ; preds = %51
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i32 0, i32 0
  %59 = bitcast %union.Value* %58 to i64*
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %10, align 8
  br i1 true, label %65, label %69

; <label>:61:                                     ; preds = %51
  %62 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %63 = call i32 @luaV_tointeger(%struct.lua_TValue* %62, i64* %10, i32 0)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

; <label>:65:                                     ; preds = %61, %56
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = icmp eq i64 %66, %67
  br label %69

; <label>:69:                                     ; preds = %65, %61, %56, %47, %42
  %70 = phi i1 [ false, %61 ], [ false, %56 ], [ false, %47 ], [ false, %42 ], [ %68, %65 ]
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %4, align 4
  br label %442

; <label>:72:                                     ; preds = %3
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %74 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, 63
  switch i32 %76, label %392 [
    i32 0, label %77
    i32 19, label %78
    i32 3, label %89
    i32 1, label %100
    i32 2, label %111
    i32 22, label %122
    i32 4, label %133
    i32 20, label %148
    i32 7, label %162
    i32 5, label %277
  ]

; <label>:77:                                     ; preds = %72
  store i32 1, i32* %4, align 4
  br label %442

; <label>:78:                                     ; preds = %72
  %79 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %80 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %79, i32 0, i32 0
  %81 = bitcast %union.Value* %80 to i64*
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i32 0, i32 0
  %85 = bitcast %union.Value* %84 to i64*
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %82, %86
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %4, align 4
  br label %442

; <label>:89:                                     ; preds = %72
  %90 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %91 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %90, i32 0, i32 0
  %92 = bitcast %union.Value* %91 to double*
  %93 = load double, double* %92, align 8
  %94 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %95 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %94, i32 0, i32 0
  %96 = bitcast %union.Value* %95 to double*
  %97 = load double, double* %96, align 8
  %98 = fcmp oeq double %93, %97
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %4, align 4
  br label %442

; <label>:100:                                    ; preds = %72
  %101 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %102 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %101, i32 0, i32 0
  %103 = bitcast %union.Value* %102 to i32*
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %106 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %105, i32 0, i32 0
  %107 = bitcast %union.Value* %106 to i32*
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %104, %108
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %4, align 4
  br label %442

; <label>:111:                                    ; preds = %72
  %112 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %113 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %112, i32 0, i32 0
  %114 = bitcast %union.Value* %113 to i8**
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %117 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %116, i32 0, i32 0
  %118 = bitcast %union.Value* %117 to i8**
  %119 = load i8*, i8** %118, align 8
  %120 = icmp eq i8* %115, %119
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %4, align 4
  br label %442

; <label>:122:                                    ; preds = %72
  %123 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %124 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %123, i32 0, i32 0
  %125 = bitcast %union.Value* %124 to i32 (%struct.lua_State*)**
  %126 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %125, align 8
  %127 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %128 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %127, i32 0, i32 0
  %129 = bitcast %union.Value* %128 to i32 (%struct.lua_State*)**
  %130 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %129, align 8
  %131 = icmp eq i32 (%struct.lua_State*)* %126, %130
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %4, align 4
  br label %442

; <label>:133:                                    ; preds = %72
  %134 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %135 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %134, i32 0, i32 0
  %136 = bitcast %union.Value* %135 to %struct.GCObject**
  %137 = load %struct.GCObject*, %struct.GCObject** %136, align 8
  %138 = bitcast %struct.GCObject* %137 to %union.GCUnion*
  %139 = bitcast %union.GCUnion* %138 to %struct.TString*
  %140 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %141 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %140, i32 0, i32 0
  %142 = bitcast %union.Value* %141 to %struct.GCObject**
  %143 = load %struct.GCObject*, %struct.GCObject** %142, align 8
  %144 = bitcast %struct.GCObject* %143 to %union.GCUnion*
  %145 = bitcast %union.GCUnion* %144 to %struct.TString*
  %146 = icmp eq %struct.TString* %139, %145
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %4, align 4
  br label %442

; <label>:148:                                    ; preds = %72
  %149 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %150 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %149, i32 0, i32 0
  %151 = bitcast %union.Value* %150 to %struct.GCObject**
  %152 = load %struct.GCObject*, %struct.GCObject** %151, align 8
  %153 = bitcast %struct.GCObject* %152 to %union.GCUnion*
  %154 = bitcast %union.GCUnion* %153 to %struct.TString*
  %155 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %156 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %155, i32 0, i32 0
  %157 = bitcast %union.Value* %156 to %struct.GCObject**
  %158 = load %struct.GCObject*, %struct.GCObject** %157, align 8
  %159 = bitcast %struct.GCObject* %158 to %union.GCUnion*
  %160 = bitcast %union.GCUnion* %159 to %struct.TString*
  %161 = call i32 @luaS_eqlngstr(%struct.TString* %154, %struct.TString* %160)
  store i32 %161, i32* %4, align 4
  br label %442

; <label>:162:                                    ; preds = %72
  %163 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %164 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %163, i32 0, i32 0
  %165 = bitcast %union.Value* %164 to %struct.GCObject**
  %166 = load %struct.GCObject*, %struct.GCObject** %165, align 8
  %167 = bitcast %struct.GCObject* %166 to %union.GCUnion*
  %168 = bitcast %union.GCUnion* %167 to %struct.Udata*
  %169 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %170 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %169, i32 0, i32 0
  %171 = bitcast %union.Value* %170 to %struct.GCObject**
  %172 = load %struct.GCObject*, %struct.GCObject** %171, align 8
  %173 = bitcast %struct.GCObject* %172 to %union.GCUnion*
  %174 = bitcast %union.GCUnion* %173 to %struct.Udata*
  %175 = icmp eq %struct.Udata* %168, %174
  br i1 %175, label %176, label %177

; <label>:176:                                    ; preds = %162
  store i32 1, i32* %4, align 4
  br label %442

; <label>:177:                                    ; preds = %162
  %178 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %179 = icmp eq %struct.lua_State* %178, null
  br i1 %179, label %180, label %181

; <label>:180:                                    ; preds = %177
  store i32 0, i32* %4, align 4
  br label %442

; <label>:181:                                    ; preds = %177
  br label %182

; <label>:182:                                    ; preds = %181
  %183 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %184 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %183, i32 0, i32 0
  %185 = bitcast %union.Value* %184 to %struct.GCObject**
  %186 = load %struct.GCObject*, %struct.GCObject** %185, align 8
  %187 = bitcast %struct.GCObject* %186 to %union.GCUnion*
  %188 = bitcast %union.GCUnion* %187 to %struct.Udata*
  %189 = getelementptr inbounds %struct.Udata, %struct.Udata* %188, i32 0, i32 4
  %190 = load %struct.Table*, %struct.Table** %189, align 8
  %191 = icmp eq %struct.Table* %190, null
  br i1 %191, label %192, label %193

; <label>:192:                                    ; preds = %182
  br label %226

; <label>:193:                                    ; preds = %182
  %194 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %195 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %194, i32 0, i32 0
  %196 = bitcast %union.Value* %195 to %struct.GCObject**
  %197 = load %struct.GCObject*, %struct.GCObject** %196, align 8
  %198 = bitcast %struct.GCObject* %197 to %union.GCUnion*
  %199 = bitcast %union.GCUnion* %198 to %struct.Udata*
  %200 = getelementptr inbounds %struct.Udata, %struct.Udata* %199, i32 0, i32 4
  %201 = load %struct.Table*, %struct.Table** %200, align 8
  %202 = getelementptr inbounds %struct.Table, %struct.Table* %201, i32 0, i32 3
  %203 = load i8, i8* %202, align 2
  %204 = zext i8 %203 to i32
  %205 = and i32 %204, 32
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

; <label>:207:                                    ; preds = %193
  br label %224

; <label>:208:                                    ; preds = %193
  %209 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %210 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %209, i32 0, i32 0
  %211 = bitcast %union.Value* %210 to %struct.GCObject**
  %212 = load %struct.GCObject*, %struct.GCObject** %211, align 8
  %213 = bitcast %struct.GCObject* %212 to %union.GCUnion*
  %214 = bitcast %union.GCUnion* %213 to %struct.Udata*
  %215 = getelementptr inbounds %struct.Udata, %struct.Udata* %214, i32 0, i32 4
  %216 = load %struct.Table*, %struct.Table** %215, align 8
  %217 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %218 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %217, i32 0, i32 6
  %219 = load %struct.global_State*, %struct.global_State** %218, align 8
  %220 = getelementptr inbounds %struct.global_State, %struct.global_State* %219, i32 0, i32 31
  %221 = getelementptr inbounds [24 x %struct.TString*], [24 x %struct.TString*]* %220, i64 0, i64 5
  %222 = load %struct.TString*, %struct.TString** %221, align 8
  %223 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %216, i32 5, %struct.TString* %222)
  br label %224

; <label>:224:                                    ; preds = %208, %207
  %225 = phi %struct.lua_TValue* [ null, %207 ], [ %223, %208 ]
  br label %226

; <label>:226:                                    ; preds = %224, %192
  %227 = phi %struct.lua_TValue* [ null, %192 ], [ %225, %224 ]
  store %struct.lua_TValue* %227, %struct.lua_TValue** %8, align 8
  %228 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %229 = icmp eq %struct.lua_TValue* %228, null
  br i1 %229, label %230, label %276

; <label>:230:                                    ; preds = %226
  %231 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %232 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %231, i32 0, i32 0
  %233 = bitcast %union.Value* %232 to %struct.GCObject**
  %234 = load %struct.GCObject*, %struct.GCObject** %233, align 8
  %235 = bitcast %struct.GCObject* %234 to %union.GCUnion*
  %236 = bitcast %union.GCUnion* %235 to %struct.Udata*
  %237 = getelementptr inbounds %struct.Udata, %struct.Udata* %236, i32 0, i32 4
  %238 = load %struct.Table*, %struct.Table** %237, align 8
  %239 = icmp eq %struct.Table* %238, null
  br i1 %239, label %240, label %241

; <label>:240:                                    ; preds = %230
  br label %274

; <label>:241:                                    ; preds = %230
  %242 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %243 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %242, i32 0, i32 0
  %244 = bitcast %union.Value* %243 to %struct.GCObject**
  %245 = load %struct.GCObject*, %struct.GCObject** %244, align 8
  %246 = bitcast %struct.GCObject* %245 to %union.GCUnion*
  %247 = bitcast %union.GCUnion* %246 to %struct.Udata*
  %248 = getelementptr inbounds %struct.Udata, %struct.Udata* %247, i32 0, i32 4
  %249 = load %struct.Table*, %struct.Table** %248, align 8
  %250 = getelementptr inbounds %struct.Table, %struct.Table* %249, i32 0, i32 3
  %251 = load i8, i8* %250, align 2
  %252 = zext i8 %251 to i32
  %253 = and i32 %252, 32
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

; <label>:255:                                    ; preds = %241
  br label %272

; <label>:256:                                    ; preds = %241
  %257 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %258 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %257, i32 0, i32 0
  %259 = bitcast %union.Value* %258 to %struct.GCObject**
  %260 = load %struct.GCObject*, %struct.GCObject** %259, align 8
  %261 = bitcast %struct.GCObject* %260 to %union.GCUnion*
  %262 = bitcast %union.GCUnion* %261 to %struct.Udata*
  %263 = getelementptr inbounds %struct.Udata, %struct.Udata* %262, i32 0, i32 4
  %264 = load %struct.Table*, %struct.Table** %263, align 8
  %265 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %266 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %265, i32 0, i32 6
  %267 = load %struct.global_State*, %struct.global_State** %266, align 8
  %268 = getelementptr inbounds %struct.global_State, %struct.global_State* %267, i32 0, i32 31
  %269 = getelementptr inbounds [24 x %struct.TString*], [24 x %struct.TString*]* %268, i64 0, i64 5
  %270 = load %struct.TString*, %struct.TString** %269, align 8
  %271 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %264, i32 5, %struct.TString* %270)
  br label %272

; <label>:272:                                    ; preds = %256, %255
  %273 = phi %struct.lua_TValue* [ null, %255 ], [ %271, %256 ]
  br label %274

; <label>:274:                                    ; preds = %272, %240
  %275 = phi %struct.lua_TValue* [ null, %240 ], [ %273, %272 ]
  store %struct.lua_TValue* %275, %struct.lua_TValue** %8, align 8
  br label %276

; <label>:276:                                    ; preds = %274, %226
  br label %403

; <label>:277:                                    ; preds = %72
  %278 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %279 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %278, i32 0, i32 0
  %280 = bitcast %union.Value* %279 to %struct.GCObject**
  %281 = load %struct.GCObject*, %struct.GCObject** %280, align 8
  %282 = bitcast %struct.GCObject* %281 to %union.GCUnion*
  %283 = bitcast %union.GCUnion* %282 to %struct.Table*
  %284 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %285 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %284, i32 0, i32 0
  %286 = bitcast %union.Value* %285 to %struct.GCObject**
  %287 = load %struct.GCObject*, %struct.GCObject** %286, align 8
  %288 = bitcast %struct.GCObject* %287 to %union.GCUnion*
  %289 = bitcast %union.GCUnion* %288 to %struct.Table*
  %290 = icmp eq %struct.Table* %283, %289
  br i1 %290, label %291, label %292

; <label>:291:                                    ; preds = %277
  store i32 1, i32* %4, align 4
  br label %442

; <label>:292:                                    ; preds = %277
  %293 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %294 = icmp eq %struct.lua_State* %293, null
  br i1 %294, label %295, label %296

; <label>:295:                                    ; preds = %292
  store i32 0, i32* %4, align 4
  br label %442

; <label>:296:                                    ; preds = %292
  br label %297

; <label>:297:                                    ; preds = %296
  %298 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %299 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %298, i32 0, i32 0
  %300 = bitcast %union.Value* %299 to %struct.GCObject**
  %301 = load %struct.GCObject*, %struct.GCObject** %300, align 8
  %302 = bitcast %struct.GCObject* %301 to %union.GCUnion*
  %303 = bitcast %union.GCUnion* %302 to %struct.Table*
  %304 = getelementptr inbounds %struct.Table, %struct.Table* %303, i32 0, i32 9
  %305 = load %struct.Table*, %struct.Table** %304, align 8
  %306 = icmp eq %struct.Table* %305, null
  br i1 %306, label %307, label %308

; <label>:307:                                    ; preds = %297
  br label %341

; <label>:308:                                    ; preds = %297
  %309 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %310 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %309, i32 0, i32 0
  %311 = bitcast %union.Value* %310 to %struct.GCObject**
  %312 = load %struct.GCObject*, %struct.GCObject** %311, align 8
  %313 = bitcast %struct.GCObject* %312 to %union.GCUnion*
  %314 = bitcast %union.GCUnion* %313 to %struct.Table*
  %315 = getelementptr inbounds %struct.Table, %struct.Table* %314, i32 0, i32 9
  %316 = load %struct.Table*, %struct.Table** %315, align 8
  %317 = getelementptr inbounds %struct.Table, %struct.Table* %316, i32 0, i32 3
  %318 = load i8, i8* %317, align 2
  %319 = zext i8 %318 to i32
  %320 = and i32 %319, 32
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %323

; <label>:322:                                    ; preds = %308
  br label %339

; <label>:323:                                    ; preds = %308
  %324 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %325 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %324, i32 0, i32 0
  %326 = bitcast %union.Value* %325 to %struct.GCObject**
  %327 = load %struct.GCObject*, %struct.GCObject** %326, align 8
  %328 = bitcast %struct.GCObject* %327 to %union.GCUnion*
  %329 = bitcast %union.GCUnion* %328 to %struct.Table*
  %330 = getelementptr inbounds %struct.Table, %struct.Table* %329, i32 0, i32 9
  %331 = load %struct.Table*, %struct.Table** %330, align 8
  %332 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %333 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %332, i32 0, i32 6
  %334 = load %struct.global_State*, %struct.global_State** %333, align 8
  %335 = getelementptr inbounds %struct.global_State, %struct.global_State* %334, i32 0, i32 31
  %336 = getelementptr inbounds [24 x %struct.TString*], [24 x %struct.TString*]* %335, i64 0, i64 5
  %337 = load %struct.TString*, %struct.TString** %336, align 8
  %338 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %331, i32 5, %struct.TString* %337)
  br label %339

; <label>:339:                                    ; preds = %323, %322
  %340 = phi %struct.lua_TValue* [ null, %322 ], [ %338, %323 ]
  br label %341

; <label>:341:                                    ; preds = %339, %307
  %342 = phi %struct.lua_TValue* [ null, %307 ], [ %340, %339 ]
  store %struct.lua_TValue* %342, %struct.lua_TValue** %8, align 8
  %343 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %344 = icmp eq %struct.lua_TValue* %343, null
  br i1 %344, label %345, label %391

; <label>:345:                                    ; preds = %341
  %346 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %347 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %346, i32 0, i32 0
  %348 = bitcast %union.Value* %347 to %struct.GCObject**
  %349 = load %struct.GCObject*, %struct.GCObject** %348, align 8
  %350 = bitcast %struct.GCObject* %349 to %union.GCUnion*
  %351 = bitcast %union.GCUnion* %350 to %struct.Table*
  %352 = getelementptr inbounds %struct.Table, %struct.Table* %351, i32 0, i32 9
  %353 = load %struct.Table*, %struct.Table** %352, align 8
  %354 = icmp eq %struct.Table* %353, null
  br i1 %354, label %355, label %356

; <label>:355:                                    ; preds = %345
  br label %389

; <label>:356:                                    ; preds = %345
  %357 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %358 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %357, i32 0, i32 0
  %359 = bitcast %union.Value* %358 to %struct.GCObject**
  %360 = load %struct.GCObject*, %struct.GCObject** %359, align 8
  %361 = bitcast %struct.GCObject* %360 to %union.GCUnion*
  %362 = bitcast %union.GCUnion* %361 to %struct.Table*
  %363 = getelementptr inbounds %struct.Table, %struct.Table* %362, i32 0, i32 9
  %364 = load %struct.Table*, %struct.Table** %363, align 8
  %365 = getelementptr inbounds %struct.Table, %struct.Table* %364, i32 0, i32 3
  %366 = load i8, i8* %365, align 2
  %367 = zext i8 %366 to i32
  %368 = and i32 %367, 32
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %371

; <label>:370:                                    ; preds = %356
  br label %387

; <label>:371:                                    ; preds = %356
  %372 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %373 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %372, i32 0, i32 0
  %374 = bitcast %union.Value* %373 to %struct.GCObject**
  %375 = load %struct.GCObject*, %struct.GCObject** %374, align 8
  %376 = bitcast %struct.GCObject* %375 to %union.GCUnion*
  %377 = bitcast %union.GCUnion* %376 to %struct.Table*
  %378 = getelementptr inbounds %struct.Table, %struct.Table* %377, i32 0, i32 9
  %379 = load %struct.Table*, %struct.Table** %378, align 8
  %380 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %381 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %380, i32 0, i32 6
  %382 = load %struct.global_State*, %struct.global_State** %381, align 8
  %383 = getelementptr inbounds %struct.global_State, %struct.global_State* %382, i32 0, i32 31
  %384 = getelementptr inbounds [24 x %struct.TString*], [24 x %struct.TString*]* %383, i64 0, i64 5
  %385 = load %struct.TString*, %struct.TString** %384, align 8
  %386 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %379, i32 5, %struct.TString* %385)
  br label %387

; <label>:387:                                    ; preds = %371, %370
  %388 = phi %struct.lua_TValue* [ null, %370 ], [ %386, %371 ]
  br label %389

; <label>:389:                                    ; preds = %387, %355
  %390 = phi %struct.lua_TValue* [ null, %355 ], [ %388, %387 ]
  store %struct.lua_TValue* %390, %struct.lua_TValue** %8, align 8
  br label %391

; <label>:391:                                    ; preds = %389, %341
  br label %403

; <label>:392:                                    ; preds = %72
  %393 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %394 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %393, i32 0, i32 0
  %395 = bitcast %union.Value* %394 to %struct.GCObject**
  %396 = load %struct.GCObject*, %struct.GCObject** %395, align 8
  %397 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %398 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %397, i32 0, i32 0
  %399 = bitcast %union.Value* %398 to %struct.GCObject**
  %400 = load %struct.GCObject*, %struct.GCObject** %399, align 8
  %401 = icmp eq %struct.GCObject* %396, %400
  %402 = zext i1 %401 to i32
  store i32 %402, i32* %4, align 4
  br label %442

; <label>:403:                                    ; preds = %391, %276
  %404 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %405 = icmp eq %struct.lua_TValue* %404, null
  br i1 %405, label %406, label %407

; <label>:406:                                    ; preds = %403
  store i32 0, i32* %4, align 4
  br label %442

; <label>:407:                                    ; preds = %403
  %408 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %409 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %410 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %411 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %412 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %413 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %412, i32 0, i32 5
  %414 = load %struct.lua_TValue*, %struct.lua_TValue** %413, align 8
  call void @luaT_callTM(%struct.lua_State* %408, %struct.lua_TValue* %409, %struct.lua_TValue* %410, %struct.lua_TValue* %411, %struct.lua_TValue* %414, i32 1)
  %415 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %416 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %415, i32 0, i32 5
  %417 = load %struct.lua_TValue*, %struct.lua_TValue** %416, align 8
  %418 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 8
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %438, label %421

; <label>:421:                                    ; preds = %407
  %422 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %423 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %422, i32 0, i32 5
  %424 = load %struct.lua_TValue*, %struct.lua_TValue** %423, align 8
  %425 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 8
  %427 = icmp eq i32 %426, 1
  br i1 %427, label %428, label %436

; <label>:428:                                    ; preds = %421
  %429 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %430 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %429, i32 0, i32 5
  %431 = load %struct.lua_TValue*, %struct.lua_TValue** %430, align 8
  %432 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %431, i32 0, i32 0
  %433 = bitcast %union.Value* %432 to i32*
  %434 = load i32, i32* %433, align 8
  %435 = icmp eq i32 %434, 0
  br label %436

; <label>:436:                                    ; preds = %428, %421
  %437 = phi i1 [ false, %421 ], [ %435, %428 ]
  br label %438

; <label>:438:                                    ; preds = %436, %407
  %439 = phi i1 [ true, %407 ], [ %437, %436 ]
  %440 = xor i1 %439, true
  %441 = zext i1 %440 to i32
  store i32 %441, i32* %4, align 4
  br label %442

; <label>:442:                                    ; preds = %438, %406, %392, %295, %291, %180, %176, %148, %133, %122, %111, %100, %89, %78, %77, %69, %36
  %443 = load i32, i32* %4, align 4
  ret i32 %443
}

declare hidden i32 @luaS_eqlngstr(%struct.TString*, %struct.TString*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaV_concat(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TString*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [40 x i8], align 16
  %12 = alloca %struct.lua_TValue*, align 8
  %13 = alloca %struct.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %14

; <label>:14:                                     ; preds = %317, %2
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 5
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  store %struct.lua_TValue* %17, %struct.lua_TValue** %5, align 8
  store i32 2, i32* %6, align 4
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i64 -2
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 15
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %31, label %24

; <label>:24:                                     ; preds = %14
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 -2
  %27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 15
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %49

; <label>:31:                                     ; preds = %24, %14
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i64 -1
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 15
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %57, label %38

; <label>:38:                                     ; preds = %31
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i64 -1
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 15
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %49

; <label>:45:                                     ; preds = %38
  %46 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %47, i64 -1
  call void @luaO_tostring(%struct.lua_State* %46, %struct.lua_TValue* %48)
  br i1 true, label %57, label %49

; <label>:49:                                     ; preds = %45, %38, %24
  %50 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %52 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %51, i64 -2
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i64 -1
  %55 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %56 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %55, i64 -2
  call void @luaT_trybinTM(%struct.lua_State* %50, %struct.lua_TValue* %52, %struct.lua_TValue* %54, %struct.lua_TValue* %56, i32 22)
  br label %304

; <label>:57:                                     ; preds = %45, %31
  %58 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %59 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %58, i64 -1
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 68
  br i1 %62, label %63, label %98

; <label>:63:                                     ; preds = %57
  %64 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %64, i64 -1
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i32 0, i32 0
  %67 = bitcast %union.Value* %66 to %struct.GCObject**
  %68 = load %struct.GCObject*, %struct.GCObject** %67, align 8
  %69 = bitcast %struct.GCObject* %68 to %union.GCUnion*
  %70 = bitcast %union.GCUnion* %69 to %struct.TString*
  %71 = getelementptr inbounds %struct.TString, %struct.TString* %70, i32 0, i32 4
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %98

; <label>:75:                                     ; preds = %63
  %76 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %76, i64 -2
  %78 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, 15
  %81 = icmp eq i32 %80, 4
  br i1 %81, label %95, label %82

; <label>:82:                                     ; preds = %75
  %83 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i64 -2
  %85 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, 15
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %93

; <label>:89:                                     ; preds = %82
  %90 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %91 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %92 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %91, i64 -2
  call void @luaO_tostring(%struct.lua_State* %90, %struct.lua_TValue* %92)
  br label %93

; <label>:93:                                     ; preds = %89, %82
  %94 = phi i1 [ false, %82 ], [ true, %89 ]
  br label %95

; <label>:95:                                     ; preds = %93, %75
  %96 = phi i1 [ true, %75 ], [ %94, %93 ]
  %97 = zext i1 %96 to i32
  br label %303

; <label>:98:                                     ; preds = %63, %57
  %99 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %100 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %99, i64 -2
  %101 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 68
  br i1 %103, label %104, label %125

; <label>:104:                                    ; preds = %98
  %105 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %106 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %105, i64 -2
  %107 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %106, i32 0, i32 0
  %108 = bitcast %union.Value* %107 to %struct.GCObject**
  %109 = load %struct.GCObject*, %struct.GCObject** %108, align 8
  %110 = bitcast %struct.GCObject* %109 to %union.GCUnion*
  %111 = bitcast %union.GCUnion* %110 to %struct.TString*
  %112 = getelementptr inbounds %struct.TString, %struct.TString* %111, i32 0, i32 4
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %125

; <label>:116:                                    ; preds = %104
  %117 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %118 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %117, i64 -2
  store %struct.lua_TValue* %118, %struct.lua_TValue** %7, align 8
  %119 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %120 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %121 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %120, i64 -1
  %122 = bitcast %struct.lua_TValue* %119 to i8*
  %123 = bitcast %struct.lua_TValue* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %123, i64 16, i32 8, i1 false)
  %124 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  br label %302

; <label>:125:                                    ; preds = %104, %98
  %126 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %127 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %126, i64 -1
  %128 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %127, i32 0, i32 0
  %129 = bitcast %union.Value* %128 to %struct.GCObject**
  %130 = load %struct.GCObject*, %struct.GCObject** %129, align 8
  %131 = bitcast %struct.GCObject* %130 to %union.GCUnion*
  %132 = bitcast %union.GCUnion* %131 to %struct.TString*
  %133 = getelementptr inbounds %struct.TString, %struct.TString* %132, i32 0, i32 1
  %134 = load i8, i8* %133, align 8
  %135 = zext i8 %134 to i32
  %136 = icmp eq i32 %135, 4
  br i1 %136, label %137, label %148

; <label>:137:                                    ; preds = %125
  %138 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %139 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %138, i64 -1
  %140 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %139, i32 0, i32 0
  %141 = bitcast %union.Value* %140 to %struct.GCObject**
  %142 = load %struct.GCObject*, %struct.GCObject** %141, align 8
  %143 = bitcast %struct.GCObject* %142 to %union.GCUnion*
  %144 = bitcast %union.GCUnion* %143 to %struct.TString*
  %145 = getelementptr inbounds %struct.TString, %struct.TString* %144, i32 0, i32 4
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i64
  br label %159

; <label>:148:                                    ; preds = %125
  %149 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %150 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %149, i64 -1
  %151 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %150, i32 0, i32 0
  %152 = bitcast %union.Value* %151 to %struct.GCObject**
  %153 = load %struct.GCObject*, %struct.GCObject** %152, align 8
  %154 = bitcast %struct.GCObject* %153 to %union.GCUnion*
  %155 = bitcast %union.GCUnion* %154 to %struct.TString*
  %156 = getelementptr inbounds %struct.TString, %struct.TString* %155, i32 0, i32 6
  %157 = bitcast %union.anon.3* %156 to i64*
  %158 = load i64, i64* %157, align 8
  br label %159

; <label>:159:                                    ; preds = %148, %137
  %160 = phi i64 [ %147, %137 ], [ %158, %148 ]
  store i64 %160, i64* %8, align 8
  store i32 1, i32* %6, align 4
  br label %161

; <label>:161:                                    ; preds = %259, %159
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %4, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %199

; <label>:165:                                    ; preds = %161
  %166 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = sub i64 0, %168
  %170 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %166, i64 %169
  %171 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %170, i64 -1
  %172 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = and i32 %173, 15
  %175 = icmp eq i32 %174, 4
  br i1 %175, label %197, label %176

; <label>:176:                                    ; preds = %165
  %177 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = sub i64 0, %179
  %181 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %177, i64 %180
  %182 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %181, i64 -1
  %183 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = and i32 %184, 15
  %186 = icmp eq i32 %185, 3
  br i1 %186, label %187, label %195

; <label>:187:                                    ; preds = %176
  %188 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %189 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = sub i64 0, %191
  %193 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %189, i64 %192
  %194 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %193, i64 -1
  call void @luaO_tostring(%struct.lua_State* %188, %struct.lua_TValue* %194)
  br label %195

; <label>:195:                                    ; preds = %187, %176
  %196 = phi i1 [ false, %176 ], [ true, %187 ]
  br label %197

; <label>:197:                                    ; preds = %195, %165
  %198 = phi i1 [ true, %165 ], [ %196, %195 ]
  br label %199

; <label>:199:                                    ; preds = %197, %161
  %200 = phi i1 [ false, %161 ], [ %198, %197 ]
  br i1 %200, label %201, label %262

; <label>:201:                                    ; preds = %199
  %202 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = sub i64 0, %204
  %206 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %202, i64 %205
  %207 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %206, i64 -1
  %208 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %207, i32 0, i32 0
  %209 = bitcast %union.Value* %208 to %struct.GCObject**
  %210 = load %struct.GCObject*, %struct.GCObject** %209, align 8
  %211 = bitcast %struct.GCObject* %210 to %union.GCUnion*
  %212 = bitcast %union.GCUnion* %211 to %struct.TString*
  %213 = getelementptr inbounds %struct.TString, %struct.TString* %212, i32 0, i32 1
  %214 = load i8, i8* %213, align 8
  %215 = zext i8 %214 to i32
  %216 = icmp eq i32 %215, 4
  br i1 %216, label %217, label %232

; <label>:217:                                    ; preds = %201
  %218 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = sub i64 0, %220
  %222 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %218, i64 %221
  %223 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %222, i64 -1
  %224 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %223, i32 0, i32 0
  %225 = bitcast %union.Value* %224 to %struct.GCObject**
  %226 = load %struct.GCObject*, %struct.GCObject** %225, align 8
  %227 = bitcast %struct.GCObject* %226 to %union.GCUnion*
  %228 = bitcast %union.GCUnion* %227 to %struct.TString*
  %229 = getelementptr inbounds %struct.TString, %struct.TString* %228, i32 0, i32 4
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i64
  br label %247

; <label>:232:                                    ; preds = %201
  %233 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %234 = load i32, i32* %6, align 4
  %235 = sext i32 %234 to i64
  %236 = sub i64 0, %235
  %237 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %233, i64 %236
  %238 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %237, i64 -1
  %239 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %238, i32 0, i32 0
  %240 = bitcast %union.Value* %239 to %struct.GCObject**
  %241 = load %struct.GCObject*, %struct.GCObject** %240, align 8
  %242 = bitcast %struct.GCObject* %241 to %union.GCUnion*
  %243 = bitcast %union.GCUnion* %242 to %struct.TString*
  %244 = getelementptr inbounds %struct.TString, %struct.TString* %243, i32 0, i32 6
  %245 = bitcast %union.anon.3* %244 to i64*
  %246 = load i64, i64* %245, align 8
  br label %247

; <label>:247:                                    ; preds = %232, %217
  %248 = phi i64 [ %231, %217 ], [ %246, %232 ]
  store i64 %248, i64* %10, align 8
  %249 = load i64, i64* %10, align 8
  %250 = load i64, i64* %8, align 8
  %251 = sub i64 9223372036854775807, %250
  %252 = icmp uge i64 %249, %251
  br i1 %252, label %253, label %255

; <label>:253:                                    ; preds = %247
  %254 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %254, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #7
  unreachable

; <label>:255:                                    ; preds = %247
  %256 = load i64, i64* %10, align 8
  %257 = load i64, i64* %8, align 8
  %258 = add i64 %257, %256
  store i64 %258, i64* %8, align 8
  br label %259

; <label>:259:                                    ; preds = %255
  %260 = load i32, i32* %6, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %6, align 4
  br label %161

; <label>:262:                                    ; preds = %199
  %263 = load i64, i64* %8, align 8
  %264 = icmp ule i64 %263, 40
  br i1 %264, label %265, label %273

; <label>:265:                                    ; preds = %262
  %266 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %267 = load i32, i32* %6, align 4
  %268 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i32 0, i32 0
  call void @copy2buff(%struct.lua_TValue* %266, i32 %267, i8* %268)
  %269 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %270 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i32 0, i32 0
  %271 = load i64, i64* %8, align 8
  %272 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %269, i8* %270, i64 %271)
  store %struct.TString* %272, %struct.TString** %9, align 8
  br label %282

; <label>:273:                                    ; preds = %262
  %274 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %275 = load i64, i64* %8, align 8
  %276 = call %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %274, i64 %275)
  store %struct.TString* %276, %struct.TString** %9, align 8
  %277 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %278 = load i32, i32* %6, align 4
  %279 = load %struct.TString*, %struct.TString** %9, align 8
  %280 = bitcast %struct.TString* %279 to i8*
  %281 = getelementptr inbounds i8, i8* %280, i64 24
  call void @copy2buff(%struct.lua_TValue* %277, i32 %278, i8* %281)
  br label %282

; <label>:282:                                    ; preds = %273, %265
  %283 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = sub i64 0, %285
  %287 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %283, i64 %286
  store %struct.lua_TValue* %287, %struct.lua_TValue** %12, align 8
  %288 = load %struct.TString*, %struct.TString** %9, align 8
  store %struct.TString* %288, %struct.TString** %13, align 8
  %289 = load %struct.TString*, %struct.TString** %13, align 8
  %290 = bitcast %struct.TString* %289 to %union.GCUnion*
  %291 = bitcast %union.GCUnion* %290 to %struct.GCObject*
  %292 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %293 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %292, i32 0, i32 0
  %294 = bitcast %union.Value* %293 to %struct.GCObject**
  store %struct.GCObject* %291, %struct.GCObject** %294, align 8
  %295 = load %struct.TString*, %struct.TString** %13, align 8
  %296 = getelementptr inbounds %struct.TString, %struct.TString* %295, i32 0, i32 1
  %297 = load i8, i8* %296, align 8
  %298 = zext i8 %297 to i32
  %299 = or i32 %298, 64
  %300 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %301 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %300, i32 0, i32 1
  store i32 %299, i32* %301, align 8
  br label %302

; <label>:302:                                    ; preds = %282, %116
  br label %303

; <label>:303:                                    ; preds = %302, %95
  br label %304

; <label>:304:                                    ; preds = %303, %49
  %305 = load i32, i32* %6, align 4
  %306 = sub nsw i32 %305, 1
  %307 = load i32, i32* %4, align 4
  %308 = sub nsw i32 %307, %306
  store i32 %308, i32* %4, align 4
  %309 = load i32, i32* %6, align 4
  %310 = sub nsw i32 %309, 1
  %311 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %312 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %311, i32 0, i32 5
  %313 = load %struct.lua_TValue*, %struct.lua_TValue** %312, align 8
  %314 = sext i32 %310 to i64
  %315 = sub i64 0, %314
  %316 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %313, i64 %315
  store %struct.lua_TValue* %316, %struct.lua_TValue** %312, align 8
  br label %317

; <label>:317:                                    ; preds = %304
  %318 = load i32, i32* %4, align 4
  %319 = icmp sgt i32 %318, 1
  br i1 %319, label %14, label %320

; <label>:320:                                    ; preds = %317
  ret void
}

declare hidden void @luaO_tostring(%struct.lua_State*, %struct.lua_TValue*) #1

declare hidden void @luaT_trybinTM(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy2buff(%struct.lua_TValue*, i32, i8*) #0 {
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.lua_TValue* %0, %struct.lua_TValue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

; <label>:9:                                      ; preds = %74, %3
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = sub i64 0, %12
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %10, i64 %13
  %15 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %14, i32 0, i32 0
  %16 = bitcast %union.Value* %15 to %struct.GCObject**
  %17 = load %struct.GCObject*, %struct.GCObject** %16, align 8
  %18 = bitcast %struct.GCObject* %17 to %union.GCUnion*
  %19 = bitcast %union.GCUnion* %18 to %struct.TString*
  %20 = getelementptr inbounds %struct.TString, %struct.TString* %19, i32 0, i32 1
  %21 = load i8, i8* %20, align 8
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %38

; <label>:24:                                     ; preds = %9
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = sub i64 0, %27
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 %28
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 0
  %31 = bitcast %union.Value* %30 to %struct.GCObject**
  %32 = load %struct.GCObject*, %struct.GCObject** %31, align 8
  %33 = bitcast %struct.GCObject* %32 to %union.GCUnion*
  %34 = bitcast %union.GCUnion* %33 to %struct.TString*
  %35 = getelementptr inbounds %struct.TString, %struct.TString* %34, i32 0, i32 4
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i64
  br label %52

; <label>:38:                                     ; preds = %9
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 0, %41
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i64 %42
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i32 0, i32 0
  %45 = bitcast %union.Value* %44 to %struct.GCObject**
  %46 = load %struct.GCObject*, %struct.GCObject** %45, align 8
  %47 = bitcast %struct.GCObject* %46 to %union.GCUnion*
  %48 = bitcast %union.GCUnion* %47 to %struct.TString*
  %49 = getelementptr inbounds %struct.TString, %struct.TString* %48, i32 0, i32 6
  %50 = bitcast %union.anon.3* %49 to i64*
  %51 = load i64, i64* %50, align 8
  br label %52

; <label>:52:                                     ; preds = %38, %24
  %53 = phi i64 [ %37, %24 ], [ %51, %38 ]
  store i64 %53, i64* %8, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = sub i64 0, %59
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i64 %60
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i32 0, i32 0
  %63 = bitcast %union.Value* %62 to %struct.GCObject**
  %64 = load %struct.GCObject*, %struct.GCObject** %63, align 8
  %65 = bitcast %struct.GCObject* %64 to %union.GCUnion*
  %66 = bitcast %union.GCUnion* %65 to %struct.TString*
  %67 = bitcast %struct.TString* %66 to i8*
  %68 = getelementptr inbounds i8, i8* %67, i64 24
  %69 = load i64, i64* %8, align 8
  %70 = mul i64 %69, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %68, i64 %70, i32 1, i1 false)
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %7, align 8
  br label %74

; <label>:74:                                     ; preds = %52
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %5, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %9, label %78

; <label>:78:                                     ; preds = %74
  ret void
}

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #1

declare hidden %struct.TString* @luaS_createlngstrobj(%struct.lua_State*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaV_objlen(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.Table*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %6, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 63
  switch i32 %15, label %97 [
    i32 5, label %16
    i32 4, label %65
    i32 20, label %81
  ]

; <label>:16:                                     ; preds = %3
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 0
  %19 = bitcast %union.Value* %18 to %struct.GCObject**
  %20 = load %struct.GCObject*, %struct.GCObject** %19, align 8
  %21 = bitcast %struct.GCObject* %20 to %union.GCUnion*
  %22 = bitcast %union.GCUnion* %21 to %struct.Table*
  store %struct.Table* %22, %struct.Table** %8, align 8
  %23 = load %struct.Table*, %struct.Table** %8, align 8
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %23, i32 0, i32 9
  %25 = load %struct.Table*, %struct.Table** %24, align 8
  %26 = icmp eq %struct.Table* %25, null
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %16
  br label %51

; <label>:28:                                     ; preds = %16
  %29 = load %struct.Table*, %struct.Table** %8, align 8
  %30 = getelementptr inbounds %struct.Table, %struct.Table* %29, i32 0, i32 9
  %31 = load %struct.Table*, %struct.Table** %30, align 8
  %32 = getelementptr inbounds %struct.Table, %struct.Table* %31, i32 0, i32 3
  %33 = load i8, i8* %32, align 2
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 16
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %28
  br label %49

; <label>:38:                                     ; preds = %28
  %39 = load %struct.Table*, %struct.Table** %8, align 8
  %40 = getelementptr inbounds %struct.Table, %struct.Table* %39, i32 0, i32 9
  %41 = load %struct.Table*, %struct.Table** %40, align 8
  %42 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 6
  %44 = load %struct.global_State*, %struct.global_State** %43, align 8
  %45 = getelementptr inbounds %struct.global_State, %struct.global_State* %44, i32 0, i32 31
  %46 = getelementptr inbounds [24 x %struct.TString*], [24 x %struct.TString*]* %45, i64 0, i64 4
  %47 = load %struct.TString*, %struct.TString** %46, align 8
  %48 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %41, i32 4, %struct.TString* %47)
  br label %49

; <label>:49:                                     ; preds = %38, %37
  %50 = phi %struct.lua_TValue* [ null, %37 ], [ %48, %38 ]
  br label %51

; <label>:51:                                     ; preds = %49, %27
  %52 = phi %struct.lua_TValue* [ null, %27 ], [ %50, %49 ]
  store %struct.lua_TValue* %52, %struct.lua_TValue** %7, align 8
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %54 = icmp ne %struct.lua_TValue* %53, null
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %51
  br label %109

; <label>:56:                                     ; preds = %51
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  store %struct.lua_TValue* %57, %struct.lua_TValue** %9, align 8
  %58 = load %struct.Table*, %struct.Table** %8, align 8
  %59 = call i64 @luaH_getn(%struct.Table* %58)
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i32 0, i32 0
  %62 = bitcast %union.Value* %61 to i64*
  store i64 %59, i64* %62, align 8
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i32 0, i32 1
  store i32 19, i32* %64, align 8
  br label %115

; <label>:65:                                     ; preds = %3
  %66 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  store %struct.lua_TValue* %66, %struct.lua_TValue** %10, align 8
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %67, i32 0, i32 0
  %69 = bitcast %union.Value* %68 to %struct.GCObject**
  %70 = load %struct.GCObject*, %struct.GCObject** %69, align 8
  %71 = bitcast %struct.GCObject* %70 to %union.GCUnion*
  %72 = bitcast %union.GCUnion* %71 to %struct.TString*
  %73 = getelementptr inbounds %struct.TString, %struct.TString* %72, i32 0, i32 4
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i64
  %76 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %77 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %76, i32 0, i32 0
  %78 = bitcast %union.Value* %77 to i64*
  store i64 %75, i64* %78, align 8
  %79 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %80 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %79, i32 0, i32 1
  store i32 19, i32* %80, align 8
  br label %115

; <label>:81:                                     ; preds = %3
  %82 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  store %struct.lua_TValue* %82, %struct.lua_TValue** %11, align 8
  %83 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i32 0, i32 0
  %85 = bitcast %union.Value* %84 to %struct.GCObject**
  %86 = load %struct.GCObject*, %struct.GCObject** %85, align 8
  %87 = bitcast %struct.GCObject* %86 to %union.GCUnion*
  %88 = bitcast %union.GCUnion* %87 to %struct.TString*
  %89 = getelementptr inbounds %struct.TString, %struct.TString* %88, i32 0, i32 6
  %90 = bitcast %union.anon.3* %89 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %93 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %92, i32 0, i32 0
  %94 = bitcast %union.Value* %93 to i64*
  store i64 %91, i64* %94, align 8
  %95 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %96 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %95, i32 0, i32 1
  store i32 19, i32* %96, align 8
  br label %115

; <label>:97:                                     ; preds = %3
  %98 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %99 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %100 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %98, %struct.lua_TValue* %99, i32 4)
  store %struct.lua_TValue* %100, %struct.lua_TValue** %7, align 8
  %101 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %102 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

; <label>:105:                                    ; preds = %97
  %106 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %107 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  call void @luaG_typeerror(%struct.lua_State* %106, %struct.lua_TValue* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)) #7
  unreachable

; <label>:108:                                    ; preds = %97
  br label %109

; <label>:109:                                    ; preds = %108, %55
  %110 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %111 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %112 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %113 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %114 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  call void @luaT_callTM(%struct.lua_State* %110, %struct.lua_TValue* %111, %struct.lua_TValue* %112, %struct.lua_TValue* %113, %struct.lua_TValue* %114, i32 1)
  br label %115

; <label>:115:                                    ; preds = %109, %81, %65, %56
  ret void
}

declare hidden i64 @luaH_getn(%struct.Table*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @luaV_div(%struct.lua_State*, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = add i64 %9, 1
  %11 = icmp ule i64 %10, 1
  br i1 %11, label %12, label %20

; <label>:12:                                     ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %12
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)) #7
  unreachable

; <label>:17:                                     ; preds = %12
  %18 = load i64, i64* %6, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %4, align 8
  br label %38

; <label>:20:                                     ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sdiv i64 %21, %22
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = xor i64 %24, %25
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %36

; <label>:28:                                     ; preds = %20
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = srem i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %28
  %34 = load i64, i64* %8, align 8
  %35 = sub nsw i64 %34, 1
  store i64 %35, i64* %8, align 8
  br label %36

; <label>:36:                                     ; preds = %33, %28, %20
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %4, align 8
  br label %38

; <label>:38:                                     ; preds = %36, %17
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @luaV_mod(%struct.lua_State*, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = add i64 %9, 1
  %11 = icmp ule i64 %10, 1
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %12
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)) #7
  unreachable

; <label>:17:                                     ; preds = %12
  store i64 0, i64* %4, align 8
  br label %35

; <label>:18:                                     ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = srem i64 %19, %20
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

; <label>:24:                                     ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = xor i64 %25, %26
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %33

; <label>:29:                                     ; preds = %24
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %8, align 8
  br label %33

; <label>:33:                                     ; preds = %29, %24, %18
  %34 = load i64, i64* %8, align 8
  store i64 %34, i64* %4, align 8
  br label %35

; <label>:35:                                     ; preds = %33, %17
  %36 = load i64, i64* %4, align 8
  ret i64 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @luaV_shiftl(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = icmp sle i64 %9, -64
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  store i64 0, i64* %3, align 8
  br label %25

; <label>:12:                                     ; preds = %8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = sub nsw i64 0, %14
  %16 = lshr i64 %13, %15
  store i64 %16, i64* %3, align 8
  br label %25

; <label>:17:                                     ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = icmp sge i64 %18, 64
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  store i64 0, i64* %3, align 8
  br label %25

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = shl i64 %22, %23
  store i64 %24, i64* %3, align 8
  br label %25

; <label>:25:                                     ; preds = %21, %20, %12, %11
  %26 = load i64, i64* %3, align 8
  ret i64 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaV_finishOp(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.CallInfo*, align 8
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lua_TValue*, align 8
  %13 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 7
  %16 = load %struct.CallInfo*, %struct.CallInfo** %15, align 8
  store %struct.CallInfo* %16, %struct.CallInfo** %3, align 8
  %17 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %18 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %17, i32 0, i32 4
  %19 = bitcast %union.anon* %18 to %struct.anon*
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8
  store %struct.lua_TValue* %21, %struct.lua_TValue** %4, align 8
  %22 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %23 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %22, i32 0, i32 4
  %24 = bitcast %union.anon* %23 to %struct.anon*
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 -1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = lshr i32 %29, 0
  %31 = and i32 %30, 63
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %193 [
    i32 13, label %33
    i32 14, label %33
    i32 15, label %33
    i32 18, label %33
    i32 19, label %33
    i32 20, label %33
    i32 21, label %33
    i32 22, label %33
    i32 23, label %33
    i32 24, label %33
    i32 16, label %33
    i32 17, label %33
    i32 25, label %33
    i32 26, label %33
    i32 28, label %33
    i32 6, label %33
    i32 7, label %33
    i32 12, label %33
    i32 33, label %48
    i32 32, label %48
    i32 31, label %48
    i32 29, label %114
    i32 41, label %173
    i32 36, label %179
    i32 37, label %192
    i32 8, label %192
    i32 10, label %192
  ]

; <label>:33:                                     ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = lshr i32 %35, 6
  %37 = and i32 %36, 255
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 %38
  store %struct.lua_TValue* %39, %struct.lua_TValue** %7, align 8
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %41 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i32 0, i32 5
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %42, align 8
  %44 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %43, i32 -1
  store %struct.lua_TValue* %44, %struct.lua_TValue** %42, align 8
  %45 = bitcast %struct.lua_TValue* %40 to i8*
  %46 = bitcast %struct.lua_TValue* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 16, i32 8, i1 false)
  %47 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  br label %194

; <label>:48:                                     ; preds = %1, %1, %1
  %49 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %49, i32 0, i32 5
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %50, align 8
  %52 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %51, i64 -1
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %75, label %56

; <label>:56:                                     ; preds = %48
  %57 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %57, i32 0, i32 5
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %58, align 8
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i64 -1
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %73

; <label>:64:                                     ; preds = %56
  %65 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %66 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %65, i32 0, i32 5
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %66, align 8
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %67, i64 -1
  %69 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i32 0, i32 0
  %70 = bitcast %union.Value* %69 to i32*
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 0
  br label %73

; <label>:73:                                     ; preds = %64, %56
  %74 = phi i1 [ false, %56 ], [ %72, %64 ]
  br label %75

; <label>:75:                                     ; preds = %73, %48
  %76 = phi i1 [ true, %48 ], [ %74, %73 ]
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %8, align 4
  %79 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %79, i32 0, i32 5
  %81 = load %struct.lua_TValue*, %struct.lua_TValue** %80, align 8
  %82 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %81, i32 -1
  store %struct.lua_TValue* %82, %struct.lua_TValue** %80, align 8
  %83 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %84 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %83, i32 0, i32 7
  %85 = load i16, i16* %84, align 2
  %86 = zext i16 %85 to i32
  %87 = and i32 %86, 128
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

; <label>:89:                                     ; preds = %75
  %90 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %91 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %90, i32 0, i32 7
  %92 = load i16, i16* %91, align 2
  %93 = zext i16 %92 to i32
  %94 = xor i32 %93, 128
  %95 = trunc i32 %94 to i16
  store i16 %95, i16* %91, align 2
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %8, align 4
  br label %100

; <label>:100:                                    ; preds = %89, %75
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %5, align 4
  %103 = lshr i32 %102, 6
  %104 = and i32 %103, 255
  %105 = icmp ne i32 %101, %104
  br i1 %105, label %106, label %113

; <label>:106:                                    ; preds = %100
  %107 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %108 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %107, i32 0, i32 4
  %109 = bitcast %union.anon* %108 to %struct.anon*
  %110 = getelementptr inbounds %struct.anon, %struct.anon* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %110, align 8
  br label %113

; <label>:113:                                    ; preds = %106, %100
  br label %194

; <label>:114:                                    ; preds = %1
  %115 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %116 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %115, i32 0, i32 5
  %117 = load %struct.lua_TValue*, %struct.lua_TValue** %116, align 8
  %118 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %117, i64 -1
  store %struct.lua_TValue* %118, %struct.lua_TValue** %9, align 8
  %119 = load i32, i32* %5, align 4
  %120 = lshr i32 %119, 23
  %121 = and i32 %120, 511
  store i32 %121, i32* %10, align 4
  %122 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %123 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %122, i64 -1
  %124 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %124, i64 %126
  %128 = ptrtoint %struct.lua_TValue* %123 to i64
  %129 = ptrtoint %struct.lua_TValue* %127 to i64
  %130 = sub i64 %128, %129
  %131 = sdiv exact i64 %130, 16
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %11, align 4
  %133 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %134 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %133, i64 -2
  store %struct.lua_TValue* %134, %struct.lua_TValue** %12, align 8
  %135 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %136 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %137 = bitcast %struct.lua_TValue* %135 to i8*
  %138 = bitcast %struct.lua_TValue* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %137, i8* %138, i64 16, i32 8, i1 false)
  %139 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %140 = load i32, i32* %11, align 4
  %141 = icmp sgt i32 %140, 1
  br i1 %141, label %142, label %149

; <label>:142:                                    ; preds = %114
  %143 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %144 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %143, i64 -1
  %145 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %146 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %145, i32 0, i32 5
  store %struct.lua_TValue* %144, %struct.lua_TValue** %146, align 8
  %147 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %148 = load i32, i32* %11, align 4
  call void @luaV_concat(%struct.lua_State* %147, i32 %148)
  br label %149

; <label>:149:                                    ; preds = %142, %114
  %150 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %151 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %150, i32 0, i32 4
  %152 = bitcast %union.anon* %151 to %struct.anon*
  %153 = getelementptr inbounds %struct.anon, %struct.anon* %152, i32 0, i32 0
  %154 = load %struct.lua_TValue*, %struct.lua_TValue** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = lshr i32 %155, 6
  %157 = and i32 %156, 255
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %154, i64 %158
  store %struct.lua_TValue* %159, %struct.lua_TValue** %13, align 8
  %160 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8
  %161 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %162 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %161, i32 0, i32 5
  %163 = load %struct.lua_TValue*, %struct.lua_TValue** %162, align 8
  %164 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %163, i64 -1
  %165 = bitcast %struct.lua_TValue* %160 to i8*
  %166 = bitcast %struct.lua_TValue* %164 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %165, i8* %166, i64 16, i32 8, i1 false)
  %167 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %168 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %169 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %168, i32 0, i32 1
  %170 = load %struct.lua_TValue*, %struct.lua_TValue** %169, align 8
  %171 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %172 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %171, i32 0, i32 5
  store %struct.lua_TValue* %170, %struct.lua_TValue** %172, align 8
  br label %194

; <label>:173:                                    ; preds = %1
  %174 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %175 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %174, i32 0, i32 1
  %176 = load %struct.lua_TValue*, %struct.lua_TValue** %175, align 8
  %177 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %178 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %177, i32 0, i32 5
  store %struct.lua_TValue* %176, %struct.lua_TValue** %178, align 8
  br label %194

; <label>:179:                                    ; preds = %1
  %180 = load i32, i32* %5, align 4
  %181 = lshr i32 %180, 14
  %182 = and i32 %181, 511
  %183 = sub nsw i32 %182, 1
  %184 = icmp sge i32 %183, 0
  br i1 %184, label %185, label %191

; <label>:185:                                    ; preds = %179
  %186 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %187 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %186, i32 0, i32 1
  %188 = load %struct.lua_TValue*, %struct.lua_TValue** %187, align 8
  %189 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %190 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %189, i32 0, i32 5
  store %struct.lua_TValue* %188, %struct.lua_TValue** %190, align 8
  br label %191

; <label>:191:                                    ; preds = %185, %179
  br label %194

; <label>:192:                                    ; preds = %1, %1, %1
  br label %194

; <label>:193:                                    ; preds = %1
  br label %194

; <label>:194:                                    ; preds = %193, %192, %191, %173, %149, %113, %33
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaV_execute(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.CallInfo*, align 8
  %4 = alloca %struct.LClosure*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca %struct.lua_TValue*, align 8
  %12 = alloca %struct.lua_TValue*, align 8
  %13 = alloca %struct.lua_TValue*, align 8
  %14 = alloca %struct.lua_TValue*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.lua_TValue*, align 8
  %18 = alloca %struct.lua_TValue*, align 8
  %19 = alloca %struct.lua_TValue*, align 8
  %20 = alloca %struct.lua_TValue*, align 8
  %21 = alloca %struct.lua_TValue*, align 8
  %22 = alloca %struct.lua_TValue*, align 8
  %23 = alloca %struct.lua_TValue*, align 8
  %24 = alloca %struct.lua_TValue*, align 8
  %25 = alloca %struct.lua_TValue*, align 8
  %26 = alloca %struct.lua_TValue*, align 8
  %27 = alloca %struct.lua_TValue*, align 8
  %28 = alloca %struct.lua_TValue*, align 8
  %29 = alloca %struct.lua_TValue*, align 8
  %30 = alloca %struct.UpVal*, align 8
  %31 = alloca %struct.lua_TValue*, align 8
  %32 = alloca %struct.lua_TValue*, align 8
  %33 = alloca %struct.lua_TValue*, align 8
  %34 = alloca %struct.lua_TValue*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.Table*, align 8
  %38 = alloca %struct.lua_TValue*, align 8
  %39 = alloca %struct.Table*, align 8
  %40 = alloca %struct.lua_TValue*, align 8
  %41 = alloca %struct.lua_TValue*, align 8
  %42 = alloca %struct.lua_TValue*, align 8
  %43 = alloca %struct.TString*, align 8
  %44 = alloca %struct.lua_TValue*, align 8
  %45 = alloca %struct.lua_TValue*, align 8
  %46 = alloca %struct.lua_TValue*, align 8
  %47 = alloca %struct.lua_TValue*, align 8
  %48 = alloca double, align 8
  %49 = alloca double, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca %struct.lua_TValue*, align 8
  %53 = alloca %struct.lua_TValue*, align 8
  %54 = alloca %struct.lua_TValue*, align 8
  %55 = alloca %struct.lua_TValue*, align 8
  %56 = alloca double, align 8
  %57 = alloca double, align 8
  %58 = alloca i64, align 8
  %59 = alloca i64, align 8
  %60 = alloca %struct.lua_TValue*, align 8
  %61 = alloca %struct.lua_TValue*, align 8
  %62 = alloca %struct.lua_TValue*, align 8
  %63 = alloca %struct.lua_TValue*, align 8
  %64 = alloca double, align 8
  %65 = alloca double, align 8
  %66 = alloca i64, align 8
  %67 = alloca i64, align 8
  %68 = alloca %struct.lua_TValue*, align 8
  %69 = alloca %struct.lua_TValue*, align 8
  %70 = alloca %struct.lua_TValue*, align 8
  %71 = alloca %struct.lua_TValue*, align 8
  %72 = alloca double, align 8
  %73 = alloca double, align 8
  %74 = alloca %struct.lua_TValue*, align 8
  %75 = alloca %struct.lua_TValue*, align 8
  %76 = alloca %struct.lua_TValue*, align 8
  %77 = alloca i64, align 8
  %78 = alloca i64, align 8
  %79 = alloca %struct.lua_TValue*, align 8
  %80 = alloca %struct.lua_TValue*, align 8
  %81 = alloca %struct.lua_TValue*, align 8
  %82 = alloca i64, align 8
  %83 = alloca i64, align 8
  %84 = alloca %struct.lua_TValue*, align 8
  %85 = alloca %struct.lua_TValue*, align 8
  %86 = alloca %struct.lua_TValue*, align 8
  %87 = alloca i64, align 8
  %88 = alloca i64, align 8
  %89 = alloca %struct.lua_TValue*, align 8
  %90 = alloca %struct.lua_TValue*, align 8
  %91 = alloca %struct.lua_TValue*, align 8
  %92 = alloca i64, align 8
  %93 = alloca i64, align 8
  %94 = alloca %struct.lua_TValue*, align 8
  %95 = alloca %struct.lua_TValue*, align 8
  %96 = alloca %struct.lua_TValue*, align 8
  %97 = alloca i64, align 8
  %98 = alloca i64, align 8
  %99 = alloca %struct.lua_TValue*, align 8
  %100 = alloca %struct.lua_TValue*, align 8
  %101 = alloca %struct.lua_TValue*, align 8
  %102 = alloca double, align 8
  %103 = alloca double, align 8
  %104 = alloca i64, align 8
  %105 = alloca i64, align 8
  %106 = alloca %struct.lua_TValue*, align 8
  %107 = alloca double, align 8
  %108 = alloca %struct.lua_TValue*, align 8
  %109 = alloca %struct.lua_TValue*, align 8
  %110 = alloca %struct.lua_TValue*, align 8
  %111 = alloca double, align 8
  %112 = alloca double, align 8
  %113 = alloca i64, align 8
  %114 = alloca i64, align 8
  %115 = alloca %struct.lua_TValue*, align 8
  %116 = alloca %struct.lua_TValue*, align 8
  %117 = alloca %struct.lua_TValue*, align 8
  %118 = alloca %struct.lua_TValue*, align 8
  %119 = alloca double, align 8
  %120 = alloca double, align 8
  %121 = alloca %struct.lua_TValue*, align 8
  %122 = alloca %struct.lua_TValue*, align 8
  %123 = alloca double, align 8
  %124 = alloca i64, align 8
  %125 = alloca %struct.lua_TValue*, align 8
  %126 = alloca %struct.lua_TValue*, align 8
  %127 = alloca %struct.lua_TValue*, align 8
  %128 = alloca i64, align 8
  %129 = alloca %struct.lua_TValue*, align 8
  %130 = alloca %struct.lua_TValue*, align 8
  %131 = alloca i32, align 4
  %132 = alloca %struct.lua_TValue*, align 8
  %133 = alloca i32, align 4
  %134 = alloca i32, align 4
  %135 = alloca %struct.lua_TValue*, align 8
  %136 = alloca %struct.lua_TValue*, align 8
  %137 = alloca i32, align 4
  %138 = alloca %struct.lua_TValue*, align 8
  %139 = alloca %struct.lua_TValue*, align 8
  %140 = alloca i32, align 4
  %141 = alloca i32, align 4
  %142 = alloca i32, align 4
  %143 = alloca i32, align 4
  %144 = alloca %struct.lua_TValue*, align 8
  %145 = alloca %struct.lua_TValue*, align 8
  %146 = alloca i32, align 4
  %147 = alloca i32, align 4
  %148 = alloca i32, align 4
  %149 = alloca i32, align 4
  %150 = alloca %struct.CallInfo*, align 8
  %151 = alloca %struct.CallInfo*, align 8
  %152 = alloca %struct.lua_TValue*, align 8
  %153 = alloca %struct.lua_TValue*, align 8
  %154 = alloca %struct.lua_TValue*, align 8
  %155 = alloca i32, align 4
  %156 = alloca %struct.lua_TValue*, align 8
  %157 = alloca i32, align 4
  %158 = alloca i64, align 8
  %159 = alloca i64, align 8
  %160 = alloca i64, align 8
  %161 = alloca %struct.lua_TValue*, align 8
  %162 = alloca %struct.lua_TValue*, align 8
  %163 = alloca double, align 8
  %164 = alloca double, align 8
  %165 = alloca double, align 8
  %166 = alloca %struct.lua_TValue*, align 8
  %167 = alloca %struct.lua_TValue*, align 8
  %168 = alloca %struct.lua_TValue*, align 8
  %169 = alloca %struct.lua_TValue*, align 8
  %170 = alloca %struct.lua_TValue*, align 8
  %171 = alloca i64, align 8
  %172 = alloca i32, align 4
  %173 = alloca i64, align 8
  %174 = alloca %struct.lua_TValue*, align 8
  %175 = alloca %struct.lua_TValue*, align 8
  %176 = alloca double, align 8
  %177 = alloca double, align 8
  %178 = alloca double, align 8
  %179 = alloca %struct.lua_TValue*, align 8
  %180 = alloca %struct.lua_TValue*, align 8
  %181 = alloca %struct.lua_TValue*, align 8
  %182 = alloca %struct.lua_TValue*, align 8
  %183 = alloca %struct.lua_TValue*, align 8
  %184 = alloca %struct.lua_TValue*, align 8
  %185 = alloca %struct.lua_TValue*, align 8
  %186 = alloca %struct.lua_TValue*, align 8
  %187 = alloca i32, align 4
  %188 = alloca i32, align 4
  %189 = alloca i32, align 4
  %190 = alloca %struct.Table*, align 8
  %191 = alloca %struct.lua_TValue*, align 8
  %192 = alloca %struct.Proto*, align 8
  %193 = alloca %struct.LClosure*, align 8
  %194 = alloca %struct.lua_TValue*, align 8
  %195 = alloca %struct.LClosure*, align 8
  %196 = alloca i32, align 4
  %197 = alloca i32, align 4
  %198 = alloca i32, align 4
  %199 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %200 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %201 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %200, i32 0, i32 7
  %202 = load %struct.CallInfo*, %struct.CallInfo** %201, align 8
  store %struct.CallInfo* %202, %struct.CallInfo** %3, align 8
  %203 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %204 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %203, i32 0, i32 7
  %205 = load i16, i16* %204, align 2
  %206 = zext i16 %205 to i32
  %207 = or i32 %206, 8
  %208 = trunc i32 %207 to i16
  store i16 %208, i16* %204, align 2
  br label %209

; <label>:209:                                    ; preds = %3165, %3061, %2963, %1
  %210 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %211 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %210, i32 0, i32 0
  %212 = load %struct.lua_TValue*, %struct.lua_TValue** %211, align 8
  %213 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %212, i32 0, i32 0
  %214 = bitcast %union.Value* %213 to %struct.GCObject**
  %215 = load %struct.GCObject*, %struct.GCObject** %214, align 8
  %216 = bitcast %struct.GCObject* %215 to %union.GCUnion*
  %217 = bitcast %union.GCUnion* %216 to %union.Closure*
  %218 = bitcast %union.Closure* %217 to %struct.LClosure*
  store %struct.LClosure* %218, %struct.LClosure** %4, align 8
  %219 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %220 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %219, i32 0, i32 5
  %221 = load %struct.Proto*, %struct.Proto** %220, align 8
  %222 = getelementptr inbounds %struct.Proto, %struct.Proto* %221, i32 0, i32 14
  %223 = load %struct.lua_TValue*, %struct.lua_TValue** %222, align 8
  store %struct.lua_TValue* %223, %struct.lua_TValue** %5, align 8
  %224 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %225 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %224, i32 0, i32 4
  %226 = bitcast %union.anon* %225 to %struct.anon*
  %227 = getelementptr inbounds %struct.anon, %struct.anon* %226, i32 0, i32 0
  %228 = load %struct.lua_TValue*, %struct.lua_TValue** %227, align 8
  store %struct.lua_TValue* %228, %struct.lua_TValue** %6, align 8
  br label %229

; <label>:229:                                    ; preds = %3779, %209
  %230 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %231 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %230, i32 0, i32 4
  %232 = bitcast %union.anon* %231 to %struct.anon*
  %233 = getelementptr inbounds %struct.anon, %struct.anon* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i32 1
  store i32* %235, i32** %233, align 8
  %236 = load i32, i32* %234, align 4
  store i32 %236, i32* %7, align 4
  %237 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %238 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %237, i32 0, i32 23
  %239 = load i32, i32* %238, align 8
  %240 = and i32 %239, 12
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %249

; <label>:242:                                    ; preds = %229
  %243 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaG_traceexec(%struct.lua_State* %243)
  %244 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %245 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %244, i32 0, i32 4
  %246 = bitcast %union.anon* %245 to %struct.anon*
  %247 = getelementptr inbounds %struct.anon, %struct.anon* %246, i32 0, i32 0
  %248 = load %struct.lua_TValue*, %struct.lua_TValue** %247, align 8
  store %struct.lua_TValue* %248, %struct.lua_TValue** %6, align 8
  br label %249

; <label>:249:                                    ; preds = %242, %229
  %250 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %251 = load i32, i32* %7, align 4
  %252 = lshr i32 %251, 6
  %253 = and i32 %252, 255
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %250, i64 %254
  store %struct.lua_TValue* %255, %struct.lua_TValue** %8, align 8
  %256 = load i32, i32* %7, align 4
  %257 = lshr i32 %256, 0
  %258 = and i32 %257, 63
  switch i32 %258, label %3779 [
    i32 0, label %259
    i32 1, label %271
    i32 2, label %284
    i32 3, label %303
    i32 4, label %325
    i32 5, label %338
    i32 6, label %355
    i32 7, label %426
    i32 8, label %493
    i32 9, label %625
    i32 10, label %662
    i32 11, label %784
    i32 12, label %839
    i32 13, label %919
    i32 14, label %1041
    i32 15, label %1163
    i32 18, label %1285
    i32 20, label %1378
    i32 21, label %1471
    i32 22, label %1564
    i32 23, label %1657
    i32 24, label %1750
    i32 16, label %1844
    i32 19, label %1977
    i32 17, label %2102
    i32 25, label %2196
    i32 26, label %2255
    i32 27, label %2295
    i32 28, label %2329
    i32 29, label %2343
    i32 30, label %2419
    i32 31, label %2449
    i32 32, label %2551
    i32 33, label %2651
    i32 34, label %2751
    i32 35, label %2832
    i32 36, label %2925
    i32 37, label %2968
    i32 38, label %3111
    i32 39, label %3166
    i32 40, label %3278
    i32 41, label %3415
    i32 42, label %3472
    i32 43, label %3499
    i32 44, label %3604
    i32 45, label %3667
    i32 46, label %3778
  ]

; <label>:259:                                    ; preds = %249
  %260 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %260, %struct.lua_TValue** %9, align 8
  %261 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %262 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %263 = load i32, i32* %7, align 4
  %264 = lshr i32 %263, 23
  %265 = and i32 %264, 511
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %262, i64 %266
  %268 = bitcast %struct.lua_TValue* %261 to i8*
  %269 = bitcast %struct.lua_TValue* %267 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %268, i8* %269, i64 16, i32 8, i1 false)
  %270 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  br label %3779

; <label>:271:                                    ; preds = %249
  %272 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %273 = load i32, i32* %7, align 4
  %274 = lshr i32 %273, 14
  %275 = and i32 %274, 262143
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %272, i64 %276
  store %struct.lua_TValue* %277, %struct.lua_TValue** %10, align 8
  %278 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %278, %struct.lua_TValue** %11, align 8
  %279 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %280 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %281 = bitcast %struct.lua_TValue* %279 to i8*
  %282 = bitcast %struct.lua_TValue* %280 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %281, i8* %282, i64 16, i32 8, i1 false)
  %283 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  br label %3779

; <label>:284:                                    ; preds = %249
  %285 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %286 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %287 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %286, i32 0, i32 4
  %288 = bitcast %union.anon* %287 to %struct.anon*
  %289 = getelementptr inbounds %struct.anon, %struct.anon* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i32 1
  store i32* %291, i32** %289, align 8
  %292 = load i32, i32* %290, align 4
  %293 = lshr i32 %292, 6
  %294 = and i32 %293, 67108863
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %285, i64 %295
  store %struct.lua_TValue* %296, %struct.lua_TValue** %12, align 8
  %297 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %297, %struct.lua_TValue** %13, align 8
  %298 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8
  %299 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %300 = bitcast %struct.lua_TValue* %298 to i8*
  %301 = bitcast %struct.lua_TValue* %299 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %300, i8* %301, i64 16, i32 8, i1 false)
  %302 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  br label %3779

; <label>:303:                                    ; preds = %249
  %304 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %304, %struct.lua_TValue** %14, align 8
  %305 = load i32, i32* %7, align 4
  %306 = lshr i32 %305, 23
  %307 = and i32 %306, 511
  %308 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8
  %309 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %308, i32 0, i32 0
  %310 = bitcast %union.Value* %309 to i32*
  store i32 %307, i32* %310, align 8
  %311 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8
  %312 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %311, i32 0, i32 1
  store i32 1, i32* %312, align 8
  %313 = load i32, i32* %7, align 4
  %314 = lshr i32 %313, 14
  %315 = and i32 %314, 511
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %324

; <label>:317:                                    ; preds = %303
  %318 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %319 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %318, i32 0, i32 4
  %320 = bitcast %union.anon* %319 to %struct.anon*
  %321 = getelementptr inbounds %struct.anon, %struct.anon* %320, i32 0, i32 1
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i32 1
  store i32* %323, i32** %321, align 8
  br label %324

; <label>:324:                                    ; preds = %317, %303
  br label %3779

; <label>:325:                                    ; preds = %249
  %326 = load i32, i32* %7, align 4
  %327 = lshr i32 %326, 23
  %328 = and i32 %327, 511
  store i32 %328, i32* %15, align 4
  br label %329

; <label>:329:                                    ; preds = %333, %325
  %330 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %331 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %330, i32 1
  store %struct.lua_TValue* %331, %struct.lua_TValue** %8, align 8
  %332 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %330, i32 0, i32 1
  store i32 0, i32* %332, align 8
  br label %333

; <label>:333:                                    ; preds = %329
  %334 = load i32, i32* %15, align 4
  %335 = add nsw i32 %334, -1
  store i32 %335, i32* %15, align 4
  %336 = icmp ne i32 %334, 0
  br i1 %336, label %329, label %337

; <label>:337:                                    ; preds = %333
  br label %3779

; <label>:338:                                    ; preds = %249
  %339 = load i32, i32* %7, align 4
  %340 = lshr i32 %339, 23
  %341 = and i32 %340, 511
  store i32 %341, i32* %16, align 4
  %342 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %342, %struct.lua_TValue** %17, align 8
  %343 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8
  %344 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %345 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %344, i32 0, i32 6
  %346 = load i32, i32* %16, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %345, i64 0, i64 %347
  %349 = load %struct.UpVal*, %struct.UpVal** %348, align 8
  %350 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %349, i32 0, i32 0
  %351 = load %struct.lua_TValue*, %struct.lua_TValue** %350, align 8
  %352 = bitcast %struct.lua_TValue* %343 to i8*
  %353 = bitcast %struct.lua_TValue* %351 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %352, i8* %353, i64 16, i32 8, i1 false)
  %354 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  br label %3779

; <label>:355:                                    ; preds = %249
  %356 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %357 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %356, i32 0, i32 6
  %358 = load i32, i32* %7, align 4
  %359 = lshr i32 %358, 23
  %360 = and i32 %359, 511
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %357, i64 0, i64 %361
  %363 = load %struct.UpVal*, %struct.UpVal** %362, align 8
  %364 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %363, i32 0, i32 0
  %365 = load %struct.lua_TValue*, %struct.lua_TValue** %364, align 8
  store %struct.lua_TValue* %365, %struct.lua_TValue** %18, align 8
  %366 = load i32, i32* %7, align 4
  %367 = lshr i32 %366, 14
  %368 = and i32 %367, 511
  %369 = and i32 %368, 256
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %379

; <label>:371:                                    ; preds = %355
  %372 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %373 = load i32, i32* %7, align 4
  %374 = lshr i32 %373, 14
  %375 = and i32 %374, 511
  %376 = and i32 %375, -257
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %372, i64 %377
  br label %386

; <label>:379:                                    ; preds = %355
  %380 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %381 = load i32, i32* %7, align 4
  %382 = lshr i32 %381, 14
  %383 = and i32 %382, 511
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %380, i64 %384
  br label %386

; <label>:386:                                    ; preds = %379, %371
  %387 = phi %struct.lua_TValue* [ %378, %371 ], [ %385, %379 ]
  store %struct.lua_TValue* %387, %struct.lua_TValue** %19, align 8
  %388 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8
  %389 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 8
  %391 = icmp eq i32 %390, 69
  br i1 %391, label %393, label %392

; <label>:392:                                    ; preds = %386
  store %struct.lua_TValue* null, %struct.lua_TValue** %20, align 8
  br i1 false, label %407, label %414

; <label>:393:                                    ; preds = %386
  %394 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8
  %395 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %394, i32 0, i32 0
  %396 = bitcast %union.Value* %395 to %struct.GCObject**
  %397 = load %struct.GCObject*, %struct.GCObject** %396, align 8
  %398 = bitcast %struct.GCObject* %397 to %union.GCUnion*
  %399 = bitcast %union.GCUnion* %398 to %struct.Table*
  %400 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8
  %401 = call %struct.lua_TValue* @luaH_get(%struct.Table* %399, %struct.lua_TValue* %400)
  store %struct.lua_TValue* %401, %struct.lua_TValue** %20, align 8
  %402 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8
  %403 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 8
  %405 = icmp eq i32 %404, 0
  %406 = xor i1 %405, true
  br i1 %406, label %407, label %414

; <label>:407:                                    ; preds = %393, %392
  %408 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %408, %struct.lua_TValue** %21, align 8
  %409 = load %struct.lua_TValue*, %struct.lua_TValue** %21, align 8
  %410 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8
  %411 = bitcast %struct.lua_TValue* %409 to i8*
  %412 = bitcast %struct.lua_TValue* %410 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %411, i8* %412, i64 16, i32 8, i1 false)
  %413 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  br label %425

; <label>:414:                                    ; preds = %393, %392
  %415 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %416 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8
  %417 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8
  %418 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %419 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8
  call void @luaV_finishget(%struct.lua_State* %415, %struct.lua_TValue* %416, %struct.lua_TValue* %417, %struct.lua_TValue* %418, %struct.lua_TValue* %419)
  %420 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %421 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %420, i32 0, i32 4
  %422 = bitcast %union.anon* %421 to %struct.anon*
  %423 = getelementptr inbounds %struct.anon, %struct.anon* %422, i32 0, i32 0
  %424 = load %struct.lua_TValue*, %struct.lua_TValue** %423, align 8
  store %struct.lua_TValue* %424, %struct.lua_TValue** %6, align 8
  br label %425

; <label>:425:                                    ; preds = %414, %407
  br label %3779

; <label>:426:                                    ; preds = %249
  %427 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %428 = load i32, i32* %7, align 4
  %429 = lshr i32 %428, 23
  %430 = and i32 %429, 511
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %427, i64 %431
  store %struct.lua_TValue* %432, %struct.lua_TValue** %22, align 8
  %433 = load i32, i32* %7, align 4
  %434 = lshr i32 %433, 14
  %435 = and i32 %434, 511
  %436 = and i32 %435, 256
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %446

; <label>:438:                                    ; preds = %426
  %439 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %440 = load i32, i32* %7, align 4
  %441 = lshr i32 %440, 14
  %442 = and i32 %441, 511
  %443 = and i32 %442, -257
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %439, i64 %444
  br label %453

; <label>:446:                                    ; preds = %426
  %447 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %448 = load i32, i32* %7, align 4
  %449 = lshr i32 %448, 14
  %450 = and i32 %449, 511
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %447, i64 %451
  br label %453

; <label>:453:                                    ; preds = %446, %438
  %454 = phi %struct.lua_TValue* [ %445, %438 ], [ %452, %446 ]
  store %struct.lua_TValue* %454, %struct.lua_TValue** %23, align 8
  %455 = load %struct.lua_TValue*, %struct.lua_TValue** %22, align 8
  %456 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 8
  %458 = icmp eq i32 %457, 69
  br i1 %458, label %460, label %459

; <label>:459:                                    ; preds = %453
  store %struct.lua_TValue* null, %struct.lua_TValue** %24, align 8
  br i1 false, label %474, label %481

; <label>:460:                                    ; preds = %453
  %461 = load %struct.lua_TValue*, %struct.lua_TValue** %22, align 8
  %462 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %461, i32 0, i32 0
  %463 = bitcast %union.Value* %462 to %struct.GCObject**
  %464 = load %struct.GCObject*, %struct.GCObject** %463, align 8
  %465 = bitcast %struct.GCObject* %464 to %union.GCUnion*
  %466 = bitcast %union.GCUnion* %465 to %struct.Table*
  %467 = load %struct.lua_TValue*, %struct.lua_TValue** %23, align 8
  %468 = call %struct.lua_TValue* @luaH_get(%struct.Table* %466, %struct.lua_TValue* %467)
  store %struct.lua_TValue* %468, %struct.lua_TValue** %24, align 8
  %469 = load %struct.lua_TValue*, %struct.lua_TValue** %24, align 8
  %470 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 8
  %472 = icmp eq i32 %471, 0
  %473 = xor i1 %472, true
  br i1 %473, label %474, label %481

; <label>:474:                                    ; preds = %460, %459
  %475 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %475, %struct.lua_TValue** %25, align 8
  %476 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8
  %477 = load %struct.lua_TValue*, %struct.lua_TValue** %24, align 8
  %478 = bitcast %struct.lua_TValue* %476 to i8*
  %479 = bitcast %struct.lua_TValue* %477 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %478, i8* %479, i64 16, i32 8, i1 false)
  %480 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  br label %492

; <label>:481:                                    ; preds = %460, %459
  %482 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %483 = load %struct.lua_TValue*, %struct.lua_TValue** %22, align 8
  %484 = load %struct.lua_TValue*, %struct.lua_TValue** %23, align 8
  %485 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %486 = load %struct.lua_TValue*, %struct.lua_TValue** %24, align 8
  call void @luaV_finishget(%struct.lua_State* %482, %struct.lua_TValue* %483, %struct.lua_TValue* %484, %struct.lua_TValue* %485, %struct.lua_TValue* %486)
  %487 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %488 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %487, i32 0, i32 4
  %489 = bitcast %union.anon* %488 to %struct.anon*
  %490 = getelementptr inbounds %struct.anon, %struct.anon* %489, i32 0, i32 0
  %491 = load %struct.lua_TValue*, %struct.lua_TValue** %490, align 8
  store %struct.lua_TValue* %491, %struct.lua_TValue** %6, align 8
  br label %492

; <label>:492:                                    ; preds = %481, %474
  br label %3779

; <label>:493:                                    ; preds = %249
  %494 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %495 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %494, i32 0, i32 6
  %496 = load i32, i32* %7, align 4
  %497 = lshr i32 %496, 6
  %498 = and i32 %497, 255
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %495, i64 0, i64 %499
  %501 = load %struct.UpVal*, %struct.UpVal** %500, align 8
  %502 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %501, i32 0, i32 0
  %503 = load %struct.lua_TValue*, %struct.lua_TValue** %502, align 8
  store %struct.lua_TValue* %503, %struct.lua_TValue** %26, align 8
  %504 = load i32, i32* %7, align 4
  %505 = lshr i32 %504, 23
  %506 = and i32 %505, 511
  %507 = and i32 %506, 256
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %517

; <label>:509:                                    ; preds = %493
  %510 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %511 = load i32, i32* %7, align 4
  %512 = lshr i32 %511, 23
  %513 = and i32 %512, 511
  %514 = and i32 %513, -257
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %510, i64 %515
  br label %524

; <label>:517:                                    ; preds = %493
  %518 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %519 = load i32, i32* %7, align 4
  %520 = lshr i32 %519, 23
  %521 = and i32 %520, 511
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %518, i64 %522
  br label %524

; <label>:524:                                    ; preds = %517, %509
  %525 = phi %struct.lua_TValue* [ %516, %509 ], [ %523, %517 ]
  store %struct.lua_TValue* %525, %struct.lua_TValue** %27, align 8
  %526 = load i32, i32* %7, align 4
  %527 = lshr i32 %526, 14
  %528 = and i32 %527, 511
  %529 = and i32 %528, 256
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %539

; <label>:531:                                    ; preds = %524
  %532 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %533 = load i32, i32* %7, align 4
  %534 = lshr i32 %533, 14
  %535 = and i32 %534, 511
  %536 = and i32 %535, -257
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %532, i64 %537
  br label %546

; <label>:539:                                    ; preds = %524
  %540 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %541 = load i32, i32* %7, align 4
  %542 = lshr i32 %541, 14
  %543 = and i32 %542, 511
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %540, i64 %544
  br label %546

; <label>:546:                                    ; preds = %539, %531
  %547 = phi %struct.lua_TValue* [ %538, %531 ], [ %545, %539 ]
  store %struct.lua_TValue* %547, %struct.lua_TValue** %28, align 8
  %548 = load %struct.lua_TValue*, %struct.lua_TValue** %26, align 8
  %549 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %548, i32 0, i32 1
  %550 = load i32, i32* %549, align 8
  %551 = icmp eq i32 %550, 69
  br i1 %551, label %553, label %552

; <label>:552:                                    ; preds = %546
  store %struct.lua_TValue* null, %struct.lua_TValue** %29, align 8
  br i1 false, label %624, label %613

; <label>:553:                                    ; preds = %546
  %554 = load %struct.lua_TValue*, %struct.lua_TValue** %26, align 8
  %555 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %554, i32 0, i32 0
  %556 = bitcast %union.Value* %555 to %struct.GCObject**
  %557 = load %struct.GCObject*, %struct.GCObject** %556, align 8
  %558 = bitcast %struct.GCObject* %557 to %union.GCUnion*
  %559 = bitcast %union.GCUnion* %558 to %struct.Table*
  %560 = load %struct.lua_TValue*, %struct.lua_TValue** %27, align 8
  %561 = call %struct.lua_TValue* @luaH_get(%struct.Table* %559, %struct.lua_TValue* %560)
  store %struct.lua_TValue* %561, %struct.lua_TValue** %29, align 8
  %562 = load %struct.lua_TValue*, %struct.lua_TValue** %29, align 8
  %563 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %562, i32 0, i32 1
  %564 = load i32, i32* %563, align 8
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %567

; <label>:566:                                    ; preds = %553
  br label %610

; <label>:567:                                    ; preds = %553
  %568 = load %struct.lua_TValue*, %struct.lua_TValue** %28, align 8
  %569 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %568, i32 0, i32 1
  %570 = load i32, i32* %569, align 8
  %571 = and i32 %570, 64
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %603

; <label>:573:                                    ; preds = %567
  %574 = load %struct.lua_TValue*, %struct.lua_TValue** %26, align 8
  %575 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %574, i32 0, i32 0
  %576 = bitcast %union.Value* %575 to %struct.GCObject**
  %577 = load %struct.GCObject*, %struct.GCObject** %576, align 8
  %578 = bitcast %struct.GCObject* %577 to %union.GCUnion*
  %579 = bitcast %union.GCUnion* %578 to %struct.Table*
  %580 = getelementptr inbounds %struct.Table, %struct.Table* %579, i32 0, i32 2
  %581 = load i8, i8* %580, align 1
  %582 = zext i8 %581 to i32
  %583 = and i32 %582, 4
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %603

; <label>:585:                                    ; preds = %573
  %586 = load %struct.lua_TValue*, %struct.lua_TValue** %28, align 8
  %587 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %586, i32 0, i32 0
  %588 = bitcast %union.Value* %587 to %struct.GCObject**
  %589 = load %struct.GCObject*, %struct.GCObject** %588, align 8
  %590 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %589, i32 0, i32 2
  %591 = load i8, i8* %590, align 1
  %592 = zext i8 %591 to i32
  %593 = and i32 %592, 3
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %603

; <label>:595:                                    ; preds = %585
  %596 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %597 = load %struct.lua_TValue*, %struct.lua_TValue** %26, align 8
  %598 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %597, i32 0, i32 0
  %599 = bitcast %union.Value* %598 to %struct.GCObject**
  %600 = load %struct.GCObject*, %struct.GCObject** %599, align 8
  %601 = bitcast %struct.GCObject* %600 to %union.GCUnion*
  %602 = bitcast %union.GCUnion* %601 to %struct.Table*
  call void @luaC_barrierback_(%struct.lua_State* %596, %struct.Table* %602)
  br label %604

; <label>:603:                                    ; preds = %585, %573, %567
  br label %604

; <label>:604:                                    ; preds = %603, %595
  %605 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %606 = load %struct.lua_TValue*, %struct.lua_TValue** %29, align 8
  %607 = load %struct.lua_TValue*, %struct.lua_TValue** %28, align 8
  %608 = bitcast %struct.lua_TValue* %606 to i8*
  %609 = bitcast %struct.lua_TValue* %607 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %608, i8* %609, i64 16, i32 8, i1 false)
  br label %610

; <label>:610:                                    ; preds = %604, %566
  %611 = phi i32 [ 0, %566 ], [ 1, %604 ]
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %624, label %613

; <label>:613:                                    ; preds = %610, %552
  %614 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %615 = load %struct.lua_TValue*, %struct.lua_TValue** %26, align 8
  %616 = load %struct.lua_TValue*, %struct.lua_TValue** %27, align 8
  %617 = load %struct.lua_TValue*, %struct.lua_TValue** %28, align 8
  %618 = load %struct.lua_TValue*, %struct.lua_TValue** %29, align 8
  call void @luaV_finishset(%struct.lua_State* %614, %struct.lua_TValue* %615, %struct.lua_TValue* %616, %struct.lua_TValue* %617, %struct.lua_TValue* %618)
  %619 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %620 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %619, i32 0, i32 4
  %621 = bitcast %union.anon* %620 to %struct.anon*
  %622 = getelementptr inbounds %struct.anon, %struct.anon* %621, i32 0, i32 0
  %623 = load %struct.lua_TValue*, %struct.lua_TValue** %622, align 8
  store %struct.lua_TValue* %623, %struct.lua_TValue** %6, align 8
  br label %624

; <label>:624:                                    ; preds = %613, %610, %552
  br label %3779

; <label>:625:                                    ; preds = %249
  %626 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %627 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %626, i32 0, i32 6
  %628 = load i32, i32* %7, align 4
  %629 = lshr i32 %628, 23
  %630 = and i32 %629, 511
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %627, i64 0, i64 %631
  %633 = load %struct.UpVal*, %struct.UpVal** %632, align 8
  store %struct.UpVal* %633, %struct.UpVal** %30, align 8
  %634 = load %struct.UpVal*, %struct.UpVal** %30, align 8
  %635 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %634, i32 0, i32 0
  %636 = load %struct.lua_TValue*, %struct.lua_TValue** %635, align 8
  store %struct.lua_TValue* %636, %struct.lua_TValue** %31, align 8
  %637 = load %struct.lua_TValue*, %struct.lua_TValue** %31, align 8
  %638 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %639 = bitcast %struct.lua_TValue* %637 to i8*
  %640 = bitcast %struct.lua_TValue* %638 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %639, i8* %640, i64 16, i32 8, i1 false)
  %641 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %642 = load %struct.UpVal*, %struct.UpVal** %30, align 8
  %643 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %642, i32 0, i32 0
  %644 = load %struct.lua_TValue*, %struct.lua_TValue** %643, align 8
  %645 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %644, i32 0, i32 1
  %646 = load i32, i32* %645, align 8
  %647 = and i32 %646, 64
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %649, label %660

; <label>:649:                                    ; preds = %625
  %650 = load %struct.UpVal*, %struct.UpVal** %30, align 8
  %651 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %650, i32 0, i32 0
  %652 = load %struct.lua_TValue*, %struct.lua_TValue** %651, align 8
  %653 = load %struct.UpVal*, %struct.UpVal** %30, align 8
  %654 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %653, i32 0, i32 2
  %655 = bitcast %union.anon.1* %654 to %struct.lua_TValue*
  %656 = icmp ne %struct.lua_TValue* %652, %655
  br i1 %656, label %660, label %657

; <label>:657:                                    ; preds = %649
  %658 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %659 = load %struct.UpVal*, %struct.UpVal** %30, align 8
  call void @luaC_upvalbarrier_(%struct.lua_State* %658, %struct.UpVal* %659)
  br label %661

; <label>:660:                                    ; preds = %649, %625
  br label %661

; <label>:661:                                    ; preds = %660, %657
  br label %3779

; <label>:662:                                    ; preds = %249
  %663 = load i32, i32* %7, align 4
  %664 = lshr i32 %663, 23
  %665 = and i32 %664, 511
  %666 = and i32 %665, 256
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %676

; <label>:668:                                    ; preds = %662
  %669 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %670 = load i32, i32* %7, align 4
  %671 = lshr i32 %670, 23
  %672 = and i32 %671, 511
  %673 = and i32 %672, -257
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %669, i64 %674
  br label %683

; <label>:676:                                    ; preds = %662
  %677 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %678 = load i32, i32* %7, align 4
  %679 = lshr i32 %678, 23
  %680 = and i32 %679, 511
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %677, i64 %681
  br label %683

; <label>:683:                                    ; preds = %676, %668
  %684 = phi %struct.lua_TValue* [ %675, %668 ], [ %682, %676 ]
  store %struct.lua_TValue* %684, %struct.lua_TValue** %32, align 8
  %685 = load i32, i32* %7, align 4
  %686 = lshr i32 %685, 14
  %687 = and i32 %686, 511
  %688 = and i32 %687, 256
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %698

; <label>:690:                                    ; preds = %683
  %691 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %692 = load i32, i32* %7, align 4
  %693 = lshr i32 %692, 14
  %694 = and i32 %693, 511
  %695 = and i32 %694, -257
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %691, i64 %696
  br label %705

; <label>:698:                                    ; preds = %683
  %699 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %700 = load i32, i32* %7, align 4
  %701 = lshr i32 %700, 14
  %702 = and i32 %701, 511
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %699, i64 %703
  br label %705

; <label>:705:                                    ; preds = %698, %690
  %706 = phi %struct.lua_TValue* [ %697, %690 ], [ %704, %698 ]
  store %struct.lua_TValue* %706, %struct.lua_TValue** %33, align 8
  %707 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %708 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %707, i32 0, i32 1
  %709 = load i32, i32* %708, align 8
  %710 = icmp eq i32 %709, 69
  br i1 %710, label %712, label %711

; <label>:711:                                    ; preds = %705
  store %struct.lua_TValue* null, %struct.lua_TValue** %34, align 8
  br i1 false, label %783, label %772

; <label>:712:                                    ; preds = %705
  %713 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %714 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %713, i32 0, i32 0
  %715 = bitcast %union.Value* %714 to %struct.GCObject**
  %716 = load %struct.GCObject*, %struct.GCObject** %715, align 8
  %717 = bitcast %struct.GCObject* %716 to %union.GCUnion*
  %718 = bitcast %union.GCUnion* %717 to %struct.Table*
  %719 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8
  %720 = call %struct.lua_TValue* @luaH_get(%struct.Table* %718, %struct.lua_TValue* %719)
  store %struct.lua_TValue* %720, %struct.lua_TValue** %34, align 8
  %721 = load %struct.lua_TValue*, %struct.lua_TValue** %34, align 8
  %722 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %721, i32 0, i32 1
  %723 = load i32, i32* %722, align 8
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %726

; <label>:725:                                    ; preds = %712
  br label %769

; <label>:726:                                    ; preds = %712
  %727 = load %struct.lua_TValue*, %struct.lua_TValue** %33, align 8
  %728 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %727, i32 0, i32 1
  %729 = load i32, i32* %728, align 8
  %730 = and i32 %729, 64
  %731 = icmp ne i32 %730, 0
  br i1 %731, label %732, label %762

; <label>:732:                                    ; preds = %726
  %733 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %734 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %733, i32 0, i32 0
  %735 = bitcast %union.Value* %734 to %struct.GCObject**
  %736 = load %struct.GCObject*, %struct.GCObject** %735, align 8
  %737 = bitcast %struct.GCObject* %736 to %union.GCUnion*
  %738 = bitcast %union.GCUnion* %737 to %struct.Table*
  %739 = getelementptr inbounds %struct.Table, %struct.Table* %738, i32 0, i32 2
  %740 = load i8, i8* %739, align 1
  %741 = zext i8 %740 to i32
  %742 = and i32 %741, 4
  %743 = icmp ne i32 %742, 0
  br i1 %743, label %744, label %762

; <label>:744:                                    ; preds = %732
  %745 = load %struct.lua_TValue*, %struct.lua_TValue** %33, align 8
  %746 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %745, i32 0, i32 0
  %747 = bitcast %union.Value* %746 to %struct.GCObject**
  %748 = load %struct.GCObject*, %struct.GCObject** %747, align 8
  %749 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %748, i32 0, i32 2
  %750 = load i8, i8* %749, align 1
  %751 = zext i8 %750 to i32
  %752 = and i32 %751, 3
  %753 = icmp ne i32 %752, 0
  br i1 %753, label %754, label %762

; <label>:754:                                    ; preds = %744
  %755 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %756 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %757 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %756, i32 0, i32 0
  %758 = bitcast %union.Value* %757 to %struct.GCObject**
  %759 = load %struct.GCObject*, %struct.GCObject** %758, align 8
  %760 = bitcast %struct.GCObject* %759 to %union.GCUnion*
  %761 = bitcast %union.GCUnion* %760 to %struct.Table*
  call void @luaC_barrierback_(%struct.lua_State* %755, %struct.Table* %761)
  br label %763

; <label>:762:                                    ; preds = %744, %732, %726
  br label %763

; <label>:763:                                    ; preds = %762, %754
  %764 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %765 = load %struct.lua_TValue*, %struct.lua_TValue** %34, align 8
  %766 = load %struct.lua_TValue*, %struct.lua_TValue** %33, align 8
  %767 = bitcast %struct.lua_TValue* %765 to i8*
  %768 = bitcast %struct.lua_TValue* %766 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %767, i8* %768, i64 16, i32 8, i1 false)
  br label %769

; <label>:769:                                    ; preds = %763, %725
  %770 = phi i32 [ 0, %725 ], [ 1, %763 ]
  %771 = icmp ne i32 %770, 0
  br i1 %771, label %783, label %772

; <label>:772:                                    ; preds = %769, %711
  %773 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %774 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %775 = load %struct.lua_TValue*, %struct.lua_TValue** %32, align 8
  %776 = load %struct.lua_TValue*, %struct.lua_TValue** %33, align 8
  %777 = load %struct.lua_TValue*, %struct.lua_TValue** %34, align 8
  call void @luaV_finishset(%struct.lua_State* %773, %struct.lua_TValue* %774, %struct.lua_TValue* %775, %struct.lua_TValue* %776, %struct.lua_TValue* %777)
  %778 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %779 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %778, i32 0, i32 4
  %780 = bitcast %union.anon* %779 to %struct.anon*
  %781 = getelementptr inbounds %struct.anon, %struct.anon* %780, i32 0, i32 0
  %782 = load %struct.lua_TValue*, %struct.lua_TValue** %781, align 8
  store %struct.lua_TValue* %782, %struct.lua_TValue** %6, align 8
  br label %783

; <label>:783:                                    ; preds = %772, %769, %711
  br label %3779

; <label>:784:                                    ; preds = %249
  %785 = load i32, i32* %7, align 4
  %786 = lshr i32 %785, 23
  %787 = and i32 %786, 511
  store i32 %787, i32* %35, align 4
  %788 = load i32, i32* %7, align 4
  %789 = lshr i32 %788, 14
  %790 = and i32 %789, 511
  store i32 %790, i32* %36, align 4
  %791 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %792 = call %struct.Table* @luaH_new(%struct.lua_State* %791)
  store %struct.Table* %792, %struct.Table** %37, align 8
  %793 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %793, %struct.lua_TValue** %38, align 8
  %794 = load %struct.Table*, %struct.Table** %37, align 8
  store %struct.Table* %794, %struct.Table** %39, align 8
  %795 = load %struct.Table*, %struct.Table** %39, align 8
  %796 = bitcast %struct.Table* %795 to %union.GCUnion*
  %797 = bitcast %union.GCUnion* %796 to %struct.GCObject*
  %798 = load %struct.lua_TValue*, %struct.lua_TValue** %38, align 8
  %799 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %798, i32 0, i32 0
  %800 = bitcast %union.Value* %799 to %struct.GCObject**
  store %struct.GCObject* %797, %struct.GCObject** %800, align 8
  %801 = load %struct.lua_TValue*, %struct.lua_TValue** %38, align 8
  %802 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %801, i32 0, i32 1
  store i32 69, i32* %802, align 8
  %803 = load i32, i32* %35, align 4
  %804 = icmp ne i32 %803, 0
  br i1 %804, label %808, label %805

; <label>:805:                                    ; preds = %784
  %806 = load i32, i32* %36, align 4
  %807 = icmp ne i32 %806, 0
  br i1 %807, label %808, label %815

; <label>:808:                                    ; preds = %805, %784
  %809 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %810 = load %struct.Table*, %struct.Table** %37, align 8
  %811 = load i32, i32* %35, align 4
  %812 = call i32 @luaO_fb2int(i32 %811)
  %813 = load i32, i32* %36, align 4
  %814 = call i32 @luaO_fb2int(i32 %813)
  call void @luaH_resize(%struct.lua_State* %809, %struct.Table* %810, i32 %812, i32 %814)
  br label %815

; <label>:815:                                    ; preds = %808, %805
  %816 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %817 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %816, i32 0, i32 6
  %818 = load %struct.global_State*, %struct.global_State** %817, align 8
  %819 = getelementptr inbounds %struct.global_State, %struct.global_State* %818, i32 0, i32 3
  %820 = load i64, i64* %819, align 8
  %821 = icmp sgt i64 %820, 0
  br i1 %821, label %822, label %838

; <label>:822:                                    ; preds = %815
  %823 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %824 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %823, i64 1
  %825 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %826 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %825, i32 0, i32 5
  store %struct.lua_TValue* %824, %struct.lua_TValue** %826, align 8
  %827 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaC_step(%struct.lua_State* %827)
  %828 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %829 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %828, i32 0, i32 1
  %830 = load %struct.lua_TValue*, %struct.lua_TValue** %829, align 8
  %831 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %832 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %831, i32 0, i32 5
  store %struct.lua_TValue* %830, %struct.lua_TValue** %832, align 8
  %833 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %834 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %833, i32 0, i32 4
  %835 = bitcast %union.anon* %834 to %struct.anon*
  %836 = getelementptr inbounds %struct.anon, %struct.anon* %835, i32 0, i32 0
  %837 = load %struct.lua_TValue*, %struct.lua_TValue** %836, align 8
  store %struct.lua_TValue* %837, %struct.lua_TValue** %6, align 8
  br label %838

; <label>:838:                                    ; preds = %822, %815
  br label %3779

; <label>:839:                                    ; preds = %249
  %840 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %841 = load i32, i32* %7, align 4
  %842 = lshr i32 %841, 23
  %843 = and i32 %842, 511
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %840, i64 %844
  store %struct.lua_TValue* %845, %struct.lua_TValue** %41, align 8
  %846 = load i32, i32* %7, align 4
  %847 = lshr i32 %846, 14
  %848 = and i32 %847, 511
  %849 = and i32 %848, 256
  %850 = icmp ne i32 %849, 0
  br i1 %850, label %851, label %859

; <label>:851:                                    ; preds = %839
  %852 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %853 = load i32, i32* %7, align 4
  %854 = lshr i32 %853, 14
  %855 = and i32 %854, 511
  %856 = and i32 %855, -257
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %852, i64 %857
  br label %866

; <label>:859:                                    ; preds = %839
  %860 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %861 = load i32, i32* %7, align 4
  %862 = lshr i32 %861, 14
  %863 = and i32 %862, 511
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %860, i64 %864
  br label %866

; <label>:866:                                    ; preds = %859, %851
  %867 = phi %struct.lua_TValue* [ %858, %851 ], [ %865, %859 ]
  store %struct.lua_TValue* %867, %struct.lua_TValue** %42, align 8
  %868 = load %struct.lua_TValue*, %struct.lua_TValue** %42, align 8
  %869 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %868, i32 0, i32 0
  %870 = bitcast %union.Value* %869 to %struct.GCObject**
  %871 = load %struct.GCObject*, %struct.GCObject** %870, align 8
  %872 = bitcast %struct.GCObject* %871 to %union.GCUnion*
  %873 = bitcast %union.GCUnion* %872 to %struct.TString*
  store %struct.TString* %873, %struct.TString** %43, align 8
  %874 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %875 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %874, i64 1
  store %struct.lua_TValue* %875, %struct.lua_TValue** %44, align 8
  %876 = load %struct.lua_TValue*, %struct.lua_TValue** %44, align 8
  %877 = load %struct.lua_TValue*, %struct.lua_TValue** %41, align 8
  %878 = bitcast %struct.lua_TValue* %876 to i8*
  %879 = bitcast %struct.lua_TValue* %877 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %878, i8* %879, i64 16, i32 8, i1 false)
  %880 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %881 = load %struct.lua_TValue*, %struct.lua_TValue** %41, align 8
  %882 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %881, i32 0, i32 1
  %883 = load i32, i32* %882, align 8
  %884 = icmp eq i32 %883, 69
  br i1 %884, label %886, label %885

; <label>:885:                                    ; preds = %866
  store %struct.lua_TValue* null, %struct.lua_TValue** %40, align 8
  br i1 false, label %900, label %907

; <label>:886:                                    ; preds = %866
  %887 = load %struct.lua_TValue*, %struct.lua_TValue** %41, align 8
  %888 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %887, i32 0, i32 0
  %889 = bitcast %union.Value* %888 to %struct.GCObject**
  %890 = load %struct.GCObject*, %struct.GCObject** %889, align 8
  %891 = bitcast %struct.GCObject* %890 to %union.GCUnion*
  %892 = bitcast %union.GCUnion* %891 to %struct.Table*
  %893 = load %struct.TString*, %struct.TString** %43, align 8
  %894 = call %struct.lua_TValue* @luaH_getstr(%struct.Table* %892, %struct.TString* %893)
  store %struct.lua_TValue* %894, %struct.lua_TValue** %40, align 8
  %895 = load %struct.lua_TValue*, %struct.lua_TValue** %40, align 8
  %896 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %895, i32 0, i32 1
  %897 = load i32, i32* %896, align 8
  %898 = icmp eq i32 %897, 0
  %899 = xor i1 %898, true
  br i1 %899, label %900, label %907

; <label>:900:                                    ; preds = %886, %885
  %901 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %901, %struct.lua_TValue** %45, align 8
  %902 = load %struct.lua_TValue*, %struct.lua_TValue** %45, align 8
  %903 = load %struct.lua_TValue*, %struct.lua_TValue** %40, align 8
  %904 = bitcast %struct.lua_TValue* %902 to i8*
  %905 = bitcast %struct.lua_TValue* %903 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %904, i8* %905, i64 16, i32 8, i1 false)
  %906 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  br label %918

; <label>:907:                                    ; preds = %886, %885
  %908 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %909 = load %struct.lua_TValue*, %struct.lua_TValue** %41, align 8
  %910 = load %struct.lua_TValue*, %struct.lua_TValue** %42, align 8
  %911 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %912 = load %struct.lua_TValue*, %struct.lua_TValue** %40, align 8
  call void @luaV_finishget(%struct.lua_State* %908, %struct.lua_TValue* %909, %struct.lua_TValue* %910, %struct.lua_TValue* %911, %struct.lua_TValue* %912)
  %913 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %914 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %913, i32 0, i32 4
  %915 = bitcast %union.anon* %914 to %struct.anon*
  %916 = getelementptr inbounds %struct.anon, %struct.anon* %915, i32 0, i32 0
  %917 = load %struct.lua_TValue*, %struct.lua_TValue** %916, align 8
  store %struct.lua_TValue* %917, %struct.lua_TValue** %6, align 8
  br label %918

; <label>:918:                                    ; preds = %907, %900
  br label %3779

; <label>:919:                                    ; preds = %249
  %920 = load i32, i32* %7, align 4
  %921 = lshr i32 %920, 23
  %922 = and i32 %921, 511
  %923 = and i32 %922, 256
  %924 = icmp ne i32 %923, 0
  br i1 %924, label %925, label %933

; <label>:925:                                    ; preds = %919
  %926 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %927 = load i32, i32* %7, align 4
  %928 = lshr i32 %927, 23
  %929 = and i32 %928, 511
  %930 = and i32 %929, -257
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %926, i64 %931
  br label %940

; <label>:933:                                    ; preds = %919
  %934 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %935 = load i32, i32* %7, align 4
  %936 = lshr i32 %935, 23
  %937 = and i32 %936, 511
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %934, i64 %938
  br label %940

; <label>:940:                                    ; preds = %933, %925
  %941 = phi %struct.lua_TValue* [ %932, %925 ], [ %939, %933 ]
  store %struct.lua_TValue* %941, %struct.lua_TValue** %46, align 8
  %942 = load i32, i32* %7, align 4
  %943 = lshr i32 %942, 14
  %944 = and i32 %943, 511
  %945 = and i32 %944, 256
  %946 = icmp ne i32 %945, 0
  br i1 %946, label %947, label %955

; <label>:947:                                    ; preds = %940
  %948 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %949 = load i32, i32* %7, align 4
  %950 = lshr i32 %949, 14
  %951 = and i32 %950, 511
  %952 = and i32 %951, -257
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %948, i64 %953
  br label %962

; <label>:955:                                    ; preds = %940
  %956 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %957 = load i32, i32* %7, align 4
  %958 = lshr i32 %957, 14
  %959 = and i32 %958, 511
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %956, i64 %960
  br label %962

; <label>:962:                                    ; preds = %955, %947
  %963 = phi %struct.lua_TValue* [ %954, %947 ], [ %961, %955 ]
  store %struct.lua_TValue* %963, %struct.lua_TValue** %47, align 8
  %964 = load %struct.lua_TValue*, %struct.lua_TValue** %46, align 8
  %965 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %964, i32 0, i32 1
  %966 = load i32, i32* %965, align 8
  %967 = icmp eq i32 %966, 19
  br i1 %967, label %968, label %991

; <label>:968:                                    ; preds = %962
  %969 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8
  %970 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %969, i32 0, i32 1
  %971 = load i32, i32* %970, align 8
  %972 = icmp eq i32 %971, 19
  br i1 %972, label %973, label %991

; <label>:973:                                    ; preds = %968
  %974 = load %struct.lua_TValue*, %struct.lua_TValue** %46, align 8
  %975 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %974, i32 0, i32 0
  %976 = bitcast %union.Value* %975 to i64*
  %977 = load i64, i64* %976, align 8
  store i64 %977, i64* %50, align 8
  %978 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8
  %979 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %978, i32 0, i32 0
  %980 = bitcast %union.Value* %979 to i64*
  %981 = load i64, i64* %980, align 8
  store i64 %981, i64* %51, align 8
  %982 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %982, %struct.lua_TValue** %52, align 8
  %983 = load i64, i64* %50, align 8
  %984 = load i64, i64* %51, align 8
  %985 = add i64 %983, %984
  %986 = load %struct.lua_TValue*, %struct.lua_TValue** %52, align 8
  %987 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %986, i32 0, i32 0
  %988 = bitcast %union.Value* %987 to i64*
  store i64 %985, i64* %988, align 8
  %989 = load %struct.lua_TValue*, %struct.lua_TValue** %52, align 8
  %990 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %989, i32 0, i32 1
  store i32 19, i32* %990, align 8
  br label %1040

; <label>:991:                                    ; preds = %968, %962
  %992 = load %struct.lua_TValue*, %struct.lua_TValue** %46, align 8
  %993 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %992, i32 0, i32 1
  %994 = load i32, i32* %993, align 8
  %995 = icmp eq i32 %994, 3
  br i1 %995, label %996, label %1001

; <label>:996:                                    ; preds = %991
  %997 = load %struct.lua_TValue*, %struct.lua_TValue** %46, align 8
  %998 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %997, i32 0, i32 0
  %999 = bitcast %union.Value* %998 to double*
  %1000 = load double, double* %999, align 8
  store double %1000, double* %48, align 8
  br i1 true, label %1005, label %1029

; <label>:1001:                                   ; preds = %991
  %1002 = load %struct.lua_TValue*, %struct.lua_TValue** %46, align 8
  %1003 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1002, double* %48)
  %1004 = icmp ne i32 %1003, 0
  br i1 %1004, label %1005, label %1029

; <label>:1005:                                   ; preds = %1001, %996
  %1006 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8
  %1007 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1006, i32 0, i32 1
  %1008 = load i32, i32* %1007, align 8
  %1009 = icmp eq i32 %1008, 3
  br i1 %1009, label %1010, label %1015

; <label>:1010:                                   ; preds = %1005
  %1011 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8
  %1012 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1011, i32 0, i32 0
  %1013 = bitcast %union.Value* %1012 to double*
  %1014 = load double, double* %1013, align 8
  store double %1014, double* %49, align 8
  br i1 true, label %1019, label %1029

; <label>:1015:                                   ; preds = %1005
  %1016 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8
  %1017 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1016, double* %49)
  %1018 = icmp ne i32 %1017, 0
  br i1 %1018, label %1019, label %1029

; <label>:1019:                                   ; preds = %1015, %1010
  %1020 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %1020, %struct.lua_TValue** %53, align 8
  %1021 = load double, double* %48, align 8
  %1022 = load double, double* %49, align 8
  %1023 = fadd double %1021, %1022
  %1024 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8
  %1025 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1024, i32 0, i32 0
  %1026 = bitcast %union.Value* %1025 to double*
  store double %1023, double* %1026, align 8
  %1027 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8
  %1028 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1027, i32 0, i32 1
  store i32 3, i32* %1028, align 8
  br label %1039

; <label>:1029:                                   ; preds = %1015, %1010, %1001, %996
  %1030 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %1031 = load %struct.lua_TValue*, %struct.lua_TValue** %46, align 8
  %1032 = load %struct.lua_TValue*, %struct.lua_TValue** %47, align 8
  %1033 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaT_trybinTM(%struct.lua_State* %1030, %struct.lua_TValue* %1031, %struct.lua_TValue* %1032, %struct.lua_TValue* %1033, i32 6)
  %1034 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %1035 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1034, i32 0, i32 4
  %1036 = bitcast %union.anon* %1035 to %struct.anon*
  %1037 = getelementptr inbounds %struct.anon, %struct.anon* %1036, i32 0, i32 0
  %1038 = load %struct.lua_TValue*, %struct.lua_TValue** %1037, align 8
  store %struct.lua_TValue* %1038, %struct.lua_TValue** %6, align 8
  br label %1039

; <label>:1039:                                   ; preds = %1029, %1019
  br label %1040

; <label>:1040:                                   ; preds = %1039, %973
  br label %3779

; <label>:1041:                                   ; preds = %249
  %1042 = load i32, i32* %7, align 4
  %1043 = lshr i32 %1042, 23
  %1044 = and i32 %1043, 511
  %1045 = and i32 %1044, 256
  %1046 = icmp ne i32 %1045, 0
  br i1 %1046, label %1047, label %1055

; <label>:1047:                                   ; preds = %1041
  %1048 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1049 = load i32, i32* %7, align 4
  %1050 = lshr i32 %1049, 23
  %1051 = and i32 %1050, 511
  %1052 = and i32 %1051, -257
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1048, i64 %1053
  br label %1062

; <label>:1055:                                   ; preds = %1041
  %1056 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1057 = load i32, i32* %7, align 4
  %1058 = lshr i32 %1057, 23
  %1059 = and i32 %1058, 511
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1056, i64 %1060
  br label %1062

; <label>:1062:                                   ; preds = %1055, %1047
  %1063 = phi %struct.lua_TValue* [ %1054, %1047 ], [ %1061, %1055 ]
  store %struct.lua_TValue* %1063, %struct.lua_TValue** %54, align 8
  %1064 = load i32, i32* %7, align 4
  %1065 = lshr i32 %1064, 14
  %1066 = and i32 %1065, 511
  %1067 = and i32 %1066, 256
  %1068 = icmp ne i32 %1067, 0
  br i1 %1068, label %1069, label %1077

; <label>:1069:                                   ; preds = %1062
  %1070 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1071 = load i32, i32* %7, align 4
  %1072 = lshr i32 %1071, 14
  %1073 = and i32 %1072, 511
  %1074 = and i32 %1073, -257
  %1075 = sext i32 %1074 to i64
  %1076 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1070, i64 %1075
  br label %1084

; <label>:1077:                                   ; preds = %1062
  %1078 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1079 = load i32, i32* %7, align 4
  %1080 = lshr i32 %1079, 14
  %1081 = and i32 %1080, 511
  %1082 = sext i32 %1081 to i64
  %1083 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1078, i64 %1082
  br label %1084

; <label>:1084:                                   ; preds = %1077, %1069
  %1085 = phi %struct.lua_TValue* [ %1076, %1069 ], [ %1083, %1077 ]
  store %struct.lua_TValue* %1085, %struct.lua_TValue** %55, align 8
  %1086 = load %struct.lua_TValue*, %struct.lua_TValue** %54, align 8
  %1087 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1086, i32 0, i32 1
  %1088 = load i32, i32* %1087, align 8
  %1089 = icmp eq i32 %1088, 19
  br i1 %1089, label %1090, label %1113

; <label>:1090:                                   ; preds = %1084
  %1091 = load %struct.lua_TValue*, %struct.lua_TValue** %55, align 8
  %1092 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1091, i32 0, i32 1
  %1093 = load i32, i32* %1092, align 8
  %1094 = icmp eq i32 %1093, 19
  br i1 %1094, label %1095, label %1113

; <label>:1095:                                   ; preds = %1090
  %1096 = load %struct.lua_TValue*, %struct.lua_TValue** %54, align 8
  %1097 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1096, i32 0, i32 0
  %1098 = bitcast %union.Value* %1097 to i64*
  %1099 = load i64, i64* %1098, align 8
  store i64 %1099, i64* %58, align 8
  %1100 = load %struct.lua_TValue*, %struct.lua_TValue** %55, align 8
  %1101 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1100, i32 0, i32 0
  %1102 = bitcast %union.Value* %1101 to i64*
  %1103 = load i64, i64* %1102, align 8
  store i64 %1103, i64* %59, align 8
  %1104 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %1104, %struct.lua_TValue** %60, align 8
  %1105 = load i64, i64* %58, align 8
  %1106 = load i64, i64* %59, align 8
  %1107 = sub i64 %1105, %1106
  %1108 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8
  %1109 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1108, i32 0, i32 0
  %1110 = bitcast %union.Value* %1109 to i64*
  store i64 %1107, i64* %1110, align 8
  %1111 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8
  %1112 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1111, i32 0, i32 1
  store i32 19, i32* %1112, align 8
  br label %1162

; <label>:1113:                                   ; preds = %1090, %1084
  %1114 = load %struct.lua_TValue*, %struct.lua_TValue** %54, align 8
  %1115 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1114, i32 0, i32 1
  %1116 = load i32, i32* %1115, align 8
  %1117 = icmp eq i32 %1116, 3
  br i1 %1117, label %1118, label %1123

; <label>:1118:                                   ; preds = %1113
  %1119 = load %struct.lua_TValue*, %struct.lua_TValue** %54, align 8
  %1120 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1119, i32 0, i32 0
  %1121 = bitcast %union.Value* %1120 to double*
  %1122 = load double, double* %1121, align 8
  store double %1122, double* %56, align 8
  br i1 true, label %1127, label %1151

; <label>:1123:                                   ; preds = %1113
  %1124 = load %struct.lua_TValue*, %struct.lua_TValue** %54, align 8
  %1125 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1124, double* %56)
  %1126 = icmp ne i32 %1125, 0
  br i1 %1126, label %1127, label %1151

; <label>:1127:                                   ; preds = %1123, %1118
  %1128 = load %struct.lua_TValue*, %struct.lua_TValue** %55, align 8
  %1129 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1128, i32 0, i32 1
  %1130 = load i32, i32* %1129, align 8
  %1131 = icmp eq i32 %1130, 3
  br i1 %1131, label %1132, label %1137

; <label>:1132:                                   ; preds = %1127
  %1133 = load %struct.lua_TValue*, %struct.lua_TValue** %55, align 8
  %1134 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1133, i32 0, i32 0
  %1135 = bitcast %union.Value* %1134 to double*
  %1136 = load double, double* %1135, align 8
  store double %1136, double* %57, align 8
  br i1 true, label %1141, label %1151

; <label>:1137:                                   ; preds = %1127
  %1138 = load %struct.lua_TValue*, %struct.lua_TValue** %55, align 8
  %1139 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1138, double* %57)
  %1140 = icmp ne i32 %1139, 0
  br i1 %1140, label %1141, label %1151

; <label>:1141:                                   ; preds = %1137, %1132
  %1142 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %1142, %struct.lua_TValue** %61, align 8
  %1143 = load double, double* %56, align 8
  %1144 = load double, double* %57, align 8
  %1145 = fsub double %1143, %1144
  %1146 = load %struct.lua_TValue*, %struct.lua_TValue** %61, align 8
  %1147 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1146, i32 0, i32 0
  %1148 = bitcast %union.Value* %1147 to double*
  store double %1145, double* %1148, align 8
  %1149 = load %struct.lua_TValue*, %struct.lua_TValue** %61, align 8
  %1150 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1149, i32 0, i32 1
  store i32 3, i32* %1150, align 8
  br label %1161

; <label>:1151:                                   ; preds = %1137, %1132, %1123, %1118
  %1152 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %1153 = load %struct.lua_TValue*, %struct.lua_TValue** %54, align 8
  %1154 = load %struct.lua_TValue*, %struct.lua_TValue** %55, align 8
  %1155 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaT_trybinTM(%struct.lua_State* %1152, %struct.lua_TValue* %1153, %struct.lua_TValue* %1154, %struct.lua_TValue* %1155, i32 7)
  %1156 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %1157 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1156, i32 0, i32 4
  %1158 = bitcast %union.anon* %1157 to %struct.anon*
  %1159 = getelementptr inbounds %struct.anon, %struct.anon* %1158, i32 0, i32 0
  %1160 = load %struct.lua_TValue*, %struct.lua_TValue** %1159, align 8
  store %struct.lua_TValue* %1160, %struct.lua_TValue** %6, align 8
  br label %1161

; <label>:1161:                                   ; preds = %1151, %1141
  br label %1162

; <label>:1162:                                   ; preds = %1161, %1095
  br label %3779

; <label>:1163:                                   ; preds = %249
  %1164 = load i32, i32* %7, align 4
  %1165 = lshr i32 %1164, 23
  %1166 = and i32 %1165, 511
  %1167 = and i32 %1166, 256
  %1168 = icmp ne i32 %1167, 0
  br i1 %1168, label %1169, label %1177

; <label>:1169:                                   ; preds = %1163
  %1170 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1171 = load i32, i32* %7, align 4
  %1172 = lshr i32 %1171, 23
  %1173 = and i32 %1172, 511
  %1174 = and i32 %1173, -257
  %1175 = sext i32 %1174 to i64
  %1176 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1170, i64 %1175
  br label %1184

; <label>:1177:                                   ; preds = %1163
  %1178 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1179 = load i32, i32* %7, align 4
  %1180 = lshr i32 %1179, 23
  %1181 = and i32 %1180, 511
  %1182 = sext i32 %1181 to i64
  %1183 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1178, i64 %1182
  br label %1184

; <label>:1184:                                   ; preds = %1177, %1169
  %1185 = phi %struct.lua_TValue* [ %1176, %1169 ], [ %1183, %1177 ]
  store %struct.lua_TValue* %1185, %struct.lua_TValue** %62, align 8
  %1186 = load i32, i32* %7, align 4
  %1187 = lshr i32 %1186, 14
  %1188 = and i32 %1187, 511
  %1189 = and i32 %1188, 256
  %1190 = icmp ne i32 %1189, 0
  br i1 %1190, label %1191, label %1199

; <label>:1191:                                   ; preds = %1184
  %1192 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1193 = load i32, i32* %7, align 4
  %1194 = lshr i32 %1193, 14
  %1195 = and i32 %1194, 511
  %1196 = and i32 %1195, -257
  %1197 = sext i32 %1196 to i64
  %1198 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1192, i64 %1197
  br label %1206

; <label>:1199:                                   ; preds = %1184
  %1200 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1201 = load i32, i32* %7, align 4
  %1202 = lshr i32 %1201, 14
  %1203 = and i32 %1202, 511
  %1204 = sext i32 %1203 to i64
  %1205 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1200, i64 %1204
  br label %1206

; <label>:1206:                                   ; preds = %1199, %1191
  %1207 = phi %struct.lua_TValue* [ %1198, %1191 ], [ %1205, %1199 ]
  store %struct.lua_TValue* %1207, %struct.lua_TValue** %63, align 8
  %1208 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8
  %1209 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1208, i32 0, i32 1
  %1210 = load i32, i32* %1209, align 8
  %1211 = icmp eq i32 %1210, 19
  br i1 %1211, label %1212, label %1235

; <label>:1212:                                   ; preds = %1206
  %1213 = load %struct.lua_TValue*, %struct.lua_TValue** %63, align 8
  %1214 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1213, i32 0, i32 1
  %1215 = load i32, i32* %1214, align 8
  %1216 = icmp eq i32 %1215, 19
  br i1 %1216, label %1217, label %1235

; <label>:1217:                                   ; preds = %1212
  %1218 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8
  %1219 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1218, i32 0, i32 0
  %1220 = bitcast %union.Value* %1219 to i64*
  %1221 = load i64, i64* %1220, align 8
  store i64 %1221, i64* %66, align 8
  %1222 = load %struct.lua_TValue*, %struct.lua_TValue** %63, align 8
  %1223 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1222, i32 0, i32 0
  %1224 = bitcast %union.Value* %1223 to i64*
  %1225 = load i64, i64* %1224, align 8
  store i64 %1225, i64* %67, align 8
  %1226 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %1226, %struct.lua_TValue** %68, align 8
  %1227 = load i64, i64* %66, align 8
  %1228 = load i64, i64* %67, align 8
  %1229 = mul i64 %1227, %1228
  %1230 = load %struct.lua_TValue*, %struct.lua_TValue** %68, align 8
  %1231 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1230, i32 0, i32 0
  %1232 = bitcast %union.Value* %1231 to i64*
  store i64 %1229, i64* %1232, align 8
  %1233 = load %struct.lua_TValue*, %struct.lua_TValue** %68, align 8
  %1234 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1233, i32 0, i32 1
  store i32 19, i32* %1234, align 8
  br label %1284

; <label>:1235:                                   ; preds = %1212, %1206
  %1236 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8
  %1237 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1236, i32 0, i32 1
  %1238 = load i32, i32* %1237, align 8
  %1239 = icmp eq i32 %1238, 3
  br i1 %1239, label %1240, label %1245

; <label>:1240:                                   ; preds = %1235
  %1241 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8
  %1242 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1241, i32 0, i32 0
  %1243 = bitcast %union.Value* %1242 to double*
  %1244 = load double, double* %1243, align 8
  store double %1244, double* %64, align 8
  br i1 true, label %1249, label %1273

; <label>:1245:                                   ; preds = %1235
  %1246 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8
  %1247 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1246, double* %64)
  %1248 = icmp ne i32 %1247, 0
  br i1 %1248, label %1249, label %1273

; <label>:1249:                                   ; preds = %1245, %1240
  %1250 = load %struct.lua_TValue*, %struct.lua_TValue** %63, align 8
  %1251 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1250, i32 0, i32 1
  %1252 = load i32, i32* %1251, align 8
  %1253 = icmp eq i32 %1252, 3
  br i1 %1253, label %1254, label %1259

; <label>:1254:                                   ; preds = %1249
  %1255 = load %struct.lua_TValue*, %struct.lua_TValue** %63, align 8
  %1256 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1255, i32 0, i32 0
  %1257 = bitcast %union.Value* %1256 to double*
  %1258 = load double, double* %1257, align 8
  store double %1258, double* %65, align 8
  br i1 true, label %1263, label %1273

; <label>:1259:                                   ; preds = %1249
  %1260 = load %struct.lua_TValue*, %struct.lua_TValue** %63, align 8
  %1261 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1260, double* %65)
  %1262 = icmp ne i32 %1261, 0
  br i1 %1262, label %1263, label %1273

; <label>:1263:                                   ; preds = %1259, %1254
  %1264 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %1264, %struct.lua_TValue** %69, align 8
  %1265 = load double, double* %64, align 8
  %1266 = load double, double* %65, align 8
  %1267 = fmul double %1265, %1266
  %1268 = load %struct.lua_TValue*, %struct.lua_TValue** %69, align 8
  %1269 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1268, i32 0, i32 0
  %1270 = bitcast %union.Value* %1269 to double*
  store double %1267, double* %1270, align 8
  %1271 = load %struct.lua_TValue*, %struct.lua_TValue** %69, align 8
  %1272 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1271, i32 0, i32 1
  store i32 3, i32* %1272, align 8
  br label %1283

; <label>:1273:                                   ; preds = %1259, %1254, %1245, %1240
  %1274 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %1275 = load %struct.lua_TValue*, %struct.lua_TValue** %62, align 8
  %1276 = load %struct.lua_TValue*, %struct.lua_TValue** %63, align 8
  %1277 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaT_trybinTM(%struct.lua_State* %1274, %struct.lua_TValue* %1275, %struct.lua_TValue* %1276, %struct.lua_TValue* %1277, i32 8)
  %1278 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %1279 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1278, i32 0, i32 4
  %1280 = bitcast %union.anon* %1279 to %struct.anon*
  %1281 = getelementptr inbounds %struct.anon, %struct.anon* %1280, i32 0, i32 0
  %1282 = load %struct.lua_TValue*, %struct.lua_TValue** %1281, align 8
  store %struct.lua_TValue* %1282, %struct.lua_TValue** %6, align 8
  br label %1283

; <label>:1283:                                   ; preds = %1273, %1263
  br label %1284

; <label>:1284:                                   ; preds = %1283, %1217
  br label %3779

; <label>:1285:                                   ; preds = %249
  %1286 = load i32, i32* %7, align 4
  %1287 = lshr i32 %1286, 23
  %1288 = and i32 %1287, 511
  %1289 = and i32 %1288, 256
  %1290 = icmp ne i32 %1289, 0
  br i1 %1290, label %1291, label %1299

; <label>:1291:                                   ; preds = %1285
  %1292 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1293 = load i32, i32* %7, align 4
  %1294 = lshr i32 %1293, 23
  %1295 = and i32 %1294, 511
  %1296 = and i32 %1295, -257
  %1297 = sext i32 %1296 to i64
  %1298 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1292, i64 %1297
  br label %1306

; <label>:1299:                                   ; preds = %1285
  %1300 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1301 = load i32, i32* %7, align 4
  %1302 = lshr i32 %1301, 23
  %1303 = and i32 %1302, 511
  %1304 = sext i32 %1303 to i64
  %1305 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1300, i64 %1304
  br label %1306

; <label>:1306:                                   ; preds = %1299, %1291
  %1307 = phi %struct.lua_TValue* [ %1298, %1291 ], [ %1305, %1299 ]
  store %struct.lua_TValue* %1307, %struct.lua_TValue** %70, align 8
  %1308 = load i32, i32* %7, align 4
  %1309 = lshr i32 %1308, 14
  %1310 = and i32 %1309, 511
  %1311 = and i32 %1310, 256
  %1312 = icmp ne i32 %1311, 0
  br i1 %1312, label %1313, label %1321

; <label>:1313:                                   ; preds = %1306
  %1314 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1315 = load i32, i32* %7, align 4
  %1316 = lshr i32 %1315, 14
  %1317 = and i32 %1316, 511
  %1318 = and i32 %1317, -257
  %1319 = sext i32 %1318 to i64
  %1320 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1314, i64 %1319
  br label %1328

; <label>:1321:                                   ; preds = %1306
  %1322 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1323 = load i32, i32* %7, align 4
  %1324 = lshr i32 %1323, 14
  %1325 = and i32 %1324, 511
  %1326 = sext i32 %1325 to i64
  %1327 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1322, i64 %1326
  br label %1328

; <label>:1328:                                   ; preds = %1321, %1313
  %1329 = phi %struct.lua_TValue* [ %1320, %1313 ], [ %1327, %1321 ]
  store %struct.lua_TValue* %1329, %struct.lua_TValue** %71, align 8
  %1330 = load %struct.lua_TValue*, %struct.lua_TValue** %70, align 8
  %1331 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1330, i32 0, i32 1
  %1332 = load i32, i32* %1331, align 8
  %1333 = icmp eq i32 %1332, 3
  br i1 %1333, label %1334, label %1339

; <label>:1334:                                   ; preds = %1328
  %1335 = load %struct.lua_TValue*, %struct.lua_TValue** %70, align 8
  %1336 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1335, i32 0, i32 0
  %1337 = bitcast %union.Value* %1336 to double*
  %1338 = load double, double* %1337, align 8
  store double %1338, double* %72, align 8
  br i1 true, label %1343, label %1367

; <label>:1339:                                   ; preds = %1328
  %1340 = load %struct.lua_TValue*, %struct.lua_TValue** %70, align 8
  %1341 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1340, double* %72)
  %1342 = icmp ne i32 %1341, 0
  br i1 %1342, label %1343, label %1367

; <label>:1343:                                   ; preds = %1339, %1334
  %1344 = load %struct.lua_TValue*, %struct.lua_TValue** %71, align 8
  %1345 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1344, i32 0, i32 1
  %1346 = load i32, i32* %1345, align 8
  %1347 = icmp eq i32 %1346, 3
  br i1 %1347, label %1348, label %1353

; <label>:1348:                                   ; preds = %1343
  %1349 = load %struct.lua_TValue*, %struct.lua_TValue** %71, align 8
  %1350 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1349, i32 0, i32 0
  %1351 = bitcast %union.Value* %1350 to double*
  %1352 = load double, double* %1351, align 8
  store double %1352, double* %73, align 8
  br i1 true, label %1357, label %1367

; <label>:1353:                                   ; preds = %1343
  %1354 = load %struct.lua_TValue*, %struct.lua_TValue** %71, align 8
  %1355 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1354, double* %73)
  %1356 = icmp ne i32 %1355, 0
  br i1 %1356, label %1357, label %1367

; <label>:1357:                                   ; preds = %1353, %1348
  %1358 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %1358, %struct.lua_TValue** %74, align 8
  %1359 = load double, double* %72, align 8
  %1360 = load double, double* %73, align 8
  %1361 = fdiv double %1359, %1360
  %1362 = load %struct.lua_TValue*, %struct.lua_TValue** %74, align 8
  %1363 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1362, i32 0, i32 0
  %1364 = bitcast %union.Value* %1363 to double*
  store double %1361, double* %1364, align 8
  %1365 = load %struct.lua_TValue*, %struct.lua_TValue** %74, align 8
  %1366 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1365, i32 0, i32 1
  store i32 3, i32* %1366, align 8
  br label %1377

; <label>:1367:                                   ; preds = %1353, %1348, %1339, %1334
  %1368 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %1369 = load %struct.lua_TValue*, %struct.lua_TValue** %70, align 8
  %1370 = load %struct.lua_TValue*, %struct.lua_TValue** %71, align 8
  %1371 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaT_trybinTM(%struct.lua_State* %1368, %struct.lua_TValue* %1369, %struct.lua_TValue* %1370, %struct.lua_TValue* %1371, i32 11)
  %1372 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %1373 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1372, i32 0, i32 4
  %1374 = bitcast %union.anon* %1373 to %struct.anon*
  %1375 = getelementptr inbounds %struct.anon, %struct.anon* %1374, i32 0, i32 0
  %1376 = load %struct.lua_TValue*, %struct.lua_TValue** %1375, align 8
  store %struct.lua_TValue* %1376, %struct.lua_TValue** %6, align 8
  br label %1377

; <label>:1377:                                   ; preds = %1367, %1357
  br label %3779

; <label>:1378:                                   ; preds = %249
  %1379 = load i32, i32* %7, align 4
  %1380 = lshr i32 %1379, 23
  %1381 = and i32 %1380, 511
  %1382 = and i32 %1381, 256
  %1383 = icmp ne i32 %1382, 0
  br i1 %1383, label %1384, label %1392

; <label>:1384:                                   ; preds = %1378
  %1385 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1386 = load i32, i32* %7, align 4
  %1387 = lshr i32 %1386, 23
  %1388 = and i32 %1387, 511
  %1389 = and i32 %1388, -257
  %1390 = sext i32 %1389 to i64
  %1391 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1385, i64 %1390
  br label %1399

; <label>:1392:                                   ; preds = %1378
  %1393 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1394 = load i32, i32* %7, align 4
  %1395 = lshr i32 %1394, 23
  %1396 = and i32 %1395, 511
  %1397 = sext i32 %1396 to i64
  %1398 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1393, i64 %1397
  br label %1399

; <label>:1399:                                   ; preds = %1392, %1384
  %1400 = phi %struct.lua_TValue* [ %1391, %1384 ], [ %1398, %1392 ]
  store %struct.lua_TValue* %1400, %struct.lua_TValue** %75, align 8
  %1401 = load i32, i32* %7, align 4
  %1402 = lshr i32 %1401, 14
  %1403 = and i32 %1402, 511
  %1404 = and i32 %1403, 256
  %1405 = icmp ne i32 %1404, 0
  br i1 %1405, label %1406, label %1414

; <label>:1406:                                   ; preds = %1399
  %1407 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1408 = load i32, i32* %7, align 4
  %1409 = lshr i32 %1408, 14
  %1410 = and i32 %1409, 511
  %1411 = and i32 %1410, -257
  %1412 = sext i32 %1411 to i64
  %1413 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1407, i64 %1412
  br label %1421

; <label>:1414:                                   ; preds = %1399
  %1415 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1416 = load i32, i32* %7, align 4
  %1417 = lshr i32 %1416, 14
  %1418 = and i32 %1417, 511
  %1419 = sext i32 %1418 to i64
  %1420 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1415, i64 %1419
  br label %1421

; <label>:1421:                                   ; preds = %1414, %1406
  %1422 = phi %struct.lua_TValue* [ %1413, %1406 ], [ %1420, %1414 ]
  store %struct.lua_TValue* %1422, %struct.lua_TValue** %76, align 8
  %1423 = load %struct.lua_TValue*, %struct.lua_TValue** %75, align 8
  %1424 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1423, i32 0, i32 1
  %1425 = load i32, i32* %1424, align 8
  %1426 = icmp eq i32 %1425, 19
  br i1 %1426, label %1427, label %1432

; <label>:1427:                                   ; preds = %1421
  %1428 = load %struct.lua_TValue*, %struct.lua_TValue** %75, align 8
  %1429 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1428, i32 0, i32 0
  %1430 = bitcast %union.Value* %1429 to i64*
  %1431 = load i64, i64* %1430, align 8
  store i64 %1431, i64* %77, align 8
  br i1 true, label %1436, label %1460

; <label>:1432:                                   ; preds = %1421
  %1433 = load %struct.lua_TValue*, %struct.lua_TValue** %75, align 8
  %1434 = call i32 @luaV_tointeger(%struct.lua_TValue* %1433, i64* %77, i32 0)
  %1435 = icmp ne i32 %1434, 0
  br i1 %1435, label %1436, label %1460

; <label>:1436:                                   ; preds = %1432, %1427
  %1437 = load %struct.lua_TValue*, %struct.lua_TValue** %76, align 8
  %1438 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1437, i32 0, i32 1
  %1439 = load i32, i32* %1438, align 8
  %1440 = icmp eq i32 %1439, 19
  br i1 %1440, label %1441, label %1446

; <label>:1441:                                   ; preds = %1436
  %1442 = load %struct.lua_TValue*, %struct.lua_TValue** %76, align 8
  %1443 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1442, i32 0, i32 0
  %1444 = bitcast %union.Value* %1443 to i64*
  %1445 = load i64, i64* %1444, align 8
  store i64 %1445, i64* %78, align 8
  br i1 true, label %1450, label %1460

; <label>:1446:                                   ; preds = %1436
  %1447 = load %struct.lua_TValue*, %struct.lua_TValue** %76, align 8
  %1448 = call i32 @luaV_tointeger(%struct.lua_TValue* %1447, i64* %78, i32 0)
  %1449 = icmp ne i32 %1448, 0
  br i1 %1449, label %1450, label %1460

; <label>:1450:                                   ; preds = %1446, %1441
  %1451 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %1451, %struct.lua_TValue** %79, align 8
  %1452 = load i64, i64* %77, align 8
  %1453 = load i64, i64* %78, align 8
  %1454 = and i64 %1452, %1453
  %1455 = load %struct.lua_TValue*, %struct.lua_TValue** %79, align 8
  %1456 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1455, i32 0, i32 0
  %1457 = bitcast %union.Value* %1456 to i64*
  store i64 %1454, i64* %1457, align 8
  %1458 = load %struct.lua_TValue*, %struct.lua_TValue** %79, align 8
  %1459 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1458, i32 0, i32 1
  store i32 19, i32* %1459, align 8
  br label %1470

; <label>:1460:                                   ; preds = %1446, %1441, %1432, %1427
  %1461 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %1462 = load %struct.lua_TValue*, %struct.lua_TValue** %75, align 8
  %1463 = load %struct.lua_TValue*, %struct.lua_TValue** %76, align 8
  %1464 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaT_trybinTM(%struct.lua_State* %1461, %struct.lua_TValue* %1462, %struct.lua_TValue* %1463, %struct.lua_TValue* %1464, i32 13)
  %1465 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %1466 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1465, i32 0, i32 4
  %1467 = bitcast %union.anon* %1466 to %struct.anon*
  %1468 = getelementptr inbounds %struct.anon, %struct.anon* %1467, i32 0, i32 0
  %1469 = load %struct.lua_TValue*, %struct.lua_TValue** %1468, align 8
  store %struct.lua_TValue* %1469, %struct.lua_TValue** %6, align 8
  br label %1470

; <label>:1470:                                   ; preds = %1460, %1450
  br label %3779

; <label>:1471:                                   ; preds = %249
  %1472 = load i32, i32* %7, align 4
  %1473 = lshr i32 %1472, 23
  %1474 = and i32 %1473, 511
  %1475 = and i32 %1474, 256
  %1476 = icmp ne i32 %1475, 0
  br i1 %1476, label %1477, label %1485

; <label>:1477:                                   ; preds = %1471
  %1478 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1479 = load i32, i32* %7, align 4
  %1480 = lshr i32 %1479, 23
  %1481 = and i32 %1480, 511
  %1482 = and i32 %1481, -257
  %1483 = sext i32 %1482 to i64
  %1484 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1478, i64 %1483
  br label %1492

; <label>:1485:                                   ; preds = %1471
  %1486 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1487 = load i32, i32* %7, align 4
  %1488 = lshr i32 %1487, 23
  %1489 = and i32 %1488, 511
  %1490 = sext i32 %1489 to i64
  %1491 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1486, i64 %1490
  br label %1492

; <label>:1492:                                   ; preds = %1485, %1477
  %1493 = phi %struct.lua_TValue* [ %1484, %1477 ], [ %1491, %1485 ]
  store %struct.lua_TValue* %1493, %struct.lua_TValue** %80, align 8
  %1494 = load i32, i32* %7, align 4
  %1495 = lshr i32 %1494, 14
  %1496 = and i32 %1495, 511
  %1497 = and i32 %1496, 256
  %1498 = icmp ne i32 %1497, 0
  br i1 %1498, label %1499, label %1507

; <label>:1499:                                   ; preds = %1492
  %1500 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1501 = load i32, i32* %7, align 4
  %1502 = lshr i32 %1501, 14
  %1503 = and i32 %1502, 511
  %1504 = and i32 %1503, -257
  %1505 = sext i32 %1504 to i64
  %1506 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1500, i64 %1505
  br label %1514

; <label>:1507:                                   ; preds = %1492
  %1508 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1509 = load i32, i32* %7, align 4
  %1510 = lshr i32 %1509, 14
  %1511 = and i32 %1510, 511
  %1512 = sext i32 %1511 to i64
  %1513 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1508, i64 %1512
  br label %1514

; <label>:1514:                                   ; preds = %1507, %1499
  %1515 = phi %struct.lua_TValue* [ %1506, %1499 ], [ %1513, %1507 ]
  store %struct.lua_TValue* %1515, %struct.lua_TValue** %81, align 8
  %1516 = load %struct.lua_TValue*, %struct.lua_TValue** %80, align 8
  %1517 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1516, i32 0, i32 1
  %1518 = load i32, i32* %1517, align 8
  %1519 = icmp eq i32 %1518, 19
  br i1 %1519, label %1520, label %1525

; <label>:1520:                                   ; preds = %1514
  %1521 = load %struct.lua_TValue*, %struct.lua_TValue** %80, align 8
  %1522 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1521, i32 0, i32 0
  %1523 = bitcast %union.Value* %1522 to i64*
  %1524 = load i64, i64* %1523, align 8
  store i64 %1524, i64* %82, align 8
  br i1 true, label %1529, label %1553

; <label>:1525:                                   ; preds = %1514
  %1526 = load %struct.lua_TValue*, %struct.lua_TValue** %80, align 8
  %1527 = call i32 @luaV_tointeger(%struct.lua_TValue* %1526, i64* %82, i32 0)
  %1528 = icmp ne i32 %1527, 0
  br i1 %1528, label %1529, label %1553

; <label>:1529:                                   ; preds = %1525, %1520
  %1530 = load %struct.lua_TValue*, %struct.lua_TValue** %81, align 8
  %1531 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1530, i32 0, i32 1
  %1532 = load i32, i32* %1531, align 8
  %1533 = icmp eq i32 %1532, 19
  br i1 %1533, label %1534, label %1539

; <label>:1534:                                   ; preds = %1529
  %1535 = load %struct.lua_TValue*, %struct.lua_TValue** %81, align 8
  %1536 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1535, i32 0, i32 0
  %1537 = bitcast %union.Value* %1536 to i64*
  %1538 = load i64, i64* %1537, align 8
  store i64 %1538, i64* %83, align 8
  br i1 true, label %1543, label %1553

; <label>:1539:                                   ; preds = %1529
  %1540 = load %struct.lua_TValue*, %struct.lua_TValue** %81, align 8
  %1541 = call i32 @luaV_tointeger(%struct.lua_TValue* %1540, i64* %83, i32 0)
  %1542 = icmp ne i32 %1541, 0
  br i1 %1542, label %1543, label %1553

; <label>:1543:                                   ; preds = %1539, %1534
  %1544 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %1544, %struct.lua_TValue** %84, align 8
  %1545 = load i64, i64* %82, align 8
  %1546 = load i64, i64* %83, align 8
  %1547 = or i64 %1545, %1546
  %1548 = load %struct.lua_TValue*, %struct.lua_TValue** %84, align 8
  %1549 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1548, i32 0, i32 0
  %1550 = bitcast %union.Value* %1549 to i64*
  store i64 %1547, i64* %1550, align 8
  %1551 = load %struct.lua_TValue*, %struct.lua_TValue** %84, align 8
  %1552 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1551, i32 0, i32 1
  store i32 19, i32* %1552, align 8
  br label %1563

; <label>:1553:                                   ; preds = %1539, %1534, %1525, %1520
  %1554 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %1555 = load %struct.lua_TValue*, %struct.lua_TValue** %80, align 8
  %1556 = load %struct.lua_TValue*, %struct.lua_TValue** %81, align 8
  %1557 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaT_trybinTM(%struct.lua_State* %1554, %struct.lua_TValue* %1555, %struct.lua_TValue* %1556, %struct.lua_TValue* %1557, i32 14)
  %1558 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %1559 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1558, i32 0, i32 4
  %1560 = bitcast %union.anon* %1559 to %struct.anon*
  %1561 = getelementptr inbounds %struct.anon, %struct.anon* %1560, i32 0, i32 0
  %1562 = load %struct.lua_TValue*, %struct.lua_TValue** %1561, align 8
  store %struct.lua_TValue* %1562, %struct.lua_TValue** %6, align 8
  br label %1563

; <label>:1563:                                   ; preds = %1553, %1543
  br label %3779

; <label>:1564:                                   ; preds = %249
  %1565 = load i32, i32* %7, align 4
  %1566 = lshr i32 %1565, 23
  %1567 = and i32 %1566, 511
  %1568 = and i32 %1567, 256
  %1569 = icmp ne i32 %1568, 0
  br i1 %1569, label %1570, label %1578

; <label>:1570:                                   ; preds = %1564
  %1571 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1572 = load i32, i32* %7, align 4
  %1573 = lshr i32 %1572, 23
  %1574 = and i32 %1573, 511
  %1575 = and i32 %1574, -257
  %1576 = sext i32 %1575 to i64
  %1577 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1571, i64 %1576
  br label %1585

; <label>:1578:                                   ; preds = %1564
  %1579 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1580 = load i32, i32* %7, align 4
  %1581 = lshr i32 %1580, 23
  %1582 = and i32 %1581, 511
  %1583 = sext i32 %1582 to i64
  %1584 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1579, i64 %1583
  br label %1585

; <label>:1585:                                   ; preds = %1578, %1570
  %1586 = phi %struct.lua_TValue* [ %1577, %1570 ], [ %1584, %1578 ]
  store %struct.lua_TValue* %1586, %struct.lua_TValue** %85, align 8
  %1587 = load i32, i32* %7, align 4
  %1588 = lshr i32 %1587, 14
  %1589 = and i32 %1588, 511
  %1590 = and i32 %1589, 256
  %1591 = icmp ne i32 %1590, 0
  br i1 %1591, label %1592, label %1600

; <label>:1592:                                   ; preds = %1585
  %1593 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1594 = load i32, i32* %7, align 4
  %1595 = lshr i32 %1594, 14
  %1596 = and i32 %1595, 511
  %1597 = and i32 %1596, -257
  %1598 = sext i32 %1597 to i64
  %1599 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1593, i64 %1598
  br label %1607

; <label>:1600:                                   ; preds = %1585
  %1601 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1602 = load i32, i32* %7, align 4
  %1603 = lshr i32 %1602, 14
  %1604 = and i32 %1603, 511
  %1605 = sext i32 %1604 to i64
  %1606 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1601, i64 %1605
  br label %1607

; <label>:1607:                                   ; preds = %1600, %1592
  %1608 = phi %struct.lua_TValue* [ %1599, %1592 ], [ %1606, %1600 ]
  store %struct.lua_TValue* %1608, %struct.lua_TValue** %86, align 8
  %1609 = load %struct.lua_TValue*, %struct.lua_TValue** %85, align 8
  %1610 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1609, i32 0, i32 1
  %1611 = load i32, i32* %1610, align 8
  %1612 = icmp eq i32 %1611, 19
  br i1 %1612, label %1613, label %1618

; <label>:1613:                                   ; preds = %1607
  %1614 = load %struct.lua_TValue*, %struct.lua_TValue** %85, align 8
  %1615 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1614, i32 0, i32 0
  %1616 = bitcast %union.Value* %1615 to i64*
  %1617 = load i64, i64* %1616, align 8
  store i64 %1617, i64* %87, align 8
  br i1 true, label %1622, label %1646

; <label>:1618:                                   ; preds = %1607
  %1619 = load %struct.lua_TValue*, %struct.lua_TValue** %85, align 8
  %1620 = call i32 @luaV_tointeger(%struct.lua_TValue* %1619, i64* %87, i32 0)
  %1621 = icmp ne i32 %1620, 0
  br i1 %1621, label %1622, label %1646

; <label>:1622:                                   ; preds = %1618, %1613
  %1623 = load %struct.lua_TValue*, %struct.lua_TValue** %86, align 8
  %1624 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1623, i32 0, i32 1
  %1625 = load i32, i32* %1624, align 8
  %1626 = icmp eq i32 %1625, 19
  br i1 %1626, label %1627, label %1632

; <label>:1627:                                   ; preds = %1622
  %1628 = load %struct.lua_TValue*, %struct.lua_TValue** %86, align 8
  %1629 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1628, i32 0, i32 0
  %1630 = bitcast %union.Value* %1629 to i64*
  %1631 = load i64, i64* %1630, align 8
  store i64 %1631, i64* %88, align 8
  br i1 true, label %1636, label %1646

; <label>:1632:                                   ; preds = %1622
  %1633 = load %struct.lua_TValue*, %struct.lua_TValue** %86, align 8
  %1634 = call i32 @luaV_tointeger(%struct.lua_TValue* %1633, i64* %88, i32 0)
  %1635 = icmp ne i32 %1634, 0
  br i1 %1635, label %1636, label %1646

; <label>:1636:                                   ; preds = %1632, %1627
  %1637 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %1637, %struct.lua_TValue** %89, align 8
  %1638 = load i64, i64* %87, align 8
  %1639 = load i64, i64* %88, align 8
  %1640 = xor i64 %1638, %1639
  %1641 = load %struct.lua_TValue*, %struct.lua_TValue** %89, align 8
  %1642 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1641, i32 0, i32 0
  %1643 = bitcast %union.Value* %1642 to i64*
  store i64 %1640, i64* %1643, align 8
  %1644 = load %struct.lua_TValue*, %struct.lua_TValue** %89, align 8
  %1645 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1644, i32 0, i32 1
  store i32 19, i32* %1645, align 8
  br label %1656

; <label>:1646:                                   ; preds = %1632, %1627, %1618, %1613
  %1647 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %1648 = load %struct.lua_TValue*, %struct.lua_TValue** %85, align 8
  %1649 = load %struct.lua_TValue*, %struct.lua_TValue** %86, align 8
  %1650 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaT_trybinTM(%struct.lua_State* %1647, %struct.lua_TValue* %1648, %struct.lua_TValue* %1649, %struct.lua_TValue* %1650, i32 15)
  %1651 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %1652 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1651, i32 0, i32 4
  %1653 = bitcast %union.anon* %1652 to %struct.anon*
  %1654 = getelementptr inbounds %struct.anon, %struct.anon* %1653, i32 0, i32 0
  %1655 = load %struct.lua_TValue*, %struct.lua_TValue** %1654, align 8
  store %struct.lua_TValue* %1655, %struct.lua_TValue** %6, align 8
  br label %1656

; <label>:1656:                                   ; preds = %1646, %1636
  br label %3779

; <label>:1657:                                   ; preds = %249
  %1658 = load i32, i32* %7, align 4
  %1659 = lshr i32 %1658, 23
  %1660 = and i32 %1659, 511
  %1661 = and i32 %1660, 256
  %1662 = icmp ne i32 %1661, 0
  br i1 %1662, label %1663, label %1671

; <label>:1663:                                   ; preds = %1657
  %1664 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1665 = load i32, i32* %7, align 4
  %1666 = lshr i32 %1665, 23
  %1667 = and i32 %1666, 511
  %1668 = and i32 %1667, -257
  %1669 = sext i32 %1668 to i64
  %1670 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1664, i64 %1669
  br label %1678

; <label>:1671:                                   ; preds = %1657
  %1672 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1673 = load i32, i32* %7, align 4
  %1674 = lshr i32 %1673, 23
  %1675 = and i32 %1674, 511
  %1676 = sext i32 %1675 to i64
  %1677 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1672, i64 %1676
  br label %1678

; <label>:1678:                                   ; preds = %1671, %1663
  %1679 = phi %struct.lua_TValue* [ %1670, %1663 ], [ %1677, %1671 ]
  store %struct.lua_TValue* %1679, %struct.lua_TValue** %90, align 8
  %1680 = load i32, i32* %7, align 4
  %1681 = lshr i32 %1680, 14
  %1682 = and i32 %1681, 511
  %1683 = and i32 %1682, 256
  %1684 = icmp ne i32 %1683, 0
  br i1 %1684, label %1685, label %1693

; <label>:1685:                                   ; preds = %1678
  %1686 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1687 = load i32, i32* %7, align 4
  %1688 = lshr i32 %1687, 14
  %1689 = and i32 %1688, 511
  %1690 = and i32 %1689, -257
  %1691 = sext i32 %1690 to i64
  %1692 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1686, i64 %1691
  br label %1700

; <label>:1693:                                   ; preds = %1678
  %1694 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1695 = load i32, i32* %7, align 4
  %1696 = lshr i32 %1695, 14
  %1697 = and i32 %1696, 511
  %1698 = sext i32 %1697 to i64
  %1699 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1694, i64 %1698
  br label %1700

; <label>:1700:                                   ; preds = %1693, %1685
  %1701 = phi %struct.lua_TValue* [ %1692, %1685 ], [ %1699, %1693 ]
  store %struct.lua_TValue* %1701, %struct.lua_TValue** %91, align 8
  %1702 = load %struct.lua_TValue*, %struct.lua_TValue** %90, align 8
  %1703 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1702, i32 0, i32 1
  %1704 = load i32, i32* %1703, align 8
  %1705 = icmp eq i32 %1704, 19
  br i1 %1705, label %1706, label %1711

; <label>:1706:                                   ; preds = %1700
  %1707 = load %struct.lua_TValue*, %struct.lua_TValue** %90, align 8
  %1708 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1707, i32 0, i32 0
  %1709 = bitcast %union.Value* %1708 to i64*
  %1710 = load i64, i64* %1709, align 8
  store i64 %1710, i64* %92, align 8
  br i1 true, label %1715, label %1739

; <label>:1711:                                   ; preds = %1700
  %1712 = load %struct.lua_TValue*, %struct.lua_TValue** %90, align 8
  %1713 = call i32 @luaV_tointeger(%struct.lua_TValue* %1712, i64* %92, i32 0)
  %1714 = icmp ne i32 %1713, 0
  br i1 %1714, label %1715, label %1739

; <label>:1715:                                   ; preds = %1711, %1706
  %1716 = load %struct.lua_TValue*, %struct.lua_TValue** %91, align 8
  %1717 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1716, i32 0, i32 1
  %1718 = load i32, i32* %1717, align 8
  %1719 = icmp eq i32 %1718, 19
  br i1 %1719, label %1720, label %1725

; <label>:1720:                                   ; preds = %1715
  %1721 = load %struct.lua_TValue*, %struct.lua_TValue** %91, align 8
  %1722 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1721, i32 0, i32 0
  %1723 = bitcast %union.Value* %1722 to i64*
  %1724 = load i64, i64* %1723, align 8
  store i64 %1724, i64* %93, align 8
  br i1 true, label %1729, label %1739

; <label>:1725:                                   ; preds = %1715
  %1726 = load %struct.lua_TValue*, %struct.lua_TValue** %91, align 8
  %1727 = call i32 @luaV_tointeger(%struct.lua_TValue* %1726, i64* %93, i32 0)
  %1728 = icmp ne i32 %1727, 0
  br i1 %1728, label %1729, label %1739

; <label>:1729:                                   ; preds = %1725, %1720
  %1730 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %1730, %struct.lua_TValue** %94, align 8
  %1731 = load i64, i64* %92, align 8
  %1732 = load i64, i64* %93, align 8
  %1733 = call i64 @luaV_shiftl(i64 %1731, i64 %1732)
  %1734 = load %struct.lua_TValue*, %struct.lua_TValue** %94, align 8
  %1735 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1734, i32 0, i32 0
  %1736 = bitcast %union.Value* %1735 to i64*
  store i64 %1733, i64* %1736, align 8
  %1737 = load %struct.lua_TValue*, %struct.lua_TValue** %94, align 8
  %1738 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1737, i32 0, i32 1
  store i32 19, i32* %1738, align 8
  br label %1749

; <label>:1739:                                   ; preds = %1725, %1720, %1711, %1706
  %1740 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %1741 = load %struct.lua_TValue*, %struct.lua_TValue** %90, align 8
  %1742 = load %struct.lua_TValue*, %struct.lua_TValue** %91, align 8
  %1743 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaT_trybinTM(%struct.lua_State* %1740, %struct.lua_TValue* %1741, %struct.lua_TValue* %1742, %struct.lua_TValue* %1743, i32 16)
  %1744 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %1745 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1744, i32 0, i32 4
  %1746 = bitcast %union.anon* %1745 to %struct.anon*
  %1747 = getelementptr inbounds %struct.anon, %struct.anon* %1746, i32 0, i32 0
  %1748 = load %struct.lua_TValue*, %struct.lua_TValue** %1747, align 8
  store %struct.lua_TValue* %1748, %struct.lua_TValue** %6, align 8
  br label %1749

; <label>:1749:                                   ; preds = %1739, %1729
  br label %3779

; <label>:1750:                                   ; preds = %249
  %1751 = load i32, i32* %7, align 4
  %1752 = lshr i32 %1751, 23
  %1753 = and i32 %1752, 511
  %1754 = and i32 %1753, 256
  %1755 = icmp ne i32 %1754, 0
  br i1 %1755, label %1756, label %1764

; <label>:1756:                                   ; preds = %1750
  %1757 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1758 = load i32, i32* %7, align 4
  %1759 = lshr i32 %1758, 23
  %1760 = and i32 %1759, 511
  %1761 = and i32 %1760, -257
  %1762 = sext i32 %1761 to i64
  %1763 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1757, i64 %1762
  br label %1771

; <label>:1764:                                   ; preds = %1750
  %1765 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1766 = load i32, i32* %7, align 4
  %1767 = lshr i32 %1766, 23
  %1768 = and i32 %1767, 511
  %1769 = sext i32 %1768 to i64
  %1770 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1765, i64 %1769
  br label %1771

; <label>:1771:                                   ; preds = %1764, %1756
  %1772 = phi %struct.lua_TValue* [ %1763, %1756 ], [ %1770, %1764 ]
  store %struct.lua_TValue* %1772, %struct.lua_TValue** %95, align 8
  %1773 = load i32, i32* %7, align 4
  %1774 = lshr i32 %1773, 14
  %1775 = and i32 %1774, 511
  %1776 = and i32 %1775, 256
  %1777 = icmp ne i32 %1776, 0
  br i1 %1777, label %1778, label %1786

; <label>:1778:                                   ; preds = %1771
  %1779 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1780 = load i32, i32* %7, align 4
  %1781 = lshr i32 %1780, 14
  %1782 = and i32 %1781, 511
  %1783 = and i32 %1782, -257
  %1784 = sext i32 %1783 to i64
  %1785 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1779, i64 %1784
  br label %1793

; <label>:1786:                                   ; preds = %1771
  %1787 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1788 = load i32, i32* %7, align 4
  %1789 = lshr i32 %1788, 14
  %1790 = and i32 %1789, 511
  %1791 = sext i32 %1790 to i64
  %1792 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1787, i64 %1791
  br label %1793

; <label>:1793:                                   ; preds = %1786, %1778
  %1794 = phi %struct.lua_TValue* [ %1785, %1778 ], [ %1792, %1786 ]
  store %struct.lua_TValue* %1794, %struct.lua_TValue** %96, align 8
  %1795 = load %struct.lua_TValue*, %struct.lua_TValue** %95, align 8
  %1796 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1795, i32 0, i32 1
  %1797 = load i32, i32* %1796, align 8
  %1798 = icmp eq i32 %1797, 19
  br i1 %1798, label %1799, label %1804

; <label>:1799:                                   ; preds = %1793
  %1800 = load %struct.lua_TValue*, %struct.lua_TValue** %95, align 8
  %1801 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1800, i32 0, i32 0
  %1802 = bitcast %union.Value* %1801 to i64*
  %1803 = load i64, i64* %1802, align 8
  store i64 %1803, i64* %97, align 8
  br i1 true, label %1808, label %1833

; <label>:1804:                                   ; preds = %1793
  %1805 = load %struct.lua_TValue*, %struct.lua_TValue** %95, align 8
  %1806 = call i32 @luaV_tointeger(%struct.lua_TValue* %1805, i64* %97, i32 0)
  %1807 = icmp ne i32 %1806, 0
  br i1 %1807, label %1808, label %1833

; <label>:1808:                                   ; preds = %1804, %1799
  %1809 = load %struct.lua_TValue*, %struct.lua_TValue** %96, align 8
  %1810 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1809, i32 0, i32 1
  %1811 = load i32, i32* %1810, align 8
  %1812 = icmp eq i32 %1811, 19
  br i1 %1812, label %1813, label %1818

; <label>:1813:                                   ; preds = %1808
  %1814 = load %struct.lua_TValue*, %struct.lua_TValue** %96, align 8
  %1815 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1814, i32 0, i32 0
  %1816 = bitcast %union.Value* %1815 to i64*
  %1817 = load i64, i64* %1816, align 8
  store i64 %1817, i64* %98, align 8
  br i1 true, label %1822, label %1833

; <label>:1818:                                   ; preds = %1808
  %1819 = load %struct.lua_TValue*, %struct.lua_TValue** %96, align 8
  %1820 = call i32 @luaV_tointeger(%struct.lua_TValue* %1819, i64* %98, i32 0)
  %1821 = icmp ne i32 %1820, 0
  br i1 %1821, label %1822, label %1833

; <label>:1822:                                   ; preds = %1818, %1813
  %1823 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %1823, %struct.lua_TValue** %99, align 8
  %1824 = load i64, i64* %97, align 8
  %1825 = load i64, i64* %98, align 8
  %1826 = sub nsw i64 0, %1825
  %1827 = call i64 @luaV_shiftl(i64 %1824, i64 %1826)
  %1828 = load %struct.lua_TValue*, %struct.lua_TValue** %99, align 8
  %1829 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1828, i32 0, i32 0
  %1830 = bitcast %union.Value* %1829 to i64*
  store i64 %1827, i64* %1830, align 8
  %1831 = load %struct.lua_TValue*, %struct.lua_TValue** %99, align 8
  %1832 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1831, i32 0, i32 1
  store i32 19, i32* %1832, align 8
  br label %1843

; <label>:1833:                                   ; preds = %1818, %1813, %1804, %1799
  %1834 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %1835 = load %struct.lua_TValue*, %struct.lua_TValue** %95, align 8
  %1836 = load %struct.lua_TValue*, %struct.lua_TValue** %96, align 8
  %1837 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaT_trybinTM(%struct.lua_State* %1834, %struct.lua_TValue* %1835, %struct.lua_TValue* %1836, %struct.lua_TValue* %1837, i32 17)
  %1838 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %1839 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1838, i32 0, i32 4
  %1840 = bitcast %union.anon* %1839 to %struct.anon*
  %1841 = getelementptr inbounds %struct.anon, %struct.anon* %1840, i32 0, i32 0
  %1842 = load %struct.lua_TValue*, %struct.lua_TValue** %1841, align 8
  store %struct.lua_TValue* %1842, %struct.lua_TValue** %6, align 8
  br label %1843

; <label>:1843:                                   ; preds = %1833, %1822
  br label %3779

; <label>:1844:                                   ; preds = %249
  %1845 = load i32, i32* %7, align 4
  %1846 = lshr i32 %1845, 23
  %1847 = and i32 %1846, 511
  %1848 = and i32 %1847, 256
  %1849 = icmp ne i32 %1848, 0
  br i1 %1849, label %1850, label %1858

; <label>:1850:                                   ; preds = %1844
  %1851 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1852 = load i32, i32* %7, align 4
  %1853 = lshr i32 %1852, 23
  %1854 = and i32 %1853, 511
  %1855 = and i32 %1854, -257
  %1856 = sext i32 %1855 to i64
  %1857 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1851, i64 %1856
  br label %1865

; <label>:1858:                                   ; preds = %1844
  %1859 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1860 = load i32, i32* %7, align 4
  %1861 = lshr i32 %1860, 23
  %1862 = and i32 %1861, 511
  %1863 = sext i32 %1862 to i64
  %1864 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1859, i64 %1863
  br label %1865

; <label>:1865:                                   ; preds = %1858, %1850
  %1866 = phi %struct.lua_TValue* [ %1857, %1850 ], [ %1864, %1858 ]
  store %struct.lua_TValue* %1866, %struct.lua_TValue** %100, align 8
  %1867 = load i32, i32* %7, align 4
  %1868 = lshr i32 %1867, 14
  %1869 = and i32 %1868, 511
  %1870 = and i32 %1869, 256
  %1871 = icmp ne i32 %1870, 0
  br i1 %1871, label %1872, label %1880

; <label>:1872:                                   ; preds = %1865
  %1873 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1874 = load i32, i32* %7, align 4
  %1875 = lshr i32 %1874, 14
  %1876 = and i32 %1875, 511
  %1877 = and i32 %1876, -257
  %1878 = sext i32 %1877 to i64
  %1879 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1873, i64 %1878
  br label %1887

; <label>:1880:                                   ; preds = %1865
  %1881 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1882 = load i32, i32* %7, align 4
  %1883 = lshr i32 %1882, 14
  %1884 = and i32 %1883, 511
  %1885 = sext i32 %1884 to i64
  %1886 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1881, i64 %1885
  br label %1887

; <label>:1887:                                   ; preds = %1880, %1872
  %1888 = phi %struct.lua_TValue* [ %1879, %1872 ], [ %1886, %1880 ]
  store %struct.lua_TValue* %1888, %struct.lua_TValue** %101, align 8
  %1889 = load %struct.lua_TValue*, %struct.lua_TValue** %100, align 8
  %1890 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1889, i32 0, i32 1
  %1891 = load i32, i32* %1890, align 8
  %1892 = icmp eq i32 %1891, 19
  br i1 %1892, label %1893, label %1917

; <label>:1893:                                   ; preds = %1887
  %1894 = load %struct.lua_TValue*, %struct.lua_TValue** %101, align 8
  %1895 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1894, i32 0, i32 1
  %1896 = load i32, i32* %1895, align 8
  %1897 = icmp eq i32 %1896, 19
  br i1 %1897, label %1898, label %1917

; <label>:1898:                                   ; preds = %1893
  %1899 = load %struct.lua_TValue*, %struct.lua_TValue** %100, align 8
  %1900 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1899, i32 0, i32 0
  %1901 = bitcast %union.Value* %1900 to i64*
  %1902 = load i64, i64* %1901, align 8
  store i64 %1902, i64* %104, align 8
  %1903 = load %struct.lua_TValue*, %struct.lua_TValue** %101, align 8
  %1904 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1903, i32 0, i32 0
  %1905 = bitcast %union.Value* %1904 to i64*
  %1906 = load i64, i64* %1905, align 8
  store i64 %1906, i64* %105, align 8
  %1907 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %1907, %struct.lua_TValue** %106, align 8
  %1908 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %1909 = load i64, i64* %104, align 8
  %1910 = load i64, i64* %105, align 8
  %1911 = call i64 @luaV_mod(%struct.lua_State* %1908, i64 %1909, i64 %1910)
  %1912 = load %struct.lua_TValue*, %struct.lua_TValue** %106, align 8
  %1913 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1912, i32 0, i32 0
  %1914 = bitcast %union.Value* %1913 to i64*
  store i64 %1911, i64* %1914, align 8
  %1915 = load %struct.lua_TValue*, %struct.lua_TValue** %106, align 8
  %1916 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1915, i32 0, i32 1
  store i32 19, i32* %1916, align 8
  br label %1976

; <label>:1917:                                   ; preds = %1893, %1887
  %1918 = load %struct.lua_TValue*, %struct.lua_TValue** %100, align 8
  %1919 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1918, i32 0, i32 1
  %1920 = load i32, i32* %1919, align 8
  %1921 = icmp eq i32 %1920, 3
  br i1 %1921, label %1922, label %1927

; <label>:1922:                                   ; preds = %1917
  %1923 = load %struct.lua_TValue*, %struct.lua_TValue** %100, align 8
  %1924 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1923, i32 0, i32 0
  %1925 = bitcast %union.Value* %1924 to double*
  %1926 = load double, double* %1925, align 8
  store double %1926, double* %102, align 8
  br i1 true, label %1931, label %1965

; <label>:1927:                                   ; preds = %1917
  %1928 = load %struct.lua_TValue*, %struct.lua_TValue** %100, align 8
  %1929 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1928, double* %102)
  %1930 = icmp ne i32 %1929, 0
  br i1 %1930, label %1931, label %1965

; <label>:1931:                                   ; preds = %1927, %1922
  %1932 = load %struct.lua_TValue*, %struct.lua_TValue** %101, align 8
  %1933 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1932, i32 0, i32 1
  %1934 = load i32, i32* %1933, align 8
  %1935 = icmp eq i32 %1934, 3
  br i1 %1935, label %1936, label %1941

; <label>:1936:                                   ; preds = %1931
  %1937 = load %struct.lua_TValue*, %struct.lua_TValue** %101, align 8
  %1938 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1937, i32 0, i32 0
  %1939 = bitcast %union.Value* %1938 to double*
  %1940 = load double, double* %1939, align 8
  store double %1940, double* %103, align 8
  br i1 true, label %1945, label %1965

; <label>:1941:                                   ; preds = %1931
  %1942 = load %struct.lua_TValue*, %struct.lua_TValue** %101, align 8
  %1943 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1942, double* %103)
  %1944 = icmp ne i32 %1943, 0
  br i1 %1944, label %1945, label %1965

; <label>:1945:                                   ; preds = %1941, %1936
  %1946 = load double, double* %102, align 8
  %1947 = load double, double* %103, align 8
  %1948 = call double @fmod(double %1946, double %1947) #9
  store double %1948, double* %107, align 8
  %1949 = load double, double* %107, align 8
  %1950 = load double, double* %103, align 8
  %1951 = fmul double %1949, %1950
  %1952 = fcmp olt double %1951, 0.000000e+00
  br i1 %1952, label %1953, label %1957

; <label>:1953:                                   ; preds = %1945
  %1954 = load double, double* %103, align 8
  %1955 = load double, double* %107, align 8
  %1956 = fadd double %1955, %1954
  store double %1956, double* %107, align 8
  br label %1957

; <label>:1957:                                   ; preds = %1953, %1945
  %1958 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %1958, %struct.lua_TValue** %108, align 8
  %1959 = load double, double* %107, align 8
  %1960 = load %struct.lua_TValue*, %struct.lua_TValue** %108, align 8
  %1961 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1960, i32 0, i32 0
  %1962 = bitcast %union.Value* %1961 to double*
  store double %1959, double* %1962, align 8
  %1963 = load %struct.lua_TValue*, %struct.lua_TValue** %108, align 8
  %1964 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1963, i32 0, i32 1
  store i32 3, i32* %1964, align 8
  br label %1975

; <label>:1965:                                   ; preds = %1941, %1936, %1927, %1922
  %1966 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %1967 = load %struct.lua_TValue*, %struct.lua_TValue** %100, align 8
  %1968 = load %struct.lua_TValue*, %struct.lua_TValue** %101, align 8
  %1969 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaT_trybinTM(%struct.lua_State* %1966, %struct.lua_TValue* %1967, %struct.lua_TValue* %1968, %struct.lua_TValue* %1969, i32 9)
  %1970 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %1971 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1970, i32 0, i32 4
  %1972 = bitcast %union.anon* %1971 to %struct.anon*
  %1973 = getelementptr inbounds %struct.anon, %struct.anon* %1972, i32 0, i32 0
  %1974 = load %struct.lua_TValue*, %struct.lua_TValue** %1973, align 8
  store %struct.lua_TValue* %1974, %struct.lua_TValue** %6, align 8
  br label %1975

; <label>:1975:                                   ; preds = %1965, %1957
  br label %1976

; <label>:1976:                                   ; preds = %1975, %1898
  br label %3779

; <label>:1977:                                   ; preds = %249
  %1978 = load i32, i32* %7, align 4
  %1979 = lshr i32 %1978, 23
  %1980 = and i32 %1979, 511
  %1981 = and i32 %1980, 256
  %1982 = icmp ne i32 %1981, 0
  br i1 %1982, label %1983, label %1991

; <label>:1983:                                   ; preds = %1977
  %1984 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %1985 = load i32, i32* %7, align 4
  %1986 = lshr i32 %1985, 23
  %1987 = and i32 %1986, 511
  %1988 = and i32 %1987, -257
  %1989 = sext i32 %1988 to i64
  %1990 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1984, i64 %1989
  br label %1998

; <label>:1991:                                   ; preds = %1977
  %1992 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %1993 = load i32, i32* %7, align 4
  %1994 = lshr i32 %1993, 23
  %1995 = and i32 %1994, 511
  %1996 = sext i32 %1995 to i64
  %1997 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1992, i64 %1996
  br label %1998

; <label>:1998:                                   ; preds = %1991, %1983
  %1999 = phi %struct.lua_TValue* [ %1990, %1983 ], [ %1997, %1991 ]
  store %struct.lua_TValue* %1999, %struct.lua_TValue** %109, align 8
  %2000 = load i32, i32* %7, align 4
  %2001 = lshr i32 %2000, 14
  %2002 = and i32 %2001, 511
  %2003 = and i32 %2002, 256
  %2004 = icmp ne i32 %2003, 0
  br i1 %2004, label %2005, label %2013

; <label>:2005:                                   ; preds = %1998
  %2006 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %2007 = load i32, i32* %7, align 4
  %2008 = lshr i32 %2007, 14
  %2009 = and i32 %2008, 511
  %2010 = and i32 %2009, -257
  %2011 = sext i32 %2010 to i64
  %2012 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2006, i64 %2011
  br label %2020

; <label>:2013:                                   ; preds = %1998
  %2014 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %2015 = load i32, i32* %7, align 4
  %2016 = lshr i32 %2015, 14
  %2017 = and i32 %2016, 511
  %2018 = sext i32 %2017 to i64
  %2019 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2014, i64 %2018
  br label %2020

; <label>:2020:                                   ; preds = %2013, %2005
  %2021 = phi %struct.lua_TValue* [ %2012, %2005 ], [ %2019, %2013 ]
  store %struct.lua_TValue* %2021, %struct.lua_TValue** %110, align 8
  %2022 = load %struct.lua_TValue*, %struct.lua_TValue** %109, align 8
  %2023 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2022, i32 0, i32 1
  %2024 = load i32, i32* %2023, align 8
  %2025 = icmp eq i32 %2024, 19
  br i1 %2025, label %2026, label %2050

; <label>:2026:                                   ; preds = %2020
  %2027 = load %struct.lua_TValue*, %struct.lua_TValue** %110, align 8
  %2028 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2027, i32 0, i32 1
  %2029 = load i32, i32* %2028, align 8
  %2030 = icmp eq i32 %2029, 19
  br i1 %2030, label %2031, label %2050

; <label>:2031:                                   ; preds = %2026
  %2032 = load %struct.lua_TValue*, %struct.lua_TValue** %109, align 8
  %2033 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2032, i32 0, i32 0
  %2034 = bitcast %union.Value* %2033 to i64*
  %2035 = load i64, i64* %2034, align 8
  store i64 %2035, i64* %113, align 8
  %2036 = load %struct.lua_TValue*, %struct.lua_TValue** %110, align 8
  %2037 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2036, i32 0, i32 0
  %2038 = bitcast %union.Value* %2037 to i64*
  %2039 = load i64, i64* %2038, align 8
  store i64 %2039, i64* %114, align 8
  %2040 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %2040, %struct.lua_TValue** %115, align 8
  %2041 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2042 = load i64, i64* %113, align 8
  %2043 = load i64, i64* %114, align 8
  %2044 = call i64 @luaV_div(%struct.lua_State* %2041, i64 %2042, i64 %2043)
  %2045 = load %struct.lua_TValue*, %struct.lua_TValue** %115, align 8
  %2046 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2045, i32 0, i32 0
  %2047 = bitcast %union.Value* %2046 to i64*
  store i64 %2044, i64* %2047, align 8
  %2048 = load %struct.lua_TValue*, %struct.lua_TValue** %115, align 8
  %2049 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2048, i32 0, i32 1
  store i32 19, i32* %2049, align 8
  br label %2101

; <label>:2050:                                   ; preds = %2026, %2020
  %2051 = load %struct.lua_TValue*, %struct.lua_TValue** %109, align 8
  %2052 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2051, i32 0, i32 1
  %2053 = load i32, i32* %2052, align 8
  %2054 = icmp eq i32 %2053, 3
  br i1 %2054, label %2055, label %2060

; <label>:2055:                                   ; preds = %2050
  %2056 = load %struct.lua_TValue*, %struct.lua_TValue** %109, align 8
  %2057 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2056, i32 0, i32 0
  %2058 = bitcast %union.Value* %2057 to double*
  %2059 = load double, double* %2058, align 8
  store double %2059, double* %111, align 8
  br i1 true, label %2064, label %2090

; <label>:2060:                                   ; preds = %2050
  %2061 = load %struct.lua_TValue*, %struct.lua_TValue** %109, align 8
  %2062 = call i32 @luaV_tonumber_(%struct.lua_TValue* %2061, double* %111)
  %2063 = icmp ne i32 %2062, 0
  br i1 %2063, label %2064, label %2090

; <label>:2064:                                   ; preds = %2060, %2055
  %2065 = load %struct.lua_TValue*, %struct.lua_TValue** %110, align 8
  %2066 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2065, i32 0, i32 1
  %2067 = load i32, i32* %2066, align 8
  %2068 = icmp eq i32 %2067, 3
  br i1 %2068, label %2069, label %2074

; <label>:2069:                                   ; preds = %2064
  %2070 = load %struct.lua_TValue*, %struct.lua_TValue** %110, align 8
  %2071 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2070, i32 0, i32 0
  %2072 = bitcast %union.Value* %2071 to double*
  %2073 = load double, double* %2072, align 8
  store double %2073, double* %112, align 8
  br i1 true, label %2078, label %2090

; <label>:2074:                                   ; preds = %2064
  %2075 = load %struct.lua_TValue*, %struct.lua_TValue** %110, align 8
  %2076 = call i32 @luaV_tonumber_(%struct.lua_TValue* %2075, double* %112)
  %2077 = icmp ne i32 %2076, 0
  br i1 %2077, label %2078, label %2090

; <label>:2078:                                   ; preds = %2074, %2069
  %2079 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %2079, %struct.lua_TValue** %116, align 8
  %2080 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2081 = load double, double* %111, align 8
  %2082 = load double, double* %112, align 8
  %2083 = fdiv double %2081, %2082
  %2084 = call double @llvm.floor.f64(double %2083)
  %2085 = load %struct.lua_TValue*, %struct.lua_TValue** %116, align 8
  %2086 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2085, i32 0, i32 0
  %2087 = bitcast %union.Value* %2086 to double*
  store double %2084, double* %2087, align 8
  %2088 = load %struct.lua_TValue*, %struct.lua_TValue** %116, align 8
  %2089 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2088, i32 0, i32 1
  store i32 3, i32* %2089, align 8
  br label %2100

; <label>:2090:                                   ; preds = %2074, %2069, %2060, %2055
  %2091 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2092 = load %struct.lua_TValue*, %struct.lua_TValue** %109, align 8
  %2093 = load %struct.lua_TValue*, %struct.lua_TValue** %110, align 8
  %2094 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaT_trybinTM(%struct.lua_State* %2091, %struct.lua_TValue* %2092, %struct.lua_TValue* %2093, %struct.lua_TValue* %2094, i32 12)
  %2095 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2096 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2095, i32 0, i32 4
  %2097 = bitcast %union.anon* %2096 to %struct.anon*
  %2098 = getelementptr inbounds %struct.anon, %struct.anon* %2097, i32 0, i32 0
  %2099 = load %struct.lua_TValue*, %struct.lua_TValue** %2098, align 8
  store %struct.lua_TValue* %2099, %struct.lua_TValue** %6, align 8
  br label %2100

; <label>:2100:                                   ; preds = %2090, %2078
  br label %2101

; <label>:2101:                                   ; preds = %2100, %2031
  br label %3779

; <label>:2102:                                   ; preds = %249
  %2103 = load i32, i32* %7, align 4
  %2104 = lshr i32 %2103, 23
  %2105 = and i32 %2104, 511
  %2106 = and i32 %2105, 256
  %2107 = icmp ne i32 %2106, 0
  br i1 %2107, label %2108, label %2116

; <label>:2108:                                   ; preds = %2102
  %2109 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %2110 = load i32, i32* %7, align 4
  %2111 = lshr i32 %2110, 23
  %2112 = and i32 %2111, 511
  %2113 = and i32 %2112, -257
  %2114 = sext i32 %2113 to i64
  %2115 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2109, i64 %2114
  br label %2123

; <label>:2116:                                   ; preds = %2102
  %2117 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %2118 = load i32, i32* %7, align 4
  %2119 = lshr i32 %2118, 23
  %2120 = and i32 %2119, 511
  %2121 = sext i32 %2120 to i64
  %2122 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2117, i64 %2121
  br label %2123

; <label>:2123:                                   ; preds = %2116, %2108
  %2124 = phi %struct.lua_TValue* [ %2115, %2108 ], [ %2122, %2116 ]
  store %struct.lua_TValue* %2124, %struct.lua_TValue** %117, align 8
  %2125 = load i32, i32* %7, align 4
  %2126 = lshr i32 %2125, 14
  %2127 = and i32 %2126, 511
  %2128 = and i32 %2127, 256
  %2129 = icmp ne i32 %2128, 0
  br i1 %2129, label %2130, label %2138

; <label>:2130:                                   ; preds = %2123
  %2131 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %2132 = load i32, i32* %7, align 4
  %2133 = lshr i32 %2132, 14
  %2134 = and i32 %2133, 511
  %2135 = and i32 %2134, -257
  %2136 = sext i32 %2135 to i64
  %2137 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2131, i64 %2136
  br label %2145

; <label>:2138:                                   ; preds = %2123
  %2139 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %2140 = load i32, i32* %7, align 4
  %2141 = lshr i32 %2140, 14
  %2142 = and i32 %2141, 511
  %2143 = sext i32 %2142 to i64
  %2144 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2139, i64 %2143
  br label %2145

; <label>:2145:                                   ; preds = %2138, %2130
  %2146 = phi %struct.lua_TValue* [ %2137, %2130 ], [ %2144, %2138 ]
  store %struct.lua_TValue* %2146, %struct.lua_TValue** %118, align 8
  %2147 = load %struct.lua_TValue*, %struct.lua_TValue** %117, align 8
  %2148 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2147, i32 0, i32 1
  %2149 = load i32, i32* %2148, align 8
  %2150 = icmp eq i32 %2149, 3
  br i1 %2150, label %2151, label %2156

; <label>:2151:                                   ; preds = %2145
  %2152 = load %struct.lua_TValue*, %struct.lua_TValue** %117, align 8
  %2153 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2152, i32 0, i32 0
  %2154 = bitcast %union.Value* %2153 to double*
  %2155 = load double, double* %2154, align 8
  store double %2155, double* %119, align 8
  br i1 true, label %2160, label %2185

; <label>:2156:                                   ; preds = %2145
  %2157 = load %struct.lua_TValue*, %struct.lua_TValue** %117, align 8
  %2158 = call i32 @luaV_tonumber_(%struct.lua_TValue* %2157, double* %119)
  %2159 = icmp ne i32 %2158, 0
  br i1 %2159, label %2160, label %2185

; <label>:2160:                                   ; preds = %2156, %2151
  %2161 = load %struct.lua_TValue*, %struct.lua_TValue** %118, align 8
  %2162 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2161, i32 0, i32 1
  %2163 = load i32, i32* %2162, align 8
  %2164 = icmp eq i32 %2163, 3
  br i1 %2164, label %2165, label %2170

; <label>:2165:                                   ; preds = %2160
  %2166 = load %struct.lua_TValue*, %struct.lua_TValue** %118, align 8
  %2167 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2166, i32 0, i32 0
  %2168 = bitcast %union.Value* %2167 to double*
  %2169 = load double, double* %2168, align 8
  store double %2169, double* %120, align 8
  br i1 true, label %2174, label %2185

; <label>:2170:                                   ; preds = %2160
  %2171 = load %struct.lua_TValue*, %struct.lua_TValue** %118, align 8
  %2172 = call i32 @luaV_tonumber_(%struct.lua_TValue* %2171, double* %120)
  %2173 = icmp ne i32 %2172, 0
  br i1 %2173, label %2174, label %2185

; <label>:2174:                                   ; preds = %2170, %2165
  %2175 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %2175, %struct.lua_TValue** %121, align 8
  %2176 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2177 = load double, double* %119, align 8
  %2178 = load double, double* %120, align 8
  %2179 = call double @pow(double %2177, double %2178) #9
  %2180 = load %struct.lua_TValue*, %struct.lua_TValue** %121, align 8
  %2181 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2180, i32 0, i32 0
  %2182 = bitcast %union.Value* %2181 to double*
  store double %2179, double* %2182, align 8
  %2183 = load %struct.lua_TValue*, %struct.lua_TValue** %121, align 8
  %2184 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2183, i32 0, i32 1
  store i32 3, i32* %2184, align 8
  br label %2195

; <label>:2185:                                   ; preds = %2170, %2165, %2156, %2151
  %2186 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2187 = load %struct.lua_TValue*, %struct.lua_TValue** %117, align 8
  %2188 = load %struct.lua_TValue*, %struct.lua_TValue** %118, align 8
  %2189 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaT_trybinTM(%struct.lua_State* %2186, %struct.lua_TValue* %2187, %struct.lua_TValue* %2188, %struct.lua_TValue* %2189, i32 10)
  %2190 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2191 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2190, i32 0, i32 4
  %2192 = bitcast %union.anon* %2191 to %struct.anon*
  %2193 = getelementptr inbounds %struct.anon, %struct.anon* %2192, i32 0, i32 0
  %2194 = load %struct.lua_TValue*, %struct.lua_TValue** %2193, align 8
  store %struct.lua_TValue* %2194, %struct.lua_TValue** %6, align 8
  br label %2195

; <label>:2195:                                   ; preds = %2185, %2174
  br label %3779

; <label>:2196:                                   ; preds = %249
  %2197 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %2198 = load i32, i32* %7, align 4
  %2199 = lshr i32 %2198, 23
  %2200 = and i32 %2199, 511
  %2201 = sext i32 %2200 to i64
  %2202 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2197, i64 %2201
  store %struct.lua_TValue* %2202, %struct.lua_TValue** %122, align 8
  %2203 = load %struct.lua_TValue*, %struct.lua_TValue** %122, align 8
  %2204 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2203, i32 0, i32 1
  %2205 = load i32, i32* %2204, align 8
  %2206 = icmp eq i32 %2205, 19
  br i1 %2206, label %2207, label %2220

; <label>:2207:                                   ; preds = %2196
  %2208 = load %struct.lua_TValue*, %struct.lua_TValue** %122, align 8
  %2209 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2208, i32 0, i32 0
  %2210 = bitcast %union.Value* %2209 to i64*
  %2211 = load i64, i64* %2210, align 8
  store i64 %2211, i64* %124, align 8
  %2212 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %2212, %struct.lua_TValue** %125, align 8
  %2213 = load i64, i64* %124, align 8
  %2214 = sub i64 0, %2213
  %2215 = load %struct.lua_TValue*, %struct.lua_TValue** %125, align 8
  %2216 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2215, i32 0, i32 0
  %2217 = bitcast %union.Value* %2216 to i64*
  store i64 %2214, i64* %2217, align 8
  %2218 = load %struct.lua_TValue*, %struct.lua_TValue** %125, align 8
  %2219 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2218, i32 0, i32 1
  store i32 19, i32* %2219, align 8
  br label %2254

; <label>:2220:                                   ; preds = %2196
  %2221 = load %struct.lua_TValue*, %struct.lua_TValue** %122, align 8
  %2222 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2221, i32 0, i32 1
  %2223 = load i32, i32* %2222, align 8
  %2224 = icmp eq i32 %2223, 3
  br i1 %2224, label %2225, label %2230

; <label>:2225:                                   ; preds = %2220
  %2226 = load %struct.lua_TValue*, %struct.lua_TValue** %122, align 8
  %2227 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2226, i32 0, i32 0
  %2228 = bitcast %union.Value* %2227 to double*
  %2229 = load double, double* %2228, align 8
  store double %2229, double* %123, align 8
  br i1 true, label %2234, label %2243

; <label>:2230:                                   ; preds = %2220
  %2231 = load %struct.lua_TValue*, %struct.lua_TValue** %122, align 8
  %2232 = call i32 @luaV_tonumber_(%struct.lua_TValue* %2231, double* %123)
  %2233 = icmp ne i32 %2232, 0
  br i1 %2233, label %2234, label %2243

; <label>:2234:                                   ; preds = %2230, %2225
  %2235 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %2235, %struct.lua_TValue** %126, align 8
  %2236 = load double, double* %123, align 8
  %2237 = fsub double -0.000000e+00, %2236
  %2238 = load %struct.lua_TValue*, %struct.lua_TValue** %126, align 8
  %2239 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2238, i32 0, i32 0
  %2240 = bitcast %union.Value* %2239 to double*
  store double %2237, double* %2240, align 8
  %2241 = load %struct.lua_TValue*, %struct.lua_TValue** %126, align 8
  %2242 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2241, i32 0, i32 1
  store i32 3, i32* %2242, align 8
  br label %2253

; <label>:2243:                                   ; preds = %2230, %2225
  %2244 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2245 = load %struct.lua_TValue*, %struct.lua_TValue** %122, align 8
  %2246 = load %struct.lua_TValue*, %struct.lua_TValue** %122, align 8
  %2247 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaT_trybinTM(%struct.lua_State* %2244, %struct.lua_TValue* %2245, %struct.lua_TValue* %2246, %struct.lua_TValue* %2247, i32 18)
  %2248 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2249 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2248, i32 0, i32 4
  %2250 = bitcast %union.anon* %2249 to %struct.anon*
  %2251 = getelementptr inbounds %struct.anon, %struct.anon* %2250, i32 0, i32 0
  %2252 = load %struct.lua_TValue*, %struct.lua_TValue** %2251, align 8
  store %struct.lua_TValue* %2252, %struct.lua_TValue** %6, align 8
  br label %2253

; <label>:2253:                                   ; preds = %2243, %2234
  br label %2254

; <label>:2254:                                   ; preds = %2253, %2207
  br label %3779

; <label>:2255:                                   ; preds = %249
  %2256 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %2257 = load i32, i32* %7, align 4
  %2258 = lshr i32 %2257, 23
  %2259 = and i32 %2258, 511
  %2260 = sext i32 %2259 to i64
  %2261 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2256, i64 %2260
  store %struct.lua_TValue* %2261, %struct.lua_TValue** %127, align 8
  %2262 = load %struct.lua_TValue*, %struct.lua_TValue** %127, align 8
  %2263 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2262, i32 0, i32 1
  %2264 = load i32, i32* %2263, align 8
  %2265 = icmp eq i32 %2264, 19
  br i1 %2265, label %2266, label %2271

; <label>:2266:                                   ; preds = %2255
  %2267 = load %struct.lua_TValue*, %struct.lua_TValue** %127, align 8
  %2268 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2267, i32 0, i32 0
  %2269 = bitcast %union.Value* %2268 to i64*
  %2270 = load i64, i64* %2269, align 8
  store i64 %2270, i64* %128, align 8
  br i1 true, label %2275, label %2284

; <label>:2271:                                   ; preds = %2255
  %2272 = load %struct.lua_TValue*, %struct.lua_TValue** %127, align 8
  %2273 = call i32 @luaV_tointeger(%struct.lua_TValue* %2272, i64* %128, i32 0)
  %2274 = icmp ne i32 %2273, 0
  br i1 %2274, label %2275, label %2284

; <label>:2275:                                   ; preds = %2271, %2266
  %2276 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %2276, %struct.lua_TValue** %129, align 8
  %2277 = load i64, i64* %128, align 8
  %2278 = xor i64 -1, %2277
  %2279 = load %struct.lua_TValue*, %struct.lua_TValue** %129, align 8
  %2280 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2279, i32 0, i32 0
  %2281 = bitcast %union.Value* %2280 to i64*
  store i64 %2278, i64* %2281, align 8
  %2282 = load %struct.lua_TValue*, %struct.lua_TValue** %129, align 8
  %2283 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2282, i32 0, i32 1
  store i32 19, i32* %2283, align 8
  br label %2294

; <label>:2284:                                   ; preds = %2271, %2266
  %2285 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2286 = load %struct.lua_TValue*, %struct.lua_TValue** %127, align 8
  %2287 = load %struct.lua_TValue*, %struct.lua_TValue** %127, align 8
  %2288 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @luaT_trybinTM(%struct.lua_State* %2285, %struct.lua_TValue* %2286, %struct.lua_TValue* %2287, %struct.lua_TValue* %2288, i32 19)
  %2289 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2290 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2289, i32 0, i32 4
  %2291 = bitcast %union.anon* %2290 to %struct.anon*
  %2292 = getelementptr inbounds %struct.anon, %struct.anon* %2291, i32 0, i32 0
  %2293 = load %struct.lua_TValue*, %struct.lua_TValue** %2292, align 8
  store %struct.lua_TValue* %2293, %struct.lua_TValue** %6, align 8
  br label %2294

; <label>:2294:                                   ; preds = %2284, %2275
  br label %3779

; <label>:2295:                                   ; preds = %249
  %2296 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %2297 = load i32, i32* %7, align 4
  %2298 = lshr i32 %2297, 23
  %2299 = and i32 %2298, 511
  %2300 = sext i32 %2299 to i64
  %2301 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2296, i64 %2300
  store %struct.lua_TValue* %2301, %struct.lua_TValue** %130, align 8
  %2302 = load %struct.lua_TValue*, %struct.lua_TValue** %130, align 8
  %2303 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2302, i32 0, i32 1
  %2304 = load i32, i32* %2303, align 8
  %2305 = icmp eq i32 %2304, 0
  br i1 %2305, label %2319, label %2306

; <label>:2306:                                   ; preds = %2295
  %2307 = load %struct.lua_TValue*, %struct.lua_TValue** %130, align 8
  %2308 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2307, i32 0, i32 1
  %2309 = load i32, i32* %2308, align 8
  %2310 = icmp eq i32 %2309, 1
  br i1 %2310, label %2311, label %2317

; <label>:2311:                                   ; preds = %2306
  %2312 = load %struct.lua_TValue*, %struct.lua_TValue** %130, align 8
  %2313 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2312, i32 0, i32 0
  %2314 = bitcast %union.Value* %2313 to i32*
  %2315 = load i32, i32* %2314, align 8
  %2316 = icmp eq i32 %2315, 0
  br label %2317

; <label>:2317:                                   ; preds = %2311, %2306
  %2318 = phi i1 [ false, %2306 ], [ %2316, %2311 ]
  br label %2319

; <label>:2319:                                   ; preds = %2317, %2295
  %2320 = phi i1 [ true, %2295 ], [ %2318, %2317 ]
  %2321 = zext i1 %2320 to i32
  store i32 %2321, i32* %131, align 4
  %2322 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %2322, %struct.lua_TValue** %132, align 8
  %2323 = load i32, i32* %131, align 4
  %2324 = load %struct.lua_TValue*, %struct.lua_TValue** %132, align 8
  %2325 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2324, i32 0, i32 0
  %2326 = bitcast %union.Value* %2325 to i32*
  store i32 %2323, i32* %2326, align 8
  %2327 = load %struct.lua_TValue*, %struct.lua_TValue** %132, align 8
  %2328 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2327, i32 0, i32 1
  store i32 1, i32* %2328, align 8
  br label %3779

; <label>:2329:                                   ; preds = %249
  %2330 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2331 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %2332 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %2333 = load i32, i32* %7, align 4
  %2334 = lshr i32 %2333, 23
  %2335 = and i32 %2334, 511
  %2336 = sext i32 %2335 to i64
  %2337 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2332, i64 %2336
  call void @luaV_objlen(%struct.lua_State* %2330, %struct.lua_TValue* %2331, %struct.lua_TValue* %2337)
  %2338 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2339 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2338, i32 0, i32 4
  %2340 = bitcast %union.anon* %2339 to %struct.anon*
  %2341 = getelementptr inbounds %struct.anon, %struct.anon* %2340, i32 0, i32 0
  %2342 = load %struct.lua_TValue*, %struct.lua_TValue** %2341, align 8
  store %struct.lua_TValue* %2342, %struct.lua_TValue** %6, align 8
  br label %3779

; <label>:2343:                                   ; preds = %249
  %2344 = load i32, i32* %7, align 4
  %2345 = lshr i32 %2344, 23
  %2346 = and i32 %2345, 511
  store i32 %2346, i32* %133, align 4
  %2347 = load i32, i32* %7, align 4
  %2348 = lshr i32 %2347, 14
  %2349 = and i32 %2348, 511
  store i32 %2349, i32* %134, align 4
  %2350 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %2351 = load i32, i32* %134, align 4
  %2352 = sext i32 %2351 to i64
  %2353 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2350, i64 %2352
  %2354 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2353, i64 1
  %2355 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2356 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2355, i32 0, i32 5
  store %struct.lua_TValue* %2354, %struct.lua_TValue** %2356, align 8
  %2357 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2358 = load i32, i32* %134, align 4
  %2359 = load i32, i32* %133, align 4
  %2360 = sub nsw i32 %2358, %2359
  %2361 = add nsw i32 %2360, 1
  call void @luaV_concat(%struct.lua_State* %2357, i32 %2361)
  %2362 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2363 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2362, i32 0, i32 4
  %2364 = bitcast %union.anon* %2363 to %struct.anon*
  %2365 = getelementptr inbounds %struct.anon, %struct.anon* %2364, i32 0, i32 0
  %2366 = load %struct.lua_TValue*, %struct.lua_TValue** %2365, align 8
  store %struct.lua_TValue* %2366, %struct.lua_TValue** %6, align 8
  %2367 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %2368 = load i32, i32* %7, align 4
  %2369 = lshr i32 %2368, 6
  %2370 = and i32 %2369, 255
  %2371 = sext i32 %2370 to i64
  %2372 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2367, i64 %2371
  store %struct.lua_TValue* %2372, %struct.lua_TValue** %8, align 8
  %2373 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %2374 = load i32, i32* %133, align 4
  %2375 = sext i32 %2374 to i64
  %2376 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2373, i64 %2375
  store %struct.lua_TValue* %2376, %struct.lua_TValue** %135, align 8
  %2377 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %2377, %struct.lua_TValue** %136, align 8
  %2378 = load %struct.lua_TValue*, %struct.lua_TValue** %136, align 8
  %2379 = load %struct.lua_TValue*, %struct.lua_TValue** %135, align 8
  %2380 = bitcast %struct.lua_TValue* %2378 to i8*
  %2381 = bitcast %struct.lua_TValue* %2379 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2380, i8* %2381, i64 16, i32 8, i1 false)
  %2382 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2383 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2384 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2383, i32 0, i32 6
  %2385 = load %struct.global_State*, %struct.global_State** %2384, align 8
  %2386 = getelementptr inbounds %struct.global_State, %struct.global_State* %2385, i32 0, i32 3
  %2387 = load i64, i64* %2386, align 8
  %2388 = icmp sgt i64 %2387, 0
  br i1 %2388, label %2389, label %2413

; <label>:2389:                                   ; preds = %2343
  %2390 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %2391 = load %struct.lua_TValue*, %struct.lua_TValue** %135, align 8
  %2392 = icmp uge %struct.lua_TValue* %2390, %2391
  br i1 %2392, label %2393, label %2396

; <label>:2393:                                   ; preds = %2389
  %2394 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %2395 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2394, i64 1
  br label %2398

; <label>:2396:                                   ; preds = %2389
  %2397 = load %struct.lua_TValue*, %struct.lua_TValue** %135, align 8
  br label %2398

; <label>:2398:                                   ; preds = %2396, %2393
  %2399 = phi %struct.lua_TValue* [ %2395, %2393 ], [ %2397, %2396 ]
  %2400 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2401 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2400, i32 0, i32 5
  store %struct.lua_TValue* %2399, %struct.lua_TValue** %2401, align 8
  %2402 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaC_step(%struct.lua_State* %2402)
  %2403 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2404 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2403, i32 0, i32 1
  %2405 = load %struct.lua_TValue*, %struct.lua_TValue** %2404, align 8
  %2406 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2407 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2406, i32 0, i32 5
  store %struct.lua_TValue* %2405, %struct.lua_TValue** %2407, align 8
  %2408 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2409 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2408, i32 0, i32 4
  %2410 = bitcast %union.anon* %2409 to %struct.anon*
  %2411 = getelementptr inbounds %struct.anon, %struct.anon* %2410, i32 0, i32 0
  %2412 = load %struct.lua_TValue*, %struct.lua_TValue** %2411, align 8
  store %struct.lua_TValue* %2412, %struct.lua_TValue** %6, align 8
  br label %2413

; <label>:2413:                                   ; preds = %2398, %2343
  %2414 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2415 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2414, i32 0, i32 1
  %2416 = load %struct.lua_TValue*, %struct.lua_TValue** %2415, align 8
  %2417 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2418 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2417, i32 0, i32 5
  store %struct.lua_TValue* %2416, %struct.lua_TValue** %2418, align 8
  br label %3779

; <label>:2419:                                   ; preds = %249
  %2420 = load i32, i32* %7, align 4
  %2421 = lshr i32 %2420, 6
  %2422 = and i32 %2421, 255
  store i32 %2422, i32* %137, align 4
  %2423 = load i32, i32* %137, align 4
  %2424 = icmp ne i32 %2423, 0
  br i1 %2424, label %2425, label %2436

; <label>:2425:                                   ; preds = %2419
  %2426 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2427 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2428 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2427, i32 0, i32 4
  %2429 = bitcast %union.anon* %2428 to %struct.anon*
  %2430 = getelementptr inbounds %struct.anon, %struct.anon* %2429, i32 0, i32 0
  %2431 = load %struct.lua_TValue*, %struct.lua_TValue** %2430, align 8
  %2432 = load i32, i32* %137, align 4
  %2433 = sext i32 %2432 to i64
  %2434 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2431, i64 %2433
  %2435 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2434, i64 -1
  call void @luaF_close(%struct.lua_State* %2426, %struct.lua_TValue* %2435)
  br label %2436

; <label>:2436:                                   ; preds = %2425, %2419
  %2437 = load i32, i32* %7, align 4
  %2438 = lshr i32 %2437, 14
  %2439 = and i32 %2438, 262143
  %2440 = sub nsw i32 %2439, 131071
  %2441 = add nsw i32 %2440, 0
  %2442 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2443 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2442, i32 0, i32 4
  %2444 = bitcast %union.anon* %2443 to %struct.anon*
  %2445 = getelementptr inbounds %struct.anon, %struct.anon* %2444, i32 0, i32 1
  %2446 = load i32*, i32** %2445, align 8
  %2447 = sext i32 %2441 to i64
  %2448 = getelementptr inbounds i32, i32* %2446, i64 %2447
  store i32* %2448, i32** %2445, align 8
  br label %3779

; <label>:2449:                                   ; preds = %249
  %2450 = load i32, i32* %7, align 4
  %2451 = lshr i32 %2450, 23
  %2452 = and i32 %2451, 511
  %2453 = and i32 %2452, 256
  %2454 = icmp ne i32 %2453, 0
  br i1 %2454, label %2455, label %2463

; <label>:2455:                                   ; preds = %2449
  %2456 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %2457 = load i32, i32* %7, align 4
  %2458 = lshr i32 %2457, 23
  %2459 = and i32 %2458, 511
  %2460 = and i32 %2459, -257
  %2461 = sext i32 %2460 to i64
  %2462 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2456, i64 %2461
  br label %2470

; <label>:2463:                                   ; preds = %2449
  %2464 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %2465 = load i32, i32* %7, align 4
  %2466 = lshr i32 %2465, 23
  %2467 = and i32 %2466, 511
  %2468 = sext i32 %2467 to i64
  %2469 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2464, i64 %2468
  br label %2470

; <label>:2470:                                   ; preds = %2463, %2455
  %2471 = phi %struct.lua_TValue* [ %2462, %2455 ], [ %2469, %2463 ]
  store %struct.lua_TValue* %2471, %struct.lua_TValue** %138, align 8
  %2472 = load i32, i32* %7, align 4
  %2473 = lshr i32 %2472, 14
  %2474 = and i32 %2473, 511
  %2475 = and i32 %2474, 256
  %2476 = icmp ne i32 %2475, 0
  br i1 %2476, label %2477, label %2485

; <label>:2477:                                   ; preds = %2470
  %2478 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %2479 = load i32, i32* %7, align 4
  %2480 = lshr i32 %2479, 14
  %2481 = and i32 %2480, 511
  %2482 = and i32 %2481, -257
  %2483 = sext i32 %2482 to i64
  %2484 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2478, i64 %2483
  br label %2492

; <label>:2485:                                   ; preds = %2470
  %2486 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %2487 = load i32, i32* %7, align 4
  %2488 = lshr i32 %2487, 14
  %2489 = and i32 %2488, 511
  %2490 = sext i32 %2489 to i64
  %2491 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2486, i64 %2490
  br label %2492

; <label>:2492:                                   ; preds = %2485, %2477
  %2493 = phi %struct.lua_TValue* [ %2484, %2477 ], [ %2491, %2485 ]
  store %struct.lua_TValue* %2493, %struct.lua_TValue** %139, align 8
  %2494 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2495 = load %struct.lua_TValue*, %struct.lua_TValue** %138, align 8
  %2496 = load %struct.lua_TValue*, %struct.lua_TValue** %139, align 8
  %2497 = call i32 @luaV_equalobj(%struct.lua_State* %2494, %struct.lua_TValue* %2495, %struct.lua_TValue* %2496)
  %2498 = load i32, i32* %7, align 4
  %2499 = lshr i32 %2498, 6
  %2500 = and i32 %2499, 255
  %2501 = icmp ne i32 %2497, %2500
  br i1 %2501, label %2502, label %2509

; <label>:2502:                                   ; preds = %2492
  %2503 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2504 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2503, i32 0, i32 4
  %2505 = bitcast %union.anon* %2504 to %struct.anon*
  %2506 = getelementptr inbounds %struct.anon, %struct.anon* %2505, i32 0, i32 1
  %2507 = load i32*, i32** %2506, align 8
  %2508 = getelementptr inbounds i32, i32* %2507, i32 1
  store i32* %2508, i32** %2506, align 8
  br label %2545

; <label>:2509:                                   ; preds = %2492
  %2510 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2511 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2510, i32 0, i32 4
  %2512 = bitcast %union.anon* %2511 to %struct.anon*
  %2513 = getelementptr inbounds %struct.anon, %struct.anon* %2512, i32 0, i32 1
  %2514 = load i32*, i32** %2513, align 8
  %2515 = load i32, i32* %2514, align 4
  store i32 %2515, i32* %7, align 4
  %2516 = load i32, i32* %7, align 4
  %2517 = lshr i32 %2516, 6
  %2518 = and i32 %2517, 255
  store i32 %2518, i32* %140, align 4
  %2519 = load i32, i32* %140, align 4
  %2520 = icmp ne i32 %2519, 0
  br i1 %2520, label %2521, label %2532

; <label>:2521:                                   ; preds = %2509
  %2522 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2523 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2524 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2523, i32 0, i32 4
  %2525 = bitcast %union.anon* %2524 to %struct.anon*
  %2526 = getelementptr inbounds %struct.anon, %struct.anon* %2525, i32 0, i32 0
  %2527 = load %struct.lua_TValue*, %struct.lua_TValue** %2526, align 8
  %2528 = load i32, i32* %140, align 4
  %2529 = sext i32 %2528 to i64
  %2530 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2527, i64 %2529
  %2531 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2530, i64 -1
  call void @luaF_close(%struct.lua_State* %2522, %struct.lua_TValue* %2531)
  br label %2532

; <label>:2532:                                   ; preds = %2521, %2509
  %2533 = load i32, i32* %7, align 4
  %2534 = lshr i32 %2533, 14
  %2535 = and i32 %2534, 262143
  %2536 = sub nsw i32 %2535, 131071
  %2537 = add nsw i32 %2536, 1
  %2538 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2539 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2538, i32 0, i32 4
  %2540 = bitcast %union.anon* %2539 to %struct.anon*
  %2541 = getelementptr inbounds %struct.anon, %struct.anon* %2540, i32 0, i32 1
  %2542 = load i32*, i32** %2541, align 8
  %2543 = sext i32 %2537 to i64
  %2544 = getelementptr inbounds i32, i32* %2542, i64 %2543
  store i32* %2544, i32** %2541, align 8
  br label %2545

; <label>:2545:                                   ; preds = %2532, %2502
  %2546 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2547 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2546, i32 0, i32 4
  %2548 = bitcast %union.anon* %2547 to %struct.anon*
  %2549 = getelementptr inbounds %struct.anon, %struct.anon* %2548, i32 0, i32 0
  %2550 = load %struct.lua_TValue*, %struct.lua_TValue** %2549, align 8
  store %struct.lua_TValue* %2550, %struct.lua_TValue** %6, align 8
  br label %3779

; <label>:2551:                                   ; preds = %249
  %2552 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2553 = load i32, i32* %7, align 4
  %2554 = lshr i32 %2553, 23
  %2555 = and i32 %2554, 511
  %2556 = and i32 %2555, 256
  %2557 = icmp ne i32 %2556, 0
  br i1 %2557, label %2558, label %2566

; <label>:2558:                                   ; preds = %2551
  %2559 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %2560 = load i32, i32* %7, align 4
  %2561 = lshr i32 %2560, 23
  %2562 = and i32 %2561, 511
  %2563 = and i32 %2562, -257
  %2564 = sext i32 %2563 to i64
  %2565 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2559, i64 %2564
  br label %2573

; <label>:2566:                                   ; preds = %2551
  %2567 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %2568 = load i32, i32* %7, align 4
  %2569 = lshr i32 %2568, 23
  %2570 = and i32 %2569, 511
  %2571 = sext i32 %2570 to i64
  %2572 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2567, i64 %2571
  br label %2573

; <label>:2573:                                   ; preds = %2566, %2558
  %2574 = phi %struct.lua_TValue* [ %2565, %2558 ], [ %2572, %2566 ]
  %2575 = load i32, i32* %7, align 4
  %2576 = lshr i32 %2575, 14
  %2577 = and i32 %2576, 511
  %2578 = and i32 %2577, 256
  %2579 = icmp ne i32 %2578, 0
  br i1 %2579, label %2580, label %2588

; <label>:2580:                                   ; preds = %2573
  %2581 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %2582 = load i32, i32* %7, align 4
  %2583 = lshr i32 %2582, 14
  %2584 = and i32 %2583, 511
  %2585 = and i32 %2584, -257
  %2586 = sext i32 %2585 to i64
  %2587 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2581, i64 %2586
  br label %2595

; <label>:2588:                                   ; preds = %2573
  %2589 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %2590 = load i32, i32* %7, align 4
  %2591 = lshr i32 %2590, 14
  %2592 = and i32 %2591, 511
  %2593 = sext i32 %2592 to i64
  %2594 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2589, i64 %2593
  br label %2595

; <label>:2595:                                   ; preds = %2588, %2580
  %2596 = phi %struct.lua_TValue* [ %2587, %2580 ], [ %2594, %2588 ]
  %2597 = call i32 @luaV_lessthan(%struct.lua_State* %2552, %struct.lua_TValue* %2574, %struct.lua_TValue* %2596)
  %2598 = load i32, i32* %7, align 4
  %2599 = lshr i32 %2598, 6
  %2600 = and i32 %2599, 255
  %2601 = icmp ne i32 %2597, %2600
  br i1 %2601, label %2602, label %2609

; <label>:2602:                                   ; preds = %2595
  %2603 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2604 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2603, i32 0, i32 4
  %2605 = bitcast %union.anon* %2604 to %struct.anon*
  %2606 = getelementptr inbounds %struct.anon, %struct.anon* %2605, i32 0, i32 1
  %2607 = load i32*, i32** %2606, align 8
  %2608 = getelementptr inbounds i32, i32* %2607, i32 1
  store i32* %2608, i32** %2606, align 8
  br label %2645

; <label>:2609:                                   ; preds = %2595
  %2610 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2611 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2610, i32 0, i32 4
  %2612 = bitcast %union.anon* %2611 to %struct.anon*
  %2613 = getelementptr inbounds %struct.anon, %struct.anon* %2612, i32 0, i32 1
  %2614 = load i32*, i32** %2613, align 8
  %2615 = load i32, i32* %2614, align 4
  store i32 %2615, i32* %7, align 4
  %2616 = load i32, i32* %7, align 4
  %2617 = lshr i32 %2616, 6
  %2618 = and i32 %2617, 255
  store i32 %2618, i32* %141, align 4
  %2619 = load i32, i32* %141, align 4
  %2620 = icmp ne i32 %2619, 0
  br i1 %2620, label %2621, label %2632

; <label>:2621:                                   ; preds = %2609
  %2622 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2623 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2624 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2623, i32 0, i32 4
  %2625 = bitcast %union.anon* %2624 to %struct.anon*
  %2626 = getelementptr inbounds %struct.anon, %struct.anon* %2625, i32 0, i32 0
  %2627 = load %struct.lua_TValue*, %struct.lua_TValue** %2626, align 8
  %2628 = load i32, i32* %141, align 4
  %2629 = sext i32 %2628 to i64
  %2630 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2627, i64 %2629
  %2631 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2630, i64 -1
  call void @luaF_close(%struct.lua_State* %2622, %struct.lua_TValue* %2631)
  br label %2632

; <label>:2632:                                   ; preds = %2621, %2609
  %2633 = load i32, i32* %7, align 4
  %2634 = lshr i32 %2633, 14
  %2635 = and i32 %2634, 262143
  %2636 = sub nsw i32 %2635, 131071
  %2637 = add nsw i32 %2636, 1
  %2638 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2639 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2638, i32 0, i32 4
  %2640 = bitcast %union.anon* %2639 to %struct.anon*
  %2641 = getelementptr inbounds %struct.anon, %struct.anon* %2640, i32 0, i32 1
  %2642 = load i32*, i32** %2641, align 8
  %2643 = sext i32 %2637 to i64
  %2644 = getelementptr inbounds i32, i32* %2642, i64 %2643
  store i32* %2644, i32** %2641, align 8
  br label %2645

; <label>:2645:                                   ; preds = %2632, %2602
  %2646 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2647 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2646, i32 0, i32 4
  %2648 = bitcast %union.anon* %2647 to %struct.anon*
  %2649 = getelementptr inbounds %struct.anon, %struct.anon* %2648, i32 0, i32 0
  %2650 = load %struct.lua_TValue*, %struct.lua_TValue** %2649, align 8
  store %struct.lua_TValue* %2650, %struct.lua_TValue** %6, align 8
  br label %3779

; <label>:2651:                                   ; preds = %249
  %2652 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2653 = load i32, i32* %7, align 4
  %2654 = lshr i32 %2653, 23
  %2655 = and i32 %2654, 511
  %2656 = and i32 %2655, 256
  %2657 = icmp ne i32 %2656, 0
  br i1 %2657, label %2658, label %2666

; <label>:2658:                                   ; preds = %2651
  %2659 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %2660 = load i32, i32* %7, align 4
  %2661 = lshr i32 %2660, 23
  %2662 = and i32 %2661, 511
  %2663 = and i32 %2662, -257
  %2664 = sext i32 %2663 to i64
  %2665 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2659, i64 %2664
  br label %2673

; <label>:2666:                                   ; preds = %2651
  %2667 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %2668 = load i32, i32* %7, align 4
  %2669 = lshr i32 %2668, 23
  %2670 = and i32 %2669, 511
  %2671 = sext i32 %2670 to i64
  %2672 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2667, i64 %2671
  br label %2673

; <label>:2673:                                   ; preds = %2666, %2658
  %2674 = phi %struct.lua_TValue* [ %2665, %2658 ], [ %2672, %2666 ]
  %2675 = load i32, i32* %7, align 4
  %2676 = lshr i32 %2675, 14
  %2677 = and i32 %2676, 511
  %2678 = and i32 %2677, 256
  %2679 = icmp ne i32 %2678, 0
  br i1 %2679, label %2680, label %2688

; <label>:2680:                                   ; preds = %2673
  %2681 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %2682 = load i32, i32* %7, align 4
  %2683 = lshr i32 %2682, 14
  %2684 = and i32 %2683, 511
  %2685 = and i32 %2684, -257
  %2686 = sext i32 %2685 to i64
  %2687 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2681, i64 %2686
  br label %2695

; <label>:2688:                                   ; preds = %2673
  %2689 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %2690 = load i32, i32* %7, align 4
  %2691 = lshr i32 %2690, 14
  %2692 = and i32 %2691, 511
  %2693 = sext i32 %2692 to i64
  %2694 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2689, i64 %2693
  br label %2695

; <label>:2695:                                   ; preds = %2688, %2680
  %2696 = phi %struct.lua_TValue* [ %2687, %2680 ], [ %2694, %2688 ]
  %2697 = call i32 @luaV_lessequal(%struct.lua_State* %2652, %struct.lua_TValue* %2674, %struct.lua_TValue* %2696)
  %2698 = load i32, i32* %7, align 4
  %2699 = lshr i32 %2698, 6
  %2700 = and i32 %2699, 255
  %2701 = icmp ne i32 %2697, %2700
  br i1 %2701, label %2702, label %2709

; <label>:2702:                                   ; preds = %2695
  %2703 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2704 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2703, i32 0, i32 4
  %2705 = bitcast %union.anon* %2704 to %struct.anon*
  %2706 = getelementptr inbounds %struct.anon, %struct.anon* %2705, i32 0, i32 1
  %2707 = load i32*, i32** %2706, align 8
  %2708 = getelementptr inbounds i32, i32* %2707, i32 1
  store i32* %2708, i32** %2706, align 8
  br label %2745

; <label>:2709:                                   ; preds = %2695
  %2710 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2711 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2710, i32 0, i32 4
  %2712 = bitcast %union.anon* %2711 to %struct.anon*
  %2713 = getelementptr inbounds %struct.anon, %struct.anon* %2712, i32 0, i32 1
  %2714 = load i32*, i32** %2713, align 8
  %2715 = load i32, i32* %2714, align 4
  store i32 %2715, i32* %7, align 4
  %2716 = load i32, i32* %7, align 4
  %2717 = lshr i32 %2716, 6
  %2718 = and i32 %2717, 255
  store i32 %2718, i32* %142, align 4
  %2719 = load i32, i32* %142, align 4
  %2720 = icmp ne i32 %2719, 0
  br i1 %2720, label %2721, label %2732

; <label>:2721:                                   ; preds = %2709
  %2722 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2723 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2724 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2723, i32 0, i32 4
  %2725 = bitcast %union.anon* %2724 to %struct.anon*
  %2726 = getelementptr inbounds %struct.anon, %struct.anon* %2725, i32 0, i32 0
  %2727 = load %struct.lua_TValue*, %struct.lua_TValue** %2726, align 8
  %2728 = load i32, i32* %142, align 4
  %2729 = sext i32 %2728 to i64
  %2730 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2727, i64 %2729
  %2731 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2730, i64 -1
  call void @luaF_close(%struct.lua_State* %2722, %struct.lua_TValue* %2731)
  br label %2732

; <label>:2732:                                   ; preds = %2721, %2709
  %2733 = load i32, i32* %7, align 4
  %2734 = lshr i32 %2733, 14
  %2735 = and i32 %2734, 262143
  %2736 = sub nsw i32 %2735, 131071
  %2737 = add nsw i32 %2736, 1
  %2738 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2739 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2738, i32 0, i32 4
  %2740 = bitcast %union.anon* %2739 to %struct.anon*
  %2741 = getelementptr inbounds %struct.anon, %struct.anon* %2740, i32 0, i32 1
  %2742 = load i32*, i32** %2741, align 8
  %2743 = sext i32 %2737 to i64
  %2744 = getelementptr inbounds i32, i32* %2742, i64 %2743
  store i32* %2744, i32** %2741, align 8
  br label %2745

; <label>:2745:                                   ; preds = %2732, %2702
  %2746 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2747 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2746, i32 0, i32 4
  %2748 = bitcast %union.anon* %2747 to %struct.anon*
  %2749 = getelementptr inbounds %struct.anon, %struct.anon* %2748, i32 0, i32 0
  %2750 = load %struct.lua_TValue*, %struct.lua_TValue** %2749, align 8
  store %struct.lua_TValue* %2750, %struct.lua_TValue** %6, align 8
  br label %3779

; <label>:2751:                                   ; preds = %249
  %2752 = load i32, i32* %7, align 4
  %2753 = lshr i32 %2752, 14
  %2754 = and i32 %2753, 511
  %2755 = icmp ne i32 %2754, 0
  br i1 %2755, label %2756, label %2772

; <label>:2756:                                   ; preds = %2751
  %2757 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %2758 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2757, i32 0, i32 1
  %2759 = load i32, i32* %2758, align 8
  %2760 = icmp eq i32 %2759, 0
  br i1 %2760, label %2788, label %2761

; <label>:2761:                                   ; preds = %2756
  %2762 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %2763 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2762, i32 0, i32 1
  %2764 = load i32, i32* %2763, align 8
  %2765 = icmp eq i32 %2764, 1
  br i1 %2765, label %2766, label %2795

; <label>:2766:                                   ; preds = %2761
  %2767 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %2768 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2767, i32 0, i32 0
  %2769 = bitcast %union.Value* %2768 to i32*
  %2770 = load i32, i32* %2769, align 8
  %2771 = icmp eq i32 %2770, 0
  br i1 %2771, label %2788, label %2795

; <label>:2772:                                   ; preds = %2751
  %2773 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %2774 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2773, i32 0, i32 1
  %2775 = load i32, i32* %2774, align 8
  %2776 = icmp eq i32 %2775, 0
  br i1 %2776, label %2795, label %2777

; <label>:2777:                                   ; preds = %2772
  %2778 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %2779 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2778, i32 0, i32 1
  %2780 = load i32, i32* %2779, align 8
  %2781 = icmp eq i32 %2780, 1
  br i1 %2781, label %2782, label %2788

; <label>:2782:                                   ; preds = %2777
  %2783 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %2784 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2783, i32 0, i32 0
  %2785 = bitcast %union.Value* %2784 to i32*
  %2786 = load i32, i32* %2785, align 8
  %2787 = icmp eq i32 %2786, 0
  br i1 %2787, label %2795, label %2788

; <label>:2788:                                   ; preds = %2782, %2777, %2766, %2756
  %2789 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2790 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2789, i32 0, i32 4
  %2791 = bitcast %union.anon* %2790 to %struct.anon*
  %2792 = getelementptr inbounds %struct.anon, %struct.anon* %2791, i32 0, i32 1
  %2793 = load i32*, i32** %2792, align 8
  %2794 = getelementptr inbounds i32, i32* %2793, i32 1
  store i32* %2794, i32** %2792, align 8
  br label %2831

; <label>:2795:                                   ; preds = %2782, %2772, %2766, %2761
  %2796 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2797 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2796, i32 0, i32 4
  %2798 = bitcast %union.anon* %2797 to %struct.anon*
  %2799 = getelementptr inbounds %struct.anon, %struct.anon* %2798, i32 0, i32 1
  %2800 = load i32*, i32** %2799, align 8
  %2801 = load i32, i32* %2800, align 4
  store i32 %2801, i32* %7, align 4
  %2802 = load i32, i32* %7, align 4
  %2803 = lshr i32 %2802, 6
  %2804 = and i32 %2803, 255
  store i32 %2804, i32* %143, align 4
  %2805 = load i32, i32* %143, align 4
  %2806 = icmp ne i32 %2805, 0
  br i1 %2806, label %2807, label %2818

; <label>:2807:                                   ; preds = %2795
  %2808 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2809 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2810 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2809, i32 0, i32 4
  %2811 = bitcast %union.anon* %2810 to %struct.anon*
  %2812 = getelementptr inbounds %struct.anon, %struct.anon* %2811, i32 0, i32 0
  %2813 = load %struct.lua_TValue*, %struct.lua_TValue** %2812, align 8
  %2814 = load i32, i32* %143, align 4
  %2815 = sext i32 %2814 to i64
  %2816 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2813, i64 %2815
  %2817 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2816, i64 -1
  call void @luaF_close(%struct.lua_State* %2808, %struct.lua_TValue* %2817)
  br label %2818

; <label>:2818:                                   ; preds = %2807, %2795
  %2819 = load i32, i32* %7, align 4
  %2820 = lshr i32 %2819, 14
  %2821 = and i32 %2820, 262143
  %2822 = sub nsw i32 %2821, 131071
  %2823 = add nsw i32 %2822, 1
  %2824 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2825 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2824, i32 0, i32 4
  %2826 = bitcast %union.anon* %2825 to %struct.anon*
  %2827 = getelementptr inbounds %struct.anon, %struct.anon* %2826, i32 0, i32 1
  %2828 = load i32*, i32** %2827, align 8
  %2829 = sext i32 %2823 to i64
  %2830 = getelementptr inbounds i32, i32* %2828, i64 %2829
  store i32* %2830, i32** %2827, align 8
  br label %2831

; <label>:2831:                                   ; preds = %2818, %2788
  br label %3779

; <label>:2832:                                   ; preds = %249
  %2833 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %2834 = load i32, i32* %7, align 4
  %2835 = lshr i32 %2834, 23
  %2836 = and i32 %2835, 511
  %2837 = sext i32 %2836 to i64
  %2838 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2833, i64 %2837
  store %struct.lua_TValue* %2838, %struct.lua_TValue** %144, align 8
  %2839 = load i32, i32* %7, align 4
  %2840 = lshr i32 %2839, 14
  %2841 = and i32 %2840, 511
  %2842 = icmp ne i32 %2841, 0
  br i1 %2842, label %2843, label %2859

; <label>:2843:                                   ; preds = %2832
  %2844 = load %struct.lua_TValue*, %struct.lua_TValue** %144, align 8
  %2845 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2844, i32 0, i32 1
  %2846 = load i32, i32* %2845, align 8
  %2847 = icmp eq i32 %2846, 0
  br i1 %2847, label %2875, label %2848

; <label>:2848:                                   ; preds = %2843
  %2849 = load %struct.lua_TValue*, %struct.lua_TValue** %144, align 8
  %2850 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2849, i32 0, i32 1
  %2851 = load i32, i32* %2850, align 8
  %2852 = icmp eq i32 %2851, 1
  br i1 %2852, label %2853, label %2882

; <label>:2853:                                   ; preds = %2848
  %2854 = load %struct.lua_TValue*, %struct.lua_TValue** %144, align 8
  %2855 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2854, i32 0, i32 0
  %2856 = bitcast %union.Value* %2855 to i32*
  %2857 = load i32, i32* %2856, align 8
  %2858 = icmp eq i32 %2857, 0
  br i1 %2858, label %2875, label %2882

; <label>:2859:                                   ; preds = %2832
  %2860 = load %struct.lua_TValue*, %struct.lua_TValue** %144, align 8
  %2861 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2860, i32 0, i32 1
  %2862 = load i32, i32* %2861, align 8
  %2863 = icmp eq i32 %2862, 0
  br i1 %2863, label %2882, label %2864

; <label>:2864:                                   ; preds = %2859
  %2865 = load %struct.lua_TValue*, %struct.lua_TValue** %144, align 8
  %2866 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2865, i32 0, i32 1
  %2867 = load i32, i32* %2866, align 8
  %2868 = icmp eq i32 %2867, 1
  br i1 %2868, label %2869, label %2875

; <label>:2869:                                   ; preds = %2864
  %2870 = load %struct.lua_TValue*, %struct.lua_TValue** %144, align 8
  %2871 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2870, i32 0, i32 0
  %2872 = bitcast %union.Value* %2871 to i32*
  %2873 = load i32, i32* %2872, align 8
  %2874 = icmp eq i32 %2873, 0
  br i1 %2874, label %2882, label %2875

; <label>:2875:                                   ; preds = %2869, %2864, %2853, %2843
  %2876 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2877 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2876, i32 0, i32 4
  %2878 = bitcast %union.anon* %2877 to %struct.anon*
  %2879 = getelementptr inbounds %struct.anon, %struct.anon* %2878, i32 0, i32 1
  %2880 = load i32*, i32** %2879, align 8
  %2881 = getelementptr inbounds i32, i32* %2880, i32 1
  store i32* %2881, i32** %2879, align 8
  br label %2924

; <label>:2882:                                   ; preds = %2869, %2859, %2853, %2848
  %2883 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %2883, %struct.lua_TValue** %145, align 8
  %2884 = load %struct.lua_TValue*, %struct.lua_TValue** %145, align 8
  %2885 = load %struct.lua_TValue*, %struct.lua_TValue** %144, align 8
  %2886 = bitcast %struct.lua_TValue* %2884 to i8*
  %2887 = bitcast %struct.lua_TValue* %2885 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2886, i8* %2887, i64 16, i32 8, i1 false)
  %2888 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2889 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2890 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2889, i32 0, i32 4
  %2891 = bitcast %union.anon* %2890 to %struct.anon*
  %2892 = getelementptr inbounds %struct.anon, %struct.anon* %2891, i32 0, i32 1
  %2893 = load i32*, i32** %2892, align 8
  %2894 = load i32, i32* %2893, align 4
  store i32 %2894, i32* %7, align 4
  %2895 = load i32, i32* %7, align 4
  %2896 = lshr i32 %2895, 6
  %2897 = and i32 %2896, 255
  store i32 %2897, i32* %146, align 4
  %2898 = load i32, i32* %146, align 4
  %2899 = icmp ne i32 %2898, 0
  br i1 %2899, label %2900, label %2911

; <label>:2900:                                   ; preds = %2882
  %2901 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2902 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2903 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2902, i32 0, i32 4
  %2904 = bitcast %union.anon* %2903 to %struct.anon*
  %2905 = getelementptr inbounds %struct.anon, %struct.anon* %2904, i32 0, i32 0
  %2906 = load %struct.lua_TValue*, %struct.lua_TValue** %2905, align 8
  %2907 = load i32, i32* %146, align 4
  %2908 = sext i32 %2907 to i64
  %2909 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2906, i64 %2908
  %2910 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2909, i64 -1
  call void @luaF_close(%struct.lua_State* %2901, %struct.lua_TValue* %2910)
  br label %2911

; <label>:2911:                                   ; preds = %2900, %2882
  %2912 = load i32, i32* %7, align 4
  %2913 = lshr i32 %2912, 14
  %2914 = and i32 %2913, 262143
  %2915 = sub nsw i32 %2914, 131071
  %2916 = add nsw i32 %2915, 1
  %2917 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2918 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2917, i32 0, i32 4
  %2919 = bitcast %union.anon* %2918 to %struct.anon*
  %2920 = getelementptr inbounds %struct.anon, %struct.anon* %2919, i32 0, i32 1
  %2921 = load i32*, i32** %2920, align 8
  %2922 = sext i32 %2916 to i64
  %2923 = getelementptr inbounds i32, i32* %2921, i64 %2922
  store i32* %2923, i32** %2920, align 8
  br label %2924

; <label>:2924:                                   ; preds = %2911, %2875
  br label %3779

; <label>:2925:                                   ; preds = %249
  %2926 = load i32, i32* %7, align 4
  %2927 = lshr i32 %2926, 23
  %2928 = and i32 %2927, 511
  store i32 %2928, i32* %147, align 4
  %2929 = load i32, i32* %7, align 4
  %2930 = lshr i32 %2929, 14
  %2931 = and i32 %2930, 511
  %2932 = sub nsw i32 %2931, 1
  store i32 %2932, i32* %148, align 4
  %2933 = load i32, i32* %147, align 4
  %2934 = icmp ne i32 %2933, 0
  br i1 %2934, label %2935, label %2942

; <label>:2935:                                   ; preds = %2925
  %2936 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %2937 = load i32, i32* %147, align 4
  %2938 = sext i32 %2937 to i64
  %2939 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2936, i64 %2938
  %2940 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2941 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2940, i32 0, i32 5
  store %struct.lua_TValue* %2939, %struct.lua_TValue** %2941, align 8
  br label %2942

; <label>:2942:                                   ; preds = %2935, %2925
  %2943 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2944 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %2945 = load i32, i32* %148, align 4
  %2946 = call i32 @luaD_precall(%struct.lua_State* %2943, %struct.lua_TValue* %2944, i32 %2945)
  %2947 = icmp ne i32 %2946, 0
  br i1 %2947, label %2948, label %2963

; <label>:2948:                                   ; preds = %2942
  %2949 = load i32, i32* %148, align 4
  %2950 = icmp sge i32 %2949, 0
  br i1 %2950, label %2951, label %2957

; <label>:2951:                                   ; preds = %2948
  %2952 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2953 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2952, i32 0, i32 1
  %2954 = load %struct.lua_TValue*, %struct.lua_TValue** %2953, align 8
  %2955 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2956 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2955, i32 0, i32 5
  store %struct.lua_TValue* %2954, %struct.lua_TValue** %2956, align 8
  br label %2957

; <label>:2957:                                   ; preds = %2951, %2948
  %2958 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2959 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2958, i32 0, i32 4
  %2960 = bitcast %union.anon* %2959 to %struct.anon*
  %2961 = getelementptr inbounds %struct.anon, %struct.anon* %2960, i32 0, i32 0
  %2962 = load %struct.lua_TValue*, %struct.lua_TValue** %2961, align 8
  store %struct.lua_TValue* %2962, %struct.lua_TValue** %6, align 8
  br label %2967

; <label>:2963:                                   ; preds = %2942
  %2964 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2965 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2964, i32 0, i32 7
  %2966 = load %struct.CallInfo*, %struct.CallInfo** %2965, align 8
  store %struct.CallInfo* %2966, %struct.CallInfo** %3, align 8
  br label %209

; <label>:2967:                                   ; preds = %2957
  br label %3779

; <label>:2968:                                   ; preds = %249
  %2969 = load i32, i32* %7, align 4
  %2970 = lshr i32 %2969, 23
  %2971 = and i32 %2970, 511
  store i32 %2971, i32* %149, align 4
  %2972 = load i32, i32* %149, align 4
  %2973 = icmp ne i32 %2972, 0
  br i1 %2973, label %2974, label %2981

; <label>:2974:                                   ; preds = %2968
  %2975 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %2976 = load i32, i32* %149, align 4
  %2977 = sext i32 %2976 to i64
  %2978 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %2975, i64 %2977
  %2979 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2980 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2979, i32 0, i32 5
  store %struct.lua_TValue* %2978, %struct.lua_TValue** %2980, align 8
  br label %2981

; <label>:2981:                                   ; preds = %2974, %2968
  %2982 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2983 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %2984 = call i32 @luaD_precall(%struct.lua_State* %2982, %struct.lua_TValue* %2983, i32 -1)
  %2985 = icmp ne i32 %2984, 0
  br i1 %2985, label %2986, label %2992

; <label>:2986:                                   ; preds = %2981
  %2987 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %2988 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2987, i32 0, i32 4
  %2989 = bitcast %union.anon* %2988 to %struct.anon*
  %2990 = getelementptr inbounds %struct.anon, %struct.anon* %2989, i32 0, i32 0
  %2991 = load %struct.lua_TValue*, %struct.lua_TValue** %2990, align 8
  store %struct.lua_TValue* %2991, %struct.lua_TValue** %6, align 8
  br label %3110

; <label>:2992:                                   ; preds = %2981
  %2993 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %2994 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %2993, i32 0, i32 7
  %2995 = load %struct.CallInfo*, %struct.CallInfo** %2994, align 8
  store %struct.CallInfo* %2995, %struct.CallInfo** %150, align 8
  %2996 = load %struct.CallInfo*, %struct.CallInfo** %150, align 8
  %2997 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2996, i32 0, i32 2
  %2998 = load %struct.CallInfo*, %struct.CallInfo** %2997, align 8
  store %struct.CallInfo* %2998, %struct.CallInfo** %151, align 8
  %2999 = load %struct.CallInfo*, %struct.CallInfo** %150, align 8
  %3000 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %2999, i32 0, i32 0
  %3001 = load %struct.lua_TValue*, %struct.lua_TValue** %3000, align 8
  store %struct.lua_TValue* %3001, %struct.lua_TValue** %152, align 8
  %3002 = load %struct.CallInfo*, %struct.CallInfo** %151, align 8
  %3003 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3002, i32 0, i32 0
  %3004 = load %struct.lua_TValue*, %struct.lua_TValue** %3003, align 8
  store %struct.lua_TValue* %3004, %struct.lua_TValue** %153, align 8
  %3005 = load %struct.CallInfo*, %struct.CallInfo** %150, align 8
  %3006 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3005, i32 0, i32 4
  %3007 = bitcast %union.anon* %3006 to %struct.anon*
  %3008 = getelementptr inbounds %struct.anon, %struct.anon* %3007, i32 0, i32 0
  %3009 = load %struct.lua_TValue*, %struct.lua_TValue** %3008, align 8
  %3010 = load %struct.lua_TValue*, %struct.lua_TValue** %152, align 8
  %3011 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3010, i32 0, i32 0
  %3012 = bitcast %union.Value* %3011 to %struct.GCObject**
  %3013 = load %struct.GCObject*, %struct.GCObject** %3012, align 8
  %3014 = bitcast %struct.GCObject* %3013 to %union.GCUnion*
  %3015 = bitcast %union.GCUnion* %3014 to %union.Closure*
  %3016 = bitcast %union.Closure* %3015 to %struct.LClosure*
  %3017 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %3016, i32 0, i32 5
  %3018 = load %struct.Proto*, %struct.Proto** %3017, align 8
  %3019 = getelementptr inbounds %struct.Proto, %struct.Proto* %3018, i32 0, i32 3
  %3020 = load i8, i8* %3019, align 2
  %3021 = zext i8 %3020 to i32
  %3022 = sext i32 %3021 to i64
  %3023 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3009, i64 %3022
  store %struct.lua_TValue* %3023, %struct.lua_TValue** %154, align 8
  %3024 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %3025 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %3024, i32 0, i32 5
  %3026 = load %struct.Proto*, %struct.Proto** %3025, align 8
  %3027 = getelementptr inbounds %struct.Proto, %struct.Proto* %3026, i32 0, i32 10
  %3028 = load i32, i32* %3027, align 8
  %3029 = icmp sgt i32 %3028, 0
  br i1 %3029, label %3030, label %3037

; <label>:3030:                                   ; preds = %2992
  %3031 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3032 = load %struct.CallInfo*, %struct.CallInfo** %151, align 8
  %3033 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3032, i32 0, i32 4
  %3034 = bitcast %union.anon* %3033 to %struct.anon*
  %3035 = getelementptr inbounds %struct.anon, %struct.anon* %3034, i32 0, i32 0
  %3036 = load %struct.lua_TValue*, %struct.lua_TValue** %3035, align 8
  call void @luaF_close(%struct.lua_State* %3031, %struct.lua_TValue* %3036)
  br label %3037

; <label>:3037:                                   ; preds = %3030, %2992
  store i32 0, i32* %155, align 4
  br label %3038

; <label>:3038:                                   ; preds = %3058, %3037
  %3039 = load %struct.lua_TValue*, %struct.lua_TValue** %152, align 8
  %3040 = load i32, i32* %155, align 4
  %3041 = sext i32 %3040 to i64
  %3042 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3039, i64 %3041
  %3043 = load %struct.lua_TValue*, %struct.lua_TValue** %154, align 8
  %3044 = icmp ult %struct.lua_TValue* %3042, %3043
  br i1 %3044, label %3045, label %3061

; <label>:3045:                                   ; preds = %3038
  %3046 = load %struct.lua_TValue*, %struct.lua_TValue** %153, align 8
  %3047 = load i32, i32* %155, align 4
  %3048 = sext i32 %3047 to i64
  %3049 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3046, i64 %3048
  store %struct.lua_TValue* %3049, %struct.lua_TValue** %156, align 8
  %3050 = load %struct.lua_TValue*, %struct.lua_TValue** %156, align 8
  %3051 = load %struct.lua_TValue*, %struct.lua_TValue** %152, align 8
  %3052 = load i32, i32* %155, align 4
  %3053 = sext i32 %3052 to i64
  %3054 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3051, i64 %3053
  %3055 = bitcast %struct.lua_TValue* %3050 to i8*
  %3056 = bitcast %struct.lua_TValue* %3054 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3055, i8* %3056, i64 16, i32 8, i1 false)
  %3057 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  br label %3058

; <label>:3058:                                   ; preds = %3045
  %3059 = load i32, i32* %155, align 4
  %3060 = add nsw i32 %3059, 1
  store i32 %3060, i32* %155, align 4
  br label %3038

; <label>:3061:                                   ; preds = %3038
  %3062 = load %struct.lua_TValue*, %struct.lua_TValue** %153, align 8
  %3063 = load %struct.CallInfo*, %struct.CallInfo** %150, align 8
  %3064 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3063, i32 0, i32 4
  %3065 = bitcast %union.anon* %3064 to %struct.anon*
  %3066 = getelementptr inbounds %struct.anon, %struct.anon* %3065, i32 0, i32 0
  %3067 = load %struct.lua_TValue*, %struct.lua_TValue** %3066, align 8
  %3068 = load %struct.lua_TValue*, %struct.lua_TValue** %152, align 8
  %3069 = ptrtoint %struct.lua_TValue* %3067 to i64
  %3070 = ptrtoint %struct.lua_TValue* %3068 to i64
  %3071 = sub i64 %3069, %3070
  %3072 = sdiv exact i64 %3071, 16
  %3073 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3062, i64 %3072
  %3074 = load %struct.CallInfo*, %struct.CallInfo** %151, align 8
  %3075 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3074, i32 0, i32 4
  %3076 = bitcast %union.anon* %3075 to %struct.anon*
  %3077 = getelementptr inbounds %struct.anon, %struct.anon* %3076, i32 0, i32 0
  store %struct.lua_TValue* %3073, %struct.lua_TValue** %3077, align 8
  %3078 = load %struct.lua_TValue*, %struct.lua_TValue** %153, align 8
  %3079 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3080 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3079, i32 0, i32 5
  %3081 = load %struct.lua_TValue*, %struct.lua_TValue** %3080, align 8
  %3082 = load %struct.lua_TValue*, %struct.lua_TValue** %152, align 8
  %3083 = ptrtoint %struct.lua_TValue* %3081 to i64
  %3084 = ptrtoint %struct.lua_TValue* %3082 to i64
  %3085 = sub i64 %3083, %3084
  %3086 = sdiv exact i64 %3085, 16
  %3087 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3078, i64 %3086
  %3088 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3089 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3088, i32 0, i32 5
  store %struct.lua_TValue* %3087, %struct.lua_TValue** %3089, align 8
  %3090 = load %struct.CallInfo*, %struct.CallInfo** %151, align 8
  %3091 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3090, i32 0, i32 1
  store %struct.lua_TValue* %3087, %struct.lua_TValue** %3091, align 8
  %3092 = load %struct.CallInfo*, %struct.CallInfo** %150, align 8
  %3093 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3092, i32 0, i32 4
  %3094 = bitcast %union.anon* %3093 to %struct.anon*
  %3095 = getelementptr inbounds %struct.anon, %struct.anon* %3094, i32 0, i32 1
  %3096 = load i32*, i32** %3095, align 8
  %3097 = load %struct.CallInfo*, %struct.CallInfo** %151, align 8
  %3098 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3097, i32 0, i32 4
  %3099 = bitcast %union.anon* %3098 to %struct.anon*
  %3100 = getelementptr inbounds %struct.anon, %struct.anon* %3099, i32 0, i32 1
  store i32* %3096, i32** %3100, align 8
  %3101 = load %struct.CallInfo*, %struct.CallInfo** %151, align 8
  %3102 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3101, i32 0, i32 7
  %3103 = load i16, i16* %3102, align 2
  %3104 = zext i16 %3103 to i32
  %3105 = or i32 %3104, 32
  %3106 = trunc i32 %3105 to i16
  store i16 %3106, i16* %3102, align 2
  %3107 = load %struct.CallInfo*, %struct.CallInfo** %151, align 8
  %3108 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3109 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3108, i32 0, i32 7
  store %struct.CallInfo* %3107, %struct.CallInfo** %3109, align 8
  store %struct.CallInfo* %3107, %struct.CallInfo** %3, align 8
  br label %209

; <label>:3110:                                   ; preds = %2986
  br label %3779

; <label>:3111:                                   ; preds = %249
  %3112 = load i32, i32* %7, align 4
  %3113 = lshr i32 %3112, 23
  %3114 = and i32 %3113, 511
  store i32 %3114, i32* %157, align 4
  %3115 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %3116 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %3115, i32 0, i32 5
  %3117 = load %struct.Proto*, %struct.Proto** %3116, align 8
  %3118 = getelementptr inbounds %struct.Proto, %struct.Proto* %3117, i32 0, i32 10
  %3119 = load i32, i32* %3118, align 8
  %3120 = icmp sgt i32 %3119, 0
  br i1 %3120, label %3121, label %3124

; <label>:3121:                                   ; preds = %3111
  %3122 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3123 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  call void @luaF_close(%struct.lua_State* %3122, %struct.lua_TValue* %3123)
  br label %3124

; <label>:3124:                                   ; preds = %3121, %3111
  %3125 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3126 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %3127 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3128 = load i32, i32* %157, align 4
  %3129 = icmp ne i32 %3128, 0
  br i1 %3129, label %3130, label %3133

; <label>:3130:                                   ; preds = %3124
  %3131 = load i32, i32* %157, align 4
  %3132 = sub nsw i32 %3131, 1
  br label %3143

; <label>:3133:                                   ; preds = %3124
  %3134 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3135 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3134, i32 0, i32 5
  %3136 = load %struct.lua_TValue*, %struct.lua_TValue** %3135, align 8
  %3137 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3138 = ptrtoint %struct.lua_TValue* %3136 to i64
  %3139 = ptrtoint %struct.lua_TValue* %3137 to i64
  %3140 = sub i64 %3138, %3139
  %3141 = sdiv exact i64 %3140, 16
  %3142 = trunc i64 %3141 to i32
  br label %3143

; <label>:3143:                                   ; preds = %3133, %3130
  %3144 = phi i32 [ %3132, %3130 ], [ %3142, %3133 ]
  %3145 = call i32 @luaD_poscall(%struct.lua_State* %3125, %struct.CallInfo* %3126, %struct.lua_TValue* %3127, i32 %3144)
  store i32 %3145, i32* %157, align 4
  %3146 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %3147 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3146, i32 0, i32 7
  %3148 = load i16, i16* %3147, align 2
  %3149 = zext i16 %3148 to i32
  %3150 = and i32 %3149, 8
  %3151 = icmp ne i32 %3150, 0
  br i1 %3151, label %3152, label %3153

; <label>:3152:                                   ; preds = %3143
  ret void

; <label>:3153:                                   ; preds = %3143
  %3154 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3155 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3154, i32 0, i32 7
  %3156 = load %struct.CallInfo*, %struct.CallInfo** %3155, align 8
  store %struct.CallInfo* %3156, %struct.CallInfo** %3, align 8
  %3157 = load i32, i32* %157, align 4
  %3158 = icmp ne i32 %3157, 0
  br i1 %3158, label %3159, label %3165

; <label>:3159:                                   ; preds = %3153
  %3160 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %3161 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3160, i32 0, i32 1
  %3162 = load %struct.lua_TValue*, %struct.lua_TValue** %3161, align 8
  %3163 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3164 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3163, i32 0, i32 5
  store %struct.lua_TValue* %3162, %struct.lua_TValue** %3164, align 8
  br label %3165

; <label>:3165:                                   ; preds = %3159, %3153
  br label %209

; <label>:3166:                                   ; preds = %249
  %3167 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3168 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3167, i32 0, i32 1
  %3169 = load i32, i32* %3168, align 8
  %3170 = icmp eq i32 %3169, 19
  br i1 %3170, label %3171, label %3224

; <label>:3171:                                   ; preds = %3166
  %3172 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3173 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3172, i64 2
  %3174 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3173, i32 0, i32 0
  %3175 = bitcast %union.Value* %3174 to i64*
  %3176 = load i64, i64* %3175, align 8
  store i64 %3176, i64* %158, align 8
  %3177 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3178 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3177, i32 0, i32 0
  %3179 = bitcast %union.Value* %3178 to i64*
  %3180 = load i64, i64* %3179, align 8
  %3181 = load i64, i64* %158, align 8
  %3182 = add i64 %3180, %3181
  store i64 %3182, i64* %159, align 8
  %3183 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3184 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3183, i64 1
  %3185 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3184, i32 0, i32 0
  %3186 = bitcast %union.Value* %3185 to i64*
  %3187 = load i64, i64* %3186, align 8
  store i64 %3187, i64* %160, align 8
  %3188 = load i64, i64* %158, align 8
  %3189 = icmp slt i64 0, %3188
  br i1 %3189, label %3190, label %3194

; <label>:3190:                                   ; preds = %3171
  %3191 = load i64, i64* %159, align 8
  %3192 = load i64, i64* %160, align 8
  %3193 = icmp sle i64 %3191, %3192
  br i1 %3193, label %3198, label %3223

; <label>:3194:                                   ; preds = %3171
  %3195 = load i64, i64* %160, align 8
  %3196 = load i64, i64* %159, align 8
  %3197 = icmp sle i64 %3195, %3196
  br i1 %3197, label %3198, label %3223

; <label>:3198:                                   ; preds = %3194, %3190
  %3199 = load i32, i32* %7, align 4
  %3200 = lshr i32 %3199, 14
  %3201 = and i32 %3200, 262143
  %3202 = sub nsw i32 %3201, 131071
  %3203 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %3204 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3203, i32 0, i32 4
  %3205 = bitcast %union.anon* %3204 to %struct.anon*
  %3206 = getelementptr inbounds %struct.anon, %struct.anon* %3205, i32 0, i32 1
  %3207 = load i32*, i32** %3206, align 8
  %3208 = sext i32 %3202 to i64
  %3209 = getelementptr inbounds i32, i32* %3207, i64 %3208
  store i32* %3209, i32** %3206, align 8
  %3210 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %3210, %struct.lua_TValue** %161, align 8
  %3211 = load i64, i64* %159, align 8
  %3212 = load %struct.lua_TValue*, %struct.lua_TValue** %161, align 8
  %3213 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3212, i32 0, i32 0
  %3214 = bitcast %union.Value* %3213 to i64*
  store i64 %3211, i64* %3214, align 8
  %3215 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3216 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3215, i64 3
  store %struct.lua_TValue* %3216, %struct.lua_TValue** %162, align 8
  %3217 = load i64, i64* %159, align 8
  %3218 = load %struct.lua_TValue*, %struct.lua_TValue** %162, align 8
  %3219 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3218, i32 0, i32 0
  %3220 = bitcast %union.Value* %3219 to i64*
  store i64 %3217, i64* %3220, align 8
  %3221 = load %struct.lua_TValue*, %struct.lua_TValue** %162, align 8
  %3222 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3221, i32 0, i32 1
  store i32 19, i32* %3222, align 8
  br label %3223

; <label>:3223:                                   ; preds = %3198, %3194, %3190
  br label %3277

; <label>:3224:                                   ; preds = %3166
  %3225 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3226 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3225, i64 2
  %3227 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3226, i32 0, i32 0
  %3228 = bitcast %union.Value* %3227 to double*
  %3229 = load double, double* %3228, align 8
  store double %3229, double* %163, align 8
  %3230 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3231 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3230, i32 0, i32 0
  %3232 = bitcast %union.Value* %3231 to double*
  %3233 = load double, double* %3232, align 8
  %3234 = load double, double* %163, align 8
  %3235 = fadd double %3233, %3234
  store double %3235, double* %164, align 8
  %3236 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3237 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3236, i64 1
  %3238 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3237, i32 0, i32 0
  %3239 = bitcast %union.Value* %3238 to double*
  %3240 = load double, double* %3239, align 8
  store double %3240, double* %165, align 8
  %3241 = load double, double* %163, align 8
  %3242 = fcmp olt double 0.000000e+00, %3241
  br i1 %3242, label %3243, label %3247

; <label>:3243:                                   ; preds = %3224
  %3244 = load double, double* %164, align 8
  %3245 = load double, double* %165, align 8
  %3246 = fcmp ole double %3244, %3245
  br i1 %3246, label %3251, label %3276

; <label>:3247:                                   ; preds = %3224
  %3248 = load double, double* %165, align 8
  %3249 = load double, double* %164, align 8
  %3250 = fcmp ole double %3248, %3249
  br i1 %3250, label %3251, label %3276

; <label>:3251:                                   ; preds = %3247, %3243
  %3252 = load i32, i32* %7, align 4
  %3253 = lshr i32 %3252, 14
  %3254 = and i32 %3253, 262143
  %3255 = sub nsw i32 %3254, 131071
  %3256 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %3257 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3256, i32 0, i32 4
  %3258 = bitcast %union.anon* %3257 to %struct.anon*
  %3259 = getelementptr inbounds %struct.anon, %struct.anon* %3258, i32 0, i32 1
  %3260 = load i32*, i32** %3259, align 8
  %3261 = sext i32 %3255 to i64
  %3262 = getelementptr inbounds i32, i32* %3260, i64 %3261
  store i32* %3262, i32** %3259, align 8
  %3263 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %3263, %struct.lua_TValue** %166, align 8
  %3264 = load double, double* %164, align 8
  %3265 = load %struct.lua_TValue*, %struct.lua_TValue** %166, align 8
  %3266 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3265, i32 0, i32 0
  %3267 = bitcast %union.Value* %3266 to double*
  store double %3264, double* %3267, align 8
  %3268 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3269 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3268, i64 3
  store %struct.lua_TValue* %3269, %struct.lua_TValue** %167, align 8
  %3270 = load double, double* %164, align 8
  %3271 = load %struct.lua_TValue*, %struct.lua_TValue** %167, align 8
  %3272 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3271, i32 0, i32 0
  %3273 = bitcast %union.Value* %3272 to double*
  store double %3270, double* %3273, align 8
  %3274 = load %struct.lua_TValue*, %struct.lua_TValue** %167, align 8
  %3275 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3274, i32 0, i32 1
  store i32 3, i32* %3275, align 8
  br label %3276

; <label>:3276:                                   ; preds = %3251, %3247, %3243
  br label %3277

; <label>:3277:                                   ; preds = %3276, %3223
  br label %3779

; <label>:3278:                                   ; preds = %249
  %3279 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %3279, %struct.lua_TValue** %168, align 8
  %3280 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3281 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3280, i64 1
  store %struct.lua_TValue* %3281, %struct.lua_TValue** %169, align 8
  %3282 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3283 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3282, i64 2
  store %struct.lua_TValue* %3283, %struct.lua_TValue** %170, align 8
  %3284 = load %struct.lua_TValue*, %struct.lua_TValue** %168, align 8
  %3285 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3284, i32 0, i32 1
  %3286 = load i32, i32* %3285, align 8
  %3287 = icmp eq i32 %3286, 19
  br i1 %3287, label %3288, label %3331

; <label>:3288:                                   ; preds = %3278
  %3289 = load %struct.lua_TValue*, %struct.lua_TValue** %170, align 8
  %3290 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3289, i32 0, i32 1
  %3291 = load i32, i32* %3290, align 8
  %3292 = icmp eq i32 %3291, 19
  br i1 %3292, label %3293, label %3331

; <label>:3293:                                   ; preds = %3288
  %3294 = load %struct.lua_TValue*, %struct.lua_TValue** %169, align 8
  %3295 = load %struct.lua_TValue*, %struct.lua_TValue** %170, align 8
  %3296 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3295, i32 0, i32 0
  %3297 = bitcast %union.Value* %3296 to i64*
  %3298 = load i64, i64* %3297, align 8
  %3299 = call i32 @forlimit(%struct.lua_TValue* %3294, i64* %171, i64 %3298, i32* %172)
  %3300 = icmp ne i32 %3299, 0
  br i1 %3300, label %3301, label %3331

; <label>:3301:                                   ; preds = %3293
  %3302 = load i32, i32* %172, align 4
  %3303 = icmp ne i32 %3302, 0
  br i1 %3303, label %3304, label %3305

; <label>:3304:                                   ; preds = %3301
  br label %3310

; <label>:3305:                                   ; preds = %3301
  %3306 = load %struct.lua_TValue*, %struct.lua_TValue** %168, align 8
  %3307 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3306, i32 0, i32 0
  %3308 = bitcast %union.Value* %3307 to i64*
  %3309 = load i64, i64* %3308, align 8
  br label %3310

; <label>:3310:                                   ; preds = %3305, %3304
  %3311 = phi i64 [ 0, %3304 ], [ %3309, %3305 ]
  store i64 %3311, i64* %173, align 8
  %3312 = load %struct.lua_TValue*, %struct.lua_TValue** %169, align 8
  store %struct.lua_TValue* %3312, %struct.lua_TValue** %174, align 8
  %3313 = load i64, i64* %171, align 8
  %3314 = load %struct.lua_TValue*, %struct.lua_TValue** %174, align 8
  %3315 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3314, i32 0, i32 0
  %3316 = bitcast %union.Value* %3315 to i64*
  store i64 %3313, i64* %3316, align 8
  %3317 = load %struct.lua_TValue*, %struct.lua_TValue** %174, align 8
  %3318 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3317, i32 0, i32 1
  store i32 19, i32* %3318, align 8
  %3319 = load %struct.lua_TValue*, %struct.lua_TValue** %168, align 8
  store %struct.lua_TValue* %3319, %struct.lua_TValue** %175, align 8
  %3320 = load i64, i64* %173, align 8
  %3321 = load %struct.lua_TValue*, %struct.lua_TValue** %170, align 8
  %3322 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3321, i32 0, i32 0
  %3323 = bitcast %union.Value* %3322 to i64*
  %3324 = load i64, i64* %3323, align 8
  %3325 = sub i64 %3320, %3324
  %3326 = load %struct.lua_TValue*, %struct.lua_TValue** %175, align 8
  %3327 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3326, i32 0, i32 0
  %3328 = bitcast %union.Value* %3327 to i64*
  store i64 %3325, i64* %3328, align 8
  %3329 = load %struct.lua_TValue*, %struct.lua_TValue** %175, align 8
  %3330 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3329, i32 0, i32 1
  store i32 19, i32* %3330, align 8
  br label %3403

; <label>:3331:                                   ; preds = %3293, %3288, %3278
  %3332 = load %struct.lua_TValue*, %struct.lua_TValue** %169, align 8
  %3333 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3332, i32 0, i32 1
  %3334 = load i32, i32* %3333, align 8
  %3335 = icmp eq i32 %3334, 3
  br i1 %3335, label %3336, label %3341

; <label>:3336:                                   ; preds = %3331
  %3337 = load %struct.lua_TValue*, %struct.lua_TValue** %169, align 8
  %3338 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3337, i32 0, i32 0
  %3339 = bitcast %union.Value* %3338 to double*
  %3340 = load double, double* %3339, align 8
  store double %3340, double* %177, align 8
  br i1 true, label %3347, label %3345

; <label>:3341:                                   ; preds = %3331
  %3342 = load %struct.lua_TValue*, %struct.lua_TValue** %169, align 8
  %3343 = call i32 @luaV_tonumber_(%struct.lua_TValue* %3342, double* %177)
  %3344 = icmp ne i32 %3343, 0
  br i1 %3344, label %3347, label %3345

; <label>:3345:                                   ; preds = %3341, %3336
  %3346 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %3346, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0)) #7
  unreachable

; <label>:3347:                                   ; preds = %3341, %3336
  %3348 = load %struct.lua_TValue*, %struct.lua_TValue** %169, align 8
  store %struct.lua_TValue* %3348, %struct.lua_TValue** %179, align 8
  %3349 = load double, double* %177, align 8
  %3350 = load %struct.lua_TValue*, %struct.lua_TValue** %179, align 8
  %3351 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3350, i32 0, i32 0
  %3352 = bitcast %union.Value* %3351 to double*
  store double %3349, double* %3352, align 8
  %3353 = load %struct.lua_TValue*, %struct.lua_TValue** %179, align 8
  %3354 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3353, i32 0, i32 1
  store i32 3, i32* %3354, align 8
  %3355 = load %struct.lua_TValue*, %struct.lua_TValue** %170, align 8
  %3356 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3355, i32 0, i32 1
  %3357 = load i32, i32* %3356, align 8
  %3358 = icmp eq i32 %3357, 3
  br i1 %3358, label %3359, label %3364

; <label>:3359:                                   ; preds = %3347
  %3360 = load %struct.lua_TValue*, %struct.lua_TValue** %170, align 8
  %3361 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3360, i32 0, i32 0
  %3362 = bitcast %union.Value* %3361 to double*
  %3363 = load double, double* %3362, align 8
  store double %3363, double* %178, align 8
  br i1 true, label %3370, label %3368

; <label>:3364:                                   ; preds = %3347
  %3365 = load %struct.lua_TValue*, %struct.lua_TValue** %170, align 8
  %3366 = call i32 @luaV_tonumber_(%struct.lua_TValue* %3365, double* %178)
  %3367 = icmp ne i32 %3366, 0
  br i1 %3367, label %3370, label %3368

; <label>:3368:                                   ; preds = %3364, %3359
  %3369 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %3369, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0)) #7
  unreachable

; <label>:3370:                                   ; preds = %3364, %3359
  %3371 = load %struct.lua_TValue*, %struct.lua_TValue** %170, align 8
  store %struct.lua_TValue* %3371, %struct.lua_TValue** %180, align 8
  %3372 = load double, double* %178, align 8
  %3373 = load %struct.lua_TValue*, %struct.lua_TValue** %180, align 8
  %3374 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3373, i32 0, i32 0
  %3375 = bitcast %union.Value* %3374 to double*
  store double %3372, double* %3375, align 8
  %3376 = load %struct.lua_TValue*, %struct.lua_TValue** %180, align 8
  %3377 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3376, i32 0, i32 1
  store i32 3, i32* %3377, align 8
  %3378 = load %struct.lua_TValue*, %struct.lua_TValue** %168, align 8
  %3379 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3378, i32 0, i32 1
  %3380 = load i32, i32* %3379, align 8
  %3381 = icmp eq i32 %3380, 3
  br i1 %3381, label %3382, label %3387

; <label>:3382:                                   ; preds = %3370
  %3383 = load %struct.lua_TValue*, %struct.lua_TValue** %168, align 8
  %3384 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3383, i32 0, i32 0
  %3385 = bitcast %union.Value* %3384 to double*
  %3386 = load double, double* %3385, align 8
  store double %3386, double* %176, align 8
  br i1 true, label %3393, label %3391

; <label>:3387:                                   ; preds = %3370
  %3388 = load %struct.lua_TValue*, %struct.lua_TValue** %168, align 8
  %3389 = call i32 @luaV_tonumber_(%struct.lua_TValue* %3388, double* %176)
  %3390 = icmp ne i32 %3389, 0
  br i1 %3390, label %3393, label %3391

; <label>:3391:                                   ; preds = %3387, %3382
  %3392 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %3392, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #7
  unreachable

; <label>:3393:                                   ; preds = %3387, %3382
  %3394 = load %struct.lua_TValue*, %struct.lua_TValue** %168, align 8
  store %struct.lua_TValue* %3394, %struct.lua_TValue** %181, align 8
  %3395 = load double, double* %176, align 8
  %3396 = load double, double* %178, align 8
  %3397 = fsub double %3395, %3396
  %3398 = load %struct.lua_TValue*, %struct.lua_TValue** %181, align 8
  %3399 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3398, i32 0, i32 0
  %3400 = bitcast %union.Value* %3399 to double*
  store double %3397, double* %3400, align 8
  %3401 = load %struct.lua_TValue*, %struct.lua_TValue** %181, align 8
  %3402 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3401, i32 0, i32 1
  store i32 3, i32* %3402, align 8
  br label %3403

; <label>:3403:                                   ; preds = %3393, %3310
  %3404 = load i32, i32* %7, align 4
  %3405 = lshr i32 %3404, 14
  %3406 = and i32 %3405, 262143
  %3407 = sub nsw i32 %3406, 131071
  %3408 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %3409 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3408, i32 0, i32 4
  %3410 = bitcast %union.anon* %3409 to %struct.anon*
  %3411 = getelementptr inbounds %struct.anon, %struct.anon* %3410, i32 0, i32 1
  %3412 = load i32*, i32** %3411, align 8
  %3413 = sext i32 %3407 to i64
  %3414 = getelementptr inbounds i32, i32* %3412, i64 %3413
  store i32* %3414, i32** %3411, align 8
  br label %3779

; <label>:3415:                                   ; preds = %249
  %3416 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3417 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3416, i64 3
  store %struct.lua_TValue* %3417, %struct.lua_TValue** %182, align 8
  %3418 = load %struct.lua_TValue*, %struct.lua_TValue** %182, align 8
  %3419 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3418, i64 2
  store %struct.lua_TValue* %3419, %struct.lua_TValue** %183, align 8
  %3420 = load %struct.lua_TValue*, %struct.lua_TValue** %183, align 8
  %3421 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3422 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3421, i64 2
  %3423 = bitcast %struct.lua_TValue* %3420 to i8*
  %3424 = bitcast %struct.lua_TValue* %3422 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3423, i8* %3424, i64 16, i32 8, i1 false)
  %3425 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3426 = load %struct.lua_TValue*, %struct.lua_TValue** %182, align 8
  %3427 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3426, i64 1
  store %struct.lua_TValue* %3427, %struct.lua_TValue** %184, align 8
  %3428 = load %struct.lua_TValue*, %struct.lua_TValue** %184, align 8
  %3429 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3430 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3429, i64 1
  %3431 = bitcast %struct.lua_TValue* %3428 to i8*
  %3432 = bitcast %struct.lua_TValue* %3430 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3431, i8* %3432, i64 16, i32 8, i1 false)
  %3433 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3434 = load %struct.lua_TValue*, %struct.lua_TValue** %182, align 8
  store %struct.lua_TValue* %3434, %struct.lua_TValue** %185, align 8
  %3435 = load %struct.lua_TValue*, %struct.lua_TValue** %185, align 8
  %3436 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3437 = bitcast %struct.lua_TValue* %3435 to i8*
  %3438 = bitcast %struct.lua_TValue* %3436 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3437, i8* %3438, i64 16, i32 8, i1 false)
  %3439 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3440 = load %struct.lua_TValue*, %struct.lua_TValue** %182, align 8
  %3441 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3440, i64 3
  %3442 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3443 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3442, i32 0, i32 5
  store %struct.lua_TValue* %3441, %struct.lua_TValue** %3443, align 8
  %3444 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3445 = load %struct.lua_TValue*, %struct.lua_TValue** %182, align 8
  %3446 = load i32, i32* %7, align 4
  %3447 = lshr i32 %3446, 14
  %3448 = and i32 %3447, 511
  call void @luaD_call(%struct.lua_State* %3444, %struct.lua_TValue* %3445, i32 %3448)
  %3449 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %3450 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3449, i32 0, i32 4
  %3451 = bitcast %union.anon* %3450 to %struct.anon*
  %3452 = getelementptr inbounds %struct.anon, %struct.anon* %3451, i32 0, i32 0
  %3453 = load %struct.lua_TValue*, %struct.lua_TValue** %3452, align 8
  store %struct.lua_TValue* %3453, %struct.lua_TValue** %6, align 8
  %3454 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %3455 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3454, i32 0, i32 1
  %3456 = load %struct.lua_TValue*, %struct.lua_TValue** %3455, align 8
  %3457 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3458 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3457, i32 0, i32 5
  store %struct.lua_TValue* %3456, %struct.lua_TValue** %3458, align 8
  %3459 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %3460 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3459, i32 0, i32 4
  %3461 = bitcast %union.anon* %3460 to %struct.anon*
  %3462 = getelementptr inbounds %struct.anon, %struct.anon* %3461, i32 0, i32 1
  %3463 = load i32*, i32** %3462, align 8
  %3464 = getelementptr inbounds i32, i32* %3463, i32 1
  store i32* %3464, i32** %3462, align 8
  %3465 = load i32, i32* %3463, align 4
  store i32 %3465, i32* %7, align 4
  %3466 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %3467 = load i32, i32* %7, align 4
  %3468 = lshr i32 %3467, 6
  %3469 = and i32 %3468, 255
  %3470 = sext i32 %3469 to i64
  %3471 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3466, i64 %3470
  store %struct.lua_TValue* %3471, %struct.lua_TValue** %8, align 8
  br label %3473

; <label>:3472:                                   ; preds = %249
  br label %3473

; <label>:3473:                                   ; preds = %3472, %3415
  %3474 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3475 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3474, i64 1
  %3476 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3475, i32 0, i32 1
  %3477 = load i32, i32* %3476, align 8
  %3478 = icmp eq i32 %3477, 0
  br i1 %3478, label %3498, label %3479

; <label>:3479:                                   ; preds = %3473
  %3480 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %3480, %struct.lua_TValue** %186, align 8
  %3481 = load %struct.lua_TValue*, %struct.lua_TValue** %186, align 8
  %3482 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3483 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3482, i64 1
  %3484 = bitcast %struct.lua_TValue* %3481 to i8*
  %3485 = bitcast %struct.lua_TValue* %3483 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3484, i8* %3485, i64 16, i32 8, i1 false)
  %3486 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3487 = load i32, i32* %7, align 4
  %3488 = lshr i32 %3487, 14
  %3489 = and i32 %3488, 262143
  %3490 = sub nsw i32 %3489, 131071
  %3491 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %3492 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3491, i32 0, i32 4
  %3493 = bitcast %union.anon* %3492 to %struct.anon*
  %3494 = getelementptr inbounds %struct.anon, %struct.anon* %3493, i32 0, i32 1
  %3495 = load i32*, i32** %3494, align 8
  %3496 = sext i32 %3490 to i64
  %3497 = getelementptr inbounds i32, i32* %3495, i64 %3496
  store i32* %3497, i32** %3494, align 8
  br label %3498

; <label>:3498:                                   ; preds = %3479, %3473
  br label %3779

; <label>:3499:                                   ; preds = %249
  %3500 = load i32, i32* %7, align 4
  %3501 = lshr i32 %3500, 23
  %3502 = and i32 %3501, 511
  store i32 %3502, i32* %187, align 4
  %3503 = load i32, i32* %7, align 4
  %3504 = lshr i32 %3503, 14
  %3505 = and i32 %3504, 511
  store i32 %3505, i32* %188, align 4
  %3506 = load i32, i32* %187, align 4
  %3507 = icmp eq i32 %3506, 0
  br i1 %3507, label %3508, label %3519

; <label>:3508:                                   ; preds = %3499
  %3509 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3510 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3509, i32 0, i32 5
  %3511 = load %struct.lua_TValue*, %struct.lua_TValue** %3510, align 8
  %3512 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3513 = ptrtoint %struct.lua_TValue* %3511 to i64
  %3514 = ptrtoint %struct.lua_TValue* %3512 to i64
  %3515 = sub i64 %3513, %3514
  %3516 = sdiv exact i64 %3515, 16
  %3517 = trunc i64 %3516 to i32
  %3518 = sub nsw i32 %3517, 1
  store i32 %3518, i32* %187, align 4
  br label %3519

; <label>:3519:                                   ; preds = %3508, %3499
  %3520 = load i32, i32* %188, align 4
  %3521 = icmp eq i32 %3520, 0
  br i1 %3521, label %3522, label %3532

; <label>:3522:                                   ; preds = %3519
  %3523 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %3524 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3523, i32 0, i32 4
  %3525 = bitcast %union.anon* %3524 to %struct.anon*
  %3526 = getelementptr inbounds %struct.anon, %struct.anon* %3525, i32 0, i32 1
  %3527 = load i32*, i32** %3526, align 8
  %3528 = getelementptr inbounds i32, i32* %3527, i32 1
  store i32* %3528, i32** %3526, align 8
  %3529 = load i32, i32* %3527, align 4
  %3530 = lshr i32 %3529, 6
  %3531 = and i32 %3530, 67108863
  store i32 %3531, i32* %188, align 4
  br label %3532

; <label>:3532:                                   ; preds = %3522, %3519
  %3533 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3534 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3533, i32 0, i32 0
  %3535 = bitcast %union.Value* %3534 to %struct.GCObject**
  %3536 = load %struct.GCObject*, %struct.GCObject** %3535, align 8
  %3537 = bitcast %struct.GCObject* %3536 to %union.GCUnion*
  %3538 = bitcast %union.GCUnion* %3537 to %struct.Table*
  store %struct.Table* %3538, %struct.Table** %190, align 8
  %3539 = load i32, i32* %188, align 4
  %3540 = sub nsw i32 %3539, 1
  %3541 = mul nsw i32 %3540, 50
  %3542 = load i32, i32* %187, align 4
  %3543 = add nsw i32 %3541, %3542
  store i32 %3543, i32* %189, align 4
  %3544 = load i32, i32* %189, align 4
  %3545 = load %struct.Table*, %struct.Table** %190, align 8
  %3546 = getelementptr inbounds %struct.Table, %struct.Table* %3545, i32 0, i32 5
  %3547 = load i32, i32* %3546, align 4
  %3548 = icmp ugt i32 %3544, %3547
  br i1 %3548, label %3549, label %3553

; <label>:3549:                                   ; preds = %3532
  %3550 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3551 = load %struct.Table*, %struct.Table** %190, align 8
  %3552 = load i32, i32* %189, align 4
  call void @luaH_resizearray(%struct.lua_State* %3550, %struct.Table* %3551, i32 %3552)
  br label %3553

; <label>:3553:                                   ; preds = %3549, %3532
  br label %3554

; <label>:3554:                                   ; preds = %3595, %3553
  %3555 = load i32, i32* %187, align 4
  %3556 = icmp sgt i32 %3555, 0
  br i1 %3556, label %3557, label %3598

; <label>:3557:                                   ; preds = %3554
  %3558 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3559 = load i32, i32* %187, align 4
  %3560 = sext i32 %3559 to i64
  %3561 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3558, i64 %3560
  store %struct.lua_TValue* %3561, %struct.lua_TValue** %191, align 8
  %3562 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3563 = load %struct.Table*, %struct.Table** %190, align 8
  %3564 = load i32, i32* %189, align 4
  %3565 = add i32 %3564, -1
  store i32 %3565, i32* %189, align 4
  %3566 = zext i32 %3564 to i64
  %3567 = load %struct.lua_TValue*, %struct.lua_TValue** %191, align 8
  call void @luaH_setint(%struct.lua_State* %3562, %struct.Table* %3563, i64 %3566, %struct.lua_TValue* %3567)
  %3568 = load %struct.lua_TValue*, %struct.lua_TValue** %191, align 8
  %3569 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3568, i32 0, i32 1
  %3570 = load i32, i32* %3569, align 8
  %3571 = and i32 %3570, 64
  %3572 = icmp ne i32 %3571, 0
  br i1 %3572, label %3573, label %3593

; <label>:3573:                                   ; preds = %3557
  %3574 = load %struct.Table*, %struct.Table** %190, align 8
  %3575 = getelementptr inbounds %struct.Table, %struct.Table* %3574, i32 0, i32 2
  %3576 = load i8, i8* %3575, align 1
  %3577 = zext i8 %3576 to i32
  %3578 = and i32 %3577, 4
  %3579 = icmp ne i32 %3578, 0
  br i1 %3579, label %3580, label %3593

; <label>:3580:                                   ; preds = %3573
  %3581 = load %struct.lua_TValue*, %struct.lua_TValue** %191, align 8
  %3582 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3581, i32 0, i32 0
  %3583 = bitcast %union.Value* %3582 to %struct.GCObject**
  %3584 = load %struct.GCObject*, %struct.GCObject** %3583, align 8
  %3585 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3584, i32 0, i32 2
  %3586 = load i8, i8* %3585, align 1
  %3587 = zext i8 %3586 to i32
  %3588 = and i32 %3587, 3
  %3589 = icmp ne i32 %3588, 0
  br i1 %3589, label %3590, label %3593

; <label>:3590:                                   ; preds = %3580
  %3591 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3592 = load %struct.Table*, %struct.Table** %190, align 8
  call void @luaC_barrierback_(%struct.lua_State* %3591, %struct.Table* %3592)
  br label %3594

; <label>:3593:                                   ; preds = %3580, %3573, %3557
  br label %3594

; <label>:3594:                                   ; preds = %3593, %3590
  br label %3595

; <label>:3595:                                   ; preds = %3594
  %3596 = load i32, i32* %187, align 4
  %3597 = add nsw i32 %3596, -1
  store i32 %3597, i32* %187, align 4
  br label %3554

; <label>:3598:                                   ; preds = %3554
  %3599 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %3600 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3599, i32 0, i32 1
  %3601 = load %struct.lua_TValue*, %struct.lua_TValue** %3600, align 8
  %3602 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3603 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3602, i32 0, i32 5
  store %struct.lua_TValue* %3601, %struct.lua_TValue** %3603, align 8
  br label %3779

; <label>:3604:                                   ; preds = %249
  %3605 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %3606 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %3605, i32 0, i32 5
  %3607 = load %struct.Proto*, %struct.Proto** %3606, align 8
  %3608 = getelementptr inbounds %struct.Proto, %struct.Proto* %3607, i32 0, i32 16
  %3609 = load %struct.Proto**, %struct.Proto*** %3608, align 8
  %3610 = load i32, i32* %7, align 4
  %3611 = lshr i32 %3610, 14
  %3612 = and i32 %3611, 262143
  %3613 = sext i32 %3612 to i64
  %3614 = getelementptr inbounds %struct.Proto*, %struct.Proto** %3609, i64 %3613
  %3615 = load %struct.Proto*, %struct.Proto** %3614, align 8
  store %struct.Proto* %3615, %struct.Proto** %192, align 8
  %3616 = load %struct.Proto*, %struct.Proto** %192, align 8
  %3617 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %3618 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %3617, i32 0, i32 6
  %3619 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %3618, i32 0, i32 0
  %3620 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %3621 = call %struct.LClosure* @getcached(%struct.Proto* %3616, %struct.UpVal** %3619, %struct.lua_TValue* %3620)
  store %struct.LClosure* %3621, %struct.LClosure** %193, align 8
  %3622 = load %struct.LClosure*, %struct.LClosure** %193, align 8
  %3623 = icmp eq %struct.LClosure* %3622, null
  br i1 %3623, label %3624, label %3632

; <label>:3624:                                   ; preds = %3604
  %3625 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3626 = load %struct.Proto*, %struct.Proto** %192, align 8
  %3627 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %3628 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %3627, i32 0, i32 6
  %3629 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %3628, i32 0, i32 0
  %3630 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %3631 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  call void @pushclosure(%struct.lua_State* %3625, %struct.Proto* %3626, %struct.UpVal** %3629, %struct.lua_TValue* %3630, %struct.lua_TValue* %3631)
  br label %3643

; <label>:3632:                                   ; preds = %3604
  %3633 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %3633, %struct.lua_TValue** %194, align 8
  %3634 = load %struct.LClosure*, %struct.LClosure** %193, align 8
  store %struct.LClosure* %3634, %struct.LClosure** %195, align 8
  %3635 = load %struct.LClosure*, %struct.LClosure** %195, align 8
  %3636 = bitcast %struct.LClosure* %3635 to %union.GCUnion*
  %3637 = bitcast %union.GCUnion* %3636 to %struct.GCObject*
  %3638 = load %struct.lua_TValue*, %struct.lua_TValue** %194, align 8
  %3639 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3638, i32 0, i32 0
  %3640 = bitcast %union.Value* %3639 to %struct.GCObject**
  store %struct.GCObject* %3637, %struct.GCObject** %3640, align 8
  %3641 = load %struct.lua_TValue*, %struct.lua_TValue** %194, align 8
  %3642 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3641, i32 0, i32 1
  store i32 70, i32* %3642, align 8
  br label %3643

; <label>:3643:                                   ; preds = %3632, %3624
  %3644 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3645 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3644, i32 0, i32 6
  %3646 = load %struct.global_State*, %struct.global_State** %3645, align 8
  %3647 = getelementptr inbounds %struct.global_State, %struct.global_State* %3646, i32 0, i32 3
  %3648 = load i64, i64* %3647, align 8
  %3649 = icmp sgt i64 %3648, 0
  br i1 %3649, label %3650, label %3666

; <label>:3650:                                   ; preds = %3643
  %3651 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3652 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3651, i64 1
  %3653 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3654 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3653, i32 0, i32 5
  store %struct.lua_TValue* %3652, %struct.lua_TValue** %3654, align 8
  %3655 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaC_step(%struct.lua_State* %3655)
  %3656 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %3657 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3656, i32 0, i32 1
  %3658 = load %struct.lua_TValue*, %struct.lua_TValue** %3657, align 8
  %3659 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3660 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3659, i32 0, i32 5
  store %struct.lua_TValue* %3658, %struct.lua_TValue** %3660, align 8
  %3661 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %3662 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3661, i32 0, i32 4
  %3663 = bitcast %union.anon* %3662 to %struct.anon*
  %3664 = getelementptr inbounds %struct.anon, %struct.anon* %3663, i32 0, i32 0
  %3665 = load %struct.lua_TValue*, %struct.lua_TValue** %3664, align 8
  store %struct.lua_TValue* %3665, %struct.lua_TValue** %6, align 8
  br label %3666

; <label>:3666:                                   ; preds = %3650, %3643
  br label %3779

; <label>:3667:                                   ; preds = %249
  %3668 = load i32, i32* %7, align 4
  %3669 = lshr i32 %3668, 23
  %3670 = and i32 %3669, 511
  %3671 = sub nsw i32 %3670, 1
  store i32 %3671, i32* %196, align 4
  %3672 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %3673 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %3674 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3673, i32 0, i32 0
  %3675 = load %struct.lua_TValue*, %struct.lua_TValue** %3674, align 8
  %3676 = ptrtoint %struct.lua_TValue* %3672 to i64
  %3677 = ptrtoint %struct.lua_TValue* %3675 to i64
  %3678 = sub i64 %3676, %3677
  %3679 = sdiv exact i64 %3678, 16
  %3680 = trunc i64 %3679 to i32
  %3681 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  %3682 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %3681, i32 0, i32 5
  %3683 = load %struct.Proto*, %struct.Proto** %3682, align 8
  %3684 = getelementptr inbounds %struct.Proto, %struct.Proto* %3683, i32 0, i32 3
  %3685 = load i8, i8* %3684, align 2
  %3686 = zext i8 %3685 to i32
  %3687 = sub nsw i32 %3680, %3686
  %3688 = sub nsw i32 %3687, 1
  store i32 %3688, i32* %198, align 4
  %3689 = load i32, i32* %198, align 4
  %3690 = icmp slt i32 %3689, 0
  br i1 %3690, label %3691, label %3692

; <label>:3691:                                   ; preds = %3667
  store i32 0, i32* %198, align 4
  br label %3692

; <label>:3692:                                   ; preds = %3691, %3667
  %3693 = load i32, i32* %196, align 4
  %3694 = icmp slt i32 %3693, 0
  br i1 %3694, label %3695, label %3732

; <label>:3695:                                   ; preds = %3692
  %3696 = load i32, i32* %198, align 4
  store i32 %3696, i32* %196, align 4
  %3697 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3698 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3697, i32 0, i32 9
  %3699 = load %struct.lua_TValue*, %struct.lua_TValue** %3698, align 8
  %3700 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3701 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3700, i32 0, i32 5
  %3702 = load %struct.lua_TValue*, %struct.lua_TValue** %3701, align 8
  %3703 = ptrtoint %struct.lua_TValue* %3699 to i64
  %3704 = ptrtoint %struct.lua_TValue* %3702 to i64
  %3705 = sub i64 %3703, %3704
  %3706 = sdiv exact i64 %3705, 16
  %3707 = load i32, i32* %198, align 4
  %3708 = sext i32 %3707 to i64
  %3709 = icmp sle i64 %3706, %3708
  br i1 %3709, label %3710, label %3713

; <label>:3710:                                   ; preds = %3695
  %3711 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3712 = load i32, i32* %198, align 4
  call void @luaD_growstack(%struct.lua_State* %3711, i32 %3712)
  br label %3714

; <label>:3713:                                   ; preds = %3695
  br label %3714

; <label>:3714:                                   ; preds = %3713, %3710
  %3715 = load %struct.CallInfo*, %struct.CallInfo** %3, align 8
  %3716 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3715, i32 0, i32 4
  %3717 = bitcast %union.anon* %3716 to %struct.anon*
  %3718 = getelementptr inbounds %struct.anon, %struct.anon* %3717, i32 0, i32 0
  %3719 = load %struct.lua_TValue*, %struct.lua_TValue** %3718, align 8
  store %struct.lua_TValue* %3719, %struct.lua_TValue** %6, align 8
  %3720 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %3721 = load i32, i32* %7, align 4
  %3722 = lshr i32 %3721, 6
  %3723 = and i32 %3722, 255
  %3724 = sext i32 %3723 to i64
  %3725 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3720, i64 %3724
  store %struct.lua_TValue* %3725, %struct.lua_TValue** %8, align 8
  %3726 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3727 = load i32, i32* %198, align 4
  %3728 = sext i32 %3727 to i64
  %3729 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3726, i64 %3728
  %3730 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %3731 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3730, i32 0, i32 5
  store %struct.lua_TValue* %3729, %struct.lua_TValue** %3731, align 8
  br label %3732

; <label>:3732:                                   ; preds = %3714, %3692
  store i32 0, i32* %197, align 4
  br label %3733

; <label>:3733:                                   ; preds = %3760, %3732
  %3734 = load i32, i32* %197, align 4
  %3735 = load i32, i32* %196, align 4
  %3736 = icmp slt i32 %3734, %3735
  br i1 %3736, label %3737, label %3741

; <label>:3737:                                   ; preds = %3733
  %3738 = load i32, i32* %197, align 4
  %3739 = load i32, i32* %198, align 4
  %3740 = icmp slt i32 %3738, %3739
  br label %3741

; <label>:3741:                                   ; preds = %3737, %3733
  %3742 = phi i1 [ false, %3733 ], [ %3740, %3737 ]
  br i1 %3742, label %3743, label %3763

; <label>:3743:                                   ; preds = %3741
  %3744 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3745 = load i32, i32* %197, align 4
  %3746 = sext i32 %3745 to i64
  %3747 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3744, i64 %3746
  store %struct.lua_TValue* %3747, %struct.lua_TValue** %199, align 8
  %3748 = load %struct.lua_TValue*, %struct.lua_TValue** %199, align 8
  %3749 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %3750 = load i32, i32* %198, align 4
  %3751 = sext i32 %3750 to i64
  %3752 = sub i64 0, %3751
  %3753 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3749, i64 %3752
  %3754 = load i32, i32* %197, align 4
  %3755 = sext i32 %3754 to i64
  %3756 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3753, i64 %3755
  %3757 = bitcast %struct.lua_TValue* %3748 to i8*
  %3758 = bitcast %struct.lua_TValue* %3756 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3757, i8* %3758, i64 16, i32 8, i1 false)
  %3759 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  br label %3760

; <label>:3760:                                   ; preds = %3743
  %3761 = load i32, i32* %197, align 4
  %3762 = add nsw i32 %3761, 1
  store i32 %3762, i32* %197, align 4
  br label %3733

; <label>:3763:                                   ; preds = %3741
  br label %3764

; <label>:3764:                                   ; preds = %3774, %3763
  %3765 = load i32, i32* %197, align 4
  %3766 = load i32, i32* %196, align 4
  %3767 = icmp slt i32 %3765, %3766
  br i1 %3767, label %3768, label %3777

; <label>:3768:                                   ; preds = %3764
  %3769 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %3770 = load i32, i32* %197, align 4
  %3771 = sext i32 %3770 to i64
  %3772 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3769, i64 %3771
  %3773 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %3772, i32 0, i32 1
  store i32 0, i32* %3773, align 8
  br label %3774

; <label>:3774:                                   ; preds = %3768
  %3775 = load i32, i32* %197, align 4
  %3776 = add nsw i32 %3775, 1
  store i32 %3776, i32* %197, align 4
  br label %3764

; <label>:3777:                                   ; preds = %3764
  br label %3779

; <label>:3778:                                   ; preds = %249
  br label %3779

; <label>:3779:                                   ; preds = %249, %3778, %3777, %3666, %3598, %3498, %3403, %3277, %3110, %2967, %2924, %2831, %2745, %2645, %2545, %2436, %2413, %2329, %2319, %2294, %2254, %2195, %2101, %1976, %1843, %1749, %1656, %1563, %1470, %1377, %1284, %1162, %1040, %918, %838, %783, %661, %624, %492, %425, %338, %337, %324, %284, %271, %259
  br label %229
}

declare hidden void @luaG_traceexec(%struct.lua_State*) #1

declare hidden void @luaC_upvalbarrier_(%struct.lua_State*, %struct.UpVal*) #1

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) #1

declare hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) #1

declare hidden i32 @luaO_fb2int(i32) #1

declare hidden void @luaC_step(%struct.lua_State*) #1

declare hidden %struct.lua_TValue* @luaH_getstr(%struct.Table*, %struct.TString*) #1

; Function Attrs: nounwind
declare double @fmod(double, double) #5

; Function Attrs: nounwind
declare double @pow(double, double) #5

declare hidden void @luaF_close(%struct.lua_State*, %struct.lua_TValue*) #1

declare hidden i32 @luaD_precall(%struct.lua_State*, %struct.lua_TValue*, i32) #1

declare hidden i32 @luaD_poscall(%struct.lua_State*, %struct.CallInfo*, %struct.lua_TValue*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @forlimit(%struct.lua_TValue*, i64*, i64, i32*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca double, align 8
  store %struct.lua_TValue* %0, %struct.lua_TValue** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp slt i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 2, i32 1
  %18 = call i32 @luaV_tointeger(%struct.lua_TValue* %12, i64* %13, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %53, label %20

; <label>:20:                                     ; preds = %4
  %21 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %22 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %30

; <label>:25:                                     ; preds = %20
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %27 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %26, i32 0, i32 0
  %28 = bitcast %union.Value* %27 to double*
  %29 = load double, double* %28, align 8
  store double %29, double* %10, align 8
  br i1 true, label %35, label %34

; <label>:30:                                     ; preds = %20
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %32 = call i32 @luaV_tonumber_(%struct.lua_TValue* %31, double* %10)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

; <label>:34:                                     ; preds = %30, %25
  store i32 0, i32* %5, align 4
  br label %54

; <label>:35:                                     ; preds = %30, %25
  %36 = load double, double* %10, align 8
  %37 = fcmp olt double 0.000000e+00, %36
  br i1 %37, label %38, label %45

; <label>:38:                                     ; preds = %35
  %39 = load i64*, i64** %7, align 8
  store i64 9223372036854775807, i64* %39, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %38
  %43 = load i32*, i32** %9, align 8
  store i32 1, i32* %43, align 4
  br label %44

; <label>:44:                                     ; preds = %42, %38
  br label %52

; <label>:45:                                     ; preds = %35
  %46 = load i64*, i64** %7, align 8
  store i64 -9223372036854775808, i64* %46, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %51

; <label>:49:                                     ; preds = %45
  %50 = load i32*, i32** %9, align 8
  store i32 1, i32* %50, align 4
  br label %51

; <label>:51:                                     ; preds = %49, %45
  br label %52

; <label>:52:                                     ; preds = %51, %44
  br label %53

; <label>:53:                                     ; preds = %52, %4
  store i32 1, i32* %5, align 4
  br label %54

; <label>:54:                                     ; preds = %53, %34
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) #1

declare hidden void @luaH_resizearray(%struct.lua_State*, %struct.Table*, i32) #1

declare hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.lua_TValue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.LClosure* @getcached(%struct.Proto*, %struct.UpVal**, %struct.lua_TValue*) #0 {
  %4 = alloca %struct.LClosure*, align 8
  %5 = alloca %struct.Proto*, align 8
  %6 = alloca %struct.UpVal**, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.LClosure*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.Upvaldesc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lua_TValue*, align 8
  store %struct.Proto* %0, %struct.Proto** %5, align 8
  store %struct.UpVal** %1, %struct.UpVal*** %6, align 8
  store %struct.lua_TValue* %2, %struct.lua_TValue** %7, align 8
  %13 = load %struct.Proto*, %struct.Proto** %5, align 8
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i32 0, i32 20
  %15 = load %struct.LClosure*, %struct.LClosure** %14, align 8
  store %struct.LClosure* %15, %struct.LClosure** %8, align 8
  %16 = load %struct.LClosure*, %struct.LClosure** %8, align 8
  %17 = icmp ne %struct.LClosure* %16, null
  br i1 %17, label %18, label %80

; <label>:18:                                     ; preds = %3
  %19 = load %struct.Proto*, %struct.Proto** %5, align 8
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.Proto*, %struct.Proto** %5, align 8
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 19
  %24 = load %struct.Upvaldesc*, %struct.Upvaldesc** %23, align 8
  store %struct.Upvaldesc* %24, %struct.Upvaldesc** %10, align 8
  store i32 0, i32* %11, align 4
  br label %25

; <label>:25:                                     ; preds = %76, %18
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %79

; <label>:29:                                     ; preds = %25
  %30 = load %struct.Upvaldesc*, %struct.Upvaldesc** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %30, i64 %32
  %34 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %33, i32 0, i32 1
  %35 = load i8, i8* %34, align 8
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

; <label>:38:                                     ; preds = %29
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %40 = load %struct.Upvaldesc*, %struct.Upvaldesc** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %40, i64 %42
  %44 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %43, i32 0, i32 2
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i64 %47
  br label %62

; <label>:49:                                     ; preds = %29
  %50 = load %struct.UpVal**, %struct.UpVal*** %6, align 8
  %51 = load %struct.Upvaldesc*, %struct.Upvaldesc** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %51, i64 %53
  %55 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %54, i32 0, i32 2
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds %struct.UpVal*, %struct.UpVal** %50, i64 %57
  %59 = load %struct.UpVal*, %struct.UpVal** %58, align 8
  %60 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %59, i32 0, i32 0
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8
  br label %62

; <label>:62:                                     ; preds = %49, %38
  %63 = phi %struct.lua_TValue* [ %48, %38 ], [ %61, %49 ]
  store %struct.lua_TValue* %63, %struct.lua_TValue** %12, align 8
  %64 = load %struct.LClosure*, %struct.LClosure** %8, align 8
  %65 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %64, i32 0, i32 6
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %65, i64 0, i64 %67
  %69 = load %struct.UpVal*, %struct.UpVal** %68, align 8
  %70 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %69, i32 0, i32 0
  %71 = load %struct.lua_TValue*, %struct.lua_TValue** %70, align 8
  %72 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %73 = icmp ne %struct.lua_TValue* %71, %72
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %62
  store %struct.LClosure* null, %struct.LClosure** %4, align 8
  br label %82

; <label>:75:                                     ; preds = %62
  br label %76

; <label>:76:                                     ; preds = %75
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %25

; <label>:79:                                     ; preds = %25
  br label %80

; <label>:80:                                     ; preds = %79, %3
  %81 = load %struct.LClosure*, %struct.LClosure** %8, align 8
  store %struct.LClosure* %81, %struct.LClosure** %4, align 8
  br label %82

; <label>:82:                                     ; preds = %80, %74
  %83 = load %struct.LClosure*, %struct.LClosure** %4, align 8
  ret %struct.LClosure* %83
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushclosure(%struct.lua_State*, %struct.Proto*, %struct.UpVal**, %struct.lua_TValue*, %struct.lua_TValue*) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.Proto*, align 8
  %8 = alloca %struct.UpVal**, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.Upvaldesc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.LClosure*, align 8
  %15 = alloca %struct.lua_TValue*, align 8
  %16 = alloca %struct.LClosure*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.Proto* %1, %struct.Proto** %7, align 8
  store %struct.UpVal** %2, %struct.UpVal*** %8, align 8
  store %struct.lua_TValue* %3, %struct.lua_TValue** %9, align 8
  store %struct.lua_TValue* %4, %struct.lua_TValue** %10, align 8
  %17 = load %struct.Proto*, %struct.Proto** %7, align 8
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load %struct.Proto*, %struct.Proto** %7, align 8
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 19
  %22 = load %struct.Upvaldesc*, %struct.Upvaldesc** %21, align 8
  store %struct.Upvaldesc* %22, %struct.Upvaldesc** %12, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %23, i32 %24)
  store %struct.LClosure* %25, %struct.LClosure** %14, align 8
  %26 = load %struct.Proto*, %struct.Proto** %7, align 8
  %27 = load %struct.LClosure*, %struct.LClosure** %14, align 8
  %28 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %27, i32 0, i32 5
  store %struct.Proto* %26, %struct.Proto** %28, align 8
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  store %struct.lua_TValue* %29, %struct.lua_TValue** %15, align 8
  %30 = load %struct.LClosure*, %struct.LClosure** %14, align 8
  store %struct.LClosure* %30, %struct.LClosure** %16, align 8
  %31 = load %struct.LClosure*, %struct.LClosure** %16, align 8
  %32 = bitcast %struct.LClosure* %31 to %union.GCUnion*
  %33 = bitcast %union.GCUnion* %32 to %struct.GCObject*
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i32 0, i32 0
  %36 = bitcast %union.Value* %35 to %struct.GCObject**
  store %struct.GCObject* %33, %struct.GCObject** %36, align 8
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %15, align 8
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 1
  store i32 70, i32* %38, align 8
  store i32 0, i32* %13, align 4
  br label %39

; <label>:39:                                     ; preds = %95, %5
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %98

; <label>:43:                                     ; preds = %39
  %44 = load %struct.Upvaldesc*, %struct.Upvaldesc** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %44, i64 %46
  %48 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %47, i32 0, i32 1
  %49 = load i8, i8* %48, align 8
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %69

; <label>:51:                                     ; preds = %43
  %52 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %54 = load %struct.Upvaldesc*, %struct.Upvaldesc** %12, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %54, i64 %56
  %58 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %57, i32 0, i32 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i64 %61
  %63 = call %struct.UpVal* @luaF_findupval(%struct.lua_State* %52, %struct.lua_TValue* %62)
  %64 = load %struct.LClosure*, %struct.LClosure** %14, align 8
  %65 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %64, i32 0, i32 6
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %65, i64 0, i64 %67
  store %struct.UpVal* %63, %struct.UpVal** %68, align 8
  br label %85

; <label>:69:                                     ; preds = %43
  %70 = load %struct.UpVal**, %struct.UpVal*** %8, align 8
  %71 = load %struct.Upvaldesc*, %struct.Upvaldesc** %12, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %71, i64 %73
  %75 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %74, i32 0, i32 2
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds %struct.UpVal*, %struct.UpVal** %70, i64 %77
  %79 = load %struct.UpVal*, %struct.UpVal** %78, align 8
  %80 = load %struct.LClosure*, %struct.LClosure** %14, align 8
  %81 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %80, i32 0, i32 6
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %81, i64 0, i64 %83
  store %struct.UpVal* %79, %struct.UpVal** %84, align 8
  br label %85

; <label>:85:                                     ; preds = %69, %51
  %86 = load %struct.LClosure*, %struct.LClosure** %14, align 8
  %87 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %86, i32 0, i32 6
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %87, i64 0, i64 %89
  %91 = load %struct.UpVal*, %struct.UpVal** %90, align 8
  %92 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %92, align 8
  br label %95

; <label>:95:                                     ; preds = %85
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %39

; <label>:98:                                     ; preds = %39
  %99 = load %struct.Proto*, %struct.Proto** %7, align 8
  %100 = getelementptr inbounds %struct.Proto, %struct.Proto* %99, i32 0, i32 2
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

; <label>:105:                                    ; preds = %98
  %106 = load %struct.LClosure*, %struct.LClosure** %14, align 8
  %107 = load %struct.Proto*, %struct.Proto** %7, align 8
  %108 = getelementptr inbounds %struct.Proto, %struct.Proto* %107, i32 0, i32 20
  store %struct.LClosure* %106, %struct.LClosure** %108, align 8
  br label %109

; <label>:109:                                    ; preds = %105, %98
  ret void
}

declare hidden void @luaD_growstack(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LTintfloat(i64, double) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  store i64 %0, i64* %4, align 8
  store double %1, double* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp sle i64 -9007199254740992, %6
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp sle i64 %9, 9007199254740992
  br i1 %10, label %25, label %11

; <label>:11:                                     ; preds = %8, %2
  %12 = load double, double* %5, align 8
  %13 = fcmp oge double %12, 0x43E0000000000000
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11
  store i32 1, i32* %3, align 4
  br label %31

; <label>:15:                                     ; preds = %11
  %16 = load double, double* %5, align 8
  %17 = fcmp ogt double %16, 0xC3E0000000000000
  br i1 %17, label %18, label %24

; <label>:18:                                     ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = load double, double* %5, align 8
  %21 = fptosi double %20 to i64
  %22 = icmp slt i64 %19, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %31

; <label>:24:                                     ; preds = %15
  store i32 0, i32* %3, align 4
  br label %31

; <label>:25:                                     ; preds = %8
  %26 = load i64, i64* %4, align 8
  %27 = sitofp i64 %26 to double
  %28 = load double, double* %5, align 8
  %29 = fcmp olt double %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %31

; <label>:31:                                     ; preds = %25, %24, %18, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LEintfloat(i64, double) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  store i64 %0, i64* %4, align 8
  store double %1, double* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp sle i64 -9007199254740992, %6
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp sle i64 %9, 9007199254740992
  br i1 %10, label %25, label %11

; <label>:11:                                     ; preds = %8, %2
  %12 = load double, double* %5, align 8
  %13 = fcmp oge double %12, 0x43E0000000000000
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11
  store i32 1, i32* %3, align 4
  br label %31

; <label>:15:                                     ; preds = %11
  %16 = load double, double* %5, align 8
  %17 = fcmp oge double %16, 0xC3E0000000000000
  br i1 %17, label %18, label %24

; <label>:18:                                     ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = load double, double* %5, align 8
  %21 = fptosi double %20 to i64
  %22 = icmp sle i64 %19, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %31

; <label>:24:                                     ; preds = %15
  store i32 0, i32* %3, align 4
  br label %31

; <label>:25:                                     ; preds = %8
  %26 = load i64, i64* %4, align 8
  %27 = sitofp i64 %26 to double
  %28 = load double, double* %5, align 8
  %29 = fcmp ole double %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %31

; <label>:31:                                     ; preds = %25, %24, %18, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8*, i8*) #6

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) #1

declare hidden %struct.UpVal* @luaF_findupval(%struct.lua_State*, %struct.lua_TValue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
