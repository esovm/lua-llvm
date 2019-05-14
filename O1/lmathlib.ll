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
  tail call fastcc void @setrandfunc(%struct.lua_State* %0)
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) local_unnamed_addr #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

declare void @lua_pushnumber(%struct.lua_State*, double) local_unnamed_addr #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @setrandfunc(%struct.lua_State*) unnamed_addr #0 {
  %2 = tail call i8* @lua_newuserdatauv(%struct.lua_State* %0, i64 32, i32 0) #7
  %3 = bitcast i8* %2 to %struct.RanState*
  tail call fastcc void @randseed(%struct.lua_State* %0, %struct.RanState* %3)
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([3 x %struct.luaL_Reg], [3 x %struct.luaL_Reg]* @randfuncs, i64 0, i64 0), i32 1) #7
  ret void
}

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
  %10 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %11 = tail call double @llvm.fabs.f64(double %10)
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %11) #7
  br label %12

; <label>:12:                                     ; preds = %9, %4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_acos(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = tail call double @acos(double %2) #7
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_asin(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = tail call double @asin(double %2) #7
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_atan(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = tail call double @luaL_optnumber(%struct.lua_State* %0, i32 2, double 1.000000e+00) #7
  %4 = tail call double @atan2(double %2, double %3) #7
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
  br label %8

; <label>:5:                                      ; preds = %1
  %6 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %7 = tail call double @llvm.ceil.f64(double %6)
  tail call fastcc void @pushnumint(%struct.lua_State* %0, double %7)
  br label %8

; <label>:8:                                      ; preds = %5, %4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_cos(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = tail call double @cos(double %2) #7
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_deg(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = fmul double %2, 0x404CA5DC1A63C1F8
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_exp(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = tail call double @exp(double %2) #7
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
  br label %8

; <label>:5:                                      ; preds = %1
  %6 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %7 = tail call double @llvm.floor.f64(double %6)
  tail call fastcc void @pushnumint(%struct.lua_State* %0, double %7)
  br label %8

; <label>:8:                                      ; preds = %5, %4
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
  %20 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %21 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 2) #7
  %22 = tail call double @fmod(double %20, double %21) #7
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
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #7
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = tail call double @log(double %2) #7
  br label %20

; <label>:7:                                      ; preds = %1
  %8 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 2) #7
  %9 = fcmp oeq double %8, 2.000000e+00
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %7
  %11 = tail call double @log2(double %2) #7
  br label %20

; <label>:12:                                     ; preds = %7
  %13 = fcmp oeq double %8, 1.000000e+01
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %12
  %15 = tail call double @log10(double %2) #7
  br label %20

; <label>:16:                                     ; preds = %12
  %17 = tail call double @log(double %2) #7
  %18 = tail call double @log(double %8) #7
  %19 = fdiv double %17, %18
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
  br label %14

; <label>:5:                                      ; preds = %1
  %6 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %7 = fcmp olt double %6, 0.000000e+00
  %8 = tail call double @llvm.ceil.f64(double %6)
  %9 = tail call double @llvm.floor.f64(double %6)
  %10 = select i1 %7, double %8, double %9
  tail call fastcc void @pushnumint(%struct.lua_State* %0, double %10)
  %11 = fcmp oeq double %6, %10
  %12 = fsub double %6, %10
  %13 = select i1 %11, double 0.000000e+00, double %12
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %13) #7
  br label %14

; <label>:14:                                     ; preds = %5, %4
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal i32 @math_rad(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = fmul double %2, 0x3F91DF46A2529D39
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_sin(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = tail call double @sin(double %2) #7
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_sqrt(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = tail call double @sqrt(double %2) #7
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %3) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_tan(%struct.lua_State*) #0 {
  %2 = tail call double @luaL_checknumber(%struct.lua_State* %0, i32 1) #7
  %3 = tail call double @tan(double %2) #7
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

; Function Attrs: nounwind uwtable
define internal fastcc void @pushnumint(%struct.lua_State*, double) unnamed_addr #0 {
  %3 = fcmp oge double %1, 0xC3E0000000000000
  %4 = fcmp olt double %1, 0x43E0000000000000
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %2
  %7 = fptosi double %1 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %7) #7
  br label %9

; <label>:8:                                      ; preds = %2
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %1) #7
  br label %9

; <label>:9:                                      ; preds = %8, %6
  ret void
}

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

; Function Attrs: nounwind uwtable
define internal fastcc void @randseed(%struct.lua_State*, %struct.RanState* nocapture) unnamed_addr #0 {
  %3 = tail call i64 @time(i64* null) #7
  %4 = ptrtoint %struct.lua_State* %0 to i64
  %5 = getelementptr inbounds %struct.RanState, %struct.RanState* %1, i64 0, i32 0, i64 0
  tail call fastcc void @setseed(i64* %5, i64 %3, i64 %4)
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #4

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @setseed(i64* nocapture, i64, i64) unnamed_addr #5 {
  store i64 %1, i64* %0, align 8, !tbaa !6
  %4 = getelementptr inbounds i64, i64* %0, i64 1
  store i64 255, i64* %4, align 8, !tbaa !6
  %5 = getelementptr inbounds i64, i64* %0, i64 2
  store i64 %2, i64* %5, align 8, !tbaa !6
  %6 = getelementptr inbounds i64, i64* %0, i64 3
  store i64 0, i64* %6, align 8, !tbaa !6
  br label %7

; <label>:7:                                      ; preds = %7, %3
  %8 = phi i32 [ 0, %3 ], [ %10, %7 ]
  %9 = tail call fastcc i64 @nextrand(i64* %0)
  %10 = add nuw nsw i32 %8, 1
  %11 = icmp eq i32 %10, 16
  br i1 %11, label %12, label %7

; <label>:12:                                     ; preds = %7
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc i64 @nextrand(i64* nocapture) unnamed_addr #5 {
  %2 = load i64, i64* %0, align 8, !tbaa !6
  %3 = getelementptr inbounds i64, i64* %0, i64 1
  %4 = load i64, i64* %3, align 8, !tbaa !6
  %5 = getelementptr inbounds i64, i64* %0, i64 2
  %6 = load i64, i64* %5, align 8, !tbaa !6
  %7 = xor i64 %6, %2
  %8 = getelementptr inbounds i64, i64* %0, i64 3
  %9 = load i64, i64* %8, align 8, !tbaa !6
  %10 = xor i64 %9, %4
  %11 = mul i64 %4, 5
  %12 = tail call fastcc i64 @rotl(i64 %11, i32 7)
  %13 = mul i64 %12, 9
  %14 = xor i64 %10, %2
  store i64 %14, i64* %0, align 8, !tbaa !6
  %15 = xor i64 %7, %4
  store i64 %15, i64* %3, align 8, !tbaa !6
  %16 = shl i64 %4, 17
  %17 = xor i64 %7, %16
  store i64 %17, i64* %5, align 8, !tbaa !6
  %18 = tail call fastcc i64 @rotl(i64 %10, i32 45)
  store i64 %18, i64* %8, align 8, !tbaa !6
  ret i64 %13
}

; Function Attrs: norecurse nounwind readnone uwtable
define internal fastcc i64 @rotl(i64, i32) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = shl i64 %0, %3
  %5 = sub nsw i32 64, %1
  %6 = zext i32 %5 to i64
  %7 = lshr i64 %0, %6
  %8 = or i64 %7, %4
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @math_random(%struct.lua_State*) #0 {
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1001001) #7
  %3 = bitcast i8* %2 to %struct.RanState*
  %4 = bitcast i8* %2 to i64*
  %5 = tail call fastcc i64 @nextrand(i64* %4)
  %6 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7
  switch i32 %6, label %16 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %13
  ]

; <label>:7:                                      ; preds = %1
  %8 = tail call fastcc double @I2d(i64 %5)
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %8) #7
  br label %28

; <label>:9:                                      ; preds = %1
  %10 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #7
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %9
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %5) #7
  br label %28

; <label>:13:                                     ; preds = %1
  %14 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #7
  %15 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #7
  br label %18

; <label>:16:                                     ; preds = %1
  %17 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0)) #7
  br label %28

; <label>:18:                                     ; preds = %9, %13
  %19 = phi i64 [ %15, %13 ], [ %10, %9 ]
  %20 = phi i64 [ %14, %13 ], [ 1, %9 ]
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %18
  %23 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0)) #7
  br label %24

; <label>:24:                                     ; preds = %18, %22
  %25 = sub i64 %19, %20
  %26 = tail call fastcc i64 @project(i64 %5, i64 %25, %struct.RanState* %3)
  %27 = add i64 %26, %20
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %27) #7
  br label %28

; <label>:28:                                     ; preds = %24, %16, %12, %7
  %29 = phi i32 [ %17, %16 ], [ 1, %24 ], [ 1, %12 ], [ 1, %7 ]
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @math_randomseed(%struct.lua_State*) #0 {
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1001001) #7
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = bitcast i8* %2 to %struct.RanState*
  tail call fastcc void @randseed(%struct.lua_State* %0, %struct.RanState* %6)
  br label %11

; <label>:7:                                      ; preds = %1
  %8 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #7
  %9 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 0) #7
  %10 = bitcast i8* %2 to i64*
  tail call fastcc void @setseed(i64* %10, i64 %8, i64 %9)
  br label %11

; <label>:11:                                     ; preds = %7, %5
  ret i32 0
}

declare i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: norecurse nounwind readnone uwtable
define internal fastcc double @I2d(i64) unnamed_addr #6 {
  %2 = lshr i64 %0, 11
  %3 = uitofp i64 %2 to double
  %4 = fmul double %3, 0x3CA0000000000000
  ret double %4
}

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

; Function Attrs: norecurse nounwind uwtable
define internal fastcc i64 @project(i64, i64, %struct.RanState* nocapture) unnamed_addr #5 {
  %4 = add i64 %1, 1
  %5 = and i64 %4, %1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %20, label %7

; <label>:7:                                      ; preds = %3
  %8 = lshr i64 %1, 1
  %9 = or i64 %8, %1
  %10 = lshr i64 %9, 2
  %11 = or i64 %10, %9
  %12 = lshr i64 %11, 4
  %13 = or i64 %12, %11
  %14 = lshr i64 %13, 8
  %15 = or i64 %14, %13
  %16 = lshr i64 %15, 16
  %17 = or i64 %16, %15
  %18 = lshr i64 %17, 32
  %19 = or i64 %18, %17
  br label %20

; <label>:20:                                     ; preds = %3, %7
  %21 = phi i64 [ %19, %7 ], [ %1, %3 ]
  %22 = and i64 %21, %0
  %23 = icmp ugt i64 %22, %1
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct.RanState, %struct.RanState* %2, i64 0, i32 0, i64 0
  br label %26

; <label>:26:                                     ; preds = %24, %26
  %27 = tail call fastcc i64 @nextrand(i64* %25)
  %28 = and i64 %27, %21
  %29 = icmp ugt i64 %28, %1
  br i1 %29, label %26, label %30

; <label>:30:                                     ; preds = %26, %20
  %31 = phi i64 [ %22, %20 ], [ %28, %26 ]
  ret i64 %31
}

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }

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
