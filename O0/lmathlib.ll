; ModuleID = 'lmathlib.c'
source_filename = "lmathlib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque

@mathlib = internal constant [28 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @math_abs }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @math_acos }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @math_asin }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @math_atan }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @math_ceil }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @math_cos }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @math_deg }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @math_exp }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @math_toint }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @math_floor }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @math_fmod }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @math_ult }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.lua_State*)* @math_log }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.lua_State*)* @math_max }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.lua_State*)* @math_min }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.lua_State*)* @math_modf }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.lua_State*)* @math_rad }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.lua_State*)* @math_random }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.lua_State*)* @math_randomseed }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.lua_State*)* @math_sin }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.lua_State*)* @math_sqrt }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i32 (%struct.lua_State*)* @math_tan }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 (%struct.lua_State*)* @math_type }, %struct.luaL_Reg { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg zeroinitializer], align 16
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
@.str.21 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"randomseed\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"value expected\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"interval is empty\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"interval too large\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"float\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaopen_math(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkversion_(%struct.lua_State* %3, double 5.030000e+02, i64 136)
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
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #1

declare void @lua_pushnumber(%struct.lua_State*, double) #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

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
define internal i32 @math_random(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %7 = call i32 @rand() #4
  %8 = sitofp i32 %7 to double
  %9 = fmul double %8, 0x3E00000000000000
  store double %9, double* %6, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call i32 @lua_gettop(%struct.lua_State* %10)
  switch i32 %11, label %23 [
    i32 0, label %12
    i32 1, label %15
    i32 2, label %18
  ]

; <label>:12:                                     ; preds = %1
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = load double, double* %6, align 8
  call void @lua_pushnumber(%struct.lua_State* %13, double %14)
  store i32 1, i32* %2, align 4
  br label %63

; <label>:15:                                     ; preds = %1
  store i64 1, i64* %4, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = call i64 @luaL_checkinteger(%struct.lua_State* %16, i32 1)
  store i64 %17, i64* %5, align 8
  br label %26

; <label>:18:                                     ; preds = %1
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = call i64 @luaL_checkinteger(%struct.lua_State* %19, i32 1)
  store i64 %20, i64* %4, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = call i64 @luaL_checkinteger(%struct.lua_State* %21, i32 2)
  store i64 %22, i64* %5, align 8
  br label %26

; <label>:23:                                     ; preds = %1
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0))
  store i32 %25, i32* %2, align 4
  br label %63

; <label>:26:                                     ; preds = %18, %15
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %34, label %30

; <label>:30:                                     ; preds = %26
  %31 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %32 = call i32 @luaL_argerror(%struct.lua_State* %31, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0))
  %33 = icmp ne i32 %32, 0
  br label %34

; <label>:34:                                     ; preds = %30, %26
  %35 = phi i1 [ true, %26 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %4, align 8
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %48, label %39

; <label>:39:                                     ; preds = %34
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %4, align 8
  %42 = add nsw i64 9223372036854775807, %41
  %43 = icmp sle i64 %40, %42
  br i1 %43, label %48, label %44

; <label>:44:                                     ; preds = %39
  %45 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %46 = call i32 @luaL_argerror(%struct.lua_State* %45, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0))
  %47 = icmp ne i32 %46, 0
  br label %48

; <label>:48:                                     ; preds = %44, %39, %34
  %49 = phi i1 [ true, %39 ], [ true, %34 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %4, align 8
  %53 = sub nsw i64 %51, %52
  %54 = sitofp i64 %53 to double
  %55 = fadd double %54, 1.000000e+00
  %56 = load double, double* %6, align 8
  %57 = fmul double %56, %55
  store double %57, double* %6, align 8
  %58 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %59 = load double, double* %6, align 8
  %60 = fptosi double %59 to i64
  %61 = load i64, i64* %4, align 8
  %62 = add nsw i64 %60, %61
  call void @lua_pushinteger(%struct.lua_State* %58, i64 %62)
  store i32 1, i32* %2, align 4
  br label %63

; <label>:63:                                     ; preds = %48, %23, %12
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_randomseed(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call double @luaL_checknumber(%struct.lua_State* %3, i32 1)
  %5 = fptosi double %4 to i64
  %6 = trunc i64 %5 to i32
  call void @srand(i32 %6) #4
  %7 = call i32 @rand() #4
  ret i32 0
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
  br i1 %5, label %6, label %17

; <label>:6:                                      ; preds = %1
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i32 @lua_isinteger(%struct.lua_State* %7, i32 1)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %6
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = call i8* @lua_pushstring(%struct.lua_State* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0))
  br label %16

; <label>:13:                                     ; preds = %6
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = call i8* @lua_pushstring(%struct.lua_State* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0))
  br label %16

; <label>:16:                                     ; preds = %13, %10
  br label %20

; <label>:17:                                     ; preds = %1
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* %18, i32 1)
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnil(%struct.lua_State* %19)
  br label %20

; <label>:20:                                     ; preds = %17, %16
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
declare i32 @rand() #3

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

; Function Attrs: nounwind
declare void @srand(i32) #3

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind
declare double @tan(double) #3

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
