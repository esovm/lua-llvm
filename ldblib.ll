; ModuleID = 'ldblib.c'
source_filename = "ldblib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.CallInfo = type opaque

@dblib = internal constant [17 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @db_debug }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getuservalue }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @db_gethook }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getinfo }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getlocal }, %struct.luaL_Reg { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getregistry }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getupvalue }, %struct.luaL_Reg { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @db_upvaluejoin }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @db_upvalueid }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setuservalue }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @db_sethook }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setlocal }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setupvalue }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @db_traceback }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"getuservalue\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"gethook\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"getinfo\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"getlocal\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"getregistry\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"getmetatable\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"getupvalue\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"upvaluejoin\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"upvalueid\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"setuservalue\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"sethook\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"setlocal\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"setmetatable\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"setupvalue\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"traceback\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"lua_debug> \00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"cont\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"=(debug command)\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"external hook\00", align 1
@HOOKKEY = internal constant i32 0, align 4
@hookf.hooknames = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0)], align 16
@.str.22 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"tail call\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"stack overflow\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"flnStu\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c">%s\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"invalid option\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"short_src\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"linedefined\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"lastlinedefined\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"currentline\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"nups\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"nparams\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"isvararg\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"namewhat\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"istailcall\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"activelines\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"level out of range\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"Lua function expected\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"invalid upvalue index\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"nil or table expected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaopen_debug(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkversion_(%struct.lua_State* %3, double 5.030000e+02, i64 136)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* %4, i32 0, i32 16)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_setfuncs(%struct.lua_State* %5, %struct.luaL_Reg* getelementptr inbounds ([17 x %struct.luaL_Reg], [17 x %struct.luaL_Reg]* @dblib, i32 0, i32 0), i32 0)
  ret i32 1
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_debug(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca [250 x i8], align 16
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  br label %4

; <label>:4:                                      ; preds = %36, %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 @fflush(%struct._IO_FILE* %7)
  %9 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %11 = call i8* @fgets(i8* %9, i32 250, %struct._IO_FILE* %10)
  %12 = icmp eq i8* %11, null
  br i1 %12, label %17, label %13

; <label>:13:                                     ; preds = %4
  %14 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i32 0, i32 0
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %13, %4
  ret i32 0

; <label>:18:                                     ; preds = %13
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i32 0, i32 0
  %21 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i32 0, i32 0
  %22 = call i64 @strlen(i8* %21) #3
  %23 = call i32 @luaL_loadbufferx(%struct.lua_State* %19, i8* %20, i64 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* null)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %18
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %27 = call i32 @lua_pcallk(%struct.lua_State* %26, i32 0, i32 0, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* null)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %25, %18
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %32 = call i8* @lua_tolstring(%struct.lua_State* %31, i32 -1, i64* null)
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* %32)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i32 @fflush(%struct._IO_FILE* %34)
  br label %36

; <label>:36:                                     ; preds = %29, %25
  %37 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %37, i32 0)
  br label %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_getuservalue(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @lua_type(%struct.lua_State* %3, i32 1)
  %5 = icmp ne i32 %4, 7
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %1
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnil(%struct.lua_State* %7)
  br label %11

; <label>:8:                                      ; preds = %1
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i32 @lua_getuservalue(%struct.lua_State* %9, i32 1)
  br label %11

; <label>:11:                                     ; preds = %8, %6
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_gethook(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca [5 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca void (%struct.lua_State*, %struct.lua_Debug*)*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call %struct.lua_State* @getthread(%struct.lua_State* %8, i32* %3)
  store %struct.lua_State* %9, %struct.lua_State** %4, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = call i32 @lua_gethookmask(%struct.lua_State* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = call void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State* %12)
  store void (%struct.lua_State*, %struct.lua_Debug*)* %13, void (%struct.lua_State*, %struct.lua_Debug*)** %7, align 8
  %14 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %7, align 8
  %15 = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %14, null
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %1
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnil(%struct.lua_State* %17)
  br label %38

; <label>:18:                                     ; preds = %1
  %19 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %7, align 8
  %20 = icmp ne void (%struct.lua_State*, %struct.lua_Debug*)* %19, @hookf
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %18
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %23 = call i8* @lua_pushstring(%struct.lua_State* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0))
  br label %37

; <label>:24:                                     ; preds = %18
  %25 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %26 = call i32 @lua_rawgetp(%struct.lua_State* %25, i32 -1001000, i8* bitcast (i32* @HOOKKEY to i8*))
  %27 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @checkstack(%struct.lua_State* %27, %struct.lua_State* %28, i32 1)
  %29 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %30 = call i32 @lua_pushthread(%struct.lua_State* %29)
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_xmove(%struct.lua_State* %31, %struct.lua_State* %32, i32 1)
  %33 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %34 = call i32 @lua_rawget(%struct.lua_State* %33, i32 -2)
  %35 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_rotate(%struct.lua_State* %35, i32 -2, i32 -1)
  %36 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %36, i32 -2)
  br label %37

; <label>:37:                                     ; preds = %24, %21
  br label %38

; <label>:38:                                     ; preds = %37, %16
  %39 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i32 0, i32 0
  %42 = call i8* @unmakemask(i32 %40, i8* %41)
  %43 = call i8* @lua_pushstring(%struct.lua_State* %39, i8* %42)
  %44 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %45 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %46 = call i32 @lua_gethookcount(%struct.lua_State* %45)
  %47 = sext i32 %46 to i64
  call void @lua_pushinteger(%struct.lua_State* %44, i64 %47)
  ret i32 3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_getinfo(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_Debug, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call %struct.lua_State* @getthread(%struct.lua_State* %8, i32* %5)
  store %struct.lua_State* %9, %struct.lua_State** %6, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 2
  %13 = call i8* @luaL_optlstring(%struct.lua_State* %10, i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i64* null)
  store i8* %13, i8** %7, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void @checkstack(%struct.lua_State* %14, %struct.lua_State* %15, i32 3)
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 @lua_type(%struct.lua_State* %16, i32 %18)
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %30

; <label>:21:                                     ; preds = %1
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* %23)
  store i8* %24, i8** %7, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  call void @lua_pushvalue(%struct.lua_State* %25, i32 %27)
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void @lua_xmove(%struct.lua_State* %28, %struct.lua_State* %29, i32 1)
  br label %42

; <label>:30:                                     ; preds = %1
  %31 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i64 @luaL_checkinteger(%struct.lua_State* %32, i32 %34)
  %36 = trunc i64 %35 to i32
  %37 = call i32 @lua_getstack(%struct.lua_State* %31, i32 %36, %struct.lua_Debug* %4)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

; <label>:39:                                     ; preds = %30
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* %40)
  store i32 1, i32* %2, align 4
  br label %133

; <label>:41:                                     ; preds = %30
  br label %42

; <label>:42:                                     ; preds = %41, %21
  %43 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @lua_getinfo(%struct.lua_State* %43, i8* %44, %struct.lua_Debug* %4)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

; <label>:47:                                     ; preds = %42
  %48 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 2
  %51 = call i32 @luaL_argerror(%struct.lua_State* %48, i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0))
  store i32 %51, i32* %2, align 4
  br label %133

; <label>:52:                                     ; preds = %42
  %53 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_createtable(%struct.lua_State* %53, i32 0, i32 0)
  %54 = load i8*, i8** %7, align 8
  %55 = call i8* @strchr(i8* %54, i32 83) #3
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %73

; <label>:57:                                     ; preds = %52
  %58 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %59 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  call void @settabss(%struct.lua_State* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* %60)
  %61 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %62 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 12
  %63 = getelementptr inbounds [60 x i8], [60 x i8]* %62, i32 0, i32 0
  call void @settabss(%struct.lua_State* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* %63)
  %64 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %65 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  call void @settabsi(%struct.lua_State* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 %66)
  %67 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %68 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  call void @settabsi(%struct.lua_State* %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i32 %69)
  %70 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %71 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  call void @settabss(%struct.lua_State* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* %72)
  br label %73

; <label>:73:                                     ; preds = %57, %52
  %74 = load i8*, i8** %7, align 8
  %75 = call i8* @strchr(i8* %74, i32 108) #3
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %81

; <label>:77:                                     ; preds = %73
  %78 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %79 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  call void @settabsi(%struct.lua_State* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i32 %80)
  br label %81

; <label>:81:                                     ; preds = %77, %73
  %82 = load i8*, i8** %7, align 8
  %83 = call i8* @strchr(i8* %82, i32 117) #3
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %98

; <label>:85:                                     ; preds = %81
  %86 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %87 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 8
  %88 = load i8, i8* %87, align 4
  %89 = zext i8 %88 to i32
  call void @settabsi(%struct.lua_State* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 %89)
  %90 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %91 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 9
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  call void @settabsi(%struct.lua_State* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 %93)
  %94 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %95 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 10
  %96 = load i8, i8* %95, align 2
  %97 = sext i8 %96 to i32
  call void @settabsb(%struct.lua_State* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 %97)
  br label %98

; <label>:98:                                     ; preds = %85, %81
  %99 = load i8*, i8** %7, align 8
  %100 = call i8* @strchr(i8* %99, i32 110) #3
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %109

; <label>:102:                                    ; preds = %98
  %103 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %104 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  call void @settabss(%struct.lua_State* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* %105)
  %106 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %107 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  call void @settabss(%struct.lua_State* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* %108)
  br label %109

; <label>:109:                                    ; preds = %102, %98
  %110 = load i8*, i8** %7, align 8
  %111 = call i8* @strchr(i8* %110, i32 116) #3
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %118

; <label>:113:                                    ; preds = %109
  %114 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %115 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 11
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  call void @settabsb(%struct.lua_State* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i32 %117)
  br label %118

; <label>:118:                                    ; preds = %113, %109
  %119 = load i8*, i8** %7, align 8
  %120 = call i8* @strchr(i8* %119, i32 76) #3
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %125

; <label>:122:                                    ; preds = %118
  %123 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %124 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void @treatstackoption(%struct.lua_State* %123, %struct.lua_State* %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0))
  br label %125

; <label>:125:                                    ; preds = %122, %118
  %126 = load i8*, i8** %7, align 8
  %127 = call i8* @strchr(i8* %126, i32 102) #3
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %132

; <label>:129:                                    ; preds = %125
  %130 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %131 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void @treatstackoption(%struct.lua_State* %130, %struct.lua_State* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0))
  br label %132

; <label>:132:                                    ; preds = %129, %125
  store i32 1, i32* %2, align 4
  br label %133

; <label>:133:                                    ; preds = %132, %47, %39
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_getlocal(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.lua_Debug, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call %struct.lua_State* @getthread(%struct.lua_State* %10, i32* %4)
  store %struct.lua_State* %11, %struct.lua_State** %5, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 2
  %15 = call i64 @luaL_checkinteger(%struct.lua_State* %12, i32 %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @lua_type(%struct.lua_State* %17, i32 %19)
  %21 = icmp eq i32 %20, 6
  br i1 %21, label %22, label %31

; <label>:22:                                     ; preds = %1
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  call void @lua_pushvalue(%struct.lua_State* %23, i32 %25)
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i8* @lua_getlocal(%struct.lua_State* %27, %struct.lua_Debug* null, i32 %28)
  %30 = call i8* @lua_pushstring(%struct.lua_State* %26, i8* %29)
  store i32 1, i32* %2, align 4
  br label %63

; <label>:31:                                     ; preds = %1
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i64 @luaL_checkinteger(%struct.lua_State* %32, i32 %34)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @lua_getstack(%struct.lua_State* %37, i32 %38, %struct.lua_Debug* %6)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

; <label>:41:                                     ; preds = %31
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i32 @luaL_argerror(%struct.lua_State* %42, i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0))
  store i32 %45, i32* %2, align 4
  br label %63

; <label>:46:                                     ; preds = %31
  %47 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %48 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @checkstack(%struct.lua_State* %47, %struct.lua_State* %48, i32 1)
  %49 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i8* @lua_getlocal(%struct.lua_State* %49, %struct.lua_Debug* %6, i32 %50)
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %61

; <label>:54:                                     ; preds = %46
  %55 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %56 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_xmove(%struct.lua_State* %55, %struct.lua_State* %56, i32 1)
  %57 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i8* @lua_pushstring(%struct.lua_State* %57, i8* %58)
  %60 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_rotate(%struct.lua_State* %60, i32 -2, i32 1)
  store i32 2, i32* %2, align 4
  br label %63

; <label>:61:                                     ; preds = %46
  %62 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* %62)
  store i32 1, i32* %2, align 4
  br label %63

; <label>:63:                                     ; preds = %61, %54, %41, %22
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_getregistry(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* %3, i32 -1001000)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_getmetatable(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* %3, i32 1)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_getmetatable(%struct.lua_State* %4, i32 1)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %1
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnil(%struct.lua_State* %8)
  br label %9

; <label>:9:                                      ; preds = %7, %1
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_getupvalue(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @auxupvalue(%struct.lua_State* %3, i32 1)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_upvaluejoin(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i32 @checkupval(%struct.lua_State* %5, i32 1, i32 2)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i32 @checkupval(%struct.lua_State* %7, i32 3, i32 4)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i32 @lua_iscfunction(%struct.lua_State* %9, i32 1)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %1
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = call i32 @luaL_argerror(%struct.lua_State* %13, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i32 0, i32 0))
  %15 = icmp ne i32 %14, 0
  br label %16

; <label>:16:                                     ; preds = %12, %1
  %17 = phi i1 [ true, %1 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = call i32 @lua_iscfunction(%struct.lua_State* %19, i32 3)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

; <label>:22:                                     ; preds = %16
  %23 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %24 = call i32 @luaL_argerror(%struct.lua_State* %23, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i32 0, i32 0))
  %25 = icmp ne i32 %24, 0
  br label %26

; <label>:26:                                     ; preds = %22, %16
  %27 = phi i1 [ true, %16 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  call void @lua_upvaluejoin(%struct.lua_State* %29, i32 1, i32 %30, i32 3, i32 %31)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_upvalueid(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @checkupval(%struct.lua_State* %4, i32 1, i32 2)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i8* @lua_upvalueid(%struct.lua_State* %7, i32 1, i32 %8)
  call void @lua_pushlightuserdata(%struct.lua_State* %6, i8* %9)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_setuservalue(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* %3, i32 1, i32 7)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* %4, i32 2)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %5, i32 2)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setuservalue(%struct.lua_State* %6, i32 1)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_sethook(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca void (%struct.lua_State*, %struct.lua_Debug*)*, align 8
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call %struct.lua_State* @getthread(%struct.lua_State* %9, i32* %3)
  store %struct.lua_State* %10, %struct.lua_State** %7, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  %14 = call i32 @lua_type(%struct.lua_State* %11, i32 %13)
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %1
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  call void @lua_settop(%struct.lua_State* %17, i32 %19)
  store void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)** %6, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %36

; <label>:20:                                     ; preds = %1
  %21 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 2
  %24 = call i8* @luaL_checklstring(%struct.lua_State* %21, i32 %23, i64* null)
  store i8* %24, i8** %8, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  call void @luaL_checktype(%struct.lua_State* %25, i32 %27, i32 6)
  %28 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 3
  %31 = call i64 @luaL_optinteger(%struct.lua_State* %28, i32 %30, i64 0)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  store void (%struct.lua_State*, %struct.lua_Debug*)* @hookf, void (%struct.lua_State*, %struct.lua_Debug*)** %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @makemask(i8* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %36

; <label>:36:                                     ; preds = %20, %16
  %37 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %38 = call i32 @lua_rawgetp(%struct.lua_State* %37, i32 -1001000, i8* bitcast (i32* @HOOKKEY to i8*))
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

; <label>:40:                                     ; preds = %36
  %41 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* %41, i32 0, i32 2)
  %42 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* %42, i32 -1)
  %43 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_rawsetp(%struct.lua_State* %43, i32 -1001000, i8* bitcast (i32* @HOOKKEY to i8*))
  %44 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %45 = call i8* @lua_pushstring(%struct.lua_State* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0))
  %46 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* %46, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0))
  %47 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* %47, i32 -1)
  %48 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %49 = call i32 @lua_setmetatable(%struct.lua_State* %48, i32 -2)
  br label %50

; <label>:50:                                     ; preds = %40, %36
  %51 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %52 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  call void @checkstack(%struct.lua_State* %51, %struct.lua_State* %52, i32 1)
  %53 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %54 = call i32 @lua_pushthread(%struct.lua_State* %53)
  %55 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %56 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_xmove(%struct.lua_State* %55, %struct.lua_State* %56, i32 1)
  %57 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  call void @lua_pushvalue(%struct.lua_State* %57, i32 %59)
  %60 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_rawset(%struct.lua_State* %60, i32 -3)
  %61 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %62 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %6, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  call void @lua_sethook(%struct.lua_State* %61, void (%struct.lua_State*, %struct.lua_Debug*)* %62, i32 %63, i32 %64)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_setlocal(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.lua_Debug, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call %struct.lua_State* @getthread(%struct.lua_State* %10, i32* %4)
  store %struct.lua_State* %11, %struct.lua_State** %6, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i64 @luaL_checkinteger(%struct.lua_State* %12, i32 %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 2
  %20 = call i64 @luaL_checkinteger(%struct.lua_State* %17, i32 %19)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @lua_getstack(%struct.lua_State* %22, i32 %23, %struct.lua_Debug* %7)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

; <label>:26:                                     ; preds = %1
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @luaL_argerror(%struct.lua_State* %27, i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0))
  store i32 %30, i32* %2, align 4
  br label %53

; <label>:31:                                     ; preds = %1
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 3
  call void @luaL_checkany(%struct.lua_State* %32, i32 %34)
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 3
  call void @lua_settop(%struct.lua_State* %35, i32 %37)
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void @checkstack(%struct.lua_State* %38, %struct.lua_State* %39, i32 1)
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %41 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void @lua_xmove(%struct.lua_State* %40, %struct.lua_State* %41, i32 1)
  %42 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i8* @lua_setlocal(%struct.lua_State* %42, %struct.lua_Debug* %7, i32 %43)
  store i8* %44, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %31
  %48 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void @lua_settop(%struct.lua_State* %48, i32 -2)
  br label %49

; <label>:49:                                     ; preds = %47, %31
  %50 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i8* @lua_pushstring(%struct.lua_State* %50, i8* %51)
  store i32 1, i32* %2, align 4
  br label %53

; <label>:53:                                     ; preds = %49, %26
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_setmetatable(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_type(%struct.lua_State* %4, i32 2)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %15, label %11

; <label>:11:                                     ; preds = %8
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = call i32 @luaL_argerror(%struct.lua_State* %12, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0))
  %14 = icmp ne i32 %13, 0
  br label %15

; <label>:15:                                     ; preds = %11, %8, %1
  %16 = phi i1 [ true, %8 ], [ true, %1 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %18, i32 2)
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = call i32 @lua_setmetatable(%struct.lua_State* %19, i32 1)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_setupvalue(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* %3, i32 3)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @auxupvalue(%struct.lua_State* %4, i32 0)
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_traceback(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call %struct.lua_State* @getthread(%struct.lua_State* %7, i32* %3)
  store %struct.lua_State* %8, %struct.lua_State** %4, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 1
  %12 = call i8* @lua_tolstring(%struct.lua_State* %9, i32 %11, i64* null)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %25

; <label>:15:                                     ; preds = %1
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 @lua_type(%struct.lua_State* %16, i32 %18)
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %25, label %21

; <label>:21:                                     ; preds = %15
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  call void @lua_pushvalue(%struct.lua_State* %22, i32 %24)
  br label %41

; <label>:25:                                     ; preds = %15, %1
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 2
  %29 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %31 = icmp eq %struct.lua_State* %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  %34 = sext i32 %33 to i64
  %35 = call i64 @luaL_optinteger(%struct.lua_State* %26, i32 %28, i64 %34)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %38 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %6, align 4
  call void @luaL_traceback(%struct.lua_State* %37, %struct.lua_State* %38, i8* %39, i32 %40)
  br label %41

; <label>:41:                                     ; preds = %25, %21
  ret i32 1
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @luaL_loadbufferx(%struct.lua_State*, i8*, i64, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @lua_pcallk(%struct.lua_State*, i32, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) #1

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) #1

declare void @lua_settop(%struct.lua_State*, i32) #1

declare i32 @lua_type(%struct.lua_State*, i32) #1

declare void @lua_pushnil(%struct.lua_State*) #1

declare i32 @lua_getuservalue(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lua_State* @getthread(%struct.lua_State*, i32*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %7 = call i32 @lua_type(%struct.lua_State* %6, i32 1)
  %8 = icmp eq i32 %7, 8
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %2
  %10 = load i32*, i32** %5, align 8
  store i32 1, i32* %10, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = call %struct.lua_State* @lua_tothread(%struct.lua_State* %11, i32 1)
  store %struct.lua_State* %12, %struct.lua_State** %3, align 8
  br label %16

; <label>:13:                                     ; preds = %2
  %14 = load i32*, i32** %5, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  store %struct.lua_State* %15, %struct.lua_State** %3, align 8
  br label %16

; <label>:16:                                     ; preds = %13, %9
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  ret %struct.lua_State* %17
}

declare i32 @lua_gethookmask(%struct.lua_State*) #1

declare void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hookf(%struct.lua_State*, %struct.lua_Debug*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_Debug*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.lua_Debug* %1, %struct.lua_Debug** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = call i32 @lua_rawgetp(%struct.lua_State* %5, i32 -1001000, i8* bitcast (i32* @HOOKKEY to i8*))
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = call i32 @lua_pushthread(%struct.lua_State* %7)
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = call i32 @lua_rawget(%struct.lua_State* %9, i32 -2)
  %11 = icmp eq i32 %10, 6
  br i1 %11, label %12, label %35

; <label>:12:                                     ; preds = %2
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = load %struct.lua_Debug*, %struct.lua_Debug** %4, align 8
  %15 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* @hookf.hooknames, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @lua_pushstring(%struct.lua_State* %13, i8* %19)
  %21 = load %struct.lua_Debug*, %struct.lua_Debug** %4, align 8
  %22 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %31

; <label>:25:                                     ; preds = %12
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = load %struct.lua_Debug*, %struct.lua_Debug** %4, align 8
  %28 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  call void @lua_pushinteger(%struct.lua_State* %26, i64 %30)
  br label %33

; <label>:31:                                     ; preds = %12
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* %32)
  br label %33

; <label>:33:                                     ; preds = %31, %25
  %34 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_callk(%struct.lua_State* %34, i32 2, i32 0, i64 0, i32 (%struct.lua_State*, i32, i64)* null)
  br label %35

; <label>:35:                                     ; preds = %33, %2
  ret void
}

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #1

declare i32 @lua_rawgetp(%struct.lua_State*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkstack(%struct.lua_State*, %struct.lua_State*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_State* %1, %struct.lua_State** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %9 = icmp ne %struct.lua_State* %7, %8
  br i1 %9, label %10, label %18

; <label>:10:                                     ; preds = %3
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @lua_checkstack(%struct.lua_State* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %10
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %17 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0))
  br label %18

; <label>:18:                                     ; preds = %15, %10, %3
  ret void
}

declare i32 @lua_pushthread(%struct.lua_State*) #1

declare void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) #1

declare i32 @lua_rawget(%struct.lua_State*, i32) #1

declare void @lua_rotate(%struct.lua_State*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unmakemask(i32, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  store i8 99, i8* %14, align 1
  br label %15

; <label>:15:                                     ; preds = %9, %2
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 2
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  store i8 114, i8* %24, align 1
  br label %25

; <label>:25:                                     ; preds = %19, %15
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  store i8 108, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %29, %25
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %4, align 8
  ret i8* %40
}

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

declare i32 @lua_gethookcount(%struct.lua_State*) #1

declare %struct.lua_State* @lua_tothread(%struct.lua_State*, i32) #1

declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) #1

declare i32 @lua_checkstack(%struct.lua_State*, i32) #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) #1

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #1

declare void @lua_pushvalue(%struct.lua_State*, i32) #1

declare i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) #1

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #1

declare i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) #1

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @settabss(%struct.lua_State*, i8*, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i8* @lua_pushstring(%struct.lua_State* %7, i8* %8)
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load i8*, i8** %5, align 8
  call void @lua_setfield(%struct.lua_State* %10, i32 -2, i8* %11)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @settabsi(%struct.lua_State*, i8*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  call void @lua_pushinteger(%struct.lua_State* %7, i64 %9)
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load i8*, i8** %5, align 8
  call void @lua_setfield(%struct.lua_State* %10, i32 -2, i8* %11)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @settabsb(%struct.lua_State*, i8*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %6, align 4
  call void @lua_pushboolean(%struct.lua_State* %7, i32 %8)
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load i8*, i8** %5, align 8
  call void @lua_setfield(%struct.lua_State* %9, i32 -2, i8* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @treatstackoption(%struct.lua_State*, %struct.lua_State*, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_State* %1, %struct.lua_State** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %9 = icmp eq %struct.lua_State* %7, %8
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %3
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_rotate(%struct.lua_State* %11, i32 -2, i32 1)
  br label %15

; <label>:12:                                     ; preds = %3
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_xmove(%struct.lua_State* %13, %struct.lua_State* %14, i32 1)
  br label %15

; <label>:15:                                     ; preds = %12, %10
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %17 = load i8*, i8** %6, align 8
  call void @lua_setfield(%struct.lua_State* %16, i32 -2, i8* %17)
  ret void
}

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

declare void @lua_pushboolean(%struct.lua_State*, i32) #1

declare i8* @lua_getlocal(%struct.lua_State*, %struct.lua_Debug*, i32) #1

declare void @luaL_checkany(%struct.lua_State*, i32) #1

declare i32 @lua_getmetatable(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxupvalue(%struct.lua_State*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = call i64 @luaL_checkinteger(%struct.lua_State* %8, i32 2)
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %7, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaL_checktype(%struct.lua_State* %11, i32 1, i32 6)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %2
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i8* @lua_getupvalue(%struct.lua_State* %15, i32 1, i32 %16)
  br label %22

; <label>:18:                                     ; preds = %2
  %19 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @lua_setupvalue(%struct.lua_State* %19, i32 1, i32 %20)
  br label %22

; <label>:22:                                     ; preds = %18, %14
  %23 = phi i8* [ %17, %14 ], [ %21, %18 ]
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %22
  store i32 0, i32* %3, align 4
  br label %37

; <label>:27:                                     ; preds = %22
  %28 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i8* @lua_pushstring(%struct.lua_State* %28, i8* %29)
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  %34 = sub nsw i32 0, %33
  call void @lua_rotate(%struct.lua_State* %31, i32 %34, i32 1)
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %37

; <label>:37:                                     ; preds = %27, %26
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare void @luaL_checktype(%struct.lua_State*, i32, i32) #1

declare i8* @lua_getupvalue(%struct.lua_State*, i32, i32) #1

declare i8* @lua_setupvalue(%struct.lua_State*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkupval(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @luaL_checkinteger(%struct.lua_State* %8, i32 %9)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = load i32, i32* %5, align 4
  call void @luaL_checktype(%struct.lua_State* %12, i32 %13, i32 6)
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i8* @lua_getupvalue(%struct.lua_State* %14, i32 %15, i32 %16)
  %18 = icmp ne i8* %17, null
  br i1 %18, label %24, label %19

; <label>:19:                                     ; preds = %3
  %20 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @luaL_argerror(%struct.lua_State* %20, i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0))
  %23 = icmp ne i32 %22, 0
  br label %24

; <label>:24:                                     ; preds = %19, %3
  %25 = phi i1 [ true, %3 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare i32 @lua_iscfunction(%struct.lua_State*, i32) #1

declare void @lua_upvaluejoin(%struct.lua_State*, i32, i32, i32, i32) #1

declare void @lua_pushlightuserdata(%struct.lua_State*, i8*) #1

declare i8* @lua_upvalueid(%struct.lua_State*, i32, i32) #1

declare void @lua_setuservalue(%struct.lua_State*, i32) #1

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) #1

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @makemask(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @strchr(i8* %6, i32 99) #3
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %10, 1
  store i32 %11, i32* %5, align 4
  br label %12

; <label>:12:                                     ; preds = %9, %2
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @strchr(i8* %13, i32 114) #3
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, 2
  store i32 %18, i32* %5, align 4
  br label %19

; <label>:19:                                     ; preds = %16, %12
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @strchr(i8* %20, i32 108) #3
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, 4
  store i32 %25, i32* %5, align 4
  br label %26

; <label>:26:                                     ; preds = %23, %19
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, 8
  store i32 %31, i32* %5, align 4
  br label %32

; <label>:32:                                     ; preds = %29, %26
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare void @lua_rawsetp(%struct.lua_State*, i32, i8*) #1

declare i32 @lua_setmetatable(%struct.lua_State*, i32) #1

declare void @lua_rawset(%struct.lua_State*, i32) #1

declare void @lua_sethook(%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32) #1

declare i8* @lua_setlocal(%struct.lua_State*, %struct.lua_Debug*, i32) #1

declare void @luaL_traceback(%struct.lua_State*, %struct.lua_State*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
