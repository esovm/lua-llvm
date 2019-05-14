; ModuleID = 'lbaselib.c'
source_filename = "lbaselib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@base_funcs = internal constant [26 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_assert }, %struct.luaL_Reg { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_collectgarbage }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_dofile }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_error }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_getmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_ipairs }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_loadfile }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_load }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_next }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_pairs }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_pcall }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_print }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_warn }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawequal }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawlen }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawget }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawset }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_select }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_setmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_tonumber }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_tostring }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_type }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_xpcall }, %struct.luaL_Reg { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [3 x i8] c"_G\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Lua 5.4\00", align 1
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
@.str.15 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"rawequal\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"rawlen\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"rawget\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"rawset\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"setmetatable\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"tonumber\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"tostring\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"xpcall\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"assertion failed!\00", align 1
@luaB_collectgarbage.opts = internal constant [11 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8* null], align 16
@.str.27 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"collect\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"setpause\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"setstepmul\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"isrunning\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"generational\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"incremental\00", align 1
@luaB_collectgarbage.optsnum = internal unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5, i32 6, i32 7, i32 9, i32 10, i32 11], align 16
@.str.37 = private unnamed_addr constant [12 x i8] c"__metatable\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"bt\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"=(load)\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"too many nested functions\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"reader function must return a string\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"__pairs\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.45 = private unnamed_addr constant [16 x i8] c"table or string\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"index out of range\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"nil or table\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"cannot change a protected metatable\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"base out of range\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c" \0C\0A\0D\09\0B\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"value expected\00", align 1

; Function Attrs: nounwind uwtable
define i32 @luaopen_base(%struct.lua_State*) local_unnamed_addr #0 {
  %2 = tail call i32 @lua_rawgeti(%struct.lua_State* %0, i32 -1001000, i64 2) #6
  tail call void @luaL_setfuncs(%struct.lua_State* %0, %struct.luaL_Reg* getelementptr inbounds ([26 x %struct.luaL_Reg], [26 x %struct.luaL_Reg]* @base_funcs, i64 0, i64 0), i32 0) #6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #6
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #6
  %3 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #6
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #6
  ret i32 1
}

declare i32 @lua_rawgeti(%struct.lua_State*, i32, i64) local_unnamed_addr #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) local_unnamed_addr #1

declare void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare i8* @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @luaB_assert(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 1) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6
  br label %9

; <label>:6:                                      ; preds = %1
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 -1) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  %7 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0)) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #6
  %8 = tail call i32 @luaB_error(%struct.lua_State* %0)
  br label %9

; <label>:9:                                      ; preds = %6, %4
  %10 = phi i32 [ %5, %4 ], [ %8, %6 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_collectgarbage(%struct.lua_State*) #0 {
  %2 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @luaB_collectgarbage.opts, i64 0, i64 0)) #6
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* @luaB_collectgarbage.optsnum, i64 0, i64 %3
  %5 = load i32, i32* %4, align 4, !tbaa !2
  switch i32 %5, label %44 [
    i32 3, label %6
    i32 5, label %13
    i32 6, label %17
    i32 7, label %17
    i32 9, label %22
    i32 10, label %24
    i32 11, label %33
  ]

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i32, ...) @lua_gc(%struct.lua_State* %0, i32 3) #6
  %8 = tail call i32 (%struct.lua_State*, i32, ...) @lua_gc(%struct.lua_State* %0, i32 4) #6
  %9 = sitofp i32 %7 to double
  %10 = sitofp i32 %8 to double
  %11 = fmul fast double %10, 0x3F50000000000000
  %12 = fadd fast double %11, %9
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %12) #6
  br label %47

; <label>:13:                                     ; preds = %1
  %14 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 0) #6
  %15 = trunc i64 %14 to i32
  %16 = tail call i32 (%struct.lua_State*, i32, ...) @lua_gc(%struct.lua_State* %0, i32 5, i32 %15) #6
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %16) #6
  br label %47

; <label>:17:                                     ; preds = %1, %1
  %18 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 0) #6
  %19 = trunc i64 %18 to i32
  %20 = tail call i32 (%struct.lua_State*, i32, ...) @lua_gc(%struct.lua_State* %0, i32 %5, i32 %19) #6
  %21 = sext i32 %20 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %21) #6
  br label %47

; <label>:22:                                     ; preds = %1
  %23 = tail call i32 (%struct.lua_State*, i32, ...) @lua_gc(%struct.lua_State* %0, i32 9) #6
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %23) #6
  br label %47

; <label>:24:                                     ; preds = %1
  %25 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 0) #6
  %26 = trunc i64 %25 to i32
  %27 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 0) #6
  %28 = trunc i64 %27 to i32
  %29 = tail call i32 (%struct.lua_State*, i32, ...) @lua_gc(%struct.lua_State* %0, i32 10, i32 %26, i32 %28) #6
  %30 = icmp eq i32 %29, 11
  %31 = select i1 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0)
  %32 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %31) #6
  br label %47

; <label>:33:                                     ; preds = %1
  %34 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 0) #6
  %35 = trunc i64 %34 to i32
  %36 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 3, i64 0) #6
  %37 = trunc i64 %36 to i32
  %38 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 4, i64 0) #6
  %39 = trunc i64 %38 to i32
  %40 = tail call i32 (%struct.lua_State*, i32, ...) @lua_gc(%struct.lua_State* %0, i32 11, i32 %35, i32 %37, i32 %39) #6
  %41 = icmp eq i32 %40, 11
  %42 = select i1 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0)
  %43 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %42) #6
  br label %47

; <label>:44:                                     ; preds = %1
  %45 = tail call i32 (%struct.lua_State*, i32, ...) @lua_gc(%struct.lua_State* %0, i32 %5) #6
  %46 = sext i32 %45 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %46) #6
  br label %47

; <label>:47:                                     ; preds = %44, %33, %24, %22, %17, %13, %6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_dofile(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* null, i64* null) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #6
  %3 = tail call i32 @luaL_loadfilex(%struct.lua_State* %0, i8* %2, i8* null) #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @lua_error(%struct.lua_State* %0) #6
  br label %10

; <label>:7:                                      ; preds = %1
  tail call void @lua_callk(%struct.lua_State* %0, i32 0, i32 -1, i64 0, i32 (%struct.lua_State*, i32, i64)* nonnull @dofilecont) #6
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6
  %9 = add nsw i32 %8, -1
  br label %10

; <label>:10:                                     ; preds = %7, %5
  %11 = phi i32 [ %6, %5 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_error(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_optinteger(%struct.lua_State* %0, i32 2, i64 1) #6
  %3 = trunc i64 %2 to i32
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #6
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #6
  %5 = icmp eq i32 %4, 4
  %6 = icmp sgt i32 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @luaL_where(%struct.lua_State* %0, i32 %3) #6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #6
  tail call void @lua_concat(%struct.lua_State* %0, i32 2) #6
  br label %9

; <label>:9:                                      ; preds = %8, %1
  %10 = tail call i32 @lua_error(%struct.lua_State* %0) #6
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_getmetatable(%struct.lua_State*) #0 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #6
  %2 = tail call i32 @lua_getmetatable(%struct.lua_State* %0, i32 1) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #6
  br label %7

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #6
  br label %7

; <label>:7:                                      ; preds = %5, %4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_ipairs(%struct.lua_State*) #0 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #6
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @ipairsaux, i32 0) #6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #6
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 0) #6
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_loadfile(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 1, i8* null, i64* null) #6
  %3 = tail call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* null, i64* null) #6
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 3) #6
  %5 = icmp eq i32 %4, -1
  %6 = select i1 %5, i32 0, i32 3
  %7 = tail call i32 @luaL_loadfilex(%struct.lua_State* %0, i8* %2, i8* %3) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

; <label>:9:                                      ; preds = %1
  br i1 %5, label %15, label %10

; <label>:10:                                     ; preds = %9
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 %6) #6
  %11 = tail call i8* @lua_setupvalue(%struct.lua_State* %0, i32 -2, i32 1) #6
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %10
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  br label %15

; <label>:14:                                     ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #6
  br label %15

; <label>:15:                                     ; preds = %9, %10, %13, %14
  %16 = phi i32 [ 2, %14 ], [ 1, %10 ], [ 1, %9 ], [ 1, %13 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_load(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  %4 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #6
  %5 = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i64* null) #6
  %6 = call i32 @lua_type(%struct.lua_State* %0, i32 4) #6
  %7 = icmp eq i32 %6, -1
  %8 = select i1 %7, i32 0, i32 4
  %9 = icmp eq i8* %4, null
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %1
  %11 = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* nonnull %4, i64* null) #6
  %12 = load i64, i64* %2, align 8, !tbaa !6
  %13 = call i32 @luaL_loadbufferx(%struct.lua_State* %0, i8* nonnull %4, i64 %12, i8* %11, i8* %5) #6
  br label %17

; <label>:14:                                     ; preds = %1
  %15 = call i8* @luaL_optlstring(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i64* null) #6
  call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 6) #6
  call void @lua_settop(%struct.lua_State* %0, i32 5) #6
  %16 = call i32 @lua_load(%struct.lua_State* %0, i8* (%struct.lua_State*, i8*, i64*)* nonnull @generic_reader, i8* null, i8* %15, i8* %5) #6
  br label %17

; <label>:17:                                     ; preds = %14, %10
  %18 = phi i32 [ %13, %10 ], [ %16, %14 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %17
  br i1 %7, label %26, label %21

; <label>:21:                                     ; preds = %20
  call void @lua_pushvalue(%struct.lua_State* %0, i32 %8) #6
  %22 = call i8* @lua_setupvalue(%struct.lua_State* %0, i32 -2, i32 1) #6
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %21
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  br label %26

; <label>:25:                                     ; preds = %17
  call void @lua_pushnil(%struct.lua_State* %0) #6
  call void @lua_rotate(%struct.lua_State* %0, i32 -2, i32 1) #6
  br label %26

; <label>:26:                                     ; preds = %20, %21, %24, %25
  %27 = phi i32 [ 2, %25 ], [ 1, %21 ], [ 1, %20 ], [ 1, %24 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_next(%struct.lua_State*) #0 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #6
  %2 = tail call i32 @lua_next(%struct.lua_State* %0, i32 1) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushnil(%struct.lua_State* %0) #6
  br label %5

; <label>:5:                                      ; preds = %1, %4
  %6 = phi i32 [ 1, %4 ], [ 2, %1 ]
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_pairs(%struct.lua_State*) #0 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #6
  %2 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0)) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaB_next, i32 0) #6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #6
  tail call void @lua_pushnil(%struct.lua_State* %0) #6
  br label %6

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #6
  tail call void @lua_callk(%struct.lua_State* %0, i32 1, i32 3, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  br label %6

; <label>:6:                                      ; preds = %5, %4
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_pcall(%struct.lua_State*) #0 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #6
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 1, i32 1) #6
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6
  %3 = add nsw i32 %2, -2
  %4 = tail call i32 @lua_pcallk(%struct.lua_State* %0, i32 %3, i32 -1, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* nonnull @finishpcall) #6
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #6
  br label %9

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6
  br label %9

; <label>:9:                                      ; preds = %6, %7
  %10 = phi i32 [ 2, %6 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_print(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %20, label %5

; <label>:5:                                      ; preds = %1
  %6 = bitcast i64* %2 to i8*
  br label %7

; <label>:7:                                      ; preds = %14, %5
  %8 = phi i32 [ 1, %5 ], [ %18, %14 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6
  %9 = call i8* @luaL_tolstring(%struct.lua_State* %0, i32 %8, i64* nonnull %2) #6
  %10 = icmp ugt i32 %8, 1
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %7
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %13 = call i32 @fputc(i32 9, %struct._IO_FILE* %12)
  br label %14

; <label>:14:                                     ; preds = %11, %7
  %15 = load i64, i64* %2, align 8, !tbaa !6
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %17 = call i64 @fwrite(i8* %9, i64 1, i64 %15, %struct._IO_FILE* %16)
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6
  %18 = add nuw nsw i32 %8, 1
  %19 = icmp eq i32 %8, %3
  br i1 %19, label %20, label %7

; <label>:20:                                     ; preds = %14, %1
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %22 = call i32 @fputc(i32 10, %struct._IO_FILE* %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !8
  %24 = call i32 @fflush(%struct._IO_FILE* %23)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_warn(%struct.lua_State*) #0 {
  %2 = tail call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* null) #6
  %3 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 2) #6
  tail call void @lua_warning(%struct.lua_State* %0, i8* %2, i32 %3) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_rawequal(%struct.lua_State*) #0 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #6
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 2) #6
  %2 = tail call i32 @lua_rawequal(%struct.lua_State* %0, i32 1, i32 2) #6
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %2) #6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_rawlen(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #6
  %3 = or i32 %2, 1
  %4 = icmp eq i32 %3, 5
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @luaL_typeerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0)) #6
  br label %7

; <label>:7:                                      ; preds = %5, %1
  %8 = tail call i64 @lua_rawlen(%struct.lua_State* %0, i32 1) #6
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %8) #6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_rawget(%struct.lua_State*) #0 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #6
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 2) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #6
  %2 = tail call i32 @lua_rawget(%struct.lua_State* %0, i32 1) #6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_rawset(%struct.lua_State*) #0 {
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #6
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 2) #6
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 3) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 3) #6
  tail call void @lua_rawset(%struct.lua_State* %0, i32 1) #6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_select(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6
  %3 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #6
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %5, label %12

; <label>:5:                                      ; preds = %1
  %6 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* null) #6
  %7 = load i8, i8* %6, align 1, !tbaa !10
  %8 = icmp eq i8 %7, 35
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %5
  %10 = add nsw i32 %2, -1
  %11 = sext i32 %10 to i64
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %11) #6
  br label %26

; <label>:12:                                     ; preds = %5, %1
  %13 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #6
  %14 = icmp slt i64 %13, 0
  %15 = sext i32 %2 to i64
  %16 = add nsw i64 %13, %15
  %17 = icmp sgt i64 %13, %15
  %18 = select i1 %17, i64 %15, i64 %13
  %19 = select i1 %14, i64 %16, i64 %18
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %12
  %22 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i64 0, i64 0)) #6
  br label %23

; <label>:23:                                     ; preds = %21, %12
  %24 = trunc i64 %19 to i32
  %25 = sub nsw i32 %2, %24
  br label %26

; <label>:26:                                     ; preds = %23, %9
  %27 = phi i32 [ 1, %9 ], [ %25, %23 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_setmetatable(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #6
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 5) #6
  switch i32 %2, label %3 [
    i32 5, label %5
    i32 0, label %5
  ]

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @luaL_typeerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0)) #6
  br label %5

; <label>:5:                                      ; preds = %1, %1, %3
  %6 = tail call i32 @luaL_getmetafield(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i64 0, i64 0)) #6
  br label %12

; <label>:10:                                     ; preds = %5
  tail call void @lua_settop(%struct.lua_State* %0, i32 2) #6
  %11 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 1) #6
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ 1, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_tonumber(%struct.lua_State*) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #6
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %6, label %21

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #6
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %6
  tail call void @lua_settop(%struct.lua_State* %0, i32 1) #6
  br label %98

; <label>:10:                                     ; preds = %6
  %11 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #6
  %12 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* nonnull %2) #6
  %13 = icmp eq i8* %12, null
  br i1 %13, label %19, label %14

; <label>:14:                                     ; preds = %10
  %15 = call i64 @lua_stringtonumber(%struct.lua_State* %0, i8* nonnull %12) #6
  %16 = load i64, i64* %2, align 8, !tbaa !6
  %17 = add i64 %16, 1
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %20, label %19

; <label>:19:                                     ; preds = %10, %14
  call void @luaL_checkany(%struct.lua_State* %0, i32 1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #6
  br label %97

; <label>:20:                                     ; preds = %14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #6
  br label %98

; <label>:21:                                     ; preds = %1
  %22 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #6
  %23 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #6
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 1, i32 4) #6
  %24 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* nonnull %3) #6
  %25 = add i64 %23, -2
  %26 = icmp ult i64 %25, 35
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %21
  %28 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i64 0, i64 0)) #6
  br label %29

; <label>:29:                                     ; preds = %21, %27
  %30 = trunc i64 %23 to i32
  %31 = call i64 @strspn(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0)) #7
  %32 = getelementptr inbounds i8, i8* %24, i64 %31
  %33 = load i8, i8* %32, align 1, !tbaa !10
  switch i8 %33, label %38 [
    i8 45, label %34
    i8 43, label %36
  ]

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds i8, i8* %32, i64 1
  br label %38

; <label>:36:                                     ; preds = %29
  %37 = getelementptr inbounds i8, i8* %32, i64 1
  br label %38

; <label>:38:                                     ; preds = %36, %34, %29
  %39 = phi i32 [ 1, %34 ], [ 0, %36 ], [ 0, %29 ]
  %40 = phi i8* [ %35, %34 ], [ %37, %36 ], [ %32, %29 ]
  %41 = tail call i16** @__ctype_b_loc() #8
  %42 = load i16*, i16** %41, align 8, !tbaa !8
  %43 = load i8, i8* %40, align 1, !tbaa !10
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i16, i16* %42, i64 %44
  %46 = load i16, i16* %45, align 2, !tbaa !11
  %47 = and i16 %46, 8
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %89, label %49

; <label>:49:                                     ; preds = %38
  %50 = shl i64 %23, 32
  %51 = ashr exact i64 %50, 32
  br label %52

; <label>:52:                                     ; preds = %72, %49
  %53 = phi i16 [ %46, %49 ], [ %80, %72 ]
  %54 = phi i8 [ %43, %49 ], [ %77, %72 ]
  %55 = phi i64 [ 0, %49 ], [ %75, %72 ]
  %56 = phi i8* [ %40, %49 ], [ %76, %72 ]
  %57 = and i16 %53, 2048
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %62, label %59

; <label>:59:                                     ; preds = %52
  %60 = sext i8 %54 to i32
  %61 = add nsw i32 %60, -48
  br label %69

; <label>:62:                                     ; preds = %52
  %63 = zext i8 %54 to i64
  %64 = tail call i32** @__ctype_toupper_loc() #8
  %65 = load i32*, i32** %64, align 8, !tbaa !8
  %66 = getelementptr inbounds i32, i32* %65, i64 %63
  %67 = load i32, i32* %66, align 4, !tbaa !2
  %68 = add nsw i32 %67, -55
  br label %69

; <label>:69:                                     ; preds = %62, %59
  %70 = phi i32 [ %61, %59 ], [ %68, %62 ]
  %71 = icmp slt i32 %70, %30
  br i1 %71, label %72, label %89

; <label>:72:                                     ; preds = %69
  %73 = mul i64 %55, %51
  %74 = sext i32 %70 to i64
  %75 = add i64 %73, %74
  %76 = getelementptr inbounds i8, i8* %56, i64 1
  %77 = load i8, i8* %76, align 1, !tbaa !10
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds i16, i16* %42, i64 %78
  %80 = load i16, i16* %79, align 2, !tbaa !11
  %81 = and i16 %80, 8
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %52

; <label>:83:                                     ; preds = %72
  %84 = call i64 @strspn(i8* nonnull %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0)) #7
  %85 = getelementptr inbounds i8, i8* %76, i64 %84
  %86 = icmp eq i32 %39, 0
  %87 = sub i64 0, %75
  %88 = select i1 %86, i64 %75, i64 %87
  br label %89

; <label>:89:                                     ; preds = %69, %38, %83
  %90 = phi i64 [ 0, %38 ], [ %88, %83 ], [ 0, %69 ]
  %91 = phi i8* [ null, %38 ], [ %85, %83 ], [ null, %69 ]
  %92 = load i64, i64* %3, align 8, !tbaa !6
  %93 = getelementptr inbounds i8, i8* %24, i64 %92
  %94 = icmp eq i8* %91, %93
  br i1 %94, label %95, label %96

; <label>:95:                                     ; preds = %89
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %90) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #6
  br label %98

; <label>:96:                                     ; preds = %89
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #6
  br label %97

; <label>:97:                                     ; preds = %96, %19
  call void @lua_pushnil(%struct.lua_State* %0) #6
  br label %98

; <label>:98:                                     ; preds = %95, %20, %97, %9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_tostring(%struct.lua_State*) #0 {
  tail call void @luaL_checkany(%struct.lua_State* %0, i32 1) #6
  %2 = tail call i8* @luaL_tolstring(%struct.lua_State* %0, i32 1, i64* null) #6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_type(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #6
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0)) #6
  br label %6

; <label>:6:                                      ; preds = %1, %4
  %7 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %2) #6
  %8 = tail call i8* @lua_pushstring(%struct.lua_State* %0, i8* %7) #6
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_xpcall(%struct.lua_State*) #0 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6
  tail call void @luaL_checktype(%struct.lua_State* %0, i32 2, i32 6) #6
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #6
  tail call void @lua_rotate(%struct.lua_State* %0, i32 3, i32 2) #6
  %3 = add nsw i32 %2, -2
  %4 = tail call i32 @lua_pcallk(%struct.lua_State* %0, i32 %3, i32 -1, i32 2, i64 2, i32 (%struct.lua_State*, i32, i64)* nonnull @finishpcall) #6
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #6
  br label %10

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6
  %9 = add nsw i32 %8, -2
  br label %10

; <label>:10:                                     ; preds = %6, %7
  %11 = phi i32 [ 2, %6 ], [ %9, %7 ]
  ret i32 %11
}

declare i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #1

declare void @luaL_checkany(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_rotate(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

declare i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) local_unnamed_addr #1

declare i32 @lua_gc(%struct.lua_State*, i32, ...) local_unnamed_addr #1

declare void @lua_pushnumber(%struct.lua_State*, double) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) local_unnamed_addr #1

declare void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #1

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) local_unnamed_addr #1

declare i32 @luaL_loadfilex(%struct.lua_State*, i8*, i8*) local_unnamed_addr #1

declare i32 @lua_error(%struct.lua_State*) local_unnamed_addr #1

declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @dofilecont(%struct.lua_State*, i32, i64) #0 {
  %4 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6
  %5 = add nsw i32 %4, -1
  ret i32 %5
}

declare i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @luaL_where(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_concat(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_getmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #1

declare i32 @luaL_getmetafield(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @ipairsaux(%struct.lua_State*) #0 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #6
  %3 = add nsw i64 %2, 1
  tail call void @lua_pushinteger(%struct.lua_State* %0, i64 %3) #6
  %4 = tail call i32 @lua_geti(%struct.lua_State* %0, i32 1, i64 %3) #6
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 1, i32 2
  ret i32 %6
}

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_geti(%struct.lua_State*, i32, i64) local_unnamed_addr #1

declare i8* @lua_setupvalue(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

declare i32 @luaL_loadbufferx(%struct.lua_State*, i8*, i64, i8*, i8*) local_unnamed_addr #1

declare void @luaL_checktype(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare i32 @lua_load(%struct.lua_State*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i8* @generic_reader(%struct.lua_State*, i8* nocapture readnone, i64*) #0 {
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i64 0, i64 0)) #6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 1) #6
  tail call void @lua_callk(%struct.lua_State* %0, i32 0, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null) #6
  %4 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  store i64 0, i64* %2, align 8, !tbaa !6
  br label %14

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 @lua_isstring(%struct.lua_State* %0, i32 -1) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.41, i64 0, i64 0)) #6
  br label %12

; <label>:12:                                     ; preds = %7, %10
  tail call void @lua_copy(%struct.lua_State* %0, i32 -1, i32 5) #6
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #6
  %13 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 5, i64* %2) #6
  br label %14

; <label>:14:                                     ; preds = %12, %6
  %15 = phi i8* [ null, %6 ], [ %13, %12 ]
  ret i8* %15
}

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare i32 @lua_isstring(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #1

declare void @lua_copy(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare i32 @lua_next(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_pcallk(%struct.lua_State*, i32, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @finishpcall(%struct.lua_State*, i32, i64) #0 {
  %4 = icmp ugt i32 %1, 1
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #6
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -2) #6
  br label %10

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @lua_gettop(%struct.lua_State* %0) #6
  %8 = trunc i64 %2 to i32
  %9 = sub nsw i32 %7, %8
  br label %10

; <label>:10:                                     ; preds = %6, %5
  %11 = phi i32 [ 2, %5 ], [ %9, %6 ]
  ret i32 %11
}

declare i8* @luaL_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #3

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #1

declare void @lua_warning(%struct.lua_State*, i8*, i32) local_unnamed_addr #1

declare i32 @lua_rawequal(%struct.lua_State*, i32, i32) local_unnamed_addr #1

declare i32 @luaL_typeerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare i64 @lua_rawlen(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @lua_rawget(%struct.lua_State*, i32) local_unnamed_addr #1

declare void @lua_rawset(%struct.lua_State*, i32) local_unnamed_addr #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #1

declare i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #1

declare i64 @lua_stringtonumber(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #5

declare i8* @lua_typename(%struct.lua_State*, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !4, i64 0}
