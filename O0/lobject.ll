; ModuleID = 'lobject.c'
source_filename = "lobject.c"
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
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.GCUnion = type { %struct.lua_State }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.BuffFS = type { %struct.lua_State*, i32, i32, [400 x i8] }

@luaO_ceillog2.log_2 = internal constant [256 x i8] c"\00\01\02\02\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08", align 16
@luai_ctype_ = external hidden constant [257 x i8], align 16
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"invalid option '%%%c' to 'lua_pushfstring'\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"[string \22\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\22]\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c".xXnN\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%.14g\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"-0123456789\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaO_int2fb(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 8
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %2, align 4
  br label %36

; <label>:9:                                      ; preds = %1
  br label %10

; <label>:10:                                     ; preds = %13, %9
  %11 = load i32, i32* %3, align 4
  %12 = icmp uge i32 %11, 128
  br i1 %12, label %13, label %19

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = add i32 %14, 15
  %16 = lshr i32 %15, 4
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 4
  store i32 %18, i32* %4, align 4
  br label %10

; <label>:19:                                     ; preds = %10
  br label %20

; <label>:20:                                     ; preds = %23, %19
  %21 = load i32, i32* %3, align 4
  %22 = icmp uge i32 %21, 16
  br i1 %22, label %23, label %29

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, 1
  %26 = lshr i32 %25, 1
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %20

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  %32 = shl i32 %31, 3
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 %33, 8
  %35 = or i32 %32, %34
  store i32 %35, i32* %2, align 4
  br label %36

; <label>:36:                                     ; preds = %29, %7
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaO_fb2int(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 8
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4
  br label %15

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 7
  %10 = add nsw i32 %9, 8
  %11 = load i32, i32* %2, align 4
  %12 = ashr i32 %11, 3
  %13 = sub nsw i32 %12, 1
  %14 = shl i32 %10, %13
  br label %15

; <label>:15:                                     ; preds = %7, %5
  %16 = phi i32 [ %6, %5 ], [ %14, %7 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaO_ceillog2(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = add i32 %4, -1
  store i32 %5, i32* %2, align 4
  br label %6

; <label>:6:                                      ; preds = %9, %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp uge i32 %7, 256
  br i1 %8, label %9, label %14

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 8
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = lshr i32 %12, 8
  store i32 %13, i32* %2, align 4
  br label %6

; <label>:14:                                     ; preds = %6
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %2, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* @luaO_ceillog2.log_2, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = add nsw i32 %15, %20
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaO_rawarith(%struct.lua_State*, i32, %struct.TValue*, %struct.TValue*, %struct.TValue*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  %11 = alloca %struct.TValue*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TValue*, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.TValue*, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.TValue*, align 8
  %21 = alloca %struct.TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TValue* %2, %struct.TValue** %9, align 8
  store %struct.TValue* %3, %struct.TValue** %10, align 8
  store %struct.TValue* %4, %struct.TValue** %11, align 8
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %127 [
    i32 7, label %23
    i32 8, label %23
    i32 9, label %23
    i32 10, label %23
    i32 11, label %23
    i32 13, label %23
    i32 5, label %66
    i32 4, label %66
  ]

; <label>:23:                                     ; preds = %5, %5, %5, %5, %5, %5
  %24 = load %struct.TValue*, %struct.TValue** %9, align 8
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %24, i32 0, i32 1
  %26 = load i8, i8* %25, align 8
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 35
  br i1 %28, label %29, label %34

; <label>:29:                                     ; preds = %23
  %30 = load %struct.TValue*, %struct.TValue** %9, align 8
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %30, i32 0, i32 0
  %32 = bitcast %union.Value* %31 to i64*
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %12, align 8
  br i1 true, label %38, label %65

; <label>:34:                                     ; preds = %23
  %35 = load %struct.TValue*, %struct.TValue** %9, align 8
  %36 = call i32 @luaV_tointegerns(%struct.TValue* %35, i64* %12, i32 0)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %65

; <label>:38:                                     ; preds = %34, %29
  %39 = load %struct.TValue*, %struct.TValue** %10, align 8
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %39, i32 0, i32 1
  %41 = load i8, i8* %40, align 8
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 35
  br i1 %43, label %44, label %49

; <label>:44:                                     ; preds = %38
  %45 = load %struct.TValue*, %struct.TValue** %10, align 8
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i32 0, i32 0
  %47 = bitcast %union.Value* %46 to i64*
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %13, align 8
  br i1 true, label %53, label %65

; <label>:49:                                     ; preds = %38
  %50 = load %struct.TValue*, %struct.TValue** %10, align 8
  %51 = call i32 @luaV_tointegerns(%struct.TValue* %50, i64* %13, i32 0)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

; <label>:53:                                     ; preds = %49, %44
  %54 = load %struct.TValue*, %struct.TValue** %11, align 8
  store %struct.TValue* %54, %struct.TValue** %14, align 8
  %55 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i64 @intarith(%struct.lua_State* %55, i32 %56, i64 %57, i64 %58)
  %60 = load %struct.TValue*, %struct.TValue** %14, align 8
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %60, i32 0, i32 0
  %62 = bitcast %union.Value* %61 to i64*
  store i64 %59, i64* %62, align 8
  %63 = load %struct.TValue*, %struct.TValue** %14, align 8
  %64 = getelementptr inbounds %struct.TValue, %struct.TValue* %63, i32 0, i32 1
  store i8 35, i8* %64, align 8
  store i32 1, i32* %6, align 4
  br label %218

; <label>:65:                                     ; preds = %49, %44, %34, %29
  store i32 0, i32* %6, align 4
  br label %218

; <label>:66:                                     ; preds = %5, %5
  %67 = load %struct.TValue*, %struct.TValue** %9, align 8
  %68 = getelementptr inbounds %struct.TValue, %struct.TValue* %67, i32 0, i32 1
  %69 = load i8, i8* %68, align 8
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 19
  br i1 %71, label %72, label %77

; <label>:72:                                     ; preds = %66
  %73 = load %struct.TValue*, %struct.TValue** %9, align 8
  %74 = getelementptr inbounds %struct.TValue, %struct.TValue* %73, i32 0, i32 0
  %75 = bitcast %union.Value* %74 to double*
  %76 = load double, double* %75, align 8
  store double %76, double* %15, align 8
  br i1 true, label %90, label %126

; <label>:77:                                     ; preds = %66
  %78 = load %struct.TValue*, %struct.TValue** %9, align 8
  %79 = getelementptr inbounds %struct.TValue, %struct.TValue* %78, i32 0, i32 1
  %80 = load i8, i8* %79, align 8
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 35
  br i1 %82, label %83, label %89

; <label>:83:                                     ; preds = %77
  %84 = load %struct.TValue*, %struct.TValue** %9, align 8
  %85 = getelementptr inbounds %struct.TValue, %struct.TValue* %84, i32 0, i32 0
  %86 = bitcast %union.Value* %85 to i64*
  %87 = load i64, i64* %86, align 8
  %88 = sitofp i64 %87 to double
  store double %88, double* %15, align 8
  br i1 true, label %90, label %126

; <label>:89:                                     ; preds = %77
  br i1 false, label %90, label %126

; <label>:90:                                     ; preds = %89, %83, %72
  %91 = load %struct.TValue*, %struct.TValue** %10, align 8
  %92 = getelementptr inbounds %struct.TValue, %struct.TValue* %91, i32 0, i32 1
  %93 = load i8, i8* %92, align 8
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 19
  br i1 %95, label %96, label %101

; <label>:96:                                     ; preds = %90
  %97 = load %struct.TValue*, %struct.TValue** %10, align 8
  %98 = getelementptr inbounds %struct.TValue, %struct.TValue* %97, i32 0, i32 0
  %99 = bitcast %union.Value* %98 to double*
  %100 = load double, double* %99, align 8
  store double %100, double* %16, align 8
  br i1 true, label %114, label %126

; <label>:101:                                    ; preds = %90
  %102 = load %struct.TValue*, %struct.TValue** %10, align 8
  %103 = getelementptr inbounds %struct.TValue, %struct.TValue* %102, i32 0, i32 1
  %104 = load i8, i8* %103, align 8
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %105, 35
  br i1 %106, label %107, label %113

; <label>:107:                                    ; preds = %101
  %108 = load %struct.TValue*, %struct.TValue** %10, align 8
  %109 = getelementptr inbounds %struct.TValue, %struct.TValue* %108, i32 0, i32 0
  %110 = bitcast %union.Value* %109 to i64*
  %111 = load i64, i64* %110, align 8
  %112 = sitofp i64 %111 to double
  store double %112, double* %16, align 8
  br i1 true, label %114, label %126

; <label>:113:                                    ; preds = %101
  br i1 false, label %114, label %126

; <label>:114:                                    ; preds = %113, %107, %96
  %115 = load %struct.TValue*, %struct.TValue** %11, align 8
  store %struct.TValue* %115, %struct.TValue** %17, align 8
  %116 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load double, double* %15, align 8
  %119 = load double, double* %16, align 8
  %120 = call double @numarith(%struct.lua_State* %116, i32 %117, double %118, double %119)
  %121 = load %struct.TValue*, %struct.TValue** %17, align 8
  %122 = getelementptr inbounds %struct.TValue, %struct.TValue* %121, i32 0, i32 0
  %123 = bitcast %union.Value* %122 to double*
  store double %120, double* %123, align 8
  %124 = load %struct.TValue*, %struct.TValue** %17, align 8
  %125 = getelementptr inbounds %struct.TValue, %struct.TValue* %124, i32 0, i32 1
  store i8 19, i8* %125, align 8
  store i32 1, i32* %6, align 4
  br label %218

; <label>:126:                                    ; preds = %113, %107, %96, %89, %83, %72
  store i32 0, i32* %6, align 4
  br label %218

; <label>:127:                                    ; preds = %5
  %128 = load %struct.TValue*, %struct.TValue** %9, align 8
  %129 = getelementptr inbounds %struct.TValue, %struct.TValue* %128, i32 0, i32 1
  %130 = load i8, i8* %129, align 8
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %131, 35
  br i1 %132, label %133, label %157

; <label>:133:                                    ; preds = %127
  %134 = load %struct.TValue*, %struct.TValue** %10, align 8
  %135 = getelementptr inbounds %struct.TValue, %struct.TValue* %134, i32 0, i32 1
  %136 = load i8, i8* %135, align 8
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %137, 35
  br i1 %138, label %139, label %157

; <label>:139:                                    ; preds = %133
  %140 = load %struct.TValue*, %struct.TValue** %11, align 8
  store %struct.TValue* %140, %struct.TValue** %20, align 8
  %141 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.TValue*, %struct.TValue** %9, align 8
  %144 = getelementptr inbounds %struct.TValue, %struct.TValue* %143, i32 0, i32 0
  %145 = bitcast %union.Value* %144 to i64*
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TValue*, %struct.TValue** %10, align 8
  %148 = getelementptr inbounds %struct.TValue, %struct.TValue* %147, i32 0, i32 0
  %149 = bitcast %union.Value* %148 to i64*
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @intarith(%struct.lua_State* %141, i32 %142, i64 %146, i64 %150)
  %152 = load %struct.TValue*, %struct.TValue** %20, align 8
  %153 = getelementptr inbounds %struct.TValue, %struct.TValue* %152, i32 0, i32 0
  %154 = bitcast %union.Value* %153 to i64*
  store i64 %151, i64* %154, align 8
  %155 = load %struct.TValue*, %struct.TValue** %20, align 8
  %156 = getelementptr inbounds %struct.TValue, %struct.TValue* %155, i32 0, i32 1
  store i8 35, i8* %156, align 8
  store i32 1, i32* %6, align 4
  br label %218

; <label>:157:                                    ; preds = %133, %127
  %158 = load %struct.TValue*, %struct.TValue** %9, align 8
  %159 = getelementptr inbounds %struct.TValue, %struct.TValue* %158, i32 0, i32 1
  %160 = load i8, i8* %159, align 8
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %161, 19
  br i1 %162, label %163, label %168

; <label>:163:                                    ; preds = %157
  %164 = load %struct.TValue*, %struct.TValue** %9, align 8
  %165 = getelementptr inbounds %struct.TValue, %struct.TValue* %164, i32 0, i32 0
  %166 = bitcast %union.Value* %165 to double*
  %167 = load double, double* %166, align 8
  store double %167, double* %18, align 8
  br i1 true, label %181, label %217

; <label>:168:                                    ; preds = %157
  %169 = load %struct.TValue*, %struct.TValue** %9, align 8
  %170 = getelementptr inbounds %struct.TValue, %struct.TValue* %169, i32 0, i32 1
  %171 = load i8, i8* %170, align 8
  %172 = zext i8 %171 to i32
  %173 = icmp eq i32 %172, 35
  br i1 %173, label %174, label %180

; <label>:174:                                    ; preds = %168
  %175 = load %struct.TValue*, %struct.TValue** %9, align 8
  %176 = getelementptr inbounds %struct.TValue, %struct.TValue* %175, i32 0, i32 0
  %177 = bitcast %union.Value* %176 to i64*
  %178 = load i64, i64* %177, align 8
  %179 = sitofp i64 %178 to double
  store double %179, double* %18, align 8
  br i1 true, label %181, label %217

; <label>:180:                                    ; preds = %168
  br i1 false, label %181, label %217

; <label>:181:                                    ; preds = %180, %174, %163
  %182 = load %struct.TValue*, %struct.TValue** %10, align 8
  %183 = getelementptr inbounds %struct.TValue, %struct.TValue* %182, i32 0, i32 1
  %184 = load i8, i8* %183, align 8
  %185 = zext i8 %184 to i32
  %186 = icmp eq i32 %185, 19
  br i1 %186, label %187, label %192

; <label>:187:                                    ; preds = %181
  %188 = load %struct.TValue*, %struct.TValue** %10, align 8
  %189 = getelementptr inbounds %struct.TValue, %struct.TValue* %188, i32 0, i32 0
  %190 = bitcast %union.Value* %189 to double*
  %191 = load double, double* %190, align 8
  store double %191, double* %19, align 8
  br i1 true, label %205, label %217

; <label>:192:                                    ; preds = %181
  %193 = load %struct.TValue*, %struct.TValue** %10, align 8
  %194 = getelementptr inbounds %struct.TValue, %struct.TValue* %193, i32 0, i32 1
  %195 = load i8, i8* %194, align 8
  %196 = zext i8 %195 to i32
  %197 = icmp eq i32 %196, 35
  br i1 %197, label %198, label %204

; <label>:198:                                    ; preds = %192
  %199 = load %struct.TValue*, %struct.TValue** %10, align 8
  %200 = getelementptr inbounds %struct.TValue, %struct.TValue* %199, i32 0, i32 0
  %201 = bitcast %union.Value* %200 to i64*
  %202 = load i64, i64* %201, align 8
  %203 = sitofp i64 %202 to double
  store double %203, double* %19, align 8
  br i1 true, label %205, label %217

; <label>:204:                                    ; preds = %192
  br i1 false, label %205, label %217

; <label>:205:                                    ; preds = %204, %198, %187
  %206 = load %struct.TValue*, %struct.TValue** %11, align 8
  store %struct.TValue* %206, %struct.TValue** %21, align 8
  %207 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %208 = load i32, i32* %8, align 4
  %209 = load double, double* %18, align 8
  %210 = load double, double* %19, align 8
  %211 = call double @numarith(%struct.lua_State* %207, i32 %208, double %209, double %210)
  %212 = load %struct.TValue*, %struct.TValue** %21, align 8
  %213 = getelementptr inbounds %struct.TValue, %struct.TValue* %212, i32 0, i32 0
  %214 = bitcast %union.Value* %213 to double*
  store double %211, double* %214, align 8
  %215 = load %struct.TValue*, %struct.TValue** %21, align 8
  %216 = getelementptr inbounds %struct.TValue, %struct.TValue* %215, i32 0, i32 1
  store i8 19, i8* %216, align 8
  store i32 1, i32* %6, align 4
  br label %218

; <label>:217:                                    ; preds = %204, %198, %187, %180, %174, %163
  store i32 0, i32* %6, align 4
  br label %218

; <label>:218:                                    ; preds = %217, %205, %139, %126, %114, %65, %53
  %219 = load i32, i32* %6, align 4
  ret i32 %219
}

declare hidden i32 @luaV_tointegerns(%struct.TValue*, i64*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intarith(%struct.lua_State*, i32, i64, i64) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %60 [
    i32 0, label %11
    i32 1, label %15
    i32 2, label %19
    i32 3, label %23
    i32 6, label %28
    i32 7, label %33
    i32 8, label %37
    i32 9, label %41
    i32 10, label %45
    i32 11, label %49
    i32 12, label %54
    i32 13, label %57
  ]

; <label>:11:                                     ; preds = %4
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %9, align 8
  %14 = add i64 %12, %13
  store i64 %14, i64* %5, align 8
  br label %61

; <label>:15:                                     ; preds = %4
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = sub i64 %16, %17
  store i64 %18, i64* %5, align 8
  br label %61

; <label>:19:                                     ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = mul i64 %20, %21
  store i64 %22, i64* %5, align 8
  br label %61

; <label>:23:                                     ; preds = %4
  %24 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @luaV_mod(%struct.lua_State* %24, i64 %25, i64 %26)
  store i64 %27, i64* %5, align 8
  br label %61

; <label>:28:                                     ; preds = %4
  %29 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @luaV_idiv(%struct.lua_State* %29, i64 %30, i64 %31)
  store i64 %32, i64* %5, align 8
  br label %61

; <label>:33:                                     ; preds = %4
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = and i64 %34, %35
  store i64 %36, i64* %5, align 8
  br label %61

; <label>:37:                                     ; preds = %4
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = or i64 %38, %39
  store i64 %40, i64* %5, align 8
  br label %61

; <label>:41:                                     ; preds = %4
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = xor i64 %42, %43
  store i64 %44, i64* %5, align 8
  br label %61

; <label>:45:                                     ; preds = %4
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @luaV_shiftl(i64 %46, i64 %47)
  store i64 %48, i64* %5, align 8
  br label %61

; <label>:49:                                     ; preds = %4
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = sub nsw i64 0, %51
  %53 = call i64 @luaV_shiftl(i64 %50, i64 %52)
  store i64 %53, i64* %5, align 8
  br label %61

; <label>:54:                                     ; preds = %4
  %55 = load i64, i64* %8, align 8
  %56 = sub i64 0, %55
  store i64 %56, i64* %5, align 8
  br label %61

; <label>:57:                                     ; preds = %4
  %58 = load i64, i64* %8, align 8
  %59 = xor i64 -1, %58
  store i64 %59, i64* %5, align 8
  br label %61

; <label>:60:                                     ; preds = %4
  store i64 0, i64* %5, align 8
  br label %61

; <label>:61:                                     ; preds = %60, %57, %54, %49, %45, %41, %37, %33, %28, %23, %19, %15, %11
  %62 = load i64, i64* %5, align 8
  ret i64 %62
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @numarith(%struct.lua_State*, i32, double, double) #0 {
  %5 = alloca double, align 8
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i32 %1, i32* %7, align 4
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %46 [
    i32 0, label %11
    i32 1, label %15
    i32 2, label %19
    i32 5, label %23
    i32 4, label %27
    i32 6, label %32
    i32 12, label %38
    i32 3, label %41
  ]

; <label>:11:                                     ; preds = %4
  %12 = load double, double* %8, align 8
  %13 = load double, double* %9, align 8
  %14 = fadd double %12, %13
  store double %14, double* %5, align 8
  br label %47

; <label>:15:                                     ; preds = %4
  %16 = load double, double* %8, align 8
  %17 = load double, double* %9, align 8
  %18 = fsub double %16, %17
  store double %18, double* %5, align 8
  br label %47

; <label>:19:                                     ; preds = %4
  %20 = load double, double* %8, align 8
  %21 = load double, double* %9, align 8
  %22 = fmul double %20, %21
  store double %22, double* %5, align 8
  br label %47

; <label>:23:                                     ; preds = %4
  %24 = load double, double* %8, align 8
  %25 = load double, double* %9, align 8
  %26 = fdiv double %24, %25
  store double %26, double* %5, align 8
  br label %47

; <label>:27:                                     ; preds = %4
  %28 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %29 = load double, double* %8, align 8
  %30 = load double, double* %9, align 8
  %31 = call double @pow(double %29, double %30) #5
  store double %31, double* %5, align 8
  br label %47

; <label>:32:                                     ; preds = %4
  %33 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %34 = load double, double* %8, align 8
  %35 = load double, double* %9, align 8
  %36 = fdiv double %34, %35
  %37 = call double @llvm.floor.f64(double %36)
  store double %37, double* %5, align 8
  br label %47

; <label>:38:                                     ; preds = %4
  %39 = load double, double* %8, align 8
  %40 = fsub double -0.000000e+00, %39
  store double %40, double* %5, align 8
  br label %47

; <label>:41:                                     ; preds = %4
  %42 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %43 = load double, double* %8, align 8
  %44 = load double, double* %9, align 8
  %45 = call double @luaV_modf(%struct.lua_State* %42, double %43, double %44)
  store double %45, double* %5, align 8
  br label %47

; <label>:46:                                     ; preds = %4
  store double 0.000000e+00, double* %5, align 8
  br label %47

; <label>:47:                                     ; preds = %46, %41, %38, %32, %27, %23, %19, %15, %11
  %48 = load double, double* %5, align 8
  ret double %48
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaO_arith(%struct.lua_State*, i32, %struct.TValue*, %struct.TValue*, %union.StackValue*) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %union.StackValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TValue* %2, %struct.TValue** %8, align 8
  store %struct.TValue* %3, %struct.TValue** %9, align 8
  store %union.StackValue* %4, %union.StackValue** %10, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TValue*, %struct.TValue** %8, align 8
  %14 = load %struct.TValue*, %struct.TValue** %9, align 8
  %15 = load %union.StackValue*, %union.StackValue** %10, align 8
  %16 = bitcast %union.StackValue* %15 to %struct.TValue*
  %17 = call i32 @luaO_rawarith(%struct.lua_State* %11, i32 %12, %struct.TValue* %13, %struct.TValue* %14, %struct.TValue* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

; <label>:19:                                     ; preds = %5
  %20 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %21 = load %struct.TValue*, %struct.TValue** %8, align 8
  %22 = load %struct.TValue*, %struct.TValue** %9, align 8
  %23 = load %union.StackValue*, %union.StackValue** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 0
  %26 = add nsw i32 %25, 6
  call void @luaT_trybinTM(%struct.lua_State* %20, %struct.TValue* %21, %struct.TValue* %22, %union.StackValue* %23, i32 %26)
  br label %27

; <label>:27:                                     ; preds = %19, %5
  ret void
}

declare hidden void @luaT_trybinTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaO_hexavalue(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = add nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %6
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 2
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %13, 48
  store i32 %14, i32* %2, align 4
  br label %20

; <label>:15:                                     ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, 32
  %18 = sub nsw i32 %17, 97
  %19 = add nsw i32 %18, 10
  store i32 %19, i32* %2, align 4
  br label %20

; <label>:20:                                     ; preds = %15, %12
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @luaO_str2num(i8*, %struct.TValue*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TValue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TValue*, align 8
  %10 = alloca %struct.TValue*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TValue* %1, %struct.TValue** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @l_str2int(i8* %11, i64* %6)
  store i8* %12, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %22

; <label>:14:                                     ; preds = %2
  %15 = load %struct.TValue*, %struct.TValue** %5, align 8
  store %struct.TValue* %15, %struct.TValue** %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.TValue*, %struct.TValue** %9, align 8
  %18 = getelementptr inbounds %struct.TValue, %struct.TValue* %17, i32 0, i32 0
  %19 = bitcast %union.Value* %18 to i64*
  store i64 %16, i64* %19, align 8
  %20 = load %struct.TValue*, %struct.TValue** %9, align 8
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %20, i32 0, i32 1
  store i8 35, i8* %21, align 8
  br label %36

; <label>:22:                                     ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @l_str2d(i8* %23, double* %7)
  store i8* %24, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

; <label>:26:                                     ; preds = %22
  %27 = load %struct.TValue*, %struct.TValue** %5, align 8
  store %struct.TValue* %27, %struct.TValue** %10, align 8
  %28 = load double, double* %7, align 8
  %29 = load %struct.TValue*, %struct.TValue** %10, align 8
  %30 = getelementptr inbounds %struct.TValue, %struct.TValue* %29, i32 0, i32 0
  %31 = bitcast %union.Value* %30 to double*
  store double %28, double* %31, align 8
  %32 = load %struct.TValue*, %struct.TValue** %10, align 8
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %32, i32 0, i32 1
  store i8 19, i8* %33, align 8
  br label %35

; <label>:34:                                     ; preds = %22
  store i64 0, i64* %3, align 8
  br label %43

; <label>:35:                                     ; preds = %26
  br label %36

; <label>:36:                                     ; preds = %35, %14
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %3, align 8
  br label %43

; <label>:43:                                     ; preds = %36, %34
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @l_str2int(i8*, i64*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %6, align 8
  store i32 1, i32* %7, align 4
  br label %10

; <label>:10:                                     ; preds = %21, %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %10
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  br label %10

; <label>:24:                                     ; preds = %10
  %25 = call i32 @isneg(i8** %4)
  store i32 %25, i32* %8, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 48
  br i1 %30, label %31, label %70

; <label>:31:                                     ; preds = %24
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 120
  br i1 %36, label %43, label %37

; <label>:37:                                     ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 88
  br i1 %42, label %43, label %70

; <label>:43:                                     ; preds = %37, %31
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  store i8* %45, i8** %4, align 8
  br label %46

; <label>:46:                                     ; preds = %66, %43
  %47 = load i8*, i8** %4, align 8
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 16
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

; <label>:57:                                     ; preds = %46
  %58 = load i64, i64* %6, align 8
  %59 = mul i64 %58, 16
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = call i32 @luaO_hexavalue(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = add i64 %59, %64
  store i64 %65, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %66

; <label>:66:                                     ; preds = %57
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %4, align 8
  br label %46

; <label>:69:                                     ; preds = %46
  br label %108

; <label>:70:                                     ; preds = %37, %24
  br label %71

; <label>:71:                                     ; preds = %104, %70
  %72 = load i8*, i8** %4, align 8
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %79, 2
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %107

; <label>:82:                                     ; preds = %71
  %83 = load i8*, i8** %4, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = sub nsw i32 %85, 48
  store i32 %86, i32* %9, align 4
  %87 = load i64, i64* %6, align 8
  %88 = icmp uge i64 %87, 922337203685477580
  br i1 %88, label %89, label %98

; <label>:89:                                     ; preds = %82
  %90 = load i64, i64* %6, align 8
  %91 = icmp ugt i64 %90, 922337203685477580
  br i1 %91, label %97, label %92

; <label>:92:                                     ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 7, %94
  %96 = icmp sgt i32 %93, %95
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %92, %89
  store i8* null, i8** %3, align 8
  br label %144

; <label>:98:                                     ; preds = %92, %82
  %99 = load i64, i64* %6, align 8
  %100 = mul i64 %99, 10
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %100, %102
  store i64 %103, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %104

; <label>:104:                                    ; preds = %98
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %4, align 8
  br label %71

; <label>:107:                                    ; preds = %71
  br label %108

; <label>:108:                                    ; preds = %107, %69
  br label %109

; <label>:109:                                    ; preds = %120, %108
  %110 = load i8*, i8** %4, align 8
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

; <label>:120:                                    ; preds = %109
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %4, align 8
  br label %109

; <label>:123:                                    ; preds = %109
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

; <label>:126:                                    ; preds = %123
  %127 = load i8*, i8** %4, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

; <label>:131:                                    ; preds = %126, %123
  store i8* null, i8** %3, align 8
  br label %144

; <label>:132:                                    ; preds = %126
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

; <label>:135:                                    ; preds = %132
  %136 = load i64, i64* %6, align 8
  %137 = sub i64 0, %136
  br label %140

; <label>:138:                                    ; preds = %132
  %139 = load i64, i64* %6, align 8
  br label %140

; <label>:140:                                    ; preds = %138, %135
  %141 = phi i64 [ %137, %135 ], [ %139, %138 ]
  %142 = load i64*, i64** %5, align 8
  store i64 %141, i64* %142, align 8
  %143 = load i8*, i8** %4, align 8
  store i8* %143, i8** %3, align 8
  br label %144

; <label>:144:                                    ; preds = %140, %131, %97
  %145 = load i8*, i8** %3, align 8
  ret i8* %145
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @l_str2d(i8*, double*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [201 x i8], align 16
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store double* %1, double** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strpbrk(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)) #8
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %20

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %18, 32
  br label %21

; <label>:20:                                     ; preds = %2
  br label %21

; <label>:21:                                     ; preds = %20, %15
  %22 = phi i32 [ %19, %15 ], [ 0, %20 ]
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 110
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %21
  store i8* null, i8** %3, align 8
  br label %75

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = load double*, double** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @l_str2dloc(i8* %27, double* %28, i32 %29)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %73

; <label>:33:                                     ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = call i8* @strchr(i8* %34, i32 46) #8
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @strlen(i8* %36) #8
  %38 = icmp ugt i64 %37, 200
  br i1 %38, label %42, label %39

; <label>:39:                                     ; preds = %33
  %40 = load i8*, i8** %10, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39, %33
  store i8* null, i8** %3, align 8
  br label %75

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds [201 x i8], [201 x i8]* %9, i32 0, i32 0
  %45 = load i8*, i8** %4, align 8
  %46 = call i8* @strcpy(i8* %44, i8* %45) #5
  %47 = call %struct.lconv* @localeconv() #5
  %48 = getelementptr inbounds %struct.lconv, %struct.lconv* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = getelementptr inbounds [201 x i8], [201 x i8]* %9, i64 0, i64 %56
  store i8 %51, i8* %57, align 1
  %58 = getelementptr inbounds [201 x i8], [201 x i8]* %9, i32 0, i32 0
  %59 = load double*, double** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i8* @l_str2dloc(i8* %58, double* %59, i32 %60)
  store i8* %61, i8** %6, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %72

; <label>:64:                                     ; preds = %43
  %65 = load i8*, i8** %4, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds [201 x i8], [201 x i8]* %9, i32 0, i32 0
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = getelementptr inbounds i8, i8* %65, i64 %70
  store i8* %71, i8** %6, align 8
  br label %72

; <label>:72:                                     ; preds = %64, %43
  br label %73

; <label>:73:                                     ; preds = %72, %26
  %74 = load i8*, i8** %6, align 8
  store i8* %74, i8** %3, align 8
  br label %75

; <label>:75:                                     ; preds = %73, %42, %25
  %76 = load i8*, i8** %3, align 8
  ret i8* %76
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden i32 @luaO_utf8esc(i8*, i64) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 1, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = icmp ult i64 %7, 128
  br i1 %8, label %9, label %14

; <label>:9:                                      ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = trunc i64 %10 to i8
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 7
  store i8 %11, i8* %13, align 1
  br label %48

; <label>:14:                                     ; preds = %2
  store i32 63, i32* %6, align 4
  br label %15

; <label>:15:                                     ; preds = %30, %14
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, 63
  %18 = or i64 128, %17
  %19 = trunc i64 %18 to i8
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = sub nsw i32 8, %21
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  store i8 %19, i8* %25, align 1
  %26 = load i64, i64* %4, align 8
  %27 = lshr i64 %26, 6
  store i64 %27, i64* %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = lshr i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %30

; <label>:30:                                     ; preds = %15
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = icmp ugt i64 %31, %33
  br i1 %34, label %15, label %35

; <label>:35:                                     ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = xor i32 %36, -1
  %38 = shl i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* %4, align 8
  %41 = or i64 %39, %40
  %42 = trunc i64 %41 to i8
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 8, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 %42, i8* %47, align 1
  br label %48

; <label>:48:                                     ; preds = %35, %9
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaO_tostring(%struct.lua_State*, %struct.TValue*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.TValue*, align 8
  %5 = alloca [50 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca %struct.TValue*, align 8
  %8 = alloca %struct.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.TValue* %1, %struct.TValue** %4, align 8
  %9 = load %struct.TValue*, %struct.TValue** %4, align 8
  %10 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i32 0, i32 0
  %11 = call i64 @tostringbuff(%struct.TValue* %9, i8* %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.TValue*, %struct.TValue** %4, align 8
  store %struct.TValue* %12, %struct.TValue** %7, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i32 0, i32 0
  %15 = load i64, i64* %6, align 8
  %16 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %13, i8* %14, i64 %15)
  store %struct.TString* %16, %struct.TString** %8, align 8
  %17 = load %struct.TString*, %struct.TString** %8, align 8
  %18 = bitcast %struct.TString* %17 to %union.GCUnion*
  %19 = bitcast %union.GCUnion* %18 to %struct.GCObject*
  %20 = load %struct.TValue*, %struct.TValue** %7, align 8
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %20, i32 0, i32 0
  %22 = bitcast %union.Value* %21 to %struct.GCObject**
  store %struct.GCObject* %19, %struct.GCObject** %22, align 8
  %23 = load %struct.TString*, %struct.TString** %8, align 8
  %24 = getelementptr inbounds %struct.TString, %struct.TString* %23, i32 0, i32 1
  %25 = load i8, i8* %24, align 8
  %26 = zext i8 %25 to i32
  %27 = or i32 %26, 64
  %28 = trunc i32 %27 to i8
  %29 = load %struct.TValue*, %struct.TValue** %7, align 8
  %30 = getelementptr inbounds %struct.TValue, %struct.TValue* %29, i32 0, i32 1
  store i8 %28, i8* %30, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tostringbuff(%struct.TValue*, i8*) #0 {
  %3 = alloca %struct.TValue*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.TValue* %0, %struct.TValue** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TValue*, %struct.TValue** %3, align 8
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i32 0, i32 1
  %8 = load i8, i8* %7, align 8
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 35
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.TValue*, %struct.TValue** %3, align 8
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %13, i32 0, i32 0
  %15 = bitcast %union.Value* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %12, i64 50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i64 %16) #5
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %5, align 8
  br label %49

; <label>:19:                                     ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.TValue*, %struct.TValue** %3, align 8
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %21, i32 0, i32 0
  %23 = bitcast %union.Value* %22 to double*
  %24 = load double, double* %23, align 8
  %25 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %20, i64 50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), double %24) #5
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %5, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @strspn(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)) #8
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %48

; <label>:34:                                     ; preds = %19
  %35 = call %struct.lconv* @localeconv() #5
  %36 = getelementptr inbounds %struct.lconv, %struct.lconv* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %5, align 8
  %43 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 %39, i8* %43, align 1
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  %47 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 48, i8* %47, align 1
  br label %48

; <label>:48:                                     ; preds = %34, %19
  br label %49

; <label>:49:                                     ; preds = %48, %11
  %50 = load i64, i64* %5, align 8
  ret i64 %50
}

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca %struct.BuffFS, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.TValue, align 8
  %12 = alloca %struct.TValue*, align 8
  %13 = alloca %struct.TValue, align 8
  %14 = alloca %struct.TValue*, align 8
  %15 = alloca %struct.TValue, align 8
  %16 = alloca %struct.TValue*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [8 x i8], align 1
  %22 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  %23 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %7, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %7, i32 0, i32 1
  store i32 0, i32* %24, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %26 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %7, i32 0, i32 0
  store %struct.lua_State* %25, %struct.lua_State** %26, align 8
  br label %27

; <label>:27:                                     ; preds = %224, %3
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strchr(i8* %28, i32 37) #8
  store i8* %29, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %227

; <label>:31:                                     ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  call void @addstr2buff(%struct.BuffFS* %7, i8* %32, i64 %37)
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %218 [
    i32 115, label %42
    i32 99, label %68
    i32 100, label %88
    i32 73, label %113
    i32 102, label %137
    i32 112, label %161
    i32 85, label %188
    i32 37, label %217
  ]

; <label>:42:                                     ; preds = %31
  %43 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %44 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ule i32 %45, 40
  br i1 %46, label %47, label %53

; <label>:47:                                     ; preds = %42
  %48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %43, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr i8, i8* %49, i32 %45
  %51 = bitcast i8* %50 to i8**
  %52 = add i32 %45, 8
  store i32 %52, i32* %44, align 8
  br label %58

; <label>:53:                                     ; preds = %42
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %43, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast i8* %55 to i8**
  %57 = getelementptr i8, i8* %55, i32 8
  store i8* %57, i8** %54, align 8
  br label %58

; <label>:58:                                     ; preds = %53, %47
  %59 = phi i8** [ %51, %47 ], [ %56, %53 ]
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %9, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %58
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** %9, align 8
  br label %64

; <label>:64:                                     ; preds = %63, %58
  %65 = load i8*, i8** %9, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = call i64 @strlen(i8* %66) #8
  call void @addstr2buff(%struct.BuffFS* %7, i8* %65, i64 %67)
  br label %224

; <label>:68:                                     ; preds = %31
  %69 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %70 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ule i32 %71, 40
  br i1 %72, label %73, label %79

; <label>:73:                                     ; preds = %68
  %74 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %69, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr i8, i8* %75, i32 %71
  %77 = bitcast i8* %76 to i32*
  %78 = add i32 %71, 8
  store i32 %78, i32* %70, align 8
  br label %84

; <label>:79:                                     ; preds = %68
  %80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %69, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = getelementptr i8, i8* %81, i32 8
  store i8* %83, i8** %80, align 8
  br label %84

; <label>:84:                                     ; preds = %79, %73
  %85 = phi i32* [ %77, %73 ], [ %82, %79 ]
  %86 = load i32, i32* %85, align 4
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %10, align 1
  call void @addstr2buff(%struct.BuffFS* %7, i8* %10, i64 1)
  br label %224

; <label>:88:                                     ; preds = %31
  store %struct.TValue* %11, %struct.TValue** %12, align 8
  %89 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %90 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ule i32 %91, 40
  br i1 %92, label %93, label %99

; <label>:93:                                     ; preds = %88
  %94 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %89, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr i8, i8* %95, i32 %91
  %97 = bitcast i8* %96 to i32*
  %98 = add i32 %91, 8
  store i32 %98, i32* %90, align 8
  br label %104

; <label>:99:                                     ; preds = %88
  %100 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %89, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = getelementptr i8, i8* %101, i32 8
  store i8* %103, i8** %100, align 8
  br label %104

; <label>:104:                                    ; preds = %99, %93
  %105 = phi i32* [ %97, %93 ], [ %102, %99 ]
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = load %struct.TValue*, %struct.TValue** %12, align 8
  %109 = getelementptr inbounds %struct.TValue, %struct.TValue* %108, i32 0, i32 0
  %110 = bitcast %union.Value* %109 to i64*
  store i64 %107, i64* %110, align 8
  %111 = load %struct.TValue*, %struct.TValue** %12, align 8
  %112 = getelementptr inbounds %struct.TValue, %struct.TValue* %111, i32 0, i32 1
  store i8 35, i8* %112, align 8
  call void @addnum2buff(%struct.BuffFS* %7, %struct.TValue* %11)
  br label %224

; <label>:113:                                    ; preds = %31
  store %struct.TValue* %13, %struct.TValue** %14, align 8
  %114 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %115 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ule i32 %116, 40
  br i1 %117, label %118, label %124

; <label>:118:                                    ; preds = %113
  %119 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %114, i32 0, i32 3
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr i8, i8* %120, i32 %116
  %122 = bitcast i8* %121 to i64*
  %123 = add i32 %116, 8
  store i32 %123, i32* %115, align 8
  br label %129

; <label>:124:                                    ; preds = %113
  %125 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %114, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = bitcast i8* %126 to i64*
  %128 = getelementptr i8, i8* %126, i32 8
  store i8* %128, i8** %125, align 8
  br label %129

; <label>:129:                                    ; preds = %124, %118
  %130 = phi i64* [ %122, %118 ], [ %127, %124 ]
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TValue*, %struct.TValue** %14, align 8
  %133 = getelementptr inbounds %struct.TValue, %struct.TValue* %132, i32 0, i32 0
  %134 = bitcast %union.Value* %133 to i64*
  store i64 %131, i64* %134, align 8
  %135 = load %struct.TValue*, %struct.TValue** %14, align 8
  %136 = getelementptr inbounds %struct.TValue, %struct.TValue* %135, i32 0, i32 1
  store i8 35, i8* %136, align 8
  call void @addnum2buff(%struct.BuffFS* %7, %struct.TValue* %13)
  br label %224

; <label>:137:                                    ; preds = %31
  store %struct.TValue* %15, %struct.TValue** %16, align 8
  %138 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %139 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp ule i32 %140, 160
  br i1 %141, label %142, label %148

; <label>:142:                                    ; preds = %137
  %143 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %138, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr i8, i8* %144, i32 %140
  %146 = bitcast i8* %145 to double*
  %147 = add i32 %140, 16
  store i32 %147, i32* %139, align 4
  br label %153

; <label>:148:                                    ; preds = %137
  %149 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %138, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = bitcast i8* %150 to double*
  %152 = getelementptr i8, i8* %150, i32 8
  store i8* %152, i8** %149, align 8
  br label %153

; <label>:153:                                    ; preds = %148, %142
  %154 = phi double* [ %146, %142 ], [ %151, %148 ]
  %155 = load double, double* %154, align 8
  %156 = load %struct.TValue*, %struct.TValue** %16, align 8
  %157 = getelementptr inbounds %struct.TValue, %struct.TValue* %156, i32 0, i32 0
  %158 = bitcast %union.Value* %157 to double*
  store double %155, double* %158, align 8
  %159 = load %struct.TValue*, %struct.TValue** %16, align 8
  %160 = getelementptr inbounds %struct.TValue, %struct.TValue* %159, i32 0, i32 1
  store i8 19, i8* %160, align 8
  call void @addnum2buff(%struct.BuffFS* %7, %struct.TValue* %15)
  br label %224

; <label>:161:                                    ; preds = %31
  store i32 32, i32* %17, align 4
  %162 = call i8* @getbuff(%struct.BuffFS* %7, i64 32)
  store i8* %162, i8** %18, align 8
  %163 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %164 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ule i32 %165, 40
  br i1 %166, label %167, label %173

; <label>:167:                                    ; preds = %161
  %168 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %163, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr i8, i8* %169, i32 %165
  %171 = bitcast i8* %170 to i8**
  %172 = add i32 %165, 8
  store i32 %172, i32* %164, align 8
  br label %178

; <label>:173:                                    ; preds = %161
  %174 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %163, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  %176 = bitcast i8* %175 to i8**
  %177 = getelementptr i8, i8* %175, i32 8
  store i8* %177, i8** %174, align 8
  br label %178

; <label>:178:                                    ; preds = %173, %167
  %179 = phi i8** [ %171, %167 ], [ %176, %173 ]
  %180 = load i8*, i8** %179, align 8
  store i8* %180, i8** %19, align 8
  %181 = load i8*, i8** %18, align 8
  %182 = load i8*, i8** %19, align 8
  %183 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %181, i64 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %182) #5
  store i32 %183, i32* %20, align 4
  %184 = load i32, i32* %20, align 4
  %185 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %7, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, %184
  store i32 %187, i32* %185, align 4
  br label %224

; <label>:188:                                    ; preds = %31
  %189 = getelementptr inbounds [8 x i8], [8 x i8]* %21, i32 0, i32 0
  %190 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %191 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ule i32 %192, 40
  br i1 %193, label %194, label %200

; <label>:194:                                    ; preds = %188
  %195 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %190, i32 0, i32 3
  %196 = load i8*, i8** %195, align 8
  %197 = getelementptr i8, i8* %196, i32 %192
  %198 = bitcast i8* %197 to i64*
  %199 = add i32 %192, 8
  store i32 %199, i32* %191, align 8
  br label %205

; <label>:200:                                    ; preds = %188
  %201 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %190, i32 0, i32 2
  %202 = load i8*, i8** %201, align 8
  %203 = bitcast i8* %202 to i64*
  %204 = getelementptr i8, i8* %202, i32 8
  store i8* %204, i8** %201, align 8
  br label %205

; <label>:205:                                    ; preds = %200, %194
  %206 = phi i64* [ %198, %194 ], [ %203, %200 ]
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @luaO_utf8esc(i8* %189, i64 %207)
  store i32 %208, i32* %22, align 4
  %209 = getelementptr inbounds [8 x i8], [8 x i8]* %21, i32 0, i32 0
  %210 = getelementptr inbounds i8, i8* %209, i64 8
  %211 = load i32, i32* %22, align 4
  %212 = sext i32 %211 to i64
  %213 = sub i64 0, %212
  %214 = getelementptr inbounds i8, i8* %210, i64 %213
  %215 = load i32, i32* %22, align 4
  %216 = sext i32 %215 to i64
  call void @addstr2buff(%struct.BuffFS* %7, i8* %214, i64 %216)
  br label %224

; <label>:217:                                    ; preds = %31
  call void @addstr2buff(%struct.BuffFS* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i64 1)
  br label %224

; <label>:218:                                    ; preds = %31
  %219 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %220 = load i8*, i8** %8, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 1
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %219, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0), i32 %223) #9
  unreachable

; <label>:224:                                    ; preds = %217, %205, %178, %153, %129, %104, %84, %64
  %225 = load i8*, i8** %8, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 2
  store i8* %226, i8** %5, align 8
  br label %27

; <label>:227:                                    ; preds = %27
  %228 = load i8*, i8** %5, align 8
  %229 = load i8*, i8** %5, align 8
  %230 = call i64 @strlen(i8* %229) #8
  call void @addstr2buff(%struct.BuffFS* %7, i8* %228, i64 %230)
  call void @clearbuff(%struct.BuffFS* %7)
  %231 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %7, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = icmp sgt i32 %232, 1
  br i1 %233, label %234, label %238

; <label>:234:                                    ; preds = %227
  %235 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %236 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %7, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  call void @luaV_concat(%struct.lua_State* %235, i32 %237)
  br label %238

; <label>:238:                                    ; preds = %234, %227
  %239 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %240 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %239, i32 0, i32 6
  %241 = load %union.StackValue*, %union.StackValue** %240, align 8
  %242 = getelementptr inbounds %union.StackValue, %union.StackValue* %241, i64 -1
  %243 = bitcast %union.StackValue* %242 to %struct.TValue*
  %244 = getelementptr inbounds %struct.TValue, %struct.TValue* %243, i32 0, i32 0
  %245 = bitcast %union.Value* %244 to %struct.GCObject**
  %246 = load %struct.GCObject*, %struct.GCObject** %245, align 8
  %247 = bitcast %struct.GCObject* %246 to %union.GCUnion*
  %248 = bitcast %union.GCUnion* %247 to %struct.TString*
  %249 = bitcast %struct.TString* %248 to i8*
  %250 = getelementptr inbounds i8, i8* %249, i64 24
  ret i8* %250
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addstr2buff(%struct.BuffFS*, i8*, i64) #0 {
  %4 = alloca %struct.BuffFS*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.BuffFS* %0, %struct.BuffFS** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ule i64 %8, 400
  br i1 %9, label %10, label %24

; <label>:10:                                     ; preds = %3
  %11 = load %struct.BuffFS*, %struct.BuffFS** %4, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i8* @getbuff(%struct.BuffFS* %11, i64 %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %6, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 %16, i32 1, i1 false)
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.BuffFS*, %struct.BuffFS** %4, align 8
  %19 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  br label %29

; <label>:24:                                     ; preds = %3
  %25 = load %struct.BuffFS*, %struct.BuffFS** %4, align 8
  call void @clearbuff(%struct.BuffFS* %25)
  %26 = load %struct.BuffFS*, %struct.BuffFS** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %6, align 8
  call void @pushstr(%struct.BuffFS* %26, i8* %27, i64 %28)
  br label %29

; <label>:29:                                     ; preds = %24, %10
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addnum2buff(%struct.BuffFS*, %struct.TValue*) #0 {
  %3 = alloca %struct.BuffFS*, align 8
  %4 = alloca %struct.TValue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.BuffFS* %0, %struct.BuffFS** %3, align 8
  store %struct.TValue* %1, %struct.TValue** %4, align 8
  %7 = load %struct.BuffFS*, %struct.BuffFS** %3, align 8
  %8 = call i8* @getbuff(%struct.BuffFS* %7, i64 50)
  store i8* %8, i8** %5, align 8
  %9 = load %struct.TValue*, %struct.TValue** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @tostringbuff(%struct.TValue* %9, i8* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.BuffFS*, %struct.BuffFS** %3, align 8
  %14 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, %12
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %14, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getbuff(%struct.BuffFS*, i64) #0 {
  %3 = alloca %struct.BuffFS*, align 8
  %4 = alloca i64, align 8
  store %struct.BuffFS* %0, %struct.BuffFS** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.BuffFS*, %struct.BuffFS** %3, align 8
  %7 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = sub i64 400, %9
  %11 = icmp ugt i64 %5, %10
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %2
  %13 = load %struct.BuffFS*, %struct.BuffFS** %3, align 8
  call void @clearbuff(%struct.BuffFS* %13)
  br label %14

; <label>:14:                                     ; preds = %12, %2
  %15 = load %struct.BuffFS*, %struct.BuffFS** %3, align 8
  %16 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %15, i32 0, i32 3
  %17 = getelementptr inbounds [400 x i8], [400 x i8]* %16, i32 0, i32 0
  %18 = load %struct.BuffFS*, %struct.BuffFS** %3, align 8
  %19 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %17, i64 %21
  ret i8* %22
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clearbuff(%struct.BuffFS*) #0 {
  %2 = alloca %struct.BuffFS*, align 8
  store %struct.BuffFS* %0, %struct.BuffFS** %2, align 8
  %3 = load %struct.BuffFS*, %struct.BuffFS** %2, align 8
  %4 = load %struct.BuffFS*, %struct.BuffFS** %2, align 8
  %5 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i32 0, i32 3
  %6 = getelementptr inbounds [400 x i8], [400 x i8]* %5, i32 0, i32 0
  %7 = load %struct.BuffFS*, %struct.BuffFS** %2, align 8
  %8 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  call void @pushstr(%struct.BuffFS* %3, i8* %6, i64 %10)
  %11 = load %struct.BuffFS*, %struct.BuffFS** %2, align 8
  %12 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %11, i32 0, i32 2
  store i32 0, i32* %12, align 4
  ret void
}

declare hidden void @luaV_concat(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_start(i8* %8)
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0
  %12 = call i8* @luaO_pushvfstring(%struct.lua_State* %9, i8* %10, %struct.__va_list_tag* %11)
  store i8* %12, i8** %5, align 8
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0
  %14 = bitcast %struct.__va_list_tag* %13 to i8*
  call void @llvm.va_end(i8* %14)
  %15 = load i8*, i8** %5, align 8
  ret i8* %15
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @luaO_chunkid(i8*, i8*, i64) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 60, i64* %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 61
  br i1 %12, label %13, label %36

; <label>:13:                                     ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i64, i64* %6, align 8
  %22 = mul i64 %21, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %20, i64 %22, i32 1, i1 false)
  br label %35

; <label>:23:                                     ; preds = %13
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i64, i64* %7, align 8
  %28 = sub i64 %27, 1
  %29 = mul i64 %28, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %26, i64 %29, i32 1, i1 false)
  %30 = load i64, i64* %7, align 8
  %31 = sub i64 %30, 1
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 %31
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  store i8 0, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %23, %17
  br label %119

; <label>:36:                                     ; preds = %3
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 64
  br i1 %40, label %41, label %68

; <label>:41:                                     ; preds = %36
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ule i64 %42, %43
  br i1 %44, label %45, label %51

; <label>:45:                                     ; preds = %41
  %46 = load i8*, i8** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i64, i64* %6, align 8
  %50 = mul i64 %49, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %48, i64 %50, i32 1, i1 false)
  br label %67

; <label>:51:                                     ; preds = %41
  %52 = load i8*, i8** %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 3, i32 1, i1 false)
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 3
  store i8* %54, i8** %4, align 8
  %55 = load i64, i64* %7, align 8
  %56 = sub i64 %55, 3
  store i64 %56, i64* %7, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i64, i64* %7, align 8
  %63 = sub i64 0, %62
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i64, i64* %7, align 8
  %66 = mul i64 %65, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %64, i64 %66, i32 1, i1 false)
  br label %67

; <label>:67:                                     ; preds = %51, %45
  br label %118

; <label>:68:                                     ; preds = %36
  %69 = load i8*, i8** %5, align 8
  %70 = call i8* @strchr(i8* %69, i32 10) #8
  store i8* %70, i8** %8, align 8
  %71 = load i8*, i8** %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i64 9, i32 1, i1 false)
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 9
  store i8* %73, i8** %4, align 8
  %74 = load i64, i64* %7, align 8
  %75 = sub i64 %74, 15
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %90

; <label>:79:                                     ; preds = %68
  %80 = load i8*, i8** %8, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %90

; <label>:82:                                     ; preds = %79
  %83 = load i8*, i8** %4, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = mul i64 %85, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %84, i64 %86, i32 1, i1 false)
  %87 = load i64, i64* %6, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 %87
  store i8* %89, i8** %4, align 8
  br label %116

; <label>:90:                                     ; preds = %79, %68
  %91 = load i8*, i8** %8, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %99

; <label>:93:                                     ; preds = %90
  %94 = load i8*, i8** %8, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  store i64 %98, i64* %6, align 8
  br label %99

; <label>:99:                                     ; preds = %93, %90
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* %7, align 8
  %102 = icmp ugt i64 %100, %101
  br i1 %102, label %103, label %105

; <label>:103:                                    ; preds = %99
  %104 = load i64, i64* %7, align 8
  store i64 %104, i64* %6, align 8
  br label %105

; <label>:105:                                    ; preds = %103, %99
  %106 = load i8*, i8** %4, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = load i64, i64* %6, align 8
  %109 = mul i64 %108, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 %109, i32 1, i1 false)
  %110 = load i64, i64* %6, align 8
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 %110
  store i8* %112, i8** %4, align 8
  %113 = load i8*, i8** %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 3, i32 1, i1 false)
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 3
  store i8* %115, i8** %4, align 8
  br label %116

; <label>:116:                                    ; preds = %105, %82
  %117 = load i8*, i8** %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i64 3, i32 1, i1 false)
  br label %118

; <label>:118:                                    ; preds = %116, %67
  br label %119

; <label>:119:                                    ; preds = %118, %35
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

declare hidden i64 @luaV_mod(%struct.lua_State*, i64, i64) #1

declare hidden i64 @luaV_idiv(%struct.lua_State*, i64, i64) #1

declare hidden i64 @luaV_shiftl(i64, i64) #1

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #7

declare hidden double @luaV_modf(%struct.lua_State*, double, double) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isneg(i8**) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  %4 = load i8**, i8*** %3, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 45
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %1
  %10 = load i8**, i8*** %3, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %10, align 8
  store i32 1, i32* %2, align 4
  br label %25

; <label>:13:                                     ; preds = %1
  %14 = load i8**, i8*** %3, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 43
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %13
  %20 = load i8**, i8*** %3, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %20, align 8
  br label %23

; <label>:23:                                     ; preds = %19, %13
  br label %24

; <label>:24:                                     ; preds = %23
  store i32 0, i32* %2, align 4
  br label %25

; <label>:25:                                     ; preds = %24, %9
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @l_str2dloc(i8*, double*, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 120
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = call double @strtod(i8* %12, i8** %8) #5
  br label %17

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call double @strtod(i8* %15, i8** %8) #5
  br label %17

; <label>:17:                                     ; preds = %14, %11
  %18 = phi double [ %13, %11 ], [ %16, %14 ]
  %19 = load double*, double** %6, align 8
  store double %18, double* %19, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %17
  store i8* null, i8** %4, align 8
  br label %49

; <label>:24:                                     ; preds = %17
  br label %25

; <label>:25:                                     ; preds = %36, %24
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %25
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %8, align 8
  br label %25

; <label>:39:                                     ; preds = %25
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %39
  %45 = load i8*, i8** %8, align 8
  br label %47

; <label>:46:                                     ; preds = %39
  br label %47

; <label>:47:                                     ; preds = %46, %44
  %48 = phi i8* [ %45, %44 ], [ null, %46 ]
  store i8* %48, i8** %4, align 8
  br label %49

; <label>:49:                                     ; preds = %47, %23
  %50 = load i8*, i8** %4, align 8
  ret i8* %50
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() #3

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #3

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushstr(%struct.BuffFS*, i8*, i64) #0 {
  %4 = alloca %struct.BuffFS*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca %struct.TValue*, align 8
  %9 = alloca %struct.TString*, align 8
  store %struct.BuffFS* %0, %struct.BuffFS** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.BuffFS*, %struct.BuffFS** %4, align 8
  %11 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %10, i32 0, i32 0
  %12 = load %struct.lua_State*, %struct.lua_State** %11, align 8
  store %struct.lua_State* %12, %struct.lua_State** %7, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 6
  %15 = load %union.StackValue*, %union.StackValue** %14, align 8
  %16 = bitcast %union.StackValue* %15 to %struct.TValue*
  store %struct.TValue* %16, %struct.TValue** %8, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %17, i8* %18, i64 %19)
  store %struct.TString* %20, %struct.TString** %9, align 8
  %21 = load %struct.TString*, %struct.TString** %9, align 8
  %22 = bitcast %struct.TString* %21 to %union.GCUnion*
  %23 = bitcast %union.GCUnion* %22 to %struct.GCObject*
  %24 = load %struct.TValue*, %struct.TValue** %8, align 8
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %24, i32 0, i32 0
  %26 = bitcast %union.Value* %25 to %struct.GCObject**
  store %struct.GCObject* %23, %struct.GCObject** %26, align 8
  %27 = load %struct.TString*, %struct.TString** %9, align 8
  %28 = getelementptr inbounds %struct.TString, %struct.TString* %27, i32 0, i32 1
  %29 = load i8, i8* %28, align 8
  %30 = zext i8 %29 to i32
  %31 = or i32 %30, 64
  %32 = trunc i32 %31 to i8
  %33 = load %struct.TValue*, %struct.TValue** %8, align 8
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i32 0, i32 1
  store i8 %32, i8* %34, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 6
  %37 = load %union.StackValue*, %union.StackValue** %36, align 8
  %38 = getelementptr inbounds %union.StackValue, %union.StackValue* %37, i32 1
  store %union.StackValue* %38, %union.StackValue** %36, align 8
  %39 = load %struct.BuffFS*, %struct.BuffFS** %4, align 8
  %40 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.BuffFS*, %struct.BuffFS** %4, align 8
  %44 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %63

; <label>:47:                                     ; preds = %3
  %48 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %49 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %48, i32 0, i32 6
  %50 = load %union.StackValue*, %union.StackValue** %49, align 8
  %51 = getelementptr inbounds %union.StackValue, %union.StackValue* %50, i64 2
  %52 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %52, i32 0, i32 10
  %54 = load %union.StackValue*, %union.StackValue** %53, align 8
  %55 = icmp ugt %union.StackValue* %51, %54
  br i1 %55, label %56, label %63

; <label>:56:                                     ; preds = %47
  %57 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %58 = load %struct.BuffFS*, %struct.BuffFS** %4, align 8
  %59 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  call void @luaV_concat(%struct.lua_State* %57, i32 %60)
  %61 = load %struct.BuffFS*, %struct.BuffFS** %4, align 8
  %62 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %61, i32 0, i32 1
  store i32 1, i32* %62, align 8
  br label %63

; <label>:63:                                     ; preds = %56, %47, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readnone speculatable }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
