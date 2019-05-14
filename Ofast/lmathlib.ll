; ModuleID = 'lmathlib.c'
source_filename = "lmathlib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque

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

; Function Attrs: nounwind uwtable
define i32 @luaopen_math(%struct.lua_State*) local_unnamed_addr #0 {
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #7
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 27) #7
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([28 x %struct.luaL_Reg], [28 x %struct.luaL_Reg]* @mathlib, i64 0, i64 0), i32 0) #7
  tail call void @lua_pushnumber(%struct.lua_State* %0, double 0x400921FB54442D18) #7
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #7
  tail call void @lua_pushnumber(%struct.lua_State* %0, double 0x7FF0000000000000) #7
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #7
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 9223372036854775807) #7
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #7
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 -9223372036854775808) #7
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)) #7
  %2 = tail call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 32, i32 0) #7
  %3 = tail call i64 @time(i64* null) #7
  %4 = ptrtoint %struct.lua_State* %0 to i64
  %5 = bitcast i8* %2 to i64*
  tail call fastcc void @setseed(i64* %5, i64 %3, i64 %4) #7
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([3 x %struct.luaL_Reg], [3 x %struct.luaL_Reg]* @randfuncs, i64 0, i64 0), i32 1) #7
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

declare void @lua_pushnumber(%struct.lua_State*, double) local_unnamed_addr #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @math_abs(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_isinteger(%struct.lua_State* %0, i32 1) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 @lua_tointegerx(%struct.lua_State* %0, i32 1, i32* null) #7
  %6 = icmp slt i64 %5, 0
  %7 = sub i64 0, %5
  %8 = select i1 %6, i64 %7, i64 %5
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %8) #7
  br label %12

; <label>:9:                                      ; preds = %1
  %10 = tail call fast double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %11 = tail call fast double @llvm.fabs.f64(double %10)
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %11) #7
  br label %12

; <label>:12:                                     ; preds = %9, %4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_acos(%struct.lua_State*) #0 {
  %2 = tail call fast double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = tail call fast double @__acos_finite(double %2) #8
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_asin(%struct.lua_State*) #0 {
  %2 = tail call fast double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = tail call fast double @__asin_finite(double %2) #8
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_atan(%struct.lua_State*) #0 {
  %2 = tail call fast double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = tail call fast double @luaL_optnumber(%struct.lua_State* %0, i32 2, double 1.000000e+00) #7
  %4 = tail call fast double @__atan2_finite(double %2, double %3) #8
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %4) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_ceil(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_isinteger(%struct.lua_State* %0, i32 1) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

; <label>:4:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #7
  br label %14

; <label>:5:                                      ; preds = %1
  %6 = tail call fast double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %7 = tail call fast double @llvm.ceil.f64(double %6)
  %8 = fcmp fast oge double %7, 0xC3E0000000000000
  %9 = fcmp fast olt double %7, 0x43E0000000000000
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %5
  %12 = fptosi double %7 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %12) #7
  br label %14

; <label>:13:                                     ; preds = %5
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %7) #7
  br label %14

; <label>:14:                                     ; preds = %13, %11, %4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_cos(%struct.lua_State*) #0 {
  %2 = tail call fast double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = tail call fast double @llvm.cos.f64(double %2)
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_deg(%struct.lua_State*) #0 {
  %2 = tail call fast double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = fmul fast double %2, 0x404CA5DC1A63C1F8
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_exp(%struct.lua_State*) #0 {
  %2 = tail call fast double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = tail call fast double @llvm.exp.f64(double %2)
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_toint(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7
  %4 = call i64 @lua_tointegerx(%struct.lua_State* %0, i32 1, i32* nonnull %2) #7
  %5 = load i32, i32* %2, align 4, !tbaa !2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

; <label>:7:                                      ; preds = %1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %4) #7
  br label %9

; <label>:8:                                      ; preds = %1
  call void @luaL_checkany(%struct.lua_State* %0, i32 1) #7
  call void @lua_pushnil(%struct.lua_State* %0) #7
  br label %9

; <label>:9:                                      ; preds = %8, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_floor(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_isinteger(%struct.lua_State* %0, i32 1) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

; <label>:4:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #7
  br label %14

; <label>:5:                                      ; preds = %1
  %6 = tail call fast double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %7 = tail call fast double @llvm.floor.f64(double %6)
  %8 = fcmp fast oge double %7, 0xC3E0000000000000
  %9 = fcmp fast olt double %7, 0x43E0000000000000
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %5
  %12 = fptosi double %7 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %12) #7
  br label %14

; <label>:13:                                     ; preds = %5
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %7) #7
  br label %14

; <label>:14:                                     ; preds = %13, %11, %4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_fmod(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_isinteger(%struct.lua_State* %0, i32 1) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %19, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lua_isinteger(%struct.lua_State* %0, i32 2) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

; <label>:7:                                      ; preds = %4
  %8 = tail call i64 @lua_tointegerx(%struct.lua_State* %0, i32 2, i32* null) #7
  %9 = add i64 %8, 1
  %10 = icmp ult i64 %9, 2
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %7
  %12 = icmp eq i64 %8, 0
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %11
  %14 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #7
  br label %15

; <label>:15:                                     ; preds = %11, %13
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 0) #7
  br label %23

; <label>:16:                                     ; preds = %7
  %17 = tail call i64 @lua_tointegerx(%struct.lua_State* %0, i32 1, i32* null) #7
  %18 = srem i64 %17, %8
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %18) #7
  br label %23

; <label>:19:                                     ; preds = %4, %1
  %20 = tail call fast double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %21 = tail call fast double @luaL_checknumber(%struct.lua_State* %0, i32 2) #7
  %22 = frem fast double %20, %21
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %22) #7
  br label %23

; <label>:23:                                     ; preds = %15, %16, %19
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_ult(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #7
  %3 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #7
  %4 = icmp ult i64 %2, %3
  %5 = zext i1 %4 to i32
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %5) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_log(%struct.lua_State*) #0 {
  %2 = tail call fast double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #7
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = tail call fast double @llvm.log.f64(double %2)
  br label %20

; <label>:7:                                      ; preds = %1
  %8 = tail call fast double @luaL_checknumber(%struct.lua_State* %0, i32 2) #7
  %9 = fcmp fast oeq double %8, 2.000000e+00
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %7
  %11 = tail call fast double @llvm.log2.f64(double %2)
  br label %20

; <label>:12:                                     ; preds = %7
  %13 = fcmp fast oeq double %8, 1.000000e+01
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %12
  %15 = tail call fast double @llvm.log10.f64(double %2)
  br label %20

; <label>:16:                                     ; preds = %12
  %17 = tail call fast double @llvm.log.f64(double %2)
  %18 = tail call fast double @llvm.log.f64(double %8)
  %19 = fdiv fast double %17, %18
  br label %20

; <label>:20:                                     ; preds = %10, %16, %14, %5
  %21 = phi double [ %6, %5 ], [ %11, %10 ], [ %15, %14 ], [ %19, %16 ]
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %21) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_max(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %6, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0)) #7
  br label %17

; <label>:6:                                      ; preds = %1
  %7 = icmp eq i32 %2, 1
  br i1 %7, label %17, label %8

; <label>:8:                                      ; preds = %6
  br label %9

; <label>:9:                                      ; preds = %8, %9
  %10 = phi i32 [ %15, %9 ], [ 2, %8 ]
  %11 = phi i32 [ %14, %9 ], [ 1, %8 ]
  %12 = tail call i32 @lua_compare(%struct.lua_State* %0, i32 %11, i32 %10, i32 1) #7
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 %11, i32 %10
  %15 = add nuw nsw i32 %10, 1
  %16 = icmp eq i32 %10, %2
  br i1 %16, label %17, label %9

; <label>:17:                                     ; preds = %9, %4, %6
  %18 = phi i32 [ 1, %6 ], [ 1, %4 ], [ %14, %9 ]
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %18) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_min(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %6, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0)) #7
  br label %17

; <label>:6:                                      ; preds = %1
  %7 = icmp eq i32 %2, 1
  br i1 %7, label %17, label %8

; <label>:8:                                      ; preds = %6
  br label %9

; <label>:9:                                      ; preds = %8, %9
  %10 = phi i32 [ %15, %9 ], [ 2, %8 ]
  %11 = phi i32 [ %14, %9 ], [ 1, %8 ]
  %12 = tail call i32 @lua_compare(%struct.lua_State* %0, i32 %10, i32 %11, i32 1) #7
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 %11, i32 %10
  %15 = add nuw nsw i32 %10, 1
  %16 = icmp eq i32 %10, %2
  br i1 %16, label %17, label %9

; <label>:17:                                     ; preds = %9, %4, %6
  %18 = phi i32 [ 1, %6 ], [ 1, %4 ], [ %14, %9 ]
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %18) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_modf(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_isinteger(%struct.lua_State* %0, i32 1) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

; <label>:4:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #7
  tail call void @lua_pushnumber(%struct.lua_State* %0, double 0.000000e+00) #7
  br label %21

; <label>:5:                                      ; preds = %1
  %6 = tail call fast double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %7 = fcmp fast olt double %6, 0.000000e+00
  %8 = tail call fast double @llvm.ceil.f64(double %6)
  %9 = tail call fast double @llvm.floor.f64(double %6)
  %10 = select i1 %7, double %8, double %9
  %11 = fcmp fast oge double %10, 0xC3E0000000000000
  %12 = fcmp fast olt double %10, 0x43E0000000000000
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %5
  %15 = fptosi double %10 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %15) #7
  br label %17

; <label>:16:                                     ; preds = %5
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %10) #7
  br label %17

; <label>:17:                                     ; preds = %14, %16
  %18 = fcmp fast oeq double %6, %10
  %19 = fsub fast double %6, %10
  %20 = select i1 %18, double 0.000000e+00, double %19
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %20) #7
  br label %21

; <label>:21:                                     ; preds = %17, %4
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal i32 @math_rad(%struct.lua_State*) #0 {
  %2 = tail call fast double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = fmul fast double %2, 0x3F91DF46A2529D39
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_sin(%struct.lua_State*) #0 {
  %2 = tail call fast double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = tail call fast double @llvm.sin.f64(double %2)
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_sqrt(%struct.lua_State*) #0 {
  %2 = tail call fast double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = tail call fast double @llvm.sqrt.f64(double %2)
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_tan(%struct.lua_State*) #0 {
  %2 = tail call fast double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = tail call fast double @tan(double %2) #8
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_type(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7
  %3 = icmp eq i32 %2, 3
  br i1 %3, label %4, label %9

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lua_isinteger(%struct.lua_State* %0, i32 1) #7
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0)
  %8 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %7) #7
  br label %10

; <label>:9:                                      ; preds = %1
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #7
  tail call void @lua_pushnil(%struct.lua_State* %0) #7
  br label %10

; <label>:10:                                     ; preds = %9, %4
  ret i32 1
}

declare i32 @lua_isinteger(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

declare double @luaL_checknumber(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind readnone
declare double @__acos_finite(double) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare double @__asin_finite(double) local_unnamed_addr #4

declare double @luaL_optnumber(%struct.lua_State*, i32, double) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare double @__atan2_finite(double, double) local_unnamed_addr #4

declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.ceil.f64(double) #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.cos.f64(double) #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.exp.f64(double) #3

declare void @luaL_checkany(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #3

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.log.f64(double) #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.log2.f64(double) #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.log10.f64(double) #3

declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

declare i32 @lua_compare(%struct.lua_State*, i32, i32, i32) local_unnamed_addr #1

declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sin.f64(double) #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nounwind readnone
declare double @tan(double) local_unnamed_addr #4

declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

declare i8* @lua_newuserdatauv(%struct.lua_State*, i64, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #5

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @setseed(i64* nocapture, i64, i64) unnamed_addr #6 {
  store i64 %1, i64* %0, align 8, !tbaa !6
  %4 = getelementptr inbounds i64, i64* %0, i64 1
  store i64 255, i64* %4, align 8, !tbaa !6
  %5 = getelementptr inbounds i64, i64* %0, i64 2
  store i64 %2, i64* %5, align 8, !tbaa !6
  %6 = getelementptr inbounds i64, i64* %0, i64 3
  store i64 0, i64* %6, align 8, !tbaa !6
  %7 = xor i64 %2, %1
  %8 = xor i64 %1, 255
  %9 = xor i64 %7, 8972014882652415
  %10 = xor i64 %9, %8
  %11 = xor i64 %1, 33423360
  %12 = shl i64 %7, 17
  %13 = shl i64 %9, 45
  %14 = lshr i64 %9, 19
  %15 = or i64 %14, %13
  %16 = xor i64 %12, 8972014882652415
  %17 = xor i64 %15, %11
  %18 = xor i64 %17, %10
  %19 = xor i64 %16, %11
  %20 = shl i64 %11, 17
  %21 = xor i64 %16, %20
  %22 = shl i64 %17, 45
  %23 = lshr i64 %17, 19
  %24 = or i64 %23, %22
  %25 = xor i64 %21, %18
  %26 = xor i64 %24, %19
  %27 = xor i64 %26, %18
  %28 = xor i64 %25, %19
  %29 = shl i64 %19, 17
  %30 = xor i64 %25, %29
  %31 = shl i64 %26, 45
  %32 = lshr i64 %26, 19
  %33 = or i64 %32, %31
  %34 = xor i64 %30, %27
  %35 = xor i64 %33, %28
  %36 = xor i64 %35, %27
  %37 = xor i64 %34, %28
  %38 = shl i64 %28, 17
  %39 = xor i64 %34, %38
  %40 = shl i64 %35, 45
  %41 = lshr i64 %35, 19
  %42 = or i64 %41, %40
  %43 = xor i64 %39, %36
  %44 = xor i64 %42, %37
  %45 = xor i64 %44, %36
  %46 = xor i64 %43, %37
  %47 = shl i64 %37, 17
  %48 = xor i64 %43, %47
  %49 = shl i64 %44, 45
  %50 = lshr i64 %44, 19
  %51 = or i64 %50, %49
  %52 = xor i64 %48, %45
  %53 = xor i64 %51, %46
  %54 = xor i64 %53, %45
  %55 = xor i64 %52, %46
  %56 = shl i64 %46, 17
  %57 = xor i64 %52, %56
  %58 = shl i64 %53, 45
  %59 = lshr i64 %53, 19
  %60 = or i64 %59, %58
  %61 = xor i64 %57, %54
  %62 = xor i64 %60, %55
  %63 = xor i64 %62, %54
  %64 = xor i64 %61, %55
  %65 = shl i64 %55, 17
  %66 = xor i64 %61, %65
  %67 = shl i64 %62, 45
  %68 = lshr i64 %62, 19
  %69 = or i64 %68, %67
  %70 = xor i64 %66, %63
  %71 = xor i64 %69, %64
  %72 = xor i64 %71, %63
  %73 = xor i64 %70, %64
  %74 = shl i64 %64, 17
  %75 = xor i64 %70, %74
  %76 = shl i64 %71, 45
  %77 = lshr i64 %71, 19
  %78 = or i64 %77, %76
  %79 = xor i64 %75, %72
  %80 = xor i64 %78, %73
  %81 = xor i64 %80, %72
  %82 = xor i64 %79, %73
  %83 = shl i64 %73, 17
  %84 = xor i64 %79, %83
  %85 = shl i64 %80, 45
  %86 = lshr i64 %80, 19
  %87 = or i64 %86, %85
  %88 = xor i64 %84, %81
  %89 = xor i64 %87, %82
  %90 = xor i64 %89, %81
  %91 = xor i64 %88, %82
  %92 = shl i64 %82, 17
  %93 = xor i64 %88, %92
  %94 = shl i64 %89, 45
  %95 = lshr i64 %89, 19
  %96 = or i64 %95, %94
  %97 = xor i64 %93, %90
  %98 = xor i64 %96, %91
  %99 = xor i64 %98, %90
  %100 = xor i64 %97, %91
  %101 = shl i64 %91, 17
  %102 = xor i64 %97, %101
  %103 = shl i64 %98, 45
  %104 = lshr i64 %98, 19
  %105 = or i64 %104, %103
  %106 = xor i64 %102, %99
  %107 = xor i64 %105, %100
  %108 = xor i64 %107, %99
  %109 = xor i64 %106, %100
  %110 = shl i64 %100, 17
  %111 = xor i64 %106, %110
  %112 = shl i64 %107, 45
  %113 = lshr i64 %107, 19
  %114 = or i64 %113, %112
  %115 = xor i64 %111, %108
  %116 = xor i64 %114, %109
  %117 = xor i64 %116, %108
  %118 = xor i64 %115, %109
  %119 = shl i64 %109, 17
  %120 = xor i64 %115, %119
  %121 = shl i64 %116, 45
  %122 = lshr i64 %116, 19
  %123 = or i64 %122, %121
  %124 = xor i64 %120, %117
  %125 = xor i64 %123, %118
  %126 = xor i64 %125, %117
  %127 = xor i64 %124, %118
  %128 = shl i64 %118, 17
  %129 = xor i64 %124, %128
  %130 = shl i64 %125, 45
  %131 = lshr i64 %125, 19
  %132 = or i64 %131, %130
  %133 = xor i64 %129, %126
  %134 = xor i64 %132, %127
  %135 = xor i64 %134, %126
  %136 = xor i64 %133, %127
  %137 = shl i64 %127, 17
  %138 = xor i64 %133, %137
  %139 = shl i64 %134, 45
  %140 = lshr i64 %134, 19
  %141 = or i64 %140, %139
  store i64 %135, i64* %0, align 8, !tbaa !6
  store i64 %136, i64* %4, align 8, !tbaa !6
  store i64 %138, i64* %5, align 8, !tbaa !6
  store i64 %141, i64* %6, align 8, !tbaa !6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @math_random(%struct.lua_State*) #0 {
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1001001) #7
  %3 = bitcast i8* %2 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !6
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !6
  %8 = getelementptr inbounds i8, i8* %2, i64 16
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !6
  %11 = xor i64 %10, %4
  %12 = getelementptr inbounds i8, i8* %2, i64 24
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !6
  %15 = xor i64 %14, %7
  %16 = mul i64 %7, 5
  %17 = mul i64 %7, 640
  %18 = lshr i64 %16, 57
  %19 = or i64 %18, %17
  %20 = mul i64 %19, 9
  %21 = xor i64 %15, %4
  store i64 %21, i64* %3, align 8, !tbaa !6
  %22 = xor i64 %11, %7
  store i64 %22, i64* %6, align 8, !tbaa !6
  %23 = shl i64 %7, 17
  %24 = xor i64 %11, %23
  store i64 %24, i64* %9, align 8, !tbaa !6
  %25 = shl i64 %15, 45
  %26 = lshr i64 %15, 19
  %27 = or i64 %26, %25
  store i64 %27, i64* %13, align 8, !tbaa !6
  %28 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7
  switch i32 %28, label %40 [
    i32 0, label %29
    i32 1, label %33
    i32 2, label %37
  ]

; <label>:29:                                     ; preds = %1
  %30 = lshr i64 %20, 11
  %31 = uitofp i64 %30 to double
  %32 = fmul fast double %31, 0x3CA0000000000000
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %32) #7
  br label %100

; <label>:33:                                     ; preds = %1
  %34 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #7
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

; <label>:36:                                     ; preds = %33
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %20) #7
  br label %100

; <label>:37:                                     ; preds = %1
  %38 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #7
  %39 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #7
  br label %42

; <label>:40:                                     ; preds = %1
  %41 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0)) #7
  br label %100

; <label>:42:                                     ; preds = %33, %37
  %43 = phi i64 [ %39, %37 ], [ %34, %33 ]
  %44 = phi i64 [ %38, %37 ], [ 1, %33 ]
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %48

; <label>:46:                                     ; preds = %42
  %47 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0)) #7
  br label %48

; <label>:48:                                     ; preds = %42, %46
  %49 = sub i64 %43, %44
  %50 = add i64 %49, 1
  %51 = and i64 %50, %49
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %66, label %53

; <label>:53:                                     ; preds = %48
  %54 = lshr i64 %49, 1
  %55 = or i64 %54, %49
  %56 = lshr i64 %55, 2
  %57 = or i64 %56, %55
  %58 = lshr i64 %57, 4
  %59 = or i64 %58, %57
  %60 = lshr i64 %59, 8
  %61 = or i64 %60, %59
  %62 = lshr i64 %61, 16
  %63 = or i64 %62, %61
  %64 = lshr i64 %63, 32
  %65 = or i64 %64, %63
  br label %66

; <label>:66:                                     ; preds = %53, %48
  %67 = phi i64 [ %65, %53 ], [ %49, %48 ]
  %68 = and i64 %67, %20
  %69 = icmp ugt i64 %68, %49
  br i1 %69, label %70, label %97

; <label>:70:                                     ; preds = %66
  %71 = load i64, i64* %3, align 8, !tbaa !6
  %72 = load i64, i64* %6, align 8, !tbaa !6
  %73 = load i64, i64* %9, align 8, !tbaa !6
  %74 = load i64, i64* %13, align 8, !tbaa !6
  br label %75

; <label>:75:                                     ; preds = %75, %70
  %76 = phi i64 [ %74, %70 ], [ %93, %75 ]
  %77 = phi i64 [ %73, %70 ], [ %90, %75 ]
  %78 = phi i64 [ %72, %70 ], [ %88, %75 ]
  %79 = phi i64 [ %71, %70 ], [ %87, %75 ]
  %80 = xor i64 %79, %77
  %81 = xor i64 %78, %76
  %82 = mul i64 %78, 5
  %83 = mul i64 %78, 640
  %84 = lshr i64 %82, 57
  %85 = or i64 %84, %83
  %86 = mul i64 %85, 9
  %87 = xor i64 %81, %79
  %88 = xor i64 %80, %78
  %89 = shl i64 %78, 17
  %90 = xor i64 %80, %89
  %91 = shl i64 %81, 45
  %92 = lshr i64 %81, 19
  %93 = or i64 %92, %91
  %94 = and i64 %86, %67
  %95 = icmp ugt i64 %94, %49
  br i1 %95, label %75, label %96

; <label>:96:                                     ; preds = %75
  store i64 %87, i64* %3, align 8, !tbaa !6
  store i64 %88, i64* %6, align 8, !tbaa !6
  store i64 %90, i64* %9, align 8, !tbaa !6
  store i64 %93, i64* %13, align 8, !tbaa !6
  br label %97

; <label>:97:                                     ; preds = %66, %96
  %98 = phi i64 [ %94, %96 ], [ %68, %66 ]
  %99 = add i64 %98, %44
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %99) #7
  br label %100

; <label>:100:                                    ; preds = %97, %40, %36, %29
  %101 = phi i32 [ %41, %40 ], [ 1, %97 ], [ 1, %36 ], [ 1, %29 ]
  ret i32 %101
}

; Function Attrs: nounwind uwtable
define internal i32 @math_randomseed(%struct.lua_State*) #0 {
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1001001) #7
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %9

; <label>:5:                                      ; preds = %1
  %6 = tail call i64 @time(i64* null) #7
  %7 = ptrtoint %struct.lua_State* %0 to i64
  %8 = bitcast i8* %2 to i64*
  tail call fastcc void @setseed(i64* %8, i64 %6, i64 %7) #7
  br label %13

; <label>:9:                                      ; preds = %1
  %10 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #7
  %11 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 0) #7
  %12 = bitcast i8* %2 to i64*
  tail call fastcc void @setseed(i64* %12, i64 %10, i64 %11)
  br label %13

; <label>:13:                                     ; preds = %9, %5
  ret i32 0
}

declare i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !4, i64 0}
