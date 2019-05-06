; ModuleID = 'lobject.c'
source_filename = "lobject.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %struct.GCObject* }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.2 }
%struct.anon.2 = type { %union.Value, i32, i32 }
%struct.UpVal = type opaque
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon, i64, i16, i16 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.GCUnion = type { %struct.lua_State }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@luaO_nilobject_ = hidden constant %struct.lua_TValue zeroinitializer, align 8
@luaO_ceillog2.log_2 = internal constant [256 x i8] c"\00\01\02\02\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08", align 16
@luai_ctype_ = external hidden constant [257 x i8], align 16
@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.14g\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"-0123456789\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"<\5C%d>\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"invalid option '%%%c' to 'lua_pushfstring'\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"[string \22\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\22]\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c".xXnN\00", align 1

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
define hidden void @luaO_arith(%struct.lua_State*, i32, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.lua_TValue*, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.lua_TValue*, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca %struct.lua_TValue*, align 8
  %20 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.lua_TValue* %2, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %3, %struct.lua_TValue** %9, align 8
  store %struct.lua_TValue* %4, %struct.lua_TValue** %10, align 8
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %104 [
    i32 7, label %22
    i32 8, label %22
    i32 9, label %22
    i32 10, label %22
    i32 11, label %22
    i32 13, label %22
    i32 5, label %63
    i32 4, label %63
  ]

; <label>:22:                                     ; preds = %5, %5, %5, %5, %5, %5
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 19
  br i1 %26, label %27, label %32

; <label>:27:                                     ; preds = %22
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 0
  %30 = bitcast %union.Value* %29 to i64*
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %11, align 8
  br i1 true, label %36, label %62

; <label>:32:                                     ; preds = %22
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %34 = call i32 @luaV_tointeger(%struct.lua_TValue* %33, i64* %11, i32 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %62

; <label>:36:                                     ; preds = %32, %27
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %38 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 19
  br i1 %40, label %41, label %46

; <label>:41:                                     ; preds = %36
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 0, i32 0
  %44 = bitcast %union.Value* %43 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %12, align 8
  br i1 true, label %50, label %62

; <label>:46:                                     ; preds = %36
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %48 = call i32 @luaV_tointeger(%struct.lua_TValue* %47, i64* %12, i32 0)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

; <label>:50:                                     ; preds = %46, %41
  %51 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  store %struct.lua_TValue* %51, %struct.lua_TValue** %13, align 8
  %52 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i64 @intarith(%struct.lua_State* %52, i32 %53, i64 %54, i64 %55)
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i32 0, i32 0
  %59 = bitcast %union.Value* %58 to i64*
  store i64 %56, i64* %59, align 8
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i32 0, i32 1
  store i32 19, i32* %61, align 8
  br label %181

; <label>:62:                                     ; preds = %46, %41, %32, %27
  br label %173

; <label>:63:                                     ; preds = %5, %5
  %64 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %68, label %73

; <label>:68:                                     ; preds = %63
  %69 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %70 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %69, i32 0, i32 0
  %71 = bitcast %union.Value* %70 to double*
  %72 = load double, double* %71, align 8
  store double %72, double* %14, align 8
  br i1 true, label %77, label %103

; <label>:73:                                     ; preds = %63
  %74 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %75 = call i32 @luaV_tonumber_(%struct.lua_TValue* %74, double* %14)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %103

; <label>:77:                                     ; preds = %73, %68
  %78 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %79 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %87

; <label>:82:                                     ; preds = %77
  %83 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %84 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %83, i32 0, i32 0
  %85 = bitcast %union.Value* %84 to double*
  %86 = load double, double* %85, align 8
  store double %86, double* %15, align 8
  br i1 true, label %91, label %103

; <label>:87:                                     ; preds = %77
  %88 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %89 = call i32 @luaV_tonumber_(%struct.lua_TValue* %88, double* %15)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %103

; <label>:91:                                     ; preds = %87, %82
  %92 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  store %struct.lua_TValue* %92, %struct.lua_TValue** %16, align 8
  %93 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load double, double* %14, align 8
  %96 = load double, double* %15, align 8
  %97 = call double @numarith(%struct.lua_State* %93, i32 %94, double %95, double %96)
  %98 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %99 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %98, i32 0, i32 0
  %100 = bitcast %union.Value* %99 to double*
  store double %97, double* %100, align 8
  %101 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %102 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %101, i32 0, i32 1
  store i32 3, i32* %102, align 8
  br label %181

; <label>:103:                                    ; preds = %87, %82, %73, %68
  br label %173

; <label>:104:                                    ; preds = %5
  %105 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %106 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 19
  br i1 %108, label %109, label %132

; <label>:109:                                    ; preds = %104
  %110 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %111 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 19
  br i1 %113, label %114, label %132

; <label>:114:                                    ; preds = %109
  %115 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  store %struct.lua_TValue* %115, %struct.lua_TValue** %19, align 8
  %116 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %119 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %118, i32 0, i32 0
  %120 = bitcast %union.Value* %119 to i64*
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %123 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %122, i32 0, i32 0
  %124 = bitcast %union.Value* %123 to i64*
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @intarith(%struct.lua_State* %116, i32 %117, i64 %121, i64 %125)
  %127 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8
  %128 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %127, i32 0, i32 0
  %129 = bitcast %union.Value* %128 to i64*
  store i64 %126, i64* %129, align 8
  %130 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8
  %131 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %130, i32 0, i32 1
  store i32 19, i32* %131, align 8
  br label %181

; <label>:132:                                    ; preds = %109, %104
  %133 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %134 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 3
  br i1 %136, label %137, label %142

; <label>:137:                                    ; preds = %132
  %138 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %139 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %138, i32 0, i32 0
  %140 = bitcast %union.Value* %139 to double*
  %141 = load double, double* %140, align 8
  store double %141, double* %17, align 8
  br i1 true, label %146, label %172

; <label>:142:                                    ; preds = %132
  %143 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %144 = call i32 @luaV_tonumber_(%struct.lua_TValue* %143, double* %17)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %172

; <label>:146:                                    ; preds = %142, %137
  %147 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %148 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 3
  br i1 %150, label %151, label %156

; <label>:151:                                    ; preds = %146
  %152 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %153 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %152, i32 0, i32 0
  %154 = bitcast %union.Value* %153 to double*
  %155 = load double, double* %154, align 8
  store double %155, double* %18, align 8
  br i1 true, label %160, label %172

; <label>:156:                                    ; preds = %146
  %157 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %158 = call i32 @luaV_tonumber_(%struct.lua_TValue* %157, double* %18)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %172

; <label>:160:                                    ; preds = %156, %151
  %161 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  store %struct.lua_TValue* %161, %struct.lua_TValue** %20, align 8
  %162 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load double, double* %17, align 8
  %165 = load double, double* %18, align 8
  %166 = call double @numarith(%struct.lua_State* %162, i32 %163, double %164, double %165)
  %167 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8
  %168 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %167, i32 0, i32 0
  %169 = bitcast %union.Value* %168 to double*
  store double %166, double* %169, align 8
  %170 = load %struct.lua_TValue*, %struct.lua_TValue** %20, align 8
  %171 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %170, i32 0, i32 1
  store i32 3, i32* %171, align 8
  br label %181

; <label>:172:                                    ; preds = %156, %151, %142, %137
  br label %173

; <label>:173:                                    ; preds = %172, %103, %62
  %174 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %175 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %176 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %177 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sub nsw i32 %178, 0
  %180 = add nsw i32 %179, 6
  call void @luaT_trybinTM(%struct.lua_State* %174, %struct.lua_TValue* %175, %struct.lua_TValue* %176, %struct.lua_TValue* %177, i32 %180)
  br label %181

; <label>:181:                                    ; preds = %173, %160, %114, %91, %50
  ret void
}

declare hidden i32 @luaV_tointeger(%struct.lua_TValue*, i64*, i32) #1

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
  %32 = call i64 @luaV_div(%struct.lua_State* %29, i64 %30, i64 %31)
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

declare hidden i32 @luaV_tonumber_(%struct.lua_TValue*, double*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal double @numarith(%struct.lua_State*, i32, double, double) #0 {
  %5 = alloca double, align 8
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i32 %1, i32* %7, align 4
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %56 [
    i32 0, label %12
    i32 1, label %16
    i32 2, label %20
    i32 5, label %24
    i32 4, label %28
    i32 6, label %33
    i32 12, label %39
    i32 3, label %42
  ]

; <label>:12:                                     ; preds = %4
  %13 = load double, double* %8, align 8
  %14 = load double, double* %9, align 8
  %15 = fadd double %13, %14
  store double %15, double* %5, align 8
  br label %57

; <label>:16:                                     ; preds = %4
  %17 = load double, double* %8, align 8
  %18 = load double, double* %9, align 8
  %19 = fsub double %17, %18
  store double %19, double* %5, align 8
  br label %57

; <label>:20:                                     ; preds = %4
  %21 = load double, double* %8, align 8
  %22 = load double, double* %9, align 8
  %23 = fmul double %21, %22
  store double %23, double* %5, align 8
  br label %57

; <label>:24:                                     ; preds = %4
  %25 = load double, double* %8, align 8
  %26 = load double, double* %9, align 8
  %27 = fdiv double %25, %26
  store double %27, double* %5, align 8
  br label %57

; <label>:28:                                     ; preds = %4
  %29 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %30 = load double, double* %8, align 8
  %31 = load double, double* %9, align 8
  %32 = call double @pow(double %30, double %31) #5
  store double %32, double* %5, align 8
  br label %57

; <label>:33:                                     ; preds = %4
  %34 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %35 = load double, double* %8, align 8
  %36 = load double, double* %9, align 8
  %37 = fdiv double %35, %36
  %38 = call double @llvm.floor.f64(double %37)
  store double %38, double* %5, align 8
  br label %57

; <label>:39:                                     ; preds = %4
  %40 = load double, double* %8, align 8
  %41 = fsub double -0.000000e+00, %40
  store double %41, double* %5, align 8
  br label %57

; <label>:42:                                     ; preds = %4
  %43 = load double, double* %8, align 8
  %44 = load double, double* %9, align 8
  %45 = call double @fmod(double %43, double %44) #5
  store double %45, double* %10, align 8
  %46 = load double, double* %10, align 8
  %47 = load double, double* %9, align 8
  %48 = fmul double %46, %47
  %49 = fcmp olt double %48, 0.000000e+00
  br i1 %49, label %50, label %54

; <label>:50:                                     ; preds = %42
  %51 = load double, double* %9, align 8
  %52 = load double, double* %10, align 8
  %53 = fadd double %52, %51
  store double %53, double* %10, align 8
  br label %54

; <label>:54:                                     ; preds = %50, %42
  %55 = load double, double* %10, align 8
  store double %55, double* %5, align 8
  br label %57

; <label>:56:                                     ; preds = %4
  store double 0.000000e+00, double* %5, align 8
  br label %57

; <label>:57:                                     ; preds = %56, %54, %39, %33, %28, %24, %20, %16, %12
  %58 = load double, double* %5, align 8
  ret double %58
}

declare hidden void @luaT_trybinTM(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32) #1

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
define hidden i64 @luaO_str2num(i8*, %struct.lua_TValue*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @l_str2int(i8* %11, i64* %6)
  store i8* %12, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %22

; <label>:14:                                     ; preds = %2
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  store %struct.lua_TValue* %15, %struct.lua_TValue** %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 0
  %19 = bitcast %union.Value* %18 to i64*
  store i64 %16, i64* %19, align 8
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 1
  store i32 19, i32* %21, align 8
  br label %36

; <label>:22:                                     ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @l_str2d(i8* %23, double* %7)
  store i8* %24, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

; <label>:26:                                     ; preds = %22
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  store %struct.lua_TValue* %27, %struct.lua_TValue** %10, align 8
  %28 = load double, double* %7, align 8
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 0
  %31 = bitcast %union.Value* %30 to double*
  store double %28, double* %31, align 8
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 0, i32 1
  store i32 3, i32* %33, align 8
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
  %12 = call i8* @strpbrk(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)) #8
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
define hidden void @luaO_tostring(%struct.lua_State*, %struct.lua_TValue*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca [50 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %4, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 19
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i32 0, i32 0
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %17 = bitcast %union.Value* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %14, i64 50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 %18) #5
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %6, align 8
  br label %48

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i32 0, i32 0
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 0
  %25 = bitcast %union.Value* %24 to double*
  %26 = load double, double* %25, align 8
  %27 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %22, i64 50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), double %26) #5
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %6, align 8
  %29 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i32 0, i32 0
  %30 = call i64 @strspn(i8* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #8
  %31 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47

; <label>:35:                                     ; preds = %21
  %36 = call %struct.lconv* @localeconv() #5
  %37 = getelementptr inbounds %struct.lconv, %struct.lconv* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %6, align 8
  %43 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 %41
  store i8 %40, i8* %43, align 1
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %6, align 8
  %46 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 %44
  store i8 48, i8* %46, align 1
  br label %47

; <label>:47:                                     ; preds = %35, %21
  br label %48

; <label>:48:                                     ; preds = %47, %13
  %49 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  store %struct.lua_TValue* %49, %struct.lua_TValue** %7, align 8
  %50 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %51 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i32 0, i32 0
  %52 = load i64, i64* %6, align 8
  %53 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %50, i8* %51, i64 %52)
  store %struct.TString* %53, %struct.TString** %8, align 8
  %54 = load %struct.TString*, %struct.TString** %8, align 8
  %55 = bitcast %struct.TString* %54 to %union.GCUnion*
  %56 = bitcast %union.GCUnion* %55 to %struct.GCObject*
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i32 0, i32 0
  %59 = bitcast %union.Value* %58 to %struct.GCObject**
  store %struct.GCObject* %56, %struct.GCObject** %59, align 8
  %60 = load %struct.TString*, %struct.TString** %8, align 8
  %61 = getelementptr inbounds %struct.TString, %struct.TString* %60, i32 0, i32 1
  %62 = load i8, i8* %61, align 8
  %63 = zext i8 %62 to i32
  %64 = or i32 %63, 64
  %65 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %66 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #3

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() #2

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.lua_TValue*, align 8
  %12 = alloca %struct.lua_TValue*, align 8
  %13 = alloca %struct.lua_TValue*, align 8
  %14 = alloca [40 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [8 x i8], align 1
  %18 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  store i32 0, i32* %7, align 4
  br label %19

; <label>:19:                                     ; preds = %254, %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @strchr(i8* %20, i32 37) #8
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %19
  br label %259

; <label>:25:                                     ; preds = %19
  %26 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  call void @pushstr(%struct.lua_State* %26, i8* %27, i64 %32)
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %248 [
    i32 115, label %37
    i32 99, label %64
    i32 100, label %101
    i32 73, label %129
    i32 102, label %156
    i32 112, label %190
    i32 85, label %216
    i32 37, label %246
  ]

; <label>:37:                                     ; preds = %25
  %38 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ule i32 %40, 40
  br i1 %41, label %42, label %48

; <label>:42:                                     ; preds = %37
  %43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %38, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr i8, i8* %44, i32 %40
  %46 = bitcast i8* %45 to i8**
  %47 = add i32 %40, 8
  store i32 %47, i32* %39, align 8
  br label %53

; <label>:48:                                     ; preds = %37
  %49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %38, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = bitcast i8* %50 to i8**
  %52 = getelementptr i8, i8* %50, i32 8
  store i8* %52, i8** %49, align 8
  br label %53

; <label>:53:                                     ; preds = %48, %42
  %54 = phi i8** [ %46, %42 ], [ %51, %48 ]
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %9, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

; <label>:58:                                     ; preds = %53
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %9, align 8
  br label %59

; <label>:59:                                     ; preds = %58, %53
  %60 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i64 @strlen(i8* %62) #8
  call void @pushstr(%struct.lua_State* %60, i8* %61, i64 %63)
  br label %254

; <label>:64:                                     ; preds = %25
  %65 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %66 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ule i32 %67, 40
  br i1 %68, label %69, label %75

; <label>:69:                                     ; preds = %64
  %70 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %65, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr i8, i8* %71, i32 %67
  %73 = bitcast i8* %72 to i32*
  %74 = add i32 %67, 8
  store i32 %74, i32* %66, align 8
  br label %80

; <label>:75:                                     ; preds = %64
  %76 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %65, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = getelementptr i8, i8* %77, i32 8
  store i8* %79, i8** %76, align 8
  br label %80

; <label>:80:                                     ; preds = %75, %69
  %81 = phi i32* [ %73, %69 ], [ %78, %75 ]
  %82 = load i32, i32* %81, align 4
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %10, align 1
  %84 = load i8, i8* %10, align 1
  %85 = zext i8 %84 to i32
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

; <label>:93:                                     ; preds = %80
  %94 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @pushstr(%struct.lua_State* %94, i8* %10, i64 1)
  br label %100

; <label>:95:                                     ; preds = %80
  %96 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %97 = load i8, i8* %10, align 1
  %98 = zext i8 %97 to i32
  %99 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 %98)
  br label %100

; <label>:100:                                    ; preds = %95, %93
  br label %254

; <label>:101:                                    ; preds = %25
  %102 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %103 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %102, i32 0, i32 5
  %104 = load %struct.lua_TValue*, %struct.lua_TValue** %103, align 8
  store %struct.lua_TValue* %104, %struct.lua_TValue** %11, align 8
  %105 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %106 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ule i32 %107, 40
  br i1 %108, label %109, label %115

; <label>:109:                                    ; preds = %101
  %110 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %105, i32 0, i32 3
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr i8, i8* %111, i32 %107
  %113 = bitcast i8* %112 to i32*
  %114 = add i32 %107, 8
  store i32 %114, i32* %106, align 8
  br label %120

; <label>:115:                                    ; preds = %101
  %116 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %105, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = bitcast i8* %117 to i32*
  %119 = getelementptr i8, i8* %117, i32 8
  store i8* %119, i8** %116, align 8
  br label %120

; <label>:120:                                    ; preds = %115, %109
  %121 = phi i32* [ %113, %109 ], [ %118, %115 ]
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %125 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %124, i32 0, i32 0
  %126 = bitcast %union.Value* %125 to i64*
  store i64 %123, i64* %126, align 8
  %127 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %128 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %127, i32 0, i32 1
  store i32 19, i32* %128, align 8
  br label %183

; <label>:129:                                    ; preds = %25
  %130 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %131 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %130, i32 0, i32 5
  %132 = load %struct.lua_TValue*, %struct.lua_TValue** %131, align 8
  store %struct.lua_TValue* %132, %struct.lua_TValue** %12, align 8
  %133 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %134 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ule i32 %135, 40
  br i1 %136, label %137, label %143

; <label>:137:                                    ; preds = %129
  %138 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %133, i32 0, i32 3
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr i8, i8* %139, i32 %135
  %141 = bitcast i8* %140 to i64*
  %142 = add i32 %135, 8
  store i32 %142, i32* %134, align 8
  br label %148

; <label>:143:                                    ; preds = %129
  %144 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %133, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = bitcast i8* %145 to i64*
  %147 = getelementptr i8, i8* %145, i32 8
  store i8* %147, i8** %144, align 8
  br label %148

; <label>:148:                                    ; preds = %143, %137
  %149 = phi i64* [ %141, %137 ], [ %146, %143 ]
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %152 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %151, i32 0, i32 0
  %153 = bitcast %union.Value* %152 to i64*
  store i64 %150, i64* %153, align 8
  %154 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %155 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %154, i32 0, i32 1
  store i32 19, i32* %155, align 8
  br label %183

; <label>:156:                                    ; preds = %25
  %157 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %158 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %157, i32 0, i32 5
  %159 = load %struct.lua_TValue*, %struct.lua_TValue** %158, align 8
  store %struct.lua_TValue* %159, %struct.lua_TValue** %13, align 8
  %160 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %161 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp ule i32 %162, 160
  br i1 %163, label %164, label %170

; <label>:164:                                    ; preds = %156
  %165 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %160, i32 0, i32 3
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr i8, i8* %166, i32 %162
  %168 = bitcast i8* %167 to double*
  %169 = add i32 %162, 16
  store i32 %169, i32* %161, align 4
  br label %175

; <label>:170:                                    ; preds = %156
  %171 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %160, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = bitcast i8* %172 to double*
  %174 = getelementptr i8, i8* %172, i32 8
  store i8* %174, i8** %171, align 8
  br label %175

; <label>:175:                                    ; preds = %170, %164
  %176 = phi double* [ %168, %164 ], [ %173, %170 ]
  %177 = load double, double* %176, align 8
  %178 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8
  %179 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %178, i32 0, i32 0
  %180 = bitcast %union.Value* %179 to double*
  store double %177, double* %180, align 8
  %181 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8
  %182 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %181, i32 0, i32 1
  store i32 3, i32* %182, align 8
  br label %183

; <label>:183:                                    ; preds = %175, %148, %120
  %184 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaD_inctop(%struct.lua_State* %184)
  %185 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %186 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %187 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %186, i32 0, i32 5
  %188 = load %struct.lua_TValue*, %struct.lua_TValue** %187, align 8
  %189 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %188, i64 -1
  call void @luaO_tostring(%struct.lua_State* %185, %struct.lua_TValue* %189)
  br label %254

; <label>:190:                                    ; preds = %25
  %191 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %192 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ule i32 %193, 40
  br i1 %194, label %195, label %201

; <label>:195:                                    ; preds = %190
  %196 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %191, i32 0, i32 3
  %197 = load i8*, i8** %196, align 8
  %198 = getelementptr i8, i8* %197, i32 %193
  %199 = bitcast i8* %198 to i8**
  %200 = add i32 %193, 8
  store i32 %200, i32* %192, align 8
  br label %206

; <label>:201:                                    ; preds = %190
  %202 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %191, i32 0, i32 2
  %203 = load i8*, i8** %202, align 8
  %204 = bitcast i8* %203 to i8**
  %205 = getelementptr i8, i8* %203, i32 8
  store i8* %205, i8** %202, align 8
  br label %206

; <label>:206:                                    ; preds = %201, %195
  %207 = phi i8** [ %199, %195 ], [ %204, %201 ]
  %208 = load i8*, i8** %207, align 8
  store i8* %208, i8** %15, align 8
  %209 = getelementptr inbounds [40 x i8], [40 x i8]* %14, i32 0, i32 0
  %210 = load i8*, i8** %15, align 8
  %211 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %209, i64 40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %210) #5
  store i32 %211, i32* %16, align 4
  %212 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %213 = getelementptr inbounds [40 x i8], [40 x i8]* %14, i32 0, i32 0
  %214 = load i32, i32* %16, align 4
  %215 = sext i32 %214 to i64
  call void @pushstr(%struct.lua_State* %212, i8* %213, i64 %215)
  br label %254

; <label>:216:                                    ; preds = %25
  %217 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i32 0, i32 0
  %218 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %219 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ule i32 %220, 40
  br i1 %221, label %222, label %228

; <label>:222:                                    ; preds = %216
  %223 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %218, i32 0, i32 3
  %224 = load i8*, i8** %223, align 8
  %225 = getelementptr i8, i8* %224, i32 %220
  %226 = bitcast i8* %225 to i64*
  %227 = add i32 %220, 8
  store i32 %227, i32* %219, align 8
  br label %233

; <label>:228:                                    ; preds = %216
  %229 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %218, i32 0, i32 2
  %230 = load i8*, i8** %229, align 8
  %231 = bitcast i8* %230 to i64*
  %232 = getelementptr i8, i8* %230, i32 8
  store i8* %232, i8** %229, align 8
  br label %233

; <label>:233:                                    ; preds = %228, %222
  %234 = phi i64* [ %226, %222 ], [ %231, %228 ]
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @luaO_utf8esc(i8* %217, i64 %235)
  store i32 %236, i32* %18, align 4
  %237 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %238 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i32 0, i32 0
  %239 = getelementptr inbounds i8, i8* %238, i64 8
  %240 = load i32, i32* %18, align 4
  %241 = sext i32 %240 to i64
  %242 = sub i64 0, %241
  %243 = getelementptr inbounds i8, i8* %239, i64 %242
  %244 = load i32, i32* %18, align 4
  %245 = sext i32 %244 to i64
  call void @pushstr(%struct.lua_State* %237, i8* %243, i64 %245)
  br label %254

; <label>:246:                                    ; preds = %25
  %247 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @pushstr(%struct.lua_State* %247, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i64 1)
  br label %254

; <label>:248:                                    ; preds = %25
  %249 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %250 = load i8*, i8** %8, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 1
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %249, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0), i32 %253) #9
  unreachable

; <label>:254:                                    ; preds = %246, %233, %206, %183, %100, %59
  %255 = load i32, i32* %7, align 4
  %256 = add nsw i32 %255, 2
  store i32 %256, i32* %7, align 4
  %257 = load i8*, i8** %8, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 2
  store i8* %258, i8** %5, align 8
  br label %19

; <label>:259:                                    ; preds = %24
  %260 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %261 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %260, i32 0, i32 9
  %262 = load %struct.lua_TValue*, %struct.lua_TValue** %261, align 8
  %263 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %264 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %263, i32 0, i32 5
  %265 = load %struct.lua_TValue*, %struct.lua_TValue** %264, align 8
  %266 = ptrtoint %struct.lua_TValue* %262 to i64
  %267 = ptrtoint %struct.lua_TValue* %265 to i64
  %268 = sub i64 %266, %267
  %269 = sdiv exact i64 %268, 16
  %270 = icmp sle i64 %269, 1
  br i1 %270, label %271, label %273

; <label>:271:                                    ; preds = %259
  %272 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaD_growstack(%struct.lua_State* %272, i32 1)
  br label %274

; <label>:273:                                    ; preds = %259
  br label %274

; <label>:274:                                    ; preds = %273, %271
  %275 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %276 = load i8*, i8** %5, align 8
  %277 = load i8*, i8** %5, align 8
  %278 = call i64 @strlen(i8* %277) #8
  call void @pushstr(%struct.lua_State* %275, i8* %276, i64 %278)
  %279 = load i32, i32* %7, align 4
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %281, label %285

; <label>:281:                                    ; preds = %274
  %282 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %283 = load i32, i32* %7, align 4
  %284 = add nsw i32 %283, 1
  call void @luaV_concat(%struct.lua_State* %282, i32 %284)
  br label %285

; <label>:285:                                    ; preds = %281, %274
  %286 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %287 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %286, i32 0, i32 5
  %288 = load %struct.lua_TValue*, %struct.lua_TValue** %287, align 8
  %289 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %288, i64 -1
  %290 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %289, i32 0, i32 0
  %291 = bitcast %union.Value* %290 to %struct.GCObject**
  %292 = load %struct.GCObject*, %struct.GCObject** %291, align 8
  %293 = bitcast %struct.GCObject* %292 to %union.GCUnion*
  %294 = bitcast %union.GCUnion* %293 to %struct.TString*
  %295 = bitcast %struct.TString* %294 to i8*
  %296 = getelementptr inbounds i8, i8* %295, i64 24
  ret i8* %296
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushstr(%struct.lua_State*, i8*, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca %struct.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 5
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  store %struct.lua_TValue* %11, %struct.lua_TValue** %7, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %12, i8* %13, i64 %14)
  store %struct.TString* %15, %struct.TString** %8, align 8
  %16 = load %struct.TString*, %struct.TString** %8, align 8
  %17 = bitcast %struct.TString* %16 to %union.GCUnion*
  %18 = bitcast %union.GCUnion* %17 to %struct.GCObject*
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 0
  %21 = bitcast %union.Value* %20 to %struct.GCObject**
  store %struct.GCObject* %18, %struct.GCObject** %21, align 8
  %22 = load %struct.TString*, %struct.TString** %8, align 8
  %23 = getelementptr inbounds %struct.TString, %struct.TString* %22, i32 0, i32 1
  %24 = load i8, i8* %23, align 8
  %25 = zext i8 %24 to i32
  %26 = or i32 %25, 64
  %27 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %28 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaD_inctop(%struct.lua_State* %29)
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

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

declare hidden void @luaD_inctop(%struct.lua_State*) #1

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #4

declare hidden void @luaD_growstack(%struct.lua_State*, i32) #1

declare hidden void @luaV_concat(%struct.lua_State*, i32) #1

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
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strlen(i8* %9) #8
  store i64 %10, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 61
  br i1 %14, label %15, label %38

; <label>:15:                                     ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ule i64 %16, %17
  br i1 %18, label %19, label %25

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i64, i64* %7, align 8
  %24 = mul i64 %23, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %22, i64 %24, i32 1, i1 false)
  br label %37

; <label>:25:                                     ; preds = %15
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i64, i64* %6, align 8
  %30 = sub i64 %29, 1
  %31 = mul i64 %30, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %28, i64 %31, i32 1, i1 false)
  %32 = load i64, i64* %6, align 8
  %33 = sub i64 %32, 1
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %35, i8** %4, align 8
  %36 = load i8*, i8** %4, align 8
  store i8 0, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %25, %19
  br label %121

; <label>:38:                                     ; preds = %3
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 64
  br i1 %42, label %43, label %70

; <label>:43:                                     ; preds = %38
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ule i64 %44, %45
  br i1 %46, label %47, label %53

; <label>:47:                                     ; preds = %43
  %48 = load i8*, i8** %4, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i64, i64* %7, align 8
  %52 = mul i64 %51, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %50, i64 %52, i32 1, i1 false)
  br label %69

; <label>:53:                                     ; preds = %43
  %54 = load i8*, i8** %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i64 3, i32 1, i1 false)
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  store i8* %56, i8** %4, align 8
  %57 = load i64, i64* %6, align 8
  %58 = sub i64 %57, 3
  store i64 %58, i64* %6, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i64, i64* %6, align 8
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i64, i64* %6, align 8
  %68 = mul i64 %67, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %66, i64 %68, i32 1, i1 false)
  br label %69

; <label>:69:                                     ; preds = %53, %47
  br label %120

; <label>:70:                                     ; preds = %38
  %71 = load i8*, i8** %5, align 8
  %72 = call i8* @strchr(i8* %71, i32 10) #8
  store i8* %72, i8** %8, align 8
  %73 = load i8*, i8** %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i64 9, i32 1, i1 false)
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 9
  store i8* %75, i8** %4, align 8
  %76 = load i64, i64* %6, align 8
  %77 = sub i64 %76, 15
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %92

; <label>:81:                                     ; preds = %70
  %82 = load i8*, i8** %8, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %92

; <label>:84:                                     ; preds = %81
  %85 = load i8*, i8** %4, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = load i64, i64* %7, align 8
  %88 = mul i64 %87, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 %88, i32 1, i1 false)
  %89 = load i64, i64* %7, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 %89
  store i8* %91, i8** %4, align 8
  br label %118

; <label>:92:                                     ; preds = %81, %70
  %93 = load i8*, i8** %8, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %101

; <label>:95:                                     ; preds = %92
  %96 = load i8*, i8** %8, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  store i64 %100, i64* %7, align 8
  br label %101

; <label>:101:                                    ; preds = %95, %92
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* %6, align 8
  %104 = icmp ugt i64 %102, %103
  br i1 %104, label %105, label %107

; <label>:105:                                    ; preds = %101
  %106 = load i64, i64* %6, align 8
  store i64 %106, i64* %7, align 8
  br label %107

; <label>:107:                                    ; preds = %105, %101
  %108 = load i8*, i8** %4, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = load i64, i64* %7, align 8
  %111 = mul i64 %110, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 %111, i32 1, i1 false)
  %112 = load i64, i64* %7, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 %112
  store i8* %114, i8** %4, align 8
  %115 = load i8*, i8** %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i64 3, i32 1, i1 false)
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 3
  store i8* %117, i8** %4, align 8
  br label %118

; <label>:118:                                    ; preds = %107, %84
  %119 = load i8*, i8** %4, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i64 3, i32 1, i1 false)
  br label %120

; <label>:120:                                    ; preds = %118, %69
  br label %121

; <label>:121:                                    ; preds = %120, %37
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

declare hidden i64 @luaV_mod(%struct.lua_State*, i64, i64) #1

declare hidden i64 @luaV_div(%struct.lua_State*, i64, i64) #1

declare hidden i64 @luaV_shiftl(i64, i64) #1

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #7

; Function Attrs: nounwind
declare double @fmod(double, double) #2

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
declare i8* @strpbrk(i8*, i8*) #3

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
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
