; ModuleID = 'lbaselib.c'
source_filename = "lbaselib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@base_funcs = internal constant [25 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_assert }, %struct.luaL_Reg { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_collectgarbage }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_dofile }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_error }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_getmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_ipairs }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_loadfile }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_load }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_next }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_pairs }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_pcall }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_print }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawequal }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawlen }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawget }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawset }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_select }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_setmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_tonumber }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_tostring }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_type }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_xpcall }, %struct.luaL_Reg { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [3 x i8] c"_G\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Lua 5.3\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"_VERSION\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"collectgarbage\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"dofile\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"getmetatable\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ipairs\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"loadfile\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"pairs\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"pcall\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"rawequal\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"rawlen\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"rawget\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"rawset\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"setmetatable\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"tonumber\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"tostring\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"xpcall\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"assertion failed!\00", align 1
@luaB_collectgarbage.opts = internal constant [9 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* null], align 16
@.str.26 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"collect\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"setpause\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"setstepmul\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"isrunning\00", align 1
@luaB_collectgarbage.optsnum = internal constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5, i32 6, i32 7, i32 9], align 16
@.str.34 = private unnamed_addr constant [12 x i8] c"__metatable\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"bt\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"=(load)\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"too many nested functions\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"reader function must return a string\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"__pairs\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"'tostring' must return a string to 'print'\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.42 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"table or string expected\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"index out of range\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"nil or table expected\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"cannot change a protected metatable\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"base out of range\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c" \0C\0A\0D\09\0B\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"value expected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaopen_base(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @lua_rawgeti(%struct.lua_State* %3, i32 -1001000, i64 2)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_setfuncs(%struct.lua_State* %5, %struct.luaL_Reg* getelementptr inbounds ([25 x %struct.luaL_Reg], [25 x %struct.luaL_Reg]* @base_funcs, i32 0, i32 0), i32 0)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* %6, i32 -1)
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* %7, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i8* @lua_pushstring(%struct.lua_State* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* %10, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  ret i32 1
}

declare i32 @lua_rawgeti(%struct.lua_State*, i32, i64) #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #1

declare void @lua_pushvalue(%struct.lua_State*, i32) #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_assert(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5 = call i32 @lua_toboolean(%struct.lua_State* %4, i32 1)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %1
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i32 @lua_gettop(%struct.lua_State* %8)
  store i32 %9, i32* %2, align 4
  br label %19

; <label>:10:                                     ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checkany(%struct.lua_State* %11, i32 1)
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_rotate(%struct.lua_State* %12, i32 1, i32 -1)
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %13, i32 -2)
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = call i8* @lua_pushstring(%struct.lua_State* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0))
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %16, i32 1)
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = call i32 @luaB_error(%struct.lua_State* %17)
  store i32 %18, i32* %2, align 4
  br label %19

; <label>:19:                                     ; preds = %10, %7
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_collectgarbage(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i32 @luaL_checkoption(%struct.lua_State* %8, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @luaB_collectgarbage.opts, i32 0, i32 0))
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* @luaB_collectgarbage.optsnum, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = call i64 @luaL_optinteger(%struct.lua_State* %13, i32 2, i64 0)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @lua_gc(%struct.lua_State* %16, i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %34 [
    i32 3, label %21
    i32 5, label %31
    i32 9, label %31
  ]

; <label>:21:                                     ; preds = %1
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %23 = call i32 @lua_gc(%struct.lua_State* %22, i32 4, i32 0)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sitofp i32 %25 to double
  %27 = load i32, i32* %7, align 4
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %28, 1.024000e+03
  %30 = fadd double %26, %29
  call void @lua_pushnumber(%struct.lua_State* %24, double %30)
  store i32 1, i32* %2, align 4
  br label %38

; <label>:31:                                     ; preds = %1, %1
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %33 = load i32, i32* %6, align 4
  call void @lua_pushboolean(%struct.lua_State* %32, i32 %33)
  store i32 1, i32* %2, align 4
  br label %38

; <label>:34:                                     ; preds = %1
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  call void @lua_pushinteger(%struct.lua_State* %35, i64 %37)
  store i32 1, i32* %2, align 4
  br label %38

; <label>:38:                                     ; preds = %34, %31, %21
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_dofile(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = call i8* @luaL_optlstring(%struct.lua_State* %5, i32 1, i8* null, i64* null)
  store i8* %6, i8** %4, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %7, i32 1)
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @luaL_loadfilex(%struct.lua_State* %8, i8* %9, i8* null)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %1
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = call i32 @lua_error(%struct.lua_State* %13)
  store i32 %14, i32* %2, align 4
  br label %19

; <label>:15:                                     ; preds = %1
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_callk(%struct.lua_State* %16, i32 0, i32 -1, i64 0, i32 (%struct.lua_State*, i32, i64)* @dofilecont)
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = call i32 @dofilecont(%struct.lua_State* %17, i32 0, i64 0)
  store i32 %18, i32* %2, align 4
  br label %19

; <label>:19:                                     ; preds = %15, %12
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_error(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i64 @luaL_optinteger(%struct.lua_State* %4, i32 2, i64 1)
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %3, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %7, i32 1)
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i32 @lua_type(%struct.lua_State* %8, i32 1)
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %11
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = load i32, i32* %3, align 4
  call void @luaL_where(%struct.lua_State* %15, i32 %16)
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* %17, i32 1)
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_concat(%struct.lua_State* %18, i32 2)
  br label %19

; <label>:19:                                     ; preds = %14, %11, %1
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %21 = call i32 @lua_error(%struct.lua_State* %20)
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_getmetatable(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checkany(%struct.lua_State* %4, i32 1)
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = call i32 @lua_getmetatable(%struct.lua_State* %5, i32 1)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %1
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* %9)
  store i32 1, i32* %2, align 4
  br label %13

; <label>:10:                                     ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i32 @luaL_getmetafield(%struct.lua_State* %11, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0))
  store i32 1, i32* %2, align 4
  br label %13

; <label>:13:                                     ; preds = %10, %8
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_ipairs(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* %3, i32 1)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushcclosure(%struct.lua_State* %4, i32 (%struct.lua_State*)* @ipairsaux, i32 0)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* %5, i32 1)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushinteger(%struct.lua_State* %6, i64 0)
  ret i32 3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_loadfile(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i8* @luaL_optlstring(%struct.lua_State* %7, i32 1, i8* null, i64* null)
  store i8* %8, i8** %3, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i8* @luaL_optlstring(%struct.lua_State* %9, i32 2, i8* null, i64* null)
  store i8* %10, i8** %4, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = call i32 @lua_type(%struct.lua_State* %11, i32 3)
  %13 = icmp eq i32 %12, -1
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 3, i32 0
  store i32 %16, i32* %5, align 4
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @luaL_loadfilex(%struct.lua_State* %17, i8* %18, i8* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @load_aux(%struct.lua_State* %21, i32 %22, i32 %23)
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_load(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = call i8* @lua_tolstring(%struct.lua_State* %10, i32 1, i64* %4)
  store i8* %11, i8** %5, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = call i8* @luaL_optlstring(%struct.lua_State* %12, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i64* null)
  store i8* %13, i8** %6, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = call i32 @lua_type(%struct.lua_State* %14, i32 4)
  %16 = icmp eq i32 %15, -1
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 4, i32 0
  store i32 %19, i32* %7, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %32

; <label>:22:                                     ; preds = %1
  %23 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @luaL_optlstring(%struct.lua_State* %23, i32 2, i8* %24, i64* null)
  store i8* %25, i8** %8, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @luaL_loadbufferx(%struct.lua_State* %26, i8* %27, i64 %28, i8* %29, i8* %30)
  store i32 %31, i32* %3, align 4
  br label %41

; <label>:32:                                     ; preds = %1
  %33 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %34 = call i8* @luaL_optlstring(%struct.lua_State* %33, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i64* null)
  store i8* %34, i8** %9, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* %35, i32 1, i32 6)
  %36 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %36, i32 5)
  %37 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @lua_load(%struct.lua_State* %37, i8* (%struct.lua_State*, i8*, i64*)* @generic_reader, i8* null, i8* %38, i8* %39)
  store i32 %40, i32* %3, align 4
  br label %41

; <label>:41:                                     ; preds = %32, %22
  %42 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @load_aux(%struct.lua_State* %42, i32 %43, i32 %44)
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_next(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checktype(%struct.lua_State* %4, i32 1, i32 5)
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %5, i32 2)
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i32 @lua_next(%struct.lua_State* %6, i32 1)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  store i32 2, i32* %2, align 4
  br label %12

; <label>:10:                                     ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* %11)
  store i32 1, i32* %2, align 4
  br label %12

; <label>:12:                                     ; preds = %10, %9
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_pairs(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @pairsmeta(%struct.lua_State* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 0, i32 (%struct.lua_State*)* @luaB_next)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_pcall(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* %4, i32 1)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushboolean(%struct.lua_State* %5, i32 1)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_rotate(%struct.lua_State* %6, i32 1, i32 1)
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i32 @lua_gettop(%struct.lua_State* %8)
  %10 = sub nsw i32 %9, 2
  %11 = call i32 @lua_pcallk(%struct.lua_State* %7, i32 %10, i32 -1, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* @finishpcall)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @finishpcall(%struct.lua_State* %12, i32 %13, i64 0)
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_print(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i32 @lua_gettop(%struct.lua_State* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call i32 @lua_getglobal(%struct.lua_State* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0))
  store i32 1, i32* %5, align 4
  br label %12

; <label>:12:                                     ; preds = %40, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %43

; <label>:16:                                     ; preds = %12
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* %17, i32 -1)
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = load i32, i32* %5, align 4
  call void @lua_pushvalue(%struct.lua_State* %18, i32 %19)
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_callk(%struct.lua_State* %20, i32 1, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null)
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = call i8* @lua_tolstring(%struct.lua_State* %21, i32 -1, i64* %7)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %16
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.40, i32 0, i32 0))
  store i32 %27, i32* %2, align 4
  br label %48

; <label>:28:                                     ; preds = %16
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %28
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %33 = call i64 @fwrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0), i64 1, i64 1, %struct._IO_FILE* %32)
  br label %34

; <label>:34:                                     ; preds = %31, %28
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = call i64 @fwrite(i8* %35, i64 1, i64 %36, %struct._IO_FILE* %37)
  %39 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %39, i32 -2)
  br label %40

; <label>:40:                                     ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %12

; <label>:43:                                     ; preds = %12
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %45 = call i64 @fwrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i64 1, i64 1, %struct._IO_FILE* %44)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %47 = call i32 @fflush(%struct._IO_FILE* %46)
  store i32 0, i32* %2, align 4
  br label %48

; <label>:48:                                     ; preds = %43, %25
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_rawequal(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* %3, i32 1)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* %4, i32 2)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i32 @lua_rawequal(%struct.lua_State* %6, i32 1, i32 2)
  call void @lua_pushboolean(%struct.lua_State* %5, i32 %7)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_rawlen(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_type(%struct.lua_State* %4, i32 1)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %15, label %8

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %15, label %11

; <label>:11:                                     ; preds = %8
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = call i32 @luaL_argerror(%struct.lua_State* %12, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i32 0, i32 0))
  %14 = icmp ne i32 %13, 0
  br label %15

; <label>:15:                                     ; preds = %11, %8, %1
  %16 = phi i1 [ true, %8 ], [ true, %1 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = call i64 @lua_rawlen(%struct.lua_State* %19, i32 1)
  call void @lua_pushinteger(%struct.lua_State* %18, i64 %20)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_rawget(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* %3, i32 1, i32 5)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* %4, i32 2)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %5, i32 2)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i32 @lua_rawget(%struct.lua_State* %6, i32 1)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_rawset(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* %3, i32 1, i32 5)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* %4, i32 2)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* %5, i32 3)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %6, i32 3)
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_rawset(%struct.lua_State* %7, i32 1)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_select(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i32 @lua_gettop(%struct.lua_State* %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i32 @lua_type(%struct.lua_State* %8, i32 1)
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %22

; <label>:11:                                     ; preds = %1
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = call i8* @lua_tolstring(%struct.lua_State* %12, i32 1, i64* null)
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 35
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %11
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  call void @lua_pushinteger(%struct.lua_State* %18, i64 %21)
  store i32 1, i32* %2, align 4
  br label %55

; <label>:22:                                     ; preds = %11, %1
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = call i64 @luaL_checkinteger(%struct.lua_State* %23, i32 1)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %32

; <label>:27:                                     ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %5, align 8
  %31 = add nsw i64 %29, %30
  store i64 %31, i64* %5, align 8
  br label %41

; <label>:32:                                     ; preds = %22
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp sgt i64 %33, %35
  br i1 %36, label %37, label %40

; <label>:37:                                     ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %5, align 8
  br label %40

; <label>:40:                                     ; preds = %37, %32
  br label %41

; <label>:41:                                     ; preds = %40, %27
  %42 = load i64, i64* %5, align 8
  %43 = icmp sle i64 1, %42
  br i1 %43, label %48, label %44

; <label>:44:                                     ; preds = %41
  %45 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %46 = call i32 @luaL_argerror(%struct.lua_State* %45, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i32 0, i32 0))
  %47 = icmp ne i32 %46, 0
  br label %48

; <label>:48:                                     ; preds = %44, %41
  %49 = phi i1 [ true, %41 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %4, align 4
  %52 = load i64, i64* %5, align 8
  %53 = trunc i64 %52 to i32
  %54 = sub nsw i32 %51, %53
  store i32 %54, i32* %2, align 4
  br label %55

; <label>:55:                                     ; preds = %48, %17
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_setmetatable(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = call i32 @lua_type(%struct.lua_State* %5, i32 2)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checktype(%struct.lua_State* %7, i32 1, i32 5)
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 5
  br i1 %12, label %17, label %13

; <label>:13:                                     ; preds = %10
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = call i32 @luaL_argerror(%struct.lua_State* %14, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0))
  %16 = icmp ne i32 %15, 0
  br label %17

; <label>:17:                                     ; preds = %13, %10, %1
  %18 = phi i1 [ true, %10 ], [ true, %1 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = call i32 @luaL_getmetafield(%struct.lua_State* %20, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %17
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i32 0, i32 0))
  store i32 %25, i32* %2, align 4
  br label %30

; <label>:26:                                     ; preds = %17
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %27, i32 2)
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = call i32 @lua_setmetatable(%struct.lua_State* %28, i32 1)
  store i32 1, i32* %2, align 4
  br label %30

; <label>:30:                                     ; preds = %26, %23
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_tonumber(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call i32 @lua_type(%struct.lua_State* %10, i32 2)
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %35

; <label>:13:                                     ; preds = %1
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checkany(%struct.lua_State* %14, i32 1)
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = call i32 @lua_type(%struct.lua_State* %15, i32 1)
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %13
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %19, i32 1)
  store i32 1, i32* %2, align 4
  br label %67

; <label>:20:                                     ; preds = %13
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = call i8* @lua_tolstring(%struct.lua_State* %21, i32 1, i64* %4)
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %33

; <label>:25:                                     ; preds = %20
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @lua_stringtonumber(%struct.lua_State* %26, i8* %27)
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, 1
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %25
  store i32 1, i32* %2, align 4
  br label %67

; <label>:33:                                     ; preds = %25, %20
  br label %34

; <label>:34:                                     ; preds = %33
  br label %65

; <label>:35:                                     ; preds = %1
  store i64 0, i64* %8, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %37 = call i64 @luaL_checkinteger(%struct.lua_State* %36, i32 2)
  store i64 %37, i64* %9, align 8
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checktype(%struct.lua_State* %38, i32 1, i32 4)
  %39 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %40 = call i8* @lua_tolstring(%struct.lua_State* %39, i32 1, i64* %6)
  store i8* %40, i8** %7, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp sle i64 2, %41
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %35
  %44 = load i64, i64* %9, align 8
  %45 = icmp sle i64 %44, 36
  br i1 %45, label %50, label %46

; <label>:46:                                     ; preds = %43, %35
  %47 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %48 = call i32 @luaL_argerror(%struct.lua_State* %47, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0))
  %49 = icmp ne i32 %48, 0
  br label %50

; <label>:50:                                     ; preds = %46, %43
  %51 = phi i1 [ true, %43 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %9, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i8* @b_str2int(i8* %53, i32 %55, i64* %8)
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = icmp eq i8* %56, %59
  br i1 %60, label %61, label %64

; <label>:61:                                     ; preds = %50
  %62 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %63 = load i64, i64* %8, align 8
  call void @lua_pushinteger(%struct.lua_State* %62, i64 %63)
  store i32 1, i32* %2, align 4
  br label %67

; <label>:64:                                     ; preds = %50
  br label %65

; <label>:65:                                     ; preds = %64, %34
  %66 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* %66)
  store i32 1, i32* %2, align 4
  br label %67

; <label>:67:                                     ; preds = %65, %61, %32, %18
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_tostring(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* %3, i32 1)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaL_tolstring(%struct.lua_State* %4, i32 1, i64* null)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_type(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_type(%struct.lua_State* %4, i32 1)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %12, label %8

; <label>:8:                                      ; preds = %1
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i32 @luaL_argerror(%struct.lua_State* %9, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0))
  %11 = icmp ne i32 %10, 0
  br label %12

; <label>:12:                                     ; preds = %8, %1
  %13 = phi i1 [ true, %1 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i8* @lua_typename(%struct.lua_State* %16, i32 %17)
  %19 = call i8* @lua_pushstring(%struct.lua_State* %15, i8* %18)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_xpcall(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i32 @lua_gettop(%struct.lua_State* %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* %7, i32 2, i32 6)
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushboolean(%struct.lua_State* %8, i32 1)
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* %9, i32 1)
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_rotate(%struct.lua_State* %10, i32 3, i32 2)
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %12, 2
  %14 = call i32 @lua_pcallk(%struct.lua_State* %11, i32 %13, i32 -1, i32 2, i64 2, i32 (%struct.lua_State*, i32, i64)* @finishpcall)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @finishpcall(%struct.lua_State* %15, i32 %16, i64 2)
  ret i32 %17
}

declare i32 @lua_toboolean(%struct.lua_State*, i32) #1

declare i32 @lua_gettop(%struct.lua_State*) #1

declare void @luaL_checkany(%struct.lua_State*, i32) #1

declare void @lua_rotate(%struct.lua_State*, i32, i32) #1

declare void @lua_settop(%struct.lua_State*, i32) #1

declare i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) #1

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #1

declare i32 @lua_gc(%struct.lua_State*, i32, i32) #1

declare void @lua_pushnumber(%struct.lua_State*, double) #1

declare void @lua_pushboolean(%struct.lua_State*, i32) #1

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) #1

declare i32 @luaL_loadfilex(%struct.lua_State*, i8*, i8*) #1

declare i32 @lua_error(%struct.lua_State*) #1

declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dofilecont(%struct.lua_State*, i32, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = call i32 @lua_gettop(%struct.lua_State* %9)
  %11 = sub nsw i32 %10, 1
  ret i32 %11
}

declare i32 @lua_type(%struct.lua_State*, i32) #1

declare void @luaL_where(%struct.lua_State*, i32) #1

declare void @lua_concat(%struct.lua_State*, i32) #1

declare i32 @lua_getmetatable(%struct.lua_State*, i32) #1

declare void @lua_pushnil(%struct.lua_State*) #1

declare i32 @luaL_getmetafield(%struct.lua_State*, i32, i8*) #1

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipairsaux(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* %4, i32 2)
  %6 = add nsw i64 %5, 1
  store i64 %6, i64* %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = load i64, i64* %3, align 8
  call void @lua_pushinteger(%struct.lua_State* %7, i64 %8)
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @lua_geti(%struct.lua_State* %9, i32 1, i64 %10)
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 2
  ret i32 %14
}

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #1

declare i32 @lua_geti(%struct.lua_State*, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_aux(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

; <label>:10:                                     ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

; <label>:13:                                     ; preds = %10
  %14 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %15 = load i32, i32* %7, align 4
  call void @lua_pushvalue(%struct.lua_State* %14, i32 %15)
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %17 = call i8* @lua_setupvalue(%struct.lua_State* %16, i32 -2, i32 1)
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

; <label>:19:                                     ; preds = %13
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %20, i32 -2)
  br label %21

; <label>:21:                                     ; preds = %19, %13
  br label %22

; <label>:22:                                     ; preds = %21, %10
  store i32 1, i32* %4, align 4
  br label %26

; <label>:23:                                     ; preds = %3
  %24 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushnil(%struct.lua_State* %24)
  %25 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_rotate(%struct.lua_State* %25, i32 -2, i32 1)
  store i32 2, i32* %4, align 4
  br label %26

; <label>:26:                                     ; preds = %23, %22
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare i8* @lua_setupvalue(%struct.lua_State*, i32, i32) #1

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) #1

declare i32 @luaL_loadbufferx(%struct.lua_State*, i8*, i64, i8*, i8*) #1

declare void @luaL_checktype(%struct.lua_State*, i32, i32) #1

declare i32 @lua_load(%struct.lua_State*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @generic_reader(%struct.lua_State*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaL_checkstack(%struct.lua_State* %9, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0))
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushvalue(%struct.lua_State* %10, i32 1)
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_callk(%struct.lua_State* %11, i32 0, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null)
  %12 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %13 = call i32 @lua_type(%struct.lua_State* %12, i32 -1)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %3
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %16, i32 -2)
  %17 = load i64*, i64** %7, align 8
  store i64 0, i64* %17, align 8
  store i8* null, i8** %4, align 8
  br label %32

; <label>:18:                                     ; preds = %3
  %19 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %20 = call i32 @lua_isstring(%struct.lua_State* %19, i32 -1)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

; <label>:22:                                     ; preds = %18
  %23 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %24 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i32 0, i32 0))
  br label %25

; <label>:25:                                     ; preds = %22, %18
  br label %26

; <label>:26:                                     ; preds = %25
  %27 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_copy(%struct.lua_State* %27, i32 -1, i32 5)
  %28 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %28, i32 -2)
  %29 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = call i8* @lua_tolstring(%struct.lua_State* %29, i32 5, i64* %30)
  store i8* %31, i8** %4, align 8
  br label %32

; <label>:32:                                     ; preds = %26, %15
  %33 = load i8*, i8** %4, align 8
  ret i8* %33
}

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) #1

declare i32 @lua_isstring(%struct.lua_State*, i32) #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

declare void @lua_copy(%struct.lua_State*, i32, i32) #1

declare i32 @lua_next(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pairsmeta(%struct.lua_State*, i8*, i32, i32 (%struct.lua_State*)*) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.lua_State*)*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 (%struct.lua_State*)* %3, i32 (%struct.lua_State*)** %8, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaL_checkany(%struct.lua_State* %9, i32 1)
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @luaL_getmetafield(%struct.lua_State* %10, i32 1, i8* %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %25

; <label>:14:                                     ; preds = %4
  %15 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %16 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %8, align 8
  call void @lua_pushcclosure(%struct.lua_State* %15, i32 (%struct.lua_State*)* %16, i32 0)
  %17 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushvalue(%struct.lua_State* %17, i32 1)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %14
  %21 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushinteger(%struct.lua_State* %21, i64 0)
  br label %24

; <label>:22:                                     ; preds = %14
  %23 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushnil(%struct.lua_State* %23)
  br label %24

; <label>:24:                                     ; preds = %22, %20
  br label %28

; <label>:25:                                     ; preds = %4
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushvalue(%struct.lua_State* %26, i32 1)
  %27 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_callk(%struct.lua_State* %27, i32 1, i32 3, i64 0, i32 (%struct.lua_State*, i32, i64)* null)
  br label %28

; <label>:28:                                     ; preds = %25, %24
  ret i32 3
}

declare i32 @lua_pcallk(%struct.lua_State*, i32, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finishpcall(%struct.lua_State*, i32, i64) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %10
  %14 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushboolean(%struct.lua_State* %14, i32 0)
  %15 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushvalue(%struct.lua_State* %15, i32 -2)
  store i32 2, i32* %4, align 4
  br label %22

; <label>:16:                                     ; preds = %10, %3
  %17 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %18 = call i32 @lua_gettop(%struct.lua_State* %17)
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  %21 = sub nsw i32 %18, %20
  store i32 %21, i32* %4, align 4
  br label %22

; <label>:22:                                     ; preds = %16, %13
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare i32 @lua_getglobal(%struct.lua_State*, i8*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i32 @lua_rawequal(%struct.lua_State*, i32, i32) #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #1

declare i64 @lua_rawlen(%struct.lua_State*, i32) #1

declare i32 @lua_rawget(%struct.lua_State*, i32) #1

declare void @lua_rawset(%struct.lua_State*, i32) #1

declare i32 @lua_setmetatable(%struct.lua_State*, i32) #1

declare i64 @lua_stringtonumber(%struct.lua_State*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @b_str2int(i8*, i32, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strspn(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0)) #4
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 %12
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 45
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  store i32 1, i32* %9, align 4
  br label %31

; <label>:22:                                     ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 43
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  br label %30

; <label>:30:                                     ; preds = %27, %22
  br label %31

; <label>:31:                                     ; preds = %30, %19
  %32 = call i16** @__ctype_b_loc() #5
  %33 = load i16*, i16** %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16, i16* %33, i64 %37
  %39 = load i16, i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %40, 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

; <label>:43:                                     ; preds = %31
  store i8* null, i8** %4, align 8
  br label %113

; <label>:44:                                     ; preds = %31
  br label %45

; <label>:45:                                     ; preds = %85, %44
  %46 = call i16** @__ctype_b_loc() #5
  %47 = load i16*, i16** %46, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i16, i16* %47, i64 %51
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  %55 = and i32 %54, 2048
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

; <label>:57:                                     ; preds = %45
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = sub nsw i32 %60, 48
  br label %69

; <label>:62:                                     ; preds = %45
  %63 = load i8*, i8** %5, align 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = call i32 @toupper(i32 %65) #4
  %67 = sub nsw i32 %66, 65
  %68 = add nsw i32 %67, 10
  br label %69

; <label>:69:                                     ; preds = %62, %57
  %70 = phi i32 [ %61, %57 ], [ %68, %62 ]
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %69
  store i8* null, i8** %4, align 8
  br label %113

; <label>:75:                                     ; preds = %69
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %76, %78
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %79, %81
  store i64 %82, i64* %8, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %5, align 8
  br label %85

; <label>:85:                                     ; preds = %75
  %86 = call i16** @__ctype_b_loc() #5
  %87 = load i16*, i16** %86, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i16, i16* %87, i64 %91
  %93 = load i16, i16* %92, align 2
  %94 = zext i16 %93 to i32
  %95 = and i32 %94, 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %45, label %97

; <label>:97:                                     ; preds = %85
  %98 = load i8*, i8** %5, align 8
  %99 = call i64 @strspn(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0)) #4
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 %99
  store i8* %101, i8** %5, align 8
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

; <label>:104:                                    ; preds = %97
  %105 = load i64, i64* %8, align 8
  %106 = sub i64 0, %105
  br label %109

; <label>:107:                                    ; preds = %97
  %108 = load i64, i64* %8, align 8
  br label %109

; <label>:109:                                    ; preds = %107, %104
  %110 = phi i64 [ %106, %104 ], [ %108, %107 ]
  %111 = load i64*, i64** %7, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i8*, i8** %5, align 8
  store i8* %112, i8** %4, align 8
  br label %113

; <label>:113:                                    ; preds = %109, %74, %43
  %114 = load i8*, i8** %4, align 8
  ret i8* %114
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #2

declare i8* @luaL_tolstring(%struct.lua_State*, i32, i64*) #1

declare i8* @lua_typename(%struct.lua_State*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
