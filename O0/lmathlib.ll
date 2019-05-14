; ModuleID = 'lmathlib.c'
source_filename = "lmathlib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.RanState = type { [4 x i64] }

@mathlib = internal constant [28 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @math_abs }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @math_acos }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @math_asin }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @math_atan }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @math_ceil }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @math_cos }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @math_deg }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @math_exp }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @math_toint }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @math_floor }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @math_fmod }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @math_ult }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.lua_State*)* @math_log }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.lua_State*)* @math_max }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.lua_State*)* @math_min }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.lua_State*)* @math_modf }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.lua_State*)* @math_rad }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.lua_State*)* @math_sin }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.lua_State*)* @math_sqrt }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.lua_State*)* @math_tan }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.lua_State*)* @math_type }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"huge\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"maxinteger\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"mininteger\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"asin\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ceil\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"deg\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"tointeger\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"fmod\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ult\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"modf\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"rad\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"randomseed\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"value expected\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@randfuncs = internal constant [3 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 (%struct.lua_State*)* @math_random }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 (%struct.lua_State*)* @math_randomseed }, %struct.luaL_Reg zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"interval is empty\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaopen_math(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkversion_(%struct.lua_State* %3, double 5.040000e+02, i64 136)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* %4, i32 0, i32 27)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_setfuncs(%struct.lua_State* %5, %struct.luaL_Reg* getelementptr inbounds ([28 x %struct.luaL_Reg], [28 x %struct.luaL_Reg]* @mathlib, i32 0, i32 0), i32 0)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnumber(%struct.lua_State* %6, double 0x400921FB54442D18)
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* %7, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnumber(%struct.lua_State* %8, double 0x7FF0000000000000)
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* %9, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushinteger(%struct.lua_State* %10, i64 9223372036854775807)
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* %11, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushinteger(%struct.lua_State* %12, i64 -9223372036854775808)
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* %13, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @setrandfunc(%struct.lua_State* %14)
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #1

declare void @lua_pushnumber(%struct.lua_State*, double) #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setrandfunc(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.RanState*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @lua_newuserdatauv(%struct.lua_State* %4, i64 32, i32 0)
  %6 = bitcast i8* %5 to %struct.RanState*
  store %struct.RanState* %6, %struct.RanState** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = load %struct.RanState*, %struct.RanState** %3, align 8
  call void @randseed(%struct.lua_State* %7, %struct.RanState* %8)
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_setfuncs(%struct.lua_State* %9, %struct.luaL_Reg* getelementptr inbounds ([3 x %struct.luaL_Reg], [3 x %struct.luaL_Reg]* @randfuncs, i32 0, i32 0), i32 1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_abs(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_isinteger(%struct.lua_State* %4, i32 1)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %18

; <label>:7:                                      ; preds = %1
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i64 @lua_tointegerx(%struct.lua_State* %8, i32 1, i32* null)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %7
  %13 = load i64, i64* %3, align 8
  %14 = sub i64 0, %13
  store i64 %14, i64* %3, align 8
  br label %15

; <label>:15:                                     ; preds = %12, %7
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %17 = load i64, i64* %3, align 8
  call void @lua_pushinteger(%struct.lua_State* %16, i64 %17)
  br label %23

; <label>:18:                                     ; preds = %1
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %21 = call double @luaL_checknumber(%struct.lua_State* %20, i32 1)
  %22 = call double @llvm.fabs.f64(double %21)
  call void @lua_pushnumber(%struct.lua_State* %19, double %22)
  br label %23

; <label>:23:                                     ; preds = %18, %15
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_acos(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* %4, i32 1)
  %6 = call double @acos(double %5) #4
  call void @lua_pushnumber(%struct.lua_State* %3, double %6)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_asin(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* %4, i32 1)
  %6 = call double @asin(double %5) #4
  call void @lua_pushnumber(%struct.lua_State* %3, double %6)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_atan(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call double @luaL_checknumber(%struct.lua_State* %5, i32 1)
  store double %6, double* %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call double @luaL_optnumber(%struct.lua_State* %7, i32 2, double 1.000000e+00)
  store double %8, double* %4, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = load double, double* %3, align 8
  %11 = load double, double* %4, align 8
  %12 = call double @atan2(double %10, double %11) #4
  call void @lua_pushnumber(%struct.lua_State* %9, double %12)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_ceil(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_isinteger(%struct.lua_State* %4, i32 1)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %8, i32 1)
  br label %15

; <label>:9:                                      ; preds = %1
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = call double @luaL_checknumber(%struct.lua_State* %10, i32 1)
  %12 = call double @llvm.ceil.f64(double %11)
  store double %12, double* %3, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = load double, double* %3, align 8
  call void @pushnumint(%struct.lua_State* %13, double %14)
  br label %15

; <label>:15:                                     ; preds = %9, %7
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_cos(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* %4, i32 1)
  %6 = call double @cos(double %5) #4
  call void @lua_pushnumber(%struct.lua_State* %3, double %6)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_deg(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* %4, i32 1)
  %6 = fmul double %5, 0x404CA5DC1A63C1F8
  call void @lua_pushnumber(%struct.lua_State* %3, double %6)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_exp(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* %4, i32 1)
  %6 = call double @exp(double %5) #4
  call void @lua_pushnumber(%struct.lua_State* %3, double %6)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_toint(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i64 @lua_tointegerx(%struct.lua_State* %5, i32 1, i32* %3)
  store i64 %6, i64* %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %1
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = load i64, i64* %4, align 8
  call void @lua_pushinteger(%struct.lua_State* %10, i64 %11)
  br label %15

; <label>:12:                                     ; preds = %1
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* %13, i32 1)
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnil(%struct.lua_State* %14)
  br label %15

; <label>:15:                                     ; preds = %12, %9
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_floor(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_isinteger(%struct.lua_State* %4, i32 1)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %8, i32 1)
  br label %15

; <label>:9:                                      ; preds = %1
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = call double @luaL_checknumber(%struct.lua_State* %10, i32 1)
  %12 = call double @llvm.floor.f64(double %11)
  store double %12, double* %3, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = load double, double* %3, align 8
  call void @pushnumint(%struct.lua_State* %13, double %14)
  br label %15

; <label>:15:                                     ; preds = %9, %7
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_fmod(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_isinteger(%struct.lua_State* %4, i32 1)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %35

; <label>:7:                                      ; preds = %1
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i32 @lua_isinteger(%struct.lua_State* %8, i32 2)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %35

; <label>:11:                                     ; preds = %7
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = call i64 @lua_tointegerx(%struct.lua_State* %12, i32 2, i32* null)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = add i64 %14, 1
  %16 = icmp ule i64 %15, 1
  br i1 %16, label %17, label %28

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* %3, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %17
  %21 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %22 = call i32 @luaL_argerror(%struct.lua_State* %21, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0))
  %23 = icmp ne i32 %22, 0
  br label %24

; <label>:24:                                     ; preds = %20, %17
  %25 = phi i1 [ true, %17 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushinteger(%struct.lua_State* %27, i64 0)
  br label %34

; <label>:28:                                     ; preds = %11
  %29 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %31 = call i64 @lua_tointegerx(%struct.lua_State* %30, i32 1, i32* null)
  %32 = load i64, i64* %3, align 8
  %33 = srem i64 %31, %32
  call void @lua_pushinteger(%struct.lua_State* %29, i64 %33)
  br label %34

; <label>:34:                                     ; preds = %28, %24
  br label %42

; <label>:35:                                     ; preds = %7, %1
  %36 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %37 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %38 = call double @luaL_checknumber(%struct.lua_State* %37, i32 1)
  %39 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %40 = call double @luaL_checknumber(%struct.lua_State* %39, i32 2)
  %41 = call double @fmod(double %38, double %40) #4
  call void @lua_pushnumber(%struct.lua_State* %36, double %41)
  br label %42

; <label>:42:                                     ; preds = %35, %34
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_ult(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i64 @luaL_checkinteger(%struct.lua_State* %5, i32 1)
  store i64 %6, i64* %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i64 @luaL_checkinteger(%struct.lua_State* %7, i32 2)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ult i64 %10, %11
  %13 = zext i1 %12 to i32
  call void @lua_pushboolean(%struct.lua_State* %9, i32 %13)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_log(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call double @luaL_checknumber(%struct.lua_State* %6, i32 1)
  store double %7, double* %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i32 @lua_type(%struct.lua_State* %8, i32 2)
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %1
  %12 = load double, double* %3, align 8
  %13 = call double @log(double %12) #4
  store double %13, double* %4, align 8
  br label %36

; <label>:14:                                     ; preds = %1
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = call double @luaL_checknumber(%struct.lua_State* %15, i32 2)
  store double %16, double* %5, align 8
  %17 = load double, double* %5, align 8
  %18 = fcmp oeq double %17, 2.000000e+00
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %14
  %20 = load double, double* %3, align 8
  %21 = call double @log2(double %20) #4
  store double %21, double* %4, align 8
  br label %35

; <label>:22:                                     ; preds = %14
  %23 = load double, double* %5, align 8
  %24 = fcmp oeq double %23, 1.000000e+01
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %22
  %26 = load double, double* %3, align 8
  %27 = call double @log10(double %26) #4
  store double %27, double* %4, align 8
  br label %34

; <label>:28:                                     ; preds = %22
  %29 = load double, double* %3, align 8
  %30 = call double @log(double %29) #4
  %31 = load double, double* %5, align 8
  %32 = call double @log(double %31) #4
  %33 = fdiv double %30, %32
  store double %33, double* %4, align 8
  br label %34

; <label>:34:                                     ; preds = %28, %25
  br label %35

; <label>:35:                                     ; preds = %34, %19
  br label %36

; <label>:36:                                     ; preds = %35, %11
  %37 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %38 = load double, double* %4, align 8
  call void @lua_pushnumber(%struct.lua_State* %37, double %38)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_max(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i32 @lua_gettop(%struct.lua_State* %6)
  store i32 %7, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %8, 1
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = call i32 @luaL_argerror(%struct.lua_State* %11, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0))
  %13 = icmp ne i32 %12, 0
  br label %14

; <label>:14:                                     ; preds = %10, %1
  %15 = phi i1 [ true, %1 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  store i32 2, i32* %5, align 4
  br label %17

; <label>:17:                                     ; preds = %30, %14
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %33

; <label>:21:                                     ; preds = %17
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @lua_compare(%struct.lua_State* %22, i32 %23, i32 %24, i32 1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %4, align 4
  br label %29

; <label>:29:                                     ; preds = %27, %21
  br label %30

; <label>:30:                                     ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %17

; <label>:33:                                     ; preds = %17
  %34 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %35 = load i32, i32* %4, align 4
  call void @lua_pushvalue(%struct.lua_State* %34, i32 %35)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_min(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i32 @lua_gettop(%struct.lua_State* %6)
  store i32 %7, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %8, 1
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = call i32 @luaL_argerror(%struct.lua_State* %11, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0))
  %13 = icmp ne i32 %12, 0
  br label %14

; <label>:14:                                     ; preds = %10, %1
  %15 = phi i1 [ true, %1 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  store i32 2, i32* %5, align 4
  br label %17

; <label>:17:                                     ; preds = %30, %14
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %33

; <label>:21:                                     ; preds = %17
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @lua_compare(%struct.lua_State* %22, i32 %23, i32 %24, i32 1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %4, align 4
  br label %29

; <label>:29:                                     ; preds = %27, %21
  br label %30

; <label>:30:                                     ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %17

; <label>:33:                                     ; preds = %17
  %34 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %35 = load i32, i32* %4, align 4
  call void @lua_pushvalue(%struct.lua_State* %34, i32 %35)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_modf(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i32 @lua_isinteger(%struct.lua_State* %5, i32 1)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %1
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %9, i32 1)
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnumber(%struct.lua_State* %10, double 0.000000e+00)
  br label %37

; <label>:11:                                     ; preds = %1
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = call double @luaL_checknumber(%struct.lua_State* %12, i32 1)
  store double %13, double* %3, align 8
  %14 = load double, double* %3, align 8
  %15 = fcmp olt double %14, 0.000000e+00
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %11
  %17 = load double, double* %3, align 8
  %18 = call double @llvm.ceil.f64(double %17)
  br label %22

; <label>:19:                                     ; preds = %11
  %20 = load double, double* %3, align 8
  %21 = call double @llvm.floor.f64(double %20)
  br label %22

; <label>:22:                                     ; preds = %19, %16
  %23 = phi double [ %18, %16 ], [ %21, %19 ]
  store double %23, double* %4, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %25 = load double, double* %4, align 8
  call void @pushnumint(%struct.lua_State* %24, double %25)
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %27 = load double, double* %3, align 8
  %28 = load double, double* %4, align 8
  %29 = fcmp oeq double %27, %28
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %22
  br label %35

; <label>:31:                                     ; preds = %22
  %32 = load double, double* %3, align 8
  %33 = load double, double* %4, align 8
  %34 = fsub double %32, %33
  br label %35

; <label>:35:                                     ; preds = %31, %30
  %36 = phi double [ 0.000000e+00, %30 ], [ %34, %31 ]
  call void @lua_pushnumber(%struct.lua_State* %26, double %36)
  br label %37

; <label>:37:                                     ; preds = %35, %8
  ret i32 2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_rad(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* %4, i32 1)
  %6 = fmul double %5, 0x3F91DF46A2529D39
  call void @lua_pushnumber(%struct.lua_State* %3, double %6)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_sin(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* %4, i32 1)
  %6 = call double @sin(double %5) #4
  call void @lua_pushnumber(%struct.lua_State* %3, double %6)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_sqrt(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* %4, i32 1)
  %6 = call double @sqrt(double %5) #4
  call void @lua_pushnumber(%struct.lua_State* %3, double %6)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_tan(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* %4, i32 1)
  %6 = call double @tan(double %5) #4
  call void @lua_pushnumber(%struct.lua_State* %3, double %6)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_type(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @lua_type(%struct.lua_State* %3, i32 1)
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %14

; <label>:6:                                      ; preds = %1
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i32 @lua_isinteger(%struct.lua_State* %8, i32 1)
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0)
  %13 = call i8* @lua_pushstring(%struct.lua_State* %7, i8* %12)
  br label %17

; <label>:14:                                     ; preds = %1
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* %15, i32 1)
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnil(%struct.lua_State* %16)
  br label %17

; <label>:17:                                     ; preds = %14, %6
  ret i32 1
}

declare i32 @lua_isinteger(%struct.lua_State*, i32) #1

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) #1

declare double @luaL_checknumber(%struct.lua_State*, i32) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind
declare double @acos(double) #3

; Function Attrs: nounwind
declare double @asin(double) #3

declare double @luaL_optnumber(%struct.lua_State*, i32, double) #1

; Function Attrs: nounwind
declare double @atan2(double, double) #3

declare void @lua_settop(%struct.lua_State*, i32) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.ceil.f64(double) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushnumint(%struct.lua_State*, double) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp oge double %6, 0xC3E0000000000000
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %2
  %9 = load double, double* %4, align 8
  %10 = fcmp olt double %9, 0x43E0000000000000
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %8
  %12 = load double, double* %4, align 8
  %13 = fptosi double %12 to i64
  store i64 %13, i64* %5, align 8
  br i1 true, label %14, label %17

; <label>:14:                                     ; preds = %11
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = load i64, i64* %5, align 8
  call void @lua_pushinteger(%struct.lua_State* %15, i64 %16)
  br label %20

; <label>:17:                                     ; preds = %11, %8, %2
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = load double, double* %4, align 8
  call void @lua_pushnumber(%struct.lua_State* %18, double %19)
  br label %20

; <label>:20:                                     ; preds = %17, %14
  ret void
}

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind
declare double @exp(double) #3

declare void @luaL_checkany(%struct.lua_State*, i32) #1

declare void @lua_pushnil(%struct.lua_State*) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #2

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #1

; Function Attrs: nounwind
declare double @fmod(double, double) #3

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #1

declare void @lua_pushboolean(%struct.lua_State*, i32) #1

declare i32 @lua_type(%struct.lua_State*, i32) #1

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind
declare double @log2(double) #3

; Function Attrs: nounwind
declare double @log10(double) #3

declare i32 @lua_gettop(%struct.lua_State*) #1

declare i32 @lua_compare(%struct.lua_State*, i32, i32, i32) #1

declare void @lua_pushvalue(%struct.lua_State*, i32) #1

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind
declare double @tan(double) #3

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #1

declare i8* @lua_newuserdatauv(%struct.lua_State*, i64, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @randseed(%struct.lua_State*, %struct.RanState*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.RanState*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.RanState* %1, %struct.RanState** %4, align 8
  %7 = call i64 @time(i64* null) #4
  store i64 %7, i64* %5, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = ptrtoint %struct.lua_State* %8 to i64
  store i64 %9, i64* %6, align 8
  %10 = load %struct.RanState*, %struct.RanState** %4, align 8
  %11 = getelementptr inbounds %struct.RanState, %struct.RanState* %10, i32 0, i32 0
  %12 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  call void @setseed(i64* %12, i64 %13, i64 %14)
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setseed(i64*, i64, i64) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  store i64 %8, i64* %10, align 8
  %11 = load i64*, i64** %4, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  store i64 255, i64* %12, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64*, i64** %4, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 2
  store i64 %13, i64* %15, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 3
  store i64 0, i64* %17, align 8
  store i32 0, i32* %7, align 4
  br label %18

; <label>:18:                                     ; preds = %24, %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 16
  br i1 %20, label %21, label %27

; <label>:21:                                     ; preds = %18
  %22 = load i64*, i64** %4, align 8
  %23 = call i64 @nextrand(i64* %22)
  br label %24

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %18

; <label>:27:                                     ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nextrand(i64*) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %8 = load i64*, i64** %2, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  %11 = load i64*, i64** %2, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load i64*, i64** %2, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = xor i64 %16, %17
  store i64 %18, i64* %5, align 8
  %19 = load i64*, i64** %2, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 3
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = xor i64 %21, %22
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %4, align 8
  %25 = mul i64 %24, 5
  %26 = call i64 @rotl(i64 %25, i32 7)
  %27 = mul i64 %26, 9
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* %6, align 8
  %30 = xor i64 %28, %29
  %31 = load i64*, i64** %2, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = xor i64 %33, %34
  %36 = load i64*, i64** %2, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %4, align 8
  %40 = shl i64 %39, 17
  %41 = xor i64 %38, %40
  %42 = load i64*, i64** %2, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 2
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @rotl(i64 %44, i32 45)
  %46 = load i64*, i64** %2, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 3
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %7, align 8
  ret i64 %48
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rotl(i64, i32) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = zext i32 %6 to i64
  %8 = shl i64 %5, %7
  %9 = load i64, i64* %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sub nsw i32 64, %10
  %12 = zext i32 %11 to i64
  %13 = lshr i64 %9, %12
  %14 = or i64 %8, %13
  ret i64 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_random(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.RanState*, align 8
  %8 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = call i8* @lua_touserdata(%struct.lua_State* %9, i32 -1001001)
  %11 = bitcast i8* %10 to %struct.RanState*
  store %struct.RanState* %11, %struct.RanState** %7, align 8
  %12 = load %struct.RanState*, %struct.RanState** %7, align 8
  %13 = getelementptr inbounds %struct.RanState, %struct.RanState* %12, i32 0, i32 0
  %14 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i32 0, i32 0
  %15 = call i64 @nextrand(i64* %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = call i32 @lua_gettop(%struct.lua_State* %16)
  switch i32 %17, label %36 [
    i32 0, label %18
    i32 1, label %22
    i32 2, label %31
  ]

; <label>:18:                                     ; preds = %1
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call double @I2d(i64 %20)
  call void @lua_pushnumber(%struct.lua_State* %19, double %21)
  store i32 1, i32* %2, align 4
  br label %60

; <label>:22:                                     ; preds = %1
  store i64 1, i64* %4, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = call i64 @luaL_checkinteger(%struct.lua_State* %23, i32 1)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %22
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = load i64, i64* %8, align 8
  call void @lua_pushinteger(%struct.lua_State* %28, i64 %29)
  store i32 1, i32* %2, align 4
  br label %60

; <label>:30:                                     ; preds = %22
  br label %39

; <label>:31:                                     ; preds = %1
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %33 = call i64 @luaL_checkinteger(%struct.lua_State* %32, i32 1)
  store i64 %33, i64* %4, align 8
  %34 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %35 = call i64 @luaL_checkinteger(%struct.lua_State* %34, i32 2)
  store i64 %35, i64* %5, align 8
  br label %39

; <label>:36:                                     ; preds = %1
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0))
  store i32 %38, i32* %2, align 4
  br label %60

; <label>:39:                                     ; preds = %31, %30
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %47, label %43

; <label>:43:                                     ; preds = %39
  %44 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %45 = call i32 @luaL_argerror(%struct.lua_State* %44, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0))
  %46 = icmp ne i32 %45, 0
  br label %47

; <label>:47:                                     ; preds = %43, %39
  %48 = phi i1 [ true, %39 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %4, align 8
  %53 = sub i64 %51, %52
  %54 = load %struct.RanState*, %struct.RanState** %7, align 8
  %55 = call i64 @project(i64 %50, i64 %53, %struct.RanState* %54)
  store i64 %55, i64* %6, align 8
  %56 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %4, align 8
  %59 = add i64 %57, %58
  call void @lua_pushinteger(%struct.lua_State* %56, i64 %59)
  store i32 1, i32* %2, align 4
  br label %60

; <label>:60:                                     ; preds = %47, %36, %27, %18
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_randomseed(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.RanState*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i8* @lua_touserdata(%struct.lua_State* %6, i32 -1001001)
  %8 = bitcast i8* %7 to %struct.RanState*
  store %struct.RanState* %8, %struct.RanState** %3, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i32 @lua_type(%struct.lua_State* %9, i32 1)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %1
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = load %struct.RanState*, %struct.RanState** %3, align 8
  call void @randseed(%struct.lua_State* %13, %struct.RanState* %14)
  br label %25

; <label>:15:                                     ; preds = %1
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %17 = call i64 @luaL_checkinteger(%struct.lua_State* %16, i32 1)
  store i64 %17, i64* %4, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %19 = call i64 @luaL_optinteger(%struct.lua_State* %18, i32 2, i64 0)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.RanState*, %struct.RanState** %3, align 8
  %21 = getelementptr inbounds %struct.RanState, %struct.RanState* %20, i32 0, i32 0
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i32 0, i32 0
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %5, align 8
  call void @setseed(i64* %22, i64 %23, i64 %24)
  br label %25

; <label>:25:                                     ; preds = %15, %12
  ret i32 0
}

declare i8* @lua_touserdata(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal double @I2d(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = lshr i64 %3, 11
  %5 = uitofp i64 %4 to double
  %6 = fmul double %5, 0x3CA0000000000000
  ret double %6
}

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @project(i64, i64, %struct.RanState*) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.RanState*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.RanState* %2, %struct.RanState** %6, align 8
  %8 = load i64, i64* %5, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = add i64 %10, 1
  %12 = and i64 %9, %11
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %39

; <label>:14:                                     ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = lshr i64 %15, 1
  %17 = load i64, i64* %7, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = lshr i64 %19, 2
  %21 = load i64, i64* %7, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = lshr i64 %23, 4
  %25 = load i64, i64* %7, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = lshr i64 %27, 8
  %29 = load i64, i64* %7, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = lshr i64 %31, 16
  %33 = load i64, i64* %7, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = lshr i64 %35, 32
  %37 = load i64, i64* %7, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %7, align 8
  br label %39

; <label>:39:                                     ; preds = %14, %3
  br label %40

; <label>:40:                                     ; preds = %46, %39
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %4, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %51

; <label>:46:                                     ; preds = %40
  %47 = load %struct.RanState*, %struct.RanState** %6, align 8
  %48 = getelementptr inbounds %struct.RanState, %struct.RanState* %47, i32 0, i32 0
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %48, i32 0, i32 0
  %50 = call i64 @nextrand(i64* %49)
  store i64 %50, i64* %4, align 8
  br label %40

; <label>:51:                                     ; preds = %40
  %52 = load i64, i64* %4, align 8
  ret i64 %52
}

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
