; ModuleID = 'lauxlib.c'
source_filename = "lauxlib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.CallInfo = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.luaL_Buffer = type { i8*, i64, i64, %struct.lua_State*, %union.anon }
%union.anon = type { double, [1016 x i8] }
%struct.LoadF = type { i32, %struct._IO_FILE*, [8192 x i8] }
%struct.LoadS = type { i8*, i64 }
%struct.UBox = type { i8*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"stack traceback:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\0A\09...\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Slnt\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\0A\09%s:\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"\0A\09(...tail calls...)\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"bad argument #%d (%s)\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"calling '%s' on bad self (%s)\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"bad argument #%d to '%s' (%s)\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"__name\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"light userdata\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s expected, got %s\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"Sl\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"%s:%d: \00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"invalid option '%s'\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"stack overflow (%s)\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"stack overflow\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"value expected\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"=stdin\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"reopen\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"object length is not an integer\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"'__tostring' must return a string\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"%I\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"%s: %p\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"too many upvalues\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1
@.str.45 = private unnamed_addr constant [49 x i8] c"core and library have incompatible numeric types\00", align 1
@.str.46 = private unnamed_addr constant [54 x i8] c"version mismatch: app. needs %f, Lua core provides %f\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"function '%s'\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"%s '%s'\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"main chunk\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"function <%s:%d>\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"_G.\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"number has no integer representation\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"buffer too large\00", align 1
@.str.56 = private unnamed_addr constant [40 x i8] c"not enough memory for buffer allocation\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"_UBOX*\00", align 1
@boxmt = internal constant [3 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 (%struct.lua_State*)* @boxgc }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 (%struct.lua_State*)* @boxgc }, %struct.luaL_Reg zeroinitializer], align 16
@.str.58 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"__close\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"cannot %s %s: %s\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"\EF\BB\BF\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.62 = private unnamed_addr constant [50 x i8] c"PANIC: unprotected error in call to Lua API (%s)\0A\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"Lua warning: \00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @luaL_traceback(%struct.lua_State*, %struct.lua_State*, i8*, i32) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lua_Debug, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.lua_State* %1, %struct.lua_State** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = call i32 @lua_gettop(%struct.lua_State* %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %16 = call i32 @lastlevel(%struct.lua_State* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %17, %18
  %20 = icmp sgt i32 %19, 21
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 10, i32 -1
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %4
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %27)
  br label %29

; <label>:29:                                     ; preds = %25, %4
  %30 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaL_checkstack(%struct.lua_State* %30, i32 10, i8* null)
  %31 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %32 = call i8* @lua_pushstring(%struct.lua_State* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %33

; <label>:33:                                     ; preds = %80, %29
  %34 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  %37 = call i32 @lua_getstack(%struct.lua_State* %34, i32 %35, %struct.lua_Debug* %9)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %81

; <label>:39:                                     ; preds = %33
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %12, align 4
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %43, label %49

; <label>:43:                                     ; preds = %39
  %44 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %45 = call i8* @lua_pushstring(%struct.lua_State* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %46 = load i32, i32* %11, align 4
  %47 = sub nsw i32 %46, 11
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %80

; <label>:49:                                     ; preds = %39
  %50 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %51 = call i32 @lua_getinfo(%struct.lua_State* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct.lua_Debug* %9)
  %52 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %53 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %9, i32 0, i32 15
  %54 = getelementptr inbounds [60 x i8], [60 x i8]* %53, i32 0, i32 0
  %55 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* %54)
  %56 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %9, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %64

; <label>:59:                                     ; preds = %49
  %60 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %61 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %9, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %62)
  br label %64

; <label>:64:                                     ; preds = %59, %49
  %65 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %66 = call i8* @lua_pushstring(%struct.lua_State* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0))
  %67 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @pushfuncname(%struct.lua_State* %67, %struct.lua_Debug* %9)
  %68 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %9, i32 0, i32 12
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %74

; <label>:71:                                     ; preds = %64
  %72 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %73 = call i8* @lua_pushstring(%struct.lua_State* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  br label %74

; <label>:74:                                     ; preds = %71, %64
  %75 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %76 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %77 = call i32 @lua_gettop(%struct.lua_State* %76)
  %78 = load i32, i32* %10, align 4
  %79 = sub nsw i32 %77, %78
  call void @lua_concat(%struct.lua_State* %75, i32 %79)
  br label %80

; <label>:80:                                     ; preds = %74, %43
  br label %33

; <label>:81:                                     ; preds = %33
  %82 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %83 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %84 = call i32 @lua_gettop(%struct.lua_State* %83)
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %84, %85
  call void @lua_concat(%struct.lua_State* %82, i32 %86)
  ret void
}

declare i32 @lua_gettop(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lastlevel(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.lua_Debug, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %12, %1
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @lua_getstack(%struct.lua_State* %8, i32 %9, %struct.lua_Debug* %3)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %7
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %14, 2
  store i32 %15, i32* %5, align 4
  br label %7

; <label>:16:                                     ; preds = %7
  br label %17

; <label>:17:                                     ; preds = %35, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %36

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %22, %23
  %25 = sdiv i32 %24, 2
  store i32 %25, i32* %6, align 4
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @lua_getstack(%struct.lua_State* %26, i32 %27, %struct.lua_Debug* %3)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %35

; <label>:33:                                     ; preds = %21
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %5, align 4
  br label %35

; <label>:35:                                     ; preds = %33, %30
  br label %17

; <label>:36:                                     ; preds = %17
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, 1
  ret i32 %38
}

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @luaL_checkstack(%struct.lua_State*, i32, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @lua_checkstack(%struct.lua_State* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %22, label %11

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %11
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* %16)
  br label %21

; <label>:18:                                     ; preds = %11
  %19 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %20 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0))
  br label %21

; <label>:21:                                     ; preds = %18, %14
  br label %22

; <label>:22:                                     ; preds = %21, %3
  ret void
}

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #1

declare i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) #1

declare i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushfuncname(%struct.lua_State*, %struct.lua_Debug*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_Debug*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.lua_Debug* %1, %struct.lua_Debug** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_Debug*, %struct.lua_Debug** %4, align 8
  %7 = call i32 @pushglobalfuncname(%struct.lua_State* %5, %struct.lua_Debug* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

; <label>:9:                                      ; preds = %2
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i8* @lua_tolstring(%struct.lua_State* %11, i32 -1, i64* null)
  %13 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i8* %12)
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_rotate(%struct.lua_State* %14, i32 -2, i32 -1)
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %15, i32 -2)
  br label %64

; <label>:16:                                     ; preds = %2
  %17 = load %struct.lua_Debug*, %struct.lua_Debug** %4, align 8
  %18 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

; <label>:23:                                     ; preds = %16
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = load %struct.lua_Debug*, %struct.lua_Debug** %4, align 8
  %26 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.lua_Debug*, %struct.lua_Debug** %4, align 8
  %29 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* %27, i8* %30)
  br label %63

; <label>:32:                                     ; preds = %16
  %33 = load %struct.lua_Debug*, %struct.lua_Debug** %4, align 8
  %34 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 109
  br i1 %38, label %39, label %42

; <label>:39:                                     ; preds = %32
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %41 = call i8* @lua_pushstring(%struct.lua_State* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0))
  br label %62

; <label>:42:                                     ; preds = %32
  %43 = load %struct.lua_Debug*, %struct.lua_Debug** %4, align 8
  %44 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 67
  br i1 %48, label %49, label %58

; <label>:49:                                     ; preds = %42
  %50 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %51 = load %struct.lua_Debug*, %struct.lua_Debug** %4, align 8
  %52 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %51, i32 0, i32 15
  %53 = getelementptr inbounds [60 x i8], [60 x i8]* %52, i32 0, i32 0
  %54 = load %struct.lua_Debug*, %struct.lua_Debug** %4, align 8
  %55 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), i8* %53, i32 %56)
  br label %61

; <label>:58:                                     ; preds = %42
  %59 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %60 = call i8* @lua_pushstring(%struct.lua_State* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %61

; <label>:61:                                     ; preds = %58, %49
  br label %62

; <label>:62:                                     ; preds = %61, %39
  br label %63

; <label>:63:                                     ; preds = %62, %23
  br label %64

; <label>:64:                                     ; preds = %63, %9
  ret void
}

declare void @lua_concat(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lua_Debug, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %10 = call i32 @lua_getstack(%struct.lua_State* %9, i32 0, %struct.lua_Debug* %8)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

; <label>:12:                                     ; preds = %3
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 %14, i8* %15)
  store i32 %16, i32* %4, align 4
  br label %58

; <label>:17:                                     ; preds = %3
  %18 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %19 = call i32 @lua_getinfo(%struct.lua_State* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct.lua_Debug* %8)
  %20 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %8, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

; <label>:24:                                     ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %24
  %30 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %31 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %8, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0), i8* %32, i8* %33)
  store i32 %34, i32* %4, align 4
  br label %58

; <label>:35:                                     ; preds = %24
  br label %36

; <label>:36:                                     ; preds = %35, %17
  %37 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %8, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %51

; <label>:40:                                     ; preds = %36
  %41 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %42 = call i32 @pushglobalfuncname(%struct.lua_State* %41, %struct.lua_Debug* %8)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %40
  %45 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %46 = call i8* @lua_tolstring(%struct.lua_State* %45, i32 -1, i64* null)
  br label %48

; <label>:47:                                     ; preds = %40
  br label %48

; <label>:48:                                     ; preds = %47, %44
  %49 = phi i8* [ %46, %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), %47 ]
  %50 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %8, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  br label %51

; <label>:51:                                     ; preds = %48, %36
  %52 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %8, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i32 %53, i8* %55, i8* %56)
  store i32 %57, i32* %4, align 4
  br label %58

; <label>:58:                                     ; preds = %51, %29, %12
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaL_error(%struct.lua_State*, i8*, ...) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_where(%struct.lua_State* %8, i32 1)
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0
  %12 = call i8* @lua_pushvfstring(%struct.lua_State* %9, i8* %10, %struct.__va_list_tag* %11)
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0
  %14 = bitcast %struct.__va_list_tag* %13 to i8*
  call void @llvm.va_end(i8* %14)
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_concat(%struct.lua_State* %15, i32 2)
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = call i32 @lua_error(%struct.lua_State* %16)
  ret i32 %17
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pushglobalfuncname(%struct.lua_State*, %struct.lua_Debug*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_Debug*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_Debug* %1, %struct.lua_Debug** %5, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = call i32 @lua_gettop(%struct.lua_State* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load %struct.lua_Debug*, %struct.lua_Debug** %5, align 8
  %12 = call i32 @lua_getinfo(%struct.lua_State* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), %struct.lua_Debug* %11)
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = call i32 @lua_getfield(%struct.lua_State* %13, i32 -1001000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0))
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 @findfield(%struct.lua_State* %15, i32 %17, i32 2)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

; <label>:20:                                     ; preds = %2
  %21 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %22 = call i8* @lua_tolstring(%struct.lua_State* %21, i32 -1, i64* null)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i64 3) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

; <label>:26:                                     ; preds = %20
  %27 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3
  %30 = call i8* @lua_pushstring(%struct.lua_State* %27, i8* %29)
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_rotate(%struct.lua_State* %31, i32 -2, i32 -1)
  %32 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* %32, i32 -2)
  br label %33

; <label>:33:                                     ; preds = %26, %20
  %34 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  call void @lua_copy(%struct.lua_State* %34, i32 -1, i32 %36)
  %37 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* %37, i32 -3)
  store i32 1, i32* %3, align 4
  br label %41

; <label>:38:                                     ; preds = %2
  %39 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %40 = load i32, i32* %6, align 4
  call void @lua_settop(%struct.lua_State* %39, i32 %40)
  store i32 0, i32* %3, align 4
  br label %41

; <label>:41:                                     ; preds = %38, %33
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare i8* @lua_tolstring(%struct.lua_State*, i32, i64*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaL_typeerror(%struct.lua_State*, i32, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @luaL_getmetafield(%struct.lua_State* %9, i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %3
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = call i8* @lua_tolstring(%struct.lua_State* %14, i32 -1, i64* null)
  store i8* %15, i8** %8, align 8
  br label %29

; <label>:16:                                     ; preds = %3
  %17 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @lua_type(%struct.lua_State* %17, i32 %18)
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %16
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8** %8, align 8
  br label %28

; <label>:22:                                     ; preds = %16
  %23 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @lua_type(%struct.lua_State* %24, i32 %25)
  %27 = call i8* @lua_typename(%struct.lua_State* %23, i32 %26)
  store i8* %27, i8** %8, align 8
  br label %28

; <label>:28:                                     ; preds = %22, %21
  br label %29

; <label>:29:                                     ; preds = %28, %13
  %30 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8* %31, i8* %32)
  store i8* %33, i8** %7, align 8
  %34 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @luaL_argerror(%struct.lua_State* %34, i32 %35, i8* %36)
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaL_getmetafield(%struct.lua_State*, i32, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @lua_getmetatable(%struct.lua_State* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

; <label>:14:                                     ; preds = %3
  %15 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i8* @lua_pushstring(%struct.lua_State* %15, i8* %16)
  %18 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %19 = call i32 @lua_rawget(%struct.lua_State* %18, i32 -2)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %14
  %23 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %23, i32 -3)
  br label %27

; <label>:24:                                     ; preds = %14
  %25 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_rotate(%struct.lua_State* %25, i32 -2, i32 -1)
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %26, i32 -2)
  br label %27

; <label>:27:                                     ; preds = %24, %22
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %29

; <label>:29:                                     ; preds = %27, %13
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare i32 @lua_type(%struct.lua_State*, i32) #1

declare i8* @lua_typename(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @luaL_where(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_Debug, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @lua_getstack(%struct.lua_State* %6, i32 %7, %struct.lua_Debug* %5)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

; <label>:10:                                     ; preds = %2
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i32 @lua_getinfo(%struct.lua_State* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), %struct.lua_Debug* %5)
  %13 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %5, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %23

; <label>:16:                                     ; preds = %10
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %5, i32 0, i32 15
  %19 = getelementptr inbounds [60 x i8], [60 x i8]* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %5, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* %19, i32 %21)
  br label %27

; <label>:23:                                     ; preds = %10
  br label %24

; <label>:24:                                     ; preds = %23, %2
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0))
  br label %27

; <label>:27:                                     ; preds = %24, %16
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare i8* @lua_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

declare i32 @lua_error(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaL_fileresult(%struct.lua_State*, i32, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = call i32* @__errno_location() #8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %3
  %14 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushboolean(%struct.lua_State* %14, i32 1)
  store i32 1, i32* %4, align 4
  br label %34

; <label>:15:                                     ; preds = %3
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushnil(%struct.lua_State* %16)
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %25

; <label>:19:                                     ; preds = %15
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @strerror(i32 %22) #3
  %24 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* %21, i8* %23)
  br label %30

; <label>:25:                                     ; preds = %15
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i8* @strerror(i32 %27) #3
  %29 = call i8* @lua_pushstring(%struct.lua_State* %26, i8* %28)
  br label %30

; <label>:30:                                     ; preds = %25, %19
  %31 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  call void @lua_pushinteger(%struct.lua_State* %31, i64 %33)
  store i32 3, i32* %4, align 4
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare void @lua_pushboolean(%struct.lua_State*, i32) #1

declare void @lua_pushnil(%struct.lua_State*) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #5

declare void @lua_pushinteger(%struct.lua_State*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaL_execresult(%struct.lua_State*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %2
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = call i32 @luaL_fileresult(%struct.lua_State* %10, i32 0, i8* null)
  store i32 %11, i32* %3, align 4
  br label %31

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 101
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %17
  %21 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_pushboolean(%struct.lua_State* %21, i32 1)
  br label %24

; <label>:22:                                     ; preds = %17, %12
  %23 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_pushnil(%struct.lua_State* %23)
  br label %24

; <label>:24:                                     ; preds = %22, %20
  %25 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @lua_pushstring(%struct.lua_State* %25, i8* %26)
  %28 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  call void @lua_pushinteger(%struct.lua_State* %28, i64 %30)
  store i32 3, i32* %3, align 4
  br label %31

; <label>:31:                                     ; preds = %24, %9
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaL_newmetatable(%struct.lua_State*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @lua_getfield(%struct.lua_State* %6, i32 -1001000, i8* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

; <label>:11:                                     ; preds = %2
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* %12, i32 -2)
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_createtable(%struct.lua_State* %13, i32 0, i32 2)
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @lua_pushstring(%struct.lua_State* %14, i8* %15)
  %17 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_setfield(%struct.lua_State* %17, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  %18 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_pushvalue(%struct.lua_State* %18, i32 -1)
  %19 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %20 = load i8*, i8** %5, align 8
  call void @lua_setfield(%struct.lua_State* %19, i32 -1001000, i8* %20)
  store i32 1, i32* %3, align 4
  br label %21

; <label>:21:                                     ; preds = %11, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare i32 @lua_getfield(%struct.lua_State*, i32, i8*) #1

declare void @lua_settop(%struct.lua_State*, i32) #1

declare void @lua_createtable(%struct.lua_State*, i32, i32) #1

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #1

declare void @lua_pushvalue(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @luaL_setmetatable(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @lua_getfield(%struct.lua_State* %5, i32 -1001000, i8* %6)
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i32 @lua_setmetatable(%struct.lua_State* %8, i32 -2)
  ret void
}

declare i32 @lua_setmetatable(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @luaL_testudata(%struct.lua_State*, i32, i8*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i8* @lua_touserdata(%struct.lua_State* %9, i32 %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %31

; <label>:14:                                     ; preds = %3
  %15 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @lua_getmetatable(%struct.lua_State* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

; <label>:19:                                     ; preds = %14
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @lua_getfield(%struct.lua_State* %20, i32 -1001000, i8* %21)
  %23 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %24 = call i32 @lua_rawequal(%struct.lua_State* %23, i32 -1, i32 -2)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

; <label>:26:                                     ; preds = %19
  store i8* null, i8** %8, align 8
  br label %27

; <label>:27:                                     ; preds = %26, %19
  %28 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %28, i32 -3)
  %29 = load i8*, i8** %8, align 8
  store i8* %29, i8** %4, align 8
  br label %32

; <label>:30:                                     ; preds = %14
  br label %31

; <label>:31:                                     ; preds = %30, %3
  store i8* null, i8** %4, align 8
  br label %32

; <label>:32:                                     ; preds = %31, %27
  %33 = load i8*, i8** %4, align 8
  ret i8* %33
}

declare i8* @lua_touserdata(%struct.lua_State*, i32) #1

declare i32 @lua_getmetatable(%struct.lua_State*, i32) #1

declare i32 @lua_rawequal(%struct.lua_State*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @luaL_checkudata(%struct.lua_State*, i32, i8*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i8* @luaL_testudata(%struct.lua_State* %8, i32 %9, i8* %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %20, label %14

; <label>:14:                                     ; preds = %3
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @luaL_typeerror(%struct.lua_State* %15, i32 %16, i8* %17)
  %19 = icmp ne i32 %18, 0
  br label %20

; <label>:20:                                     ; preds = %14, %3
  %21 = phi i1 [ true, %3 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = load i8*, i8** %7, align 8
  ret i8* %23
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %4
  %15 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i8* @luaL_optlstring(%struct.lua_State* %15, i32 %16, i8* %17, i64* null)
  br label %23

; <label>:19:                                     ; preds = %4
  %20 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @luaL_checklstring(%struct.lua_State* %20, i32 %21, i64* null)
  br label %23

; <label>:23:                                     ; preds = %19, %14
  %24 = phi i8* [ %18, %14 ], [ %22, %19 ]
  store i8* %24, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %25

; <label>:25:                                     ; preds = %44, %23
  %26 = load i8**, i8*** %9, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %47

; <label>:32:                                     ; preds = %25
  %33 = load i8**, i8*** %9, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @strcmp(i8* %37, i8* %38) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %32
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %54

; <label>:43:                                     ; preds = %32
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %25

; <label>:47:                                     ; preds = %25
  %48 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* %51)
  %53 = call i32 @luaL_argerror(%struct.lua_State* %48, i32 %49, i8* %52)
  store i32 %53, i32* %5, align 4
  br label %54

; <label>:54:                                     ; preds = %47, %41
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i64*) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @lua_type(%struct.lua_State* %10, i32 %11)
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %29

; <label>:14:                                     ; preds = %4
  %15 = load i64*, i64** %9, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %27

; <label>:17:                                     ; preds = %14
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %17
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strlen(i8* %21) #7
  br label %24

; <label>:23:                                     ; preds = %17
  br label %24

; <label>:24:                                     ; preds = %23, %20
  %25 = phi i64 [ %22, %20 ], [ 0, %23 ]
  %26 = load i64*, i64** %9, align 8
  store i64 %25, i64* %26, align 8
  br label %27

; <label>:27:                                     ; preds = %24, %14
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** %5, align 8
  br label %34

; <label>:29:                                     ; preds = %4
  %30 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i64*, i64** %9, align 8
  %33 = call i8* @luaL_checklstring(%struct.lua_State* %30, i32 %31, i64* %32)
  store i8* %33, i8** %5, align 8
  br label %34

; <label>:34:                                     ; preds = %29, %27
  %35 = load i8*, i8** %5, align 8
  ret i8* %35
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i64*, i64** %6, align 8
  %11 = call i8* @lua_tolstring(%struct.lua_State* %8, i32 %9, i64* %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

; <label>:14:                                     ; preds = %3
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %16 = load i32, i32* %5, align 4
  call void @tag_error(%struct.lua_State* %15, i32 %16, i32 4)
  br label %17

; <label>:17:                                     ; preds = %14, %3
  %18 = load i8*, i8** %7, align 8
  ret i8* %18
}

declare i32 @lua_checkstack(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @luaL_checktype(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @lua_type(%struct.lua_State* %7, i32 %8)
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %3
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  call void @tag_error(%struct.lua_State* %13, i32 %14, i32 %15)
  br label %16

; <label>:16:                                     ; preds = %12, %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tag_error(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i8* @lua_typename(%struct.lua_State* %9, i32 %10)
  %12 = call i32 @luaL_typeerror(%struct.lua_State* %7, i32 %8, i8* %11)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @luaL_checkany(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @lua_type(%struct.lua_State* %5, i32 %6)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %2
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @luaL_argerror(%struct.lua_State* %10, i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %9, %2
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define double @luaL_checknumber(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call double @lua_tonumberx(%struct.lua_State* %7, i32 %8, i32* %5)
  store double %9, double* %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %2
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = load i32, i32* %4, align 4
  call void @tag_error(%struct.lua_State* %13, i32 %14, i32 3)
  br label %15

; <label>:15:                                     ; preds = %12, %2
  %16 = load double, double* %6, align 8
  ret double %16
}

declare double @lua_tonumberx(%struct.lua_State*, i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define double @luaL_optnumber(%struct.lua_State*, i32, double) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @lua_type(%struct.lua_State* %7, i32 %8)
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %3
  %12 = load double, double* %6, align 8
  br label %17

; <label>:13:                                     ; preds = %3
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call double @luaL_checknumber(%struct.lua_State* %14, i32 %15)
  br label %17

; <label>:17:                                     ; preds = %13, %11
  %18 = phi double [ %12, %11 ], [ %16, %13 ]
  ret double %18
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @luaL_checkinteger(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @lua_tointegerx(%struct.lua_State* %7, i32 %8, i32* %5)
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %2
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = load i32, i32* %4, align 4
  call void @interror(%struct.lua_State* %13, i32 %14)
  br label %15

; <label>:15:                                     ; preds = %12, %2
  %16 = load i64, i64* %6, align 8
  ret i64 %16
}

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interror(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @lua_isnumber(%struct.lua_State* %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %2
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @luaL_argerror(%struct.lua_State* %10, i32 %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.54, i32 0, i32 0))
  br label %16

; <label>:13:                                     ; preds = %2
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = load i32, i32* %4, align 4
  call void @tag_error(%struct.lua_State* %14, i32 %15, i32 3)
  br label %16

; <label>:16:                                     ; preds = %13, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @lua_type(%struct.lua_State* %7, i32 %8)
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %3
  %12 = load i64, i64* %6, align 8
  br label %17

; <label>:13:                                     ; preds = %3
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @luaL_checkinteger(%struct.lua_State* %14, i32 %15)
  br label %17

; <label>:17:                                     ; preds = %13, %11
  %18 = phi i64 [ %12, %11 ], [ %16, %13 ]
  ret i64 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i64) #0 {
  %3 = alloca %struct.luaL_Buffer*, align 8
  %4 = alloca i64, align 8
  store %struct.luaL_Buffer* %0, %struct.luaL_Buffer** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @prepbuffsize(%struct.luaL_Buffer* %5, i64 %6, i32 -1)
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @prepbuffsize(%struct.luaL_Buffer*, i64, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.luaL_Buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lua_State*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.luaL_Buffer* %0, %struct.luaL_Buffer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %12 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %15 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %13, %16
  %18 = load i64, i64* %6, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %3
  %21 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %22 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %25 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8* %27, i8** %4, align 8
  br label %80

; <label>:28:                                     ; preds = %3
  %29 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %30 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %29, i32 0, i32 3
  %31 = load %struct.lua_State*, %struct.lua_State** %30, align 8
  store %struct.lua_State* %31, %struct.lua_State** %8, align 8
  %32 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @newbuffsize(%struct.luaL_Buffer* %32, i64 %33)
  store i64 %34, i64* %10, align 8
  %35 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %36 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %39 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %38, i32 0, i32 4
  %40 = bitcast %union.anon* %39 to [1024 x i8]*
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %40, i32 0, i32 0
  %42 = icmp ne i8* %37, %41
  br i1 %42, label %43, label %48

; <label>:43:                                     ; preds = %28
  %44 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i64, i64* %10, align 8
  %47 = call i8* @resizebox(%struct.lua_State* %44, i32 %45, i64 %46)
  store i8* %47, i8** %9, align 8
  br label %68

; <label>:48:                                     ; preds = %28
  %49 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  call void @lua_pushnil(%struct.lua_State* %49)
  %50 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  call void @newbox(%struct.lua_State* %50)
  %51 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 1
  call void @lua_rotate(%struct.lua_State* %51, i32 %53, i32 2)
  %54 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %55 = load i32, i32* %7, align 4
  call void @lua_toclose(%struct.lua_State* %54, i32 %55)
  %56 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i64, i64* %10, align 8
  %59 = call i8* @resizebox(%struct.lua_State* %56, i32 %57, i64 %58)
  store i8* %59, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %62 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %65 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = mul i64 %66, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %63, i64 %67, i32 1, i1 false)
  br label %68

; <label>:68:                                     ; preds = %48, %43
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %71 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %74 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %77 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8* %79, i8** %4, align 8
  br label %80

; <label>:80:                                     ; preds = %68, %20
  %81 = load i8*, i8** %4, align 8
  ret i8* %81
}

; Function Attrs: noinline nounwind optnone uwtable
define void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i64) #0 {
  %4 = alloca %struct.luaL_Buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.luaL_Buffer* %0, %struct.luaL_Buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %23

; <label>:10:                                     ; preds = %3
  %11 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i8* @prepbuffsize(%struct.luaL_Buffer* %11, i64 %12, i32 -1)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = mul i64 %16, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 %17, i32 1, i1 false)
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %20 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, %18
  store i64 %22, i64* %20, align 8
  br label %23

; <label>:23:                                     ; preds = %10, %3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: noinline nounwind optnone uwtable
define void @luaL_addstring(%struct.luaL_Buffer*, i8*) #0 {
  %3 = alloca %struct.luaL_Buffer*, align 8
  %4 = alloca i8*, align 8
  store %struct.luaL_Buffer* %0, %struct.luaL_Buffer** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @strlen(i8* %7) #7
  call void @luaL_addlstring(%struct.luaL_Buffer* %5, i8* %6, i64 %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @luaL_pushresult(%struct.luaL_Buffer*) #0 {
  %2 = alloca %struct.luaL_Buffer*, align 8
  %3 = alloca %struct.lua_State*, align 8
  store %struct.luaL_Buffer* %0, %struct.luaL_Buffer** %2, align 8
  %4 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %2, align 8
  %5 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i32 0, i32 3
  %6 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  store %struct.lua_State* %6, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %2, align 8
  %9 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %2, align 8
  %12 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = call i8* @lua_pushlstring(%struct.lua_State* %7, i8* %10, i64 %13)
  %15 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %2, align 8
  %16 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %2, align 8
  %19 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %18, i32 0, i32 4
  %20 = bitcast %union.anon* %19 to [1024 x i8]*
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i32 0, i32 0
  %22 = icmp ne i8* %17, %21
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %1
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_copy(%struct.lua_State* %24, i32 -1, i32 -3)
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %25, i32 -3)
  br label %26

; <label>:26:                                     ; preds = %23, %1
  ret void
}

declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i64) #1

declare void @lua_copy(%struct.lua_State*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @luaL_pushresultsize(%struct.luaL_Buffer*, i64) #0 {
  %3 = alloca %struct.luaL_Buffer*, align 8
  %4 = alloca i64, align 8
  store %struct.luaL_Buffer* %0, %struct.luaL_Buffer** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %3, align 8
  %7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %8, %5
  store i64 %9, i64* %7, align 8
  %10 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %3, align 8
  call void @luaL_pushresult(%struct.luaL_Buffer* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @luaL_addvalue(%struct.luaL_Buffer*) #0 {
  %2 = alloca %struct.luaL_Buffer*, align 8
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.luaL_Buffer* %0, %struct.luaL_Buffer** %2, align 8
  %7 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %2, align 8
  %8 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i32 0, i32 3
  %9 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  store %struct.lua_State* %9, %struct.lua_State** %3, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call i8* @lua_tolstring(%struct.lua_State* %10, i32 -1, i64* %4)
  store i8* %11, i8** %5, align 8
  %12 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %2, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i8* @prepbuffsize(%struct.luaL_Buffer* %12, i64 %13, i32 -2)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = mul i64 %17, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 %18, i32 1, i1 false)
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %2, align 8
  %21 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, %19
  store i64 %23, i64* %21, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %24, i32 -2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.luaL_Buffer*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.luaL_Buffer* %1, %struct.luaL_Buffer** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %7 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %6, i32 0, i32 3
  store %struct.lua_State* %5, %struct.lua_State** %7, align 8
  %8 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %9 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %8, i32 0, i32 4
  %10 = bitcast %union.anon* %9 to [1024 x i8]*
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i32 0, i32 0
  %12 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %13 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %15 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %17 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %16, i32 0, i32 1
  store i64 1024, i64* %17, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @luaL_buffinitsize(%struct.lua_State*, %struct.luaL_Buffer*, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.luaL_Buffer*, align 8
  %6 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.luaL_Buffer* %1, %struct.luaL_Buffer** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  call void @luaL_buffinit(%struct.lua_State* %7, %struct.luaL_Buffer* %8)
  %9 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i8* @prepbuffsize(%struct.luaL_Buffer* %9, i64 %10, i32 -1)
  ret i8* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaL_ref(%struct.lua_State*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = call i32 @lua_type(%struct.lua_State* %7, i32 -1)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %2
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* %11, i32 -2)
  store i32 -1, i32* %3, align 4
  br label %45

; <label>:12:                                     ; preds = %2
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @lua_absindex(%struct.lua_State* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @lua_rawgeti(%struct.lua_State* %16, i32 %17, i64 0)
  %19 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %20 = call i64 @lua_tointegerx(%struct.lua_State* %19, i32 -1, i32* null)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* %22, i32 -2)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

; <label>:25:                                     ; preds = %12
  %26 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = call i32 @lua_rawgeti(%struct.lua_State* %26, i32 %27, i64 %29)
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %32 = load i32, i32* %5, align 4
  call void @lua_rawseti(%struct.lua_State* %31, i32 %32, i64 0)
  br label %39

; <label>:33:                                     ; preds = %12
  %34 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @lua_rawlen(%struct.lua_State* %34, i32 %35)
  %37 = trunc i64 %36 to i32
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %39

; <label>:39:                                     ; preds = %33, %25
  %40 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  call void @lua_rawseti(%struct.lua_State* %40, i32 %41, i64 %43)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

; <label>:45:                                     ; preds = %39, %10
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare i32 @lua_absindex(%struct.lua_State*, i32) #1

declare i32 @lua_rawgeti(%struct.lua_State*, i32, i64) #1

declare void @lua_rawseti(%struct.lua_State*, i32, i64) #1

declare i64 @lua_rawlen(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @luaL_unref(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %25

; <label>:9:                                      ; preds = %3
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @lua_absindex(%struct.lua_State* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @lua_rawgeti(%struct.lua_State* %13, i32 %14, i64 0)
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  call void @lua_rawseti(%struct.lua_State* %16, i32 %17, i64 %19)
  %20 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  call void @lua_pushinteger(%struct.lua_State* %20, i64 %22)
  %23 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %24 = load i32, i32* %5, align 4
  call void @lua_rawseti(%struct.lua_State* %23, i32 %24, i64 0)
  br label %25

; <label>:25:                                     ; preds = %9, %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaL_loadfilex(%struct.lua_State*, i8*, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.LoadF, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = call i32 @lua_gettop(%struct.lua_State* %13)
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %12, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %3
  %19 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %20 = call i8* @lua_pushstring(%struct.lua_State* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %22 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %8, i32 0, i32 1
  store %struct._IO_FILE* %21, %struct._IO_FILE** %22, align 8
  br label %38

; <label>:23:                                     ; preds = %3
  %24 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* %25)
  %27 = load i8*, i8** %6, align 8
  %28 = call %struct._IO_FILE* @fopen64(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0))
  %29 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %8, i32 0, i32 1
  store %struct._IO_FILE* %28, %struct._IO_FILE** %29, align 8
  %30 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %8, i32 0, i32 1
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %30, align 8
  %32 = icmp eq %struct._IO_FILE* %31, null
  br i1 %32, label %33, label %37

; <label>:33:                                     ; preds = %23
  %34 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @errfile(%struct.lua_State* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 %35)
  store i32 %36, i32* %4, align 4
  br label %113

; <label>:37:                                     ; preds = %23
  br label %38

; <label>:38:                                     ; preds = %37, %18
  %39 = call i32 @skipcomment(%struct.LoadF* %8, i32* %11)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

; <label>:41:                                     ; preds = %38
  %42 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %8, i32 0, i32 2
  %43 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds [8192 x i8], [8192 x i8]* %42, i64 0, i64 %46
  store i8 10, i8* %47, align 1
  br label %48

; <label>:48:                                     ; preds = %41, %38
  %49 = load i32, i32* %11, align 4
  %50 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %71

; <label>:53:                                     ; preds = %48
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %71

; <label>:56:                                     ; preds = %53
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %8, i32 0, i32 1
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %58, align 8
  %60 = call %struct._IO_FILE* @freopen64(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), %struct._IO_FILE* %59)
  %61 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %8, i32 0, i32 1
  store %struct._IO_FILE* %60, %struct._IO_FILE** %61, align 8
  %62 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %8, i32 0, i32 1
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %62, align 8
  %64 = icmp eq %struct._IO_FILE* %63, null
  br i1 %64, label %65, label %69

; <label>:65:                                     ; preds = %56
  %66 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @errfile(%struct.lua_State* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 %67)
  store i32 %68, i32* %4, align 4
  br label %113

; <label>:69:                                     ; preds = %56
  %70 = call i32 @skipcomment(%struct.LoadF* %8, i32* %11)
  br label %71

; <label>:71:                                     ; preds = %69, %53, %48
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %83

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %8, i32 0, i32 2
  %78 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %8, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds [8192 x i8], [8192 x i8]* %77, i64 0, i64 %81
  store i8 %76, i8* %82, align 1
  br label %83

; <label>:83:                                     ; preds = %74, %71
  %84 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %85 = bitcast %struct.LoadF* %8 to i8*
  %86 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %87 = call i8* @lua_tolstring(%struct.lua_State* %86, i32 -1, i64* null)
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @lua_load(%struct.lua_State* %84, i8* (%struct.lua_State*, i8*, i64*)* @getF, i8* %85, i8* %87, i8* %88)
  store i32 %89, i32* %9, align 4
  %90 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %8, i32 0, i32 1
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %90, align 8
  %92 = call i32 @ferror(%struct._IO_FILE* %91) #3
  store i32 %92, i32* %10, align 4
  %93 = load i8*, i8** %6, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %99

; <label>:95:                                     ; preds = %83
  %96 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %8, i32 0, i32 1
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %96, align 8
  %98 = call i32 @fclose(%struct._IO_FILE* %97)
  br label %99

; <label>:99:                                     ; preds = %95, %83
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

; <label>:102:                                    ; preds = %99
  %103 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %104 = load i32, i32* %12, align 4
  call void @lua_settop(%struct.lua_State* %103, i32 %104)
  %105 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @errfile(%struct.lua_State* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 %106)
  store i32 %107, i32* %4, align 4
  br label %113

; <label>:108:                                    ; preds = %99
  %109 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %110 = load i32, i32* %12, align 4
  call void @lua_rotate(%struct.lua_State* %109, i32 %110, i32 -1)
  %111 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %111, i32 -2)
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %4, align 4
  br label %113

; <label>:113:                                    ; preds = %108, %102, %65, %33
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @errfile(%struct.lua_State*, i8*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32* @__errno_location() #8
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @strerror(i32 %10) #3
  store i8* %11, i8** %7, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i8* @lua_tolstring(%struct.lua_State* %12, i32 %13, i64* null)
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %15, i8** %8, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0), i8* %17, i8* %18, i8* %19)
  %21 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %22 = load i32, i32* %6, align 4
  call void @lua_rotate(%struct.lua_State* %21, i32 %22, i32 -1)
  %23 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* %23, i32 -2)
  ret i32 6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skipcomment(%struct.LoadF*, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.LoadF*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.LoadF* %0, %struct.LoadF** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.LoadF*, %struct.LoadF** %4, align 8
  %8 = call i32 @skipBOM(%struct.LoadF* %7)
  %9 = load i32*, i32** %5, align 8
  store i32 %8, i32* %9, align 4
  store i32 %8, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 35
  br i1 %11, label %12, label %32

; <label>:12:                                     ; preds = %2
  br label %13

; <label>:13:                                     ; preds = %24, %12
  %14 = load %struct.LoadF*, %struct.LoadF** %4, align 8
  %15 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %14, i32 0, i32 1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %17 = call i32 @_IO_getc(%struct._IO_FILE* %16)
  store i32 %17, i32* %6, align 4
  br label %18

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 10
  br label %24

; <label>:24:                                     ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  br i1 %25, label %13, label %26

; <label>:26:                                     ; preds = %24
  %27 = load %struct.LoadF*, %struct.LoadF** %4, align 8
  %28 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %27, i32 0, i32 1
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8
  %30 = call i32 @_IO_getc(%struct._IO_FILE* %29)
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  store i32 1, i32* %3, align 4
  br label %33

; <label>:32:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

; <label>:33:                                     ; preds = %32, %26
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare %struct._IO_FILE* @freopen64(i8*, i8*, %struct._IO_FILE*) #1

declare i32 @lua_load(%struct.lua_State*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getF(%struct.lua_State*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.LoadF*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.LoadF*
  store %struct.LoadF* %10, %struct.LoadF** %8, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %12 = load %struct.LoadF*, %struct.LoadF** %8, align 8
  %13 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %24

; <label>:16:                                     ; preds = %3
  %17 = load %struct.LoadF*, %struct.LoadF** %8, align 8
  %18 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = load i64*, i64** %7, align 8
  store i64 %20, i64* %21, align 8
  %22 = load %struct.LoadF*, %struct.LoadF** %8, align 8
  %23 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %40

; <label>:24:                                     ; preds = %3
  %25 = load %struct.LoadF*, %struct.LoadF** %8, align 8
  %26 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %25, i32 0, i32 1
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %26, align 8
  %28 = call i32 @feof(%struct._IO_FILE* %27) #3
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %24
  store i8* null, i8** %4, align 8
  br label %44

; <label>:31:                                     ; preds = %24
  %32 = load %struct.LoadF*, %struct.LoadF** %8, align 8
  %33 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %32, i32 0, i32 2
  %34 = getelementptr inbounds [8192 x i8], [8192 x i8]* %33, i32 0, i32 0
  %35 = load %struct.LoadF*, %struct.LoadF** %8, align 8
  %36 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %35, i32 0, i32 1
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %36, align 8
  %38 = call i64 @fread(i8* %34, i64 1, i64 8192, %struct._IO_FILE* %37)
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  br label %40

; <label>:40:                                     ; preds = %31, %16
  %41 = load %struct.LoadF*, %struct.LoadF** %8, align 8
  %42 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %41, i32 0, i32 2
  %43 = getelementptr inbounds [8192 x i8], [8192 x i8]* %42, i32 0, i32 0
  store i8* %43, i8** %4, align 8
  br label %44

; <label>:44:                                     ; preds = %40, %30
  %45 = load i8*, i8** %4, align 8
  ret i8* %45
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #5

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @lua_rotate(%struct.lua_State*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaL_loadbufferx(%struct.lua_State*, i8*, i64, i8*, i8*) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.LoadS, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %11, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load i64, i64* %8, align 8
  %15 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %11, i32 0, i32 1
  store i64 %14, i64* %15, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %17 = bitcast %struct.LoadS* %11 to i8*
  %18 = load i8*, i8** %9, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 @lua_load(%struct.lua_State* %16, i8* (%struct.lua_State*, i8*, i64*)* @getS, i8* %17, i8* %18, i8* %19)
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getS(%struct.lua_State*, i8*, i64*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.LoadS*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.LoadS*
  store %struct.LoadS* %10, %struct.LoadS** %8, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %12 = load %struct.LoadS*, %struct.LoadS** %8, align 8
  %13 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %3
  store i8* null, i8** %4, align 8
  br label %27

; <label>:17:                                     ; preds = %3
  %18 = load %struct.LoadS*, %struct.LoadS** %8, align 8
  %19 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %7, align 8
  store i64 %20, i64* %21, align 8
  %22 = load %struct.LoadS*, %struct.LoadS** %8, align 8
  %23 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.LoadS*, %struct.LoadS** %8, align 8
  %25 = getelementptr inbounds %struct.LoadS, %struct.LoadS* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %4, align 8
  br label %27

; <label>:27:                                     ; preds = %17, %16
  %28 = load i8*, i8** %4, align 8
  ret i8* %28
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaL_loadstring(%struct.lua_State*, i8*) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @strlen(i8* %7) #7
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @luaL_loadbufferx(%struct.lua_State* %5, i8* %6, i64 %8, i8* %9, i8* null)
  ret i32 %10
}

declare i32 @lua_rawget(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaL_callmeta(%struct.lua_State*, i32, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @lua_absindex(%struct.lua_State* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @luaL_getmetafield(%struct.lua_State* %11, i32 %12, i8* %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %3
  store i32 0, i32* %4, align 4
  br label %21

; <label>:17:                                     ; preds = %3
  %18 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %19 = load i32, i32* %6, align 4
  call void @lua_pushvalue(%struct.lua_State* %18, i32 %19)
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_callk(%struct.lua_State* %20, i32 1, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null)
  store i32 1, i32* %4, align 4
  br label %21

; <label>:21:                                     ; preds = %17, %16
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare void @lua_callk(%struct.lua_State*, i32, i32, i64, i32 (%struct.lua_State*, i32, i64)*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i64 @luaL_len(%struct.lua_State*, i32) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load i32, i32* %4, align 4
  call void @lua_len(%struct.lua_State* %7, i32 %8)
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = call i64 @lua_tointegerx(%struct.lua_State* %9, i32 -1, i32* %6)
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %2
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i32 0, i32 0))
  br label %16

; <label>:16:                                     ; preds = %13, %2
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* %17, i32 -2)
  %18 = load i64, i64* %5, align 8
  ret i64 %18
}

declare void @lua_len(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @luaL_tolstring(%struct.lua_State*, i32, i64*) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @luaL_callmeta(%struct.lua_State* %9, i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %3
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = call i32 @lua_isstring(%struct.lua_State* %14, i32 -1)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

; <label>:17:                                     ; preds = %13
  %18 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %19 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0))
  br label %20

; <label>:20:                                     ; preds = %17, %13
  br label %88

; <label>:21:                                     ; preds = %3
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @lua_type(%struct.lua_State* %22, i32 %23)
  switch i32 %24, label %58 [
    i32 3, label %25
    i32 4, label %43
    i32 1, label %46
    i32 0, label %55
  ]

; <label>:25:                                     ; preds = %21
  %26 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @lua_isinteger(%struct.lua_State* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

; <label>:30:                                     ; preds = %25
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @lua_tointegerx(%struct.lua_State* %32, i32 %33, i32* null)
  %35 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i64 %34)
  br label %42

; <label>:36:                                     ; preds = %25
  %37 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %38 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call double @lua_tonumberx(%struct.lua_State* %38, i32 %39, i32* null)
  %41 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), double %40)
  br label %42

; <label>:42:                                     ; preds = %36, %30
  br label %87

; <label>:43:                                     ; preds = %21
  %44 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %45 = load i32, i32* %5, align 4
  call void @lua_pushvalue(%struct.lua_State* %44, i32 %45)
  br label %87

; <label>:46:                                     ; preds = %21
  %47 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %48 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @lua_toboolean(%struct.lua_State* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)
  %54 = call i8* @lua_pushstring(%struct.lua_State* %47, i8* %53)
  br label %87

; <label>:55:                                     ; preds = %21
  %56 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %57 = call i8* @lua_pushstring(%struct.lua_State* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0))
  br label %87

; <label>:58:                                     ; preds = %21
  %59 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @luaL_getmetafield(%struct.lua_State* %59, i32 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %64, label %67

; <label>:64:                                     ; preds = %58
  %65 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %66 = call i8* @lua_tolstring(%struct.lua_State* %65, i32 -1, i64* null)
  br label %73

; <label>:67:                                     ; preds = %58
  %68 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %69 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @lua_type(%struct.lua_State* %69, i32 %70)
  %72 = call i8* @lua_typename(%struct.lua_State* %68, i32 %71)
  br label %73

; <label>:73:                                     ; preds = %67, %64
  %74 = phi i8* [ %66, %64 ], [ %72, %67 ]
  store i8* %74, i8** %8, align 8
  %75 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i8* @lua_topointer(%struct.lua_State* %77, i32 %78)
  %80 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* %76, i8* %79)
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

; <label>:83:                                     ; preds = %73
  %84 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_rotate(%struct.lua_State* %84, i32 -2, i32 -1)
  %85 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* %85, i32 -2)
  br label %86

; <label>:86:                                     ; preds = %83, %73
  br label %87

; <label>:87:                                     ; preds = %86, %55, %46, %43, %42
  br label %88

; <label>:88:                                     ; preds = %87, %20
  %89 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %90 = load i64*, i64** %6, align 8
  %91 = call i8* @lua_tolstring(%struct.lua_State* %89, i32 -1, i64* %90)
  ret i8* %91
}

declare i32 @lua_isstring(%struct.lua_State*, i32) #1

declare i32 @lua_isinteger(%struct.lua_State*, i32) #1

declare i32 @lua_toboolean(%struct.lua_State*, i32) #1

declare i8* @lua_topointer(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.luaL_Reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.luaL_Reg* %1, %struct.luaL_Reg** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load i32, i32* %6, align 4
  call void @luaL_checkstack(%struct.lua_State* %8, i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0))
  br label %10

; <label>:10:                                     ; preds = %40, %3
  %11 = load %struct.luaL_Reg*, %struct.luaL_Reg** %5, align 8
  %12 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %43

; <label>:15:                                     ; preds = %10
  store i32 0, i32* %7, align 4
  br label %16

; <label>:16:                                     ; preds = %24, %15
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %16
  %21 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 0, %22
  call void @lua_pushvalue(%struct.lua_State* %21, i32 %23)
  br label %24

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %16

; <label>:27:                                     ; preds = %16
  %28 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %29 = load %struct.luaL_Reg*, %struct.luaL_Reg** %5, align 8
  %30 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %29, i32 0, i32 1
  %31 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %30, align 8
  %32 = load i32, i32* %6, align 4
  call void @lua_pushcclosure(%struct.lua_State* %28, i32 (%struct.lua_State*)* %31, i32 %32)
  %33 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 2
  %36 = sub nsw i32 0, %35
  %37 = load %struct.luaL_Reg*, %struct.luaL_Reg** %5, align 8
  %38 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  call void @lua_setfield(%struct.lua_State* %33, i32 %36, i8* %39)
  br label %40

; <label>:40:                                     ; preds = %27
  %41 = load %struct.luaL_Reg*, %struct.luaL_Reg** %5, align 8
  %42 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %41, i32 1
  store %struct.luaL_Reg* %42, %struct.luaL_Reg** %5, align 8
  br label %10

; <label>:43:                                     ; preds = %10
  %44 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 0, %45
  %47 = sub nsw i32 %46, 1
  call void @lua_settop(%struct.lua_State* %44, i32 %47)
  ret void
}

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @luaL_getsubtable(%struct.lua_State*, i32, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @lua_getfield(%struct.lua_State* %8, i32 %9, i8* %10)
  %12 = icmp eq i32 %11, 5
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %3
  store i32 1, i32* %4, align 4
  br label %24

; <label>:14:                                     ; preds = %3
  %15 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %15, i32 -2)
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @lua_absindex(%struct.lua_State* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_createtable(%struct.lua_State* %19, i32 0, i32 0)
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushvalue(%struct.lua_State* %20, i32 -1)
  %21 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i8*, i8** %7, align 8
  call void @lua_setfield(%struct.lua_State* %21, i32 %22, i8* %23)
  store i32 0, i32* %4, align 4
  br label %24

; <label>:24:                                     ; preds = %14, %13
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define void @luaL_requiref(%struct.lua_State*, i8*, i32 (%struct.lua_State*)*, i32) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (%struct.lua_State*)*, align 8
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (%struct.lua_State*)* %2, i32 (%struct.lua_State*)** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %10 = call i32 @luaL_getsubtable(%struct.lua_State* %9, i32 -1001000, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0))
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @lua_getfield(%struct.lua_State* %11, i32 -1, i8* %12)
  %14 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %15 = call i32 @lua_toboolean(%struct.lua_State* %14, i32 -1)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

; <label>:17:                                     ; preds = %4
  %18 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %18, i32 -2)
  %19 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %20 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %7, align 8
  call void @lua_pushcclosure(%struct.lua_State* %19, i32 (%struct.lua_State*)* %20, i32 0)
  %21 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @lua_pushstring(%struct.lua_State* %21, i8* %22)
  %24 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_callk(%struct.lua_State* %24, i32 1, i32 1, i64 0, i32 (%struct.lua_State*, i32, i64)* null)
  %25 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushvalue(%struct.lua_State* %25, i32 -1)
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = load i8*, i8** %6, align 8
  call void @lua_setfield(%struct.lua_State* %26, i32 -3, i8* %27)
  br label %28

; <label>:28:                                     ; preds = %17, %4
  %29 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_rotate(%struct.lua_State* %29, i32 -2, i32 -1)
  %30 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %30, i32 -2)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

; <label>:33:                                     ; preds = %28
  %34 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushvalue(%struct.lua_State* %34, i32 -1)
  %35 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %36 = load i8*, i8** %6, align 8
  call void @lua_setglobal(%struct.lua_State* %35, i8* %36)
  br label %37

; <label>:37:                                     ; preds = %33, %28
  ret void
}

declare void @lua_setglobal(%struct.lua_State*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @luaL_addgsub(%struct.luaL_Buffer*, i8*, i8*, i8*) #0 {
  %5 = alloca %struct.luaL_Buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.luaL_Buffer* %0, %struct.luaL_Buffer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @strlen(i8* %11) #7
  store i64 %12, i64* %10, align 8
  br label %13

; <label>:13:                                     ; preds = %18, %4
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @strstr(i8* %14, i8* %15) #7
  store i8* %16, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %31

; <label>:18:                                     ; preds = %13
  %19 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  call void @luaL_addlstring(%struct.luaL_Buffer* %19, i8* %20, i64 %25)
  %26 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %27 = load i8*, i8** %8, align 8
  call void @luaL_addstring(%struct.luaL_Buffer* %26, i8* %27)
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %6, align 8
  br label %13

; <label>:31:                                     ; preds = %13
  %32 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  %33 = load i8*, i8** %6, align 8
  call void @luaL_addstring(%struct.luaL_Buffer* %32, i8* %33)
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define i8* @luaL_gsub(%struct.lua_State*, i8*, i8*, i8*) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.luaL_Buffer, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaL_buffinit(%struct.lua_State* %10, %struct.luaL_Buffer* %9)
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %8, align 8
  call void @luaL_addgsub(%struct.luaL_Buffer* %9, i8* %11, i8* %12, i8* %13)
  call void @luaL_pushresult(%struct.luaL_Buffer* %9)
  %14 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %15 = call i8* @lua_tolstring(%struct.lua_State* %14, i32 -1, i64* null)
  ret i8* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define %struct.lua_State* @luaL_newstate() #0 {
  %1 = alloca %struct.lua_State*, align 8
  %2 = alloca i32*, align 8
  %3 = call %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)* @l_alloc, i8* null)
  store %struct.lua_State* %3, %struct.lua_State** %1, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %1, align 8
  %5 = icmp ne %struct.lua_State* %4, null
  br i1 %5, label %6, label %18

; <label>:6:                                      ; preds = %0
  %7 = load %struct.lua_State*, %struct.lua_State** %1, align 8
  %8 = call i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State* %7, i32 (%struct.lua_State*)* @panic)
  %9 = load %struct.lua_State*, %struct.lua_State** %1, align 8
  %10 = call i8* @lua_newuserdatauv(%struct.lua_State* %9, i64 4, i32 0)
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %2, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %1, align 8
  %13 = call i32 @luaL_ref(%struct.lua_State* %12, i32 -1001000)
  %14 = load i32*, i32** %2, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %1, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = bitcast i32* %16 to i8*
  call void @lua_setwarnf(%struct.lua_State* %15, void (i8*, i8*, i32)* @warnf, i8* %17)
  br label %18

; <label>:18:                                     ; preds = %6, %0
  %19 = load %struct.lua_State*, %struct.lua_State** %1, align 8
  ret %struct.lua_State* %19
}

declare %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @l_alloc(i8*, i8*, i64, i64) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %7, align 8
  call void @free(i8* %15) #3
  store i8* null, i8** %5, align 8
  br label %20

; <label>:16:                                     ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i8* @realloc(i8* %17, i64 %18) #3
  store i8* %19, i8** %5, align 8
  br label %20

; <label>:20:                                     ; preds = %16, %14
  %21 = load i8*, i8** %5, align 8
  ret i8* %21
}

declare i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State*, i32 (%struct.lua_State*)*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panic(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @lua_tolstring(%struct.lua_State* %4, i32 -1, i64* null)
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.62, i32 0, i32 0), i8* %5)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 @fflush(%struct._IO_FILE* %7)
  ret i32 0
}

declare i8* @lua_newuserdatauv(%struct.lua_State*, i64, i32) #1

declare void @lua_setwarnf(%struct.lua_State*, void (i8*, i8*, i32)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warnf(i8*, i8*, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

; <label>:13:                                     ; preds = %3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 @fflush(%struct._IO_FILE* %16)
  br label %18

; <label>:18:                                     ; preds = %13, %3
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0), i8* %20)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 @fflush(%struct._IO_FILE* %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

; <label>:26:                                     ; preds = %18
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i32 0, i32 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 @fflush(%struct._IO_FILE* %29)
  br label %31

; <label>:31:                                     ; preds = %26, %18
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @luaL_checkversion_(%struct.lua_State*, double, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store double %1, double* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = call double @lua_version(%struct.lua_State* %8)
  store double %9, double* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 136
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %3
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %13, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.45, i32 0, i32 0))
  br label %25

; <label>:15:                                     ; preds = %3
  %16 = load double, double* %7, align 8
  %17 = load double, double* %5, align 8
  %18 = fcmp une double %16, %17
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %21 = load double, double* %5, align 8
  %22 = load double, double* %7, align 8
  %23 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %20, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.46, i32 0, i32 0), double %21, double %22)
  br label %24

; <label>:24:                                     ; preds = %19, %15
  br label %25

; <label>:25:                                     ; preds = %24, %12
  ret void
}

declare double @lua_version(%struct.lua_State*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findfield(%struct.lua_State*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %3
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %12 = call i32 @lua_type(%struct.lua_State* %11, i32 -1)
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %10, %3
  store i32 0, i32* %4, align 4
  br label %51

; <label>:15:                                     ; preds = %10
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushnil(%struct.lua_State* %16)
  br label %17

; <label>:17:                                     ; preds = %48, %15
  %18 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %19 = call i32 @lua_next(%struct.lua_State* %18, i32 -2)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %50

; <label>:21:                                     ; preds = %17
  %22 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %23 = call i32 @lua_type(%struct.lua_State* %22, i32 -2)
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %48

; <label>:25:                                     ; preds = %21
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @lua_rawequal(%struct.lua_State* %26, i32 %27, i32 -1)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %25
  %31 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %31, i32 -2)
  store i32 1, i32* %4, align 4
  br label %51

; <label>:32:                                     ; preds = %25
  %33 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @findfield(%struct.lua_State* %33, i32 %34, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

; <label>:39:                                     ; preds = %32
  %40 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_rotate(%struct.lua_State* %40, i32 -2, i32 -1)
  %41 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %41, i32 -2)
  %42 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %43 = call i8* @lua_pushstring(%struct.lua_State* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0))
  %44 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_rotate(%struct.lua_State* %44, i32 -2, i32 1)
  %45 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_concat(%struct.lua_State* %45, i32 3)
  store i32 1, i32* %4, align 4
  br label %51

; <label>:46:                                     ; preds = %32
  br label %47

; <label>:47:                                     ; preds = %46
  br label %48

; <label>:48:                                     ; preds = %47, %21
  %49 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* %49, i32 -2)
  br label %17

; <label>:50:                                     ; preds = %17
  store i32 0, i32* %4, align 4
  br label %51

; <label>:51:                                     ; preds = %50, %39, %30, %14
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

declare i32 @lua_next(%struct.lua_State*, i32) #1

declare i32 @lua_isnumber(%struct.lua_State*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @newbuffsize(%struct.luaL_Buffer*, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.luaL_Buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.luaL_Buffer* %0, %struct.luaL_Buffer** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %8 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = mul i64 %9, 2
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = sub i64 -1, %11
  %13 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %14 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %2
  %18 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %19 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %18, i32 0, i32 3
  %20 = load %struct.lua_State*, %struct.lua_State** %19, align 8
  %21 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0))
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %3, align 8
  br label %39

; <label>:23:                                     ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %26 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %27, %28
  %30 = icmp ult i64 %24, %29
  br i1 %30, label %31, label %37

; <label>:31:                                     ; preds = %23
  %32 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %4, align 8
  %33 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %34, %35
  store i64 %36, i64* %6, align 8
  br label %37

; <label>:37:                                     ; preds = %31, %23
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %3, align 8
  br label %39

; <label>:39:                                     ; preds = %37, %17
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @resizebox(%struct.lua_State*, i32, i64) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8* (i8*, i8*, i64, i64)*, align 8
  %9 = alloca %struct.UBox*, align 8
  %10 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = call i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State* %11, i8** %7)
  store i8* (i8*, i8*, i64, i64)* %12, i8* (i8*, i8*, i64, i64)** %8, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i8* @lua_touserdata(%struct.lua_State* %13, i32 %14)
  %16 = bitcast i8* %15 to %struct.UBox*
  store %struct.UBox* %16, %struct.UBox** %9, align 8
  %17 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.UBox*, %struct.UBox** %9, align 8
  %20 = getelementptr inbounds %struct.UBox, %struct.UBox* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.UBox*, %struct.UBox** %9, align 8
  %23 = getelementptr inbounds %struct.UBox, %struct.UBox* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i8* %17(i8* %18, i8* %21, i64 %24, i64 %25)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %3
  %30 = load i64, i64* %6, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %29
  %33 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %34 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.56, i32 0, i32 0))
  br label %35

; <label>:35:                                     ; preds = %32, %29, %3
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.UBox*, %struct.UBox** %9, align 8
  %38 = getelementptr inbounds %struct.UBox, %struct.UBox* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.UBox*, %struct.UBox** %9, align 8
  %41 = getelementptr inbounds %struct.UBox, %struct.UBox* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load i8*, i8** %10, align 8
  ret i8* %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @newbox(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.UBox*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @lua_newuserdatauv(%struct.lua_State* %4, i64 16, i32 0)
  %6 = bitcast i8* %5 to %struct.UBox*
  store %struct.UBox* %6, %struct.UBox** %3, align 8
  %7 = load %struct.UBox*, %struct.UBox** %3, align 8
  %8 = getelementptr inbounds %struct.UBox, %struct.UBox* %7, i32 0, i32 0
  store i8* null, i8** %8, align 8
  %9 = load %struct.UBox*, %struct.UBox** %3, align 8
  %10 = getelementptr inbounds %struct.UBox, %struct.UBox* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = call i32 @luaL_newmetatable(%struct.lua_State* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %1
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_setfuncs(%struct.lua_State* %15, %struct.luaL_Reg* getelementptr inbounds ([3 x %struct.luaL_Reg], [3 x %struct.luaL_Reg]* @boxmt, i32 0, i32 0), i32 0)
  br label %16

; <label>:16:                                     ; preds = %14, %1
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %18 = call i32 @lua_setmetatable(%struct.lua_State* %17, i32 -2)
  ret void
}

declare void @lua_toclose(%struct.lua_State*, i32) #1

declare i8* (i8*, i8*, i64, i64)* @lua_getallocf(%struct.lua_State*, i8**) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @boxgc(%struct.lua_State*) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i8* @resizebox(%struct.lua_State* %3, i32 1, i64 0)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skipBOM(%struct.LoadF*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.LoadF*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.LoadF* %0, %struct.LoadF** %3, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8** %4, align 8
  %6 = load %struct.LoadF*, %struct.LoadF** %3, align 8
  %7 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  br label %8

; <label>:8:                                      ; preds = %35, %1
  %9 = load %struct.LoadF*, %struct.LoadF** %3, align 8
  %10 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %9, i32 0, i32 1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %12 = call i32 @_IO_getc(%struct._IO_FILE* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %22, label %15

; <label>:15:                                     ; preds = %8
  %16 = load i32, i32* %5, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %4, align 8
  %19 = load i8, i8* %17, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %16, %20
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %15, %8
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %47

; <label>:24:                                     ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = trunc i32 %25 to i8
  %27 = load %struct.LoadF*, %struct.LoadF** %3, align 8
  %28 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %27, i32 0, i32 2
  %29 = load %struct.LoadF*, %struct.LoadF** %3, align 8
  %30 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds [8192 x i8], [8192 x i8]* %28, i64 0, i64 %33
  store i8 %26, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %24
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %8, label %40

; <label>:40:                                     ; preds = %35
  %41 = load %struct.LoadF*, %struct.LoadF** %3, align 8
  %42 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.LoadF*, %struct.LoadF** %3, align 8
  %44 = getelementptr inbounds %struct.LoadF, %struct.LoadF* %43, i32 0, i32 1
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %44, align 8
  %46 = call i32 @_IO_getc(%struct._IO_FILE* %45)
  store i32 %46, i32* %2, align 4
  br label %47

; <label>:47:                                     ; preds = %40, %22
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #5

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #5

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
