; ModuleID = 'loadlib.c'
source_filename = "loadlib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.luaL_Buffer = type { i8*, i64, i64, %struct.lua_State*, [8192 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@pk_funcs = internal constant [8 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_loadlib }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_searchpath }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"LUA_PATH\00", align 1
@.str.2 = private unnamed_addr constant [151 x i8] c"/usr/local/share/lua/5.3/?.lua;/usr/local/share/lua/5.3/?/init.lua;/usr/local/lib/lua/5.3/?.lua;/usr/local/lib/lua/5.3/?/init.lua;./?.lua;./?/init.lua\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"cpath\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"LUA_CPATH\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"/usr/local/lib/lua/5.3/?.so;/usr/local/lib/lua/5.3/loadall.so;./?.so\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"/\0A;\0A?\0A!\0A-\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"_PRELOAD\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"preload\00", align 1
@ll_funcs = internal constant [2 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_require }, %struct.luaL_Reg zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@CLIBS = internal constant i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"loadlib\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"searchpath\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"searchers\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"absent\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"dynamic libraries not enabled; check your Lua installation\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"\0A\09no file '%s'\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@createsearcherstable.searchers = internal constant [5 x i32 (%struct.lua_State*)*] [i32 (%struct.lua_State*)* @searcher_preload, i32 (%struct.lua_State*)* @searcher_Lua, i32 (%struct.lua_State*)* @searcher_C, i32 (%struct.lua_State*)* @searcher_Croot, i32 (%struct.lua_State*)* null], align 16
@.str.25 = private unnamed_addr constant [33 x i8] c"\0A\09no field package.preload['%s']\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"'package.%s' must be a string\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"error loading module '%s' from file '%s':\0A\09%s\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"luaopen_%s\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"\0A\09no module '%s' in file '%s'\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"_5_3\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c";;\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c";\01;\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"LUA_NOENV\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"'package.searchers' must be a table\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"module '%s' not found:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaopen_package(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @createclibstable(%struct.lua_State* %3)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkversion_(%struct.lua_State* %4, double 5.030000e+02, i64 136)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* %5, i32 0, i32 7)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_setfuncs(%struct.lua_State* %6, %struct.luaL_Reg* getelementptr inbounds ([8 x %struct.luaL_Reg], [8 x %struct.luaL_Reg]* @pk_funcs, i32 0, i32 0), i32 0)
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @createsearcherstable(%struct.lua_State* %7)
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @setpath(%struct.lua_State* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.2, i32 0, i32 0))
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @setpath(%struct.lua_State* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i32 0, i32 0))
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = call i8* @lua_pushstring(%struct.lua_State* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* %12, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = call i32 @luaL_getsubtable(%struct.lua_State* %13, i32 -1001000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0))
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* %15, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %17 = call i32 @luaL_getsubtable(%struct.lua_State* %16, i32 -1001000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0))
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* %18, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0))
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = call i32 @lua_rawgeti(%struct.lua_State* %19, i32 -1001000, i64 2)
  %21 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* %21, i32 -2)
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_setfuncs(%struct.lua_State* %22, %struct.luaL_Reg* getelementptr inbounds ([2 x %struct.luaL_Reg], [2 x %struct.luaL_Reg]* @ll_funcs, i32 0, i32 0), i32 1)
  %23 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %23, i32 -2)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @createclibstable(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* %3, i32 0, i32 0)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* %4, i32 0, i32 1)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushcclosure(%struct.lua_State* %5, i32 (%struct.lua_State*)* @gctm, i32 0)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* %6, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0))
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i32 @lua_setmetatable(%struct.lua_State* %7, i32 -2)
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_rawsetp(%struct.lua_State* %9, i32 -1001000, i8* bitcast (i32* @CLIBS to i8*))
  ret void
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i64) #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @createsearcherstable(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* %4, i32 4, i32 0)
  store i32 0, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %22, %1
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [5 x i32 (%struct.lua_State*)*], [5 x i32 (%struct.lua_State*)*]* @createsearcherstable.searchers, i64 0, i64 %7
  %9 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %8, align 8
  %10 = icmp ne i32 (%struct.lua_State*)* %9, null
  br i1 %10, label %11, label %25

; <label>:11:                                     ; preds = %5
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* %12, i32 -2)
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [5 x i32 (%struct.lua_State*)*], [5 x i32 (%struct.lua_State*)*]* @createsearcherstable.searchers, i64 0, i64 %15
  %17 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %16, align 8
  call void @lua_pushcclosure(%struct.lua_State* %13, i32 (%struct.lua_State*)* %17, i32 1)
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  call void @lua_rawseti(%struct.lua_State* %18, i32 -2, i64 %21)
  br label %22

; <label>:22:                                     ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %5

; <label>:25:                                     ; preds = %5
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* %26, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setpath(%struct.lua_State*, i8*, i8*, i8*) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0))
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i8* @getenv(i8* %14) #4
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = call i8* @getenv(i8* %19) #4
  store i8* %20, i8** %10, align 8
  br label %21

; <label>:21:                                     ; preds = %18, %4
  %22 = load i8*, i8** %10, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %21
  %25 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %26 = call i32 @noenv(%struct.lua_State* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

; <label>:28:                                     ; preds = %24, %21
  %29 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @lua_pushstring(%struct.lua_State* %29, i8* %30)
  br label %42

; <label>:32:                                     ; preds = %24
  %33 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i8* @luaL_gsub(%struct.lua_State* %33, i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0))
  store i8* %35, i8** %10, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i8* @luaL_gsub(%struct.lua_State* %36, i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), i8* %38)
  %40 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_rotate(%struct.lua_State* %40, i32 -2, i32 -1)
  %41 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %41, i32 -2)
  br label %42

; <label>:42:                                     ; preds = %32, %28
  %43 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %44 = load i8*, i8** %6, align 8
  call void @lua_setfield(%struct.lua_State* %43, i32 -3, i8* %44)
  %45 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %45, i32 -2)
  ret void
}

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

declare i32 @luaL_getsubtable(%struct.lua_State*, i32, i8*) #1

declare i32 @lua_rawgeti(%struct.lua_State*, i32, i64) #1

declare void @lua_pushvalue(%struct.lua_State*, i32) #1

declare void @lua_settop(%struct.lua_State*, i32) #1

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gctm(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i64 @luaL_len(%struct.lua_State* %4, i32 1)
  store i64 %5, i64* %3, align 8
  br label %6

; <label>:6:                                      ; preds = %16, %1
  %7 = load i64, i64* %3, align 8
  %8 = icmp sge i64 %7, 1
  br i1 %8, label %9, label %19

; <label>:9:                                      ; preds = %6
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @lua_rawgeti(%struct.lua_State* %10, i32 1, i64 %11)
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = call i8* @lua_touserdata(%struct.lua_State* %13, i32 -1)
  call void @lsys_unloadlib(i8* %14)
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %15, i32 -2)
  br label %16

; <label>:16:                                     ; preds = %9
  %17 = load i64, i64* %3, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %3, align 8
  br label %6

; <label>:19:                                     ; preds = %6
  ret i32 0
}

declare i32 @lua_setmetatable(%struct.lua_State*, i32) #1

declare void @lua_rawsetp(%struct.lua_State*, i32, i8*) #1

declare i64 @luaL_len(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lsys_unloadlib(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret void
}

declare i8* @lua_touserdata(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_loadlib(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = call i8* @luaL_checklstring(%struct.lua_State* %7, i32 1, i64* null)
  store i8* %8, i8** %4, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = call i8* @luaL_checklstring(%struct.lua_State* %9, i32 2, i64* null)
  store i8* %10, i8** %5, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @lookforfunc(%struct.lua_State* %11, i8* %12, i8* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %1
  store i32 1, i32* %2, align 4
  br label %27

; <label>:18:                                     ; preds = %1
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* %19)
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_rotate(%struct.lua_State* %20, i32 -2, i32 1)
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)
  %26 = call i8* @lua_pushstring(%struct.lua_State* %21, i8* %25)
  store i32 3, i32* %2, align 4
  br label %27

; <label>:27:                                     ; preds = %18, %17
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_searchpath(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i8* @luaL_checklstring(%struct.lua_State* %6, i32 1, i64* null)
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i8* @luaL_checklstring(%struct.lua_State* %8, i32 2, i64* null)
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call i8* @luaL_optlstring(%struct.lua_State* %10, i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i64* null)
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = call i8* @luaL_optlstring(%struct.lua_State* %12, i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i64* null)
  %14 = call i8* @searchpath(%struct.lua_State* %5, i8* %7, i8* %9, i8* %11, i8* %13)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %1
  store i32 1, i32* %2, align 4
  br label %21

; <label>:18:                                     ; preds = %1
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* %19)
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_rotate(%struct.lua_State* %20, i32 -2, i32 1)
  store i32 2, i32* %2, align 4
  br label %21

; <label>:21:                                     ; preds = %18, %17
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookforfunc(%struct.lua_State*, i8*, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (%struct.lua_State*)*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @checkclib(%struct.lua_State* %10, i8* %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %31

; <label>:15:                                     ; preds = %3
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 42
  %22 = zext i1 %21 to i32
  %23 = call i8* @lsys_load(%struct.lua_State* %16, i8* %17, i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %15
  store i32 1, i32* %4, align 4
  br label %49

; <label>:27:                                     ; preds = %15
  %28 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %8, align 8
  call void @addtoclib(%struct.lua_State* %28, i8* %29, i8* %30)
  br label %31

; <label>:31:                                     ; preds = %27, %3
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 42
  br i1 %35, label %36, label %38

; <label>:36:                                     ; preds = %31
  %37 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushboolean(%struct.lua_State* %37, i32 1)
  store i32 0, i32* %4, align 4
  br label %49

; <label>:38:                                     ; preds = %31
  %39 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 (%struct.lua_State*)* @lsys_sym(%struct.lua_State* %39, i8* %40, i8* %41)
  store i32 (%struct.lua_State*)* %42, i32 (%struct.lua_State*)** %9, align 8
  %43 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %9, align 8
  %44 = icmp eq i32 (%struct.lua_State*)* %43, null
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %38
  store i32 2, i32* %4, align 4
  br label %49

; <label>:46:                                     ; preds = %38
  %47 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %48 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %9, align 8
  call void @lua_pushcclosure(%struct.lua_State* %47, i32 (%struct.lua_State*)* %48, i32 0)
  store i32 0, i32* %4, align 4
  br label %49

; <label>:49:                                     ; preds = %46, %45, %36, %26
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare void @lua_pushnil(%struct.lua_State*) #1

declare void @lua_rotate(%struct.lua_State*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @checkclib(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i32 @lua_rawgetp(%struct.lua_State* %6, i32 -1001000, i8* bitcast (i32* @CLIBS to i8*))
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @lua_getfield(%struct.lua_State* %8, i32 -1, i8* %9)
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i8* @lua_touserdata(%struct.lua_State* %11, i32 -1)
  store i8* %12, i8** %5, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %13, i32 -3)
  %14 = load i8*, i8** %5, align 8
  ret i8* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lsys_load(%struct.lua_State*, i8*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = call i8* @lua_pushstring(%struct.lua_State* %9, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i32 0, i32 0))
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addtoclib(%struct.lua_State*, i8*, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = call i32 @lua_rawgetp(%struct.lua_State* %7, i32 -1001000, i8* bitcast (i32* @CLIBS to i8*))
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load i8*, i8** %6, align 8
  call void @lua_pushlightuserdata(%struct.lua_State* %9, i8* %10)
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_pushvalue(%struct.lua_State* %11, i32 -1)
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = load i8*, i8** %5, align 8
  call void @lua_setfield(%struct.lua_State* %12, i32 -3, i8* %13)
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %16 = call i64 @luaL_len(%struct.lua_State* %15, i32 -2)
  %17 = add nsw i64 %16, 1
  call void @lua_rawseti(%struct.lua_State* %14, i32 -2, i64 %17)
  %18 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* %18, i32 -2)
  ret void
}

declare void @lua_pushboolean(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 (%struct.lua_State*)* @lsys_sym(%struct.lua_State*, i8*, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = call i8* @lua_pushstring(%struct.lua_State* %9, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i32 0, i32 0))
  ret i32 (%struct.lua_State*)* null
}

declare i32 @lua_rawgetp(%struct.lua_State*, i32, i8*) #1

declare i32 @lua_getfield(%struct.lua_State*, i32, i8*) #1

declare void @lua_pushlightuserdata(%struct.lua_State*, i8*) #1

declare void @lua_rawseti(%struct.lua_State*, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @searchpath(%struct.lua_State*, i8*, i8*, i8*, i8*) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.luaL_Buffer, align 8
  %13 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  call void @luaL_buffinit(%struct.lua_State* %14, %struct.luaL_Buffer* %12)
  %15 = load i8*, i8** %10, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

; <label>:19:                                     ; preds = %5
  %20 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call i8* @luaL_gsub(%struct.lua_State* %20, i8* %21, i8* %22, i8* %23)
  store i8* %24, i8** %8, align 8
  br label %25

; <label>:25:                                     ; preds = %19, %5
  br label %26

; <label>:26:                                     ; preds = %44, %25
  %27 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i8* @pushnexttemplate(%struct.lua_State* %27, i8* %28)
  store i8* %29, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %50

; <label>:31:                                     ; preds = %26
  %32 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %33 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %34 = call i8* @lua_tolstring(%struct.lua_State* %33, i32 -1, i64* null)
  %35 = load i8*, i8** %8, align 8
  %36 = call i8* @luaL_gsub(%struct.lua_State* %32, i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* %35)
  store i8* %36, i8** %13, align 8
  %37 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  call void @lua_rotate(%struct.lua_State* %37, i32 -2, i32 -1)
  %38 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  call void @lua_settop(%struct.lua_State* %38, i32 -2)
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @readable(i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %31
  %43 = load i8*, i8** %13, align 8
  store i8* %43, i8** %6, align 8
  br label %51

; <label>:44:                                     ; preds = %31
  %45 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* %46)
  %48 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  call void @lua_rotate(%struct.lua_State* %48, i32 -2, i32 -1)
  %49 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  call void @lua_settop(%struct.lua_State* %49, i32 -2)
  call void @luaL_addvalue(%struct.luaL_Buffer* %12)
  br label %26

; <label>:50:                                     ; preds = %26
  call void @luaL_pushresult(%struct.luaL_Buffer* %12)
  store i8* null, i8** %6, align 8
  br label %51

; <label>:51:                                     ; preds = %50, %42
  %52 = load i8*, i8** %6, align 8
  ret i8* %52
}

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) #1

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) #1

declare i8* @luaL_gsub(%struct.lua_State*, i8*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pushnexttemplate(%struct.lua_State*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %7

; <label>:7:                                      ; preds = %14, %2
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %7
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %5, align 8
  br label %7

; <label>:17:                                     ; preds = %7
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %17
  store i8* null, i8** %3, align 8
  br label %45

; <label>:23:                                     ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), align 1
  %26 = sext i8 %25 to i32
  %27 = call i8* @strchr(i8* %24, i32 %26) #5
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %35

; <label>:30:                                     ; preds = %23
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strlen(i8* %32) #5
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8* %34, i8** %6, align 8
  br label %35

; <label>:35:                                     ; preds = %30, %23
  %36 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = call i8* @lua_pushlstring(%struct.lua_State* %36, i8* %37, i64 %42)
  %44 = load i8*, i8** %6, align 8
  store i8* %44, i8** %3, align 8
  br label %45

; <label>:45:                                     ; preds = %35, %22
  %46 = load i8*, i8** %3, align 8
  ret i8* %46
}

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readable(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct._IO_FILE* @fopen64(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  store %struct._IO_FILE* %6, %struct._IO_FILE** %4, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %8 = icmp eq %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %13

; <label>:10:                                     ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %12 = call i32 @fclose(%struct._IO_FILE* %11)
  store i32 1, i32* %2, align 4
  br label %13

; <label>:13:                                     ; preds = %10, %9
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #1

declare void @luaL_addvalue(%struct.luaL_Buffer*) #1

declare void @luaL_pushresult(%struct.luaL_Buffer*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) #1

declare %struct._IO_FILE* @fopen64(i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @searcher_preload(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaL_checklstring(%struct.lua_State* %4, i32 1, i64* null)
  store i8* %5, i8** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i32 @lua_getfield(%struct.lua_State* %6, i32 -1001000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0))
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @lua_getfield(%struct.lua_State* %8, i32 -1, i8* %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %1
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0), i8* %14)
  br label %16

; <label>:16:                                     ; preds = %12, %1
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @searcher_Lua(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i8* @luaL_checklstring(%struct.lua_State* %6, i32 1, i64* null)
  store i8* %7, i8** %5, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @findfile(%struct.lua_State* %8, i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %1
  store i32 1, i32* %2, align 4
  br label %23

; <label>:14:                                     ; preds = %1
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @luaL_loadfilex(%struct.lua_State* %16, i8* %17, i8* null)
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @checkload(%struct.lua_State* %15, i32 %20, i8* %21)
  store i32 %22, i32* %2, align 4
  br label %23

; <label>:23:                                     ; preds = %14, %13
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @searcher_C(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i8* @luaL_checklstring(%struct.lua_State* %6, i32 1, i64* null)
  store i8* %7, i8** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @findfile(%struct.lua_State* %8, i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %1
  store i32 1, i32* %2, align 4
  br label %24

; <label>:14:                                     ; preds = %1
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @loadfunc(%struct.lua_State* %16, i8* %17, i8* %18)
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @checkload(%struct.lua_State* %15, i32 %21, i8* %22)
  store i32 %23, i32* %2, align 4
  br label %24

; <label>:24:                                     ; preds = %14, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @searcher_Croot(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i8* @luaL_checklstring(%struct.lua_State* %8, i32 1, i64* null)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @strchr(i8* %10, i32 46) #5
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

; <label>:15:                                     ; preds = %1
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = call i8* @lua_pushlstring(%struct.lua_State* %16, i8* %17, i64 %22)
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = call i8* @lua_tolstring(%struct.lua_State* %25, i32 -1, i64* null)
  %27 = call i8* @findfile(%struct.lua_State* %24, i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %15
  store i32 1, i32* %2, align 4
  br label %53

; <label>:31:                                     ; preds = %15
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @loadfunc(%struct.lua_State* %32, i8* %33, i8* %34)
  store i32 %35, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

; <label>:37:                                     ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 2
  br i1 %39, label %40, label %44

; <label>:40:                                     ; preds = %37
  %41 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @checkload(%struct.lua_State* %41, i32 0, i8* %42)
  store i32 %43, i32* %2, align 4
  br label %53

; <label>:44:                                     ; preds = %37
  %45 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0), i8* %46, i8* %47)
  store i32 1, i32* %2, align 4
  br label %53

; <label>:49:                                     ; preds = %31
  %50 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i8* @lua_pushstring(%struct.lua_State* %50, i8* %51)
  store i32 2, i32* %2, align 4
  br label %53

; <label>:53:                                     ; preds = %49, %44, %40, %30, %14
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @findfile(%struct.lua_State*, i8*, i8*, i8*) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @lua_getfield(%struct.lua_State* %10, i32 -1001001, i8* %11)
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = call i8* @lua_tolstring(%struct.lua_State* %13, i32 -1, i64* null)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %4
  %18 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i8* %19)
  br label %21

; <label>:21:                                     ; preds = %17, %4
  %22 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i8* @searchpath(%struct.lua_State* %22, i8* %23, i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* %25)
  ret i8* %26
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkload(%struct.lua_State*, i32, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %3
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i8* @lua_pushstring(%struct.lua_State* %11, i8* %12)
  store i32 2, i32* %4, align 4
  br label %22

; <label>:14:                                     ; preds = %3
  %15 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %17 = call i8* @lua_tolstring(%struct.lua_State* %16, i32 1, i64* null)
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %20 = call i8* @lua_tolstring(%struct.lua_State* %19, i32 -1, i64* null)
  %21 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %15, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i32 0, i32 0), i8* %17, i8* %18, i8* %20)
  store i32 %21, i32* %4, align 4
  br label %22

; <label>:22:                                     ; preds = %14, %10
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare i32 @luaL_loadfilex(%struct.lua_State*, i8*, i8*) #1

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadfunc(%struct.lua_State*, i8*, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i8* @luaL_gsub(%struct.lua_State* %11, i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0))
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), align 1
  %16 = sext i8 %15 to i32
  %17 = call i8* @strchr(i8* %14, i32 %16) #5
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %43

; <label>:20:                                     ; preds = %3
  %21 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = call i8* @lua_pushlstring(%struct.lua_State* %21, i8* %22, i64 %27)
  store i8* %28, i8** %8, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i8* %30)
  store i8* %31, i8** %8, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @lookforfunc(%struct.lua_State* %32, i8* %33, i8* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 2
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %20
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %51

; <label>:40:                                     ; preds = %20
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8* %42, i8** %7, align 8
  br label %43

; <label>:43:                                     ; preds = %40, %3
  %44 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i8* %45)
  store i8* %46, i8** %8, align 8
  %47 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @lookforfunc(%struct.lua_State* %47, i8* %48, i8* %49)
  store i32 %50, i32* %4, align 4
  br label %51

; <label>:51:                                     ; preds = %43, %38
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noenv(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_getfield(%struct.lua_State* %4, i32 -1001000, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0))
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i32 @lua_toboolean(%struct.lua_State* %6, i32 -1)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* %8, i32 -2)
  %9 = load i32, i32* %3, align 4
  ret i32 %9
}

declare i32 @lua_toboolean(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_require(%struct.lua_State*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %5, i32 1, i64* null)
  store i8* %6, i8** %4, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %7, i32 1)
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i32 @lua_getfield(%struct.lua_State* %8, i32 -1001000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0))
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @lua_getfield(%struct.lua_State* %10, i32 2, i8* %11)
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = call i32 @lua_toboolean(%struct.lua_State* %13, i32 -1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %1
  store i32 1, i32* %2, align 4
  br label %43

; <label>:17:                                     ; preds = %1
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %18, i32 -2)
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = load i8*, i8** %4, align 8
  call void @findloader(%struct.lua_State* %19, i8* %20)
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @lua_pushstring(%struct.lua_State* %21, i8* %22)
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_rotate(%struct.lua_State* %24, i32 -2, i32 1)
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_callk(%struct.lua_State* %25, i32 2, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null)
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = call i32 @lua_type(%struct.lua_State* %26, i32 -1)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

; <label>:29:                                     ; preds = %17
  %30 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %31 = load i8*, i8** %4, align 8
  call void @lua_setfield(%struct.lua_State* %30, i32 2, i8* %31)
  br label %32

; <label>:32:                                     ; preds = %29, %17
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @lua_getfield(%struct.lua_State* %33, i32 2, i8* %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

; <label>:37:                                     ; preds = %32
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushboolean(%struct.lua_State* %38, i32 1)
  %39 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* %39, i32 -1)
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %41 = load i8*, i8** %4, align 8
  call void @lua_setfield(%struct.lua_State* %40, i32 2, i8* %41)
  br label %42

; <label>:42:                                     ; preds = %37, %32
  store i32 1, i32* %2, align 4
  br label %43

; <label>:43:                                     ; preds = %42, %16
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @findloader(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.luaL_Buffer, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_buffinit(%struct.lua_State* %7, %struct.luaL_Buffer* %6)
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i32 @lua_getfield(%struct.lua_State* %8, i32 -1001001, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0))
  %10 = icmp ne i32 %9, 5
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %2
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %11, %2
  store i32 1, i32* %5, align 4
  br label %15

; <label>:15:                                     ; preds = %47, %14
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = call i32 @lua_rawgeti(%struct.lua_State* %16, i32 3, i64 %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %15
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %22, i32 -2)
  call void @luaL_pushresult(%struct.luaL_Buffer* %6)
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = call i8* @lua_tolstring(%struct.lua_State* %25, i32 -1, i64* null)
  %27 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), i8* %24, i8* %26)
  br label %28

; <label>:28:                                     ; preds = %21, %15
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i8* @lua_pushstring(%struct.lua_State* %29, i8* %30)
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_callk(%struct.lua_State* %32, i32 1, i32 2, i64 0, i32 (%struct.lua_State*, i32, i64)* null)
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %34 = call i32 @lua_type(%struct.lua_State* %33, i32 -2)
  %35 = icmp eq i32 %34, 6
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %28
  ret void

; <label>:37:                                     ; preds = %28
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %39 = call i32 @lua_isstring(%struct.lua_State* %38, i32 -2)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %37
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %42, i32 -2)
  call void @luaL_addvalue(%struct.luaL_Buffer* %6)
  br label %45

; <label>:43:                                     ; preds = %37
  %44 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %44, i32 -3)
  br label %45

; <label>:45:                                     ; preds = %43, %41
  br label %46

; <label>:46:                                     ; preds = %45
  br label %47

; <label>:47:                                     ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %15
}

declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) #1

declare i32 @lua_type(%struct.lua_State*, i32) #1

declare i32 @lua_isstring(%struct.lua_State*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
