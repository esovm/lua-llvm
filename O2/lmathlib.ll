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
  tail call void @luaL_checkversion_(%struct.lua_State* %0, double 5.040000e+02, i64 136) #5
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 27) #5
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([28 x %struct.luaL_Reg], [28 x %struct.luaL_Reg]* @mathlib, i64 0, i64 0), i32 0) #5
  tail call void @lua_pushnumber(%struct.lua_State* %0, double 0x400921FB54442D18) #5
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #5
  tail call void @lua_pushnumber(%struct.lua_State* %0, double 0x7FF0000000000000) #5
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #5
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 9223372036854775807) #5
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #5
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 -9223372036854775808) #5
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)) #5
  %2 = tail call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 32, i32 0) #5
  %3 = tail call i64 @time(i64* null) #5
  %4 = ptrtoint %struct.lua_State* %0 to i64
  %5 = bitcast i8* %2 to i64*
  store i64 %3, i64* %5, align 8, !tbaa !2
  %6 = getelementptr inbounds i8, i8* %2, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 255, i64* %7, align 8, !tbaa !2
  %8 = getelementptr inbounds i8, i8* %2, i64 16
  %9 = bitcast i8* %8 to i64*
  store i64 %4, i64* %9, align 8, !tbaa !2
  %10 = getelementptr inbounds i8, i8* %2, i64 24
  %11 = bitcast i8* %10 to i64*
  store i64 0, i64* %11, align 8, !tbaa !2
  br label %12

; <label>:12:                                     ; preds = %12, %1
  %13 = phi i64 [ 0, %1 ], [ %35, %12 ]
  %14 = phi i64 [ %4, %1 ], [ %32, %12 ]
  %15 = phi i64 [ 255, %1 ], [ %30, %12 ]
  %16 = phi i64 [ %3, %1 ], [ %29, %12 ]
  %17 = phi i32 [ 0, %1 ], [ %36, %12 ]
  %18 = xor i64 %16, %14
  %19 = xor i64 %15, %13
  %20 = xor i64 %19, %16
  %21 = xor i64 %18, %15
  %22 = shl i64 %15, 17
  %23 = xor i64 %18, %22
  %24 = shl i64 %19, 45
  %25 = lshr i64 %19, 19
  %26 = or i64 %25, %24
  %27 = xor i64 %20, %23
  %28 = xor i64 %21, %26
  %29 = xor i64 %28, %20
  %30 = xor i64 %27, %21
  %31 = shl i64 %21, 17
  %32 = xor i64 %27, %31
  %33 = shl i64 %28, 45
  %34 = lshr i64 %28, 19
  %35 = or i64 %34, %33
  %36 = add nuw nsw i32 %17, 2
  %37 = icmp eq i32 %36, 16
  br i1 %37, label %38, label %12

; <label>:38:                                     ; preds = %12
  store i64 %29, i64* %5, align 8, !tbaa !2
  store i64 %30, i64* %7, align 8, !tbaa !2
  store i64 %32, i64* %9, align 8, !tbaa !2
  store i64 %35, i64* %11, align 8, !tbaa !2
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([3 x %struct.luaL_Reg], [3 x %struct.luaL_Reg]* @randfuncs, i64 0, i64 0), i32 1) #5
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
  %2 = tail call i32 @lua_isinteger(%struct.lua_State* %0, i32 1) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 @lua_tointegerx(%struct.lua_State* %0, i32 1, i32* null) #5
  %6 = icmp slt i64 %5, 0
  %7 = sub i64 0, %5
  %8 = select i1 %6, i64 %7, i64 %5
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %8) #5
  br label %12

; <label>:9:                                      ; preds = %1
  %10 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #5
  %11 = tail call double @llvm.fabs.f64(double %10)
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %11) #5
  br label %12

; <label>:12:                                     ; preds = %9, %4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_acos(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #5
  %3 = tail call double @acos(double %2) #5
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_asin(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #5
  %3 = tail call double @asin(double %2) #5
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_atan(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #5
  %3 = tail call double @luaL_optnumber(%struct.lua_State* %0, i32 2, double 1.000000e+00) #5
  %4 = tail call double @atan2(double %2, double %3) #5
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %4) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_ceil(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_isinteger(%struct.lua_State* %0, i32 1) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

; <label>:4:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #5
  br label %14

; <label>:5:                                      ; preds = %1
  %6 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #5
  %7 = tail call double @llvm.ceil.f64(double %6)
  %8 = fcmp oge double %7, 0xC3E0000000000000
  %9 = fcmp olt double %7, 0x43E0000000000000
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %5
  %12 = fptosi double %7 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %12) #5
  br label %14

; <label>:13:                                     ; preds = %5
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %7) #5
  br label %14

; <label>:14:                                     ; preds = %13, %11, %4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_cos(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #5
  %3 = tail call double @cos(double %2) #5
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_deg(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #5
  %3 = fmul double %2, 0x404CA5DC1A63C1F8
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_exp(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #5
  %3 = tail call double @exp(double %2) #5
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_toint(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5
  %4 = call i64 @lua_tointegerx(%struct.lua_State* %0, i32 1, i32* nonnull %2) #5
  %5 = load i32, i32* %2, align 4, !tbaa !6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

; <label>:7:                                      ; preds = %1
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %4) #5
  br label %9

; <label>:8:                                      ; preds = %1
  call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5
  call void @lua_pushnil(%struct.lua_State* %0) #5
  br label %9

; <label>:9:                                      ; preds = %8, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_floor(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_isinteger(%struct.lua_State* %0, i32 1) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

; <label>:4:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #5
  br label %14

; <label>:5:                                      ; preds = %1
  %6 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #5
  %7 = tail call double @llvm.floor.f64(double %6)
  %8 = fcmp oge double %7, 0xC3E0000000000000
  %9 = fcmp olt double %7, 0x43E0000000000000
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %5
  %12 = fptosi double %7 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %12) #5
  br label %14

; <label>:13:                                     ; preds = %5
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %7) #5
  br label %14

; <label>:14:                                     ; preds = %13, %11, %4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_fmod(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_isinteger(%struct.lua_State* %0, i32 1) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %19, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lua_isinteger(%struct.lua_State* %0, i32 2) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

; <label>:7:                                      ; preds = %4
  %8 = tail call i64 @lua_tointegerx(%struct.lua_State* %0, i32 2, i32* null) #5
  %9 = add i64 %8, 1
  %10 = icmp ult i64 %9, 2
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %7
  %12 = icmp eq i64 %8, 0
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %11
  %14 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #5
  br label %15

; <label>:15:                                     ; preds = %11, %13
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 0) #5
  br label %23

; <label>:16:                                     ; preds = %7
  %17 = tail call i64 @lua_tointegerx(%struct.lua_State* %0, i32 1, i32* null) #5
  %18 = srem i64 %17, %8
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %18) #5
  br label %23

; <label>:19:                                     ; preds = %4, %1
  %20 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #5
  %21 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 2) #5
  %22 = tail call double @fmod(double %20, double %21) #5
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %22) #5
  br label %23

; <label>:23:                                     ; preds = %15, %16, %19
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_ult(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #5
  %3 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #5
  %4 = icmp ult i64 %2, %3
  %5 = zext i1 %4 to i32
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %5) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_log(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #5
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #5
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = tail call double @log(double %2) #5
  br label %20

; <label>:7:                                      ; preds = %1
  %8 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 2) #5
  %9 = fcmp oeq double %8, 2.000000e+00
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %7
  %11 = tail call double @log2(double %2) #5
  br label %20

; <label>:12:                                     ; preds = %7
  %13 = fcmp oeq double %8, 1.000000e+01
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %12
  %15 = tail call double @log10(double %2) #5
  br label %20

; <label>:16:                                     ; preds = %12
  %17 = tail call double @log(double %2) #5
  %18 = tail call double @log(double %8) #5
  %19 = fdiv double %17, %18
  br label %20

; <label>:20:                                     ; preds = %10, %16, %14, %5
  %21 = phi double [ %6, %5 ], [ %11, %10 ], [ %15, %14 ], [ %19, %16 ]
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %21) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_max(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %6, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0)) #5
  br label %17

; <label>:6:                                      ; preds = %1
  %7 = icmp eq i32 %2, 1
  br i1 %7, label %17, label %8

; <label>:8:                                      ; preds = %6
  br label %9

; <label>:9:                                      ; preds = %8, %9
  %10 = phi i32 [ %15, %9 ], [ 2, %8 ]
  %11 = phi i32 [ %14, %9 ], [ 1, %8 ]
  %12 = tail call i32 @lua_compare(%struct.lua_State* %0, i32 %11, i32 %10, i32 1) #5
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 %11, i32 %10
  %15 = add nuw nsw i32 %10, 1
  %16 = icmp eq i32 %10, %2
  br i1 %16, label %17, label %9

; <label>:17:                                     ; preds = %9, %4, %6
  %18 = phi i32 [ 1, %6 ], [ 1, %4 ], [ %14, %9 ]
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %18) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_min(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %6, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0)) #5
  br label %17

; <label>:6:                                      ; preds = %1
  %7 = icmp eq i32 %2, 1
  br i1 %7, label %17, label %8

; <label>:8:                                      ; preds = %6
  br label %9

; <label>:9:                                      ; preds = %8, %9
  %10 = phi i32 [ %15, %9 ], [ 2, %8 ]
  %11 = phi i32 [ %14, %9 ], [ 1, %8 ]
  %12 = tail call i32 @lua_compare(%struct.lua_State* %0, i32 %10, i32 %11, i32 1) #5
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 %11, i32 %10
  %15 = add nuw nsw i32 %10, 1
  %16 = icmp eq i32 %10, %2
  br i1 %16, label %17, label %9

; <label>:17:                                     ; preds = %9, %4, %6
  %18 = phi i32 [ 1, %6 ], [ 1, %4 ], [ %14, %9 ]
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %18) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_modf(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_isinteger(%struct.lua_State* %0, i32 1) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

; <label>:4:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #5
  tail call void @lua_pushnumber(%struct.lua_State* %0, double 0.000000e+00) #5
  br label %21

; <label>:5:                                      ; preds = %1
  %6 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #5
  %7 = fcmp olt double %6, 0.000000e+00
  %8 = tail call double @llvm.ceil.f64(double %6)
  %9 = tail call double @llvm.floor.f64(double %6)
  %10 = select i1 %7, double %8, double %9
  %11 = fcmp oge double %10, 0xC3E0000000000000
  %12 = fcmp olt double %10, 0x43E0000000000000
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %5
  %15 = fptosi double %10 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %15) #5
  br label %17

; <label>:16:                                     ; preds = %5
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %10) #5
  br label %17

; <label>:17:                                     ; preds = %14, %16
  %18 = fcmp oeq double %6, %10
  %19 = fsub double %6, %10
  %20 = select i1 %18, double 0.000000e+00, double %19
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %20) #5
  br label %21

; <label>:21:                                     ; preds = %17, %4
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal i32 @math_rad(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #5
  %3 = fmul double %2, 0x3F91DF46A2529D39
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_sin(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #5
  %3 = tail call double @sin(double %2) #5
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_sqrt(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #5
  %3 = tail call double @sqrt(double %2) #5
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_tan(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #5
  %3 = tail call double @tan(double %2) #5
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #5
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_type(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5
  %3 = icmp eq i32 %2, 3
  br i1 %3, label %4, label %9

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lua_isinteger(%struct.lua_State* %0, i32 1) #5
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0)
  %8 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %7) #5
  br label %10

; <label>:9:                                      ; preds = %1
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #5
  tail call void @lua_pushnil(%struct.lua_State* %0) #5
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

; Function Attrs: nounwind
declare double @acos(double) local_unnamed_addr #4

; Function Attrs: nounwind
declare double @asin(double) local_unnamed_addr #4

declare double @luaL_optnumber(%struct.lua_State*, i32, double) local_unnamed_addr #1

; Function Attrs: nounwind
declare double @atan2(double, double) local_unnamed_addr #4

declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.ceil.f64(double) #3

; Function Attrs: nounwind
declare double @cos(double) local_unnamed_addr #4

; Function Attrs: nounwind
declare double @exp(double) local_unnamed_addr #4

declare void @luaL_checkany(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #3

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare double @fmod(double, double) local_unnamed_addr #4

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare double @log(double) local_unnamed_addr #4

; Function Attrs: nounwind
declare double @log2(double) local_unnamed_addr #4

; Function Attrs: nounwind
declare double @log10(double) local_unnamed_addr #4

declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

declare i32 @lua_compare(%struct.lua_State*, i32, i32, i32) local_unnamed_addr #1

declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare double @sin(double) local_unnamed_addr #4

; Function Attrs: nounwind
declare double @sqrt(double) local_unnamed_addr #4

; Function Attrs: nounwind
declare double @tan(double) local_unnamed_addr #4

declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

declare i8* @lua_newuserdatauv(%struct.lua_State*, i64, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @math_random(%struct.lua_State*) #0 {
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1001001) #5
  %3 = bitcast i8* %2 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !2
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !2
  %8 = getelementptr inbounds i8, i8* %2, i64 16
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !2
  %11 = xor i64 %10, %4
  %12 = getelementptr inbounds i8, i8* %2, i64 24
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !2
  %15 = xor i64 %14, %7
  %16 = mul i64 %7, 5
  %17 = mul i64 %7, 640
  %18 = lshr i64 %16, 57
  %19 = or i64 %18, %17
  %20 = mul i64 %19, 9
  %21 = xor i64 %15, %4
  store i64 %21, i64* %3, align 8, !tbaa !2
  %22 = xor i64 %11, %7
  store i64 %22, i64* %6, align 8, !tbaa !2
  %23 = shl i64 %7, 17
  %24 = xor i64 %11, %23
  store i64 %24, i64* %9, align 8, !tbaa !2
  %25 = shl i64 %15, 45
  %26 = lshr i64 %15, 19
  %27 = or i64 %26, %25
  store i64 %27, i64* %13, align 8, !tbaa !2
  %28 = tail call i32 @lua_gettop(%struct.lua_State* %0) #5
  switch i32 %28, label %40 [
    i32 0, label %29
    i32 1, label %33
    i32 2, label %37
  ]

; <label>:29:                                     ; preds = %1
  %30 = lshr i64 %20, 11
  %31 = uitofp i64 %30 to double
  %32 = fmul double %31, 0x3CA0000000000000
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %32) #5
  br label %100

; <label>:33:                                     ; preds = %1
  %34 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #5
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

; <label>:36:                                     ; preds = %33
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %20) #5
  br label %100

; <label>:37:                                     ; preds = %1
  %38 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #5
  %39 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #5
  br label %42

; <label>:40:                                     ; preds = %1
  %41 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0)) #5
  br label %100

; <label>:42:                                     ; preds = %33, %37
  %43 = phi i64 [ %39, %37 ], [ %34, %33 ]
  %44 = phi i64 [ %38, %37 ], [ 1, %33 ]
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %48

; <label>:46:                                     ; preds = %42
  %47 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0)) #5
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
  %71 = load i64, i64* %3, align 8, !tbaa !2
  %72 = load i64, i64* %6, align 8, !tbaa !2
  %73 = load i64, i64* %9, align 8, !tbaa !2
  %74 = load i64, i64* %13, align 8, !tbaa !2
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
  store i64 %87, i64* %3, align 8, !tbaa !2
  store i64 %88, i64* %6, align 8, !tbaa !2
  store i64 %90, i64* %9, align 8, !tbaa !2
  store i64 %93, i64* %13, align 8, !tbaa !2
  br label %97

; <label>:97:                                     ; preds = %66, %96
  %98 = phi i64 [ %94, %96 ], [ %68, %66 ]
  %99 = add i64 %98, %44
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %99) #5
  br label %100

; <label>:100:                                    ; preds = %97, %40, %36, %29
  %101 = phi i32 [ %41, %40 ], [ 1, %97 ], [ 1, %36 ], [ 1, %29 ]
  ret i32 %101
}

; Function Attrs: nounwind uwtable
define internal i32 @math_randomseed(%struct.lua_State*) #0 {
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1001001) #5
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #5
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %42

; <label>:5:                                      ; preds = %1
  %6 = tail call i64 @time(i64* null) #5
  %7 = ptrtoint %struct.lua_State* %0 to i64
  %8 = bitcast i8* %2 to i64*
  store i64 %6, i64* %8, align 8, !tbaa !2
  %9 = getelementptr inbounds i8, i8* %2, i64 8
  %10 = bitcast i8* %9 to i64*
  store i64 255, i64* %10, align 8, !tbaa !2
  %11 = getelementptr inbounds i8, i8* %2, i64 16
  %12 = bitcast i8* %11 to i64*
  store i64 %7, i64* %12, align 8, !tbaa !2
  %13 = getelementptr inbounds i8, i8* %2, i64 24
  %14 = bitcast i8* %13 to i64*
  store i64 0, i64* %14, align 8, !tbaa !2
  br label %15

; <label>:15:                                     ; preds = %15, %5
  %16 = phi i64 [ 0, %5 ], [ %38, %15 ]
  %17 = phi i64 [ %7, %5 ], [ %35, %15 ]
  %18 = phi i64 [ 255, %5 ], [ %33, %15 ]
  %19 = phi i64 [ %6, %5 ], [ %32, %15 ]
  %20 = phi i32 [ 0, %5 ], [ %39, %15 ]
  %21 = xor i64 %19, %17
  %22 = xor i64 %18, %16
  %23 = xor i64 %22, %19
  %24 = xor i64 %21, %18
  %25 = shl i64 %18, 17
  %26 = xor i64 %21, %25
  %27 = shl i64 %22, 45
  %28 = lshr i64 %22, 19
  %29 = or i64 %28, %27
  %30 = xor i64 %23, %26
  %31 = xor i64 %24, %29
  %32 = xor i64 %31, %23
  %33 = xor i64 %30, %24
  %34 = shl i64 %24, 17
  %35 = xor i64 %30, %34
  %36 = shl i64 %31, 45
  %37 = lshr i64 %31, 19
  %38 = or i64 %37, %36
  %39 = add nuw nsw i32 %20, 2
  %40 = icmp eq i32 %39, 16
  br i1 %40, label %41, label %15

; <label>:41:                                     ; preds = %15
  store i64 %32, i64* %8, align 8, !tbaa !2
  store i64 %33, i64* %10, align 8, !tbaa !2
  store i64 %35, i64* %12, align 8, !tbaa !2
  store i64 %38, i64* %14, align 8, !tbaa !2
  br label %79

; <label>:42:                                     ; preds = %1
  %43 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #5
  %44 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 0) #5
  %45 = bitcast i8* %2 to i64*
  store i64 %43, i64* %45, align 8, !tbaa !2
  %46 = getelementptr inbounds i8, i8* %2, i64 8
  %47 = bitcast i8* %46 to i64*
  store i64 255, i64* %47, align 8, !tbaa !2
  %48 = getelementptr inbounds i8, i8* %2, i64 16
  %49 = bitcast i8* %48 to i64*
  store i64 %44, i64* %49, align 8, !tbaa !2
  %50 = getelementptr inbounds i8, i8* %2, i64 24
  %51 = bitcast i8* %50 to i64*
  store i64 0, i64* %51, align 8, !tbaa !2
  br label %52

; <label>:52:                                     ; preds = %52, %42
  %53 = phi i64 [ 0, %42 ], [ %75, %52 ]
  %54 = phi i64 [ %44, %42 ], [ %72, %52 ]
  %55 = phi i64 [ 255, %42 ], [ %70, %52 ]
  %56 = phi i64 [ %43, %42 ], [ %69, %52 ]
  %57 = phi i32 [ 0, %42 ], [ %76, %52 ]
  %58 = xor i64 %56, %54
  %59 = xor i64 %55, %53
  %60 = xor i64 %59, %56
  %61 = xor i64 %58, %55
  %62 = shl i64 %55, 17
  %63 = xor i64 %58, %62
  %64 = shl i64 %59, 45
  %65 = lshr i64 %59, 19
  %66 = or i64 %65, %64
  %67 = xor i64 %60, %63
  %68 = xor i64 %61, %66
  %69 = xor i64 %68, %60
  %70 = xor i64 %67, %61
  %71 = shl i64 %61, 17
  %72 = xor i64 %67, %71
  %73 = shl i64 %68, 45
  %74 = lshr i64 %68, 19
  %75 = or i64 %74, %73
  %76 = add nuw nsw i32 %57, 2
  %77 = icmp eq i32 %76, 16
  br i1 %77, label %78, label %52

; <label>:78:                                     ; preds = %52
  store i64 %69, i64* %45, align 8, !tbaa !2
  store i64 %70, i64* %47, align 8, !tbaa !2
  store i64 %72, i64* %49, align 8, !tbaa !2
  store i64 %75, i64* %51, align 8, !tbaa !2
  br label %79

; <label>:79:                                     ; preds = %78, %41
  ret i32 0
}

declare i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
